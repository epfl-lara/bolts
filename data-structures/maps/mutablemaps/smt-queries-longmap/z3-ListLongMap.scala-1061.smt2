; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22062 () Bool)

(assert start!22062)

(declare-fun b!227913 () Bool)

(declare-fun b_free!6117 () Bool)

(declare-fun b_next!6117 () Bool)

(assert (=> b!227913 (= b_free!6117 (not b_next!6117))))

(declare-fun tp!21492 () Bool)

(declare-fun b_and!13033 () Bool)

(assert (=> b!227913 (= tp!21492 b_and!13033)))

(declare-fun mapIsEmpty!10138 () Bool)

(declare-fun mapRes!10138 () Bool)

(assert (=> mapIsEmpty!10138 mapRes!10138))

(declare-fun b!227908 () Bool)

(declare-fun e!147877 () Bool)

(declare-fun e!147869 () Bool)

(assert (=> b!227908 (= e!147877 e!147869)))

(declare-fun res!112204 () Bool)

(assert (=> b!227908 (=> (not res!112204) (not e!147869))))

(declare-datatypes ((SeekEntryResult!911 0))(
  ( (MissingZero!911 (index!5814 (_ BitVec 32))) (Found!911 (index!5815 (_ BitVec 32))) (Intermediate!911 (undefined!1723 Bool) (index!5816 (_ BitVec 32)) (x!23315 (_ BitVec 32))) (Undefined!911) (MissingVacant!911 (index!5817 (_ BitVec 32))) )
))
(declare-fun lt!114725 () SeekEntryResult!911)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!227908 (= res!112204 (or (= lt!114725 (MissingZero!911 index!297)) (= lt!114725 (MissingVacant!911 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7619 0))(
  ( (V!7620 (val!3034 Int)) )
))
(declare-datatypes ((ValueCell!2646 0))(
  ( (ValueCellFull!2646 (v!5050 V!7619)) (EmptyCell!2646) )
))
(declare-datatypes ((array!11200 0))(
  ( (array!11201 (arr!5319 (Array (_ BitVec 32) ValueCell!2646)) (size!5652 (_ BitVec 32))) )
))
(declare-datatypes ((array!11202 0))(
  ( (array!11203 (arr!5320 (Array (_ BitVec 32) (_ BitVec 64))) (size!5653 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3192 0))(
  ( (LongMapFixedSize!3193 (defaultEntry!4255 Int) (mask!10121 (_ BitVec 32)) (extraKeys!3992 (_ BitVec 32)) (zeroValue!4096 V!7619) (minValue!4096 V!7619) (_size!1645 (_ BitVec 32)) (_keys!6309 array!11202) (_values!4238 array!11200) (_vacant!1645 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3192)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11202 (_ BitVec 32)) SeekEntryResult!911)

(assert (=> b!227908 (= lt!114725 (seekEntryOrOpen!0 key!932 (_keys!6309 thiss!1504) (mask!10121 thiss!1504)))))

(declare-fun b!227909 () Bool)

(declare-fun e!147872 () Bool)

(declare-fun tp_is_empty!5979 () Bool)

(assert (=> b!227909 (= e!147872 tp_is_empty!5979)))

(declare-fun b!227910 () Bool)

(declare-fun c!37779 () Bool)

(get-info :version)

(assert (=> b!227910 (= c!37779 ((_ is MissingVacant!911) lt!114725))))

(declare-fun e!147867 () Bool)

(declare-fun e!147874 () Bool)

(assert (=> b!227910 (= e!147867 e!147874)))

(declare-fun b!227911 () Bool)

(declare-fun e!147878 () Bool)

(declare-fun call!21183 () Bool)

(assert (=> b!227911 (= e!147878 (not call!21183))))

(declare-fun b!227912 () Bool)

(declare-fun res!112202 () Bool)

(assert (=> b!227912 (=> (not res!112202) (not e!147877))))

(assert (=> b!227912 (= res!112202 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!147868 () Bool)

(declare-fun e!147873 () Bool)

(declare-fun array_inv!3509 (array!11202) Bool)

(declare-fun array_inv!3510 (array!11200) Bool)

(assert (=> b!227913 (= e!147873 (and tp!21492 tp_is_empty!5979 (array_inv!3509 (_keys!6309 thiss!1504)) (array_inv!3510 (_values!4238 thiss!1504)) e!147868))))

(declare-fun b!227914 () Bool)

(declare-fun e!147866 () Bool)

(assert (=> b!227914 (= e!147866 (not call!21183))))

(declare-fun b!227915 () Bool)

(declare-datatypes ((Unit!6918 0))(
  ( (Unit!6919) )
))
(declare-fun e!147880 () Unit!6918)

(declare-fun Unit!6920 () Unit!6918)

(assert (=> b!227915 (= e!147880 Unit!6920)))

(declare-fun lt!114722 () Unit!6918)

(declare-fun lemmaArrayContainsKeyThenInListMap!106 (array!11202 array!11200 (_ BitVec 32) (_ BitVec 32) V!7619 V!7619 (_ BitVec 64) (_ BitVec 32) Int) Unit!6918)

(assert (=> b!227915 (= lt!114722 (lemmaArrayContainsKeyThenInListMap!106 (_keys!6309 thiss!1504) (_values!4238 thiss!1504) (mask!10121 thiss!1504) (extraKeys!3992 thiss!1504) (zeroValue!4096 thiss!1504) (minValue!4096 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4255 thiss!1504)))))

(assert (=> b!227915 false))

(declare-fun b!227916 () Bool)

(declare-fun res!112203 () Bool)

(declare-fun e!147875 () Bool)

(assert (=> b!227916 (=> res!112203 e!147875)))

(assert (=> b!227916 (= res!112203 (or (not (= (size!5652 (_values!4238 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10121 thiss!1504)))) (not (= (size!5653 (_keys!6309 thiss!1504)) (size!5652 (_values!4238 thiss!1504)))) (bvslt (mask!10121 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3992 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3992 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun bm!21181 () Bool)

(declare-fun arrayContainsKey!0 (array!11202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21181 (= call!21183 (arrayContainsKey!0 (_keys!6309 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227917 () Bool)

(declare-fun e!147879 () Bool)

(assert (=> b!227917 (= e!147869 e!147879)))

(declare-fun res!112208 () Bool)

(assert (=> b!227917 (=> (not res!112208) (not e!147879))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!227917 (= res!112208 (inRange!0 index!297 (mask!10121 thiss!1504)))))

(declare-fun lt!114723 () Unit!6918)

(declare-fun e!147870 () Unit!6918)

(assert (=> b!227917 (= lt!114723 e!147870)))

(declare-fun c!37781 () Bool)

(declare-datatypes ((tuple2!4476 0))(
  ( (tuple2!4477 (_1!2248 (_ BitVec 64)) (_2!2248 V!7619)) )
))
(declare-datatypes ((List!3421 0))(
  ( (Nil!3418) (Cons!3417 (h!4065 tuple2!4476) (t!8388 List!3421)) )
))
(declare-datatypes ((ListLongMap!3403 0))(
  ( (ListLongMap!3404 (toList!1717 List!3421)) )
))
(declare-fun contains!1585 (ListLongMap!3403 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1240 (array!11202 array!11200 (_ BitVec 32) (_ BitVec 32) V!7619 V!7619 (_ BitVec 32) Int) ListLongMap!3403)

(assert (=> b!227917 (= c!37781 (contains!1585 (getCurrentListMap!1240 (_keys!6309 thiss!1504) (_values!4238 thiss!1504) (mask!10121 thiss!1504) (extraKeys!3992 thiss!1504) (zeroValue!4096 thiss!1504) (minValue!4096 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4255 thiss!1504)) key!932))))

(declare-fun b!227918 () Bool)

(declare-fun res!112210 () Bool)

(assert (=> b!227918 (=> res!112210 e!147875)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11202 (_ BitVec 32)) Bool)

(assert (=> b!227918 (= res!112210 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6309 thiss!1504) (mask!10121 thiss!1504))))))

(declare-fun b!227919 () Bool)

(declare-fun lt!114719 () Unit!6918)

(assert (=> b!227919 (= e!147870 lt!114719)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!282 (array!11202 array!11200 (_ BitVec 32) (_ BitVec 32) V!7619 V!7619 (_ BitVec 64) Int) Unit!6918)

(assert (=> b!227919 (= lt!114719 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!282 (_keys!6309 thiss!1504) (_values!4238 thiss!1504) (mask!10121 thiss!1504) (extraKeys!3992 thiss!1504) (zeroValue!4096 thiss!1504) (minValue!4096 thiss!1504) key!932 (defaultEntry!4255 thiss!1504)))))

(declare-fun c!37778 () Bool)

(assert (=> b!227919 (= c!37778 ((_ is MissingZero!911) lt!114725))))

(assert (=> b!227919 e!147867))

(declare-fun b!227920 () Bool)

(declare-fun Unit!6921 () Unit!6918)

(assert (=> b!227920 (= e!147870 Unit!6921)))

(declare-fun lt!114717 () Unit!6918)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!270 (array!11202 array!11200 (_ BitVec 32) (_ BitVec 32) V!7619 V!7619 (_ BitVec 64) Int) Unit!6918)

(assert (=> b!227920 (= lt!114717 (lemmaInListMapThenSeekEntryOrOpenFindsIt!270 (_keys!6309 thiss!1504) (_values!4238 thiss!1504) (mask!10121 thiss!1504) (extraKeys!3992 thiss!1504) (zeroValue!4096 thiss!1504) (minValue!4096 thiss!1504) key!932 (defaultEntry!4255 thiss!1504)))))

(assert (=> b!227920 false))

(declare-fun b!227921 () Bool)

(assert (=> b!227921 (= e!147874 e!147878)))

(declare-fun res!112200 () Bool)

(declare-fun call!21184 () Bool)

(assert (=> b!227921 (= res!112200 call!21184)))

(assert (=> b!227921 (=> (not res!112200) (not e!147878))))

(declare-fun b!227922 () Bool)

(declare-fun e!147871 () Bool)

(assert (=> b!227922 (= e!147871 tp_is_empty!5979)))

(declare-fun b!227923 () Bool)

(declare-fun res!112201 () Bool)

(assert (=> b!227923 (= res!112201 (= (select (arr!5320 (_keys!6309 thiss!1504)) (index!5817 lt!114725)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227923 (=> (not res!112201) (not e!147878))))

(declare-fun b!227924 () Bool)

(assert (=> b!227924 (= e!147868 (and e!147872 mapRes!10138))))

(declare-fun condMapEmpty!10138 () Bool)

(declare-fun mapDefault!10138 () ValueCell!2646)

(assert (=> b!227924 (= condMapEmpty!10138 (= (arr!5319 (_values!4238 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2646)) mapDefault!10138)))))

(declare-fun res!112206 () Bool)

(assert (=> start!22062 (=> (not res!112206) (not e!147877))))

(declare-fun valid!1271 (LongMapFixedSize!3192) Bool)

(assert (=> start!22062 (= res!112206 (valid!1271 thiss!1504))))

(assert (=> start!22062 e!147877))

(assert (=> start!22062 e!147873))

(assert (=> start!22062 true))

(declare-fun bm!21180 () Bool)

(assert (=> bm!21180 (= call!21184 (inRange!0 (ite c!37778 (index!5814 lt!114725) (index!5817 lt!114725)) (mask!10121 thiss!1504)))))

(declare-fun b!227925 () Bool)

(declare-fun res!112209 () Bool)

(assert (=> b!227925 (=> (not res!112209) (not e!147866))))

(assert (=> b!227925 (= res!112209 call!21184)))

(assert (=> b!227925 (= e!147867 e!147866)))

(declare-fun b!227926 () Bool)

(assert (=> b!227926 (= e!147875 true)))

(declare-fun lt!114718 () Bool)

(declare-datatypes ((List!3422 0))(
  ( (Nil!3419) (Cons!3418 (h!4066 (_ BitVec 64)) (t!8389 List!3422)) )
))
(declare-fun arrayNoDuplicates!0 (array!11202 (_ BitVec 32) List!3422) Bool)

(assert (=> b!227926 (= lt!114718 (arrayNoDuplicates!0 (_keys!6309 thiss!1504) #b00000000000000000000000000000000 Nil!3419))))

(declare-fun b!227927 () Bool)

(assert (=> b!227927 (= e!147874 ((_ is Undefined!911) lt!114725))))

(declare-fun b!227928 () Bool)

(assert (=> b!227928 (= e!147879 (not e!147875))))

(declare-fun res!112207 () Bool)

(assert (=> b!227928 (=> res!112207 e!147875)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227928 (= res!112207 (not (validMask!0 (mask!10121 thiss!1504))))))

(declare-fun lt!114716 () array!11202)

(assert (=> b!227928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114716 (mask!10121 thiss!1504))))

(declare-fun lt!114721 () Unit!6918)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11202 (_ BitVec 32) (_ BitVec 32)) Unit!6918)

(assert (=> b!227928 (= lt!114721 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6309 thiss!1504) index!297 (mask!10121 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11202 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227928 (= (arrayCountValidKeys!0 lt!114716 #b00000000000000000000000000000000 (size!5653 (_keys!6309 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6309 thiss!1504) #b00000000000000000000000000000000 (size!5653 (_keys!6309 thiss!1504)))))))

(declare-fun lt!114720 () Unit!6918)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11202 (_ BitVec 32) (_ BitVec 64)) Unit!6918)

(assert (=> b!227928 (= lt!114720 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6309 thiss!1504) index!297 key!932))))

(assert (=> b!227928 (arrayNoDuplicates!0 lt!114716 #b00000000000000000000000000000000 Nil!3419)))

(assert (=> b!227928 (= lt!114716 (array!11203 (store (arr!5320 (_keys!6309 thiss!1504)) index!297 key!932) (size!5653 (_keys!6309 thiss!1504))))))

(declare-fun lt!114726 () Unit!6918)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3422) Unit!6918)

(assert (=> b!227928 (= lt!114726 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6309 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3419))))

(declare-fun lt!114724 () Unit!6918)

(assert (=> b!227928 (= lt!114724 e!147880)))

(declare-fun c!37780 () Bool)

(assert (=> b!227928 (= c!37780 (arrayContainsKey!0 (_keys!6309 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10138 () Bool)

(declare-fun tp!21493 () Bool)

(assert (=> mapNonEmpty!10138 (= mapRes!10138 (and tp!21493 e!147871))))

(declare-fun mapRest!10138 () (Array (_ BitVec 32) ValueCell!2646))

(declare-fun mapValue!10138 () ValueCell!2646)

(declare-fun mapKey!10138 () (_ BitVec 32))

(assert (=> mapNonEmpty!10138 (= (arr!5319 (_values!4238 thiss!1504)) (store mapRest!10138 mapKey!10138 mapValue!10138))))

(declare-fun b!227929 () Bool)

(declare-fun Unit!6922 () Unit!6918)

(assert (=> b!227929 (= e!147880 Unit!6922)))

(declare-fun b!227930 () Bool)

(declare-fun res!112205 () Bool)

(assert (=> b!227930 (=> (not res!112205) (not e!147866))))

(assert (=> b!227930 (= res!112205 (= (select (arr!5320 (_keys!6309 thiss!1504)) (index!5814 lt!114725)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!22062 res!112206) b!227912))

(assert (= (and b!227912 res!112202) b!227908))

(assert (= (and b!227908 res!112204) b!227917))

(assert (= (and b!227917 c!37781) b!227920))

(assert (= (and b!227917 (not c!37781)) b!227919))

(assert (= (and b!227919 c!37778) b!227925))

(assert (= (and b!227919 (not c!37778)) b!227910))

(assert (= (and b!227925 res!112209) b!227930))

(assert (= (and b!227930 res!112205) b!227914))

(assert (= (and b!227910 c!37779) b!227921))

(assert (= (and b!227910 (not c!37779)) b!227927))

(assert (= (and b!227921 res!112200) b!227923))

(assert (= (and b!227923 res!112201) b!227911))

(assert (= (or b!227925 b!227921) bm!21180))

(assert (= (or b!227914 b!227911) bm!21181))

(assert (= (and b!227917 res!112208) b!227928))

(assert (= (and b!227928 c!37780) b!227915))

(assert (= (and b!227928 (not c!37780)) b!227929))

(assert (= (and b!227928 (not res!112207)) b!227916))

(assert (= (and b!227916 (not res!112203)) b!227918))

(assert (= (and b!227918 (not res!112210)) b!227926))

(assert (= (and b!227924 condMapEmpty!10138) mapIsEmpty!10138))

(assert (= (and b!227924 (not condMapEmpty!10138)) mapNonEmpty!10138))

(assert (= (and mapNonEmpty!10138 ((_ is ValueCellFull!2646) mapValue!10138)) b!227922))

(assert (= (and b!227924 ((_ is ValueCellFull!2646) mapDefault!10138)) b!227909))

(assert (= b!227913 b!227924))

(assert (= start!22062 b!227913))

(declare-fun m!249809 () Bool)

(assert (=> start!22062 m!249809))

(declare-fun m!249811 () Bool)

(assert (=> mapNonEmpty!10138 m!249811))

(declare-fun m!249813 () Bool)

(assert (=> b!227920 m!249813))

(declare-fun m!249815 () Bool)

(assert (=> bm!21180 m!249815))

(declare-fun m!249817 () Bool)

(assert (=> b!227915 m!249817))

(declare-fun m!249819 () Bool)

(assert (=> b!227923 m!249819))

(declare-fun m!249821 () Bool)

(assert (=> b!227917 m!249821))

(declare-fun m!249823 () Bool)

(assert (=> b!227917 m!249823))

(assert (=> b!227917 m!249823))

(declare-fun m!249825 () Bool)

(assert (=> b!227917 m!249825))

(declare-fun m!249827 () Bool)

(assert (=> b!227930 m!249827))

(declare-fun m!249829 () Bool)

(assert (=> b!227926 m!249829))

(declare-fun m!249831 () Bool)

(assert (=> b!227908 m!249831))

(declare-fun m!249833 () Bool)

(assert (=> b!227919 m!249833))

(declare-fun m!249835 () Bool)

(assert (=> b!227913 m!249835))

(declare-fun m!249837 () Bool)

(assert (=> b!227913 m!249837))

(declare-fun m!249839 () Bool)

(assert (=> b!227918 m!249839))

(declare-fun m!249841 () Bool)

(assert (=> bm!21181 m!249841))

(declare-fun m!249843 () Bool)

(assert (=> b!227928 m!249843))

(assert (=> b!227928 m!249841))

(declare-fun m!249845 () Bool)

(assert (=> b!227928 m!249845))

(declare-fun m!249847 () Bool)

(assert (=> b!227928 m!249847))

(declare-fun m!249849 () Bool)

(assert (=> b!227928 m!249849))

(declare-fun m!249851 () Bool)

(assert (=> b!227928 m!249851))

(declare-fun m!249853 () Bool)

(assert (=> b!227928 m!249853))

(declare-fun m!249855 () Bool)

(assert (=> b!227928 m!249855))

(declare-fun m!249857 () Bool)

(assert (=> b!227928 m!249857))

(declare-fun m!249859 () Bool)

(assert (=> b!227928 m!249859))

(check-sat (not mapNonEmpty!10138) (not b!227908) (not b!227918) (not b!227926) (not b!227913) (not start!22062) (not bm!21180) (not b!227920) b_and!13033 tp_is_empty!5979 (not b_next!6117) (not b!227919) (not b!227917) (not b!227928) (not bm!21181) (not b!227915))
(check-sat b_and!13033 (not b_next!6117))

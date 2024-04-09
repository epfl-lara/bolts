; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16736 () Bool)

(assert start!16736)

(declare-fun b!167833 () Bool)

(declare-fun b_free!4029 () Bool)

(declare-fun b_next!4029 () Bool)

(assert (=> b!167833 (= b_free!4029 (not b_next!4029))))

(declare-fun tp!14688 () Bool)

(declare-fun b_and!10461 () Bool)

(assert (=> b!167833 (= tp!14688 b_and!10461)))

(declare-fun e!110283 () Bool)

(declare-fun e!110285 () Bool)

(declare-datatypes ((V!4755 0))(
  ( (V!4756 (val!1960 Int)) )
))
(declare-datatypes ((ValueCell!1572 0))(
  ( (ValueCellFull!1572 (v!3821 V!4755)) (EmptyCell!1572) )
))
(declare-datatypes ((array!6758 0))(
  ( (array!6759 (arr!3214 (Array (_ BitVec 32) (_ BitVec 64))) (size!3502 (_ BitVec 32))) )
))
(declare-datatypes ((array!6760 0))(
  ( (array!6761 (arr!3215 (Array (_ BitVec 32) ValueCell!1572)) (size!3503 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2052 0))(
  ( (LongMapFixedSize!2053 (defaultEntry!3468 Int) (mask!8223 (_ BitVec 32)) (extraKeys!3209 (_ BitVec 32)) (zeroValue!3311 V!4755) (minValue!3311 V!4755) (_size!1075 (_ BitVec 32)) (_keys!5293 array!6758) (_values!3451 array!6760) (_vacant!1075 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2052)

(declare-fun tp_is_empty!3831 () Bool)

(declare-fun array_inv!2057 (array!6758) Bool)

(declare-fun array_inv!2058 (array!6760) Bool)

(assert (=> b!167833 (= e!110285 (and tp!14688 tp_is_empty!3831 (array_inv!2057 (_keys!5293 thiss!1248)) (array_inv!2058 (_values!3451 thiss!1248)) e!110283))))

(declare-fun b!167834 () Bool)

(declare-fun e!110290 () Bool)

(assert (=> b!167834 (= e!110290 true)))

(declare-fun lt!83950 () Bool)

(declare-datatypes ((List!2160 0))(
  ( (Nil!2157) (Cons!2156 (h!2773 (_ BitVec 64)) (t!6970 List!2160)) )
))
(declare-fun arrayNoDuplicates!0 (array!6758 (_ BitVec 32) List!2160) Bool)

(assert (=> b!167834 (= lt!83950 (arrayNoDuplicates!0 (_keys!5293 thiss!1248) #b00000000000000000000000000000000 Nil!2157))))

(declare-fun b!167835 () Bool)

(declare-fun e!110287 () Bool)

(declare-fun e!110288 () Bool)

(assert (=> b!167835 (= e!110287 e!110288)))

(declare-fun res!79871 () Bool)

(assert (=> b!167835 (=> (not res!79871) (not e!110288))))

(declare-datatypes ((SeekEntryResult!498 0))(
  ( (MissingZero!498 (index!4160 (_ BitVec 32))) (Found!498 (index!4161 (_ BitVec 32))) (Intermediate!498 (undefined!1310 Bool) (index!4162 (_ BitVec 32)) (x!18574 (_ BitVec 32))) (Undefined!498) (MissingVacant!498 (index!4163 (_ BitVec 32))) )
))
(declare-fun lt!83945 () SeekEntryResult!498)

(get-info :version)

(assert (=> b!167835 (= res!79871 (and (not ((_ is Undefined!498) lt!83945)) (not ((_ is MissingVacant!498) lt!83945)) (not ((_ is MissingZero!498) lt!83945)) ((_ is Found!498) lt!83945)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6758 (_ BitVec 32)) SeekEntryResult!498)

(assert (=> b!167835 (= lt!83945 (seekEntryOrOpen!0 key!828 (_keys!5293 thiss!1248) (mask!8223 thiss!1248)))))

(declare-fun mapNonEmpty!6465 () Bool)

(declare-fun mapRes!6465 () Bool)

(declare-fun tp!14687 () Bool)

(declare-fun e!110286 () Bool)

(assert (=> mapNonEmpty!6465 (= mapRes!6465 (and tp!14687 e!110286))))

(declare-fun mapValue!6465 () ValueCell!1572)

(declare-fun mapKey!6465 () (_ BitVec 32))

(declare-fun mapRest!6465 () (Array (_ BitVec 32) ValueCell!1572))

(assert (=> mapNonEmpty!6465 (= (arr!3215 (_values!3451 thiss!1248)) (store mapRest!6465 mapKey!6465 mapValue!6465))))

(declare-fun b!167836 () Bool)

(assert (=> b!167836 (= e!110288 (not e!110290))))

(declare-fun res!79872 () Bool)

(assert (=> b!167836 (=> res!79872 e!110290)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167836 (= res!79872 (not (validMask!0 (mask!8223 thiss!1248))))))

(declare-datatypes ((tuple2!3148 0))(
  ( (tuple2!3149 (_1!1584 (_ BitVec 64)) (_2!1584 V!4755)) )
))
(declare-datatypes ((List!2161 0))(
  ( (Nil!2158) (Cons!2157 (h!2774 tuple2!3148) (t!6971 List!2161)) )
))
(declare-datatypes ((ListLongMap!2117 0))(
  ( (ListLongMap!2118 (toList!1074 List!2161)) )
))
(declare-fun lt!83946 () ListLongMap!2117)

(declare-fun v!309 () V!4755)

(declare-fun +!216 (ListLongMap!2117 tuple2!3148) ListLongMap!2117)

(declare-fun getCurrentListMap!727 (array!6758 array!6760 (_ BitVec 32) (_ BitVec 32) V!4755 V!4755 (_ BitVec 32) Int) ListLongMap!2117)

(assert (=> b!167836 (= (+!216 lt!83946 (tuple2!3149 key!828 v!309)) (getCurrentListMap!727 (_keys!5293 thiss!1248) (array!6761 (store (arr!3215 (_values!3451 thiss!1248)) (index!4161 lt!83945) (ValueCellFull!1572 v!309)) (size!3503 (_values!3451 thiss!1248))) (mask!8223 thiss!1248) (extraKeys!3209 thiss!1248) (zeroValue!3311 thiss!1248) (minValue!3311 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3468 thiss!1248)))))

(declare-datatypes ((Unit!5145 0))(
  ( (Unit!5146) )
))
(declare-fun lt!83949 () Unit!5145)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!76 (array!6758 array!6760 (_ BitVec 32) (_ BitVec 32) V!4755 V!4755 (_ BitVec 32) (_ BitVec 64) V!4755 Int) Unit!5145)

(assert (=> b!167836 (= lt!83949 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!76 (_keys!5293 thiss!1248) (_values!3451 thiss!1248) (mask!8223 thiss!1248) (extraKeys!3209 thiss!1248) (zeroValue!3311 thiss!1248) (minValue!3311 thiss!1248) (index!4161 lt!83945) key!828 v!309 (defaultEntry!3468 thiss!1248)))))

(declare-fun lt!83951 () Unit!5145)

(declare-fun e!110289 () Unit!5145)

(assert (=> b!167836 (= lt!83951 e!110289)))

(declare-fun c!30306 () Bool)

(declare-fun contains!1110 (ListLongMap!2117 (_ BitVec 64)) Bool)

(assert (=> b!167836 (= c!30306 (contains!1110 lt!83946 key!828))))

(assert (=> b!167836 (= lt!83946 (getCurrentListMap!727 (_keys!5293 thiss!1248) (_values!3451 thiss!1248) (mask!8223 thiss!1248) (extraKeys!3209 thiss!1248) (zeroValue!3311 thiss!1248) (minValue!3311 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3468 thiss!1248)))))

(declare-fun b!167837 () Bool)

(declare-fun lt!83948 () Unit!5145)

(assert (=> b!167837 (= e!110289 lt!83948)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!113 (array!6758 array!6760 (_ BitVec 32) (_ BitVec 32) V!4755 V!4755 (_ BitVec 64) Int) Unit!5145)

(assert (=> b!167837 (= lt!83948 (lemmaInListMapThenSeekEntryOrOpenFindsIt!113 (_keys!5293 thiss!1248) (_values!3451 thiss!1248) (mask!8223 thiss!1248) (extraKeys!3209 thiss!1248) (zeroValue!3311 thiss!1248) (minValue!3311 thiss!1248) key!828 (defaultEntry!3468 thiss!1248)))))

(declare-fun res!79874 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167837 (= res!79874 (inRange!0 (index!4161 lt!83945) (mask!8223 thiss!1248)))))

(declare-fun e!110282 () Bool)

(assert (=> b!167837 (=> (not res!79874) (not e!110282))))

(assert (=> b!167837 e!110282))

(declare-fun b!167838 () Bool)

(declare-fun res!79873 () Bool)

(assert (=> b!167838 (=> (not res!79873) (not e!110287))))

(assert (=> b!167838 (= res!79873 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167839 () Bool)

(declare-fun e!110284 () Bool)

(assert (=> b!167839 (= e!110284 tp_is_empty!3831)))

(declare-fun b!167840 () Bool)

(assert (=> b!167840 (= e!110282 (= (select (arr!3214 (_keys!5293 thiss!1248)) (index!4161 lt!83945)) key!828))))

(declare-fun res!79869 () Bool)

(assert (=> start!16736 (=> (not res!79869) (not e!110287))))

(declare-fun valid!884 (LongMapFixedSize!2052) Bool)

(assert (=> start!16736 (= res!79869 (valid!884 thiss!1248))))

(assert (=> start!16736 e!110287))

(assert (=> start!16736 e!110285))

(assert (=> start!16736 true))

(assert (=> start!16736 tp_is_empty!3831))

(declare-fun mapIsEmpty!6465 () Bool)

(assert (=> mapIsEmpty!6465 mapRes!6465))

(declare-fun b!167841 () Bool)

(declare-fun res!79870 () Bool)

(assert (=> b!167841 (=> res!79870 e!110290)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6758 (_ BitVec 32)) Bool)

(assert (=> b!167841 (= res!79870 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5293 thiss!1248) (mask!8223 thiss!1248))))))

(declare-fun b!167842 () Bool)

(declare-fun res!79875 () Bool)

(assert (=> b!167842 (=> res!79875 e!110290)))

(assert (=> b!167842 (= res!79875 (or (not (= (size!3503 (_values!3451 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8223 thiss!1248)))) (not (= (size!3502 (_keys!5293 thiss!1248)) (size!3503 (_values!3451 thiss!1248)))) (bvslt (mask!8223 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3209 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3209 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167843 () Bool)

(assert (=> b!167843 (= e!110286 tp_is_empty!3831)))

(declare-fun b!167844 () Bool)

(assert (=> b!167844 (= e!110283 (and e!110284 mapRes!6465))))

(declare-fun condMapEmpty!6465 () Bool)

(declare-fun mapDefault!6465 () ValueCell!1572)

(assert (=> b!167844 (= condMapEmpty!6465 (= (arr!3215 (_values!3451 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1572)) mapDefault!6465)))))

(declare-fun b!167845 () Bool)

(declare-fun Unit!5147 () Unit!5145)

(assert (=> b!167845 (= e!110289 Unit!5147)))

(declare-fun lt!83947 () Unit!5145)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!111 (array!6758 array!6760 (_ BitVec 32) (_ BitVec 32) V!4755 V!4755 (_ BitVec 64) Int) Unit!5145)

(assert (=> b!167845 (= lt!83947 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!111 (_keys!5293 thiss!1248) (_values!3451 thiss!1248) (mask!8223 thiss!1248) (extraKeys!3209 thiss!1248) (zeroValue!3311 thiss!1248) (minValue!3311 thiss!1248) key!828 (defaultEntry!3468 thiss!1248)))))

(assert (=> b!167845 false))

(assert (= (and start!16736 res!79869) b!167838))

(assert (= (and b!167838 res!79873) b!167835))

(assert (= (and b!167835 res!79871) b!167836))

(assert (= (and b!167836 c!30306) b!167837))

(assert (= (and b!167836 (not c!30306)) b!167845))

(assert (= (and b!167837 res!79874) b!167840))

(assert (= (and b!167836 (not res!79872)) b!167842))

(assert (= (and b!167842 (not res!79875)) b!167841))

(assert (= (and b!167841 (not res!79870)) b!167834))

(assert (= (and b!167844 condMapEmpty!6465) mapIsEmpty!6465))

(assert (= (and b!167844 (not condMapEmpty!6465)) mapNonEmpty!6465))

(assert (= (and mapNonEmpty!6465 ((_ is ValueCellFull!1572) mapValue!6465)) b!167843))

(assert (= (and b!167844 ((_ is ValueCellFull!1572) mapDefault!6465)) b!167839))

(assert (= b!167833 b!167844))

(assert (= start!16736 b!167833))

(declare-fun m!196973 () Bool)

(assert (=> b!167840 m!196973))

(declare-fun m!196975 () Bool)

(assert (=> b!167841 m!196975))

(declare-fun m!196977 () Bool)

(assert (=> b!167836 m!196977))

(declare-fun m!196979 () Bool)

(assert (=> b!167836 m!196979))

(declare-fun m!196981 () Bool)

(assert (=> b!167836 m!196981))

(declare-fun m!196983 () Bool)

(assert (=> b!167836 m!196983))

(declare-fun m!196985 () Bool)

(assert (=> b!167836 m!196985))

(declare-fun m!196987 () Bool)

(assert (=> b!167836 m!196987))

(declare-fun m!196989 () Bool)

(assert (=> b!167836 m!196989))

(declare-fun m!196991 () Bool)

(assert (=> b!167837 m!196991))

(declare-fun m!196993 () Bool)

(assert (=> b!167837 m!196993))

(declare-fun m!196995 () Bool)

(assert (=> b!167833 m!196995))

(declare-fun m!196997 () Bool)

(assert (=> b!167833 m!196997))

(declare-fun m!196999 () Bool)

(assert (=> b!167834 m!196999))

(declare-fun m!197001 () Bool)

(assert (=> start!16736 m!197001))

(declare-fun m!197003 () Bool)

(assert (=> b!167845 m!197003))

(declare-fun m!197005 () Bool)

(assert (=> b!167835 m!197005))

(declare-fun m!197007 () Bool)

(assert (=> mapNonEmpty!6465 m!197007))

(check-sat tp_is_empty!3831 (not b!167841) (not b_next!4029) (not b!167833) (not b!167834) b_and!10461 (not mapNonEmpty!6465) (not b!167837) (not start!16736) (not b!167845) (not b!167836) (not b!167835))
(check-sat b_and!10461 (not b_next!4029))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16742 () Bool)

(assert start!16742)

(declare-fun b!167952 () Bool)

(declare-fun b_free!4035 () Bool)

(declare-fun b_next!4035 () Bool)

(assert (=> b!167952 (= b_free!4035 (not b_next!4035))))

(declare-fun tp!14706 () Bool)

(declare-fun b_and!10467 () Bool)

(assert (=> b!167952 (= tp!14706 b_and!10467)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun e!110374 () Bool)

(declare-datatypes ((V!4763 0))(
  ( (V!4764 (val!1963 Int)) )
))
(declare-datatypes ((ValueCell!1575 0))(
  ( (ValueCellFull!1575 (v!3824 V!4763)) (EmptyCell!1575) )
))
(declare-datatypes ((array!6770 0))(
  ( (array!6771 (arr!3220 (Array (_ BitVec 32) (_ BitVec 64))) (size!3508 (_ BitVec 32))) )
))
(declare-datatypes ((array!6772 0))(
  ( (array!6773 (arr!3221 (Array (_ BitVec 32) ValueCell!1575)) (size!3509 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2058 0))(
  ( (LongMapFixedSize!2059 (defaultEntry!3471 Int) (mask!8228 (_ BitVec 32)) (extraKeys!3212 (_ BitVec 32)) (zeroValue!3314 V!4763) (minValue!3314 V!4763) (_size!1078 (_ BitVec 32)) (_keys!5296 array!6770) (_values!3454 array!6772) (_vacant!1078 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2058)

(declare-datatypes ((SeekEntryResult!501 0))(
  ( (MissingZero!501 (index!4172 (_ BitVec 32))) (Found!501 (index!4173 (_ BitVec 32))) (Intermediate!501 (undefined!1313 Bool) (index!4174 (_ BitVec 32)) (x!18585 (_ BitVec 32))) (Undefined!501) (MissingVacant!501 (index!4175 (_ BitVec 32))) )
))
(declare-fun lt!84009 () SeekEntryResult!501)

(declare-fun b!167950 () Bool)

(assert (=> b!167950 (= e!110374 (= (select (arr!3220 (_keys!5296 thiss!1248)) (index!4173 lt!84009)) key!828))))

(declare-fun e!110372 () Bool)

(declare-fun tp_is_empty!3837 () Bool)

(declare-fun e!110375 () Bool)

(declare-fun array_inv!2061 (array!6770) Bool)

(declare-fun array_inv!2062 (array!6772) Bool)

(assert (=> b!167952 (= e!110372 (and tp!14706 tp_is_empty!3837 (array_inv!2061 (_keys!5296 thiss!1248)) (array_inv!2062 (_values!3454 thiss!1248)) e!110375))))

(declare-fun b!167953 () Bool)

(declare-fun e!110373 () Bool)

(assert (=> b!167953 (= e!110373 true)))

(declare-fun lt!84013 () Bool)

(declare-datatypes ((List!2165 0))(
  ( (Nil!2162) (Cons!2161 (h!2778 (_ BitVec 64)) (t!6975 List!2165)) )
))
(declare-fun arrayNoDuplicates!0 (array!6770 (_ BitVec 32) List!2165) Bool)

(assert (=> b!167953 (= lt!84013 (arrayNoDuplicates!0 (_keys!5296 thiss!1248) #b00000000000000000000000000000000 Nil!2162))))

(declare-fun b!167954 () Bool)

(declare-fun e!110380 () Bool)

(assert (=> b!167954 (= e!110380 tp_is_empty!3837)))

(declare-fun b!167955 () Bool)

(declare-fun res!79935 () Bool)

(assert (=> b!167955 (=> res!79935 e!110373)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6770 (_ BitVec 32)) Bool)

(assert (=> b!167955 (= res!79935 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5296 thiss!1248) (mask!8228 thiss!1248))))))

(declare-fun b!167956 () Bool)

(declare-fun e!110377 () Bool)

(declare-fun e!110376 () Bool)

(assert (=> b!167956 (= e!110377 e!110376)))

(declare-fun res!79938 () Bool)

(assert (=> b!167956 (=> (not res!79938) (not e!110376))))

(get-info :version)

(assert (=> b!167956 (= res!79938 (and (not ((_ is Undefined!501) lt!84009)) (not ((_ is MissingVacant!501) lt!84009)) (not ((_ is MissingZero!501) lt!84009)) ((_ is Found!501) lt!84009)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6770 (_ BitVec 32)) SeekEntryResult!501)

(assert (=> b!167956 (= lt!84009 (seekEntryOrOpen!0 key!828 (_keys!5296 thiss!1248) (mask!8228 thiss!1248)))))

(declare-fun b!167957 () Bool)

(declare-fun mapRes!6474 () Bool)

(assert (=> b!167957 (= e!110375 (and e!110380 mapRes!6474))))

(declare-fun condMapEmpty!6474 () Bool)

(declare-fun mapDefault!6474 () ValueCell!1575)

(assert (=> b!167957 (= condMapEmpty!6474 (= (arr!3221 (_values!3454 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1575)) mapDefault!6474)))))

(declare-fun b!167958 () Bool)

(declare-fun e!110371 () Bool)

(assert (=> b!167958 (= e!110371 tp_is_empty!3837)))

(declare-fun b!167959 () Bool)

(declare-fun res!79936 () Bool)

(assert (=> b!167959 (=> res!79936 e!110373)))

(assert (=> b!167959 (= res!79936 (or (not (= (size!3509 (_values!3454 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8228 thiss!1248)))) (not (= (size!3508 (_keys!5296 thiss!1248)) (size!3509 (_values!3454 thiss!1248)))) (bvslt (mask!8228 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3212 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3212 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167960 () Bool)

(declare-fun res!79933 () Bool)

(assert (=> b!167960 (=> (not res!79933) (not e!110377))))

(assert (=> b!167960 (= res!79933 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6474 () Bool)

(assert (=> mapIsEmpty!6474 mapRes!6474))

(declare-fun b!167961 () Bool)

(declare-datatypes ((Unit!5154 0))(
  ( (Unit!5155) )
))
(declare-fun e!110379 () Unit!5154)

(declare-fun Unit!5156 () Unit!5154)

(assert (=> b!167961 (= e!110379 Unit!5156)))

(declare-fun lt!84011 () Unit!5154)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!114 (array!6770 array!6772 (_ BitVec 32) (_ BitVec 32) V!4763 V!4763 (_ BitVec 64) Int) Unit!5154)

(assert (=> b!167961 (= lt!84011 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!114 (_keys!5296 thiss!1248) (_values!3454 thiss!1248) (mask!8228 thiss!1248) (extraKeys!3212 thiss!1248) (zeroValue!3314 thiss!1248) (minValue!3314 thiss!1248) key!828 (defaultEntry!3471 thiss!1248)))))

(assert (=> b!167961 false))

(declare-fun res!79932 () Bool)

(assert (=> start!16742 (=> (not res!79932) (not e!110377))))

(declare-fun valid!886 (LongMapFixedSize!2058) Bool)

(assert (=> start!16742 (= res!79932 (valid!886 thiss!1248))))

(assert (=> start!16742 e!110377))

(assert (=> start!16742 e!110372))

(assert (=> start!16742 true))

(assert (=> start!16742 tp_is_empty!3837))

(declare-fun b!167951 () Bool)

(assert (=> b!167951 (= e!110376 (not e!110373))))

(declare-fun res!79934 () Bool)

(assert (=> b!167951 (=> res!79934 e!110373)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167951 (= res!79934 (not (validMask!0 (mask!8228 thiss!1248))))))

(declare-datatypes ((tuple2!3152 0))(
  ( (tuple2!3153 (_1!1586 (_ BitVec 64)) (_2!1586 V!4763)) )
))
(declare-datatypes ((List!2166 0))(
  ( (Nil!2163) (Cons!2162 (h!2779 tuple2!3152) (t!6976 List!2166)) )
))
(declare-datatypes ((ListLongMap!2121 0))(
  ( (ListLongMap!2122 (toList!1076 List!2166)) )
))
(declare-fun lt!84014 () ListLongMap!2121)

(declare-fun v!309 () V!4763)

(declare-fun +!218 (ListLongMap!2121 tuple2!3152) ListLongMap!2121)

(declare-fun getCurrentListMap!729 (array!6770 array!6772 (_ BitVec 32) (_ BitVec 32) V!4763 V!4763 (_ BitVec 32) Int) ListLongMap!2121)

(assert (=> b!167951 (= (+!218 lt!84014 (tuple2!3153 key!828 v!309)) (getCurrentListMap!729 (_keys!5296 thiss!1248) (array!6773 (store (arr!3221 (_values!3454 thiss!1248)) (index!4173 lt!84009) (ValueCellFull!1575 v!309)) (size!3509 (_values!3454 thiss!1248))) (mask!8228 thiss!1248) (extraKeys!3212 thiss!1248) (zeroValue!3314 thiss!1248) (minValue!3314 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3471 thiss!1248)))))

(declare-fun lt!84012 () Unit!5154)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!78 (array!6770 array!6772 (_ BitVec 32) (_ BitVec 32) V!4763 V!4763 (_ BitVec 32) (_ BitVec 64) V!4763 Int) Unit!5154)

(assert (=> b!167951 (= lt!84012 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!78 (_keys!5296 thiss!1248) (_values!3454 thiss!1248) (mask!8228 thiss!1248) (extraKeys!3212 thiss!1248) (zeroValue!3314 thiss!1248) (minValue!3314 thiss!1248) (index!4173 lt!84009) key!828 v!309 (defaultEntry!3471 thiss!1248)))))

(declare-fun lt!84008 () Unit!5154)

(assert (=> b!167951 (= lt!84008 e!110379)))

(declare-fun c!30315 () Bool)

(declare-fun contains!1112 (ListLongMap!2121 (_ BitVec 64)) Bool)

(assert (=> b!167951 (= c!30315 (contains!1112 lt!84014 key!828))))

(assert (=> b!167951 (= lt!84014 (getCurrentListMap!729 (_keys!5296 thiss!1248) (_values!3454 thiss!1248) (mask!8228 thiss!1248) (extraKeys!3212 thiss!1248) (zeroValue!3314 thiss!1248) (minValue!3314 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3471 thiss!1248)))))

(declare-fun b!167962 () Bool)

(declare-fun lt!84010 () Unit!5154)

(assert (=> b!167962 (= e!110379 lt!84010)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!116 (array!6770 array!6772 (_ BitVec 32) (_ BitVec 32) V!4763 V!4763 (_ BitVec 64) Int) Unit!5154)

(assert (=> b!167962 (= lt!84010 (lemmaInListMapThenSeekEntryOrOpenFindsIt!116 (_keys!5296 thiss!1248) (_values!3454 thiss!1248) (mask!8228 thiss!1248) (extraKeys!3212 thiss!1248) (zeroValue!3314 thiss!1248) (minValue!3314 thiss!1248) key!828 (defaultEntry!3471 thiss!1248)))))

(declare-fun res!79937 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167962 (= res!79937 (inRange!0 (index!4173 lt!84009) (mask!8228 thiss!1248)))))

(assert (=> b!167962 (=> (not res!79937) (not e!110374))))

(assert (=> b!167962 e!110374))

(declare-fun mapNonEmpty!6474 () Bool)

(declare-fun tp!14705 () Bool)

(assert (=> mapNonEmpty!6474 (= mapRes!6474 (and tp!14705 e!110371))))

(declare-fun mapRest!6474 () (Array (_ BitVec 32) ValueCell!1575))

(declare-fun mapValue!6474 () ValueCell!1575)

(declare-fun mapKey!6474 () (_ BitVec 32))

(assert (=> mapNonEmpty!6474 (= (arr!3221 (_values!3454 thiss!1248)) (store mapRest!6474 mapKey!6474 mapValue!6474))))

(assert (= (and start!16742 res!79932) b!167960))

(assert (= (and b!167960 res!79933) b!167956))

(assert (= (and b!167956 res!79938) b!167951))

(assert (= (and b!167951 c!30315) b!167962))

(assert (= (and b!167951 (not c!30315)) b!167961))

(assert (= (and b!167962 res!79937) b!167950))

(assert (= (and b!167951 (not res!79934)) b!167959))

(assert (= (and b!167959 (not res!79936)) b!167955))

(assert (= (and b!167955 (not res!79935)) b!167953))

(assert (= (and b!167957 condMapEmpty!6474) mapIsEmpty!6474))

(assert (= (and b!167957 (not condMapEmpty!6474)) mapNonEmpty!6474))

(assert (= (and mapNonEmpty!6474 ((_ is ValueCellFull!1575) mapValue!6474)) b!167958))

(assert (= (and b!167957 ((_ is ValueCellFull!1575) mapDefault!6474)) b!167954))

(assert (= b!167952 b!167957))

(assert (= start!16742 b!167952))

(declare-fun m!197081 () Bool)

(assert (=> b!167951 m!197081))

(declare-fun m!197083 () Bool)

(assert (=> b!167951 m!197083))

(declare-fun m!197085 () Bool)

(assert (=> b!167951 m!197085))

(declare-fun m!197087 () Bool)

(assert (=> b!167951 m!197087))

(declare-fun m!197089 () Bool)

(assert (=> b!167951 m!197089))

(declare-fun m!197091 () Bool)

(assert (=> b!167951 m!197091))

(declare-fun m!197093 () Bool)

(assert (=> b!167951 m!197093))

(declare-fun m!197095 () Bool)

(assert (=> b!167962 m!197095))

(declare-fun m!197097 () Bool)

(assert (=> b!167962 m!197097))

(declare-fun m!197099 () Bool)

(assert (=> b!167950 m!197099))

(declare-fun m!197101 () Bool)

(assert (=> b!167956 m!197101))

(declare-fun m!197103 () Bool)

(assert (=> mapNonEmpty!6474 m!197103))

(declare-fun m!197105 () Bool)

(assert (=> b!167955 m!197105))

(declare-fun m!197107 () Bool)

(assert (=> b!167953 m!197107))

(declare-fun m!197109 () Bool)

(assert (=> b!167961 m!197109))

(declare-fun m!197111 () Bool)

(assert (=> b!167952 m!197111))

(declare-fun m!197113 () Bool)

(assert (=> b!167952 m!197113))

(declare-fun m!197115 () Bool)

(assert (=> start!16742 m!197115))

(check-sat (not b!167955) (not b!167953) b_and!10467 tp_is_empty!3837 (not b!167951) (not start!16742) (not b!167956) (not b_next!4035) (not b!167952) (not b!167962) (not mapNonEmpty!6474) (not b!167961))
(check-sat b_and!10467 (not b_next!4035))

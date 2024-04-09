; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16658 () Bool)

(assert start!16658)

(declare-fun b!166320 () Bool)

(declare-fun b_free!3951 () Bool)

(declare-fun b_next!3951 () Bool)

(assert (=> b!166320 (= b_free!3951 (not b_next!3951))))

(declare-fun tp!14454 () Bool)

(declare-fun b_and!10383 () Bool)

(assert (=> b!166320 (= tp!14454 b_and!10383)))

(declare-fun b!166312 () Bool)

(declare-fun res!79050 () Bool)

(declare-fun e!109119 () Bool)

(assert (=> b!166312 (=> (not res!79050) (not e!109119))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!166312 (= res!79050 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166313 () Bool)

(declare-fun res!79056 () Bool)

(declare-fun e!109117 () Bool)

(assert (=> b!166313 (=> (not res!79056) (not e!109117))))

(declare-datatypes ((V!4651 0))(
  ( (V!4652 (val!1921 Int)) )
))
(declare-datatypes ((ValueCell!1533 0))(
  ( (ValueCellFull!1533 (v!3782 V!4651)) (EmptyCell!1533) )
))
(declare-datatypes ((array!6602 0))(
  ( (array!6603 (arr!3136 (Array (_ BitVec 32) (_ BitVec 64))) (size!3424 (_ BitVec 32))) )
))
(declare-datatypes ((array!6604 0))(
  ( (array!6605 (arr!3137 (Array (_ BitVec 32) ValueCell!1533)) (size!3425 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1974 0))(
  ( (LongMapFixedSize!1975 (defaultEntry!3429 Int) (mask!8158 (_ BitVec 32)) (extraKeys!3170 (_ BitVec 32)) (zeroValue!3272 V!4651) (minValue!3272 V!4651) (_size!1036 (_ BitVec 32)) (_keys!5254 array!6602) (_values!3412 array!6604) (_vacant!1036 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1974)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6602 (_ BitVec 32)) Bool)

(assert (=> b!166313 (= res!79056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5254 thiss!1248) (mask!8158 thiss!1248)))))

(declare-fun b!166314 () Bool)

(declare-fun e!109115 () Bool)

(declare-fun e!109112 () Bool)

(declare-fun mapRes!6348 () Bool)

(assert (=> b!166314 (= e!109115 (and e!109112 mapRes!6348))))

(declare-fun condMapEmpty!6348 () Bool)

(declare-fun mapDefault!6348 () ValueCell!1533)

(assert (=> b!166314 (= condMapEmpty!6348 (= (arr!3137 (_values!3412 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1533)) mapDefault!6348)))))

(declare-fun b!166316 () Bool)

(declare-datatypes ((Unit!5055 0))(
  ( (Unit!5056) )
))
(declare-fun e!109118 () Unit!5055)

(declare-fun lt!83298 () Unit!5055)

(assert (=> b!166316 (= e!109118 lt!83298)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!87 (array!6602 array!6604 (_ BitVec 32) (_ BitVec 32) V!4651 V!4651 (_ BitVec 64) Int) Unit!5055)

(assert (=> b!166316 (= lt!83298 (lemmaInListMapThenSeekEntryOrOpenFindsIt!87 (_keys!5254 thiss!1248) (_values!3412 thiss!1248) (mask!8158 thiss!1248) (extraKeys!3170 thiss!1248) (zeroValue!3272 thiss!1248) (minValue!3272 thiss!1248) key!828 (defaultEntry!3429 thiss!1248)))))

(declare-fun res!79053 () Bool)

(declare-datatypes ((SeekEntryResult!464 0))(
  ( (MissingZero!464 (index!4024 (_ BitVec 32))) (Found!464 (index!4025 (_ BitVec 32))) (Intermediate!464 (undefined!1276 Bool) (index!4026 (_ BitVec 32)) (x!18436 (_ BitVec 32))) (Undefined!464) (MissingVacant!464 (index!4027 (_ BitVec 32))) )
))
(declare-fun lt!83300 () SeekEntryResult!464)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166316 (= res!79053 (inRange!0 (index!4025 lt!83300) (mask!8158 thiss!1248)))))

(declare-fun e!109113 () Bool)

(assert (=> b!166316 (=> (not res!79053) (not e!109113))))

(assert (=> b!166316 e!109113))

(declare-fun b!166317 () Bool)

(assert (=> b!166317 (= e!109117 false)))

(declare-fun lt!83296 () Bool)

(declare-datatypes ((List!2108 0))(
  ( (Nil!2105) (Cons!2104 (h!2721 (_ BitVec 64)) (t!6918 List!2108)) )
))
(declare-fun arrayNoDuplicates!0 (array!6602 (_ BitVec 32) List!2108) Bool)

(assert (=> b!166317 (= lt!83296 (arrayNoDuplicates!0 (_keys!5254 thiss!1248) #b00000000000000000000000000000000 Nil!2105))))

(declare-fun b!166318 () Bool)

(declare-fun tp_is_empty!3753 () Bool)

(assert (=> b!166318 (= e!109112 tp_is_empty!3753)))

(declare-fun mapNonEmpty!6348 () Bool)

(declare-fun tp!14453 () Bool)

(declare-fun e!109120 () Bool)

(assert (=> mapNonEmpty!6348 (= mapRes!6348 (and tp!14453 e!109120))))

(declare-fun mapKey!6348 () (_ BitVec 32))

(declare-fun mapValue!6348 () ValueCell!1533)

(declare-fun mapRest!6348 () (Array (_ BitVec 32) ValueCell!1533))

(assert (=> mapNonEmpty!6348 (= (arr!3137 (_values!3412 thiss!1248)) (store mapRest!6348 mapKey!6348 mapValue!6348))))

(declare-fun b!166319 () Bool)

(assert (=> b!166319 (= e!109120 tp_is_empty!3753)))

(declare-fun mapIsEmpty!6348 () Bool)

(assert (=> mapIsEmpty!6348 mapRes!6348))

(declare-fun e!109116 () Bool)

(declare-fun array_inv!2001 (array!6602) Bool)

(declare-fun array_inv!2002 (array!6604) Bool)

(assert (=> b!166320 (= e!109116 (and tp!14454 tp_is_empty!3753 (array_inv!2001 (_keys!5254 thiss!1248)) (array_inv!2002 (_values!3412 thiss!1248)) e!109115))))

(declare-fun b!166321 () Bool)

(assert (=> b!166321 (= e!109113 (= (select (arr!3136 (_keys!5254 thiss!1248)) (index!4025 lt!83300)) key!828))))

(declare-fun b!166322 () Bool)

(declare-fun e!109114 () Bool)

(assert (=> b!166322 (= e!109114 e!109117)))

(declare-fun res!79055 () Bool)

(assert (=> b!166322 (=> (not res!79055) (not e!109117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166322 (= res!79055 (validMask!0 (mask!8158 thiss!1248)))))

(declare-fun lt!83297 () Unit!5055)

(assert (=> b!166322 (= lt!83297 e!109118)))

(declare-fun c!30189 () Bool)

(declare-datatypes ((tuple2!3098 0))(
  ( (tuple2!3099 (_1!1559 (_ BitVec 64)) (_2!1559 V!4651)) )
))
(declare-datatypes ((List!2109 0))(
  ( (Nil!2106) (Cons!2105 (h!2722 tuple2!3098) (t!6919 List!2109)) )
))
(declare-datatypes ((ListLongMap!2067 0))(
  ( (ListLongMap!2068 (toList!1049 List!2109)) )
))
(declare-fun contains!1085 (ListLongMap!2067 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!702 (array!6602 array!6604 (_ BitVec 32) (_ BitVec 32) V!4651 V!4651 (_ BitVec 32) Int) ListLongMap!2067)

(assert (=> b!166322 (= c!30189 (contains!1085 (getCurrentListMap!702 (_keys!5254 thiss!1248) (_values!3412 thiss!1248) (mask!8158 thiss!1248) (extraKeys!3170 thiss!1248) (zeroValue!3272 thiss!1248) (minValue!3272 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3429 thiss!1248)) key!828))))

(declare-fun b!166315 () Bool)

(assert (=> b!166315 (= e!109119 e!109114)))

(declare-fun res!79051 () Bool)

(assert (=> b!166315 (=> (not res!79051) (not e!109114))))

(get-info :version)

(assert (=> b!166315 (= res!79051 (and (not ((_ is Undefined!464) lt!83300)) (not ((_ is MissingVacant!464) lt!83300)) (not ((_ is MissingZero!464) lt!83300)) ((_ is Found!464) lt!83300)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6602 (_ BitVec 32)) SeekEntryResult!464)

(assert (=> b!166315 (= lt!83300 (seekEntryOrOpen!0 key!828 (_keys!5254 thiss!1248) (mask!8158 thiss!1248)))))

(declare-fun res!79052 () Bool)

(assert (=> start!16658 (=> (not res!79052) (not e!109119))))

(declare-fun valid!859 (LongMapFixedSize!1974) Bool)

(assert (=> start!16658 (= res!79052 (valid!859 thiss!1248))))

(assert (=> start!16658 e!109119))

(assert (=> start!16658 e!109116))

(assert (=> start!16658 true))

(declare-fun b!166323 () Bool)

(declare-fun Unit!5057 () Unit!5055)

(assert (=> b!166323 (= e!109118 Unit!5057)))

(declare-fun lt!83299 () Unit!5055)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!85 (array!6602 array!6604 (_ BitVec 32) (_ BitVec 32) V!4651 V!4651 (_ BitVec 64) Int) Unit!5055)

(assert (=> b!166323 (= lt!83299 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!85 (_keys!5254 thiss!1248) (_values!3412 thiss!1248) (mask!8158 thiss!1248) (extraKeys!3170 thiss!1248) (zeroValue!3272 thiss!1248) (minValue!3272 thiss!1248) key!828 (defaultEntry!3429 thiss!1248)))))

(assert (=> b!166323 false))

(declare-fun b!166324 () Bool)

(declare-fun res!79054 () Bool)

(assert (=> b!166324 (=> (not res!79054) (not e!109117))))

(assert (=> b!166324 (= res!79054 (and (= (size!3425 (_values!3412 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8158 thiss!1248))) (= (size!3424 (_keys!5254 thiss!1248)) (size!3425 (_values!3412 thiss!1248))) (bvsge (mask!8158 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3170 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3170 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!16658 res!79052) b!166312))

(assert (= (and b!166312 res!79050) b!166315))

(assert (= (and b!166315 res!79051) b!166322))

(assert (= (and b!166322 c!30189) b!166316))

(assert (= (and b!166322 (not c!30189)) b!166323))

(assert (= (and b!166316 res!79053) b!166321))

(assert (= (and b!166322 res!79055) b!166324))

(assert (= (and b!166324 res!79054) b!166313))

(assert (= (and b!166313 res!79056) b!166317))

(assert (= (and b!166314 condMapEmpty!6348) mapIsEmpty!6348))

(assert (= (and b!166314 (not condMapEmpty!6348)) mapNonEmpty!6348))

(assert (= (and mapNonEmpty!6348 ((_ is ValueCellFull!1533) mapValue!6348)) b!166319))

(assert (= (and b!166314 ((_ is ValueCellFull!1533) mapDefault!6348)) b!166318))

(assert (= b!166320 b!166314))

(assert (= start!16658 b!166320))

(declare-fun m!195801 () Bool)

(assert (=> b!166315 m!195801))

(declare-fun m!195803 () Bool)

(assert (=> mapNonEmpty!6348 m!195803))

(declare-fun m!195805 () Bool)

(assert (=> b!166320 m!195805))

(declare-fun m!195807 () Bool)

(assert (=> b!166320 m!195807))

(declare-fun m!195809 () Bool)

(assert (=> b!166321 m!195809))

(declare-fun m!195811 () Bool)

(assert (=> b!166322 m!195811))

(declare-fun m!195813 () Bool)

(assert (=> b!166322 m!195813))

(assert (=> b!166322 m!195813))

(declare-fun m!195815 () Bool)

(assert (=> b!166322 m!195815))

(declare-fun m!195817 () Bool)

(assert (=> b!166313 m!195817))

(declare-fun m!195819 () Bool)

(assert (=> b!166317 m!195819))

(declare-fun m!195821 () Bool)

(assert (=> b!166316 m!195821))

(declare-fun m!195823 () Bool)

(assert (=> b!166316 m!195823))

(declare-fun m!195825 () Bool)

(assert (=> start!16658 m!195825))

(declare-fun m!195827 () Bool)

(assert (=> b!166323 m!195827))

(check-sat (not mapNonEmpty!6348) (not b!166317) (not b!166313) tp_is_empty!3753 (not b!166323) (not start!16658) (not b!166320) (not b!166316) (not b!166315) (not b_next!3951) (not b!166322) b_and!10383)
(check-sat b_and!10383 (not b_next!3951))

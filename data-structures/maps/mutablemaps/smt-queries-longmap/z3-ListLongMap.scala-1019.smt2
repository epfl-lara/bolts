; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21728 () Bool)

(assert start!21728)

(declare-fun b!218240 () Bool)

(declare-fun b_free!5865 () Bool)

(declare-fun b_next!5865 () Bool)

(assert (=> b!218240 (= b_free!5865 (not b_next!5865))))

(declare-fun tp!20730 () Bool)

(declare-fun b_and!12773 () Bool)

(assert (=> b!218240 (= tp!20730 b_and!12773)))

(declare-fun e!141975 () Bool)

(declare-datatypes ((V!7283 0))(
  ( (V!7284 (val!2908 Int)) )
))
(declare-datatypes ((ValueCell!2520 0))(
  ( (ValueCellFull!2520 (v!4922 V!7283)) (EmptyCell!2520) )
))
(declare-datatypes ((array!10692 0))(
  ( (array!10693 (arr!5067 (Array (_ BitVec 32) ValueCell!2520)) (size!5399 (_ BitVec 32))) )
))
(declare-datatypes ((array!10694 0))(
  ( (array!10695 (arr!5068 (Array (_ BitVec 32) (_ BitVec 64))) (size!5400 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2940 0))(
  ( (LongMapFixedSize!2941 (defaultEntry!4120 Int) (mask!9893 (_ BitVec 32)) (extraKeys!3857 (_ BitVec 32)) (zeroValue!3961 V!7283) (minValue!3961 V!7283) (_size!1519 (_ BitVec 32)) (_keys!6169 array!10694) (_values!4103 array!10692) (_vacant!1519 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2940)

(declare-fun e!141978 () Bool)

(declare-fun tp_is_empty!5727 () Bool)

(declare-fun array_inv!3349 (array!10694) Bool)

(declare-fun array_inv!3350 (array!10692) Bool)

(assert (=> b!218240 (= e!141978 (and tp!20730 tp_is_empty!5727 (array_inv!3349 (_keys!6169 thiss!1504)) (array_inv!3350 (_values!4103 thiss!1504)) e!141975))))

(declare-fun b!218241 () Bool)

(declare-fun res!107002 () Bool)

(declare-fun e!141973 () Bool)

(assert (=> b!218241 (=> (not res!107002) (not e!141973))))

(assert (=> b!218241 (= res!107002 (and (= (size!5399 (_values!4103 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9893 thiss!1504))) (= (size!5400 (_keys!6169 thiss!1504)) (size!5399 (_values!4103 thiss!1504))) (bvsge (mask!9893 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3857 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3857 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!218242 () Bool)

(declare-fun e!141972 () Bool)

(assert (=> b!218242 (= e!141972 tp_is_empty!5727)))

(declare-fun b!218243 () Bool)

(declare-fun res!107003 () Bool)

(assert (=> b!218243 (=> (not res!107003) (not e!141973))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4318 0))(
  ( (tuple2!4319 (_1!2169 (_ BitVec 64)) (_2!2169 V!7283)) )
))
(declare-datatypes ((List!3247 0))(
  ( (Nil!3244) (Cons!3243 (h!3890 tuple2!4318) (t!8210 List!3247)) )
))
(declare-datatypes ((ListLongMap!3245 0))(
  ( (ListLongMap!3246 (toList!1638 List!3247)) )
))
(declare-fun contains!1473 (ListLongMap!3245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1161 (array!10694 array!10692 (_ BitVec 32) (_ BitVec 32) V!7283 V!7283 (_ BitVec 32) Int) ListLongMap!3245)

(assert (=> b!218243 (= res!107003 (not (contains!1473 (getCurrentListMap!1161 (_keys!6169 thiss!1504) (_values!4103 thiss!1504) (mask!9893 thiss!1504) (extraKeys!3857 thiss!1504) (zeroValue!3961 thiss!1504) (minValue!3961 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4120 thiss!1504)) key!932)))))

(declare-fun mapNonEmpty!9753 () Bool)

(declare-fun mapRes!9753 () Bool)

(declare-fun tp!20729 () Bool)

(assert (=> mapNonEmpty!9753 (= mapRes!9753 (and tp!20729 e!141972))))

(declare-fun mapRest!9753 () (Array (_ BitVec 32) ValueCell!2520))

(declare-fun mapKey!9753 () (_ BitVec 32))

(declare-fun mapValue!9753 () ValueCell!2520)

(assert (=> mapNonEmpty!9753 (= (arr!5067 (_values!4103 thiss!1504)) (store mapRest!9753 mapKey!9753 mapValue!9753))))

(declare-fun b!218245 () Bool)

(assert (=> b!218245 (= e!141973 false)))

(declare-fun lt!111523 () Bool)

(declare-datatypes ((List!3248 0))(
  ( (Nil!3245) (Cons!3244 (h!3891 (_ BitVec 64)) (t!8211 List!3248)) )
))
(declare-fun arrayNoDuplicates!0 (array!10694 (_ BitVec 32) List!3248) Bool)

(assert (=> b!218245 (= lt!111523 (arrayNoDuplicates!0 (_keys!6169 thiss!1504) #b00000000000000000000000000000000 Nil!3245))))

(declare-fun b!218246 () Bool)

(declare-fun e!141977 () Bool)

(assert (=> b!218246 (= e!141977 e!141973)))

(declare-fun res!107004 () Bool)

(assert (=> b!218246 (=> (not res!107004) (not e!141973))))

(declare-datatypes ((SeekEntryResult!795 0))(
  ( (MissingZero!795 (index!5350 (_ BitVec 32))) (Found!795 (index!5351 (_ BitVec 32))) (Intermediate!795 (undefined!1607 Bool) (index!5352 (_ BitVec 32)) (x!22835 (_ BitVec 32))) (Undefined!795) (MissingVacant!795 (index!5353 (_ BitVec 32))) )
))
(declare-fun lt!111522 () SeekEntryResult!795)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218246 (= res!107004 (or (= lt!111522 (MissingZero!795 index!297)) (= lt!111522 (MissingVacant!795 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10694 (_ BitVec 32)) SeekEntryResult!795)

(assert (=> b!218246 (= lt!111522 (seekEntryOrOpen!0 key!932 (_keys!6169 thiss!1504) (mask!9893 thiss!1504)))))

(declare-fun mapIsEmpty!9753 () Bool)

(assert (=> mapIsEmpty!9753 mapRes!9753))

(declare-fun b!218247 () Bool)

(declare-fun res!107001 () Bool)

(assert (=> b!218247 (=> (not res!107001) (not e!141973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218247 (= res!107001 (validMask!0 (mask!9893 thiss!1504)))))

(declare-fun b!218248 () Bool)

(declare-fun res!107006 () Bool)

(assert (=> b!218248 (=> (not res!107006) (not e!141973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10694 (_ BitVec 32)) Bool)

(assert (=> b!218248 (= res!107006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6169 thiss!1504) (mask!9893 thiss!1504)))))

(declare-fun b!218249 () Bool)

(declare-fun e!141976 () Bool)

(assert (=> b!218249 (= e!141976 tp_is_empty!5727)))

(declare-fun b!218250 () Bool)

(assert (=> b!218250 (= e!141975 (and e!141976 mapRes!9753))))

(declare-fun condMapEmpty!9753 () Bool)

(declare-fun mapDefault!9753 () ValueCell!2520)

(assert (=> b!218250 (= condMapEmpty!9753 (= (arr!5067 (_values!4103 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2520)) mapDefault!9753)))))

(declare-fun b!218244 () Bool)

(declare-fun res!107007 () Bool)

(assert (=> b!218244 (=> (not res!107007) (not e!141977))))

(assert (=> b!218244 (= res!107007 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!107005 () Bool)

(assert (=> start!21728 (=> (not res!107005) (not e!141977))))

(declare-fun valid!1184 (LongMapFixedSize!2940) Bool)

(assert (=> start!21728 (= res!107005 (valid!1184 thiss!1504))))

(assert (=> start!21728 e!141977))

(assert (=> start!21728 e!141978))

(assert (=> start!21728 true))

(assert (= (and start!21728 res!107005) b!218244))

(assert (= (and b!218244 res!107007) b!218246))

(assert (= (and b!218246 res!107004) b!218243))

(assert (= (and b!218243 res!107003) b!218247))

(assert (= (and b!218247 res!107001) b!218241))

(assert (= (and b!218241 res!107002) b!218248))

(assert (= (and b!218248 res!107006) b!218245))

(assert (= (and b!218250 condMapEmpty!9753) mapIsEmpty!9753))

(assert (= (and b!218250 (not condMapEmpty!9753)) mapNonEmpty!9753))

(get-info :version)

(assert (= (and mapNonEmpty!9753 ((_ is ValueCellFull!2520) mapValue!9753)) b!218242))

(assert (= (and b!218250 ((_ is ValueCellFull!2520) mapDefault!9753)) b!218249))

(assert (= b!218240 b!218250))

(assert (= start!21728 b!218240))

(declare-fun m!244247 () Bool)

(assert (=> b!218245 m!244247))

(declare-fun m!244249 () Bool)

(assert (=> start!21728 m!244249))

(declare-fun m!244251 () Bool)

(assert (=> mapNonEmpty!9753 m!244251))

(declare-fun m!244253 () Bool)

(assert (=> b!218240 m!244253))

(declare-fun m!244255 () Bool)

(assert (=> b!218240 m!244255))

(declare-fun m!244257 () Bool)

(assert (=> b!218246 m!244257))

(declare-fun m!244259 () Bool)

(assert (=> b!218243 m!244259))

(assert (=> b!218243 m!244259))

(declare-fun m!244261 () Bool)

(assert (=> b!218243 m!244261))

(declare-fun m!244263 () Bool)

(assert (=> b!218248 m!244263))

(declare-fun m!244265 () Bool)

(assert (=> b!218247 m!244265))

(check-sat (not start!21728) (not b!218246) (not b_next!5865) (not b!218240) (not b!218245) (not b!218247) tp_is_empty!5727 (not mapNonEmpty!9753) (not b!218243) (not b!218248) b_and!12773)
(check-sat b_and!12773 (not b_next!5865))

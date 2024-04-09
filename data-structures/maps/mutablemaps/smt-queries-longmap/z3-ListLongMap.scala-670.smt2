; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16538 () Bool)

(assert start!16538)

(declare-fun b!164306 () Bool)

(declare-fun b_free!3831 () Bool)

(declare-fun b_next!3831 () Bool)

(assert (=> b!164306 (= b_free!3831 (not b_next!3831))))

(declare-fun tp!14094 () Bool)

(declare-fun b_and!10263 () Bool)

(assert (=> b!164306 (= tp!14094 b_and!10263)))

(declare-fun mapIsEmpty!6168 () Bool)

(declare-fun mapRes!6168 () Bool)

(assert (=> mapIsEmpty!6168 mapRes!6168))

(declare-fun b!164304 () Bool)

(declare-fun e!107811 () Bool)

(assert (=> b!164304 (= e!107811 false)))

(declare-fun lt!82894 () Bool)

(declare-datatypes ((V!4491 0))(
  ( (V!4492 (val!1861 Int)) )
))
(declare-datatypes ((ValueCell!1473 0))(
  ( (ValueCellFull!1473 (v!3722 V!4491)) (EmptyCell!1473) )
))
(declare-datatypes ((array!6362 0))(
  ( (array!6363 (arr!3016 (Array (_ BitVec 32) (_ BitVec 64))) (size!3304 (_ BitVec 32))) )
))
(declare-datatypes ((array!6364 0))(
  ( (array!6365 (arr!3017 (Array (_ BitVec 32) ValueCell!1473)) (size!3305 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1854 0))(
  ( (LongMapFixedSize!1855 (defaultEntry!3369 Int) (mask!8058 (_ BitVec 32)) (extraKeys!3110 (_ BitVec 32)) (zeroValue!3212 V!4491) (minValue!3212 V!4491) (_size!976 (_ BitVec 32)) (_keys!5194 array!6362) (_values!3352 array!6364) (_vacant!976 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1854)

(declare-datatypes ((List!2022 0))(
  ( (Nil!2019) (Cons!2018 (h!2635 (_ BitVec 64)) (t!6832 List!2022)) )
))
(declare-fun arrayNoDuplicates!0 (array!6362 (_ BitVec 32) List!2022) Bool)

(assert (=> b!164304 (= lt!82894 (arrayNoDuplicates!0 (_keys!5194 thiss!1248) #b00000000000000000000000000000000 Nil!2019))))

(declare-fun b!164305 () Bool)

(declare-fun e!107812 () Bool)

(declare-fun tp_is_empty!3633 () Bool)

(assert (=> b!164305 (= e!107812 tp_is_empty!3633)))

(declare-fun e!107814 () Bool)

(declare-fun e!107810 () Bool)

(declare-fun array_inv!1921 (array!6362) Bool)

(declare-fun array_inv!1922 (array!6364) Bool)

(assert (=> b!164306 (= e!107810 (and tp!14094 tp_is_empty!3633 (array_inv!1921 (_keys!5194 thiss!1248)) (array_inv!1922 (_values!3352 thiss!1248)) e!107814))))

(declare-fun b!164307 () Bool)

(declare-fun res!77793 () Bool)

(assert (=> b!164307 (=> (not res!77793) (not e!107811))))

(assert (=> b!164307 (= res!77793 (and (= (size!3305 (_values!3352 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8058 thiss!1248))) (= (size!3304 (_keys!5194 thiss!1248)) (size!3305 (_values!3352 thiss!1248))) (bvsge (mask!8058 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3110 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3110 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164308 () Bool)

(declare-fun res!77796 () Bool)

(assert (=> b!164308 (=> (not res!77796) (not e!107811))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3016 0))(
  ( (tuple2!3017 (_1!1518 (_ BitVec 64)) (_2!1518 V!4491)) )
))
(declare-datatypes ((List!2023 0))(
  ( (Nil!2020) (Cons!2019 (h!2636 tuple2!3016) (t!6833 List!2023)) )
))
(declare-datatypes ((ListLongMap!1985 0))(
  ( (ListLongMap!1986 (toList!1008 List!2023)) )
))
(declare-fun contains!1044 (ListLongMap!1985 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!661 (array!6362 array!6364 (_ BitVec 32) (_ BitVec 32) V!4491 V!4491 (_ BitVec 32) Int) ListLongMap!1985)

(assert (=> b!164308 (= res!77796 (contains!1044 (getCurrentListMap!661 (_keys!5194 thiss!1248) (_values!3352 thiss!1248) (mask!8058 thiss!1248) (extraKeys!3110 thiss!1248) (zeroValue!3212 thiss!1248) (minValue!3212 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3369 thiss!1248)) key!828))))

(declare-fun b!164309 () Bool)

(declare-fun res!77791 () Bool)

(assert (=> b!164309 (=> (not res!77791) (not e!107811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6362 (_ BitVec 32)) Bool)

(assert (=> b!164309 (= res!77791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5194 thiss!1248) (mask!8058 thiss!1248)))))

(declare-fun mapNonEmpty!6168 () Bool)

(declare-fun tp!14093 () Bool)

(declare-fun e!107813 () Bool)

(assert (=> mapNonEmpty!6168 (= mapRes!6168 (and tp!14093 e!107813))))

(declare-fun mapRest!6168 () (Array (_ BitVec 32) ValueCell!1473))

(declare-fun mapValue!6168 () ValueCell!1473)

(declare-fun mapKey!6168 () (_ BitVec 32))

(assert (=> mapNonEmpty!6168 (= (arr!3017 (_values!3352 thiss!1248)) (store mapRest!6168 mapKey!6168 mapValue!6168))))

(declare-fun b!164310 () Bool)

(assert (=> b!164310 (= e!107813 tp_is_empty!3633)))

(declare-fun b!164311 () Bool)

(declare-fun e!107809 () Bool)

(assert (=> b!164311 (= e!107809 e!107811)))

(declare-fun res!77795 () Bool)

(assert (=> b!164311 (=> (not res!77795) (not e!107811))))

(declare-datatypes ((SeekEntryResult!424 0))(
  ( (MissingZero!424 (index!3864 (_ BitVec 32))) (Found!424 (index!3865 (_ BitVec 32))) (Intermediate!424 (undefined!1236 Bool) (index!3866 (_ BitVec 32)) (x!18236 (_ BitVec 32))) (Undefined!424) (MissingVacant!424 (index!3867 (_ BitVec 32))) )
))
(declare-fun lt!82895 () SeekEntryResult!424)

(get-info :version)

(assert (=> b!164311 (= res!77795 (and (not ((_ is Undefined!424) lt!82895)) (not ((_ is MissingVacant!424) lt!82895)) (not ((_ is MissingZero!424) lt!82895)) ((_ is Found!424) lt!82895)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6362 (_ BitVec 32)) SeekEntryResult!424)

(assert (=> b!164311 (= lt!82895 (seekEntryOrOpen!0 key!828 (_keys!5194 thiss!1248) (mask!8058 thiss!1248)))))

(declare-fun b!164312 () Bool)

(assert (=> b!164312 (= e!107814 (and e!107812 mapRes!6168))))

(declare-fun condMapEmpty!6168 () Bool)

(declare-fun mapDefault!6168 () ValueCell!1473)

(assert (=> b!164312 (= condMapEmpty!6168 (= (arr!3017 (_values!3352 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1473)) mapDefault!6168)))))

(declare-fun b!164313 () Bool)

(declare-fun res!77792 () Bool)

(assert (=> b!164313 (=> (not res!77792) (not e!107809))))

(assert (=> b!164313 (= res!77792 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164314 () Bool)

(declare-fun res!77790 () Bool)

(assert (=> b!164314 (=> (not res!77790) (not e!107811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164314 (= res!77790 (validMask!0 (mask!8058 thiss!1248)))))

(declare-fun res!77794 () Bool)

(assert (=> start!16538 (=> (not res!77794) (not e!107809))))

(declare-fun valid!817 (LongMapFixedSize!1854) Bool)

(assert (=> start!16538 (= res!77794 (valid!817 thiss!1248))))

(assert (=> start!16538 e!107809))

(assert (=> start!16538 e!107810))

(assert (=> start!16538 true))

(assert (= (and start!16538 res!77794) b!164313))

(assert (= (and b!164313 res!77792) b!164311))

(assert (= (and b!164311 res!77795) b!164308))

(assert (= (and b!164308 res!77796) b!164314))

(assert (= (and b!164314 res!77790) b!164307))

(assert (= (and b!164307 res!77793) b!164309))

(assert (= (and b!164309 res!77791) b!164304))

(assert (= (and b!164312 condMapEmpty!6168) mapIsEmpty!6168))

(assert (= (and b!164312 (not condMapEmpty!6168)) mapNonEmpty!6168))

(assert (= (and mapNonEmpty!6168 ((_ is ValueCellFull!1473) mapValue!6168)) b!164310))

(assert (= (and b!164312 ((_ is ValueCellFull!1473) mapDefault!6168)) b!164305))

(assert (= b!164306 b!164312))

(assert (= start!16538 b!164306))

(declare-fun m!194569 () Bool)

(assert (=> b!164311 m!194569))

(declare-fun m!194571 () Bool)

(assert (=> b!164304 m!194571))

(declare-fun m!194573 () Bool)

(assert (=> mapNonEmpty!6168 m!194573))

(declare-fun m!194575 () Bool)

(assert (=> b!164306 m!194575))

(declare-fun m!194577 () Bool)

(assert (=> b!164306 m!194577))

(declare-fun m!194579 () Bool)

(assert (=> b!164314 m!194579))

(declare-fun m!194581 () Bool)

(assert (=> b!164309 m!194581))

(declare-fun m!194583 () Bool)

(assert (=> start!16538 m!194583))

(declare-fun m!194585 () Bool)

(assert (=> b!164308 m!194585))

(assert (=> b!164308 m!194585))

(declare-fun m!194587 () Bool)

(assert (=> b!164308 m!194587))

(check-sat (not b_next!3831) b_and!10263 (not b!164309) (not b!164314) (not mapNonEmpty!6168) (not b!164306) (not b!164304) tp_is_empty!3633 (not start!16538) (not b!164311) (not b!164308))
(check-sat b_and!10263 (not b_next!3831))

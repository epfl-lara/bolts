; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16136 () Bool)

(assert start!16136)

(declare-fun b!160411 () Bool)

(declare-fun b_free!3585 () Bool)

(declare-fun b_next!3585 () Bool)

(assert (=> b!160411 (= b_free!3585 (not b_next!3585))))

(declare-fun tp!13325 () Bool)

(declare-fun b_and!10017 () Bool)

(assert (=> b!160411 (= tp!13325 b_and!10017)))

(declare-fun b!160408 () Bool)

(declare-fun res!75971 () Bool)

(declare-fun e!104893 () Bool)

(assert (=> b!160408 (=> (not res!75971) (not e!104893))))

(declare-datatypes ((V!4163 0))(
  ( (V!4164 (val!1738 Int)) )
))
(declare-datatypes ((ValueCell!1350 0))(
  ( (ValueCellFull!1350 (v!3599 V!4163)) (EmptyCell!1350) )
))
(declare-datatypes ((array!5852 0))(
  ( (array!5853 (arr!2770 (Array (_ BitVec 32) (_ BitVec 64))) (size!3054 (_ BitVec 32))) )
))
(declare-datatypes ((array!5854 0))(
  ( (array!5855 (arr!2771 (Array (_ BitVec 32) ValueCell!1350)) (size!3055 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1608 0))(
  ( (LongMapFixedSize!1609 (defaultEntry!3246 Int) (mask!7816 (_ BitVec 32)) (extraKeys!2987 (_ BitVec 32)) (zeroValue!3089 V!4163) (minValue!3089 V!4163) (_size!853 (_ BitVec 32)) (_keys!5047 array!5852) (_values!3229 array!5854) (_vacant!853 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1608)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2908 0))(
  ( (tuple2!2909 (_1!1464 (_ BitVec 64)) (_2!1464 V!4163)) )
))
(declare-datatypes ((List!1964 0))(
  ( (Nil!1961) (Cons!1960 (h!2573 tuple2!2908) (t!6774 List!1964)) )
))
(declare-datatypes ((ListLongMap!1917 0))(
  ( (ListLongMap!1918 (toList!974 List!1964)) )
))
(declare-fun contains!1004 (ListLongMap!1917 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!634 (array!5852 array!5854 (_ BitVec 32) (_ BitVec 32) V!4163 V!4163 (_ BitVec 32) Int) ListLongMap!1917)

(assert (=> b!160408 (= res!75971 (not (contains!1004 (getCurrentListMap!634 (_keys!5047 thiss!1248) (_values!3229 thiss!1248) (mask!7816 thiss!1248) (extraKeys!2987 thiss!1248) (zeroValue!3089 thiss!1248) (minValue!3089 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3246 thiss!1248)) key!828)))))

(declare-fun b!160409 () Bool)

(declare-fun res!75973 () Bool)

(assert (=> b!160409 (=> (not res!75973) (not e!104893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160409 (= res!75973 (validMask!0 (mask!7816 thiss!1248)))))

(declare-fun mapNonEmpty!5768 () Bool)

(declare-fun mapRes!5768 () Bool)

(declare-fun tp!13324 () Bool)

(declare-fun e!104895 () Bool)

(assert (=> mapNonEmpty!5768 (= mapRes!5768 (and tp!13324 e!104895))))

(declare-fun mapValue!5768 () ValueCell!1350)

(declare-fun mapRest!5768 () (Array (_ BitVec 32) ValueCell!1350))

(declare-fun mapKey!5768 () (_ BitVec 32))

(assert (=> mapNonEmpty!5768 (= (arr!2771 (_values!3229 thiss!1248)) (store mapRest!5768 mapKey!5768 mapValue!5768))))

(declare-fun b!160410 () Bool)

(declare-fun tp_is_empty!3387 () Bool)

(assert (=> b!160410 (= e!104895 tp_is_empty!3387)))

(declare-fun e!104897 () Bool)

(declare-fun e!104894 () Bool)

(declare-fun array_inv!1759 (array!5852) Bool)

(declare-fun array_inv!1760 (array!5854) Bool)

(assert (=> b!160411 (= e!104894 (and tp!13325 tp_is_empty!3387 (array_inv!1759 (_keys!5047 thiss!1248)) (array_inv!1760 (_values!3229 thiss!1248)) e!104897))))

(declare-fun b!160412 () Bool)

(declare-fun res!75970 () Bool)

(assert (=> b!160412 (=> (not res!75970) (not e!104893))))

(assert (=> b!160412 (= res!75970 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160413 () Bool)

(declare-fun e!104896 () Bool)

(assert (=> b!160413 (= e!104896 tp_is_empty!3387)))

(declare-fun b!160414 () Bool)

(declare-fun res!75972 () Bool)

(assert (=> b!160414 (=> (not res!75972) (not e!104893))))

(assert (=> b!160414 (= res!75972 (and (= (size!3055 (_values!3229 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7816 thiss!1248))) (= (size!3054 (_keys!5047 thiss!1248)) (size!3055 (_values!3229 thiss!1248))) (bvsge (mask!7816 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2987 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2987 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160415 () Bool)

(declare-fun res!75968 () Bool)

(assert (=> b!160415 (=> (not res!75968) (not e!104893))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!343 0))(
  ( (MissingZero!343 (index!3540 (_ BitVec 32))) (Found!343 (index!3541 (_ BitVec 32))) (Intermediate!343 (undefined!1155 Bool) (index!3542 (_ BitVec 32)) (x!17719 (_ BitVec 32))) (Undefined!343) (MissingVacant!343 (index!3543 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5852 (_ BitVec 32)) SeekEntryResult!343)

(assert (=> b!160415 (= res!75968 ((_ is Undefined!343) (seekEntryOrOpen!0 key!828 (_keys!5047 thiss!1248) (mask!7816 thiss!1248))))))

(declare-fun b!160416 () Bool)

(assert (=> b!160416 (= e!104897 (and e!104896 mapRes!5768))))

(declare-fun condMapEmpty!5768 () Bool)

(declare-fun mapDefault!5768 () ValueCell!1350)

(assert (=> b!160416 (= condMapEmpty!5768 (= (arr!2771 (_values!3229 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1350)) mapDefault!5768)))))

(declare-fun b!160417 () Bool)

(declare-fun res!75974 () Bool)

(assert (=> b!160417 (=> (not res!75974) (not e!104893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5852 (_ BitVec 32)) Bool)

(assert (=> b!160417 (= res!75974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5047 thiss!1248) (mask!7816 thiss!1248)))))

(declare-fun b!160418 () Bool)

(assert (=> b!160418 (= e!104893 false)))

(declare-fun lt!82112 () Bool)

(declare-datatypes ((List!1965 0))(
  ( (Nil!1962) (Cons!1961 (h!2574 (_ BitVec 64)) (t!6775 List!1965)) )
))
(declare-fun arrayNoDuplicates!0 (array!5852 (_ BitVec 32) List!1965) Bool)

(assert (=> b!160418 (= lt!82112 (arrayNoDuplicates!0 (_keys!5047 thiss!1248) #b00000000000000000000000000000000 Nil!1962))))

(declare-fun mapIsEmpty!5768 () Bool)

(assert (=> mapIsEmpty!5768 mapRes!5768))

(declare-fun res!75969 () Bool)

(assert (=> start!16136 (=> (not res!75969) (not e!104893))))

(declare-fun valid!740 (LongMapFixedSize!1608) Bool)

(assert (=> start!16136 (= res!75969 (valid!740 thiss!1248))))

(assert (=> start!16136 e!104893))

(assert (=> start!16136 e!104894))

(assert (=> start!16136 true))

(assert (= (and start!16136 res!75969) b!160412))

(assert (= (and b!160412 res!75970) b!160415))

(assert (= (and b!160415 res!75968) b!160408))

(assert (= (and b!160408 res!75971) b!160409))

(assert (= (and b!160409 res!75973) b!160414))

(assert (= (and b!160414 res!75972) b!160417))

(assert (= (and b!160417 res!75974) b!160418))

(assert (= (and b!160416 condMapEmpty!5768) mapIsEmpty!5768))

(assert (= (and b!160416 (not condMapEmpty!5768)) mapNonEmpty!5768))

(assert (= (and mapNonEmpty!5768 ((_ is ValueCellFull!1350) mapValue!5768)) b!160410))

(assert (= (and b!160416 ((_ is ValueCellFull!1350) mapDefault!5768)) b!160413))

(assert (= b!160411 b!160416))

(assert (= start!16136 b!160411))

(declare-fun m!192295 () Bool)

(assert (=> mapNonEmpty!5768 m!192295))

(declare-fun m!192297 () Bool)

(assert (=> b!160417 m!192297))

(declare-fun m!192299 () Bool)

(assert (=> b!160411 m!192299))

(declare-fun m!192301 () Bool)

(assert (=> b!160411 m!192301))

(declare-fun m!192303 () Bool)

(assert (=> start!16136 m!192303))

(declare-fun m!192305 () Bool)

(assert (=> b!160408 m!192305))

(assert (=> b!160408 m!192305))

(declare-fun m!192307 () Bool)

(assert (=> b!160408 m!192307))

(declare-fun m!192309 () Bool)

(assert (=> b!160418 m!192309))

(declare-fun m!192311 () Bool)

(assert (=> b!160415 m!192311))

(declare-fun m!192313 () Bool)

(assert (=> b!160409 m!192313))

(check-sat (not b_next!3585) (not b!160418) b_and!10017 (not b!160415) (not start!16136) (not mapNonEmpty!5768) (not b!160408) tp_is_empty!3387 (not b!160411) (not b!160409) (not b!160417))
(check-sat b_and!10017 (not b_next!3585))

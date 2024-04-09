; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16148 () Bool)

(assert start!16148)

(declare-fun b!160609 () Bool)

(declare-fun b_free!3597 () Bool)

(declare-fun b_next!3597 () Bool)

(assert (=> b!160609 (= b_free!3597 (not b_next!3597))))

(declare-fun tp!13360 () Bool)

(declare-fun b_and!10029 () Bool)

(assert (=> b!160609 (= tp!13360 b_and!10029)))

(declare-fun b!160606 () Bool)

(declare-fun res!76099 () Bool)

(declare-fun e!105004 () Bool)

(assert (=> b!160606 (=> (not res!76099) (not e!105004))))

(declare-datatypes ((V!4179 0))(
  ( (V!4180 (val!1744 Int)) )
))
(declare-datatypes ((ValueCell!1356 0))(
  ( (ValueCellFull!1356 (v!3605 V!4179)) (EmptyCell!1356) )
))
(declare-datatypes ((array!5876 0))(
  ( (array!5877 (arr!2782 (Array (_ BitVec 32) (_ BitVec 64))) (size!3066 (_ BitVec 32))) )
))
(declare-datatypes ((array!5878 0))(
  ( (array!5879 (arr!2783 (Array (_ BitVec 32) ValueCell!1356)) (size!3067 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1620 0))(
  ( (LongMapFixedSize!1621 (defaultEntry!3252 Int) (mask!7826 (_ BitVec 32)) (extraKeys!2993 (_ BitVec 32)) (zeroValue!3095 V!4179) (minValue!3095 V!4179) (_size!859 (_ BitVec 32)) (_keys!5053 array!5876) (_values!3235 array!5878) (_vacant!859 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1620)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160606 (= res!76099 (validMask!0 (mask!7826 thiss!1248)))))

(declare-fun res!76098 () Bool)

(assert (=> start!16148 (=> (not res!76098) (not e!105004))))

(declare-fun valid!744 (LongMapFixedSize!1620) Bool)

(assert (=> start!16148 (= res!76098 (valid!744 thiss!1248))))

(assert (=> start!16148 e!105004))

(declare-fun e!105002 () Bool)

(assert (=> start!16148 e!105002))

(assert (=> start!16148 true))

(declare-fun b!160607 () Bool)

(declare-fun e!105005 () Bool)

(declare-fun e!105001 () Bool)

(declare-fun mapRes!5786 () Bool)

(assert (=> b!160607 (= e!105005 (and e!105001 mapRes!5786))))

(declare-fun condMapEmpty!5786 () Bool)

(declare-fun mapDefault!5786 () ValueCell!1356)

(assert (=> b!160607 (= condMapEmpty!5786 (= (arr!2783 (_values!3235 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1356)) mapDefault!5786)))))

(declare-fun b!160608 () Bool)

(declare-fun res!76094 () Bool)

(assert (=> b!160608 (=> (not res!76094) (not e!105004))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160608 (= res!76094 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3399 () Bool)

(declare-fun array_inv!1767 (array!5876) Bool)

(declare-fun array_inv!1768 (array!5878) Bool)

(assert (=> b!160609 (= e!105002 (and tp!13360 tp_is_empty!3399 (array_inv!1767 (_keys!5053 thiss!1248)) (array_inv!1768 (_values!3235 thiss!1248)) e!105005))))

(declare-fun b!160610 () Bool)

(declare-fun res!76095 () Bool)

(assert (=> b!160610 (=> (not res!76095) (not e!105004))))

(assert (=> b!160610 (= res!76095 (and (= (size!3067 (_values!3235 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7826 thiss!1248))) (= (size!3066 (_keys!5053 thiss!1248)) (size!3067 (_values!3235 thiss!1248))) (bvsge (mask!7826 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2993 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2993 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160611 () Bool)

(declare-fun res!76097 () Bool)

(assert (=> b!160611 (=> (not res!76097) (not e!105004))))

(declare-datatypes ((tuple2!2916 0))(
  ( (tuple2!2917 (_1!1468 (_ BitVec 64)) (_2!1468 V!4179)) )
))
(declare-datatypes ((List!1971 0))(
  ( (Nil!1968) (Cons!1967 (h!2580 tuple2!2916) (t!6781 List!1971)) )
))
(declare-datatypes ((ListLongMap!1925 0))(
  ( (ListLongMap!1926 (toList!978 List!1971)) )
))
(declare-fun contains!1008 (ListLongMap!1925 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!638 (array!5876 array!5878 (_ BitVec 32) (_ BitVec 32) V!4179 V!4179 (_ BitVec 32) Int) ListLongMap!1925)

(assert (=> b!160611 (= res!76097 (not (contains!1008 (getCurrentListMap!638 (_keys!5053 thiss!1248) (_values!3235 thiss!1248) (mask!7826 thiss!1248) (extraKeys!2993 thiss!1248) (zeroValue!3095 thiss!1248) (minValue!3095 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3252 thiss!1248)) key!828)))))

(declare-fun b!160612 () Bool)

(assert (=> b!160612 (= e!105004 false)))

(declare-fun lt!82130 () Bool)

(declare-datatypes ((List!1972 0))(
  ( (Nil!1969) (Cons!1968 (h!2581 (_ BitVec 64)) (t!6782 List!1972)) )
))
(declare-fun arrayNoDuplicates!0 (array!5876 (_ BitVec 32) List!1972) Bool)

(assert (=> b!160612 (= lt!82130 (arrayNoDuplicates!0 (_keys!5053 thiss!1248) #b00000000000000000000000000000000 Nil!1969))))

(declare-fun mapIsEmpty!5786 () Bool)

(assert (=> mapIsEmpty!5786 mapRes!5786))

(declare-fun b!160613 () Bool)

(declare-fun res!76096 () Bool)

(assert (=> b!160613 (=> (not res!76096) (not e!105004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5876 (_ BitVec 32)) Bool)

(assert (=> b!160613 (= res!76096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5053 thiss!1248) (mask!7826 thiss!1248)))))

(declare-fun b!160614 () Bool)

(declare-fun e!105000 () Bool)

(assert (=> b!160614 (= e!105000 tp_is_empty!3399)))

(declare-fun b!160615 () Bool)

(assert (=> b!160615 (= e!105001 tp_is_empty!3399)))

(declare-fun mapNonEmpty!5786 () Bool)

(declare-fun tp!13361 () Bool)

(assert (=> mapNonEmpty!5786 (= mapRes!5786 (and tp!13361 e!105000))))

(declare-fun mapRest!5786 () (Array (_ BitVec 32) ValueCell!1356))

(declare-fun mapValue!5786 () ValueCell!1356)

(declare-fun mapKey!5786 () (_ BitVec 32))

(assert (=> mapNonEmpty!5786 (= (arr!2783 (_values!3235 thiss!1248)) (store mapRest!5786 mapKey!5786 mapValue!5786))))

(declare-fun b!160616 () Bool)

(declare-fun res!76100 () Bool)

(assert (=> b!160616 (=> (not res!76100) (not e!105004))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!345 0))(
  ( (MissingZero!345 (index!3548 (_ BitVec 32))) (Found!345 (index!3549 (_ BitVec 32))) (Intermediate!345 (undefined!1157 Bool) (index!3550 (_ BitVec 32)) (x!17737 (_ BitVec 32))) (Undefined!345) (MissingVacant!345 (index!3551 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5876 (_ BitVec 32)) SeekEntryResult!345)

(assert (=> b!160616 (= res!76100 ((_ is Undefined!345) (seekEntryOrOpen!0 key!828 (_keys!5053 thiss!1248) (mask!7826 thiss!1248))))))

(assert (= (and start!16148 res!76098) b!160608))

(assert (= (and b!160608 res!76094) b!160616))

(assert (= (and b!160616 res!76100) b!160611))

(assert (= (and b!160611 res!76097) b!160606))

(assert (= (and b!160606 res!76099) b!160610))

(assert (= (and b!160610 res!76095) b!160613))

(assert (= (and b!160613 res!76096) b!160612))

(assert (= (and b!160607 condMapEmpty!5786) mapIsEmpty!5786))

(assert (= (and b!160607 (not condMapEmpty!5786)) mapNonEmpty!5786))

(assert (= (and mapNonEmpty!5786 ((_ is ValueCellFull!1356) mapValue!5786)) b!160614))

(assert (= (and b!160607 ((_ is ValueCellFull!1356) mapDefault!5786)) b!160615))

(assert (= b!160609 b!160607))

(assert (= start!16148 b!160609))

(declare-fun m!192415 () Bool)

(assert (=> b!160611 m!192415))

(assert (=> b!160611 m!192415))

(declare-fun m!192417 () Bool)

(assert (=> b!160611 m!192417))

(declare-fun m!192419 () Bool)

(assert (=> b!160606 m!192419))

(declare-fun m!192421 () Bool)

(assert (=> b!160616 m!192421))

(declare-fun m!192423 () Bool)

(assert (=> b!160613 m!192423))

(declare-fun m!192425 () Bool)

(assert (=> b!160609 m!192425))

(declare-fun m!192427 () Bool)

(assert (=> b!160609 m!192427))

(declare-fun m!192429 () Bool)

(assert (=> b!160612 m!192429))

(declare-fun m!192431 () Bool)

(assert (=> start!16148 m!192431))

(declare-fun m!192433 () Bool)

(assert (=> mapNonEmpty!5786 m!192433))

(check-sat (not mapNonEmpty!5786) (not b!160616) (not b!160612) (not b!160606) (not b_next!3597) (not b!160611) (not b!160613) (not start!16148) (not b!160609) tp_is_empty!3399 b_and!10029)
(check-sat b_and!10029 (not b_next!3597))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16154 () Bool)

(assert start!16154)

(declare-fun b!160707 () Bool)

(declare-fun b_free!3603 () Bool)

(declare-fun b_next!3603 () Bool)

(assert (=> b!160707 (= b_free!3603 (not b_next!3603))))

(declare-fun tp!13378 () Bool)

(declare-fun b_and!10035 () Bool)

(assert (=> b!160707 (= tp!13378 b_and!10035)))

(declare-fun mapIsEmpty!5795 () Bool)

(declare-fun mapRes!5795 () Bool)

(assert (=> mapIsEmpty!5795 mapRes!5795))

(declare-fun b!160705 () Bool)

(declare-fun e!105057 () Bool)

(assert (=> b!160705 (= e!105057 false)))

(declare-fun lt!82139 () Bool)

(declare-datatypes ((V!4187 0))(
  ( (V!4188 (val!1747 Int)) )
))
(declare-datatypes ((ValueCell!1359 0))(
  ( (ValueCellFull!1359 (v!3608 V!4187)) (EmptyCell!1359) )
))
(declare-datatypes ((array!5888 0))(
  ( (array!5889 (arr!2788 (Array (_ BitVec 32) (_ BitVec 64))) (size!3072 (_ BitVec 32))) )
))
(declare-datatypes ((array!5890 0))(
  ( (array!5891 (arr!2789 (Array (_ BitVec 32) ValueCell!1359)) (size!3073 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1626 0))(
  ( (LongMapFixedSize!1627 (defaultEntry!3255 Int) (mask!7831 (_ BitVec 32)) (extraKeys!2996 (_ BitVec 32)) (zeroValue!3098 V!4187) (minValue!3098 V!4187) (_size!862 (_ BitVec 32)) (_keys!5056 array!5888) (_values!3238 array!5890) (_vacant!862 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1626)

(declare-datatypes ((List!1975 0))(
  ( (Nil!1972) (Cons!1971 (h!2584 (_ BitVec 64)) (t!6785 List!1975)) )
))
(declare-fun arrayNoDuplicates!0 (array!5888 (_ BitVec 32) List!1975) Bool)

(assert (=> b!160705 (= lt!82139 (arrayNoDuplicates!0 (_keys!5056 thiss!1248) #b00000000000000000000000000000000 Nil!1972))))

(declare-fun b!160706 () Bool)

(declare-fun res!76160 () Bool)

(assert (=> b!160706 (=> (not res!76160) (not e!105057))))

(assert (=> b!160706 (= res!76160 (and (= (size!3073 (_values!3238 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7831 thiss!1248))) (= (size!3072 (_keys!5056 thiss!1248)) (size!3073 (_values!3238 thiss!1248))) (bvsge (mask!7831 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2996 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2996 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!76163 () Bool)

(assert (=> start!16154 (=> (not res!76163) (not e!105057))))

(declare-fun valid!746 (LongMapFixedSize!1626) Bool)

(assert (=> start!16154 (= res!76163 (valid!746 thiss!1248))))

(assert (=> start!16154 e!105057))

(declare-fun e!105059 () Bool)

(assert (=> start!16154 e!105059))

(assert (=> start!16154 true))

(declare-fun tp_is_empty!3405 () Bool)

(declare-fun e!105058 () Bool)

(declare-fun array_inv!1769 (array!5888) Bool)

(declare-fun array_inv!1770 (array!5890) Bool)

(assert (=> b!160707 (= e!105059 (and tp!13378 tp_is_empty!3405 (array_inv!1769 (_keys!5056 thiss!1248)) (array_inv!1770 (_values!3238 thiss!1248)) e!105058))))

(declare-fun b!160708 () Bool)

(declare-fun res!76158 () Bool)

(assert (=> b!160708 (=> (not res!76158) (not e!105057))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!348 0))(
  ( (MissingZero!348 (index!3560 (_ BitVec 32))) (Found!348 (index!3561 (_ BitVec 32))) (Intermediate!348 (undefined!1160 Bool) (index!3562 (_ BitVec 32)) (x!17748 (_ BitVec 32))) (Undefined!348) (MissingVacant!348 (index!3563 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5888 (_ BitVec 32)) SeekEntryResult!348)

(assert (=> b!160708 (= res!76158 ((_ is Undefined!348) (seekEntryOrOpen!0 key!828 (_keys!5056 thiss!1248) (mask!7831 thiss!1248))))))

(declare-fun b!160709 () Bool)

(declare-fun e!105056 () Bool)

(assert (=> b!160709 (= e!105056 tp_is_empty!3405)))

(declare-fun b!160710 () Bool)

(declare-fun res!76162 () Bool)

(assert (=> b!160710 (=> (not res!76162) (not e!105057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160710 (= res!76162 (validMask!0 (mask!7831 thiss!1248)))))

(declare-fun mapNonEmpty!5795 () Bool)

(declare-fun tp!13379 () Bool)

(assert (=> mapNonEmpty!5795 (= mapRes!5795 (and tp!13379 e!105056))))

(declare-fun mapKey!5795 () (_ BitVec 32))

(declare-fun mapRest!5795 () (Array (_ BitVec 32) ValueCell!1359))

(declare-fun mapValue!5795 () ValueCell!1359)

(assert (=> mapNonEmpty!5795 (= (arr!2789 (_values!3238 thiss!1248)) (store mapRest!5795 mapKey!5795 mapValue!5795))))

(declare-fun b!160711 () Bool)

(declare-fun res!76161 () Bool)

(assert (=> b!160711 (=> (not res!76161) (not e!105057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5888 (_ BitVec 32)) Bool)

(assert (=> b!160711 (= res!76161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5056 thiss!1248) (mask!7831 thiss!1248)))))

(declare-fun b!160712 () Bool)

(declare-fun e!105055 () Bool)

(assert (=> b!160712 (= e!105058 (and e!105055 mapRes!5795))))

(declare-fun condMapEmpty!5795 () Bool)

(declare-fun mapDefault!5795 () ValueCell!1359)

(assert (=> b!160712 (= condMapEmpty!5795 (= (arr!2789 (_values!3238 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1359)) mapDefault!5795)))))

(declare-fun b!160713 () Bool)

(declare-fun res!76159 () Bool)

(assert (=> b!160713 (=> (not res!76159) (not e!105057))))

(declare-datatypes ((tuple2!2920 0))(
  ( (tuple2!2921 (_1!1470 (_ BitVec 64)) (_2!1470 V!4187)) )
))
(declare-datatypes ((List!1976 0))(
  ( (Nil!1973) (Cons!1972 (h!2585 tuple2!2920) (t!6786 List!1976)) )
))
(declare-datatypes ((ListLongMap!1929 0))(
  ( (ListLongMap!1930 (toList!980 List!1976)) )
))
(declare-fun contains!1010 (ListLongMap!1929 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!640 (array!5888 array!5890 (_ BitVec 32) (_ BitVec 32) V!4187 V!4187 (_ BitVec 32) Int) ListLongMap!1929)

(assert (=> b!160713 (= res!76159 (not (contains!1010 (getCurrentListMap!640 (_keys!5056 thiss!1248) (_values!3238 thiss!1248) (mask!7831 thiss!1248) (extraKeys!2996 thiss!1248) (zeroValue!3098 thiss!1248) (minValue!3098 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3255 thiss!1248)) key!828)))))

(declare-fun b!160714 () Bool)

(declare-fun res!76157 () Bool)

(assert (=> b!160714 (=> (not res!76157) (not e!105057))))

(assert (=> b!160714 (= res!76157 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160715 () Bool)

(assert (=> b!160715 (= e!105055 tp_is_empty!3405)))

(assert (= (and start!16154 res!76163) b!160714))

(assert (= (and b!160714 res!76157) b!160708))

(assert (= (and b!160708 res!76158) b!160713))

(assert (= (and b!160713 res!76159) b!160710))

(assert (= (and b!160710 res!76162) b!160706))

(assert (= (and b!160706 res!76160) b!160711))

(assert (= (and b!160711 res!76161) b!160705))

(assert (= (and b!160712 condMapEmpty!5795) mapIsEmpty!5795))

(assert (= (and b!160712 (not condMapEmpty!5795)) mapNonEmpty!5795))

(assert (= (and mapNonEmpty!5795 ((_ is ValueCellFull!1359) mapValue!5795)) b!160709))

(assert (= (and b!160712 ((_ is ValueCellFull!1359) mapDefault!5795)) b!160715))

(assert (= b!160707 b!160712))

(assert (= start!16154 b!160707))

(declare-fun m!192475 () Bool)

(assert (=> mapNonEmpty!5795 m!192475))

(declare-fun m!192477 () Bool)

(assert (=> b!160713 m!192477))

(assert (=> b!160713 m!192477))

(declare-fun m!192479 () Bool)

(assert (=> b!160713 m!192479))

(declare-fun m!192481 () Bool)

(assert (=> b!160707 m!192481))

(declare-fun m!192483 () Bool)

(assert (=> b!160707 m!192483))

(declare-fun m!192485 () Bool)

(assert (=> start!16154 m!192485))

(declare-fun m!192487 () Bool)

(assert (=> b!160710 m!192487))

(declare-fun m!192489 () Bool)

(assert (=> b!160708 m!192489))

(declare-fun m!192491 () Bool)

(assert (=> b!160705 m!192491))

(declare-fun m!192493 () Bool)

(assert (=> b!160711 m!192493))

(check-sat (not start!16154) b_and!10035 (not b!160707) tp_is_empty!3405 (not b!160705) (not b!160711) (not b_next!3603) (not b!160710) (not mapNonEmpty!5795) (not b!160708) (not b!160713))
(check-sat b_and!10035 (not b_next!3603))

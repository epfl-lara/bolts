; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16544 () Bool)

(assert start!16544)

(declare-fun b!164408 () Bool)

(declare-fun b_free!3837 () Bool)

(declare-fun b_next!3837 () Bool)

(assert (=> b!164408 (= b_free!3837 (not b_next!3837))))

(declare-fun tp!14111 () Bool)

(declare-fun b_and!10269 () Bool)

(assert (=> b!164408 (= tp!14111 b_and!10269)))

(declare-fun mapIsEmpty!6177 () Bool)

(declare-fun mapRes!6177 () Bool)

(assert (=> mapIsEmpty!6177 mapRes!6177))

(declare-fun b!164403 () Bool)

(declare-fun e!107876 () Bool)

(declare-fun e!107875 () Bool)

(assert (=> b!164403 (= e!107876 e!107875)))

(declare-fun res!77856 () Bool)

(assert (=> b!164403 (=> (not res!77856) (not e!107875))))

(declare-datatypes ((SeekEntryResult!426 0))(
  ( (MissingZero!426 (index!3872 (_ BitVec 32))) (Found!426 (index!3873 (_ BitVec 32))) (Intermediate!426 (undefined!1238 Bool) (index!3874 (_ BitVec 32)) (x!18246 (_ BitVec 32))) (Undefined!426) (MissingVacant!426 (index!3875 (_ BitVec 32))) )
))
(declare-fun lt!82912 () SeekEntryResult!426)

(get-info :version)

(assert (=> b!164403 (= res!77856 (and (not ((_ is Undefined!426) lt!82912)) (not ((_ is MissingVacant!426) lt!82912)) (not ((_ is MissingZero!426) lt!82912)) ((_ is Found!426) lt!82912)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4499 0))(
  ( (V!4500 (val!1864 Int)) )
))
(declare-datatypes ((ValueCell!1476 0))(
  ( (ValueCellFull!1476 (v!3725 V!4499)) (EmptyCell!1476) )
))
(declare-datatypes ((array!6374 0))(
  ( (array!6375 (arr!3022 (Array (_ BitVec 32) (_ BitVec 64))) (size!3310 (_ BitVec 32))) )
))
(declare-datatypes ((array!6376 0))(
  ( (array!6377 (arr!3023 (Array (_ BitVec 32) ValueCell!1476)) (size!3311 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1860 0))(
  ( (LongMapFixedSize!1861 (defaultEntry!3372 Int) (mask!8063 (_ BitVec 32)) (extraKeys!3113 (_ BitVec 32)) (zeroValue!3215 V!4499) (minValue!3215 V!4499) (_size!979 (_ BitVec 32)) (_keys!5197 array!6374) (_values!3355 array!6376) (_vacant!979 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1860)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6374 (_ BitVec 32)) SeekEntryResult!426)

(assert (=> b!164403 (= lt!82912 (seekEntryOrOpen!0 key!828 (_keys!5197 thiss!1248) (mask!8063 thiss!1248)))))

(declare-fun res!77854 () Bool)

(assert (=> start!16544 (=> (not res!77854) (not e!107876))))

(declare-fun valid!820 (LongMapFixedSize!1860) Bool)

(assert (=> start!16544 (= res!77854 (valid!820 thiss!1248))))

(assert (=> start!16544 e!107876))

(declare-fun e!107872 () Bool)

(assert (=> start!16544 e!107872))

(assert (=> start!16544 true))

(declare-fun b!164404 () Bool)

(declare-fun e!107877 () Bool)

(declare-fun tp_is_empty!3639 () Bool)

(assert (=> b!164404 (= e!107877 tp_is_empty!3639)))

(declare-fun b!164405 () Bool)

(assert (=> b!164405 (= e!107875 false)))

(declare-fun lt!82913 () Bool)

(declare-datatypes ((List!2028 0))(
  ( (Nil!2025) (Cons!2024 (h!2641 (_ BitVec 64)) (t!6838 List!2028)) )
))
(declare-fun arrayNoDuplicates!0 (array!6374 (_ BitVec 32) List!2028) Bool)

(assert (=> b!164405 (= lt!82913 (arrayNoDuplicates!0 (_keys!5197 thiss!1248) #b00000000000000000000000000000000 Nil!2025))))

(declare-fun b!164406 () Bool)

(declare-fun res!77857 () Bool)

(assert (=> b!164406 (=> (not res!77857) (not e!107875))))

(assert (=> b!164406 (= res!77857 (and (= (size!3311 (_values!3355 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8063 thiss!1248))) (= (size!3310 (_keys!5197 thiss!1248)) (size!3311 (_values!3355 thiss!1248))) (bvsge (mask!8063 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3113 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3113 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164407 () Bool)

(declare-fun e!107873 () Bool)

(assert (=> b!164407 (= e!107873 (and e!107877 mapRes!6177))))

(declare-fun condMapEmpty!6177 () Bool)

(declare-fun mapDefault!6177 () ValueCell!1476)

(assert (=> b!164407 (= condMapEmpty!6177 (= (arr!3023 (_values!3355 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1476)) mapDefault!6177)))))

(declare-fun array_inv!1927 (array!6374) Bool)

(declare-fun array_inv!1928 (array!6376) Bool)

(assert (=> b!164408 (= e!107872 (and tp!14111 tp_is_empty!3639 (array_inv!1927 (_keys!5197 thiss!1248)) (array_inv!1928 (_values!3355 thiss!1248)) e!107873))))

(declare-fun b!164409 () Bool)

(declare-fun res!77855 () Bool)

(assert (=> b!164409 (=> (not res!77855) (not e!107875))))

(declare-datatypes ((tuple2!3022 0))(
  ( (tuple2!3023 (_1!1521 (_ BitVec 64)) (_2!1521 V!4499)) )
))
(declare-datatypes ((List!2029 0))(
  ( (Nil!2026) (Cons!2025 (h!2642 tuple2!3022) (t!6839 List!2029)) )
))
(declare-datatypes ((ListLongMap!1991 0))(
  ( (ListLongMap!1992 (toList!1011 List!2029)) )
))
(declare-fun contains!1047 (ListLongMap!1991 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!664 (array!6374 array!6376 (_ BitVec 32) (_ BitVec 32) V!4499 V!4499 (_ BitVec 32) Int) ListLongMap!1991)

(assert (=> b!164409 (= res!77855 (contains!1047 (getCurrentListMap!664 (_keys!5197 thiss!1248) (_values!3355 thiss!1248) (mask!8063 thiss!1248) (extraKeys!3113 thiss!1248) (zeroValue!3215 thiss!1248) (minValue!3215 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3372 thiss!1248)) key!828))))

(declare-fun b!164410 () Bool)

(declare-fun res!77858 () Bool)

(assert (=> b!164410 (=> (not res!77858) (not e!107876))))

(assert (=> b!164410 (= res!77858 (not (= key!828 (bvneg key!828))))))

(declare-fun b!164411 () Bool)

(declare-fun res!77853 () Bool)

(assert (=> b!164411 (=> (not res!77853) (not e!107875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6374 (_ BitVec 32)) Bool)

(assert (=> b!164411 (= res!77853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5197 thiss!1248) (mask!8063 thiss!1248)))))

(declare-fun b!164412 () Bool)

(declare-fun e!107878 () Bool)

(assert (=> b!164412 (= e!107878 tp_is_empty!3639)))

(declare-fun b!164413 () Bool)

(declare-fun res!77859 () Bool)

(assert (=> b!164413 (=> (not res!77859) (not e!107875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164413 (= res!77859 (validMask!0 (mask!8063 thiss!1248)))))

(declare-fun mapNonEmpty!6177 () Bool)

(declare-fun tp!14112 () Bool)

(assert (=> mapNonEmpty!6177 (= mapRes!6177 (and tp!14112 e!107878))))

(declare-fun mapValue!6177 () ValueCell!1476)

(declare-fun mapRest!6177 () (Array (_ BitVec 32) ValueCell!1476))

(declare-fun mapKey!6177 () (_ BitVec 32))

(assert (=> mapNonEmpty!6177 (= (arr!3023 (_values!3355 thiss!1248)) (store mapRest!6177 mapKey!6177 mapValue!6177))))

(assert (= (and start!16544 res!77854) b!164410))

(assert (= (and b!164410 res!77858) b!164403))

(assert (= (and b!164403 res!77856) b!164409))

(assert (= (and b!164409 res!77855) b!164413))

(assert (= (and b!164413 res!77859) b!164406))

(assert (= (and b!164406 res!77857) b!164411))

(assert (= (and b!164411 res!77853) b!164405))

(assert (= (and b!164407 condMapEmpty!6177) mapIsEmpty!6177))

(assert (= (and b!164407 (not condMapEmpty!6177)) mapNonEmpty!6177))

(assert (= (and mapNonEmpty!6177 ((_ is ValueCellFull!1476) mapValue!6177)) b!164412))

(assert (= (and b!164407 ((_ is ValueCellFull!1476) mapDefault!6177)) b!164404))

(assert (= b!164408 b!164407))

(assert (= start!16544 b!164408))

(declare-fun m!194629 () Bool)

(assert (=> b!164403 m!194629))

(declare-fun m!194631 () Bool)

(assert (=> b!164411 m!194631))

(declare-fun m!194633 () Bool)

(assert (=> b!164409 m!194633))

(assert (=> b!164409 m!194633))

(declare-fun m!194635 () Bool)

(assert (=> b!164409 m!194635))

(declare-fun m!194637 () Bool)

(assert (=> b!164405 m!194637))

(declare-fun m!194639 () Bool)

(assert (=> mapNonEmpty!6177 m!194639))

(declare-fun m!194641 () Bool)

(assert (=> b!164413 m!194641))

(declare-fun m!194643 () Bool)

(assert (=> b!164408 m!194643))

(declare-fun m!194645 () Bool)

(assert (=> b!164408 m!194645))

(declare-fun m!194647 () Bool)

(assert (=> start!16544 m!194647))

(check-sat (not mapNonEmpty!6177) (not b_next!3837) (not b!164411) tp_is_empty!3639 b_and!10269 (not b!164403) (not b!164413) (not b!164408) (not b!164405) (not start!16544) (not b!164409))
(check-sat b_and!10269 (not b_next!3837))

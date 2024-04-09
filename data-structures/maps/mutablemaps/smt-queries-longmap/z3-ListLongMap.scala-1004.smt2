; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21638 () Bool)

(assert start!21638)

(declare-fun b!216763 () Bool)

(declare-fun b_free!5775 () Bool)

(declare-fun b_next!5775 () Bool)

(assert (=> b!216763 (= b_free!5775 (not b_next!5775))))

(declare-fun tp!20459 () Bool)

(declare-fun b_and!12683 () Bool)

(assert (=> b!216763 (= tp!20459 b_and!12683)))

(declare-fun b!216755 () Bool)

(declare-fun res!106062 () Bool)

(declare-fun e!141029 () Bool)

(assert (=> b!216755 (=> (not res!106062) (not e!141029))))

(declare-datatypes ((V!7163 0))(
  ( (V!7164 (val!2863 Int)) )
))
(declare-datatypes ((ValueCell!2475 0))(
  ( (ValueCellFull!2475 (v!4877 V!7163)) (EmptyCell!2475) )
))
(declare-datatypes ((array!10512 0))(
  ( (array!10513 (arr!4977 (Array (_ BitVec 32) ValueCell!2475)) (size!5309 (_ BitVec 32))) )
))
(declare-datatypes ((array!10514 0))(
  ( (array!10515 (arr!4978 (Array (_ BitVec 32) (_ BitVec 64))) (size!5310 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2850 0))(
  ( (LongMapFixedSize!2851 (defaultEntry!4075 Int) (mask!9818 (_ BitVec 32)) (extraKeys!3812 (_ BitVec 32)) (zeroValue!3916 V!7163) (minValue!3916 V!7163) (_size!1474 (_ BitVec 32)) (_keys!6124 array!10514) (_values!4058 array!10512) (_vacant!1474 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2850)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10514 (_ BitVec 32)) Bool)

(assert (=> b!216755 (= res!106062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6124 thiss!1504) (mask!9818 thiss!1504)))))

(declare-fun b!216756 () Bool)

(declare-fun e!141030 () Bool)

(declare-fun tp_is_empty!5637 () Bool)

(assert (=> b!216756 (= e!141030 tp_is_empty!5637)))

(declare-fun b!216757 () Bool)

(assert (=> b!216757 (= e!141029 false)))

(declare-fun lt!111252 () Bool)

(declare-datatypes ((List!3184 0))(
  ( (Nil!3181) (Cons!3180 (h!3827 (_ BitVec 64)) (t!8147 List!3184)) )
))
(declare-fun arrayNoDuplicates!0 (array!10514 (_ BitVec 32) List!3184) Bool)

(assert (=> b!216757 (= lt!111252 (arrayNoDuplicates!0 (_keys!6124 thiss!1504) #b00000000000000000000000000000000 Nil!3181))))

(declare-fun b!216758 () Bool)

(declare-fun res!106060 () Bool)

(assert (=> b!216758 (=> (not res!106060) (not e!141029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216758 (= res!106060 (validMask!0 (mask!9818 thiss!1504)))))

(declare-fun res!106058 () Bool)

(declare-fun e!141027 () Bool)

(assert (=> start!21638 (=> (not res!106058) (not e!141027))))

(declare-fun valid!1150 (LongMapFixedSize!2850) Bool)

(assert (=> start!21638 (= res!106058 (valid!1150 thiss!1504))))

(assert (=> start!21638 e!141027))

(declare-fun e!141031 () Bool)

(assert (=> start!21638 e!141031))

(assert (=> start!21638 true))

(declare-fun b!216759 () Bool)

(declare-fun e!141032 () Bool)

(declare-fun mapRes!9618 () Bool)

(assert (=> b!216759 (= e!141032 (and e!141030 mapRes!9618))))

(declare-fun condMapEmpty!9618 () Bool)

(declare-fun mapDefault!9618 () ValueCell!2475)

(assert (=> b!216759 (= condMapEmpty!9618 (= (arr!4977 (_values!4058 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2475)) mapDefault!9618)))))

(declare-fun b!216760 () Bool)

(declare-fun e!141033 () Bool)

(assert (=> b!216760 (= e!141033 tp_is_empty!5637)))

(declare-fun b!216761 () Bool)

(assert (=> b!216761 (= e!141027 e!141029)))

(declare-fun res!106059 () Bool)

(assert (=> b!216761 (=> (not res!106059) (not e!141029))))

(declare-datatypes ((SeekEntryResult!762 0))(
  ( (MissingZero!762 (index!5218 (_ BitVec 32))) (Found!762 (index!5219 (_ BitVec 32))) (Intermediate!762 (undefined!1574 Bool) (index!5220 (_ BitVec 32)) (x!22682 (_ BitVec 32))) (Undefined!762) (MissingVacant!762 (index!5221 (_ BitVec 32))) )
))
(declare-fun lt!111253 () SeekEntryResult!762)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216761 (= res!106059 (or (= lt!111253 (MissingZero!762 index!297)) (= lt!111253 (MissingVacant!762 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10514 (_ BitVec 32)) SeekEntryResult!762)

(assert (=> b!216761 (= lt!111253 (seekEntryOrOpen!0 key!932 (_keys!6124 thiss!1504) (mask!9818 thiss!1504)))))

(declare-fun b!216762 () Bool)

(declare-fun res!106061 () Bool)

(assert (=> b!216762 (=> (not res!106061) (not e!141029))))

(declare-datatypes ((tuple2!4256 0))(
  ( (tuple2!4257 (_1!2138 (_ BitVec 64)) (_2!2138 V!7163)) )
))
(declare-datatypes ((List!3185 0))(
  ( (Nil!3182) (Cons!3181 (h!3828 tuple2!4256) (t!8148 List!3185)) )
))
(declare-datatypes ((ListLongMap!3183 0))(
  ( (ListLongMap!3184 (toList!1607 List!3185)) )
))
(declare-fun contains!1442 (ListLongMap!3183 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1130 (array!10514 array!10512 (_ BitVec 32) (_ BitVec 32) V!7163 V!7163 (_ BitVec 32) Int) ListLongMap!3183)

(assert (=> b!216762 (= res!106061 (contains!1442 (getCurrentListMap!1130 (_keys!6124 thiss!1504) (_values!4058 thiss!1504) (mask!9818 thiss!1504) (extraKeys!3812 thiss!1504) (zeroValue!3916 thiss!1504) (minValue!3916 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4075 thiss!1504)) key!932))))

(declare-fun array_inv!3281 (array!10514) Bool)

(declare-fun array_inv!3282 (array!10512) Bool)

(assert (=> b!216763 (= e!141031 (and tp!20459 tp_is_empty!5637 (array_inv!3281 (_keys!6124 thiss!1504)) (array_inv!3282 (_values!4058 thiss!1504)) e!141032))))

(declare-fun b!216764 () Bool)

(declare-fun res!106057 () Bool)

(assert (=> b!216764 (=> (not res!106057) (not e!141027))))

(assert (=> b!216764 (= res!106057 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9618 () Bool)

(declare-fun tp!20460 () Bool)

(assert (=> mapNonEmpty!9618 (= mapRes!9618 (and tp!20460 e!141033))))

(declare-fun mapValue!9618 () ValueCell!2475)

(declare-fun mapKey!9618 () (_ BitVec 32))

(declare-fun mapRest!9618 () (Array (_ BitVec 32) ValueCell!2475))

(assert (=> mapNonEmpty!9618 (= (arr!4977 (_values!4058 thiss!1504)) (store mapRest!9618 mapKey!9618 mapValue!9618))))

(declare-fun b!216765 () Bool)

(declare-fun res!106056 () Bool)

(assert (=> b!216765 (=> (not res!106056) (not e!141029))))

(assert (=> b!216765 (= res!106056 (and (= (size!5309 (_values!4058 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9818 thiss!1504))) (= (size!5310 (_keys!6124 thiss!1504)) (size!5309 (_values!4058 thiss!1504))) (bvsge (mask!9818 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3812 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3812 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9618 () Bool)

(assert (=> mapIsEmpty!9618 mapRes!9618))

(assert (= (and start!21638 res!106058) b!216764))

(assert (= (and b!216764 res!106057) b!216761))

(assert (= (and b!216761 res!106059) b!216762))

(assert (= (and b!216762 res!106061) b!216758))

(assert (= (and b!216758 res!106060) b!216765))

(assert (= (and b!216765 res!106056) b!216755))

(assert (= (and b!216755 res!106062) b!216757))

(assert (= (and b!216759 condMapEmpty!9618) mapIsEmpty!9618))

(assert (= (and b!216759 (not condMapEmpty!9618)) mapNonEmpty!9618))

(get-info :version)

(assert (= (and mapNonEmpty!9618 ((_ is ValueCellFull!2475) mapValue!9618)) b!216760))

(assert (= (and b!216759 ((_ is ValueCellFull!2475) mapDefault!9618)) b!216756))

(assert (= b!216763 b!216759))

(assert (= start!21638 b!216763))

(declare-fun m!243347 () Bool)

(assert (=> b!216761 m!243347))

(declare-fun m!243349 () Bool)

(assert (=> b!216758 m!243349))

(declare-fun m!243351 () Bool)

(assert (=> mapNonEmpty!9618 m!243351))

(declare-fun m!243353 () Bool)

(assert (=> b!216763 m!243353))

(declare-fun m!243355 () Bool)

(assert (=> b!216763 m!243355))

(declare-fun m!243357 () Bool)

(assert (=> b!216755 m!243357))

(declare-fun m!243359 () Bool)

(assert (=> b!216757 m!243359))

(declare-fun m!243361 () Bool)

(assert (=> start!21638 m!243361))

(declare-fun m!243363 () Bool)

(assert (=> b!216762 m!243363))

(assert (=> b!216762 m!243363))

(declare-fun m!243365 () Bool)

(assert (=> b!216762 m!243365))

(check-sat (not b!216763) b_and!12683 (not start!21638) (not b!216755) (not mapNonEmpty!9618) (not b!216757) (not b!216761) (not b!216758) (not b_next!5775) (not b!216762) tp_is_empty!5637)
(check-sat b_and!12683 (not b_next!5775))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22914 () Bool)

(assert start!22914)

(declare-fun b!238527 () Bool)

(declare-fun b_free!6405 () Bool)

(declare-fun b_next!6405 () Bool)

(assert (=> b!238527 (= b_free!6405 (not b_next!6405))))

(declare-fun tp!22418 () Bool)

(declare-fun b_and!13389 () Bool)

(assert (=> b!238527 (= tp!22418 b_and!13389)))

(declare-fun b!238521 () Bool)

(declare-fun res!116908 () Bool)

(declare-fun e!154874 () Bool)

(assert (=> b!238521 (=> (not res!116908) (not e!154874))))

(declare-datatypes ((V!8003 0))(
  ( (V!8004 (val!3178 Int)) )
))
(declare-datatypes ((ValueCell!2790 0))(
  ( (ValueCellFull!2790 (v!5212 V!8003)) (EmptyCell!2790) )
))
(declare-datatypes ((array!11812 0))(
  ( (array!11813 (arr!5607 (Array (_ BitVec 32) ValueCell!2790)) (size!5948 (_ BitVec 32))) )
))
(declare-datatypes ((array!11814 0))(
  ( (array!11815 (arr!5608 (Array (_ BitVec 32) (_ BitVec 64))) (size!5949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3480 0))(
  ( (LongMapFixedSize!3481 (defaultEntry!4425 Int) (mask!10461 (_ BitVec 32)) (extraKeys!4162 (_ BitVec 32)) (zeroValue!4266 V!8003) (minValue!4266 V!8003) (_size!1789 (_ BitVec 32)) (_keys!6527 array!11814) (_values!4408 array!11812) (_vacant!1789 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3480)

(assert (=> b!238521 (= res!116908 (and (= (size!5948 (_values!4408 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10461 thiss!1504))) (= (size!5949 (_keys!6527 thiss!1504)) (size!5948 (_values!4408 thiss!1504))) (bvsge (mask!10461 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4162 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4162 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!238522 () Bool)

(assert (=> b!238522 (= e!154874 false)))

(declare-fun lt!120636 () Bool)

(declare-datatypes ((List!3603 0))(
  ( (Nil!3600) (Cons!3599 (h!4255 (_ BitVec 64)) (t!8606 List!3603)) )
))
(declare-fun arrayNoDuplicates!0 (array!11814 (_ BitVec 32) List!3603) Bool)

(assert (=> b!238522 (= lt!120636 (arrayNoDuplicates!0 (_keys!6527 thiss!1504) #b00000000000000000000000000000000 Nil!3600))))

(declare-fun b!238523 () Bool)

(declare-fun e!154868 () Bool)

(declare-fun tp_is_empty!6267 () Bool)

(assert (=> b!238523 (= e!154868 tp_is_empty!6267)))

(declare-fun res!116903 () Bool)

(declare-fun e!154870 () Bool)

(assert (=> start!22914 (=> (not res!116903) (not e!154870))))

(declare-fun valid!1366 (LongMapFixedSize!3480) Bool)

(assert (=> start!22914 (= res!116903 (valid!1366 thiss!1504))))

(assert (=> start!22914 e!154870))

(declare-fun e!154871 () Bool)

(assert (=> start!22914 e!154871))

(assert (=> start!22914 true))

(declare-fun b!238524 () Bool)

(declare-fun res!116905 () Bool)

(assert (=> b!238524 (=> (not res!116905) (not e!154874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11814 (_ BitVec 32)) Bool)

(assert (=> b!238524 (= res!116905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6527 thiss!1504) (mask!10461 thiss!1504)))))

(declare-fun b!238525 () Bool)

(assert (=> b!238525 (= e!154870 e!154874)))

(declare-fun res!116904 () Bool)

(assert (=> b!238525 (=> (not res!116904) (not e!154874))))

(declare-datatypes ((SeekEntryResult!1029 0))(
  ( (MissingZero!1029 (index!6286 (_ BitVec 32))) (Found!1029 (index!6287 (_ BitVec 32))) (Intermediate!1029 (undefined!1841 Bool) (index!6288 (_ BitVec 32)) (x!24061 (_ BitVec 32))) (Undefined!1029) (MissingVacant!1029 (index!6289 (_ BitVec 32))) )
))
(declare-fun lt!120637 () SeekEntryResult!1029)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238525 (= res!116904 (or (= lt!120637 (MissingZero!1029 index!297)) (= lt!120637 (MissingVacant!1029 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11814 (_ BitVec 32)) SeekEntryResult!1029)

(assert (=> b!238525 (= lt!120637 (seekEntryOrOpen!0 key!932 (_keys!6527 thiss!1504) (mask!10461 thiss!1504)))))

(declare-fun mapIsEmpty!10632 () Bool)

(declare-fun mapRes!10632 () Bool)

(assert (=> mapIsEmpty!10632 mapRes!10632))

(declare-fun b!238526 () Bool)

(declare-fun res!116907 () Bool)

(assert (=> b!238526 (=> (not res!116907) (not e!154874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238526 (= res!116907 (validMask!0 (mask!10461 thiss!1504)))))

(declare-fun e!154873 () Bool)

(declare-fun array_inv!3699 (array!11814) Bool)

(declare-fun array_inv!3700 (array!11812) Bool)

(assert (=> b!238527 (= e!154871 (and tp!22418 tp_is_empty!6267 (array_inv!3699 (_keys!6527 thiss!1504)) (array_inv!3700 (_values!4408 thiss!1504)) e!154873))))

(declare-fun b!238528 () Bool)

(declare-fun e!154869 () Bool)

(assert (=> b!238528 (= e!154869 tp_is_empty!6267)))

(declare-fun b!238529 () Bool)

(declare-fun res!116909 () Bool)

(assert (=> b!238529 (=> (not res!116909) (not e!154874))))

(declare-datatypes ((tuple2!4682 0))(
  ( (tuple2!4683 (_1!2351 (_ BitVec 64)) (_2!2351 V!8003)) )
))
(declare-datatypes ((List!3604 0))(
  ( (Nil!3601) (Cons!3600 (h!4256 tuple2!4682) (t!8607 List!3604)) )
))
(declare-datatypes ((ListLongMap!3609 0))(
  ( (ListLongMap!3610 (toList!1820 List!3604)) )
))
(declare-fun contains!1702 (ListLongMap!3609 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1343 (array!11814 array!11812 (_ BitVec 32) (_ BitVec 32) V!8003 V!8003 (_ BitVec 32) Int) ListLongMap!3609)

(assert (=> b!238529 (= res!116909 (not (contains!1702 (getCurrentListMap!1343 (_keys!6527 thiss!1504) (_values!4408 thiss!1504) (mask!10461 thiss!1504) (extraKeys!4162 thiss!1504) (zeroValue!4266 thiss!1504) (minValue!4266 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4425 thiss!1504)) key!932)))))

(declare-fun b!238530 () Bool)

(assert (=> b!238530 (= e!154873 (and e!154869 mapRes!10632))))

(declare-fun condMapEmpty!10632 () Bool)

(declare-fun mapDefault!10632 () ValueCell!2790)

(assert (=> b!238530 (= condMapEmpty!10632 (= (arr!5607 (_values!4408 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2790)) mapDefault!10632)))))

(declare-fun mapNonEmpty!10632 () Bool)

(declare-fun tp!22419 () Bool)

(assert (=> mapNonEmpty!10632 (= mapRes!10632 (and tp!22419 e!154868))))

(declare-fun mapRest!10632 () (Array (_ BitVec 32) ValueCell!2790))

(declare-fun mapKey!10632 () (_ BitVec 32))

(declare-fun mapValue!10632 () ValueCell!2790)

(assert (=> mapNonEmpty!10632 (= (arr!5607 (_values!4408 thiss!1504)) (store mapRest!10632 mapKey!10632 mapValue!10632))))

(declare-fun b!238531 () Bool)

(declare-fun res!116906 () Bool)

(assert (=> b!238531 (=> (not res!116906) (not e!154870))))

(assert (=> b!238531 (= res!116906 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22914 res!116903) b!238531))

(assert (= (and b!238531 res!116906) b!238525))

(assert (= (and b!238525 res!116904) b!238529))

(assert (= (and b!238529 res!116909) b!238526))

(assert (= (and b!238526 res!116907) b!238521))

(assert (= (and b!238521 res!116908) b!238524))

(assert (= (and b!238524 res!116905) b!238522))

(assert (= (and b!238530 condMapEmpty!10632) mapIsEmpty!10632))

(assert (= (and b!238530 (not condMapEmpty!10632)) mapNonEmpty!10632))

(get-info :version)

(assert (= (and mapNonEmpty!10632 ((_ is ValueCellFull!2790) mapValue!10632)) b!238523))

(assert (= (and b!238530 ((_ is ValueCellFull!2790) mapDefault!10632)) b!238528))

(assert (= b!238527 b!238530))

(assert (= start!22914 b!238527))

(declare-fun m!259047 () Bool)

(assert (=> mapNonEmpty!10632 m!259047))

(declare-fun m!259049 () Bool)

(assert (=> b!238522 m!259049))

(declare-fun m!259051 () Bool)

(assert (=> b!238527 m!259051))

(declare-fun m!259053 () Bool)

(assert (=> b!238527 m!259053))

(declare-fun m!259055 () Bool)

(assert (=> b!238525 m!259055))

(declare-fun m!259057 () Bool)

(assert (=> b!238529 m!259057))

(assert (=> b!238529 m!259057))

(declare-fun m!259059 () Bool)

(assert (=> b!238529 m!259059))

(declare-fun m!259061 () Bool)

(assert (=> b!238524 m!259061))

(declare-fun m!259063 () Bool)

(assert (=> start!22914 m!259063))

(declare-fun m!259065 () Bool)

(assert (=> b!238526 m!259065))

(check-sat (not start!22914) b_and!13389 (not mapNonEmpty!10632) tp_is_empty!6267 (not b!238522) (not b!238527) (not b!238524) (not b!238529) (not b!238525) (not b!238526) (not b_next!6405))
(check-sat b_and!13389 (not b_next!6405))

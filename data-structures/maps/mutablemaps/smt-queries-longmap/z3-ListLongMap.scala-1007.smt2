; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21656 () Bool)

(assert start!21656)

(declare-fun b!217056 () Bool)

(declare-fun b_free!5793 () Bool)

(declare-fun b_next!5793 () Bool)

(assert (=> b!217056 (= b_free!5793 (not b_next!5793))))

(declare-fun tp!20513 () Bool)

(declare-fun b_and!12701 () Bool)

(assert (=> b!217056 (= tp!20513 b_and!12701)))

(declare-fun mapIsEmpty!9645 () Bool)

(declare-fun mapRes!9645 () Bool)

(assert (=> mapIsEmpty!9645 mapRes!9645))

(declare-fun b!217052 () Bool)

(declare-fun res!106251 () Bool)

(declare-fun e!141221 () Bool)

(assert (=> b!217052 (=> (not res!106251) (not e!141221))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217052 (= res!106251 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217053 () Bool)

(declare-fun e!141216 () Bool)

(declare-fun tp_is_empty!5655 () Bool)

(assert (=> b!217053 (= e!141216 tp_is_empty!5655)))

(declare-fun b!217054 () Bool)

(declare-fun res!106250 () Bool)

(declare-fun e!141217 () Bool)

(assert (=> b!217054 (=> (not res!106250) (not e!141217))))

(declare-datatypes ((V!7187 0))(
  ( (V!7188 (val!2872 Int)) )
))
(declare-datatypes ((ValueCell!2484 0))(
  ( (ValueCellFull!2484 (v!4886 V!7187)) (EmptyCell!2484) )
))
(declare-datatypes ((array!10548 0))(
  ( (array!10549 (arr!4995 (Array (_ BitVec 32) ValueCell!2484)) (size!5327 (_ BitVec 32))) )
))
(declare-datatypes ((array!10550 0))(
  ( (array!10551 (arr!4996 (Array (_ BitVec 32) (_ BitVec 64))) (size!5328 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2868 0))(
  ( (LongMapFixedSize!2869 (defaultEntry!4084 Int) (mask!9833 (_ BitVec 32)) (extraKeys!3821 (_ BitVec 32)) (zeroValue!3925 V!7187) (minValue!3925 V!7187) (_size!1483 (_ BitVec 32)) (_keys!6133 array!10550) (_values!4067 array!10548) (_vacant!1483 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2868)

(assert (=> b!217054 (= res!106250 (and (= (size!5327 (_values!4067 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9833 thiss!1504))) (= (size!5328 (_keys!6133 thiss!1504)) (size!5327 (_values!4067 thiss!1504))) (bvsge (mask!9833 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3821 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3821 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217055 () Bool)

(assert (=> b!217055 (= e!141221 e!141217)))

(declare-fun res!106246 () Bool)

(assert (=> b!217055 (=> (not res!106246) (not e!141217))))

(declare-datatypes ((SeekEntryResult!770 0))(
  ( (MissingZero!770 (index!5250 (_ BitVec 32))) (Found!770 (index!5251 (_ BitVec 32))) (Intermediate!770 (undefined!1582 Bool) (index!5252 (_ BitVec 32)) (x!22714 (_ BitVec 32))) (Undefined!770) (MissingVacant!770 (index!5253 (_ BitVec 32))) )
))
(declare-fun lt!111307 () SeekEntryResult!770)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217055 (= res!106246 (or (= lt!111307 (MissingZero!770 index!297)) (= lt!111307 (MissingVacant!770 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10550 (_ BitVec 32)) SeekEntryResult!770)

(assert (=> b!217055 (= lt!111307 (seekEntryOrOpen!0 key!932 (_keys!6133 thiss!1504) (mask!9833 thiss!1504)))))

(declare-fun e!141218 () Bool)

(declare-fun e!141219 () Bool)

(declare-fun array_inv!3297 (array!10550) Bool)

(declare-fun array_inv!3298 (array!10548) Bool)

(assert (=> b!217056 (= e!141218 (and tp!20513 tp_is_empty!5655 (array_inv!3297 (_keys!6133 thiss!1504)) (array_inv!3298 (_values!4067 thiss!1504)) e!141219))))

(declare-fun b!217057 () Bool)

(declare-fun res!106249 () Bool)

(assert (=> b!217057 (=> (not res!106249) (not e!141217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217057 (= res!106249 (validMask!0 (mask!9833 thiss!1504)))))

(declare-fun res!106247 () Bool)

(assert (=> start!21656 (=> (not res!106247) (not e!141221))))

(declare-fun valid!1158 (LongMapFixedSize!2868) Bool)

(assert (=> start!21656 (= res!106247 (valid!1158 thiss!1504))))

(assert (=> start!21656 e!141221))

(assert (=> start!21656 e!141218))

(assert (=> start!21656 true))

(declare-fun b!217058 () Bool)

(declare-fun res!106245 () Bool)

(assert (=> b!217058 (=> (not res!106245) (not e!141217))))

(declare-datatypes ((tuple2!4270 0))(
  ( (tuple2!4271 (_1!2145 (_ BitVec 64)) (_2!2145 V!7187)) )
))
(declare-datatypes ((List!3197 0))(
  ( (Nil!3194) (Cons!3193 (h!3840 tuple2!4270) (t!8160 List!3197)) )
))
(declare-datatypes ((ListLongMap!3197 0))(
  ( (ListLongMap!3198 (toList!1614 List!3197)) )
))
(declare-fun contains!1449 (ListLongMap!3197 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1137 (array!10550 array!10548 (_ BitVec 32) (_ BitVec 32) V!7187 V!7187 (_ BitVec 32) Int) ListLongMap!3197)

(assert (=> b!217058 (= res!106245 (contains!1449 (getCurrentListMap!1137 (_keys!6133 thiss!1504) (_values!4067 thiss!1504) (mask!9833 thiss!1504) (extraKeys!3821 thiss!1504) (zeroValue!3925 thiss!1504) (minValue!3925 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4084 thiss!1504)) key!932))))

(declare-fun b!217059 () Bool)

(assert (=> b!217059 (= e!141217 false)))

(declare-fun lt!111306 () Bool)

(declare-datatypes ((List!3198 0))(
  ( (Nil!3195) (Cons!3194 (h!3841 (_ BitVec 64)) (t!8161 List!3198)) )
))
(declare-fun arrayNoDuplicates!0 (array!10550 (_ BitVec 32) List!3198) Bool)

(assert (=> b!217059 (= lt!111306 (arrayNoDuplicates!0 (_keys!6133 thiss!1504) #b00000000000000000000000000000000 Nil!3195))))

(declare-fun b!217060 () Bool)

(assert (=> b!217060 (= e!141219 (and e!141216 mapRes!9645))))

(declare-fun condMapEmpty!9645 () Bool)

(declare-fun mapDefault!9645 () ValueCell!2484)

(assert (=> b!217060 (= condMapEmpty!9645 (= (arr!4995 (_values!4067 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2484)) mapDefault!9645)))))

(declare-fun mapNonEmpty!9645 () Bool)

(declare-fun tp!20514 () Bool)

(declare-fun e!141222 () Bool)

(assert (=> mapNonEmpty!9645 (= mapRes!9645 (and tp!20514 e!141222))))

(declare-fun mapRest!9645 () (Array (_ BitVec 32) ValueCell!2484))

(declare-fun mapKey!9645 () (_ BitVec 32))

(declare-fun mapValue!9645 () ValueCell!2484)

(assert (=> mapNonEmpty!9645 (= (arr!4995 (_values!4067 thiss!1504)) (store mapRest!9645 mapKey!9645 mapValue!9645))))

(declare-fun b!217061 () Bool)

(assert (=> b!217061 (= e!141222 tp_is_empty!5655)))

(declare-fun b!217062 () Bool)

(declare-fun res!106248 () Bool)

(assert (=> b!217062 (=> (not res!106248) (not e!141217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10550 (_ BitVec 32)) Bool)

(assert (=> b!217062 (= res!106248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6133 thiss!1504) (mask!9833 thiss!1504)))))

(assert (= (and start!21656 res!106247) b!217052))

(assert (= (and b!217052 res!106251) b!217055))

(assert (= (and b!217055 res!106246) b!217058))

(assert (= (and b!217058 res!106245) b!217057))

(assert (= (and b!217057 res!106249) b!217054))

(assert (= (and b!217054 res!106250) b!217062))

(assert (= (and b!217062 res!106248) b!217059))

(assert (= (and b!217060 condMapEmpty!9645) mapIsEmpty!9645))

(assert (= (and b!217060 (not condMapEmpty!9645)) mapNonEmpty!9645))

(get-info :version)

(assert (= (and mapNonEmpty!9645 ((_ is ValueCellFull!2484) mapValue!9645)) b!217061))

(assert (= (and b!217060 ((_ is ValueCellFull!2484) mapDefault!9645)) b!217053))

(assert (= b!217056 b!217060))

(assert (= start!21656 b!217056))

(declare-fun m!243527 () Bool)

(assert (=> b!217055 m!243527))

(declare-fun m!243529 () Bool)

(assert (=> b!217059 m!243529))

(declare-fun m!243531 () Bool)

(assert (=> mapNonEmpty!9645 m!243531))

(declare-fun m!243533 () Bool)

(assert (=> b!217056 m!243533))

(declare-fun m!243535 () Bool)

(assert (=> b!217056 m!243535))

(declare-fun m!243537 () Bool)

(assert (=> start!21656 m!243537))

(declare-fun m!243539 () Bool)

(assert (=> b!217062 m!243539))

(declare-fun m!243541 () Bool)

(assert (=> b!217058 m!243541))

(assert (=> b!217058 m!243541))

(declare-fun m!243543 () Bool)

(assert (=> b!217058 m!243543))

(declare-fun m!243545 () Bool)

(assert (=> b!217057 m!243545))

(check-sat (not b!217056) (not b!217062) (not start!21656) b_and!12701 (not b!217057) (not b!217059) tp_is_empty!5655 (not b!217055) (not b_next!5793) (not b!217058) (not mapNonEmpty!9645))
(check-sat b_and!12701 (not b_next!5793))

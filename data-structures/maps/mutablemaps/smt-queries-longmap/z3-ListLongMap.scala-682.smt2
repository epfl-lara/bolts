; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16610 () Bool)

(assert start!16610)

(declare-fun b!165492 () Bool)

(declare-fun b_free!3903 () Bool)

(declare-fun b_next!3903 () Bool)

(assert (=> b!165492 (= b_free!3903 (not b_next!3903))))

(declare-fun tp!14309 () Bool)

(declare-fun b_and!10335 () Bool)

(assert (=> b!165492 (= tp!14309 b_and!10335)))

(declare-fun res!78546 () Bool)

(declare-fun e!108568 () Bool)

(assert (=> start!16610 (=> (not res!78546) (not e!108568))))

(declare-datatypes ((V!4587 0))(
  ( (V!4588 (val!1897 Int)) )
))
(declare-datatypes ((ValueCell!1509 0))(
  ( (ValueCellFull!1509 (v!3758 V!4587)) (EmptyCell!1509) )
))
(declare-datatypes ((array!6506 0))(
  ( (array!6507 (arr!3088 (Array (_ BitVec 32) (_ BitVec 64))) (size!3376 (_ BitVec 32))) )
))
(declare-datatypes ((array!6508 0))(
  ( (array!6509 (arr!3089 (Array (_ BitVec 32) ValueCell!1509)) (size!3377 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1926 0))(
  ( (LongMapFixedSize!1927 (defaultEntry!3405 Int) (mask!8118 (_ BitVec 32)) (extraKeys!3146 (_ BitVec 32)) (zeroValue!3248 V!4587) (minValue!3248 V!4587) (_size!1012 (_ BitVec 32)) (_keys!5230 array!6506) (_values!3388 array!6508) (_vacant!1012 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1926)

(declare-fun valid!844 (LongMapFixedSize!1926) Bool)

(assert (=> start!16610 (= res!78546 (valid!844 thiss!1248))))

(assert (=> start!16610 e!108568))

(declare-fun e!108569 () Bool)

(assert (=> start!16610 e!108569))

(assert (=> start!16610 true))

(declare-fun tp_is_empty!3705 () Bool)

(declare-fun e!108565 () Bool)

(declare-fun array_inv!1975 (array!6506) Bool)

(declare-fun array_inv!1976 (array!6508) Bool)

(assert (=> b!165492 (= e!108569 (and tp!14309 tp_is_empty!3705 (array_inv!1975 (_keys!5230 thiss!1248)) (array_inv!1976 (_values!3388 thiss!1248)) e!108565))))

(declare-fun b!165493 () Bool)

(declare-fun e!108570 () Bool)

(declare-fun mapRes!6276 () Bool)

(assert (=> b!165493 (= e!108565 (and e!108570 mapRes!6276))))

(declare-fun condMapEmpty!6276 () Bool)

(declare-fun mapDefault!6276 () ValueCell!1509)

(assert (=> b!165493 (= condMapEmpty!6276 (= (arr!3089 (_values!3388 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1509)) mapDefault!6276)))))

(declare-fun b!165494 () Bool)

(declare-fun e!108566 () Bool)

(assert (=> b!165494 (= e!108566 false)))

(declare-fun lt!83110 () Bool)

(declare-datatypes ((List!2078 0))(
  ( (Nil!2075) (Cons!2074 (h!2691 (_ BitVec 64)) (t!6888 List!2078)) )
))
(declare-fun arrayNoDuplicates!0 (array!6506 (_ BitVec 32) List!2078) Bool)

(assert (=> b!165494 (= lt!83110 (arrayNoDuplicates!0 (_keys!5230 thiss!1248) #b00000000000000000000000000000000 Nil!2075))))

(declare-fun b!165495 () Bool)

(assert (=> b!165495 (= e!108568 e!108566)))

(declare-fun res!78551 () Bool)

(assert (=> b!165495 (=> (not res!78551) (not e!108566))))

(declare-datatypes ((SeekEntryResult!448 0))(
  ( (MissingZero!448 (index!3960 (_ BitVec 32))) (Found!448 (index!3961 (_ BitVec 32))) (Intermediate!448 (undefined!1260 Bool) (index!3962 (_ BitVec 32)) (x!18356 (_ BitVec 32))) (Undefined!448) (MissingVacant!448 (index!3963 (_ BitVec 32))) )
))
(declare-fun lt!83111 () SeekEntryResult!448)

(get-info :version)

(assert (=> b!165495 (= res!78551 (and (not ((_ is Undefined!448) lt!83111)) (not ((_ is MissingVacant!448) lt!83111)) (not ((_ is MissingZero!448) lt!83111)) ((_ is Found!448) lt!83111)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6506 (_ BitVec 32)) SeekEntryResult!448)

(assert (=> b!165495 (= lt!83111 (seekEntryOrOpen!0 key!828 (_keys!5230 thiss!1248) (mask!8118 thiss!1248)))))

(declare-fun b!165496 () Bool)

(declare-fun res!78548 () Bool)

(assert (=> b!165496 (=> (not res!78548) (not e!108566))))

(declare-datatypes ((tuple2!3070 0))(
  ( (tuple2!3071 (_1!1545 (_ BitVec 64)) (_2!1545 V!4587)) )
))
(declare-datatypes ((List!2079 0))(
  ( (Nil!2076) (Cons!2075 (h!2692 tuple2!3070) (t!6889 List!2079)) )
))
(declare-datatypes ((ListLongMap!2039 0))(
  ( (ListLongMap!2040 (toList!1035 List!2079)) )
))
(declare-fun contains!1071 (ListLongMap!2039 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!688 (array!6506 array!6508 (_ BitVec 32) (_ BitVec 32) V!4587 V!4587 (_ BitVec 32) Int) ListLongMap!2039)

(assert (=> b!165496 (= res!78548 (not (contains!1071 (getCurrentListMap!688 (_keys!5230 thiss!1248) (_values!3388 thiss!1248) (mask!8118 thiss!1248) (extraKeys!3146 thiss!1248) (zeroValue!3248 thiss!1248) (minValue!3248 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3405 thiss!1248)) key!828)))))

(declare-fun b!165497 () Bool)

(declare-fun res!78550 () Bool)

(assert (=> b!165497 (=> (not res!78550) (not e!108568))))

(assert (=> b!165497 (= res!78550 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165498 () Bool)

(declare-fun res!78552 () Bool)

(assert (=> b!165498 (=> (not res!78552) (not e!108566))))

(assert (=> b!165498 (= res!78552 (and (= (size!3377 (_values!3388 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8118 thiss!1248))) (= (size!3376 (_keys!5230 thiss!1248)) (size!3377 (_values!3388 thiss!1248))) (bvsge (mask!8118 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3146 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3146 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165499 () Bool)

(declare-fun res!78547 () Bool)

(assert (=> b!165499 (=> (not res!78547) (not e!108566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165499 (= res!78547 (validMask!0 (mask!8118 thiss!1248)))))

(declare-fun b!165500 () Bool)

(declare-fun e!108567 () Bool)

(assert (=> b!165500 (= e!108567 tp_is_empty!3705)))

(declare-fun mapNonEmpty!6276 () Bool)

(declare-fun tp!14310 () Bool)

(assert (=> mapNonEmpty!6276 (= mapRes!6276 (and tp!14310 e!108567))))

(declare-fun mapKey!6276 () (_ BitVec 32))

(declare-fun mapRest!6276 () (Array (_ BitVec 32) ValueCell!1509))

(declare-fun mapValue!6276 () ValueCell!1509)

(assert (=> mapNonEmpty!6276 (= (arr!3089 (_values!3388 thiss!1248)) (store mapRest!6276 mapKey!6276 mapValue!6276))))

(declare-fun b!165501 () Bool)

(assert (=> b!165501 (= e!108570 tp_is_empty!3705)))

(declare-fun mapIsEmpty!6276 () Bool)

(assert (=> mapIsEmpty!6276 mapRes!6276))

(declare-fun b!165502 () Bool)

(declare-fun res!78549 () Bool)

(assert (=> b!165502 (=> (not res!78549) (not e!108566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6506 (_ BitVec 32)) Bool)

(assert (=> b!165502 (= res!78549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5230 thiss!1248) (mask!8118 thiss!1248)))))

(assert (= (and start!16610 res!78546) b!165497))

(assert (= (and b!165497 res!78550) b!165495))

(assert (= (and b!165495 res!78551) b!165496))

(assert (= (and b!165496 res!78548) b!165499))

(assert (= (and b!165499 res!78547) b!165498))

(assert (= (and b!165498 res!78552) b!165502))

(assert (= (and b!165502 res!78549) b!165494))

(assert (= (and b!165493 condMapEmpty!6276) mapIsEmpty!6276))

(assert (= (and b!165493 (not condMapEmpty!6276)) mapNonEmpty!6276))

(assert (= (and mapNonEmpty!6276 ((_ is ValueCellFull!1509) mapValue!6276)) b!165500))

(assert (= (and b!165493 ((_ is ValueCellFull!1509) mapDefault!6276)) b!165501))

(assert (= b!165492 b!165493))

(assert (= start!16610 b!165492))

(declare-fun m!195289 () Bool)

(assert (=> mapNonEmpty!6276 m!195289))

(declare-fun m!195291 () Bool)

(assert (=> b!165492 m!195291))

(declare-fun m!195293 () Bool)

(assert (=> b!165492 m!195293))

(declare-fun m!195295 () Bool)

(assert (=> b!165496 m!195295))

(assert (=> b!165496 m!195295))

(declare-fun m!195297 () Bool)

(assert (=> b!165496 m!195297))

(declare-fun m!195299 () Bool)

(assert (=> b!165499 m!195299))

(declare-fun m!195301 () Bool)

(assert (=> start!16610 m!195301))

(declare-fun m!195303 () Bool)

(assert (=> b!165502 m!195303))

(declare-fun m!195305 () Bool)

(assert (=> b!165494 m!195305))

(declare-fun m!195307 () Bool)

(assert (=> b!165495 m!195307))

(check-sat (not b!165494) (not mapNonEmpty!6276) tp_is_empty!3705 (not start!16610) (not b!165502) (not b!165499) (not b!165495) b_and!10335 (not b!165492) (not b!165496) (not b_next!3903))
(check-sat b_and!10335 (not b_next!3903))

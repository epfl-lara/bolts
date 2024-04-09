; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16622 () Bool)

(assert start!16622)

(declare-fun b!165700 () Bool)

(declare-fun b_free!3915 () Bool)

(declare-fun b_next!3915 () Bool)

(assert (=> b!165700 (= b_free!3915 (not b_next!3915))))

(declare-fun tp!14345 () Bool)

(declare-fun b_and!10347 () Bool)

(assert (=> b!165700 (= tp!14345 b_and!10347)))

(declare-fun b!165690 () Bool)

(declare-fun res!78677 () Bool)

(declare-fun e!108695 () Bool)

(assert (=> b!165690 (=> (not res!78677) (not e!108695))))

(declare-datatypes ((V!4603 0))(
  ( (V!4604 (val!1903 Int)) )
))
(declare-datatypes ((ValueCell!1515 0))(
  ( (ValueCellFull!1515 (v!3764 V!4603)) (EmptyCell!1515) )
))
(declare-datatypes ((array!6530 0))(
  ( (array!6531 (arr!3100 (Array (_ BitVec 32) (_ BitVec 64))) (size!3388 (_ BitVec 32))) )
))
(declare-datatypes ((array!6532 0))(
  ( (array!6533 (arr!3101 (Array (_ BitVec 32) ValueCell!1515)) (size!3389 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1938 0))(
  ( (LongMapFixedSize!1939 (defaultEntry!3411 Int) (mask!8128 (_ BitVec 32)) (extraKeys!3152 (_ BitVec 32)) (zeroValue!3254 V!4603) (minValue!3254 V!4603) (_size!1018 (_ BitVec 32)) (_keys!5236 array!6530) (_values!3394 array!6532) (_vacant!1018 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1938)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6530 (_ BitVec 32)) Bool)

(assert (=> b!165690 (= res!78677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5236 thiss!1248) (mask!8128 thiss!1248)))))

(declare-fun b!165691 () Bool)

(declare-fun res!78675 () Bool)

(assert (=> b!165691 (=> (not res!78675) (not e!108695))))

(assert (=> b!165691 (= res!78675 (and (= (size!3389 (_values!3394 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8128 thiss!1248))) (= (size!3388 (_keys!5236 thiss!1248)) (size!3389 (_values!3394 thiss!1248))) (bvsge (mask!8128 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3152 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3152 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165692 () Bool)

(assert (=> b!165692 (= e!108695 false)))

(declare-fun lt!83146 () Bool)

(declare-datatypes ((List!2086 0))(
  ( (Nil!2083) (Cons!2082 (h!2699 (_ BitVec 64)) (t!6896 List!2086)) )
))
(declare-fun arrayNoDuplicates!0 (array!6530 (_ BitVec 32) List!2086) Bool)

(assert (=> b!165692 (= lt!83146 (arrayNoDuplicates!0 (_keys!5236 thiss!1248) #b00000000000000000000000000000000 Nil!2083))))

(declare-fun b!165694 () Bool)

(declare-fun e!108693 () Bool)

(declare-fun tp_is_empty!3717 () Bool)

(assert (=> b!165694 (= e!108693 tp_is_empty!3717)))

(declare-fun mapNonEmpty!6294 () Bool)

(declare-fun mapRes!6294 () Bool)

(declare-fun tp!14346 () Bool)

(declare-fun e!108692 () Bool)

(assert (=> mapNonEmpty!6294 (= mapRes!6294 (and tp!14346 e!108692))))

(declare-fun mapKey!6294 () (_ BitVec 32))

(declare-fun mapValue!6294 () ValueCell!1515)

(declare-fun mapRest!6294 () (Array (_ BitVec 32) ValueCell!1515))

(assert (=> mapNonEmpty!6294 (= (arr!3101 (_values!3394 thiss!1248)) (store mapRest!6294 mapKey!6294 mapValue!6294))))

(declare-fun b!165695 () Bool)

(declare-fun e!108697 () Bool)

(assert (=> b!165695 (= e!108697 (and e!108693 mapRes!6294))))

(declare-fun condMapEmpty!6294 () Bool)

(declare-fun mapDefault!6294 () ValueCell!1515)

(assert (=> b!165695 (= condMapEmpty!6294 (= (arr!3101 (_values!3394 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1515)) mapDefault!6294)))))

(declare-fun b!165696 () Bool)

(declare-fun res!78673 () Bool)

(assert (=> b!165696 (=> (not res!78673) (not e!108695))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3078 0))(
  ( (tuple2!3079 (_1!1549 (_ BitVec 64)) (_2!1549 V!4603)) )
))
(declare-datatypes ((List!2087 0))(
  ( (Nil!2084) (Cons!2083 (h!2700 tuple2!3078) (t!6897 List!2087)) )
))
(declare-datatypes ((ListLongMap!2047 0))(
  ( (ListLongMap!2048 (toList!1039 List!2087)) )
))
(declare-fun contains!1075 (ListLongMap!2047 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!692 (array!6530 array!6532 (_ BitVec 32) (_ BitVec 32) V!4603 V!4603 (_ BitVec 32) Int) ListLongMap!2047)

(assert (=> b!165696 (= res!78673 (not (contains!1075 (getCurrentListMap!692 (_keys!5236 thiss!1248) (_values!3394 thiss!1248) (mask!8128 thiss!1248) (extraKeys!3152 thiss!1248) (zeroValue!3254 thiss!1248) (minValue!3254 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3411 thiss!1248)) key!828)))))

(declare-fun b!165697 () Bool)

(assert (=> b!165697 (= e!108692 tp_is_empty!3717)))

(declare-fun b!165698 () Bool)

(declare-fun e!108694 () Bool)

(assert (=> b!165698 (= e!108694 e!108695)))

(declare-fun res!78678 () Bool)

(assert (=> b!165698 (=> (not res!78678) (not e!108695))))

(declare-datatypes ((SeekEntryResult!452 0))(
  ( (MissingZero!452 (index!3976 (_ BitVec 32))) (Found!452 (index!3977 (_ BitVec 32))) (Intermediate!452 (undefined!1264 Bool) (index!3978 (_ BitVec 32)) (x!18376 (_ BitVec 32))) (Undefined!452) (MissingVacant!452 (index!3979 (_ BitVec 32))) )
))
(declare-fun lt!83147 () SeekEntryResult!452)

(get-info :version)

(assert (=> b!165698 (= res!78678 (and (not ((_ is Undefined!452) lt!83147)) (not ((_ is MissingVacant!452) lt!83147)) (not ((_ is MissingZero!452) lt!83147)) ((_ is Found!452) lt!83147)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6530 (_ BitVec 32)) SeekEntryResult!452)

(assert (=> b!165698 (= lt!83147 (seekEntryOrOpen!0 key!828 (_keys!5236 thiss!1248) (mask!8128 thiss!1248)))))

(declare-fun b!165699 () Bool)

(declare-fun res!78676 () Bool)

(assert (=> b!165699 (=> (not res!78676) (not e!108694))))

(assert (=> b!165699 (= res!78676 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165693 () Bool)

(declare-fun res!78674 () Bool)

(assert (=> b!165693 (=> (not res!78674) (not e!108695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165693 (= res!78674 (validMask!0 (mask!8128 thiss!1248)))))

(declare-fun res!78672 () Bool)

(assert (=> start!16622 (=> (not res!78672) (not e!108694))))

(declare-fun valid!848 (LongMapFixedSize!1938) Bool)

(assert (=> start!16622 (= res!78672 (valid!848 thiss!1248))))

(assert (=> start!16622 e!108694))

(declare-fun e!108691 () Bool)

(assert (=> start!16622 e!108691))

(assert (=> start!16622 true))

(declare-fun mapIsEmpty!6294 () Bool)

(assert (=> mapIsEmpty!6294 mapRes!6294))

(declare-fun array_inv!1981 (array!6530) Bool)

(declare-fun array_inv!1982 (array!6532) Bool)

(assert (=> b!165700 (= e!108691 (and tp!14345 tp_is_empty!3717 (array_inv!1981 (_keys!5236 thiss!1248)) (array_inv!1982 (_values!3394 thiss!1248)) e!108697))))

(assert (= (and start!16622 res!78672) b!165699))

(assert (= (and b!165699 res!78676) b!165698))

(assert (= (and b!165698 res!78678) b!165696))

(assert (= (and b!165696 res!78673) b!165693))

(assert (= (and b!165693 res!78674) b!165691))

(assert (= (and b!165691 res!78675) b!165690))

(assert (= (and b!165690 res!78677) b!165692))

(assert (= (and b!165695 condMapEmpty!6294) mapIsEmpty!6294))

(assert (= (and b!165695 (not condMapEmpty!6294)) mapNonEmpty!6294))

(assert (= (and mapNonEmpty!6294 ((_ is ValueCellFull!1515) mapValue!6294)) b!165697))

(assert (= (and b!165695 ((_ is ValueCellFull!1515) mapDefault!6294)) b!165694))

(assert (= b!165700 b!165695))

(assert (= start!16622 b!165700))

(declare-fun m!195409 () Bool)

(assert (=> b!165700 m!195409))

(declare-fun m!195411 () Bool)

(assert (=> b!165700 m!195411))

(declare-fun m!195413 () Bool)

(assert (=> b!165692 m!195413))

(declare-fun m!195415 () Bool)

(assert (=> b!165698 m!195415))

(declare-fun m!195417 () Bool)

(assert (=> start!16622 m!195417))

(declare-fun m!195419 () Bool)

(assert (=> b!165690 m!195419))

(declare-fun m!195421 () Bool)

(assert (=> b!165693 m!195421))

(declare-fun m!195423 () Bool)

(assert (=> b!165696 m!195423))

(assert (=> b!165696 m!195423))

(declare-fun m!195425 () Bool)

(assert (=> b!165696 m!195425))

(declare-fun m!195427 () Bool)

(assert (=> mapNonEmpty!6294 m!195427))

(check-sat (not b!165696) (not b_next!3915) (not start!16622) (not b!165700) (not b!165692) b_and!10347 (not b!165698) (not mapNonEmpty!6294) tp_is_empty!3717 (not b!165693) (not b!165690))
(check-sat b_and!10347 (not b_next!3915))

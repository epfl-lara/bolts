; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21634 () Bool)

(assert start!21634)

(declare-fun b!216697 () Bool)

(declare-fun b_free!5771 () Bool)

(declare-fun b_next!5771 () Bool)

(assert (=> b!216697 (= b_free!5771 (not b_next!5771))))

(declare-fun tp!20448 () Bool)

(declare-fun b_and!12679 () Bool)

(assert (=> b!216697 (= tp!20448 b_and!12679)))

(declare-fun b!216689 () Bool)

(declare-fun res!106015 () Bool)

(declare-fun e!140988 () Bool)

(assert (=> b!216689 (=> (not res!106015) (not e!140988))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216689 (= res!106015 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216690 () Bool)

(declare-fun res!106019 () Bool)

(declare-fun e!140991 () Bool)

(assert (=> b!216690 (=> (not res!106019) (not e!140991))))

(declare-datatypes ((V!7157 0))(
  ( (V!7158 (val!2861 Int)) )
))
(declare-datatypes ((ValueCell!2473 0))(
  ( (ValueCellFull!2473 (v!4875 V!7157)) (EmptyCell!2473) )
))
(declare-datatypes ((array!10504 0))(
  ( (array!10505 (arr!4973 (Array (_ BitVec 32) ValueCell!2473)) (size!5305 (_ BitVec 32))) )
))
(declare-datatypes ((array!10506 0))(
  ( (array!10507 (arr!4974 (Array (_ BitVec 32) (_ BitVec 64))) (size!5306 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2846 0))(
  ( (LongMapFixedSize!2847 (defaultEntry!4073 Int) (mask!9814 (_ BitVec 32)) (extraKeys!3810 (_ BitVec 32)) (zeroValue!3914 V!7157) (minValue!3914 V!7157) (_size!1472 (_ BitVec 32)) (_keys!6122 array!10506) (_values!4056 array!10504) (_vacant!1472 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2846)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216690 (= res!106019 (validMask!0 (mask!9814 thiss!1504)))))

(declare-fun b!216691 () Bool)

(assert (=> b!216691 (= e!140988 e!140991)))

(declare-fun res!106014 () Bool)

(assert (=> b!216691 (=> (not res!106014) (not e!140991))))

(declare-datatypes ((SeekEntryResult!760 0))(
  ( (MissingZero!760 (index!5210 (_ BitVec 32))) (Found!760 (index!5211 (_ BitVec 32))) (Intermediate!760 (undefined!1572 Bool) (index!5212 (_ BitVec 32)) (x!22672 (_ BitVec 32))) (Undefined!760) (MissingVacant!760 (index!5213 (_ BitVec 32))) )
))
(declare-fun lt!111240 () SeekEntryResult!760)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216691 (= res!106014 (or (= lt!111240 (MissingZero!760 index!297)) (= lt!111240 (MissingVacant!760 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10506 (_ BitVec 32)) SeekEntryResult!760)

(assert (=> b!216691 (= lt!111240 (seekEntryOrOpen!0 key!932 (_keys!6122 thiss!1504) (mask!9814 thiss!1504)))))

(declare-fun mapNonEmpty!9612 () Bool)

(declare-fun mapRes!9612 () Bool)

(declare-fun tp!20447 () Bool)

(declare-fun e!140987 () Bool)

(assert (=> mapNonEmpty!9612 (= mapRes!9612 (and tp!20447 e!140987))))

(declare-fun mapValue!9612 () ValueCell!2473)

(declare-fun mapKey!9612 () (_ BitVec 32))

(declare-fun mapRest!9612 () (Array (_ BitVec 32) ValueCell!2473))

(assert (=> mapNonEmpty!9612 (= (arr!4973 (_values!4056 thiss!1504)) (store mapRest!9612 mapKey!9612 mapValue!9612))))

(declare-fun b!216692 () Bool)

(declare-fun res!106016 () Bool)

(assert (=> b!216692 (=> (not res!106016) (not e!140991))))

(assert (=> b!216692 (= res!106016 (and (= (size!5305 (_values!4056 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9814 thiss!1504))) (= (size!5306 (_keys!6122 thiss!1504)) (size!5305 (_values!4056 thiss!1504))) (bvsge (mask!9814 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3810 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3810 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216693 () Bool)

(declare-fun res!106018 () Bool)

(assert (=> b!216693 (=> (not res!106018) (not e!140991))))

(declare-datatypes ((tuple2!4252 0))(
  ( (tuple2!4253 (_1!2136 (_ BitVec 64)) (_2!2136 V!7157)) )
))
(declare-datatypes ((List!3181 0))(
  ( (Nil!3178) (Cons!3177 (h!3824 tuple2!4252) (t!8144 List!3181)) )
))
(declare-datatypes ((ListLongMap!3179 0))(
  ( (ListLongMap!3180 (toList!1605 List!3181)) )
))
(declare-fun contains!1440 (ListLongMap!3179 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1128 (array!10506 array!10504 (_ BitVec 32) (_ BitVec 32) V!7157 V!7157 (_ BitVec 32) Int) ListLongMap!3179)

(assert (=> b!216693 (= res!106018 (contains!1440 (getCurrentListMap!1128 (_keys!6122 thiss!1504) (_values!4056 thiss!1504) (mask!9814 thiss!1504) (extraKeys!3810 thiss!1504) (zeroValue!3914 thiss!1504) (minValue!3914 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4073 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!9612 () Bool)

(assert (=> mapIsEmpty!9612 mapRes!9612))

(declare-fun b!216694 () Bool)

(declare-fun tp_is_empty!5633 () Bool)

(assert (=> b!216694 (= e!140987 tp_is_empty!5633)))

(declare-fun b!216695 () Bool)

(declare-fun e!140986 () Bool)

(declare-fun e!140985 () Bool)

(assert (=> b!216695 (= e!140986 (and e!140985 mapRes!9612))))

(declare-fun condMapEmpty!9612 () Bool)

(declare-fun mapDefault!9612 () ValueCell!2473)


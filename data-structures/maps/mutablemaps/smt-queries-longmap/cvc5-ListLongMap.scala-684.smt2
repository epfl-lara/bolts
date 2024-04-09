; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16620 () Bool)

(assert start!16620)

(declare-fun b!165667 () Bool)

(declare-fun b_free!3913 () Bool)

(declare-fun b_next!3913 () Bool)

(assert (=> b!165667 (= b_free!3913 (not b_next!3913))))

(declare-fun tp!14339 () Bool)

(declare-fun b_and!10345 () Bool)

(assert (=> b!165667 (= tp!14339 b_and!10345)))

(declare-fun b!165657 () Bool)

(declare-fun res!78653 () Bool)

(declare-fun e!108673 () Bool)

(assert (=> b!165657 (=> (not res!78653) (not e!108673))))

(declare-datatypes ((V!4601 0))(
  ( (V!4602 (val!1902 Int)) )
))
(declare-datatypes ((ValueCell!1514 0))(
  ( (ValueCellFull!1514 (v!3763 V!4601)) (EmptyCell!1514) )
))
(declare-datatypes ((array!6526 0))(
  ( (array!6527 (arr!3098 (Array (_ BitVec 32) (_ BitVec 64))) (size!3386 (_ BitVec 32))) )
))
(declare-datatypes ((array!6528 0))(
  ( (array!6529 (arr!3099 (Array (_ BitVec 32) ValueCell!1514)) (size!3387 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1936 0))(
  ( (LongMapFixedSize!1937 (defaultEntry!3410 Int) (mask!8127 (_ BitVec 32)) (extraKeys!3151 (_ BitVec 32)) (zeroValue!3253 V!4601) (minValue!3253 V!4601) (_size!1017 (_ BitVec 32)) (_keys!5235 array!6526) (_values!3393 array!6528) (_vacant!1017 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1936)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6526 (_ BitVec 32)) Bool)

(assert (=> b!165657 (= res!78653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5235 thiss!1248) (mask!8127 thiss!1248)))))

(declare-fun b!165658 () Bool)

(assert (=> b!165658 (= e!108673 false)))

(declare-fun lt!83141 () Bool)

(declare-datatypes ((List!2084 0))(
  ( (Nil!2081) (Cons!2080 (h!2697 (_ BitVec 64)) (t!6894 List!2084)) )
))
(declare-fun arrayNoDuplicates!0 (array!6526 (_ BitVec 32) List!2084) Bool)

(assert (=> b!165658 (= lt!83141 (arrayNoDuplicates!0 (_keys!5235 thiss!1248) #b00000000000000000000000000000000 Nil!2081))))

(declare-fun b!165659 () Bool)

(declare-fun res!78651 () Bool)

(assert (=> b!165659 (=> (not res!78651) (not e!108673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165659 (= res!78651 (validMask!0 (mask!8127 thiss!1248)))))

(declare-fun b!165660 () Bool)

(declare-fun res!78656 () Bool)

(declare-fun e!108676 () Bool)

(assert (=> b!165660 (=> (not res!78656) (not e!108676))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165660 (= res!78656 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6291 () Bool)

(declare-fun mapRes!6291 () Bool)

(assert (=> mapIsEmpty!6291 mapRes!6291))

(declare-fun b!165661 () Bool)

(declare-fun e!108674 () Bool)

(declare-fun tp_is_empty!3715 () Bool)

(assert (=> b!165661 (= e!108674 tp_is_empty!3715)))

(declare-fun res!78654 () Bool)

(assert (=> start!16620 (=> (not res!78654) (not e!108676))))

(declare-fun valid!847 (LongMapFixedSize!1936) Bool)

(assert (=> start!16620 (= res!78654 (valid!847 thiss!1248))))

(assert (=> start!16620 e!108676))

(declare-fun e!108670 () Bool)

(assert (=> start!16620 e!108670))

(assert (=> start!16620 true))

(declare-fun b!165662 () Bool)

(declare-fun e!108671 () Bool)

(assert (=> b!165662 (= e!108671 tp_is_empty!3715)))

(declare-fun b!165663 () Bool)

(declare-fun res!78655 () Bool)

(assert (=> b!165663 (=> (not res!78655) (not e!108673))))

(declare-datatypes ((tuple2!3076 0))(
  ( (tuple2!3077 (_1!1548 (_ BitVec 64)) (_2!1548 V!4601)) )
))
(declare-datatypes ((List!2085 0))(
  ( (Nil!2082) (Cons!2081 (h!2698 tuple2!3076) (t!6895 List!2085)) )
))
(declare-datatypes ((ListLongMap!2045 0))(
  ( (ListLongMap!2046 (toList!1038 List!2085)) )
))
(declare-fun contains!1074 (ListLongMap!2045 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!691 (array!6526 array!6528 (_ BitVec 32) (_ BitVec 32) V!4601 V!4601 (_ BitVec 32) Int) ListLongMap!2045)

(assert (=> b!165663 (= res!78655 (not (contains!1074 (getCurrentListMap!691 (_keys!5235 thiss!1248) (_values!3393 thiss!1248) (mask!8127 thiss!1248) (extraKeys!3151 thiss!1248) (zeroValue!3253 thiss!1248) (minValue!3253 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3410 thiss!1248)) key!828)))))

(declare-fun b!165664 () Bool)

(declare-fun e!108675 () Bool)

(assert (=> b!165664 (= e!108675 (and e!108674 mapRes!6291))))

(declare-fun condMapEmpty!6291 () Bool)

(declare-fun mapDefault!6291 () ValueCell!1514)


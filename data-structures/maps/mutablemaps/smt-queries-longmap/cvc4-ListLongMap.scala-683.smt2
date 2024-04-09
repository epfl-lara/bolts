; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16618 () Bool)

(assert start!16618)

(declare-fun b!165629 () Bool)

(declare-fun b_free!3911 () Bool)

(declare-fun b_next!3911 () Bool)

(assert (=> b!165629 (= b_free!3911 (not b_next!3911))))

(declare-fun tp!14334 () Bool)

(declare-fun b_and!10343 () Bool)

(assert (=> b!165629 (= tp!14334 b_and!10343)))

(declare-fun b!165624 () Bool)

(declare-fun e!108654 () Bool)

(declare-fun e!108650 () Bool)

(assert (=> b!165624 (= e!108654 e!108650)))

(declare-fun res!78632 () Bool)

(assert (=> b!165624 (=> (not res!78632) (not e!108650))))

(declare-datatypes ((SeekEntryResult!451 0))(
  ( (MissingZero!451 (index!3972 (_ BitVec 32))) (Found!451 (index!3973 (_ BitVec 32))) (Intermediate!451 (undefined!1263 Bool) (index!3974 (_ BitVec 32)) (x!18367 (_ BitVec 32))) (Undefined!451) (MissingVacant!451 (index!3975 (_ BitVec 32))) )
))
(declare-fun lt!83135 () SeekEntryResult!451)

(assert (=> b!165624 (= res!78632 (and (not (is-Undefined!451 lt!83135)) (not (is-MissingVacant!451 lt!83135)) (not (is-MissingZero!451 lt!83135)) (is-Found!451 lt!83135)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4597 0))(
  ( (V!4598 (val!1901 Int)) )
))
(declare-datatypes ((ValueCell!1513 0))(
  ( (ValueCellFull!1513 (v!3762 V!4597)) (EmptyCell!1513) )
))
(declare-datatypes ((array!6522 0))(
  ( (array!6523 (arr!3096 (Array (_ BitVec 32) (_ BitVec 64))) (size!3384 (_ BitVec 32))) )
))
(declare-datatypes ((array!6524 0))(
  ( (array!6525 (arr!3097 (Array (_ BitVec 32) ValueCell!1513)) (size!3385 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1934 0))(
  ( (LongMapFixedSize!1935 (defaultEntry!3409 Int) (mask!8124 (_ BitVec 32)) (extraKeys!3150 (_ BitVec 32)) (zeroValue!3252 V!4597) (minValue!3252 V!4597) (_size!1016 (_ BitVec 32)) (_keys!5234 array!6522) (_values!3392 array!6524) (_vacant!1016 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1934)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6522 (_ BitVec 32)) SeekEntryResult!451)

(assert (=> b!165624 (= lt!83135 (seekEntryOrOpen!0 key!828 (_keys!5234 thiss!1248) (mask!8124 thiss!1248)))))

(declare-fun b!165625 () Bool)

(declare-fun res!78635 () Bool)

(assert (=> b!165625 (=> (not res!78635) (not e!108650))))

(declare-datatypes ((tuple2!3074 0))(
  ( (tuple2!3075 (_1!1547 (_ BitVec 64)) (_2!1547 V!4597)) )
))
(declare-datatypes ((List!2083 0))(
  ( (Nil!2080) (Cons!2079 (h!2696 tuple2!3074) (t!6893 List!2083)) )
))
(declare-datatypes ((ListLongMap!2043 0))(
  ( (ListLongMap!2044 (toList!1037 List!2083)) )
))
(declare-fun contains!1073 (ListLongMap!2043 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!690 (array!6522 array!6524 (_ BitVec 32) (_ BitVec 32) V!4597 V!4597 (_ BitVec 32) Int) ListLongMap!2043)

(assert (=> b!165625 (= res!78635 (not (contains!1073 (getCurrentListMap!690 (_keys!5234 thiss!1248) (_values!3392 thiss!1248) (mask!8124 thiss!1248) (extraKeys!3150 thiss!1248) (zeroValue!3252 thiss!1248) (minValue!3252 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3409 thiss!1248)) key!828)))))

(declare-fun mapIsEmpty!6288 () Bool)

(declare-fun mapRes!6288 () Bool)

(assert (=> mapIsEmpty!6288 mapRes!6288))

(declare-fun b!165626 () Bool)

(declare-fun e!108655 () Bool)

(declare-fun e!108649 () Bool)

(assert (=> b!165626 (= e!108655 (and e!108649 mapRes!6288))))

(declare-fun condMapEmpty!6288 () Bool)

(declare-fun mapDefault!6288 () ValueCell!1513)


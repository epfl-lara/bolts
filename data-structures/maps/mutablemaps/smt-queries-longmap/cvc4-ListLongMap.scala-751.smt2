; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17604 () Bool)

(assert start!17604)

(declare-fun b!176002 () Bool)

(declare-fun b_free!4349 () Bool)

(declare-fun b_next!4349 () Bool)

(assert (=> b!176002 (= b_free!4349 (not b_next!4349))))

(declare-fun tp!15733 () Bool)

(declare-fun b_and!10855 () Bool)

(assert (=> b!176002 (= tp!15733 b_and!10855)))

(declare-fun b!175997 () Bool)

(declare-fun e!116156 () Bool)

(declare-fun tp_is_empty!4121 () Bool)

(assert (=> b!175997 (= e!116156 tp_is_empty!4121)))

(declare-fun mapIsEmpty!7031 () Bool)

(declare-fun mapRes!7031 () Bool)

(assert (=> mapIsEmpty!7031 mapRes!7031))

(declare-fun b!175998 () Bool)

(declare-fun res!83436 () Bool)

(declare-fun e!116153 () Bool)

(assert (=> b!175998 (=> (not res!83436) (not e!116153))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!175998 (= res!83436 (not (= key!828 (bvneg key!828))))))

(declare-fun res!83435 () Bool)

(assert (=> start!17604 (=> (not res!83435) (not e!116153))))

(declare-datatypes ((V!5141 0))(
  ( (V!5142 (val!2105 Int)) )
))
(declare-datatypes ((ValueCell!1717 0))(
  ( (ValueCellFull!1717 (v!3977 V!5141)) (EmptyCell!1717) )
))
(declare-datatypes ((array!7384 0))(
  ( (array!7385 (arr!3504 (Array (_ BitVec 32) (_ BitVec 64))) (size!3807 (_ BitVec 32))) )
))
(declare-datatypes ((array!7386 0))(
  ( (array!7387 (arr!3505 (Array (_ BitVec 32) ValueCell!1717)) (size!3808 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2342 0))(
  ( (LongMapFixedSize!2343 (defaultEntry!3629 Int) (mask!8538 (_ BitVec 32)) (extraKeys!3366 (_ BitVec 32)) (zeroValue!3470 V!5141) (minValue!3470 V!5141) (_size!1220 (_ BitVec 32)) (_keys!5486 array!7384) (_values!3612 array!7386) (_vacant!1220 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2342)

(declare-fun valid!978 (LongMapFixedSize!2342) Bool)

(assert (=> start!17604 (= res!83435 (valid!978 thiss!1248))))

(assert (=> start!17604 e!116153))

(declare-fun e!116155 () Bool)

(assert (=> start!17604 e!116155))

(assert (=> start!17604 true))

(declare-fun b!175999 () Bool)

(declare-fun res!83433 () Bool)

(assert (=> b!175999 (=> (not res!83433) (not e!116153))))

(declare-datatypes ((tuple2!3270 0))(
  ( (tuple2!3271 (_1!1645 (_ BitVec 64)) (_2!1645 V!5141)) )
))
(declare-datatypes ((List!2249 0))(
  ( (Nil!2246) (Cons!2245 (h!2865 tuple2!3270) (t!7079 List!2249)) )
))
(declare-datatypes ((ListLongMap!2211 0))(
  ( (ListLongMap!2212 (toList!1121 List!2249)) )
))
(declare-fun contains!1177 (ListLongMap!2211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!768 (array!7384 array!7386 (_ BitVec 32) (_ BitVec 32) V!5141 V!5141 (_ BitVec 32) Int) ListLongMap!2211)

(assert (=> b!175999 (= res!83433 (contains!1177 (getCurrentListMap!768 (_keys!5486 thiss!1248) (_values!3612 thiss!1248) (mask!8538 thiss!1248) (extraKeys!3366 thiss!1248) (zeroValue!3470 thiss!1248) (minValue!3470 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3629 thiss!1248)) key!828))))

(declare-fun b!176000 () Bool)

(declare-fun e!116152 () Bool)

(assert (=> b!176000 (= e!116152 (and e!116156 mapRes!7031))))

(declare-fun condMapEmpty!7031 () Bool)

(declare-fun mapDefault!7031 () ValueCell!1717)


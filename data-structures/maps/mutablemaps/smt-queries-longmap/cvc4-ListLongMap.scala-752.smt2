; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17660 () Bool)

(assert start!17660)

(declare-fun b!176394 () Bool)

(declare-fun b_free!4355 () Bool)

(declare-fun b_next!4355 () Bool)

(assert (=> b!176394 (= b_free!4355 (not b_next!4355))))

(declare-fun tp!15756 () Bool)

(declare-fun b_and!10867 () Bool)

(assert (=> b!176394 (= tp!15756 b_and!10867)))

(declare-fun b!176391 () Bool)

(declare-fun res!83607 () Bool)

(declare-fun e!116389 () Bool)

(assert (=> b!176391 (=> (not res!83607) (not e!116389))))

(declare-datatypes ((V!5149 0))(
  ( (V!5150 (val!2108 Int)) )
))
(declare-datatypes ((ValueCell!1720 0))(
  ( (ValueCellFull!1720 (v!3981 V!5149)) (EmptyCell!1720) )
))
(declare-datatypes ((array!7398 0))(
  ( (array!7399 (arr!3510 (Array (_ BitVec 32) (_ BitVec 64))) (size!3814 (_ BitVec 32))) )
))
(declare-datatypes ((array!7400 0))(
  ( (array!7401 (arr!3511 (Array (_ BitVec 32) ValueCell!1720)) (size!3815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2348 0))(
  ( (LongMapFixedSize!2349 (defaultEntry!3634 Int) (mask!8551 (_ BitVec 32)) (extraKeys!3371 (_ BitVec 32)) (zeroValue!3475 V!5149) (minValue!3475 V!5149) (_size!1223 (_ BitVec 32)) (_keys!5495 array!7398) (_values!3617 array!7400) (_vacant!1223 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2348)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3276 0))(
  ( (tuple2!3277 (_1!1648 (_ BitVec 64)) (_2!1648 V!5149)) )
))
(declare-datatypes ((List!2253 0))(
  ( (Nil!2250) (Cons!2249 (h!2870 tuple2!3276) (t!7085 List!2253)) )
))
(declare-datatypes ((ListLongMap!2217 0))(
  ( (ListLongMap!2218 (toList!1124 List!2253)) )
))
(declare-fun contains!1182 (ListLongMap!2217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!771 (array!7398 array!7400 (_ BitVec 32) (_ BitVec 32) V!5149 V!5149 (_ BitVec 32) Int) ListLongMap!2217)

(assert (=> b!176391 (= res!83607 (contains!1182 (getCurrentListMap!771 (_keys!5495 thiss!1248) (_values!3617 thiss!1248) (mask!8551 thiss!1248) (extraKeys!3371 thiss!1248) (zeroValue!3475 thiss!1248) (minValue!3475 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3634 thiss!1248)) key!828))))

(declare-fun b!176392 () Bool)

(declare-fun e!116387 () Bool)

(declare-fun e!116388 () Bool)

(declare-fun mapRes!7044 () Bool)

(assert (=> b!176392 (= e!116387 (and e!116388 mapRes!7044))))

(declare-fun condMapEmpty!7044 () Bool)

(declare-fun mapDefault!7044 () ValueCell!1720)


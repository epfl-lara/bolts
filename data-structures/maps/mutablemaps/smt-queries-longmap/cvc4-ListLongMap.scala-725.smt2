; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16942 () Bool)

(assert start!16942)

(declare-fun b!170248 () Bool)

(declare-fun b_free!4193 () Bool)

(declare-fun b_next!4193 () Bool)

(assert (=> b!170248 (= b_free!4193 (not b_next!4193))))

(declare-fun tp!15199 () Bool)

(declare-fun b_and!10625 () Bool)

(assert (=> b!170248 (= tp!15199 b_and!10625)))

(declare-fun b!170245 () Bool)

(declare-fun e!112335 () Bool)

(declare-datatypes ((V!4933 0))(
  ( (V!4934 (val!2027 Int)) )
))
(declare-datatypes ((ValueCell!1639 0))(
  ( (ValueCellFull!1639 (v!3888 V!4933)) (EmptyCell!1639) )
))
(declare-datatypes ((array!7036 0))(
  ( (array!7037 (arr!3348 (Array (_ BitVec 32) (_ BitVec 64))) (size!3640 (_ BitVec 32))) )
))
(declare-datatypes ((array!7038 0))(
  ( (array!7039 (arr!3349 (Array (_ BitVec 32) ValueCell!1639)) (size!3641 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2186 0))(
  ( (LongMapFixedSize!2187 (defaultEntry!3535 Int) (mask!8343 (_ BitVec 32)) (extraKeys!3276 (_ BitVec 32)) (zeroValue!3378 V!4933) (minValue!3378 V!4933) (_size!1142 (_ BitVec 32)) (_keys!5364 array!7036) (_values!3518 array!7038) (_vacant!1142 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2186)

(assert (=> b!170245 (= e!112335 (and (= (size!3641 (_values!3518 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8343 thiss!1248))) (= (size!3640 (_keys!5364 thiss!1248)) (size!3641 (_values!3518 thiss!1248))) (bvsge (mask!8343 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3276 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3276 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!170246 () Bool)

(declare-fun e!112334 () Bool)

(declare-fun tp_is_empty!3965 () Bool)

(assert (=> b!170246 (= e!112334 tp_is_empty!3965)))

(declare-fun mapNonEmpty!6730 () Bool)

(declare-fun mapRes!6730 () Bool)

(declare-fun tp!15198 () Bool)

(assert (=> mapNonEmpty!6730 (= mapRes!6730 (and tp!15198 e!112334))))

(declare-fun mapKey!6730 () (_ BitVec 32))

(declare-fun mapValue!6730 () ValueCell!1639)

(declare-fun mapRest!6730 () (Array (_ BitVec 32) ValueCell!1639))

(assert (=> mapNonEmpty!6730 (= (arr!3349 (_values!3518 thiss!1248)) (store mapRest!6730 mapKey!6730 mapValue!6730))))

(declare-fun b!170247 () Bool)

(declare-fun e!112336 () Bool)

(declare-fun e!112337 () Bool)

(assert (=> b!170247 (= e!112336 (and e!112337 mapRes!6730))))

(declare-fun condMapEmpty!6730 () Bool)

(declare-fun mapDefault!6730 () ValueCell!1639)


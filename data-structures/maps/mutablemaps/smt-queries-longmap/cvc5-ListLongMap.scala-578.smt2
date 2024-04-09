; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15622 () Bool)

(assert start!15622)

(declare-fun b!155419 () Bool)

(declare-fun b_free!3277 () Bool)

(declare-fun b_next!3277 () Bool)

(assert (=> b!155419 (= b_free!3277 (not b_next!3277))))

(declare-fun tp!12356 () Bool)

(declare-fun b_and!9709 () Bool)

(assert (=> b!155419 (= tp!12356 b_and!9709)))

(declare-fun tp_is_empty!3079 () Bool)

(declare-fun e!101549 () Bool)

(declare-datatypes ((V!3753 0))(
  ( (V!3754 (val!1584 Int)) )
))
(declare-datatypes ((ValueCell!1196 0))(
  ( (ValueCellFull!1196 (v!3445 V!3753)) (EmptyCell!1196) )
))
(declare-datatypes ((array!5210 0))(
  ( (array!5211 (arr!2462 (Array (_ BitVec 32) (_ BitVec 64))) (size!2740 (_ BitVec 32))) )
))
(declare-datatypes ((array!5212 0))(
  ( (array!5213 (arr!2463 (Array (_ BitVec 32) ValueCell!1196)) (size!2741 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1300 0))(
  ( (LongMapFixedSize!1301 (defaultEntry!3092 Int) (mask!7517 (_ BitVec 32)) (extraKeys!2833 (_ BitVec 32)) (zeroValue!2935 V!3753) (minValue!2935 V!3753) (_size!699 (_ BitVec 32)) (_keys!4867 array!5210) (_values!3075 array!5212) (_vacant!699 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1300)

(declare-fun e!101548 () Bool)

(declare-fun array_inv!1537 (array!5210) Bool)

(declare-fun array_inv!1538 (array!5212) Bool)

(assert (=> b!155419 (= e!101548 (and tp!12356 tp_is_empty!3079 (array_inv!1537 (_keys!4867 thiss!1248)) (array_inv!1538 (_values!3075 thiss!1248)) e!101549))))

(declare-fun mapIsEmpty!5261 () Bool)

(declare-fun mapRes!5261 () Bool)

(assert (=> mapIsEmpty!5261 mapRes!5261))

(declare-fun b!155420 () Bool)

(declare-fun e!101547 () Bool)

(assert (=> b!155420 (= e!101549 (and e!101547 mapRes!5261))))

(declare-fun condMapEmpty!5261 () Bool)

(declare-fun mapDefault!5261 () ValueCell!1196)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76694 () Bool)

(assert start!76694)

(declare-fun b!897477 () Bool)

(declare-fun b_free!15989 () Bool)

(declare-fun b_next!15989 () Bool)

(assert (=> b!897477 (= b_free!15989 (not b_next!15989))))

(declare-fun tp!56021 () Bool)

(declare-fun b_and!26299 () Bool)

(assert (=> b!897477 (= tp!56021 b_and!26299)))

(declare-fun b!897468 () Bool)

(declare-fun e!501922 () Bool)

(declare-fun tp_is_empty!18317 () Bool)

(assert (=> b!897468 (= e!501922 tp_is_empty!18317)))

(declare-fun mapIsEmpty!29115 () Bool)

(declare-fun mapRes!29115 () Bool)

(assert (=> mapIsEmpty!29115 mapRes!29115))

(declare-fun mapNonEmpty!29115 () Bool)

(declare-fun tp!56022 () Bool)

(declare-fun e!501919 () Bool)

(assert (=> mapNonEmpty!29115 (= mapRes!29115 (and tp!56022 e!501919))))

(declare-fun mapKey!29115 () (_ BitVec 32))

(declare-datatypes ((array!52648 0))(
  ( (array!52649 (arr!25302 (Array (_ BitVec 32) (_ BitVec 64))) (size!25758 (_ BitVec 32))) )
))
(declare-datatypes ((V!29387 0))(
  ( (V!29388 (val!9209 Int)) )
))
(declare-datatypes ((ValueCell!8677 0))(
  ( (ValueCellFull!8677 (v!11696 V!29387)) (EmptyCell!8677) )
))
(declare-datatypes ((array!52650 0))(
  ( (array!52651 (arr!25303 (Array (_ BitVec 32) ValueCell!8677)) (size!25759 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4370 0))(
  ( (LongMapFixedSize!4371 (defaultEntry!5397 Int) (mask!26086 (_ BitVec 32)) (extraKeys!5108 (_ BitVec 32)) (zeroValue!5212 V!29387) (minValue!5212 V!29387) (_size!2240 (_ BitVec 32)) (_keys!10154 array!52648) (_values!5399 array!52650) (_vacant!2240 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4370)

(declare-fun mapRest!29115 () (Array (_ BitVec 32) ValueCell!8677))

(declare-fun mapValue!29115 () ValueCell!8677)

(assert (=> mapNonEmpty!29115 (= (arr!25303 (_values!5399 thiss!1181)) (store mapRest!29115 mapKey!29115 mapValue!29115))))

(declare-fun b!897469 () Bool)

(declare-fun res!606724 () Bool)

(declare-fun e!501920 () Bool)

(assert (=> b!897469 (=> res!606724 e!501920)))

(assert (=> b!897469 (= res!606724 (or (not (= (size!25759 (_values!5399 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26086 thiss!1181)))) (not (= (size!25758 (_keys!10154 thiss!1181)) (size!25759 (_values!5399 thiss!1181)))) (bvslt (mask!26086 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5108 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5108 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897470 () Bool)

(declare-fun e!501921 () Bool)

(assert (=> b!897470 (= e!501921 (and e!501922 mapRes!29115))))

(declare-fun condMapEmpty!29115 () Bool)

(declare-fun mapDefault!29115 () ValueCell!8677)


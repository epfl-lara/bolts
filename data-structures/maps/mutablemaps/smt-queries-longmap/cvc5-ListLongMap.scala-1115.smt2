; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22948 () Bool)

(assert start!22948)

(declare-fun b!239513 () Bool)

(declare-fun b_free!6439 () Bool)

(declare-fun b_next!6439 () Bool)

(assert (=> b!239513 (= b_free!6439 (not b_next!6439))))

(declare-fun tp!22521 () Bool)

(declare-fun b_and!13423 () Bool)

(assert (=> b!239513 (= tp!22521 b_and!13423)))

(declare-fun b!239496 () Bool)

(declare-fun e!155517 () Bool)

(declare-fun e!155519 () Bool)

(declare-fun mapRes!10683 () Bool)

(assert (=> b!239496 (= e!155517 (and e!155519 mapRes!10683))))

(declare-fun condMapEmpty!10683 () Bool)

(declare-datatypes ((V!8049 0))(
  ( (V!8050 (val!3195 Int)) )
))
(declare-datatypes ((ValueCell!2807 0))(
  ( (ValueCellFull!2807 (v!5229 V!8049)) (EmptyCell!2807) )
))
(declare-datatypes ((array!11880 0))(
  ( (array!11881 (arr!5641 (Array (_ BitVec 32) ValueCell!2807)) (size!5982 (_ BitVec 32))) )
))
(declare-datatypes ((array!11882 0))(
  ( (array!11883 (arr!5642 (Array (_ BitVec 32) (_ BitVec 64))) (size!5983 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3514 0))(
  ( (LongMapFixedSize!3515 (defaultEntry!4442 Int) (mask!10490 (_ BitVec 32)) (extraKeys!4179 (_ BitVec 32)) (zeroValue!4283 V!8049) (minValue!4283 V!8049) (_size!1806 (_ BitVec 32)) (_keys!6544 array!11882) (_values!4425 array!11880) (_vacant!1806 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3514)

(declare-fun mapDefault!10683 () ValueCell!2807)


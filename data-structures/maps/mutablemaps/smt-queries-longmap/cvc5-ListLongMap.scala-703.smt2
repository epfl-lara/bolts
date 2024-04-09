; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16734 () Bool)

(assert start!16734)

(declare-fun b!167799 () Bool)

(declare-fun b_free!4027 () Bool)

(declare-fun b_next!4027 () Bool)

(assert (=> b!167799 (= b_free!4027 (not b_next!4027))))

(declare-fun tp!14681 () Bool)

(declare-fun b_and!10459 () Bool)

(assert (=> b!167799 (= tp!14681 b_and!10459)))

(declare-fun b!167794 () Bool)

(declare-fun res!79853 () Bool)

(declare-fun e!110253 () Bool)

(assert (=> b!167794 (=> res!79853 e!110253)))

(declare-datatypes ((V!4753 0))(
  ( (V!4754 (val!1959 Int)) )
))
(declare-datatypes ((ValueCell!1571 0))(
  ( (ValueCellFull!1571 (v!3820 V!4753)) (EmptyCell!1571) )
))
(declare-datatypes ((array!6754 0))(
  ( (array!6755 (arr!3212 (Array (_ BitVec 32) (_ BitVec 64))) (size!3500 (_ BitVec 32))) )
))
(declare-datatypes ((array!6756 0))(
  ( (array!6757 (arr!3213 (Array (_ BitVec 32) ValueCell!1571)) (size!3501 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2050 0))(
  ( (LongMapFixedSize!2051 (defaultEntry!3467 Int) (mask!8222 (_ BitVec 32)) (extraKeys!3208 (_ BitVec 32)) (zeroValue!3310 V!4753) (minValue!3310 V!4753) (_size!1074 (_ BitVec 32)) (_keys!5292 array!6754) (_values!3450 array!6756) (_vacant!1074 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2050)

(assert (=> b!167794 (= res!79853 (or (not (= (size!3501 (_values!3450 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8222 thiss!1248)))) (not (= (size!3500 (_keys!5292 thiss!1248)) (size!3501 (_values!3450 thiss!1248)))) (bvslt (mask!8222 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3208 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3208 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167795 () Bool)

(declare-fun e!110260 () Bool)

(declare-fun e!110251 () Bool)

(declare-fun mapRes!6462 () Bool)

(assert (=> b!167795 (= e!110260 (and e!110251 mapRes!6462))))

(declare-fun condMapEmpty!6462 () Bool)

(declare-fun mapDefault!6462 () ValueCell!1571)


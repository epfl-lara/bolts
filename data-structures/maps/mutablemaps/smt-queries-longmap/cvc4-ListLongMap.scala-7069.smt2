; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89508 () Bool)

(assert start!89508)

(declare-fun b!1026019 () Bool)

(declare-fun b_free!20471 () Bool)

(declare-fun b_next!20471 () Bool)

(assert (=> b!1026019 (= b_free!20471 (not b_next!20471))))

(declare-fun tp!72459 () Bool)

(declare-fun b_and!32735 () Bool)

(assert (=> b!1026019 (= tp!72459 b_and!32735)))

(declare-fun res!686959 () Bool)

(declare-fun e!578719 () Bool)

(assert (=> start!89508 (=> (not res!686959) (not e!578719))))

(declare-datatypes ((V!37127 0))(
  ( (V!37128 (val!12146 Int)) )
))
(declare-datatypes ((ValueCell!11392 0))(
  ( (ValueCellFull!11392 (v!14716 V!37127)) (EmptyCell!11392) )
))
(declare-datatypes ((array!64416 0))(
  ( (array!64417 (arr!31013 (Array (_ BitVec 32) (_ BitVec 64))) (size!31527 (_ BitVec 32))) )
))
(declare-datatypes ((array!64418 0))(
  ( (array!64419 (arr!31014 (Array (_ BitVec 32) ValueCell!11392)) (size!31528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5378 0))(
  ( (LongMapFixedSize!5379 (defaultEntry!6041 Int) (mask!29720 (_ BitVec 32)) (extraKeys!5773 (_ BitVec 32)) (zeroValue!5877 V!37127) (minValue!5877 V!37127) (_size!2744 (_ BitVec 32)) (_keys!11185 array!64416) (_values!6064 array!64418) (_vacant!2744 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5378)

(declare-fun valid!1994 (LongMapFixedSize!5378) Bool)

(assert (=> start!89508 (= res!686959 (valid!1994 thiss!1427))))

(assert (=> start!89508 e!578719))

(declare-fun e!578718 () Bool)

(assert (=> start!89508 e!578718))

(assert (=> start!89508 true))

(declare-fun b!1026013 () Bool)

(declare-fun e!578715 () Bool)

(declare-fun tp_is_empty!24191 () Bool)

(assert (=> b!1026013 (= e!578715 tp_is_empty!24191)))

(declare-fun b!1026014 () Bool)

(declare-fun e!578720 () Bool)

(declare-fun e!578717 () Bool)

(declare-fun mapRes!37715 () Bool)

(assert (=> b!1026014 (= e!578720 (and e!578717 mapRes!37715))))

(declare-fun condMapEmpty!37715 () Bool)

(declare-fun mapDefault!37715 () ValueCell!11392)


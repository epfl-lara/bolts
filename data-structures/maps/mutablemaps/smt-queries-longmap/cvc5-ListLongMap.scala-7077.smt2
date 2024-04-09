; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89552 () Bool)

(assert start!89552)

(declare-fun b!1026625 () Bool)

(declare-fun b_free!20515 () Bool)

(declare-fun b_next!20515 () Bool)

(assert (=> b!1026625 (= b_free!20515 (not b_next!20515))))

(declare-fun tp!72592 () Bool)

(declare-fun b_and!32779 () Bool)

(assert (=> b!1026625 (= tp!72592 b_and!32779)))

(declare-fun res!687303 () Bool)

(declare-fun e!579245 () Bool)

(assert (=> start!89552 (=> (not res!687303) (not e!579245))))

(declare-datatypes ((V!37187 0))(
  ( (V!37188 (val!12168 Int)) )
))
(declare-datatypes ((ValueCell!11414 0))(
  ( (ValueCellFull!11414 (v!14738 V!37187)) (EmptyCell!11414) )
))
(declare-datatypes ((array!64504 0))(
  ( (array!64505 (arr!31057 (Array (_ BitVec 32) (_ BitVec 64))) (size!31571 (_ BitVec 32))) )
))
(declare-datatypes ((array!64506 0))(
  ( (array!64507 (arr!31058 (Array (_ BitVec 32) ValueCell!11414)) (size!31572 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5422 0))(
  ( (LongMapFixedSize!5423 (defaultEntry!6063 Int) (mask!29758 (_ BitVec 32)) (extraKeys!5795 (_ BitVec 32)) (zeroValue!5899 V!37187) (minValue!5899 V!37187) (_size!2766 (_ BitVec 32)) (_keys!11207 array!64504) (_values!6086 array!64506) (_vacant!2766 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5422)

(declare-fun valid!2011 (LongMapFixedSize!5422) Bool)

(assert (=> start!89552 (= res!687303 (valid!2011 thiss!1427))))

(assert (=> start!89552 e!579245))

(declare-fun e!579247 () Bool)

(assert (=> start!89552 e!579247))

(assert (=> start!89552 true))

(declare-fun b!1026617 () Bool)

(declare-fun e!579241 () Bool)

(declare-fun e!579244 () Bool)

(declare-fun mapRes!37781 () Bool)

(assert (=> b!1026617 (= e!579241 (and e!579244 mapRes!37781))))

(declare-fun condMapEmpty!37781 () Bool)

(declare-fun mapDefault!37781 () ValueCell!11414)


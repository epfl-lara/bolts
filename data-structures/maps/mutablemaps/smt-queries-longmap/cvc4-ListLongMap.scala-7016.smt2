; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89148 () Bool)

(assert start!89148)

(declare-fun b!1021552 () Bool)

(declare-fun b_free!20153 () Bool)

(declare-fun b_next!20153 () Bool)

(assert (=> b!1021552 (= b_free!20153 (not b_next!20153))))

(declare-fun tp!71495 () Bool)

(declare-fun b_and!32369 () Bool)

(assert (=> b!1021552 (= tp!71495 b_and!32369)))

(declare-fun res!684527 () Bool)

(declare-fun e!575422 () Bool)

(assert (=> start!89148 (=> (not res!684527) (not e!575422))))

(declare-datatypes ((V!36703 0))(
  ( (V!36704 (val!11987 Int)) )
))
(declare-datatypes ((ValueCell!11233 0))(
  ( (ValueCellFull!11233 (v!14557 V!36703)) (EmptyCell!11233) )
))
(declare-datatypes ((array!63774 0))(
  ( (array!63775 (arr!30695 (Array (_ BitVec 32) (_ BitVec 64))) (size!31207 (_ BitVec 32))) )
))
(declare-datatypes ((array!63776 0))(
  ( (array!63777 (arr!30696 (Array (_ BitVec 32) ValueCell!11233)) (size!31208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5060 0))(
  ( (LongMapFixedSize!5061 (defaultEntry!5882 Int) (mask!29450 (_ BitVec 32)) (extraKeys!5614 (_ BitVec 32)) (zeroValue!5718 V!36703) (minValue!5718 V!36703) (_size!2585 (_ BitVec 32)) (_keys!11024 array!63774) (_values!5905 array!63776) (_vacant!2585 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5060)

(declare-fun valid!1897 (LongMapFixedSize!5060) Bool)

(assert (=> start!89148 (= res!684527 (valid!1897 thiss!1427))))

(assert (=> start!89148 e!575422))

(declare-fun e!575425 () Bool)

(assert (=> start!89148 e!575425))

(assert (=> start!89148 true))

(declare-fun b!1021550 () Bool)

(declare-fun e!575424 () Bool)

(declare-fun tp_is_empty!23873 () Bool)

(assert (=> b!1021550 (= e!575424 tp_is_empty!23873)))

(declare-fun b!1021551 () Bool)

(declare-fun e!575420 () Bool)

(assert (=> b!1021551 (= e!575420 tp_is_empty!23873)))

(declare-fun e!575421 () Bool)

(declare-fun array_inv!23669 (array!63774) Bool)

(declare-fun array_inv!23670 (array!63776) Bool)

(assert (=> b!1021552 (= e!575425 (and tp!71495 tp_is_empty!23873 (array_inv!23669 (_keys!11024 thiss!1427)) (array_inv!23670 (_values!5905 thiss!1427)) e!575421))))

(declare-fun b!1021553 () Bool)

(declare-fun mapRes!37227 () Bool)

(assert (=> b!1021553 (= e!575421 (and e!575420 mapRes!37227))))

(declare-fun condMapEmpty!37227 () Bool)

(declare-fun mapDefault!37227 () ValueCell!11233)


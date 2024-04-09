; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90614 () Bool)

(assert start!90614)

(declare-fun b!1035873 () Bool)

(declare-fun b_free!20879 () Bool)

(declare-fun b_next!20879 () Bool)

(assert (=> b!1035873 (= b_free!20879 (not b_next!20879))))

(declare-fun tp!73771 () Bool)

(declare-fun b_and!33401 () Bool)

(assert (=> b!1035873 (= tp!73771 b_and!33401)))

(declare-fun res!691643 () Bool)

(declare-fun e!585867 () Bool)

(assert (=> start!90614 (=> (not res!691643) (not e!585867))))

(declare-datatypes ((V!37671 0))(
  ( (V!37672 (val!12350 Int)) )
))
(declare-datatypes ((ValueCell!11596 0))(
  ( (ValueCellFull!11596 (v!14931 V!37671)) (EmptyCell!11596) )
))
(declare-datatypes ((array!65280 0))(
  ( (array!65281 (arr!31421 (Array (_ BitVec 32) (_ BitVec 64))) (size!31950 (_ BitVec 32))) )
))
(declare-datatypes ((array!65282 0))(
  ( (array!65283 (arr!31422 (Array (_ BitVec 32) ValueCell!11596)) (size!31951 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5786 0))(
  ( (LongMapFixedSize!5787 (defaultEntry!6271 Int) (mask!30167 (_ BitVec 32)) (extraKeys!6001 (_ BitVec 32)) (zeroValue!6105 V!37671) (minValue!6107 V!37671) (_size!2948 (_ BitVec 32)) (_keys!11457 array!65280) (_values!6294 array!65282) (_vacant!2948 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5786)

(declare-fun valid!2133 (LongMapFixedSize!5786) Bool)

(assert (=> start!90614 (= res!691643 (valid!2133 thiss!1427))))

(assert (=> start!90614 e!585867))

(declare-fun e!585868 () Bool)

(assert (=> start!90614 e!585868))

(assert (=> start!90614 true))

(declare-fun b!1035870 () Bool)

(declare-fun e!585870 () Bool)

(declare-fun e!585869 () Bool)

(declare-fun mapRes!38415 () Bool)

(assert (=> b!1035870 (= e!585870 (and e!585869 mapRes!38415))))

(declare-fun condMapEmpty!38415 () Bool)

(declare-fun mapDefault!38415 () ValueCell!11596)


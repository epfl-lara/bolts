; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90564 () Bool)

(assert start!90564)

(declare-fun b!1035472 () Bool)

(declare-fun b_free!20851 () Bool)

(declare-fun b_next!20851 () Bool)

(assert (=> b!1035472 (= b_free!20851 (not b_next!20851))))

(declare-fun tp!73681 () Bool)

(declare-fun b_and!33369 () Bool)

(assert (=> b!1035472 (= tp!73681 b_and!33369)))

(declare-fun e!585563 () Bool)

(declare-fun e!585562 () Bool)

(declare-fun tp_is_empty!24571 () Bool)

(declare-datatypes ((V!37635 0))(
  ( (V!37636 (val!12336 Int)) )
))
(declare-datatypes ((ValueCell!11582 0))(
  ( (ValueCellFull!11582 (v!14917 V!37635)) (EmptyCell!11582) )
))
(declare-datatypes ((array!65220 0))(
  ( (array!65221 (arr!31393 (Array (_ BitVec 32) (_ BitVec 64))) (size!31922 (_ BitVec 32))) )
))
(declare-datatypes ((array!65222 0))(
  ( (array!65223 (arr!31394 (Array (_ BitVec 32) ValueCell!11582)) (size!31923 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5758 0))(
  ( (LongMapFixedSize!5759 (defaultEntry!6257 Int) (mask!30141 (_ BitVec 32)) (extraKeys!5987 (_ BitVec 32)) (zeroValue!6091 V!37635) (minValue!6093 V!37635) (_size!2934 (_ BitVec 32)) (_keys!11441 array!65220) (_values!6280 array!65222) (_vacant!2934 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5758)

(declare-fun array_inv!24115 (array!65220) Bool)

(declare-fun array_inv!24116 (array!65222) Bool)

(assert (=> b!1035472 (= e!585563 (and tp!73681 tp_is_empty!24571 (array_inv!24115 (_keys!11441 thiss!1427)) (array_inv!24116 (_values!6280 thiss!1427)) e!585562))))

(declare-fun mapIsEmpty!38367 () Bool)

(declare-fun mapRes!38367 () Bool)

(assert (=> mapIsEmpty!38367 mapRes!38367))

(declare-fun b!1035473 () Bool)

(declare-fun res!691452 () Bool)

(declare-fun e!585559 () Bool)

(assert (=> b!1035473 (=> (not res!691452) (not e!585559))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035473 (= res!691452 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!691451 () Bool)

(assert (=> start!90564 (=> (not res!691451) (not e!585559))))

(declare-fun valid!2124 (LongMapFixedSize!5758) Bool)

(assert (=> start!90564 (= res!691451 (valid!2124 thiss!1427))))

(assert (=> start!90564 e!585559))

(assert (=> start!90564 e!585563))

(assert (=> start!90564 true))

(declare-fun b!1035474 () Bool)

(declare-fun res!691450 () Bool)

(assert (=> b!1035474 (=> (not res!691450) (not e!585559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035474 (= res!691450 (validMask!0 (mask!30141 thiss!1427)))))

(declare-fun b!1035475 () Bool)

(declare-fun e!585560 () Bool)

(assert (=> b!1035475 (= e!585560 tp_is_empty!24571)))

(declare-fun b!1035476 () Bool)

(assert (=> b!1035476 (= e!585562 (and e!585560 mapRes!38367))))

(declare-fun condMapEmpty!38367 () Bool)

(declare-fun mapDefault!38367 () ValueCell!11582)


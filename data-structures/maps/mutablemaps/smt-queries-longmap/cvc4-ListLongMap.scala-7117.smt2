; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90260 () Bool)

(assert start!90260)

(declare-fun b!1032953 () Bool)

(declare-fun b_free!20759 () Bool)

(declare-fun b_next!20759 () Bool)

(assert (=> b!1032953 (= b_free!20759 (not b_next!20759))))

(declare-fun tp!73368 () Bool)

(declare-fun b_and!33245 () Bool)

(assert (=> b!1032953 (= tp!73368 b_and!33245)))

(declare-fun b!1032947 () Bool)

(declare-fun e!583800 () Bool)

(declare-fun tp_is_empty!24479 () Bool)

(assert (=> b!1032947 (= e!583800 tp_is_empty!24479)))

(declare-fun b!1032949 () Bool)

(declare-fun e!583795 () Bool)

(declare-datatypes ((V!37511 0))(
  ( (V!37512 (val!12290 Int)) )
))
(declare-datatypes ((ValueCell!11536 0))(
  ( (ValueCellFull!11536 (v!14868 V!37511)) (EmptyCell!11536) )
))
(declare-datatypes ((array!65016 0))(
  ( (array!65017 (arr!31301 (Array (_ BitVec 32) (_ BitVec 64))) (size!31823 (_ BitVec 32))) )
))
(declare-datatypes ((array!65018 0))(
  ( (array!65019 (arr!31302 (Array (_ BitVec 32) ValueCell!11536)) (size!31824 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5666 0))(
  ( (LongMapFixedSize!5667 (defaultEntry!6207 Int) (mask!30039 (_ BitVec 32)) (extraKeys!5939 (_ BitVec 32)) (zeroValue!6043 V!37511) (minValue!6043 V!37511) (_size!2888 (_ BitVec 32)) (_keys!11381 array!65016) (_values!6230 array!65018) (_vacant!2888 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5666)

(assert (=> b!1032949 (= e!583795 (and (= (size!31824 (_values!6230 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30039 thiss!1427))) (= (size!31823 (_keys!11381 thiss!1427)) (size!31824 (_values!6230 thiss!1427))) (bvsge (mask!30039 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5939 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5939 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38191 () Bool)

(declare-fun mapRes!38191 () Bool)

(assert (=> mapIsEmpty!38191 mapRes!38191))

(declare-fun b!1032950 () Bool)

(declare-fun e!583798 () Bool)

(declare-fun e!583799 () Bool)

(assert (=> b!1032950 (= e!583798 (and e!583799 mapRes!38191))))

(declare-fun condMapEmpty!38191 () Bool)

(declare-fun mapDefault!38191 () ValueCell!11536)


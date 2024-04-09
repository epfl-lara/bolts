; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90580 () Bool)

(assert start!90580)

(declare-fun b!1035651 () Bool)

(declare-fun b_free!20867 () Bool)

(declare-fun b_next!20867 () Bool)

(assert (=> b!1035651 (= b_free!20867 (not b_next!20867))))

(declare-fun tp!73729 () Bool)

(declare-fun b_and!33385 () Bool)

(assert (=> b!1035651 (= tp!73729 b_and!33385)))

(declare-fun b!1035648 () Bool)

(declare-fun res!691530 () Bool)

(declare-fun e!585705 () Bool)

(assert (=> b!1035648 (=> (not res!691530) (not e!585705))))

(declare-datatypes ((V!37655 0))(
  ( (V!37656 (val!12344 Int)) )
))
(declare-datatypes ((ValueCell!11590 0))(
  ( (ValueCellFull!11590 (v!14925 V!37655)) (EmptyCell!11590) )
))
(declare-datatypes ((array!65252 0))(
  ( (array!65253 (arr!31409 (Array (_ BitVec 32) (_ BitVec 64))) (size!31938 (_ BitVec 32))) )
))
(declare-datatypes ((array!65254 0))(
  ( (array!65255 (arr!31410 (Array (_ BitVec 32) ValueCell!11590)) (size!31939 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5774 0))(
  ( (LongMapFixedSize!5775 (defaultEntry!6265 Int) (mask!30153 (_ BitVec 32)) (extraKeys!5995 (_ BitVec 32)) (zeroValue!6099 V!37655) (minValue!6101 V!37655) (_size!2942 (_ BitVec 32)) (_keys!11449 array!65252) (_values!6288 array!65254) (_vacant!2942 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5774)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035648 (= res!691530 (validMask!0 (mask!30153 thiss!1427)))))

(declare-fun b!1035649 () Bool)

(declare-fun res!691531 () Bool)

(assert (=> b!1035649 (=> (not res!691531) (not e!585705))))

(assert (=> b!1035649 (= res!691531 (and (= (size!31939 (_values!6288 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30153 thiss!1427))) (= (size!31938 (_keys!11449 thiss!1427)) (size!31939 (_values!6288 thiss!1427))) (bvsge (mask!30153 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5995 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5995 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5995 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5995 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5995 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5995 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5995 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38391 () Bool)

(declare-fun mapRes!38391 () Bool)

(assert (=> mapIsEmpty!38391 mapRes!38391))

(declare-fun b!1035650 () Bool)

(declare-fun e!585706 () Bool)

(declare-fun tp_is_empty!24587 () Bool)

(assert (=> b!1035650 (= e!585706 tp_is_empty!24587)))

(declare-fun e!585704 () Bool)

(declare-fun e!585702 () Bool)

(declare-fun array_inv!24123 (array!65252) Bool)

(declare-fun array_inv!24124 (array!65254) Bool)

(assert (=> b!1035651 (= e!585702 (and tp!73729 tp_is_empty!24587 (array_inv!24123 (_keys!11449 thiss!1427)) (array_inv!24124 (_values!6288 thiss!1427)) e!585704))))

(declare-fun b!1035652 () Bool)

(declare-fun e!585707 () Bool)

(assert (=> b!1035652 (= e!585707 tp_is_empty!24587)))

(declare-fun b!1035653 () Bool)

(declare-fun res!691532 () Bool)

(assert (=> b!1035653 (=> (not res!691532) (not e!585705))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035653 (= res!691532 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035654 () Bool)

(assert (=> b!1035654 (= e!585704 (and e!585706 mapRes!38391))))

(declare-fun condMapEmpty!38391 () Bool)

(declare-fun mapDefault!38391 () ValueCell!11590)


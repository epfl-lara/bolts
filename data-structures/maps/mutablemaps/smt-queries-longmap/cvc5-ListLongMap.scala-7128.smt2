; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90494 () Bool)

(assert start!90494)

(declare-fun b!1035004 () Bool)

(declare-fun b_free!20821 () Bool)

(declare-fun b_next!20821 () Bool)

(assert (=> b!1035004 (= b_free!20821 (not b_next!20821))))

(declare-fun tp!73580 () Bool)

(declare-fun b_and!33339 () Bool)

(assert (=> b!1035004 (= tp!73580 b_and!33339)))

(declare-fun b!1035000 () Bool)

(declare-fun e!585198 () Bool)

(declare-fun tp_is_empty!24541 () Bool)

(assert (=> b!1035000 (= e!585198 tp_is_empty!24541)))

(declare-fun mapIsEmpty!38311 () Bool)

(declare-fun mapRes!38311 () Bool)

(assert (=> mapIsEmpty!38311 mapRes!38311))

(declare-fun b!1035001 () Bool)

(declare-fun e!585200 () Bool)

(assert (=> b!1035001 (= e!585200 tp_is_empty!24541)))

(declare-fun b!1035003 () Bool)

(declare-fun res!691236 () Bool)

(declare-fun e!585202 () Bool)

(assert (=> b!1035003 (=> (not res!691236) (not e!585202))))

(declare-datatypes ((V!37595 0))(
  ( (V!37596 (val!12321 Int)) )
))
(declare-datatypes ((ValueCell!11567 0))(
  ( (ValueCellFull!11567 (v!14902 V!37595)) (EmptyCell!11567) )
))
(declare-datatypes ((array!65154 0))(
  ( (array!65155 (arr!31363 (Array (_ BitVec 32) (_ BitVec 64))) (size!31890 (_ BitVec 32))) )
))
(declare-datatypes ((array!65156 0))(
  ( (array!65157 (arr!31364 (Array (_ BitVec 32) ValueCell!11567)) (size!31891 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5728 0))(
  ( (LongMapFixedSize!5729 (defaultEntry!6242 Int) (mask!30111 (_ BitVec 32)) (extraKeys!5972 (_ BitVec 32)) (zeroValue!6076 V!37595) (minValue!6078 V!37595) (_size!2919 (_ BitVec 32)) (_keys!11424 array!65154) (_values!6265 array!65156) (_vacant!2919 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5728)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035003 (= res!691236 (validMask!0 (mask!30111 thiss!1427)))))

(declare-fun e!585199 () Bool)

(declare-fun e!585197 () Bool)

(declare-fun array_inv!24093 (array!65154) Bool)

(declare-fun array_inv!24094 (array!65156) Bool)

(assert (=> b!1035004 (= e!585197 (and tp!73580 tp_is_empty!24541 (array_inv!24093 (_keys!11424 thiss!1427)) (array_inv!24094 (_values!6265 thiss!1427)) e!585199))))

(declare-fun b!1035005 () Bool)

(declare-fun res!691234 () Bool)

(assert (=> b!1035005 (=> (not res!691234) (not e!585202))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035005 (= res!691234 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035002 () Bool)

(assert (=> b!1035002 (= e!585199 (and e!585200 mapRes!38311))))

(declare-fun condMapEmpty!38311 () Bool)

(declare-fun mapDefault!38311 () ValueCell!11567)


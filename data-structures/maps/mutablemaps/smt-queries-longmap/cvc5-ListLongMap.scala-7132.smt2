; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90558 () Bool)

(assert start!90558)

(declare-fun b!1035409 () Bool)

(declare-fun b_free!20845 () Bool)

(declare-fun b_next!20845 () Bool)

(assert (=> b!1035409 (= b_free!20845 (not b_next!20845))))

(declare-fun tp!73664 () Bool)

(declare-fun b_and!33363 () Bool)

(assert (=> b!1035409 (= tp!73664 b_and!33363)))

(declare-fun e!585509 () Bool)

(declare-fun tp_is_empty!24565 () Bool)

(declare-fun e!585505 () Bool)

(declare-datatypes ((V!37627 0))(
  ( (V!37628 (val!12333 Int)) )
))
(declare-datatypes ((ValueCell!11579 0))(
  ( (ValueCellFull!11579 (v!14914 V!37627)) (EmptyCell!11579) )
))
(declare-datatypes ((array!65208 0))(
  ( (array!65209 (arr!31387 (Array (_ BitVec 32) (_ BitVec 64))) (size!31916 (_ BitVec 32))) )
))
(declare-datatypes ((array!65210 0))(
  ( (array!65211 (arr!31388 (Array (_ BitVec 32) ValueCell!11579)) (size!31917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5752 0))(
  ( (LongMapFixedSize!5753 (defaultEntry!6254 Int) (mask!30136 (_ BitVec 32)) (extraKeys!5984 (_ BitVec 32)) (zeroValue!6088 V!37627) (minValue!6090 V!37627) (_size!2931 (_ BitVec 32)) (_keys!11438 array!65208) (_values!6277 array!65210) (_vacant!2931 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5752)

(declare-fun array_inv!24109 (array!65208) Bool)

(declare-fun array_inv!24110 (array!65210) Bool)

(assert (=> b!1035409 (= e!585509 (and tp!73664 tp_is_empty!24565 (array_inv!24109 (_keys!11438 thiss!1427)) (array_inv!24110 (_values!6277 thiss!1427)) e!585505))))

(declare-fun b!1035410 () Bool)

(declare-fun res!691424 () Bool)

(declare-fun e!585508 () Bool)

(assert (=> b!1035410 (=> (not res!691424) (not e!585508))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035410 (= res!691424 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035411 () Bool)

(declare-fun e!585507 () Bool)

(assert (=> b!1035411 (= e!585507 tp_is_empty!24565)))

(declare-fun b!1035412 () Bool)

(declare-fun e!585504 () Bool)

(declare-fun mapRes!38358 () Bool)

(assert (=> b!1035412 (= e!585505 (and e!585504 mapRes!38358))))

(declare-fun condMapEmpty!38358 () Bool)

(declare-fun mapDefault!38358 () ValueCell!11579)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90282 () Bool)

(assert start!90282)

(declare-fun b!1033083 () Bool)

(declare-fun b_free!20765 () Bool)

(declare-fun b_next!20765 () Bool)

(assert (=> b!1033083 (= b_free!20765 (not b_next!20765))))

(declare-fun tp!73390 () Bool)

(declare-fun b_and!33251 () Bool)

(assert (=> b!1033083 (= tp!73390 b_and!33251)))

(declare-fun mapNonEmpty!38204 () Bool)

(declare-fun mapRes!38204 () Bool)

(declare-fun tp!73389 () Bool)

(declare-fun e!583892 () Bool)

(assert (=> mapNonEmpty!38204 (= mapRes!38204 (and tp!73389 e!583892))))

(declare-fun mapKey!38204 () (_ BitVec 32))

(declare-datatypes ((V!37519 0))(
  ( (V!37520 (val!12293 Int)) )
))
(declare-datatypes ((ValueCell!11539 0))(
  ( (ValueCellFull!11539 (v!14871 V!37519)) (EmptyCell!11539) )
))
(declare-fun mapValue!38204 () ValueCell!11539)

(declare-datatypes ((array!65030 0))(
  ( (array!65031 (arr!31307 (Array (_ BitVec 32) (_ BitVec 64))) (size!31830 (_ BitVec 32))) )
))
(declare-datatypes ((array!65032 0))(
  ( (array!65033 (arr!31308 (Array (_ BitVec 32) ValueCell!11539)) (size!31831 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5672 0))(
  ( (LongMapFixedSize!5673 (defaultEntry!6210 Int) (mask!30046 (_ BitVec 32)) (extraKeys!5942 (_ BitVec 32)) (zeroValue!6046 V!37519) (minValue!6046 V!37519) (_size!2891 (_ BitVec 32)) (_keys!11385 array!65030) (_values!6233 array!65032) (_vacant!2891 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5672)

(declare-fun mapRest!38204 () (Array (_ BitVec 32) ValueCell!11539))

(assert (=> mapNonEmpty!38204 (= (arr!31308 (_values!6233 thiss!1427)) (store mapRest!38204 mapKey!38204 mapValue!38204))))

(declare-fun b!1033080 () Bool)

(declare-fun e!583890 () Bool)

(assert (=> b!1033080 (= e!583890 (and (= (size!31831 (_values!6233 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30046 thiss!1427))) (= (size!31830 (_keys!11385 thiss!1427)) (size!31831 (_values!6233 thiss!1427))) (bvsge (mask!30046 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5942 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5942 thiss!1427) #b00000000000000000000000000000011) (bvslt (bvand (extraKeys!5942 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1033081 () Bool)

(declare-fun e!583893 () Bool)

(declare-fun tp_is_empty!24485 () Bool)

(assert (=> b!1033081 (= e!583893 tp_is_empty!24485)))

(declare-fun e!583894 () Bool)

(declare-fun e!583895 () Bool)

(declare-fun array_inv!24061 (array!65030) Bool)

(declare-fun array_inv!24062 (array!65032) Bool)

(assert (=> b!1033083 (= e!583895 (and tp!73390 tp_is_empty!24485 (array_inv!24061 (_keys!11385 thiss!1427)) (array_inv!24062 (_values!6233 thiss!1427)) e!583894))))

(declare-fun b!1033084 () Bool)

(declare-fun res!690422 () Bool)

(assert (=> b!1033084 (=> (not res!690422) (not e!583890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033084 (= res!690422 (validMask!0 (mask!30046 thiss!1427)))))

(declare-fun mapIsEmpty!38204 () Bool)

(assert (=> mapIsEmpty!38204 mapRes!38204))

(declare-fun b!1033082 () Bool)

(assert (=> b!1033082 (= e!583894 (and e!583893 mapRes!38204))))

(declare-fun condMapEmpty!38204 () Bool)

(declare-fun mapDefault!38204 () ValueCell!11539)


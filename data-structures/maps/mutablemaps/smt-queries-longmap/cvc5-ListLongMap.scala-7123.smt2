; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90318 () Bool)

(assert start!90318)

(declare-fun b!1033403 () Bool)

(declare-fun b_free!20791 () Bool)

(declare-fun b_next!20791 () Bool)

(assert (=> b!1033403 (= b_free!20791 (not b_next!20791))))

(declare-fun tp!73471 () Bool)

(declare-fun b_and!33277 () Bool)

(assert (=> b!1033403 (= tp!73471 b_and!33277)))

(declare-fun b!1033395 () Bool)

(declare-fun res!690566 () Bool)

(declare-fun e!584142 () Bool)

(assert (=> b!1033395 (=> (not res!690566) (not e!584142))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033395 (= res!690566 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!38246 () Bool)

(declare-fun mapRes!38246 () Bool)

(declare-fun tp!73470 () Bool)

(declare-fun e!584146 () Bool)

(assert (=> mapNonEmpty!38246 (= mapRes!38246 (and tp!73470 e!584146))))

(declare-datatypes ((V!37555 0))(
  ( (V!37556 (val!12306 Int)) )
))
(declare-datatypes ((ValueCell!11552 0))(
  ( (ValueCellFull!11552 (v!14884 V!37555)) (EmptyCell!11552) )
))
(declare-fun mapRest!38246 () (Array (_ BitVec 32) ValueCell!11552))

(declare-fun mapKey!38246 () (_ BitVec 32))

(declare-fun mapValue!38246 () ValueCell!11552)

(declare-datatypes ((array!65084 0))(
  ( (array!65085 (arr!31333 (Array (_ BitVec 32) (_ BitVec 64))) (size!31856 (_ BitVec 32))) )
))
(declare-datatypes ((array!65086 0))(
  ( (array!65087 (arr!31334 (Array (_ BitVec 32) ValueCell!11552)) (size!31857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5698 0))(
  ( (LongMapFixedSize!5699 (defaultEntry!6223 Int) (mask!30071 (_ BitVec 32)) (extraKeys!5955 (_ BitVec 32)) (zeroValue!6059 V!37555) (minValue!6059 V!37555) (_size!2904 (_ BitVec 32)) (_keys!11399 array!65084) (_values!6246 array!65086) (_vacant!2904 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5698)

(assert (=> mapNonEmpty!38246 (= (arr!31334 (_values!6246 thiss!1427)) (store mapRest!38246 mapKey!38246 mapValue!38246))))

(declare-fun b!1033396 () Bool)

(declare-fun res!690567 () Bool)

(assert (=> b!1033396 (=> (not res!690567) (not e!584142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65084 (_ BitVec 32)) Bool)

(assert (=> b!1033396 (= res!690567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11399 thiss!1427) (mask!30071 thiss!1427)))))

(declare-fun b!1033397 () Bool)

(declare-datatypes ((List!22019 0))(
  ( (Nil!22016) (Cons!22015 (h!23217 (_ BitVec 64)) (t!31220 List!22019)) )
))
(declare-fun arrayNoDuplicates!0 (array!65084 (_ BitVec 32) List!22019) Bool)

(assert (=> b!1033397 (= e!584142 (not (arrayNoDuplicates!0 (_keys!11399 thiss!1427) #b00000000000000000000000000000000 Nil!22016)))))

(declare-fun b!1033398 () Bool)

(declare-fun tp_is_empty!24511 () Bool)

(assert (=> b!1033398 (= e!584146 tp_is_empty!24511)))

(declare-fun b!1033399 () Bool)

(declare-fun res!690570 () Bool)

(assert (=> b!1033399 (=> (not res!690570) (not e!584142))))

(assert (=> b!1033399 (= res!690570 (and (= (size!31857 (_values!6246 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30071 thiss!1427))) (= (size!31856 (_keys!11399 thiss!1427)) (size!31857 (_values!6246 thiss!1427))) (bvsge (mask!30071 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5955 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5955 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5955 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5955 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5955 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5955 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5955 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1033400 () Bool)

(declare-fun e!584147 () Bool)

(assert (=> b!1033400 (= e!584147 tp_is_empty!24511)))

(declare-fun b!1033401 () Bool)

(declare-fun e!584143 () Bool)

(assert (=> b!1033401 (= e!584143 (and e!584147 mapRes!38246))))

(declare-fun condMapEmpty!38246 () Bool)

(declare-fun mapDefault!38246 () ValueCell!11552)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90568 () Bool)

(assert start!90568)

(declare-fun b!1035519 () Bool)

(declare-fun b_free!20855 () Bool)

(declare-fun b_next!20855 () Bool)

(assert (=> b!1035519 (= b_free!20855 (not b_next!20855))))

(declare-fun tp!73694 () Bool)

(declare-fun b_and!33373 () Bool)

(assert (=> b!1035519 (= tp!73694 b_and!33373)))

(declare-fun mapNonEmpty!38373 () Bool)

(declare-fun mapRes!38373 () Bool)

(declare-fun tp!73693 () Bool)

(declare-fun e!585594 () Bool)

(assert (=> mapNonEmpty!38373 (= mapRes!38373 (and tp!73693 e!585594))))

(declare-datatypes ((V!37639 0))(
  ( (V!37640 (val!12338 Int)) )
))
(declare-datatypes ((ValueCell!11584 0))(
  ( (ValueCellFull!11584 (v!14919 V!37639)) (EmptyCell!11584) )
))
(declare-fun mapValue!38373 () ValueCell!11584)

(declare-fun mapKey!38373 () (_ BitVec 32))

(declare-datatypes ((array!65228 0))(
  ( (array!65229 (arr!31397 (Array (_ BitVec 32) (_ BitVec 64))) (size!31926 (_ BitVec 32))) )
))
(declare-datatypes ((array!65230 0))(
  ( (array!65231 (arr!31398 (Array (_ BitVec 32) ValueCell!11584)) (size!31927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5762 0))(
  ( (LongMapFixedSize!5763 (defaultEntry!6259 Int) (mask!30143 (_ BitVec 32)) (extraKeys!5989 (_ BitVec 32)) (zeroValue!6093 V!37639) (minValue!6095 V!37639) (_size!2936 (_ BitVec 32)) (_keys!11443 array!65228) (_values!6282 array!65230) (_vacant!2936 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5762)

(declare-fun mapRest!38373 () (Array (_ BitVec 32) ValueCell!11584))

(assert (=> mapNonEmpty!38373 (= (arr!31398 (_values!6282 thiss!1427)) (store mapRest!38373 mapKey!38373 mapValue!38373))))

(declare-fun b!1035514 () Bool)

(declare-fun res!691469 () Bool)

(declare-fun e!585596 () Bool)

(assert (=> b!1035514 (=> (not res!691469) (not e!585596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035514 (= res!691469 (validMask!0 (mask!30143 thiss!1427)))))

(declare-fun b!1035515 () Bool)

(assert (=> b!1035515 (= e!585596 (and (= (size!31927 (_values!6282 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30143 thiss!1427))) (= (size!31926 (_keys!11443 thiss!1427)) (size!31927 (_values!6282 thiss!1427))) (bvsge (mask!30143 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5989 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5989 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5989 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5989 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!5989 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5989 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))))

(declare-fun b!1035516 () Bool)

(declare-fun res!691468 () Bool)

(assert (=> b!1035516 (=> (not res!691468) (not e!585596))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035516 (= res!691468 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035517 () Bool)

(declare-fun e!585598 () Bool)

(declare-fun e!585595 () Bool)

(assert (=> b!1035517 (= e!585598 (and e!585595 mapRes!38373))))

(declare-fun condMapEmpty!38373 () Bool)

(declare-fun mapDefault!38373 () ValueCell!11584)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90576 () Bool)

(assert start!90576)

(declare-fun b!1035606 () Bool)

(declare-fun b_free!20863 () Bool)

(declare-fun b_next!20863 () Bool)

(assert (=> b!1035606 (= b_free!20863 (not b_next!20863))))

(declare-fun tp!73718 () Bool)

(declare-fun b_and!33381 () Bool)

(assert (=> b!1035606 (= tp!73718 b_and!33381)))

(declare-fun b!1035600 () Bool)

(declare-fun res!691506 () Bool)

(declare-fun e!585670 () Bool)

(assert (=> b!1035600 (=> (not res!691506) (not e!585670))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035600 (= res!691506 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035601 () Bool)

(declare-fun res!691508 () Bool)

(assert (=> b!1035601 (=> (not res!691508) (not e!585670))))

(declare-datatypes ((V!37651 0))(
  ( (V!37652 (val!12342 Int)) )
))
(declare-datatypes ((ValueCell!11588 0))(
  ( (ValueCellFull!11588 (v!14923 V!37651)) (EmptyCell!11588) )
))
(declare-datatypes ((array!65244 0))(
  ( (array!65245 (arr!31405 (Array (_ BitVec 32) (_ BitVec 64))) (size!31934 (_ BitVec 32))) )
))
(declare-datatypes ((array!65246 0))(
  ( (array!65247 (arr!31406 (Array (_ BitVec 32) ValueCell!11588)) (size!31935 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5770 0))(
  ( (LongMapFixedSize!5771 (defaultEntry!6263 Int) (mask!30151 (_ BitVec 32)) (extraKeys!5993 (_ BitVec 32)) (zeroValue!6097 V!37651) (minValue!6099 V!37651) (_size!2940 (_ BitVec 32)) (_keys!11447 array!65244) (_values!6286 array!65246) (_vacant!2940 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5770)

(assert (=> b!1035601 (= res!691508 (and (= (size!31935 (_values!6286 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30151 thiss!1427))) (= (size!31934 (_keys!11447 thiss!1427)) (size!31935 (_values!6286 thiss!1427))) (bvsge (mask!30151 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5993 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5993 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5993 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5993 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5993 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5993 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5993 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!38385 () Bool)

(declare-fun mapRes!38385 () Bool)

(declare-fun tp!73717 () Bool)

(declare-fun e!585669 () Bool)

(assert (=> mapNonEmpty!38385 (= mapRes!38385 (and tp!73717 e!585669))))

(declare-fun mapRest!38385 () (Array (_ BitVec 32) ValueCell!11588))

(declare-fun mapKey!38385 () (_ BitVec 32))

(declare-fun mapValue!38385 () ValueCell!11588)

(assert (=> mapNonEmpty!38385 (= (arr!31406 (_values!6286 thiss!1427)) (store mapRest!38385 mapKey!38385 mapValue!38385))))

(declare-fun b!1035603 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65244 (_ BitVec 32)) Bool)

(assert (=> b!1035603 (= e!585670 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11447 thiss!1427) (mask!30151 thiss!1427))))))

(declare-fun b!1035604 () Bool)

(declare-fun tp_is_empty!24583 () Bool)

(assert (=> b!1035604 (= e!585669 tp_is_empty!24583)))

(declare-fun b!1035605 () Bool)

(declare-fun res!691509 () Bool)

(assert (=> b!1035605 (=> (not res!691509) (not e!585670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035605 (= res!691509 (validMask!0 (mask!30151 thiss!1427)))))

(declare-fun mapIsEmpty!38385 () Bool)

(assert (=> mapIsEmpty!38385 mapRes!38385))

(declare-fun res!691507 () Bool)

(assert (=> start!90576 (=> (not res!691507) (not e!585670))))

(declare-fun valid!2127 (LongMapFixedSize!5770) Bool)

(assert (=> start!90576 (= res!691507 (valid!2127 thiss!1427))))

(assert (=> start!90576 e!585670))

(declare-fun e!585667 () Bool)

(assert (=> start!90576 e!585667))

(assert (=> start!90576 true))

(declare-fun b!1035602 () Bool)

(declare-fun e!585668 () Bool)

(declare-fun e!585671 () Bool)

(assert (=> b!1035602 (= e!585668 (and e!585671 mapRes!38385))))

(declare-fun condMapEmpty!38385 () Bool)

(declare-fun mapDefault!38385 () ValueCell!11588)


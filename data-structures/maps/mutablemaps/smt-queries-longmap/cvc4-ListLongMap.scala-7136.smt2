; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90596 () Bool)

(assert start!90596)

(declare-fun b!1035762 () Bool)

(declare-fun b_free!20873 () Bool)

(declare-fun b_next!20873 () Bool)

(assert (=> b!1035762 (= b_free!20873 (not b_next!20873))))

(declare-fun tp!73750 () Bool)

(declare-fun b_and!33391 () Bool)

(assert (=> b!1035762 (= tp!73750 b_and!33391)))

(declare-fun b!1035757 () Bool)

(declare-fun res!691589 () Bool)

(declare-fun e!585776 () Bool)

(assert (=> b!1035757 (=> (not res!691589) (not e!585776))))

(declare-datatypes ((V!37663 0))(
  ( (V!37664 (val!12347 Int)) )
))
(declare-datatypes ((ValueCell!11593 0))(
  ( (ValueCellFull!11593 (v!14928 V!37663)) (EmptyCell!11593) )
))
(declare-datatypes ((array!65266 0))(
  ( (array!65267 (arr!31415 (Array (_ BitVec 32) (_ BitVec 64))) (size!31944 (_ BitVec 32))) )
))
(declare-datatypes ((array!65268 0))(
  ( (array!65269 (arr!31416 (Array (_ BitVec 32) ValueCell!11593)) (size!31945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5780 0))(
  ( (LongMapFixedSize!5781 (defaultEntry!6268 Int) (mask!30160 (_ BitVec 32)) (extraKeys!5998 (_ BitVec 32)) (zeroValue!6102 V!37663) (minValue!6104 V!37663) (_size!2945 (_ BitVec 32)) (_keys!11453 array!65266) (_values!6291 array!65268) (_vacant!2945 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5780)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65266 (_ BitVec 32)) Bool)

(assert (=> b!1035757 (= res!691589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11453 thiss!1427) (mask!30160 thiss!1427)))))

(declare-fun b!1035758 () Bool)

(declare-fun e!585775 () Bool)

(declare-fun tp_is_empty!24593 () Bool)

(assert (=> b!1035758 (= e!585775 tp_is_empty!24593)))

(declare-fun b!1035759 () Bool)

(declare-datatypes ((List!22033 0))(
  ( (Nil!22030) (Cons!22029 (h!23231 (_ BitVec 64)) (t!31243 List!22033)) )
))
(declare-fun arrayNoDuplicates!0 (array!65266 (_ BitVec 32) List!22033) Bool)

(assert (=> b!1035759 (= e!585776 (not (arrayNoDuplicates!0 (_keys!11453 thiss!1427) #b00000000000000000000000000000000 Nil!22030)))))

(declare-fun b!1035760 () Bool)

(declare-fun e!585777 () Bool)

(assert (=> b!1035760 (= e!585777 tp_is_empty!24593)))

(declare-fun mapNonEmpty!38403 () Bool)

(declare-fun mapRes!38403 () Bool)

(declare-fun tp!73751 () Bool)

(assert (=> mapNonEmpty!38403 (= mapRes!38403 (and tp!73751 e!585777))))

(declare-fun mapKey!38403 () (_ BitVec 32))

(declare-fun mapValue!38403 () ValueCell!11593)

(declare-fun mapRest!38403 () (Array (_ BitVec 32) ValueCell!11593))

(assert (=> mapNonEmpty!38403 (= (arr!31416 (_values!6291 thiss!1427)) (store mapRest!38403 mapKey!38403 mapValue!38403))))

(declare-fun res!691592 () Bool)

(assert (=> start!90596 (=> (not res!691592) (not e!585776))))

(declare-fun valid!2130 (LongMapFixedSize!5780) Bool)

(assert (=> start!90596 (= res!691592 (valid!2130 thiss!1427))))

(assert (=> start!90596 e!585776))

(declare-fun e!585774 () Bool)

(assert (=> start!90596 e!585774))

(assert (=> start!90596 true))

(declare-fun b!1035761 () Bool)

(declare-fun res!691590 () Bool)

(assert (=> b!1035761 (=> (not res!691590) (not e!585776))))

(assert (=> b!1035761 (= res!691590 (and (= (size!31945 (_values!6291 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30160 thiss!1427))) (= (size!31944 (_keys!11453 thiss!1427)) (size!31945 (_values!6291 thiss!1427))) (bvsge (mask!30160 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5998 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5998 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5998 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5998 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5998 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5998 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5998 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!585778 () Bool)

(declare-fun array_inv!24129 (array!65266) Bool)

(declare-fun array_inv!24130 (array!65268) Bool)

(assert (=> b!1035762 (= e!585774 (and tp!73750 tp_is_empty!24593 (array_inv!24129 (_keys!11453 thiss!1427)) (array_inv!24130 (_values!6291 thiss!1427)) e!585778))))

(declare-fun b!1035763 () Bool)

(assert (=> b!1035763 (= e!585778 (and e!585775 mapRes!38403))))

(declare-fun condMapEmpty!38403 () Bool)

(declare-fun mapDefault!38403 () ValueCell!11593)


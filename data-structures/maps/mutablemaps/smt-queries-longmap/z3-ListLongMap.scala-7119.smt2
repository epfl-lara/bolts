; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90286 () Bool)

(assert start!90286)

(declare-fun b!1033127 () Bool)

(declare-fun b_free!20769 () Bool)

(declare-fun b_next!20769 () Bool)

(assert (=> b!1033127 (= b_free!20769 (not b_next!20769))))

(declare-fun tp!73401 () Bool)

(declare-fun b_and!33255 () Bool)

(assert (=> b!1033127 (= tp!73401 b_and!33255)))

(declare-fun mapNonEmpty!38210 () Bool)

(declare-fun mapRes!38210 () Bool)

(declare-fun tp!73402 () Bool)

(declare-fun e!583930 () Bool)

(assert (=> mapNonEmpty!38210 (= mapRes!38210 (and tp!73402 e!583930))))

(declare-fun mapKey!38210 () (_ BitVec 32))

(declare-datatypes ((V!37525 0))(
  ( (V!37526 (val!12295 Int)) )
))
(declare-datatypes ((ValueCell!11541 0))(
  ( (ValueCellFull!11541 (v!14873 V!37525)) (EmptyCell!11541) )
))
(declare-datatypes ((array!65038 0))(
  ( (array!65039 (arr!31311 (Array (_ BitVec 32) (_ BitVec 64))) (size!31834 (_ BitVec 32))) )
))
(declare-datatypes ((array!65040 0))(
  ( (array!65041 (arr!31312 (Array (_ BitVec 32) ValueCell!11541)) (size!31835 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5676 0))(
  ( (LongMapFixedSize!5677 (defaultEntry!6212 Int) (mask!30050 (_ BitVec 32)) (extraKeys!5944 (_ BitVec 32)) (zeroValue!6048 V!37525) (minValue!6048 V!37525) (_size!2893 (_ BitVec 32)) (_keys!11387 array!65038) (_values!6235 array!65040) (_vacant!2893 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5676)

(declare-fun mapRest!38210 () (Array (_ BitVec 32) ValueCell!11541))

(declare-fun mapValue!38210 () ValueCell!11541)

(assert (=> mapNonEmpty!38210 (= (arr!31312 (_values!6235 thiss!1427)) (store mapRest!38210 mapKey!38210 mapValue!38210))))

(declare-fun res!690440 () Bool)

(declare-fun e!583926 () Bool)

(assert (=> start!90286 (=> (not res!690440) (not e!583926))))

(declare-fun valid!2096 (LongMapFixedSize!5676) Bool)

(assert (=> start!90286 (= res!690440 (valid!2096 thiss!1427))))

(assert (=> start!90286 e!583926))

(declare-fun e!583927 () Bool)

(assert (=> start!90286 e!583927))

(assert (=> start!90286 true))

(declare-fun b!1033122 () Bool)

(declare-fun tp_is_empty!24489 () Bool)

(assert (=> b!1033122 (= e!583930 tp_is_empty!24489)))

(declare-fun b!1033123 () Bool)

(assert (=> b!1033123 (= e!583926 (and (= (size!31835 (_values!6235 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30050 thiss!1427))) (= (size!31834 (_keys!11387 thiss!1427)) (size!31835 (_values!6235 thiss!1427))) (bvsge (mask!30050 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5944 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5944 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5944 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsgt (bvand (extraKeys!5944 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011)))))

(declare-fun b!1033124 () Bool)

(declare-fun e!583929 () Bool)

(assert (=> b!1033124 (= e!583929 tp_is_empty!24489)))

(declare-fun b!1033125 () Bool)

(declare-fun res!690439 () Bool)

(assert (=> b!1033125 (=> (not res!690439) (not e!583926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033125 (= res!690439 (validMask!0 (mask!30050 thiss!1427)))))

(declare-fun b!1033126 () Bool)

(declare-fun res!690441 () Bool)

(assert (=> b!1033126 (=> (not res!690441) (not e!583926))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033126 (= res!690441 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38210 () Bool)

(assert (=> mapIsEmpty!38210 mapRes!38210))

(declare-fun e!583928 () Bool)

(declare-fun array_inv!24063 (array!65038) Bool)

(declare-fun array_inv!24064 (array!65040) Bool)

(assert (=> b!1033127 (= e!583927 (and tp!73401 tp_is_empty!24489 (array_inv!24063 (_keys!11387 thiss!1427)) (array_inv!24064 (_values!6235 thiss!1427)) e!583928))))

(declare-fun b!1033128 () Bool)

(assert (=> b!1033128 (= e!583928 (and e!583929 mapRes!38210))))

(declare-fun condMapEmpty!38210 () Bool)

(declare-fun mapDefault!38210 () ValueCell!11541)

(assert (=> b!1033128 (= condMapEmpty!38210 (= (arr!31312 (_values!6235 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11541)) mapDefault!38210)))))

(assert (= (and start!90286 res!690440) b!1033126))

(assert (= (and b!1033126 res!690441) b!1033125))

(assert (= (and b!1033125 res!690439) b!1033123))

(assert (= (and b!1033128 condMapEmpty!38210) mapIsEmpty!38210))

(assert (= (and b!1033128 (not condMapEmpty!38210)) mapNonEmpty!38210))

(get-info :version)

(assert (= (and mapNonEmpty!38210 ((_ is ValueCellFull!11541) mapValue!38210)) b!1033122))

(assert (= (and b!1033128 ((_ is ValueCellFull!11541) mapDefault!38210)) b!1033124))

(assert (= b!1033127 b!1033128))

(assert (= start!90286 b!1033127))

(declare-fun m!953151 () Bool)

(assert (=> mapNonEmpty!38210 m!953151))

(declare-fun m!953153 () Bool)

(assert (=> start!90286 m!953153))

(declare-fun m!953155 () Bool)

(assert (=> b!1033125 m!953155))

(declare-fun m!953157 () Bool)

(assert (=> b!1033127 m!953157))

(declare-fun m!953159 () Bool)

(assert (=> b!1033127 m!953159))

(check-sat (not b!1033125) (not b_next!20769) tp_is_empty!24489 b_and!33255 (not start!90286) (not b!1033127) (not mapNonEmpty!38210))
(check-sat b_and!33255 (not b_next!20769))

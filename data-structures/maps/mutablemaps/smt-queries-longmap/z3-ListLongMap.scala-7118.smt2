; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90280 () Bool)

(assert start!90280)

(declare-fun b!1033060 () Bool)

(declare-fun b_free!20763 () Bool)

(declare-fun b_next!20763 () Bool)

(assert (=> b!1033060 (= b_free!20763 (not b_next!20763))))

(declare-fun tp!73384 () Bool)

(declare-fun b_and!33249 () Bool)

(assert (=> b!1033060 (= tp!73384 b_and!33249)))

(declare-fun b!1033059 () Bool)

(declare-fun res!690413 () Bool)

(declare-fun e!583873 () Bool)

(assert (=> b!1033059 (=> (not res!690413) (not e!583873))))

(declare-datatypes ((V!37517 0))(
  ( (V!37518 (val!12292 Int)) )
))
(declare-datatypes ((ValueCell!11538 0))(
  ( (ValueCellFull!11538 (v!14870 V!37517)) (EmptyCell!11538) )
))
(declare-datatypes ((array!65026 0))(
  ( (array!65027 (arr!31305 (Array (_ BitVec 32) (_ BitVec 64))) (size!31828 (_ BitVec 32))) )
))
(declare-datatypes ((array!65028 0))(
  ( (array!65029 (arr!31306 (Array (_ BitVec 32) ValueCell!11538)) (size!31829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5670 0))(
  ( (LongMapFixedSize!5671 (defaultEntry!6209 Int) (mask!30045 (_ BitVec 32)) (extraKeys!5941 (_ BitVec 32)) (zeroValue!6045 V!37517) (minValue!6045 V!37517) (_size!2890 (_ BitVec 32)) (_keys!11384 array!65026) (_values!6232 array!65028) (_vacant!2890 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5670)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033059 (= res!690413 (validMask!0 (mask!30045 thiss!1427)))))

(declare-fun e!583877 () Bool)

(declare-fun tp_is_empty!24483 () Bool)

(declare-fun e!583874 () Bool)

(declare-fun array_inv!24059 (array!65026) Bool)

(declare-fun array_inv!24060 (array!65028) Bool)

(assert (=> b!1033060 (= e!583874 (and tp!73384 tp_is_empty!24483 (array_inv!24059 (_keys!11384 thiss!1427)) (array_inv!24060 (_values!6232 thiss!1427)) e!583877))))

(declare-fun mapNonEmpty!38201 () Bool)

(declare-fun mapRes!38201 () Bool)

(declare-fun tp!73383 () Bool)

(declare-fun e!583872 () Bool)

(assert (=> mapNonEmpty!38201 (= mapRes!38201 (and tp!73383 e!583872))))

(declare-fun mapValue!38201 () ValueCell!11538)

(declare-fun mapKey!38201 () (_ BitVec 32))

(declare-fun mapRest!38201 () (Array (_ BitVec 32) ValueCell!11538))

(assert (=> mapNonEmpty!38201 (= (arr!31306 (_values!6232 thiss!1427)) (store mapRest!38201 mapKey!38201 mapValue!38201))))

(declare-fun b!1033061 () Bool)

(declare-fun e!583876 () Bool)

(assert (=> b!1033061 (= e!583876 tp_is_empty!24483)))

(declare-fun b!1033062 () Bool)

(assert (=> b!1033062 (= e!583877 (and e!583876 mapRes!38201))))

(declare-fun condMapEmpty!38201 () Bool)

(declare-fun mapDefault!38201 () ValueCell!11538)

(assert (=> b!1033062 (= condMapEmpty!38201 (= (arr!31306 (_values!6232 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11538)) mapDefault!38201)))))

(declare-fun mapIsEmpty!38201 () Bool)

(assert (=> mapIsEmpty!38201 mapRes!38201))

(declare-fun res!690414 () Bool)

(assert (=> start!90280 (=> (not res!690414) (not e!583873))))

(declare-fun valid!2095 (LongMapFixedSize!5670) Bool)

(assert (=> start!90280 (= res!690414 (valid!2095 thiss!1427))))

(assert (=> start!90280 e!583873))

(assert (=> start!90280 e!583874))

(assert (=> start!90280 true))

(declare-fun b!1033063 () Bool)

(assert (=> b!1033063 (= e!583873 (and (= (size!31829 (_values!6232 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30045 thiss!1427))) (= (size!31828 (_keys!11384 thiss!1427)) (size!31829 (_values!6232 thiss!1427))) (bvsge (mask!30045 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5941 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5941 thiss!1427) #b00000000000000000000000000000011) (bvslt (bvand (extraKeys!5941 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1033064 () Bool)

(declare-fun res!690412 () Bool)

(assert (=> b!1033064 (=> (not res!690412) (not e!583873))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033064 (= res!690412 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033065 () Bool)

(assert (=> b!1033065 (= e!583872 tp_is_empty!24483)))

(assert (= (and start!90280 res!690414) b!1033064))

(assert (= (and b!1033064 res!690412) b!1033059))

(assert (= (and b!1033059 res!690413) b!1033063))

(assert (= (and b!1033062 condMapEmpty!38201) mapIsEmpty!38201))

(assert (= (and b!1033062 (not condMapEmpty!38201)) mapNonEmpty!38201))

(get-info :version)

(assert (= (and mapNonEmpty!38201 ((_ is ValueCellFull!11538) mapValue!38201)) b!1033065))

(assert (= (and b!1033062 ((_ is ValueCellFull!11538) mapDefault!38201)) b!1033061))

(assert (= b!1033060 b!1033062))

(assert (= start!90280 b!1033060))

(declare-fun m!953121 () Bool)

(assert (=> b!1033059 m!953121))

(declare-fun m!953123 () Bool)

(assert (=> b!1033060 m!953123))

(declare-fun m!953125 () Bool)

(assert (=> b!1033060 m!953125))

(declare-fun m!953127 () Bool)

(assert (=> mapNonEmpty!38201 m!953127))

(declare-fun m!953129 () Bool)

(assert (=> start!90280 m!953129))

(check-sat (not b!1033060) (not b_next!20763) (not mapNonEmpty!38201) b_and!33249 (not b!1033059) (not start!90280) tp_is_empty!24483)
(check-sat b_and!33249 (not b_next!20763))

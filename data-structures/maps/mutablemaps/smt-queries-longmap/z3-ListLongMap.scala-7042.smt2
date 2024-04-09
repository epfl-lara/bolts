; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89302 () Bool)

(assert start!89302)

(declare-fun b!1023548 () Bool)

(declare-fun b_free!20307 () Bool)

(declare-fun b_next!20307 () Bool)

(assert (=> b!1023548 (= b_free!20307 (not b_next!20307))))

(declare-fun tp!71957 () Bool)

(declare-fun b_and!32547 () Bool)

(assert (=> b!1023548 (= tp!71957 b_and!32547)))

(declare-fun b!1023545 () Bool)

(declare-fun res!685577 () Bool)

(declare-fun e!576810 () Bool)

(assert (=> b!1023545 (=> (not res!685577) (not e!576810))))

(declare-datatypes ((V!36909 0))(
  ( (V!36910 (val!12064 Int)) )
))
(declare-datatypes ((ValueCell!11310 0))(
  ( (ValueCellFull!11310 (v!14634 V!36909)) (EmptyCell!11310) )
))
(declare-datatypes ((array!64082 0))(
  ( (array!64083 (arr!30849 (Array (_ BitVec 32) (_ BitVec 64))) (size!31361 (_ BitVec 32))) )
))
(declare-datatypes ((array!64084 0))(
  ( (array!64085 (arr!30850 (Array (_ BitVec 32) ValueCell!11310)) (size!31362 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5214 0))(
  ( (LongMapFixedSize!5215 (defaultEntry!5959 Int) (mask!29579 (_ BitVec 32)) (extraKeys!5691 (_ BitVec 32)) (zeroValue!5795 V!36909) (minValue!5795 V!36909) (_size!2662 (_ BitVec 32)) (_keys!11101 array!64082) (_values!5982 array!64084) (_vacant!2662 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5214)

(assert (=> b!1023545 (= res!685577 (and (= (size!31362 (_values!5982 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29579 thiss!1427))) (= (size!31361 (_keys!11101 thiss!1427)) (size!31362 (_values!5982 thiss!1427))) (bvsge (mask!29579 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5691 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5691 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5691 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5691 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5691 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5691 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5691 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023546 () Bool)

(declare-fun e!576806 () Bool)

(declare-fun tp_is_empty!24027 () Bool)

(assert (=> b!1023546 (= e!576806 tp_is_empty!24027)))

(declare-fun res!685575 () Bool)

(assert (=> start!89302 (=> (not res!685575) (not e!576810))))

(declare-fun valid!1943 (LongMapFixedSize!5214) Bool)

(assert (=> start!89302 (= res!685575 (valid!1943 thiss!1427))))

(assert (=> start!89302 e!576810))

(declare-fun e!576807 () Bool)

(assert (=> start!89302 e!576807))

(assert (=> start!89302 true))

(declare-fun b!1023547 () Bool)

(declare-fun e!576809 () Bool)

(assert (=> b!1023547 (= e!576809 tp_is_empty!24027)))

(declare-fun e!576808 () Bool)

(declare-fun array_inv!23771 (array!64082) Bool)

(declare-fun array_inv!23772 (array!64084) Bool)

(assert (=> b!1023548 (= e!576807 (and tp!71957 tp_is_empty!24027 (array_inv!23771 (_keys!11101 thiss!1427)) (array_inv!23772 (_values!5982 thiss!1427)) e!576808))))

(declare-fun b!1023549 () Bool)

(declare-fun res!685576 () Bool)

(assert (=> b!1023549 (=> (not res!685576) (not e!576810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023549 (= res!685576 (validMask!0 (mask!29579 thiss!1427)))))

(declare-fun b!1023550 () Bool)

(declare-fun mapRes!37458 () Bool)

(assert (=> b!1023550 (= e!576808 (and e!576806 mapRes!37458))))

(declare-fun condMapEmpty!37458 () Bool)

(declare-fun mapDefault!37458 () ValueCell!11310)

(assert (=> b!1023550 (= condMapEmpty!37458 (= (arr!30850 (_values!5982 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11310)) mapDefault!37458)))))

(declare-fun b!1023551 () Bool)

(assert (=> b!1023551 (= e!576810 false)))

(declare-fun lt!450403 () Bool)

(declare-datatypes ((List!21817 0))(
  ( (Nil!21814) (Cons!21813 (h!23011 (_ BitVec 64)) (t!30862 List!21817)) )
))
(declare-fun arrayNoDuplicates!0 (array!64082 (_ BitVec 32) List!21817) Bool)

(assert (=> b!1023551 (= lt!450403 (arrayNoDuplicates!0 (_keys!11101 thiss!1427) #b00000000000000000000000000000000 Nil!21814))))

(declare-fun mapNonEmpty!37458 () Bool)

(declare-fun tp!71956 () Bool)

(assert (=> mapNonEmpty!37458 (= mapRes!37458 (and tp!71956 e!576809))))

(declare-fun mapValue!37458 () ValueCell!11310)

(declare-fun mapKey!37458 () (_ BitVec 32))

(declare-fun mapRest!37458 () (Array (_ BitVec 32) ValueCell!11310))

(assert (=> mapNonEmpty!37458 (= (arr!30850 (_values!5982 thiss!1427)) (store mapRest!37458 mapKey!37458 mapValue!37458))))

(declare-fun b!1023552 () Bool)

(declare-fun res!685574 () Bool)

(assert (=> b!1023552 (=> (not res!685574) (not e!576810))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023552 (= res!685574 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023553 () Bool)

(declare-fun res!685578 () Bool)

(assert (=> b!1023553 (=> (not res!685578) (not e!576810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64082 (_ BitVec 32)) Bool)

(assert (=> b!1023553 (= res!685578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11101 thiss!1427) (mask!29579 thiss!1427)))))

(declare-fun mapIsEmpty!37458 () Bool)

(assert (=> mapIsEmpty!37458 mapRes!37458))

(assert (= (and start!89302 res!685575) b!1023552))

(assert (= (and b!1023552 res!685574) b!1023549))

(assert (= (and b!1023549 res!685576) b!1023545))

(assert (= (and b!1023545 res!685577) b!1023553))

(assert (= (and b!1023553 res!685578) b!1023551))

(assert (= (and b!1023550 condMapEmpty!37458) mapIsEmpty!37458))

(assert (= (and b!1023550 (not condMapEmpty!37458)) mapNonEmpty!37458))

(get-info :version)

(assert (= (and mapNonEmpty!37458 ((_ is ValueCellFull!11310) mapValue!37458)) b!1023547))

(assert (= (and b!1023550 ((_ is ValueCellFull!11310) mapDefault!37458)) b!1023546))

(assert (= b!1023548 b!1023550))

(assert (= start!89302 b!1023548))

(declare-fun m!942289 () Bool)

(assert (=> b!1023551 m!942289))

(declare-fun m!942291 () Bool)

(assert (=> b!1023553 m!942291))

(declare-fun m!942293 () Bool)

(assert (=> start!89302 m!942293))

(declare-fun m!942295 () Bool)

(assert (=> b!1023549 m!942295))

(declare-fun m!942297 () Bool)

(assert (=> b!1023548 m!942297))

(declare-fun m!942299 () Bool)

(assert (=> b!1023548 m!942299))

(declare-fun m!942301 () Bool)

(assert (=> mapNonEmpty!37458 m!942301))

(check-sat (not mapNonEmpty!37458) b_and!32547 (not b!1023548) tp_is_empty!24027 (not b!1023549) (not start!89302) (not b_next!20307) (not b!1023551) (not b!1023553))
(check-sat b_and!32547 (not b_next!20307))

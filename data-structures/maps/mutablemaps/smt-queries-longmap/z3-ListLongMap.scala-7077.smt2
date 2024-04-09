; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89554 () Bool)

(assert start!89554)

(declare-fun b!1026655 () Bool)

(declare-fun b_free!20517 () Bool)

(declare-fun b_next!20517 () Bool)

(assert (=> b!1026655 (= b_free!20517 (not b_next!20517))))

(declare-fun tp!72597 () Bool)

(declare-fun b_and!32781 () Bool)

(assert (=> b!1026655 (= tp!72597 b_and!32781)))

(declare-fun mapIsEmpty!37784 () Bool)

(declare-fun mapRes!37784 () Bool)

(assert (=> mapIsEmpty!37784 mapRes!37784))

(declare-fun res!687318 () Bool)

(declare-fun e!579267 () Bool)

(assert (=> start!89554 (=> (not res!687318) (not e!579267))))

(declare-datatypes ((V!37189 0))(
  ( (V!37190 (val!12169 Int)) )
))
(declare-datatypes ((ValueCell!11415 0))(
  ( (ValueCellFull!11415 (v!14739 V!37189)) (EmptyCell!11415) )
))
(declare-datatypes ((array!64508 0))(
  ( (array!64509 (arr!31059 (Array (_ BitVec 32) (_ BitVec 64))) (size!31573 (_ BitVec 32))) )
))
(declare-datatypes ((array!64510 0))(
  ( (array!64511 (arr!31060 (Array (_ BitVec 32) ValueCell!11415)) (size!31574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5424 0))(
  ( (LongMapFixedSize!5425 (defaultEntry!6064 Int) (mask!29759 (_ BitVec 32)) (extraKeys!5796 (_ BitVec 32)) (zeroValue!5900 V!37189) (minValue!5900 V!37189) (_size!2767 (_ BitVec 32)) (_keys!11208 array!64508) (_values!6087 array!64510) (_vacant!2767 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5424)

(declare-fun valid!2012 (LongMapFixedSize!5424) Bool)

(assert (=> start!89554 (= res!687318 (valid!2012 thiss!1427))))

(assert (=> start!89554 e!579267))

(declare-fun e!579272 () Bool)

(assert (=> start!89554 e!579272))

(assert (=> start!89554 true))

(declare-fun b!1026647 () Bool)

(declare-fun res!687321 () Bool)

(assert (=> b!1026647 (=> (not res!687321) (not e!579267))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026647 (= res!687321 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026648 () Bool)

(declare-fun res!687320 () Bool)

(declare-fun e!579268 () Bool)

(assert (=> b!1026648 (=> res!687320 e!579268)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64508 (_ BitVec 32)) Bool)

(assert (=> b!1026648 (= res!687320 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11208 thiss!1427) (mask!29759 thiss!1427))))))

(declare-fun b!1026649 () Bool)

(declare-fun e!579271 () Bool)

(declare-fun tp_is_empty!24237 () Bool)

(assert (=> b!1026649 (= e!579271 tp_is_empty!24237)))

(declare-fun mapNonEmpty!37784 () Bool)

(declare-fun tp!72598 () Bool)

(declare-fun e!579270 () Bool)

(assert (=> mapNonEmpty!37784 (= mapRes!37784 (and tp!72598 e!579270))))

(declare-fun mapKey!37784 () (_ BitVec 32))

(declare-fun mapRest!37784 () (Array (_ BitVec 32) ValueCell!11415))

(declare-fun mapValue!37784 () ValueCell!11415)

(assert (=> mapNonEmpty!37784 (= (arr!31060 (_values!6087 thiss!1427)) (store mapRest!37784 mapKey!37784 mapValue!37784))))

(declare-fun b!1026650 () Bool)

(declare-fun e!579265 () Bool)

(assert (=> b!1026650 (= e!579267 e!579265)))

(declare-fun res!687317 () Bool)

(assert (=> b!1026650 (=> (not res!687317) (not e!579265))))

(declare-datatypes ((SeekEntryResult!9641 0))(
  ( (MissingZero!9641 (index!40934 (_ BitVec 32))) (Found!9641 (index!40935 (_ BitVec 32))) (Intermediate!9641 (undefined!10453 Bool) (index!40936 (_ BitVec 32)) (x!91322 (_ BitVec 32))) (Undefined!9641) (MissingVacant!9641 (index!40937 (_ BitVec 32))) )
))
(declare-fun lt!451720 () SeekEntryResult!9641)

(get-info :version)

(assert (=> b!1026650 (= res!687317 ((_ is Found!9641) lt!451720))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64508 (_ BitVec 32)) SeekEntryResult!9641)

(assert (=> b!1026650 (= lt!451720 (seekEntry!0 key!909 (_keys!11208 thiss!1427) (mask!29759 thiss!1427)))))

(declare-fun b!1026651 () Bool)

(declare-fun e!579269 () Bool)

(assert (=> b!1026651 (= e!579269 (and e!579271 mapRes!37784))))

(declare-fun condMapEmpty!37784 () Bool)

(declare-fun mapDefault!37784 () ValueCell!11415)

(assert (=> b!1026651 (= condMapEmpty!37784 (= (arr!31060 (_values!6087 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11415)) mapDefault!37784)))))

(declare-fun b!1026652 () Bool)

(assert (=> b!1026652 (= e!579265 (not e!579268))))

(declare-fun res!687316 () Bool)

(assert (=> b!1026652 (=> res!687316 e!579268)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026652 (= res!687316 (not (validMask!0 (mask!29759 thiss!1427))))))

(declare-fun lt!451722 () array!64508)

(declare-fun arrayContainsKey!0 (array!64508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026652 (not (arrayContainsKey!0 lt!451722 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33414 0))(
  ( (Unit!33415) )
))
(declare-fun lt!451723 () Unit!33414)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64508 (_ BitVec 32) (_ BitVec 64)) Unit!33414)

(assert (=> b!1026652 (= lt!451723 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11208 thiss!1427) (index!40935 lt!451720) key!909))))

(assert (=> b!1026652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451722 (mask!29759 thiss!1427))))

(declare-fun lt!451719 () Unit!33414)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64508 (_ BitVec 32) (_ BitVec 32)) Unit!33414)

(assert (=> b!1026652 (= lt!451719 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11208 thiss!1427) (index!40935 lt!451720) (mask!29759 thiss!1427)))))

(declare-datatypes ((List!21892 0))(
  ( (Nil!21889) (Cons!21888 (h!23086 (_ BitVec 64)) (t!30961 List!21892)) )
))
(declare-fun arrayNoDuplicates!0 (array!64508 (_ BitVec 32) List!21892) Bool)

(assert (=> b!1026652 (arrayNoDuplicates!0 lt!451722 #b00000000000000000000000000000000 Nil!21889)))

(declare-fun lt!451721 () Unit!33414)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21892) Unit!33414)

(assert (=> b!1026652 (= lt!451721 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11208 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40935 lt!451720) #b00000000000000000000000000000000 Nil!21889))))

(declare-fun arrayCountValidKeys!0 (array!64508 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026652 (= (arrayCountValidKeys!0 lt!451722 #b00000000000000000000000000000000 (size!31573 (_keys!11208 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11208 thiss!1427) #b00000000000000000000000000000000 (size!31573 (_keys!11208 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026652 (= lt!451722 (array!64509 (store (arr!31059 (_keys!11208 thiss!1427)) (index!40935 lt!451720) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31573 (_keys!11208 thiss!1427))))))

(declare-fun lt!451717 () Unit!33414)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64508 (_ BitVec 32) (_ BitVec 64)) Unit!33414)

(assert (=> b!1026652 (= lt!451717 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11208 thiss!1427) (index!40935 lt!451720) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026653 () Bool)

(assert (=> b!1026653 (= e!579268 true)))

(declare-fun lt!451718 () Bool)

(assert (=> b!1026653 (= lt!451718 (arrayNoDuplicates!0 (_keys!11208 thiss!1427) #b00000000000000000000000000000000 Nil!21889))))

(declare-fun b!1026654 () Bool)

(assert (=> b!1026654 (= e!579270 tp_is_empty!24237)))

(declare-fun array_inv!23903 (array!64508) Bool)

(declare-fun array_inv!23904 (array!64510) Bool)

(assert (=> b!1026655 (= e!579272 (and tp!72597 tp_is_empty!24237 (array_inv!23903 (_keys!11208 thiss!1427)) (array_inv!23904 (_values!6087 thiss!1427)) e!579269))))

(declare-fun b!1026656 () Bool)

(declare-fun res!687319 () Bool)

(assert (=> b!1026656 (=> res!687319 e!579268)))

(assert (=> b!1026656 (= res!687319 (or (not (= (size!31574 (_values!6087 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29759 thiss!1427)))) (not (= (size!31573 (_keys!11208 thiss!1427)) (size!31574 (_values!6087 thiss!1427)))) (bvslt (mask!29759 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5796 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5796 thiss!1427) #b00000000000000000000000000000011)))))

(assert (= (and start!89554 res!687318) b!1026647))

(assert (= (and b!1026647 res!687321) b!1026650))

(assert (= (and b!1026650 res!687317) b!1026652))

(assert (= (and b!1026652 (not res!687316)) b!1026656))

(assert (= (and b!1026656 (not res!687319)) b!1026648))

(assert (= (and b!1026648 (not res!687320)) b!1026653))

(assert (= (and b!1026651 condMapEmpty!37784) mapIsEmpty!37784))

(assert (= (and b!1026651 (not condMapEmpty!37784)) mapNonEmpty!37784))

(assert (= (and mapNonEmpty!37784 ((_ is ValueCellFull!11415) mapValue!37784)) b!1026654))

(assert (= (and b!1026651 ((_ is ValueCellFull!11415) mapDefault!37784)) b!1026649))

(assert (= b!1026655 b!1026651))

(assert (= start!89554 b!1026655))

(declare-fun m!945103 () Bool)

(assert (=> b!1026652 m!945103))

(declare-fun m!945105 () Bool)

(assert (=> b!1026652 m!945105))

(declare-fun m!945107 () Bool)

(assert (=> b!1026652 m!945107))

(declare-fun m!945109 () Bool)

(assert (=> b!1026652 m!945109))

(declare-fun m!945111 () Bool)

(assert (=> b!1026652 m!945111))

(declare-fun m!945113 () Bool)

(assert (=> b!1026652 m!945113))

(declare-fun m!945115 () Bool)

(assert (=> b!1026652 m!945115))

(declare-fun m!945117 () Bool)

(assert (=> b!1026652 m!945117))

(declare-fun m!945119 () Bool)

(assert (=> b!1026652 m!945119))

(declare-fun m!945121 () Bool)

(assert (=> b!1026652 m!945121))

(declare-fun m!945123 () Bool)

(assert (=> b!1026652 m!945123))

(declare-fun m!945125 () Bool)

(assert (=> b!1026650 m!945125))

(declare-fun m!945127 () Bool)

(assert (=> b!1026655 m!945127))

(declare-fun m!945129 () Bool)

(assert (=> b!1026655 m!945129))

(declare-fun m!945131 () Bool)

(assert (=> start!89554 m!945131))

(declare-fun m!945133 () Bool)

(assert (=> mapNonEmpty!37784 m!945133))

(declare-fun m!945135 () Bool)

(assert (=> b!1026648 m!945135))

(declare-fun m!945137 () Bool)

(assert (=> b!1026653 m!945137))

(check-sat (not b!1026648) (not b!1026653) (not b!1026652) (not b!1026655) (not b_next!20517) (not mapNonEmpty!37784) (not start!89554) b_and!32781 (not b!1026650) tp_is_empty!24237)
(check-sat b_and!32781 (not b_next!20517))

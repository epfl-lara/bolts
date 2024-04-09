; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89512 () Bool)

(assert start!89512)

(declare-fun b!1026066 () Bool)

(declare-fun b_free!20475 () Bool)

(declare-fun b_next!20475 () Bool)

(assert (=> b!1026066 (= b_free!20475 (not b_next!20475))))

(declare-fun tp!72472 () Bool)

(declare-fun b_and!32739 () Bool)

(assert (=> b!1026066 (= tp!72472 b_and!32739)))

(declare-fun b!1026061 () Bool)

(declare-fun e!578765 () Bool)

(declare-fun e!578764 () Bool)

(assert (=> b!1026061 (= e!578765 (not e!578764))))

(declare-fun res!686985 () Bool)

(assert (=> b!1026061 (=> res!686985 e!578764)))

(declare-datatypes ((SeekEntryResult!9624 0))(
  ( (MissingZero!9624 (index!40866 (_ BitVec 32))) (Found!9624 (index!40867 (_ BitVec 32))) (Intermediate!9624 (undefined!10436 Bool) (index!40868 (_ BitVec 32)) (x!91249 (_ BitVec 32))) (Undefined!9624) (MissingVacant!9624 (index!40869 (_ BitVec 32))) )
))
(declare-fun lt!451300 () SeekEntryResult!9624)

(declare-datatypes ((V!37133 0))(
  ( (V!37134 (val!12148 Int)) )
))
(declare-datatypes ((ValueCell!11394 0))(
  ( (ValueCellFull!11394 (v!14718 V!37133)) (EmptyCell!11394) )
))
(declare-datatypes ((array!64424 0))(
  ( (array!64425 (arr!31017 (Array (_ BitVec 32) (_ BitVec 64))) (size!31531 (_ BitVec 32))) )
))
(declare-datatypes ((array!64426 0))(
  ( (array!64427 (arr!31018 (Array (_ BitVec 32) ValueCell!11394)) (size!31532 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5382 0))(
  ( (LongMapFixedSize!5383 (defaultEntry!6043 Int) (mask!29724 (_ BitVec 32)) (extraKeys!5775 (_ BitVec 32)) (zeroValue!5879 V!37133) (minValue!5879 V!37133) (_size!2746 (_ BitVec 32)) (_keys!11187 array!64424) (_values!6066 array!64426) (_vacant!2746 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5382)

(assert (=> b!1026061 (= res!686985 (or (bvslt (index!40867 lt!451300) #b00000000000000000000000000000000) (bvsge (index!40867 lt!451300) (size!31531 (_keys!11187 thiss!1427))) (bvsge (size!31531 (_keys!11187 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451303 () array!64424)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64424 (_ BitVec 32)) Bool)

(assert (=> b!1026061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451303 (mask!29724 thiss!1427))))

(declare-datatypes ((Unit!33386 0))(
  ( (Unit!33387) )
))
(declare-fun lt!451301 () Unit!33386)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64424 (_ BitVec 32) (_ BitVec 32)) Unit!33386)

(assert (=> b!1026061 (= lt!451301 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11187 thiss!1427) (index!40867 lt!451300) (mask!29724 thiss!1427)))))

(declare-datatypes ((List!21877 0))(
  ( (Nil!21874) (Cons!21873 (h!23071 (_ BitVec 64)) (t!30946 List!21877)) )
))
(declare-fun arrayNoDuplicates!0 (array!64424 (_ BitVec 32) List!21877) Bool)

(assert (=> b!1026061 (arrayNoDuplicates!0 lt!451303 #b00000000000000000000000000000000 Nil!21874)))

(declare-fun lt!451298 () Unit!33386)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21877) Unit!33386)

(assert (=> b!1026061 (= lt!451298 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11187 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40867 lt!451300) #b00000000000000000000000000000000 Nil!21874))))

(declare-fun arrayCountValidKeys!0 (array!64424 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026061 (= (arrayCountValidKeys!0 lt!451303 #b00000000000000000000000000000000 (size!31531 (_keys!11187 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11187 thiss!1427) #b00000000000000000000000000000000 (size!31531 (_keys!11187 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026061 (= lt!451303 (array!64425 (store (arr!31017 (_keys!11187 thiss!1427)) (index!40867 lt!451300) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31531 (_keys!11187 thiss!1427))))))

(declare-fun lt!451302 () Unit!33386)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64424 (_ BitVec 32) (_ BitVec 64)) Unit!33386)

(assert (=> b!1026061 (= lt!451302 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11187 thiss!1427) (index!40867 lt!451300) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026062 () Bool)

(assert (=> b!1026062 (= e!578764 true)))

(declare-fun lt!451299 () Bool)

(assert (=> b!1026062 (= lt!451299 (arrayNoDuplicates!0 (_keys!11187 thiss!1427) #b00000000000000000000000000000000 Nil!21874))))

(declare-fun b!1026063 () Bool)

(declare-fun e!578766 () Bool)

(declare-fun tp_is_empty!24195 () Bool)

(assert (=> b!1026063 (= e!578766 tp_is_empty!24195)))

(declare-fun res!686982 () Bool)

(declare-fun e!578761 () Bool)

(assert (=> start!89512 (=> (not res!686982) (not e!578761))))

(declare-fun valid!1996 (LongMapFixedSize!5382) Bool)

(assert (=> start!89512 (= res!686982 (valid!1996 thiss!1427))))

(assert (=> start!89512 e!578761))

(declare-fun e!578767 () Bool)

(assert (=> start!89512 e!578767))

(assert (=> start!89512 true))

(declare-fun b!1026064 () Bool)

(assert (=> b!1026064 (= e!578761 e!578765)))

(declare-fun res!686984 () Bool)

(assert (=> b!1026064 (=> (not res!686984) (not e!578765))))

(get-info :version)

(assert (=> b!1026064 (= res!686984 ((_ is Found!9624) lt!451300))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64424 (_ BitVec 32)) SeekEntryResult!9624)

(assert (=> b!1026064 (= lt!451300 (seekEntry!0 key!909 (_keys!11187 thiss!1427) (mask!29724 thiss!1427)))))

(declare-fun mapNonEmpty!37721 () Bool)

(declare-fun mapRes!37721 () Bool)

(declare-fun tp!72471 () Bool)

(declare-fun e!578768 () Bool)

(assert (=> mapNonEmpty!37721 (= mapRes!37721 (and tp!72471 e!578768))))

(declare-fun mapRest!37721 () (Array (_ BitVec 32) ValueCell!11394))

(declare-fun mapKey!37721 () (_ BitVec 32))

(declare-fun mapValue!37721 () ValueCell!11394)

(assert (=> mapNonEmpty!37721 (= (arr!31018 (_values!6066 thiss!1427)) (store mapRest!37721 mapKey!37721 mapValue!37721))))

(declare-fun b!1026065 () Bool)

(declare-fun res!686983 () Bool)

(assert (=> b!1026065 (=> (not res!686983) (not e!578761))))

(assert (=> b!1026065 (= res!686983 (not (= key!909 (bvneg key!909))))))

(declare-fun e!578763 () Bool)

(declare-fun array_inv!23873 (array!64424) Bool)

(declare-fun array_inv!23874 (array!64426) Bool)

(assert (=> b!1026066 (= e!578767 (and tp!72472 tp_is_empty!24195 (array_inv!23873 (_keys!11187 thiss!1427)) (array_inv!23874 (_values!6066 thiss!1427)) e!578763))))

(declare-fun b!1026067 () Bool)

(assert (=> b!1026067 (= e!578768 tp_is_empty!24195)))

(declare-fun b!1026068 () Bool)

(assert (=> b!1026068 (= e!578763 (and e!578766 mapRes!37721))))

(declare-fun condMapEmpty!37721 () Bool)

(declare-fun mapDefault!37721 () ValueCell!11394)

(assert (=> b!1026068 (= condMapEmpty!37721 (= (arr!31018 (_values!6066 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11394)) mapDefault!37721)))))

(declare-fun mapIsEmpty!37721 () Bool)

(assert (=> mapIsEmpty!37721 mapRes!37721))

(assert (= (and start!89512 res!686982) b!1026065))

(assert (= (and b!1026065 res!686983) b!1026064))

(assert (= (and b!1026064 res!686984) b!1026061))

(assert (= (and b!1026061 (not res!686985)) b!1026062))

(assert (= (and b!1026068 condMapEmpty!37721) mapIsEmpty!37721))

(assert (= (and b!1026068 (not condMapEmpty!37721)) mapNonEmpty!37721))

(assert (= (and mapNonEmpty!37721 ((_ is ValueCellFull!11394) mapValue!37721)) b!1026067))

(assert (= (and b!1026068 ((_ is ValueCellFull!11394) mapDefault!37721)) b!1026063))

(assert (= b!1026066 b!1026068))

(assert (= start!89512 b!1026066))

(declare-fun m!944411 () Bool)

(assert (=> b!1026062 m!944411))

(declare-fun m!944413 () Bool)

(assert (=> mapNonEmpty!37721 m!944413))

(declare-fun m!944415 () Bool)

(assert (=> b!1026066 m!944415))

(declare-fun m!944417 () Bool)

(assert (=> b!1026066 m!944417))

(declare-fun m!944419 () Bool)

(assert (=> start!89512 m!944419))

(declare-fun m!944421 () Bool)

(assert (=> b!1026061 m!944421))

(declare-fun m!944423 () Bool)

(assert (=> b!1026061 m!944423))

(declare-fun m!944425 () Bool)

(assert (=> b!1026061 m!944425))

(declare-fun m!944427 () Bool)

(assert (=> b!1026061 m!944427))

(declare-fun m!944429 () Bool)

(assert (=> b!1026061 m!944429))

(declare-fun m!944431 () Bool)

(assert (=> b!1026061 m!944431))

(declare-fun m!944433 () Bool)

(assert (=> b!1026061 m!944433))

(declare-fun m!944435 () Bool)

(assert (=> b!1026061 m!944435))

(declare-fun m!944437 () Bool)

(assert (=> b!1026064 m!944437))

(check-sat (not b_next!20475) (not start!89512) (not b!1026061) (not b!1026064) (not mapNonEmpty!37721) tp_is_empty!24195 (not b!1026062) b_and!32739 (not b!1026066))
(check-sat b_and!32739 (not b_next!20475))

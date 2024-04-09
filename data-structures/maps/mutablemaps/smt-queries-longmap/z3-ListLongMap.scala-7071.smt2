; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89518 () Bool)

(assert start!89518)

(declare-fun b!1026136 () Bool)

(declare-fun b_free!20481 () Bool)

(declare-fun b_next!20481 () Bool)

(assert (=> b!1026136 (= b_free!20481 (not b_next!20481))))

(declare-fun tp!72489 () Bool)

(declare-fun b_and!32745 () Bool)

(assert (=> b!1026136 (= tp!72489 b_and!32745)))

(declare-fun res!687018 () Bool)

(declare-fun e!578833 () Bool)

(assert (=> start!89518 (=> (not res!687018) (not e!578833))))

(declare-datatypes ((V!37141 0))(
  ( (V!37142 (val!12151 Int)) )
))
(declare-datatypes ((ValueCell!11397 0))(
  ( (ValueCellFull!11397 (v!14721 V!37141)) (EmptyCell!11397) )
))
(declare-datatypes ((array!64436 0))(
  ( (array!64437 (arr!31023 (Array (_ BitVec 32) (_ BitVec 64))) (size!31537 (_ BitVec 32))) )
))
(declare-datatypes ((array!64438 0))(
  ( (array!64439 (arr!31024 (Array (_ BitVec 32) ValueCell!11397)) (size!31538 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5388 0))(
  ( (LongMapFixedSize!5389 (defaultEntry!6046 Int) (mask!29729 (_ BitVec 32)) (extraKeys!5778 (_ BitVec 32)) (zeroValue!5882 V!37141) (minValue!5882 V!37141) (_size!2749 (_ BitVec 32)) (_keys!11190 array!64436) (_values!6069 array!64438) (_vacant!2749 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5388)

(declare-fun valid!1999 (LongMapFixedSize!5388) Bool)

(assert (=> start!89518 (= res!687018 (valid!1999 thiss!1427))))

(assert (=> start!89518 e!578833))

(declare-fun e!578836 () Bool)

(assert (=> start!89518 e!578836))

(assert (=> start!89518 true))

(declare-fun b!1026133 () Bool)

(declare-fun e!578834 () Bool)

(declare-fun tp_is_empty!24201 () Bool)

(assert (=> b!1026133 (= e!578834 tp_is_empty!24201)))

(declare-fun b!1026134 () Bool)

(declare-fun e!578840 () Bool)

(declare-fun mapRes!37730 () Bool)

(assert (=> b!1026134 (= e!578840 (and e!578834 mapRes!37730))))

(declare-fun condMapEmpty!37730 () Bool)

(declare-fun mapDefault!37730 () ValueCell!11397)

(assert (=> b!1026134 (= condMapEmpty!37730 (= (arr!31024 (_values!6069 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11397)) mapDefault!37730)))))

(declare-fun mapNonEmpty!37730 () Bool)

(declare-fun tp!72490 () Bool)

(declare-fun e!578838 () Bool)

(assert (=> mapNonEmpty!37730 (= mapRes!37730 (and tp!72490 e!578838))))

(declare-fun mapRest!37730 () (Array (_ BitVec 32) ValueCell!11397))

(declare-fun mapKey!37730 () (_ BitVec 32))

(declare-fun mapValue!37730 () ValueCell!11397)

(assert (=> mapNonEmpty!37730 (= (arr!31024 (_values!6069 thiss!1427)) (store mapRest!37730 mapKey!37730 mapValue!37730))))

(declare-fun b!1026135 () Bool)

(assert (=> b!1026135 (= e!578838 tp_is_empty!24201)))

(declare-fun array_inv!23879 (array!64436) Bool)

(declare-fun array_inv!23880 (array!64438) Bool)

(assert (=> b!1026136 (= e!578836 (and tp!72489 tp_is_empty!24201 (array_inv!23879 (_keys!11190 thiss!1427)) (array_inv!23880 (_values!6069 thiss!1427)) e!578840))))

(declare-fun b!1026137 () Bool)

(declare-fun res!687019 () Bool)

(assert (=> b!1026137 (=> (not res!687019) (not e!578833))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026137 (= res!687019 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026138 () Bool)

(declare-fun e!578839 () Bool)

(assert (=> b!1026138 (= e!578833 e!578839)))

(declare-fun res!687021 () Bool)

(assert (=> b!1026138 (=> (not res!687021) (not e!578839))))

(declare-datatypes ((SeekEntryResult!9627 0))(
  ( (MissingZero!9627 (index!40878 (_ BitVec 32))) (Found!9627 (index!40879 (_ BitVec 32))) (Intermediate!9627 (undefined!10439 Bool) (index!40880 (_ BitVec 32)) (x!91260 (_ BitVec 32))) (Undefined!9627) (MissingVacant!9627 (index!40881 (_ BitVec 32))) )
))
(declare-fun lt!451353 () SeekEntryResult!9627)

(get-info :version)

(assert (=> b!1026138 (= res!687021 ((_ is Found!9627) lt!451353))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64436 (_ BitVec 32)) SeekEntryResult!9627)

(assert (=> b!1026138 (= lt!451353 (seekEntry!0 key!909 (_keys!11190 thiss!1427) (mask!29729 thiss!1427)))))

(declare-fun mapIsEmpty!37730 () Bool)

(assert (=> mapIsEmpty!37730 mapRes!37730))

(declare-fun b!1026139 () Bool)

(declare-fun e!578835 () Bool)

(assert (=> b!1026139 (= e!578835 true)))

(declare-fun lt!451356 () Bool)

(declare-datatypes ((List!21880 0))(
  ( (Nil!21877) (Cons!21876 (h!23074 (_ BitVec 64)) (t!30949 List!21880)) )
))
(declare-fun arrayNoDuplicates!0 (array!64436 (_ BitVec 32) List!21880) Bool)

(assert (=> b!1026139 (= lt!451356 (arrayNoDuplicates!0 (_keys!11190 thiss!1427) #b00000000000000000000000000000000 Nil!21877))))

(declare-fun b!1026140 () Bool)

(assert (=> b!1026140 (= e!578839 (not e!578835))))

(declare-fun res!687020 () Bool)

(assert (=> b!1026140 (=> res!687020 e!578835)))

(assert (=> b!1026140 (= res!687020 (or (bvslt (index!40879 lt!451353) #b00000000000000000000000000000000) (bvsge (index!40879 lt!451353) (size!31537 (_keys!11190 thiss!1427))) (bvsge (size!31537 (_keys!11190 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451357 () array!64436)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64436 (_ BitVec 32)) Bool)

(assert (=> b!1026140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451357 (mask!29729 thiss!1427))))

(declare-datatypes ((Unit!33392 0))(
  ( (Unit!33393) )
))
(declare-fun lt!451355 () Unit!33392)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64436 (_ BitVec 32) (_ BitVec 32)) Unit!33392)

(assert (=> b!1026140 (= lt!451355 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11190 thiss!1427) (index!40879 lt!451353) (mask!29729 thiss!1427)))))

(assert (=> b!1026140 (arrayNoDuplicates!0 lt!451357 #b00000000000000000000000000000000 Nil!21877)))

(declare-fun lt!451354 () Unit!33392)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21880) Unit!33392)

(assert (=> b!1026140 (= lt!451354 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11190 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40879 lt!451353) #b00000000000000000000000000000000 Nil!21877))))

(declare-fun arrayCountValidKeys!0 (array!64436 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026140 (= (arrayCountValidKeys!0 lt!451357 #b00000000000000000000000000000000 (size!31537 (_keys!11190 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11190 thiss!1427) #b00000000000000000000000000000000 (size!31537 (_keys!11190 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026140 (= lt!451357 (array!64437 (store (arr!31023 (_keys!11190 thiss!1427)) (index!40879 lt!451353) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31537 (_keys!11190 thiss!1427))))))

(declare-fun lt!451352 () Unit!33392)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64436 (_ BitVec 32) (_ BitVec 64)) Unit!33392)

(assert (=> b!1026140 (= lt!451352 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11190 thiss!1427) (index!40879 lt!451353) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!89518 res!687018) b!1026137))

(assert (= (and b!1026137 res!687019) b!1026138))

(assert (= (and b!1026138 res!687021) b!1026140))

(assert (= (and b!1026140 (not res!687020)) b!1026139))

(assert (= (and b!1026134 condMapEmpty!37730) mapIsEmpty!37730))

(assert (= (and b!1026134 (not condMapEmpty!37730)) mapNonEmpty!37730))

(assert (= (and mapNonEmpty!37730 ((_ is ValueCellFull!11397) mapValue!37730)) b!1026135))

(assert (= (and b!1026134 ((_ is ValueCellFull!11397) mapDefault!37730)) b!1026133))

(assert (= b!1026136 b!1026134))

(assert (= start!89518 b!1026136))

(declare-fun m!944495 () Bool)

(assert (=> b!1026138 m!944495))

(declare-fun m!944497 () Bool)

(assert (=> mapNonEmpty!37730 m!944497))

(declare-fun m!944499 () Bool)

(assert (=> b!1026136 m!944499))

(declare-fun m!944501 () Bool)

(assert (=> b!1026136 m!944501))

(declare-fun m!944503 () Bool)

(assert (=> b!1026139 m!944503))

(declare-fun m!944505 () Bool)

(assert (=> start!89518 m!944505))

(declare-fun m!944507 () Bool)

(assert (=> b!1026140 m!944507))

(declare-fun m!944509 () Bool)

(assert (=> b!1026140 m!944509))

(declare-fun m!944511 () Bool)

(assert (=> b!1026140 m!944511))

(declare-fun m!944513 () Bool)

(assert (=> b!1026140 m!944513))

(declare-fun m!944515 () Bool)

(assert (=> b!1026140 m!944515))

(declare-fun m!944517 () Bool)

(assert (=> b!1026140 m!944517))

(declare-fun m!944519 () Bool)

(assert (=> b!1026140 m!944519))

(declare-fun m!944521 () Bool)

(assert (=> b!1026140 m!944521))

(check-sat (not start!89518) (not b!1026138) (not mapNonEmpty!37730) (not b!1026139) (not b!1026136) (not b_next!20481) (not b!1026140) b_and!32745 tp_is_empty!24201)
(check-sat b_and!32745 (not b_next!20481))

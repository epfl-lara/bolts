; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90178 () Bool)

(assert start!90178)

(declare-fun b!1032452 () Bool)

(declare-fun b_free!20733 () Bool)

(declare-fun b_next!20733 () Bool)

(assert (=> b!1032452 (= b_free!20733 (not b_next!20733))))

(declare-fun tp!73274 () Bool)

(declare-fun b_and!33219 () Bool)

(assert (=> b!1032452 (= tp!73274 b_and!33219)))

(declare-fun b!1032448 () Bool)

(declare-fun e!583430 () Bool)

(declare-datatypes ((V!37477 0))(
  ( (V!37478 (val!12277 Int)) )
))
(declare-datatypes ((ValueCell!11523 0))(
  ( (ValueCellFull!11523 (v!14855 V!37477)) (EmptyCell!11523) )
))
(declare-datatypes ((array!64956 0))(
  ( (array!64957 (arr!31275 (Array (_ BitVec 32) (_ BitVec 64))) (size!31794 (_ BitVec 32))) )
))
(declare-datatypes ((array!64958 0))(
  ( (array!64959 (arr!31276 (Array (_ BitVec 32) ValueCell!11523)) (size!31795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5640 0))(
  ( (LongMapFixedSize!5641 (defaultEntry!6194 Int) (mask!30011 (_ BitVec 32)) (extraKeys!5926 (_ BitVec 32)) (zeroValue!6030 V!37477) (minValue!6030 V!37477) (_size!2875 (_ BitVec 32)) (_keys!11365 array!64956) (_values!6217 array!64958) (_vacant!2875 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5640)

(assert (=> b!1032448 (= e!583430 (not (= (size!31795 (_values!6217 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30011 thiss!1427)))))))

(declare-fun b!1032449 () Bool)

(declare-fun e!583431 () Bool)

(declare-fun e!583432 () Bool)

(declare-fun mapRes!38137 () Bool)

(assert (=> b!1032449 (= e!583431 (and e!583432 mapRes!38137))))

(declare-fun condMapEmpty!38137 () Bool)

(declare-fun mapDefault!38137 () ValueCell!11523)

(assert (=> b!1032449 (= condMapEmpty!38137 (= (arr!31276 (_values!6217 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11523)) mapDefault!38137)))))

(declare-fun mapIsEmpty!38137 () Bool)

(assert (=> mapIsEmpty!38137 mapRes!38137))

(declare-fun b!1032450 () Bool)

(declare-fun e!583434 () Bool)

(declare-fun tp_is_empty!24453 () Bool)

(assert (=> b!1032450 (= e!583434 tp_is_empty!24453)))

(declare-fun b!1032451 () Bool)

(assert (=> b!1032451 (= e!583432 tp_is_empty!24453)))

(declare-fun e!583433 () Bool)

(declare-fun array_inv!24041 (array!64956) Bool)

(declare-fun array_inv!24042 (array!64958) Bool)

(assert (=> b!1032452 (= e!583433 (and tp!73274 tp_is_empty!24453 (array_inv!24041 (_keys!11365 thiss!1427)) (array_inv!24042 (_values!6217 thiss!1427)) e!583431))))

(declare-fun res!690124 () Bool)

(assert (=> start!90178 (=> (not res!690124) (not e!583430))))

(declare-fun valid!2083 (LongMapFixedSize!5640) Bool)

(assert (=> start!90178 (= res!690124 (valid!2083 thiss!1427))))

(assert (=> start!90178 e!583430))

(assert (=> start!90178 e!583433))

(assert (=> start!90178 true))

(declare-fun b!1032447 () Bool)

(declare-fun res!690125 () Bool)

(assert (=> b!1032447 (=> (not res!690125) (not e!583430))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032447 (= res!690125 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032453 () Bool)

(declare-fun res!690126 () Bool)

(assert (=> b!1032453 (=> (not res!690126) (not e!583430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032453 (= res!690126 (validMask!0 (mask!30011 thiss!1427)))))

(declare-fun mapNonEmpty!38137 () Bool)

(declare-fun tp!73275 () Bool)

(assert (=> mapNonEmpty!38137 (= mapRes!38137 (and tp!73275 e!583434))))

(declare-fun mapKey!38137 () (_ BitVec 32))

(declare-fun mapValue!38137 () ValueCell!11523)

(declare-fun mapRest!38137 () (Array (_ BitVec 32) ValueCell!11523))

(assert (=> mapNonEmpty!38137 (= (arr!31276 (_values!6217 thiss!1427)) (store mapRest!38137 mapKey!38137 mapValue!38137))))

(assert (= (and start!90178 res!690124) b!1032447))

(assert (= (and b!1032447 res!690125) b!1032453))

(assert (= (and b!1032453 res!690126) b!1032448))

(assert (= (and b!1032449 condMapEmpty!38137) mapIsEmpty!38137))

(assert (= (and b!1032449 (not condMapEmpty!38137)) mapNonEmpty!38137))

(get-info :version)

(assert (= (and mapNonEmpty!38137 ((_ is ValueCellFull!11523) mapValue!38137)) b!1032450))

(assert (= (and b!1032449 ((_ is ValueCellFull!11523) mapDefault!38137)) b!1032451))

(assert (= b!1032452 b!1032449))

(assert (= start!90178 b!1032452))

(declare-fun m!952833 () Bool)

(assert (=> b!1032452 m!952833))

(declare-fun m!952835 () Bool)

(assert (=> b!1032452 m!952835))

(declare-fun m!952837 () Bool)

(assert (=> start!90178 m!952837))

(declare-fun m!952839 () Bool)

(assert (=> b!1032453 m!952839))

(declare-fun m!952841 () Bool)

(assert (=> mapNonEmpty!38137 m!952841))

(check-sat (not start!90178) tp_is_empty!24453 (not b!1032453) b_and!33219 (not mapNonEmpty!38137) (not b!1032452) (not b_next!20733))
(check-sat b_and!33219 (not b_next!20733))
(get-model)

(declare-fun d!123643 () Bool)

(declare-fun res!690142 () Bool)

(declare-fun e!583455 () Bool)

(assert (=> d!123643 (=> (not res!690142) (not e!583455))))

(declare-fun simpleValid!397 (LongMapFixedSize!5640) Bool)

(assert (=> d!123643 (= res!690142 (simpleValid!397 thiss!1427))))

(assert (=> d!123643 (= (valid!2083 thiss!1427) e!583455)))

(declare-fun b!1032481 () Bool)

(declare-fun res!690143 () Bool)

(assert (=> b!1032481 (=> (not res!690143) (not e!583455))))

(declare-fun arrayCountValidKeys!0 (array!64956 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032481 (= res!690143 (= (arrayCountValidKeys!0 (_keys!11365 thiss!1427) #b00000000000000000000000000000000 (size!31794 (_keys!11365 thiss!1427))) (_size!2875 thiss!1427)))))

(declare-fun b!1032482 () Bool)

(declare-fun res!690144 () Bool)

(assert (=> b!1032482 (=> (not res!690144) (not e!583455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64956 (_ BitVec 32)) Bool)

(assert (=> b!1032482 (= res!690144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11365 thiss!1427) (mask!30011 thiss!1427)))))

(declare-fun b!1032483 () Bool)

(declare-datatypes ((List!22013 0))(
  ( (Nil!22010) (Cons!22009 (h!23211 (_ BitVec 64)) (t!31214 List!22013)) )
))
(declare-fun arrayNoDuplicates!0 (array!64956 (_ BitVec 32) List!22013) Bool)

(assert (=> b!1032483 (= e!583455 (arrayNoDuplicates!0 (_keys!11365 thiss!1427) #b00000000000000000000000000000000 Nil!22010))))

(assert (= (and d!123643 res!690142) b!1032481))

(assert (= (and b!1032481 res!690143) b!1032482))

(assert (= (and b!1032482 res!690144) b!1032483))

(declare-fun m!952853 () Bool)

(assert (=> d!123643 m!952853))

(declare-fun m!952855 () Bool)

(assert (=> b!1032481 m!952855))

(declare-fun m!952857 () Bool)

(assert (=> b!1032482 m!952857))

(declare-fun m!952859 () Bool)

(assert (=> b!1032483 m!952859))

(assert (=> start!90178 d!123643))

(declare-fun d!123645 () Bool)

(assert (=> d!123645 (= (validMask!0 (mask!30011 thiss!1427)) (and (or (= (mask!30011 thiss!1427) #b00000000000000000000000000000111) (= (mask!30011 thiss!1427) #b00000000000000000000000000001111) (= (mask!30011 thiss!1427) #b00000000000000000000000000011111) (= (mask!30011 thiss!1427) #b00000000000000000000000000111111) (= (mask!30011 thiss!1427) #b00000000000000000000000001111111) (= (mask!30011 thiss!1427) #b00000000000000000000000011111111) (= (mask!30011 thiss!1427) #b00000000000000000000000111111111) (= (mask!30011 thiss!1427) #b00000000000000000000001111111111) (= (mask!30011 thiss!1427) #b00000000000000000000011111111111) (= (mask!30011 thiss!1427) #b00000000000000000000111111111111) (= (mask!30011 thiss!1427) #b00000000000000000001111111111111) (= (mask!30011 thiss!1427) #b00000000000000000011111111111111) (= (mask!30011 thiss!1427) #b00000000000000000111111111111111) (= (mask!30011 thiss!1427) #b00000000000000001111111111111111) (= (mask!30011 thiss!1427) #b00000000000000011111111111111111) (= (mask!30011 thiss!1427) #b00000000000000111111111111111111) (= (mask!30011 thiss!1427) #b00000000000001111111111111111111) (= (mask!30011 thiss!1427) #b00000000000011111111111111111111) (= (mask!30011 thiss!1427) #b00000000000111111111111111111111) (= (mask!30011 thiss!1427) #b00000000001111111111111111111111) (= (mask!30011 thiss!1427) #b00000000011111111111111111111111) (= (mask!30011 thiss!1427) #b00000000111111111111111111111111) (= (mask!30011 thiss!1427) #b00000001111111111111111111111111) (= (mask!30011 thiss!1427) #b00000011111111111111111111111111) (= (mask!30011 thiss!1427) #b00000111111111111111111111111111) (= (mask!30011 thiss!1427) #b00001111111111111111111111111111) (= (mask!30011 thiss!1427) #b00011111111111111111111111111111) (= (mask!30011 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30011 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1032453 d!123645))

(declare-fun d!123647 () Bool)

(assert (=> d!123647 (= (array_inv!24041 (_keys!11365 thiss!1427)) (bvsge (size!31794 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032452 d!123647))

(declare-fun d!123649 () Bool)

(assert (=> d!123649 (= (array_inv!24042 (_values!6217 thiss!1427)) (bvsge (size!31795 (_values!6217 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032452 d!123649))

(declare-fun mapNonEmpty!38143 () Bool)

(declare-fun mapRes!38143 () Bool)

(declare-fun tp!73284 () Bool)

(declare-fun e!583461 () Bool)

(assert (=> mapNonEmpty!38143 (= mapRes!38143 (and tp!73284 e!583461))))

(declare-fun mapKey!38143 () (_ BitVec 32))

(declare-fun mapRest!38143 () (Array (_ BitVec 32) ValueCell!11523))

(declare-fun mapValue!38143 () ValueCell!11523)

(assert (=> mapNonEmpty!38143 (= mapRest!38137 (store mapRest!38143 mapKey!38143 mapValue!38143))))

(declare-fun b!1032490 () Bool)

(assert (=> b!1032490 (= e!583461 tp_is_empty!24453)))

(declare-fun b!1032491 () Bool)

(declare-fun e!583460 () Bool)

(assert (=> b!1032491 (= e!583460 tp_is_empty!24453)))

(declare-fun mapIsEmpty!38143 () Bool)

(assert (=> mapIsEmpty!38143 mapRes!38143))

(declare-fun condMapEmpty!38143 () Bool)

(declare-fun mapDefault!38143 () ValueCell!11523)

(assert (=> mapNonEmpty!38137 (= condMapEmpty!38143 (= mapRest!38137 ((as const (Array (_ BitVec 32) ValueCell!11523)) mapDefault!38143)))))

(assert (=> mapNonEmpty!38137 (= tp!73275 (and e!583460 mapRes!38143))))

(assert (= (and mapNonEmpty!38137 condMapEmpty!38143) mapIsEmpty!38143))

(assert (= (and mapNonEmpty!38137 (not condMapEmpty!38143)) mapNonEmpty!38143))

(assert (= (and mapNonEmpty!38143 ((_ is ValueCellFull!11523) mapValue!38143)) b!1032490))

(assert (= (and mapNonEmpty!38137 ((_ is ValueCellFull!11523) mapDefault!38143)) b!1032491))

(declare-fun m!952861 () Bool)

(assert (=> mapNonEmpty!38143 m!952861))

(check-sat (not b!1032481) (not b!1032482) tp_is_empty!24453 (not b_next!20733) (not mapNonEmpty!38143) b_and!33219 (not b!1032483) (not d!123643))
(check-sat b_and!33219 (not b_next!20733))
(get-model)

(declare-fun d!123651 () Bool)

(declare-fun lt!456021 () (_ BitVec 32))

(assert (=> d!123651 (and (bvsge lt!456021 #b00000000000000000000000000000000) (bvsle lt!456021 (bvsub (size!31794 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!583467 () (_ BitVec 32))

(assert (=> d!123651 (= lt!456021 e!583467)))

(declare-fun c!104267 () Bool)

(assert (=> d!123651 (= c!104267 (bvsge #b00000000000000000000000000000000 (size!31794 (_keys!11365 thiss!1427))))))

(assert (=> d!123651 (and (bvsle #b00000000000000000000000000000000 (size!31794 (_keys!11365 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31794 (_keys!11365 thiss!1427)) (size!31794 (_keys!11365 thiss!1427))))))

(assert (=> d!123651 (= (arrayCountValidKeys!0 (_keys!11365 thiss!1427) #b00000000000000000000000000000000 (size!31794 (_keys!11365 thiss!1427))) lt!456021)))

(declare-fun b!1032500 () Bool)

(assert (=> b!1032500 (= e!583467 #b00000000000000000000000000000000)))

(declare-fun b!1032501 () Bool)

(declare-fun e!583466 () (_ BitVec 32))

(declare-fun call!43603 () (_ BitVec 32))

(assert (=> b!1032501 (= e!583466 (bvadd #b00000000000000000000000000000001 call!43603))))

(declare-fun b!1032502 () Bool)

(assert (=> b!1032502 (= e!583466 call!43603)))

(declare-fun b!1032503 () Bool)

(assert (=> b!1032503 (= e!583467 e!583466)))

(declare-fun c!104266 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1032503 (= c!104266 (validKeyInArray!0 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43600 () Bool)

(assert (=> bm!43600 (= call!43603 (arrayCountValidKeys!0 (_keys!11365 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31794 (_keys!11365 thiss!1427))))))

(assert (= (and d!123651 c!104267) b!1032500))

(assert (= (and d!123651 (not c!104267)) b!1032503))

(assert (= (and b!1032503 c!104266) b!1032501))

(assert (= (and b!1032503 (not c!104266)) b!1032502))

(assert (= (or b!1032501 b!1032502) bm!43600))

(declare-fun m!952863 () Bool)

(assert (=> b!1032503 m!952863))

(assert (=> b!1032503 m!952863))

(declare-fun m!952865 () Bool)

(assert (=> b!1032503 m!952865))

(declare-fun m!952867 () Bool)

(assert (=> bm!43600 m!952867))

(assert (=> b!1032481 d!123651))

(declare-fun b!1032514 () Bool)

(declare-fun res!690154 () Bool)

(declare-fun e!583470 () Bool)

(assert (=> b!1032514 (=> (not res!690154) (not e!583470))))

(declare-fun size!31798 (LongMapFixedSize!5640) (_ BitVec 32))

(assert (=> b!1032514 (= res!690154 (= (size!31798 thiss!1427) (bvadd (_size!2875 thiss!1427) (bvsdiv (bvadd (extraKeys!5926 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!123653 () Bool)

(declare-fun res!690155 () Bool)

(assert (=> d!123653 (=> (not res!690155) (not e!583470))))

(assert (=> d!123653 (= res!690155 (validMask!0 (mask!30011 thiss!1427)))))

(assert (=> d!123653 (= (simpleValid!397 thiss!1427) e!583470)))

(declare-fun b!1032513 () Bool)

(declare-fun res!690156 () Bool)

(assert (=> b!1032513 (=> (not res!690156) (not e!583470))))

(assert (=> b!1032513 (= res!690156 (bvsge (size!31798 thiss!1427) (_size!2875 thiss!1427)))))

(declare-fun b!1032515 () Bool)

(assert (=> b!1032515 (= e!583470 (and (bvsge (extraKeys!5926 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5926 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2875 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1032512 () Bool)

(declare-fun res!690153 () Bool)

(assert (=> b!1032512 (=> (not res!690153) (not e!583470))))

(assert (=> b!1032512 (= res!690153 (and (= (size!31795 (_values!6217 thiss!1427)) (bvadd (mask!30011 thiss!1427) #b00000000000000000000000000000001)) (= (size!31794 (_keys!11365 thiss!1427)) (size!31795 (_values!6217 thiss!1427))) (bvsge (_size!2875 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2875 thiss!1427) (bvadd (mask!30011 thiss!1427) #b00000000000000000000000000000001))))))

(assert (= (and d!123653 res!690155) b!1032512))

(assert (= (and b!1032512 res!690153) b!1032513))

(assert (= (and b!1032513 res!690156) b!1032514))

(assert (= (and b!1032514 res!690154) b!1032515))

(declare-fun m!952869 () Bool)

(assert (=> b!1032514 m!952869))

(assert (=> d!123653 m!952839))

(assert (=> b!1032513 m!952869))

(assert (=> d!123643 d!123653))

(declare-fun b!1032524 () Bool)

(declare-fun e!583477 () Bool)

(declare-fun call!43606 () Bool)

(assert (=> b!1032524 (= e!583477 call!43606)))

(declare-fun b!1032525 () Bool)

(declare-fun e!583478 () Bool)

(assert (=> b!1032525 (= e!583478 call!43606)))

(declare-fun b!1032526 () Bool)

(assert (=> b!1032526 (= e!583478 e!583477)))

(declare-fun lt!456030 () (_ BitVec 64))

(assert (=> b!1032526 (= lt!456030 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33798 0))(
  ( (Unit!33799) )
))
(declare-fun lt!456029 () Unit!33798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64956 (_ BitVec 64) (_ BitVec 32)) Unit!33798)

(assert (=> b!1032526 (= lt!456029 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11365 thiss!1427) lt!456030 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!64956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1032526 (arrayContainsKey!0 (_keys!11365 thiss!1427) lt!456030 #b00000000000000000000000000000000)))

(declare-fun lt!456028 () Unit!33798)

(assert (=> b!1032526 (= lt!456028 lt!456029)))

(declare-fun res!690162 () Bool)

(declare-datatypes ((SeekEntryResult!9727 0))(
  ( (MissingZero!9727 (index!41278 (_ BitVec 32))) (Found!9727 (index!41279 (_ BitVec 32))) (Intermediate!9727 (undefined!10539 Bool) (index!41280 (_ BitVec 32)) (x!92022 (_ BitVec 32))) (Undefined!9727) (MissingVacant!9727 (index!41281 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64956 (_ BitVec 32)) SeekEntryResult!9727)

(assert (=> b!1032526 (= res!690162 (= (seekEntryOrOpen!0 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000) (_keys!11365 thiss!1427) (mask!30011 thiss!1427)) (Found!9727 #b00000000000000000000000000000000)))))

(assert (=> b!1032526 (=> (not res!690162) (not e!583477))))

(declare-fun d!123655 () Bool)

(declare-fun res!690161 () Bool)

(declare-fun e!583479 () Bool)

(assert (=> d!123655 (=> res!690161 e!583479)))

(assert (=> d!123655 (= res!690161 (bvsge #b00000000000000000000000000000000 (size!31794 (_keys!11365 thiss!1427))))))

(assert (=> d!123655 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11365 thiss!1427) (mask!30011 thiss!1427)) e!583479)))

(declare-fun bm!43603 () Bool)

(assert (=> bm!43603 (= call!43606 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11365 thiss!1427) (mask!30011 thiss!1427)))))

(declare-fun b!1032527 () Bool)

(assert (=> b!1032527 (= e!583479 e!583478)))

(declare-fun c!104270 () Bool)

(assert (=> b!1032527 (= c!104270 (validKeyInArray!0 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123655 (not res!690161)) b!1032527))

(assert (= (and b!1032527 c!104270) b!1032526))

(assert (= (and b!1032527 (not c!104270)) b!1032525))

(assert (= (and b!1032526 res!690162) b!1032524))

(assert (= (or b!1032524 b!1032525) bm!43603))

(assert (=> b!1032526 m!952863))

(declare-fun m!952871 () Bool)

(assert (=> b!1032526 m!952871))

(declare-fun m!952873 () Bool)

(assert (=> b!1032526 m!952873))

(assert (=> b!1032526 m!952863))

(declare-fun m!952875 () Bool)

(assert (=> b!1032526 m!952875))

(declare-fun m!952877 () Bool)

(assert (=> bm!43603 m!952877))

(assert (=> b!1032527 m!952863))

(assert (=> b!1032527 m!952863))

(assert (=> b!1032527 m!952865))

(assert (=> b!1032482 d!123655))

(declare-fun b!1032538 () Bool)

(declare-fun e!583491 () Bool)

(declare-fun contains!6030 (List!22013 (_ BitVec 64)) Bool)

(assert (=> b!1032538 (= e!583491 (contains!6030 Nil!22010 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123657 () Bool)

(declare-fun res!690169 () Bool)

(declare-fun e!583490 () Bool)

(assert (=> d!123657 (=> res!690169 e!583490)))

(assert (=> d!123657 (= res!690169 (bvsge #b00000000000000000000000000000000 (size!31794 (_keys!11365 thiss!1427))))))

(assert (=> d!123657 (= (arrayNoDuplicates!0 (_keys!11365 thiss!1427) #b00000000000000000000000000000000 Nil!22010) e!583490)))

(declare-fun b!1032539 () Bool)

(declare-fun e!583488 () Bool)

(declare-fun call!43609 () Bool)

(assert (=> b!1032539 (= e!583488 call!43609)))

(declare-fun b!1032540 () Bool)

(declare-fun e!583489 () Bool)

(assert (=> b!1032540 (= e!583490 e!583489)))

(declare-fun res!690170 () Bool)

(assert (=> b!1032540 (=> (not res!690170) (not e!583489))))

(assert (=> b!1032540 (= res!690170 (not e!583491))))

(declare-fun res!690171 () Bool)

(assert (=> b!1032540 (=> (not res!690171) (not e!583491))))

(assert (=> b!1032540 (= res!690171 (validKeyInArray!0 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1032541 () Bool)

(assert (=> b!1032541 (= e!583489 e!583488)))

(declare-fun c!104273 () Bool)

(assert (=> b!1032541 (= c!104273 (validKeyInArray!0 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43606 () Bool)

(assert (=> bm!43606 (= call!43609 (arrayNoDuplicates!0 (_keys!11365 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104273 (Cons!22009 (select (arr!31275 (_keys!11365 thiss!1427)) #b00000000000000000000000000000000) Nil!22010) Nil!22010)))))

(declare-fun b!1032542 () Bool)

(assert (=> b!1032542 (= e!583488 call!43609)))

(assert (= (and d!123657 (not res!690169)) b!1032540))

(assert (= (and b!1032540 res!690171) b!1032538))

(assert (= (and b!1032540 res!690170) b!1032541))

(assert (= (and b!1032541 c!104273) b!1032539))

(assert (= (and b!1032541 (not c!104273)) b!1032542))

(assert (= (or b!1032539 b!1032542) bm!43606))

(assert (=> b!1032538 m!952863))

(assert (=> b!1032538 m!952863))

(declare-fun m!952879 () Bool)

(assert (=> b!1032538 m!952879))

(assert (=> b!1032540 m!952863))

(assert (=> b!1032540 m!952863))

(assert (=> b!1032540 m!952865))

(assert (=> b!1032541 m!952863))

(assert (=> b!1032541 m!952863))

(assert (=> b!1032541 m!952865))

(assert (=> bm!43606 m!952863))

(declare-fun m!952881 () Bool)

(assert (=> bm!43606 m!952881))

(assert (=> b!1032483 d!123657))

(declare-fun mapNonEmpty!38144 () Bool)

(declare-fun mapRes!38144 () Bool)

(declare-fun tp!73285 () Bool)

(declare-fun e!583493 () Bool)

(assert (=> mapNonEmpty!38144 (= mapRes!38144 (and tp!73285 e!583493))))

(declare-fun mapValue!38144 () ValueCell!11523)

(declare-fun mapKey!38144 () (_ BitVec 32))

(declare-fun mapRest!38144 () (Array (_ BitVec 32) ValueCell!11523))

(assert (=> mapNonEmpty!38144 (= mapRest!38143 (store mapRest!38144 mapKey!38144 mapValue!38144))))

(declare-fun b!1032543 () Bool)

(assert (=> b!1032543 (= e!583493 tp_is_empty!24453)))

(declare-fun b!1032544 () Bool)

(declare-fun e!583492 () Bool)

(assert (=> b!1032544 (= e!583492 tp_is_empty!24453)))

(declare-fun mapIsEmpty!38144 () Bool)

(assert (=> mapIsEmpty!38144 mapRes!38144))

(declare-fun condMapEmpty!38144 () Bool)

(declare-fun mapDefault!38144 () ValueCell!11523)

(assert (=> mapNonEmpty!38143 (= condMapEmpty!38144 (= mapRest!38143 ((as const (Array (_ BitVec 32) ValueCell!11523)) mapDefault!38144)))))

(assert (=> mapNonEmpty!38143 (= tp!73284 (and e!583492 mapRes!38144))))

(assert (= (and mapNonEmpty!38143 condMapEmpty!38144) mapIsEmpty!38144))

(assert (= (and mapNonEmpty!38143 (not condMapEmpty!38144)) mapNonEmpty!38144))

(assert (= (and mapNonEmpty!38144 ((_ is ValueCellFull!11523) mapValue!38144)) b!1032543))

(assert (= (and mapNonEmpty!38143 ((_ is ValueCellFull!11523) mapDefault!38144)) b!1032544))

(declare-fun m!952883 () Bool)

(assert (=> mapNonEmpty!38144 m!952883))

(check-sat (not bm!43600) (not bm!43606) (not b_next!20733) (not b!1032540) (not b!1032503) (not b!1032527) (not b!1032513) (not mapNonEmpty!38144) (not b!1032541) (not d!123653) tp_is_empty!24453 (not b!1032538) (not b!1032526) b_and!33219 (not b!1032514) (not bm!43603))
(check-sat b_and!33219 (not b_next!20733))

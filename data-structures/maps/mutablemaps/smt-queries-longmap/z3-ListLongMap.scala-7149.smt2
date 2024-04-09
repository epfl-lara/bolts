; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90904 () Bool)

(assert start!90904)

(declare-fun b!1038525 () Bool)

(declare-fun b_free!20949 () Bool)

(declare-fun b_next!20949 () Bool)

(assert (=> b!1038525 (= b_free!20949 (not b_next!20949))))

(declare-fun tp!74012 () Bool)

(declare-fun b_and!33499 () Bool)

(assert (=> b!1038525 (= tp!74012 b_and!33499)))

(declare-fun res!692848 () Bool)

(declare-fun e!587689 () Bool)

(assert (=> start!90904 (=> (not res!692848) (not e!587689))))

(declare-datatypes ((V!37765 0))(
  ( (V!37766 (val!12385 Int)) )
))
(declare-datatypes ((ValueCell!11631 0))(
  ( (ValueCellFull!11631 (v!14972 V!37765)) (EmptyCell!11631) )
))
(declare-datatypes ((array!65438 0))(
  ( (array!65439 (arr!31491 (Array (_ BitVec 32) (_ BitVec 64))) (size!32022 (_ BitVec 32))) )
))
(declare-datatypes ((array!65440 0))(
  ( (array!65441 (arr!31492 (Array (_ BitVec 32) ValueCell!11631)) (size!32023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5856 0))(
  ( (LongMapFixedSize!5857 (defaultEntry!6310 Int) (mask!30247 (_ BitVec 32)) (extraKeys!6038 (_ BitVec 32)) (zeroValue!6144 V!37765) (minValue!6144 V!37765) (_size!2983 (_ BitVec 32)) (_keys!11509 array!65438) (_values!6333 array!65440) (_vacant!2983 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5856)

(declare-fun valid!2157 (LongMapFixedSize!5856) Bool)

(assert (=> start!90904 (= res!692848 (valid!2157 thiss!1427))))

(assert (=> start!90904 e!587689))

(declare-fun e!587691 () Bool)

(assert (=> start!90904 e!587691))

(assert (=> start!90904 true))

(declare-fun mapIsEmpty!38550 () Bool)

(declare-fun mapRes!38550 () Bool)

(assert (=> mapIsEmpty!38550 mapRes!38550))

(declare-fun b!1038523 () Bool)

(declare-fun e!587693 () Bool)

(declare-fun tp_is_empty!24669 () Bool)

(assert (=> b!1038523 (= e!587693 tp_is_empty!24669)))

(declare-fun b!1038524 () Bool)

(declare-fun e!587690 () Bool)

(assert (=> b!1038524 (= e!587689 e!587690)))

(declare-fun res!692846 () Bool)

(assert (=> b!1038524 (=> (not res!692846) (not e!587690))))

(declare-datatypes ((SeekEntryResult!9771 0))(
  ( (MissingZero!9771 (index!41454 (_ BitVec 32))) (Found!9771 (index!41455 (_ BitVec 32))) (Intermediate!9771 (undefined!10583 Bool) (index!41456 (_ BitVec 32)) (x!92669 (_ BitVec 32))) (Undefined!9771) (MissingVacant!9771 (index!41457 (_ BitVec 32))) )
))
(declare-fun lt!457768 () SeekEntryResult!9771)

(get-info :version)

(assert (=> b!1038524 (= res!692846 ((_ is Found!9771) lt!457768))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65438 (_ BitVec 32)) SeekEntryResult!9771)

(assert (=> b!1038524 (= lt!457768 (seekEntry!0 key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(declare-fun mapNonEmpty!38550 () Bool)

(declare-fun tp!74011 () Bool)

(assert (=> mapNonEmpty!38550 (= mapRes!38550 (and tp!74011 e!587693))))

(declare-fun mapValue!38550 () ValueCell!11631)

(declare-fun mapKey!38550 () (_ BitVec 32))

(declare-fun mapRest!38550 () (Array (_ BitVec 32) ValueCell!11631))

(assert (=> mapNonEmpty!38550 (= (arr!31492 (_values!6333 thiss!1427)) (store mapRest!38550 mapKey!38550 mapValue!38550))))

(declare-fun e!587692 () Bool)

(declare-fun array_inv!24187 (array!65438) Bool)

(declare-fun array_inv!24188 (array!65440) Bool)

(assert (=> b!1038525 (= e!587691 (and tp!74012 tp_is_empty!24669 (array_inv!24187 (_keys!11509 thiss!1427)) (array_inv!24188 (_values!6333 thiss!1427)) e!587692))))

(declare-fun b!1038526 () Bool)

(declare-fun e!587687 () Bool)

(assert (=> b!1038526 (= e!587687 tp_is_empty!24669)))

(declare-fun b!1038527 () Bool)

(assert (=> b!1038527 (= e!587692 (and e!587687 mapRes!38550))))

(declare-fun condMapEmpty!38550 () Bool)

(declare-fun mapDefault!38550 () ValueCell!11631)

(assert (=> b!1038527 (= condMapEmpty!38550 (= (arr!31492 (_values!6333 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11631)) mapDefault!38550)))))

(declare-fun b!1038528 () Bool)

(declare-fun e!587688 () Bool)

(assert (=> b!1038528 (= e!587688 (= (size!32022 (_keys!11509 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30247 thiss!1427))))))

(declare-fun b!1038529 () Bool)

(assert (=> b!1038529 (= e!587690 (not e!587688))))

(declare-fun res!692845 () Bool)

(assert (=> b!1038529 (=> res!692845 e!587688)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038529 (= res!692845 (not (validMask!0 (mask!30247 thiss!1427))))))

(declare-fun lt!457769 () array!65438)

(declare-datatypes ((List!22061 0))(
  ( (Nil!22058) (Cons!22057 (h!23260 (_ BitVec 64)) (t!31282 List!22061)) )
))
(declare-fun arrayNoDuplicates!0 (array!65438 (_ BitVec 32) List!22061) Bool)

(assert (=> b!1038529 (arrayNoDuplicates!0 lt!457769 #b00000000000000000000000000000000 Nil!22058)))

(declare-datatypes ((Unit!33972 0))(
  ( (Unit!33973) )
))
(declare-fun lt!457770 () Unit!33972)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22061) Unit!33972)

(assert (=> b!1038529 (= lt!457770 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11509 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41455 lt!457768) #b00000000000000000000000000000000 Nil!22058))))

(declare-fun arrayCountValidKeys!0 (array!65438 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038529 (= (arrayCountValidKeys!0 lt!457769 #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038529 (= lt!457769 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun lt!457767 () Unit!33972)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65438 (_ BitVec 32) (_ BitVec 64)) Unit!33972)

(assert (=> b!1038529 (= lt!457767 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11509 thiss!1427) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038530 () Bool)

(declare-fun res!692847 () Bool)

(assert (=> b!1038530 (=> (not res!692847) (not e!587689))))

(assert (=> b!1038530 (= res!692847 (not (= key!909 (bvneg key!909))))))

(assert (= (and start!90904 res!692848) b!1038530))

(assert (= (and b!1038530 res!692847) b!1038524))

(assert (= (and b!1038524 res!692846) b!1038529))

(assert (= (and b!1038529 (not res!692845)) b!1038528))

(assert (= (and b!1038527 condMapEmpty!38550) mapIsEmpty!38550))

(assert (= (and b!1038527 (not condMapEmpty!38550)) mapNonEmpty!38550))

(assert (= (and mapNonEmpty!38550 ((_ is ValueCellFull!11631) mapValue!38550)) b!1038523))

(assert (= (and b!1038527 ((_ is ValueCellFull!11631) mapDefault!38550)) b!1038526))

(assert (= b!1038525 b!1038527))

(assert (= start!90904 b!1038525))

(declare-fun m!958577 () Bool)

(assert (=> mapNonEmpty!38550 m!958577))

(declare-fun m!958579 () Bool)

(assert (=> b!1038524 m!958579))

(declare-fun m!958581 () Bool)

(assert (=> start!90904 m!958581))

(declare-fun m!958583 () Bool)

(assert (=> b!1038525 m!958583))

(declare-fun m!958585 () Bool)

(assert (=> b!1038525 m!958585))

(declare-fun m!958587 () Bool)

(assert (=> b!1038529 m!958587))

(declare-fun m!958589 () Bool)

(assert (=> b!1038529 m!958589))

(declare-fun m!958591 () Bool)

(assert (=> b!1038529 m!958591))

(declare-fun m!958593 () Bool)

(assert (=> b!1038529 m!958593))

(declare-fun m!958595 () Bool)

(assert (=> b!1038529 m!958595))

(declare-fun m!958597 () Bool)

(assert (=> b!1038529 m!958597))

(declare-fun m!958599 () Bool)

(assert (=> b!1038529 m!958599))

(check-sat (not mapNonEmpty!38550) b_and!33499 (not start!90904) (not b_next!20949) tp_is_empty!24669 (not b!1038525) (not b!1038524) (not b!1038529))
(check-sat b_and!33499 (not b_next!20949))
(get-model)

(declare-fun b!1038563 () Bool)

(declare-fun e!587723 () (_ BitVec 32))

(assert (=> b!1038563 (= e!587723 #b00000000000000000000000000000000)))

(declare-fun b!1038564 () Bool)

(declare-fun e!587722 () (_ BitVec 32))

(assert (=> b!1038564 (= e!587723 e!587722)))

(declare-fun c!105172 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1038564 (= c!105172 (validKeyInArray!0 (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(declare-fun d!125309 () Bool)

(declare-fun lt!457785 () (_ BitVec 32))

(assert (=> d!125309 (and (bvsge lt!457785 #b00000000000000000000000000000000) (bvsle lt!457785 (bvsub (size!32022 lt!457769) #b00000000000000000000000000000000)))))

(assert (=> d!125309 (= lt!457785 e!587723)))

(declare-fun c!105171 () Bool)

(assert (=> d!125309 (= c!105171 (bvsge #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125309 (and (bvsle #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32022 (_keys!11509 thiss!1427)) (size!32022 lt!457769)))))

(assert (=> d!125309 (= (arrayCountValidKeys!0 lt!457769 #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) lt!457785)))

(declare-fun bm!43949 () Bool)

(declare-fun call!43952 () (_ BitVec 32))

(assert (=> bm!43949 (= call!43952 (arrayCountValidKeys!0 lt!457769 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun b!1038565 () Bool)

(assert (=> b!1038565 (= e!587722 call!43952)))

(declare-fun b!1038566 () Bool)

(assert (=> b!1038566 (= e!587722 (bvadd #b00000000000000000000000000000001 call!43952))))

(assert (= (and d!125309 c!105171) b!1038563))

(assert (= (and d!125309 (not c!105171)) b!1038564))

(assert (= (and b!1038564 c!105172) b!1038566))

(assert (= (and b!1038564 (not c!105172)) b!1038565))

(assert (= (or b!1038566 b!1038565) bm!43949))

(declare-fun m!958625 () Bool)

(assert (=> b!1038564 m!958625))

(assert (=> b!1038564 m!958625))

(declare-fun m!958627 () Bool)

(assert (=> b!1038564 m!958627))

(declare-fun m!958629 () Bool)

(assert (=> bm!43949 m!958629))

(assert (=> b!1038529 d!125309))

(declare-fun d!125311 () Bool)

(declare-fun e!587726 () Bool)

(assert (=> d!125311 e!587726))

(declare-fun res!692863 () Bool)

(assert (=> d!125311 (=> (not res!692863) (not e!587726))))

(assert (=> d!125311 (= res!692863 (and (bvsge (index!41455 lt!457768) #b00000000000000000000000000000000) (bvslt (index!41455 lt!457768) (size!32022 (_keys!11509 thiss!1427)))))))

(declare-fun lt!457788 () Unit!33972)

(declare-fun choose!53 (array!65438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22061) Unit!33972)

(assert (=> d!125311 (= lt!457788 (choose!53 (_keys!11509 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41455 lt!457768) #b00000000000000000000000000000000 Nil!22058))))

(assert (=> d!125311 (bvslt (size!32022 (_keys!11509 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125311 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11509 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41455 lt!457768) #b00000000000000000000000000000000 Nil!22058) lt!457788)))

(declare-fun b!1038569 () Bool)

(assert (=> b!1038569 (= e!587726 (arrayNoDuplicates!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000000 Nil!22058))))

(assert (= (and d!125311 res!692863) b!1038569))

(declare-fun m!958631 () Bool)

(assert (=> d!125311 m!958631))

(assert (=> b!1038569 m!958595))

(declare-fun m!958633 () Bool)

(assert (=> b!1038569 m!958633))

(assert (=> b!1038529 d!125311))

(declare-fun b!1038578 () Bool)

(declare-fun res!692872 () Bool)

(declare-fun e!587732 () Bool)

(assert (=> b!1038578 (=> (not res!692872) (not e!587732))))

(assert (=> b!1038578 (= res!692872 (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768))))))

(declare-fun b!1038579 () Bool)

(declare-fun res!692873 () Bool)

(assert (=> b!1038579 (=> (not res!692873) (not e!587732))))

(assert (=> b!1038579 (= res!692873 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1038581 () Bool)

(declare-fun e!587731 () Bool)

(assert (=> b!1038581 (= e!587731 (= (arrayCountValidKeys!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1038580 () Bool)

(assert (=> b!1038580 (= e!587732 (bvslt (size!32022 (_keys!11509 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun d!125313 () Bool)

(assert (=> d!125313 e!587731))

(declare-fun res!692874 () Bool)

(assert (=> d!125313 (=> (not res!692874) (not e!587731))))

(assert (=> d!125313 (= res!692874 (and (bvsge (index!41455 lt!457768) #b00000000000000000000000000000000) (bvslt (index!41455 lt!457768) (size!32022 (_keys!11509 thiss!1427)))))))

(declare-fun lt!457791 () Unit!33972)

(declare-fun choose!82 (array!65438 (_ BitVec 32) (_ BitVec 64)) Unit!33972)

(assert (=> d!125313 (= lt!457791 (choose!82 (_keys!11509 thiss!1427) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125313 e!587732))

(declare-fun res!692875 () Bool)

(assert (=> d!125313 (=> (not res!692875) (not e!587732))))

(assert (=> d!125313 (= res!692875 (and (bvsge (index!41455 lt!457768) #b00000000000000000000000000000000) (bvslt (index!41455 lt!457768) (size!32022 (_keys!11509 thiss!1427)))))))

(assert (=> d!125313 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11509 thiss!1427) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457791)))

(assert (= (and d!125313 res!692875) b!1038578))

(assert (= (and b!1038578 res!692872) b!1038579))

(assert (= (and b!1038579 res!692873) b!1038580))

(assert (= (and d!125313 res!692874) b!1038581))

(declare-fun m!958635 () Bool)

(assert (=> b!1038578 m!958635))

(assert (=> b!1038578 m!958635))

(declare-fun m!958637 () Bool)

(assert (=> b!1038578 m!958637))

(declare-fun m!958639 () Bool)

(assert (=> b!1038579 m!958639))

(assert (=> b!1038581 m!958595))

(declare-fun m!958641 () Bool)

(assert (=> b!1038581 m!958641))

(assert (=> b!1038581 m!958591))

(declare-fun m!958643 () Bool)

(assert (=> d!125313 m!958643))

(assert (=> b!1038529 d!125313))

(declare-fun d!125315 () Bool)

(assert (=> d!125315 (= (validMask!0 (mask!30247 thiss!1427)) (and (or (= (mask!30247 thiss!1427) #b00000000000000000000000000000111) (= (mask!30247 thiss!1427) #b00000000000000000000000000001111) (= (mask!30247 thiss!1427) #b00000000000000000000000000011111) (= (mask!30247 thiss!1427) #b00000000000000000000000000111111) (= (mask!30247 thiss!1427) #b00000000000000000000000001111111) (= (mask!30247 thiss!1427) #b00000000000000000000000011111111) (= (mask!30247 thiss!1427) #b00000000000000000000000111111111) (= (mask!30247 thiss!1427) #b00000000000000000000001111111111) (= (mask!30247 thiss!1427) #b00000000000000000000011111111111) (= (mask!30247 thiss!1427) #b00000000000000000000111111111111) (= (mask!30247 thiss!1427) #b00000000000000000001111111111111) (= (mask!30247 thiss!1427) #b00000000000000000011111111111111) (= (mask!30247 thiss!1427) #b00000000000000000111111111111111) (= (mask!30247 thiss!1427) #b00000000000000001111111111111111) (= (mask!30247 thiss!1427) #b00000000000000011111111111111111) (= (mask!30247 thiss!1427) #b00000000000000111111111111111111) (= (mask!30247 thiss!1427) #b00000000000001111111111111111111) (= (mask!30247 thiss!1427) #b00000000000011111111111111111111) (= (mask!30247 thiss!1427) #b00000000000111111111111111111111) (= (mask!30247 thiss!1427) #b00000000001111111111111111111111) (= (mask!30247 thiss!1427) #b00000000011111111111111111111111) (= (mask!30247 thiss!1427) #b00000000111111111111111111111111) (= (mask!30247 thiss!1427) #b00000001111111111111111111111111) (= (mask!30247 thiss!1427) #b00000011111111111111111111111111) (= (mask!30247 thiss!1427) #b00000111111111111111111111111111) (= (mask!30247 thiss!1427) #b00001111111111111111111111111111) (= (mask!30247 thiss!1427) #b00011111111111111111111111111111) (= (mask!30247 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30247 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1038529 d!125315))

(declare-fun b!1038582 () Bool)

(declare-fun e!587734 () (_ BitVec 32))

(assert (=> b!1038582 (= e!587734 #b00000000000000000000000000000000)))

(declare-fun b!1038583 () Bool)

(declare-fun e!587733 () (_ BitVec 32))

(assert (=> b!1038583 (= e!587734 e!587733)))

(declare-fun c!105174 () Bool)

(assert (=> b!1038583 (= c!105174 (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125317 () Bool)

(declare-fun lt!457792 () (_ BitVec 32))

(assert (=> d!125317 (and (bvsge lt!457792 #b00000000000000000000000000000000) (bvsle lt!457792 (bvsub (size!32022 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125317 (= lt!457792 e!587734)))

(declare-fun c!105173 () Bool)

(assert (=> d!125317 (= c!105173 (bvsge #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125317 (and (bvsle #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32022 (_keys!11509 thiss!1427)) (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125317 (= (arrayCountValidKeys!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) lt!457792)))

(declare-fun bm!43950 () Bool)

(declare-fun call!43953 () (_ BitVec 32))

(assert (=> bm!43950 (= call!43953 (arrayCountValidKeys!0 (_keys!11509 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun b!1038584 () Bool)

(assert (=> b!1038584 (= e!587733 call!43953)))

(declare-fun b!1038585 () Bool)

(assert (=> b!1038585 (= e!587733 (bvadd #b00000000000000000000000000000001 call!43953))))

(assert (= (and d!125317 c!105173) b!1038582))

(assert (= (and d!125317 (not c!105173)) b!1038583))

(assert (= (and b!1038583 c!105174) b!1038585))

(assert (= (and b!1038583 (not c!105174)) b!1038584))

(assert (= (or b!1038585 b!1038584) bm!43950))

(declare-fun m!958645 () Bool)

(assert (=> b!1038583 m!958645))

(assert (=> b!1038583 m!958645))

(declare-fun m!958647 () Bool)

(assert (=> b!1038583 m!958647))

(declare-fun m!958649 () Bool)

(assert (=> bm!43950 m!958649))

(assert (=> b!1038529 d!125317))

(declare-fun b!1038596 () Bool)

(declare-fun e!587744 () Bool)

(declare-fun e!587743 () Bool)

(assert (=> b!1038596 (= e!587744 e!587743)))

(declare-fun c!105177 () Bool)

(assert (=> b!1038596 (= c!105177 (validKeyInArray!0 (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(declare-fun b!1038597 () Bool)

(declare-fun e!587745 () Bool)

(assert (=> b!1038597 (= e!587745 e!587744)))

(declare-fun res!692883 () Bool)

(assert (=> b!1038597 (=> (not res!692883) (not e!587744))))

(declare-fun e!587746 () Bool)

(assert (=> b!1038597 (= res!692883 (not e!587746))))

(declare-fun res!692882 () Bool)

(assert (=> b!1038597 (=> (not res!692882) (not e!587746))))

(assert (=> b!1038597 (= res!692882 (validKeyInArray!0 (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(declare-fun b!1038598 () Bool)

(declare-fun call!43956 () Bool)

(assert (=> b!1038598 (= e!587743 call!43956)))

(declare-fun d!125319 () Bool)

(declare-fun res!692884 () Bool)

(assert (=> d!125319 (=> res!692884 e!587745)))

(assert (=> d!125319 (= res!692884 (bvsge #b00000000000000000000000000000000 (size!32022 lt!457769)))))

(assert (=> d!125319 (= (arrayNoDuplicates!0 lt!457769 #b00000000000000000000000000000000 Nil!22058) e!587745)))

(declare-fun bm!43953 () Bool)

(assert (=> bm!43953 (= call!43956 (arrayNoDuplicates!0 lt!457769 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105177 (Cons!22057 (select (arr!31491 lt!457769) #b00000000000000000000000000000000) Nil!22058) Nil!22058)))))

(declare-fun b!1038599 () Bool)

(assert (=> b!1038599 (= e!587743 call!43956)))

(declare-fun b!1038600 () Bool)

(declare-fun contains!6062 (List!22061 (_ BitVec 64)) Bool)

(assert (=> b!1038600 (= e!587746 (contains!6062 Nil!22058 (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(assert (= (and d!125319 (not res!692884)) b!1038597))

(assert (= (and b!1038597 res!692882) b!1038600))

(assert (= (and b!1038597 res!692883) b!1038596))

(assert (= (and b!1038596 c!105177) b!1038599))

(assert (= (and b!1038596 (not c!105177)) b!1038598))

(assert (= (or b!1038599 b!1038598) bm!43953))

(assert (=> b!1038596 m!958625))

(assert (=> b!1038596 m!958625))

(assert (=> b!1038596 m!958627))

(assert (=> b!1038597 m!958625))

(assert (=> b!1038597 m!958625))

(assert (=> b!1038597 m!958627))

(assert (=> bm!43953 m!958625))

(declare-fun m!958651 () Bool)

(assert (=> bm!43953 m!958651))

(assert (=> b!1038600 m!958625))

(assert (=> b!1038600 m!958625))

(declare-fun m!958653 () Bool)

(assert (=> b!1038600 m!958653))

(assert (=> b!1038529 d!125319))

(declare-fun b!1038613 () Bool)

(declare-fun e!587754 () SeekEntryResult!9771)

(declare-fun lt!457801 () SeekEntryResult!9771)

(assert (=> b!1038613 (= e!587754 (Found!9771 (index!41456 lt!457801)))))

(declare-fun b!1038614 () Bool)

(declare-fun e!587753 () SeekEntryResult!9771)

(declare-fun lt!457804 () SeekEntryResult!9771)

(assert (=> b!1038614 (= e!587753 (ite ((_ is MissingVacant!9771) lt!457804) (MissingZero!9771 (index!41457 lt!457804)) lt!457804))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65438 (_ BitVec 32)) SeekEntryResult!9771)

(assert (=> b!1038614 (= lt!457804 (seekKeyOrZeroReturnVacant!0 (x!92669 lt!457801) (index!41456 lt!457801) (index!41456 lt!457801) key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(declare-fun b!1038615 () Bool)

(declare-fun e!587755 () SeekEntryResult!9771)

(assert (=> b!1038615 (= e!587755 Undefined!9771)))

(declare-fun d!125321 () Bool)

(declare-fun lt!457803 () SeekEntryResult!9771)

(assert (=> d!125321 (and (or ((_ is MissingVacant!9771) lt!457803) (not ((_ is Found!9771) lt!457803)) (and (bvsge (index!41455 lt!457803) #b00000000000000000000000000000000) (bvslt (index!41455 lt!457803) (size!32022 (_keys!11509 thiss!1427))))) (not ((_ is MissingVacant!9771) lt!457803)) (or (not ((_ is Found!9771) lt!457803)) (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457803)) key!909)))))

(assert (=> d!125321 (= lt!457803 e!587755)))

(declare-fun c!105186 () Bool)

(assert (=> d!125321 (= c!105186 (and ((_ is Intermediate!9771) lt!457801) (undefined!10583 lt!457801)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65438 (_ BitVec 32)) SeekEntryResult!9771)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125321 (= lt!457801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30247 thiss!1427)) key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(assert (=> d!125321 (validMask!0 (mask!30247 thiss!1427))))

(assert (=> d!125321 (= (seekEntry!0 key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)) lt!457803)))

(declare-fun b!1038616 () Bool)

(assert (=> b!1038616 (= e!587755 e!587754)))

(declare-fun lt!457802 () (_ BitVec 64))

(assert (=> b!1038616 (= lt!457802 (select (arr!31491 (_keys!11509 thiss!1427)) (index!41456 lt!457801)))))

(declare-fun c!105185 () Bool)

(assert (=> b!1038616 (= c!105185 (= lt!457802 key!909))))

(declare-fun b!1038617 () Bool)

(assert (=> b!1038617 (= e!587753 (MissingZero!9771 (index!41456 lt!457801)))))

(declare-fun b!1038618 () Bool)

(declare-fun c!105184 () Bool)

(assert (=> b!1038618 (= c!105184 (= lt!457802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1038618 (= e!587754 e!587753)))

(assert (= (and d!125321 c!105186) b!1038615))

(assert (= (and d!125321 (not c!105186)) b!1038616))

(assert (= (and b!1038616 c!105185) b!1038613))

(assert (= (and b!1038616 (not c!105185)) b!1038618))

(assert (= (and b!1038618 c!105184) b!1038617))

(assert (= (and b!1038618 (not c!105184)) b!1038614))

(declare-fun m!958655 () Bool)

(assert (=> b!1038614 m!958655))

(declare-fun m!958657 () Bool)

(assert (=> d!125321 m!958657))

(declare-fun m!958659 () Bool)

(assert (=> d!125321 m!958659))

(assert (=> d!125321 m!958659))

(declare-fun m!958661 () Bool)

(assert (=> d!125321 m!958661))

(assert (=> d!125321 m!958597))

(declare-fun m!958663 () Bool)

(assert (=> b!1038616 m!958663))

(assert (=> b!1038524 d!125321))

(declare-fun d!125323 () Bool)

(declare-fun res!692891 () Bool)

(declare-fun e!587758 () Bool)

(assert (=> d!125323 (=> (not res!692891) (not e!587758))))

(declare-fun simpleValid!422 (LongMapFixedSize!5856) Bool)

(assert (=> d!125323 (= res!692891 (simpleValid!422 thiss!1427))))

(assert (=> d!125323 (= (valid!2157 thiss!1427) e!587758)))

(declare-fun b!1038625 () Bool)

(declare-fun res!692892 () Bool)

(assert (=> b!1038625 (=> (not res!692892) (not e!587758))))

(assert (=> b!1038625 (= res!692892 (= (arrayCountValidKeys!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (_size!2983 thiss!1427)))))

(declare-fun b!1038626 () Bool)

(declare-fun res!692893 () Bool)

(assert (=> b!1038626 (=> (not res!692893) (not e!587758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65438 (_ BitVec 32)) Bool)

(assert (=> b!1038626 (= res!692893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(declare-fun b!1038627 () Bool)

(assert (=> b!1038627 (= e!587758 (arrayNoDuplicates!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 Nil!22058))))

(assert (= (and d!125323 res!692891) b!1038625))

(assert (= (and b!1038625 res!692892) b!1038626))

(assert (= (and b!1038626 res!692893) b!1038627))

(declare-fun m!958665 () Bool)

(assert (=> d!125323 m!958665))

(assert (=> b!1038625 m!958591))

(declare-fun m!958667 () Bool)

(assert (=> b!1038626 m!958667))

(declare-fun m!958669 () Bool)

(assert (=> b!1038627 m!958669))

(assert (=> start!90904 d!125323))

(declare-fun d!125325 () Bool)

(assert (=> d!125325 (= (array_inv!24187 (_keys!11509 thiss!1427)) (bvsge (size!32022 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038525 d!125325))

(declare-fun d!125327 () Bool)

(assert (=> d!125327 (= (array_inv!24188 (_values!6333 thiss!1427)) (bvsge (size!32023 (_values!6333 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038525 d!125327))

(declare-fun mapIsEmpty!38556 () Bool)

(declare-fun mapRes!38556 () Bool)

(assert (=> mapIsEmpty!38556 mapRes!38556))

(declare-fun b!1038635 () Bool)

(declare-fun e!587764 () Bool)

(assert (=> b!1038635 (= e!587764 tp_is_empty!24669)))

(declare-fun mapNonEmpty!38556 () Bool)

(declare-fun tp!74021 () Bool)

(declare-fun e!587763 () Bool)

(assert (=> mapNonEmpty!38556 (= mapRes!38556 (and tp!74021 e!587763))))

(declare-fun mapValue!38556 () ValueCell!11631)

(declare-fun mapKey!38556 () (_ BitVec 32))

(declare-fun mapRest!38556 () (Array (_ BitVec 32) ValueCell!11631))

(assert (=> mapNonEmpty!38556 (= mapRest!38550 (store mapRest!38556 mapKey!38556 mapValue!38556))))

(declare-fun condMapEmpty!38556 () Bool)

(declare-fun mapDefault!38556 () ValueCell!11631)

(assert (=> mapNonEmpty!38550 (= condMapEmpty!38556 (= mapRest!38550 ((as const (Array (_ BitVec 32) ValueCell!11631)) mapDefault!38556)))))

(assert (=> mapNonEmpty!38550 (= tp!74011 (and e!587764 mapRes!38556))))

(declare-fun b!1038634 () Bool)

(assert (=> b!1038634 (= e!587763 tp_is_empty!24669)))

(assert (= (and mapNonEmpty!38550 condMapEmpty!38556) mapIsEmpty!38556))

(assert (= (and mapNonEmpty!38550 (not condMapEmpty!38556)) mapNonEmpty!38556))

(assert (= (and mapNonEmpty!38556 ((_ is ValueCellFull!11631) mapValue!38556)) b!1038634))

(assert (= (and mapNonEmpty!38550 ((_ is ValueCellFull!11631) mapDefault!38556)) b!1038635))

(declare-fun m!958671 () Bool)

(assert (=> mapNonEmpty!38556 m!958671))

(check-sat b_and!33499 (not b!1038564) (not b!1038581) (not mapNonEmpty!38556) (not b!1038600) (not b!1038626) tp_is_empty!24669 (not b!1038583) (not b!1038579) (not b!1038578) (not b!1038627) (not b!1038569) (not d!125311) (not b!1038625) (not bm!43949) (not b!1038596) (not bm!43953) (not b!1038614) (not b!1038597) (not d!125323) (not b_next!20949) (not d!125313) (not bm!43950) (not d!125321))
(check-sat b_and!33499 (not b_next!20949))
(get-model)

(declare-fun b!1038644 () Bool)

(declare-fun e!587773 () Bool)

(declare-fun e!587771 () Bool)

(assert (=> b!1038644 (= e!587773 e!587771)))

(declare-fun c!105189 () Bool)

(assert (=> b!1038644 (= c!105189 (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125329 () Bool)

(declare-fun res!692898 () Bool)

(assert (=> d!125329 (=> res!692898 e!587773)))

(assert (=> d!125329 (= res!692898 (bvsge #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125329 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)) e!587773)))

(declare-fun b!1038645 () Bool)

(declare-fun call!43959 () Bool)

(assert (=> b!1038645 (= e!587771 call!43959)))

(declare-fun bm!43956 () Bool)

(assert (=> bm!43956 (= call!43959 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(declare-fun b!1038646 () Bool)

(declare-fun e!587772 () Bool)

(assert (=> b!1038646 (= e!587771 e!587772)))

(declare-fun lt!457812 () (_ BitVec 64))

(assert (=> b!1038646 (= lt!457812 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!457811 () Unit!33972)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65438 (_ BitVec 64) (_ BitVec 32)) Unit!33972)

(assert (=> b!1038646 (= lt!457811 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11509 thiss!1427) lt!457812 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1038646 (arrayContainsKey!0 (_keys!11509 thiss!1427) lt!457812 #b00000000000000000000000000000000)))

(declare-fun lt!457813 () Unit!33972)

(assert (=> b!1038646 (= lt!457813 lt!457811)))

(declare-fun res!692899 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65438 (_ BitVec 32)) SeekEntryResult!9771)

(assert (=> b!1038646 (= res!692899 (= (seekEntryOrOpen!0 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000) (_keys!11509 thiss!1427) (mask!30247 thiss!1427)) (Found!9771 #b00000000000000000000000000000000)))))

(assert (=> b!1038646 (=> (not res!692899) (not e!587772))))

(declare-fun b!1038647 () Bool)

(assert (=> b!1038647 (= e!587772 call!43959)))

(assert (= (and d!125329 (not res!692898)) b!1038644))

(assert (= (and b!1038644 c!105189) b!1038646))

(assert (= (and b!1038644 (not c!105189)) b!1038645))

(assert (= (and b!1038646 res!692899) b!1038647))

(assert (= (or b!1038647 b!1038645) bm!43956))

(assert (=> b!1038644 m!958645))

(assert (=> b!1038644 m!958645))

(assert (=> b!1038644 m!958647))

(declare-fun m!958673 () Bool)

(assert (=> bm!43956 m!958673))

(assert (=> b!1038646 m!958645))

(declare-fun m!958675 () Bool)

(assert (=> b!1038646 m!958675))

(declare-fun m!958677 () Bool)

(assert (=> b!1038646 m!958677))

(assert (=> b!1038646 m!958645))

(declare-fun m!958679 () Bool)

(assert (=> b!1038646 m!958679))

(assert (=> b!1038626 d!125329))

(assert (=> b!1038625 d!125317))

(declare-fun b!1038648 () Bool)

(declare-fun e!587775 () Bool)

(declare-fun e!587774 () Bool)

(assert (=> b!1038648 (= e!587775 e!587774)))

(declare-fun c!105190 () Bool)

(assert (=> b!1038648 (= c!105190 (validKeyInArray!0 (select (arr!31491 lt!457769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1038649 () Bool)

(declare-fun e!587776 () Bool)

(assert (=> b!1038649 (= e!587776 e!587775)))

(declare-fun res!692901 () Bool)

(assert (=> b!1038649 (=> (not res!692901) (not e!587775))))

(declare-fun e!587777 () Bool)

(assert (=> b!1038649 (= res!692901 (not e!587777))))

(declare-fun res!692900 () Bool)

(assert (=> b!1038649 (=> (not res!692900) (not e!587777))))

(assert (=> b!1038649 (= res!692900 (validKeyInArray!0 (select (arr!31491 lt!457769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1038650 () Bool)

(declare-fun call!43960 () Bool)

(assert (=> b!1038650 (= e!587774 call!43960)))

(declare-fun d!125331 () Bool)

(declare-fun res!692902 () Bool)

(assert (=> d!125331 (=> res!692902 e!587776)))

(assert (=> d!125331 (= res!692902 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 lt!457769)))))

(assert (=> d!125331 (= (arrayNoDuplicates!0 lt!457769 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105177 (Cons!22057 (select (arr!31491 lt!457769) #b00000000000000000000000000000000) Nil!22058) Nil!22058)) e!587776)))

(declare-fun bm!43957 () Bool)

(assert (=> bm!43957 (= call!43960 (arrayNoDuplicates!0 lt!457769 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!105190 (Cons!22057 (select (arr!31491 lt!457769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!105177 (Cons!22057 (select (arr!31491 lt!457769) #b00000000000000000000000000000000) Nil!22058) Nil!22058)) (ite c!105177 (Cons!22057 (select (arr!31491 lt!457769) #b00000000000000000000000000000000) Nil!22058) Nil!22058))))))

(declare-fun b!1038651 () Bool)

(assert (=> b!1038651 (= e!587774 call!43960)))

(declare-fun b!1038652 () Bool)

(assert (=> b!1038652 (= e!587777 (contains!6062 (ite c!105177 (Cons!22057 (select (arr!31491 lt!457769) #b00000000000000000000000000000000) Nil!22058) Nil!22058) (select (arr!31491 lt!457769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125331 (not res!692902)) b!1038649))

(assert (= (and b!1038649 res!692900) b!1038652))

(assert (= (and b!1038649 res!692901) b!1038648))

(assert (= (and b!1038648 c!105190) b!1038651))

(assert (= (and b!1038648 (not c!105190)) b!1038650))

(assert (= (or b!1038651 b!1038650) bm!43957))

(declare-fun m!958681 () Bool)

(assert (=> b!1038648 m!958681))

(assert (=> b!1038648 m!958681))

(declare-fun m!958683 () Bool)

(assert (=> b!1038648 m!958683))

(assert (=> b!1038649 m!958681))

(assert (=> b!1038649 m!958681))

(assert (=> b!1038649 m!958683))

(assert (=> bm!43957 m!958681))

(declare-fun m!958685 () Bool)

(assert (=> bm!43957 m!958685))

(assert (=> b!1038652 m!958681))

(assert (=> b!1038652 m!958681))

(declare-fun m!958687 () Bool)

(assert (=> b!1038652 m!958687))

(assert (=> bm!43953 d!125331))

(declare-fun b!1038653 () Bool)

(declare-fun e!587779 () Bool)

(declare-fun e!587778 () Bool)

(assert (=> b!1038653 (= e!587779 e!587778)))

(declare-fun c!105191 () Bool)

(assert (=> b!1038653 (= c!105191 (validKeyInArray!0 (select (arr!31491 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1038654 () Bool)

(declare-fun e!587780 () Bool)

(assert (=> b!1038654 (= e!587780 e!587779)))

(declare-fun res!692904 () Bool)

(assert (=> b!1038654 (=> (not res!692904) (not e!587779))))

(declare-fun e!587781 () Bool)

(assert (=> b!1038654 (= res!692904 (not e!587781))))

(declare-fun res!692903 () Bool)

(assert (=> b!1038654 (=> (not res!692903) (not e!587781))))

(assert (=> b!1038654 (= res!692903 (validKeyInArray!0 (select (arr!31491 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1038655 () Bool)

(declare-fun call!43961 () Bool)

(assert (=> b!1038655 (= e!587778 call!43961)))

(declare-fun d!125333 () Bool)

(declare-fun res!692905 () Bool)

(assert (=> d!125333 (=> res!692905 e!587780)))

(assert (=> d!125333 (= res!692905 (bvsge #b00000000000000000000000000000000 (size!32022 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))))))))

(assert (=> d!125333 (= (arrayNoDuplicates!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000000 Nil!22058) e!587780)))

(declare-fun bm!43958 () Bool)

(assert (=> bm!43958 (= call!43961 (arrayNoDuplicates!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105191 (Cons!22057 (select (arr!31491 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427)))) #b00000000000000000000000000000000) Nil!22058) Nil!22058)))))

(declare-fun b!1038656 () Bool)

(assert (=> b!1038656 (= e!587778 call!43961)))

(declare-fun b!1038657 () Bool)

(assert (=> b!1038657 (= e!587781 (contains!6062 Nil!22058 (select (arr!31491 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125333 (not res!692905)) b!1038654))

(assert (= (and b!1038654 res!692903) b!1038657))

(assert (= (and b!1038654 res!692904) b!1038653))

(assert (= (and b!1038653 c!105191) b!1038656))

(assert (= (and b!1038653 (not c!105191)) b!1038655))

(assert (= (or b!1038656 b!1038655) bm!43958))

(declare-fun m!958689 () Bool)

(assert (=> b!1038653 m!958689))

(assert (=> b!1038653 m!958689))

(declare-fun m!958691 () Bool)

(assert (=> b!1038653 m!958691))

(assert (=> b!1038654 m!958689))

(assert (=> b!1038654 m!958689))

(assert (=> b!1038654 m!958691))

(assert (=> bm!43958 m!958689))

(declare-fun m!958693 () Bool)

(assert (=> bm!43958 m!958693))

(assert (=> b!1038657 m!958689))

(assert (=> b!1038657 m!958689))

(declare-fun m!958695 () Bool)

(assert (=> b!1038657 m!958695))

(assert (=> b!1038569 d!125333))

(declare-fun d!125335 () Bool)

(declare-fun res!692916 () Bool)

(declare-fun e!587784 () Bool)

(assert (=> d!125335 (=> (not res!692916) (not e!587784))))

(assert (=> d!125335 (= res!692916 (validMask!0 (mask!30247 thiss!1427)))))

(assert (=> d!125335 (= (simpleValid!422 thiss!1427) e!587784)))

(declare-fun b!1038666 () Bool)

(declare-fun res!692915 () Bool)

(assert (=> b!1038666 (=> (not res!692915) (not e!587784))))

(assert (=> b!1038666 (= res!692915 (and (= (size!32023 (_values!6333 thiss!1427)) (bvadd (mask!30247 thiss!1427) #b00000000000000000000000000000001)) (= (size!32022 (_keys!11509 thiss!1427)) (size!32023 (_values!6333 thiss!1427))) (bvsge (_size!2983 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2983 thiss!1427) (bvadd (mask!30247 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1038668 () Bool)

(declare-fun res!692917 () Bool)

(assert (=> b!1038668 (=> (not res!692917) (not e!587784))))

(declare-fun size!32026 (LongMapFixedSize!5856) (_ BitVec 32))

(assert (=> b!1038668 (= res!692917 (= (size!32026 thiss!1427) (bvadd (_size!2983 thiss!1427) (bvsdiv (bvadd (extraKeys!6038 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1038669 () Bool)

(assert (=> b!1038669 (= e!587784 (and (bvsge (extraKeys!6038 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6038 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2983 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1038667 () Bool)

(declare-fun res!692914 () Bool)

(assert (=> b!1038667 (=> (not res!692914) (not e!587784))))

(assert (=> b!1038667 (= res!692914 (bvsge (size!32026 thiss!1427) (_size!2983 thiss!1427)))))

(assert (= (and d!125335 res!692916) b!1038666))

(assert (= (and b!1038666 res!692915) b!1038667))

(assert (= (and b!1038667 res!692914) b!1038668))

(assert (= (and b!1038668 res!692917) b!1038669))

(assert (=> d!125335 m!958597))

(declare-fun m!958697 () Bool)

(assert (=> b!1038668 m!958697))

(assert (=> b!1038667 m!958697))

(assert (=> d!125323 d!125335))

(declare-fun d!125337 () Bool)

(assert (=> d!125337 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1038579 d!125337))

(declare-fun d!125339 () Bool)

(assert (=> d!125339 (= (validKeyInArray!0 (select (arr!31491 lt!457769) #b00000000000000000000000000000000)) (and (not (= (select (arr!31491 lt!457769) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31491 lt!457769) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1038597 d!125339))

(declare-fun d!125341 () Bool)

(assert (=> d!125341 (= (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768))) (and (not (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1038578 d!125341))

(declare-fun b!1038688 () Bool)

(declare-fun e!587797 () SeekEntryResult!9771)

(assert (=> b!1038688 (= e!587797 (Intermediate!9771 true (toIndex!0 key!909 (mask!30247 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun d!125343 () Bool)

(declare-fun e!587795 () Bool)

(assert (=> d!125343 e!587795))

(declare-fun c!105199 () Bool)

(declare-fun lt!457819 () SeekEntryResult!9771)

(assert (=> d!125343 (= c!105199 (and ((_ is Intermediate!9771) lt!457819) (undefined!10583 lt!457819)))))

(assert (=> d!125343 (= lt!457819 e!587797)))

(declare-fun c!105200 () Bool)

(assert (=> d!125343 (= c!105200 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!457818 () (_ BitVec 64))

(assert (=> d!125343 (= lt!457818 (select (arr!31491 (_keys!11509 thiss!1427)) (toIndex!0 key!909 (mask!30247 thiss!1427))))))

(assert (=> d!125343 (validMask!0 (mask!30247 thiss!1427))))

(assert (=> d!125343 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30247 thiss!1427)) key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)) lt!457819)))

(declare-fun b!1038689 () Bool)

(assert (=> b!1038689 (= e!587795 (bvsge (x!92669 lt!457819) #b01111111111111111111111111111110))))

(declare-fun b!1038690 () Bool)

(assert (=> b!1038690 (and (bvsge (index!41456 lt!457819) #b00000000000000000000000000000000) (bvslt (index!41456 lt!457819) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun res!692926 () Bool)

(assert (=> b!1038690 (= res!692926 (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41456 lt!457819)) key!909))))

(declare-fun e!587799 () Bool)

(assert (=> b!1038690 (=> res!692926 e!587799)))

(declare-fun e!587798 () Bool)

(assert (=> b!1038690 (= e!587798 e!587799)))

(declare-fun b!1038691 () Bool)

(assert (=> b!1038691 (and (bvsge (index!41456 lt!457819) #b00000000000000000000000000000000) (bvslt (index!41456 lt!457819) (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> b!1038691 (= e!587799 (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41456 lt!457819)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038692 () Bool)

(declare-fun e!587796 () SeekEntryResult!9771)

(assert (=> b!1038692 (= e!587796 (Intermediate!9771 false (toIndex!0 key!909 (mask!30247 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1038693 () Bool)

(assert (=> b!1038693 (= e!587797 e!587796)))

(declare-fun c!105198 () Bool)

(assert (=> b!1038693 (= c!105198 (or (= lt!457818 key!909) (= (bvadd lt!457818 lt!457818) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1038694 () Bool)

(assert (=> b!1038694 (= e!587795 e!587798)))

(declare-fun res!692924 () Bool)

(assert (=> b!1038694 (= res!692924 (and ((_ is Intermediate!9771) lt!457819) (not (undefined!10583 lt!457819)) (bvslt (x!92669 lt!457819) #b01111111111111111111111111111110) (bvsge (x!92669 lt!457819) #b00000000000000000000000000000000) (bvsge (x!92669 lt!457819) #b00000000000000000000000000000000)))))

(assert (=> b!1038694 (=> (not res!692924) (not e!587798))))

(declare-fun b!1038695 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038695 (= e!587796 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!30247 thiss!1427)) #b00000000000000000000000000000000 (mask!30247 thiss!1427)) key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(declare-fun b!1038696 () Bool)

(assert (=> b!1038696 (and (bvsge (index!41456 lt!457819) #b00000000000000000000000000000000) (bvslt (index!41456 lt!457819) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun res!692925 () Bool)

(assert (=> b!1038696 (= res!692925 (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41456 lt!457819)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1038696 (=> res!692925 e!587799)))

(assert (= (and d!125343 c!105200) b!1038688))

(assert (= (and d!125343 (not c!105200)) b!1038693))

(assert (= (and b!1038693 c!105198) b!1038692))

(assert (= (and b!1038693 (not c!105198)) b!1038695))

(assert (= (and d!125343 c!105199) b!1038689))

(assert (= (and d!125343 (not c!105199)) b!1038694))

(assert (= (and b!1038694 res!692924) b!1038690))

(assert (= (and b!1038690 (not res!692926)) b!1038696))

(assert (= (and b!1038696 (not res!692925)) b!1038691))

(assert (=> b!1038695 m!958659))

(declare-fun m!958699 () Bool)

(assert (=> b!1038695 m!958699))

(assert (=> b!1038695 m!958699))

(declare-fun m!958701 () Bool)

(assert (=> b!1038695 m!958701))

(declare-fun m!958703 () Bool)

(assert (=> b!1038690 m!958703))

(assert (=> b!1038696 m!958703))

(assert (=> d!125343 m!958659))

(declare-fun m!958705 () Bool)

(assert (=> d!125343 m!958705))

(assert (=> d!125343 m!958597))

(assert (=> b!1038691 m!958703))

(assert (=> d!125321 d!125343))

(declare-fun d!125345 () Bool)

(declare-fun lt!457825 () (_ BitVec 32))

(declare-fun lt!457824 () (_ BitVec 32))

(assert (=> d!125345 (= lt!457825 (bvmul (bvxor lt!457824 (bvlshr lt!457824 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!125345 (= lt!457824 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!125345 (and (bvsge (mask!30247 thiss!1427) #b00000000000000000000000000000000) (let ((res!692927 (let ((h!23261 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!92686 (bvmul (bvxor h!23261 (bvlshr h!23261 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!92686 (bvlshr x!92686 #b00000000000000000000000000001101)) (mask!30247 thiss!1427)))))) (and (bvslt res!692927 (bvadd (mask!30247 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!692927 #b00000000000000000000000000000000))))))

(assert (=> d!125345 (= (toIndex!0 key!909 (mask!30247 thiss!1427)) (bvand (bvxor lt!457825 (bvlshr lt!457825 #b00000000000000000000000000001101)) (mask!30247 thiss!1427)))))

(assert (=> d!125321 d!125345))

(assert (=> d!125321 d!125315))

(assert (=> b!1038596 d!125339))

(declare-fun b!1038697 () Bool)

(declare-fun e!587801 () (_ BitVec 32))

(assert (=> b!1038697 (= e!587801 #b00000000000000000000000000000000)))

(declare-fun b!1038698 () Bool)

(declare-fun e!587800 () (_ BitVec 32))

(assert (=> b!1038698 (= e!587801 e!587800)))

(declare-fun c!105202 () Bool)

(assert (=> b!1038698 (= c!105202 (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!125347 () Bool)

(declare-fun lt!457826 () (_ BitVec 32))

(assert (=> d!125347 (and (bvsge lt!457826 #b00000000000000000000000000000000) (bvsle lt!457826 (bvsub (size!32022 (_keys!11509 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!125347 (= lt!457826 e!587801)))

(declare-fun c!105201 () Bool)

(assert (=> d!125347 (= c!105201 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125347 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32022 (_keys!11509 thiss!1427)) (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125347 (= (arrayCountValidKeys!0 (_keys!11509 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))) lt!457826)))

(declare-fun bm!43959 () Bool)

(declare-fun call!43962 () (_ BitVec 32))

(assert (=> bm!43959 (= call!43962 (arrayCountValidKeys!0 (_keys!11509 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun b!1038699 () Bool)

(assert (=> b!1038699 (= e!587800 call!43962)))

(declare-fun b!1038700 () Bool)

(assert (=> b!1038700 (= e!587800 (bvadd #b00000000000000000000000000000001 call!43962))))

(assert (= (and d!125347 c!105201) b!1038697))

(assert (= (and d!125347 (not c!105201)) b!1038698))

(assert (= (and b!1038698 c!105202) b!1038700))

(assert (= (and b!1038698 (not c!105202)) b!1038699))

(assert (= (or b!1038700 b!1038699) bm!43959))

(declare-fun m!958707 () Bool)

(assert (=> b!1038698 m!958707))

(assert (=> b!1038698 m!958707))

(declare-fun m!958709 () Bool)

(assert (=> b!1038698 m!958709))

(declare-fun m!958711 () Bool)

(assert (=> bm!43959 m!958711))

(assert (=> bm!43950 d!125347))

(declare-fun d!125349 () Bool)

(assert (=> d!125349 (= (arrayCountValidKeys!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!125349 true))

(declare-fun _$79!20 () Unit!33972)

(assert (=> d!125349 (= (choose!82 (_keys!11509 thiss!1427) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!20)))

(declare-fun bs!30402 () Bool)

(assert (= bs!30402 d!125349))

(assert (=> bs!30402 m!958595))

(assert (=> bs!30402 m!958641))

(assert (=> bs!30402 m!958591))

(assert (=> d!125313 d!125349))

(declare-fun b!1038713 () Bool)

(declare-fun e!587810 () SeekEntryResult!9771)

(assert (=> b!1038713 (= e!587810 Undefined!9771)))

(declare-fun b!1038714 () Bool)

(declare-fun e!587809 () SeekEntryResult!9771)

(assert (=> b!1038714 (= e!587809 (Found!9771 (index!41456 lt!457801)))))

(declare-fun b!1038715 () Bool)

(declare-fun e!587808 () SeekEntryResult!9771)

(assert (=> b!1038715 (= e!587808 (seekKeyOrZeroReturnVacant!0 (bvadd (x!92669 lt!457801) #b00000000000000000000000000000001) (nextIndex!0 (index!41456 lt!457801) (x!92669 lt!457801) (mask!30247 thiss!1427)) (index!41456 lt!457801) key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)))))

(declare-fun lt!457831 () SeekEntryResult!9771)

(declare-fun d!125351 () Bool)

(assert (=> d!125351 (and (or ((_ is Undefined!9771) lt!457831) (not ((_ is Found!9771) lt!457831)) (and (bvsge (index!41455 lt!457831) #b00000000000000000000000000000000) (bvslt (index!41455 lt!457831) (size!32022 (_keys!11509 thiss!1427))))) (or ((_ is Undefined!9771) lt!457831) ((_ is Found!9771) lt!457831) (not ((_ is MissingVacant!9771) lt!457831)) (not (= (index!41457 lt!457831) (index!41456 lt!457801))) (and (bvsge (index!41457 lt!457831) #b00000000000000000000000000000000) (bvslt (index!41457 lt!457831) (size!32022 (_keys!11509 thiss!1427))))) (or ((_ is Undefined!9771) lt!457831) (ite ((_ is Found!9771) lt!457831) (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457831)) key!909) (and ((_ is MissingVacant!9771) lt!457831) (= (index!41457 lt!457831) (index!41456 lt!457801)) (= (select (arr!31491 (_keys!11509 thiss!1427)) (index!41457 lt!457831)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!125351 (= lt!457831 e!587810)))

(declare-fun c!105210 () Bool)

(assert (=> d!125351 (= c!105210 (bvsge (x!92669 lt!457801) #b01111111111111111111111111111110))))

(declare-fun lt!457832 () (_ BitVec 64))

(assert (=> d!125351 (= lt!457832 (select (arr!31491 (_keys!11509 thiss!1427)) (index!41456 lt!457801)))))

(assert (=> d!125351 (validMask!0 (mask!30247 thiss!1427))))

(assert (=> d!125351 (= (seekKeyOrZeroReturnVacant!0 (x!92669 lt!457801) (index!41456 lt!457801) (index!41456 lt!457801) key!909 (_keys!11509 thiss!1427) (mask!30247 thiss!1427)) lt!457831)))

(declare-fun b!1038716 () Bool)

(assert (=> b!1038716 (= e!587810 e!587809)))

(declare-fun c!105211 () Bool)

(assert (=> b!1038716 (= c!105211 (= lt!457832 key!909))))

(declare-fun b!1038717 () Bool)

(assert (=> b!1038717 (= e!587808 (MissingVacant!9771 (index!41456 lt!457801)))))

(declare-fun b!1038718 () Bool)

(declare-fun c!105209 () Bool)

(assert (=> b!1038718 (= c!105209 (= lt!457832 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1038718 (= e!587809 e!587808)))

(assert (= (and d!125351 c!105210) b!1038713))

(assert (= (and d!125351 (not c!105210)) b!1038716))

(assert (= (and b!1038716 c!105211) b!1038714))

(assert (= (and b!1038716 (not c!105211)) b!1038718))

(assert (= (and b!1038718 c!105209) b!1038717))

(assert (= (and b!1038718 (not c!105209)) b!1038715))

(declare-fun m!958713 () Bool)

(assert (=> b!1038715 m!958713))

(assert (=> b!1038715 m!958713))

(declare-fun m!958715 () Bool)

(assert (=> b!1038715 m!958715))

(declare-fun m!958717 () Bool)

(assert (=> d!125351 m!958717))

(declare-fun m!958719 () Bool)

(assert (=> d!125351 m!958719))

(assert (=> d!125351 m!958663))

(assert (=> d!125351 m!958597))

(assert (=> b!1038614 d!125351))

(declare-fun d!125353 () Bool)

(assert (=> d!125353 (= (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1038583 d!125353))

(declare-fun b!1038719 () Bool)

(declare-fun e!587812 () (_ BitVec 32))

(assert (=> b!1038719 (= e!587812 #b00000000000000000000000000000000)))

(declare-fun b!1038720 () Bool)

(declare-fun e!587811 () (_ BitVec 32))

(assert (=> b!1038720 (= e!587812 e!587811)))

(declare-fun c!105213 () Bool)

(assert (=> b!1038720 (= c!105213 (validKeyInArray!0 (select (arr!31491 lt!457769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!125355 () Bool)

(declare-fun lt!457833 () (_ BitVec 32))

(assert (=> d!125355 (and (bvsge lt!457833 #b00000000000000000000000000000000) (bvsle lt!457833 (bvsub (size!32022 lt!457769) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!125355 (= lt!457833 e!587812)))

(declare-fun c!105212 () Bool)

(assert (=> d!125355 (= c!105212 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125355 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32022 (_keys!11509 thiss!1427)) (size!32022 lt!457769)))))

(assert (=> d!125355 (= (arrayCountValidKeys!0 lt!457769 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))) lt!457833)))

(declare-fun bm!43960 () Bool)

(declare-fun call!43963 () (_ BitVec 32))

(assert (=> bm!43960 (= call!43963 (arrayCountValidKeys!0 lt!457769 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun b!1038721 () Bool)

(assert (=> b!1038721 (= e!587811 call!43963)))

(declare-fun b!1038722 () Bool)

(assert (=> b!1038722 (= e!587811 (bvadd #b00000000000000000000000000000001 call!43963))))

(assert (= (and d!125355 c!105212) b!1038719))

(assert (= (and d!125355 (not c!105212)) b!1038720))

(assert (= (and b!1038720 c!105213) b!1038722))

(assert (= (and b!1038720 (not c!105213)) b!1038721))

(assert (= (or b!1038722 b!1038721) bm!43960))

(assert (=> b!1038720 m!958681))

(assert (=> b!1038720 m!958681))

(assert (=> b!1038720 m!958683))

(declare-fun m!958721 () Bool)

(assert (=> bm!43960 m!958721))

(assert (=> bm!43949 d!125355))

(declare-fun b!1038723 () Bool)

(declare-fun e!587814 () Bool)

(declare-fun e!587813 () Bool)

(assert (=> b!1038723 (= e!587814 e!587813)))

(declare-fun c!105214 () Bool)

(assert (=> b!1038723 (= c!105214 (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1038724 () Bool)

(declare-fun e!587815 () Bool)

(assert (=> b!1038724 (= e!587815 e!587814)))

(declare-fun res!692929 () Bool)

(assert (=> b!1038724 (=> (not res!692929) (not e!587814))))

(declare-fun e!587816 () Bool)

(assert (=> b!1038724 (= res!692929 (not e!587816))))

(declare-fun res!692928 () Bool)

(assert (=> b!1038724 (=> (not res!692928) (not e!587816))))

(assert (=> b!1038724 (= res!692928 (validKeyInArray!0 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1038725 () Bool)

(declare-fun call!43964 () Bool)

(assert (=> b!1038725 (= e!587813 call!43964)))

(declare-fun d!125357 () Bool)

(declare-fun res!692930 () Bool)

(assert (=> d!125357 (=> res!692930 e!587815)))

(assert (=> d!125357 (= res!692930 (bvsge #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125357 (= (arrayNoDuplicates!0 (_keys!11509 thiss!1427) #b00000000000000000000000000000000 Nil!22058) e!587815)))

(declare-fun bm!43961 () Bool)

(assert (=> bm!43961 (= call!43964 (arrayNoDuplicates!0 (_keys!11509 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105214 (Cons!22057 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000) Nil!22058) Nil!22058)))))

(declare-fun b!1038726 () Bool)

(assert (=> b!1038726 (= e!587813 call!43964)))

(declare-fun b!1038727 () Bool)

(assert (=> b!1038727 (= e!587816 (contains!6062 Nil!22058 (select (arr!31491 (_keys!11509 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125357 (not res!692930)) b!1038724))

(assert (= (and b!1038724 res!692928) b!1038727))

(assert (= (and b!1038724 res!692929) b!1038723))

(assert (= (and b!1038723 c!105214) b!1038726))

(assert (= (and b!1038723 (not c!105214)) b!1038725))

(assert (= (or b!1038726 b!1038725) bm!43961))

(assert (=> b!1038723 m!958645))

(assert (=> b!1038723 m!958645))

(assert (=> b!1038723 m!958647))

(assert (=> b!1038724 m!958645))

(assert (=> b!1038724 m!958645))

(assert (=> b!1038724 m!958647))

(assert (=> bm!43961 m!958645))

(declare-fun m!958723 () Bool)

(assert (=> bm!43961 m!958723))

(assert (=> b!1038727 m!958645))

(assert (=> b!1038727 m!958645))

(declare-fun m!958725 () Bool)

(assert (=> b!1038727 m!958725))

(assert (=> b!1038627 d!125357))

(declare-fun d!125359 () Bool)

(declare-fun lt!457836 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!523 (List!22061) (InoxSet (_ BitVec 64)))

(assert (=> d!125359 (= lt!457836 (select (content!523 Nil!22058) (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(declare-fun e!587821 () Bool)

(assert (=> d!125359 (= lt!457836 e!587821)))

(declare-fun res!692936 () Bool)

(assert (=> d!125359 (=> (not res!692936) (not e!587821))))

(assert (=> d!125359 (= res!692936 ((_ is Cons!22057) Nil!22058))))

(assert (=> d!125359 (= (contains!6062 Nil!22058 (select (arr!31491 lt!457769) #b00000000000000000000000000000000)) lt!457836)))

(declare-fun b!1038732 () Bool)

(declare-fun e!587822 () Bool)

(assert (=> b!1038732 (= e!587821 e!587822)))

(declare-fun res!692935 () Bool)

(assert (=> b!1038732 (=> res!692935 e!587822)))

(assert (=> b!1038732 (= res!692935 (= (h!23260 Nil!22058) (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(declare-fun b!1038733 () Bool)

(assert (=> b!1038733 (= e!587822 (contains!6062 (t!31282 Nil!22058) (select (arr!31491 lt!457769) #b00000000000000000000000000000000)))))

(assert (= (and d!125359 res!692936) b!1038732))

(assert (= (and b!1038732 (not res!692935)) b!1038733))

(declare-fun m!958727 () Bool)

(assert (=> d!125359 m!958727))

(assert (=> d!125359 m!958625))

(declare-fun m!958729 () Bool)

(assert (=> d!125359 m!958729))

(assert (=> b!1038733 m!958625))

(declare-fun m!958731 () Bool)

(assert (=> b!1038733 m!958731))

(assert (=> b!1038600 d!125359))

(assert (=> b!1038564 d!125339))

(declare-fun d!125361 () Bool)

(assert (=> d!125361 (arrayNoDuplicates!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000000 Nil!22058)))

(assert (=> d!125361 true))

(declare-fun _$66!44 () Unit!33972)

(assert (=> d!125361 (= (choose!53 (_keys!11509 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41455 lt!457768) #b00000000000000000000000000000000 Nil!22058) _$66!44)))

(declare-fun bs!30403 () Bool)

(assert (= bs!30403 d!125361))

(assert (=> bs!30403 m!958595))

(assert (=> bs!30403 m!958633))

(assert (=> d!125311 d!125361))

(declare-fun b!1038734 () Bool)

(declare-fun e!587824 () (_ BitVec 32))

(assert (=> b!1038734 (= e!587824 #b00000000000000000000000000000000)))

(declare-fun b!1038735 () Bool)

(declare-fun e!587823 () (_ BitVec 32))

(assert (=> b!1038735 (= e!587824 e!587823)))

(declare-fun c!105216 () Bool)

(assert (=> b!1038735 (= c!105216 (validKeyInArray!0 (select (arr!31491 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!125363 () Bool)

(declare-fun lt!457837 () (_ BitVec 32))

(assert (=> d!125363 (and (bvsge lt!457837 #b00000000000000000000000000000000) (bvsle lt!457837 (bvsub (size!32022 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125363 (= lt!457837 e!587824)))

(declare-fun c!105215 () Bool)

(assert (=> d!125363 (= c!105215 (bvsge #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))))))

(assert (=> d!125363 (and (bvsle #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32022 (_keys!11509 thiss!1427)) (size!32022 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))))))))

(assert (=> d!125363 (= (arrayCountValidKeys!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) #b00000000000000000000000000000000 (size!32022 (_keys!11509 thiss!1427))) lt!457837)))

(declare-fun bm!43962 () Bool)

(declare-fun call!43965 () (_ BitVec 32))

(assert (=> bm!43962 (= call!43965 (arrayCountValidKeys!0 (array!65439 (store (arr!31491 (_keys!11509 thiss!1427)) (index!41455 lt!457768) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32022 (_keys!11509 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32022 (_keys!11509 thiss!1427))))))

(declare-fun b!1038736 () Bool)

(assert (=> b!1038736 (= e!587823 call!43965)))

(declare-fun b!1038737 () Bool)

(assert (=> b!1038737 (= e!587823 (bvadd #b00000000000000000000000000000001 call!43965))))

(assert (= (and d!125363 c!105215) b!1038734))

(assert (= (and d!125363 (not c!105215)) b!1038735))

(assert (= (and b!1038735 c!105216) b!1038737))

(assert (= (and b!1038735 (not c!105216)) b!1038736))

(assert (= (or b!1038737 b!1038736) bm!43962))

(assert (=> b!1038735 m!958689))

(assert (=> b!1038735 m!958689))

(assert (=> b!1038735 m!958691))

(declare-fun m!958733 () Bool)

(assert (=> bm!43962 m!958733))

(assert (=> b!1038581 d!125363))

(assert (=> b!1038581 d!125317))

(declare-fun mapIsEmpty!38557 () Bool)

(declare-fun mapRes!38557 () Bool)

(assert (=> mapIsEmpty!38557 mapRes!38557))

(declare-fun b!1038739 () Bool)

(declare-fun e!587826 () Bool)

(assert (=> b!1038739 (= e!587826 tp_is_empty!24669)))

(declare-fun mapNonEmpty!38557 () Bool)

(declare-fun tp!74022 () Bool)

(declare-fun e!587825 () Bool)

(assert (=> mapNonEmpty!38557 (= mapRes!38557 (and tp!74022 e!587825))))

(declare-fun mapValue!38557 () ValueCell!11631)

(declare-fun mapRest!38557 () (Array (_ BitVec 32) ValueCell!11631))

(declare-fun mapKey!38557 () (_ BitVec 32))

(assert (=> mapNonEmpty!38557 (= mapRest!38556 (store mapRest!38557 mapKey!38557 mapValue!38557))))

(declare-fun condMapEmpty!38557 () Bool)

(declare-fun mapDefault!38557 () ValueCell!11631)

(assert (=> mapNonEmpty!38556 (= condMapEmpty!38557 (= mapRest!38556 ((as const (Array (_ BitVec 32) ValueCell!11631)) mapDefault!38557)))))

(assert (=> mapNonEmpty!38556 (= tp!74021 (and e!587826 mapRes!38557))))

(declare-fun b!1038738 () Bool)

(assert (=> b!1038738 (= e!587825 tp_is_empty!24669)))

(assert (= (and mapNonEmpty!38556 condMapEmpty!38557) mapIsEmpty!38557))

(assert (= (and mapNonEmpty!38556 (not condMapEmpty!38557)) mapNonEmpty!38557))

(assert (= (and mapNonEmpty!38557 ((_ is ValueCellFull!11631) mapValue!38557)) b!1038738))

(assert (= (and mapNonEmpty!38556 ((_ is ValueCellFull!11631) mapDefault!38557)) b!1038739))

(declare-fun m!958735 () Bool)

(assert (=> mapNonEmpty!38557 m!958735))

(check-sat (not b!1038653) b_and!33499 (not d!125349) (not b!1038720) (not b!1038723) (not b!1038648) (not bm!43957) (not d!125359) (not b!1038698) (not bm!43956) (not d!125335) (not b!1038649) (not b!1038644) (not d!125351) (not b!1038724) (not b!1038652) (not b_next!20949) (not b!1038657) (not b!1038646) (not d!125343) (not b!1038667) (not bm!43962) (not bm!43959) (not d!125361) (not mapNonEmpty!38557) tp_is_empty!24669 (not b!1038695) (not b!1038654) (not b!1038735) (not bm!43960) (not b!1038715) (not bm!43961) (not b!1038727) (not b!1038733) (not b!1038668) (not bm!43958))
(check-sat b_and!33499 (not b_next!20949))

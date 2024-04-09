; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91074 () Bool)

(assert start!91074)

(declare-fun b!1039618 () Bool)

(declare-fun b_free!20985 () Bool)

(declare-fun b_next!20985 () Bool)

(assert (=> b!1039618 (= b_free!20985 (not b_next!20985))))

(declare-fun tp!74138 () Bool)

(declare-fun b_and!33535 () Bool)

(assert (=> b!1039618 (= tp!74138 b_and!33535)))

(declare-fun b!1039616 () Bool)

(declare-fun e!588475 () Bool)

(declare-fun e!588479 () Bool)

(assert (=> b!1039616 (= e!588475 e!588479)))

(declare-fun res!693364 () Bool)

(assert (=> b!1039616 (=> (not res!693364) (not e!588479))))

(declare-datatypes ((SeekEntryResult!9785 0))(
  ( (MissingZero!9785 (index!41510 (_ BitVec 32))) (Found!9785 (index!41511 (_ BitVec 32))) (Intermediate!9785 (undefined!10597 Bool) (index!41512 (_ BitVec 32)) (x!92788 (_ BitVec 32))) (Undefined!9785) (MissingVacant!9785 (index!41513 (_ BitVec 32))) )
))
(declare-fun lt!458162 () SeekEntryResult!9785)

(get-info :version)

(assert (=> b!1039616 (= res!693364 ((_ is Found!9785) lt!458162))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37813 0))(
  ( (V!37814 (val!12403 Int)) )
))
(declare-datatypes ((ValueCell!11649 0))(
  ( (ValueCellFull!11649 (v!14991 V!37813)) (EmptyCell!11649) )
))
(declare-datatypes ((array!65522 0))(
  ( (array!65523 (arr!31527 (Array (_ BitVec 32) (_ BitVec 64))) (size!32059 (_ BitVec 32))) )
))
(declare-datatypes ((array!65524 0))(
  ( (array!65525 (arr!31528 (Array (_ BitVec 32) ValueCell!11649)) (size!32060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5892 0))(
  ( (LongMapFixedSize!5893 (defaultEntry!6328 Int) (mask!30294 (_ BitVec 32)) (extraKeys!6056 (_ BitVec 32)) (zeroValue!6162 V!37813) (minValue!6162 V!37813) (_size!3001 (_ BitVec 32)) (_keys!11537 array!65522) (_values!6351 array!65524) (_vacant!3001 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5892)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65522 (_ BitVec 32)) SeekEntryResult!9785)

(assert (=> b!1039616 (= lt!458162 (seekEntry!0 key!909 (_keys!11537 thiss!1427) (mask!30294 thiss!1427)))))

(declare-fun b!1039617 () Bool)

(declare-fun e!588478 () Bool)

(declare-fun tp_is_empty!24705 () Bool)

(assert (=> b!1039617 (= e!588478 tp_is_empty!24705)))

(declare-fun e!588474 () Bool)

(declare-fun e!588477 () Bool)

(declare-fun array_inv!24207 (array!65522) Bool)

(declare-fun array_inv!24208 (array!65524) Bool)

(assert (=> b!1039618 (= e!588477 (and tp!74138 tp_is_empty!24705 (array_inv!24207 (_keys!11537 thiss!1427)) (array_inv!24208 (_values!6351 thiss!1427)) e!588474))))

(declare-fun res!693363 () Bool)

(assert (=> start!91074 (=> (not res!693363) (not e!588475))))

(declare-fun valid!2167 (LongMapFixedSize!5892) Bool)

(assert (=> start!91074 (= res!693363 (valid!2167 thiss!1427))))

(assert (=> start!91074 e!588475))

(assert (=> start!91074 e!588477))

(assert (=> start!91074 true))

(declare-fun b!1039619 () Bool)

(assert (=> b!1039619 (= e!588479 (not (bvsge (index!41511 lt!458162) #b00000000000000000000000000000000)))))

(declare-fun lt!458164 () array!65522)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65522 (_ BitVec 32)) Bool)

(assert (=> b!1039619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458164 (mask!30294 thiss!1427))))

(declare-datatypes ((Unit!33990 0))(
  ( (Unit!33991) )
))
(declare-fun lt!458165 () Unit!33990)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65522 (_ BitVec 32) (_ BitVec 32)) Unit!33990)

(assert (=> b!1039619 (= lt!458165 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11537 thiss!1427) (index!41511 lt!458162) (mask!30294 thiss!1427)))))

(declare-datatypes ((List!22071 0))(
  ( (Nil!22068) (Cons!22067 (h!23271 (_ BitVec 64)) (t!31292 List!22071)) )
))
(declare-fun arrayNoDuplicates!0 (array!65522 (_ BitVec 32) List!22071) Bool)

(assert (=> b!1039619 (arrayNoDuplicates!0 lt!458164 #b00000000000000000000000000000000 Nil!22068)))

(declare-fun lt!458166 () Unit!33990)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22071) Unit!33990)

(assert (=> b!1039619 (= lt!458166 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11537 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41511 lt!458162) #b00000000000000000000000000000000 Nil!22068))))

(declare-fun arrayCountValidKeys!0 (array!65522 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039619 (= (arrayCountValidKeys!0 lt!458164 #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11537 thiss!1427) #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039619 (= lt!458164 (array!65523 (store (arr!31527 (_keys!11537 thiss!1427)) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32059 (_keys!11537 thiss!1427))))))

(declare-fun lt!458163 () Unit!33990)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65522 (_ BitVec 32) (_ BitVec 64)) Unit!33990)

(assert (=> b!1039619 (= lt!458163 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11537 thiss!1427) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1039620 () Bool)

(declare-fun e!588480 () Bool)

(assert (=> b!1039620 (= e!588480 tp_is_empty!24705)))

(declare-fun mapIsEmpty!38623 () Bool)

(declare-fun mapRes!38623 () Bool)

(assert (=> mapIsEmpty!38623 mapRes!38623))

(declare-fun b!1039621 () Bool)

(assert (=> b!1039621 (= e!588474 (and e!588480 mapRes!38623))))

(declare-fun condMapEmpty!38623 () Bool)

(declare-fun mapDefault!38623 () ValueCell!11649)

(assert (=> b!1039621 (= condMapEmpty!38623 (= (arr!31528 (_values!6351 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11649)) mapDefault!38623)))))

(declare-fun b!1039622 () Bool)

(declare-fun res!693365 () Bool)

(assert (=> b!1039622 (=> (not res!693365) (not e!588475))))

(assert (=> b!1039622 (= res!693365 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38623 () Bool)

(declare-fun tp!74139 () Bool)

(assert (=> mapNonEmpty!38623 (= mapRes!38623 (and tp!74139 e!588478))))

(declare-fun mapKey!38623 () (_ BitVec 32))

(declare-fun mapValue!38623 () ValueCell!11649)

(declare-fun mapRest!38623 () (Array (_ BitVec 32) ValueCell!11649))

(assert (=> mapNonEmpty!38623 (= (arr!31528 (_values!6351 thiss!1427)) (store mapRest!38623 mapKey!38623 mapValue!38623))))

(assert (= (and start!91074 res!693363) b!1039622))

(assert (= (and b!1039622 res!693365) b!1039616))

(assert (= (and b!1039616 res!693364) b!1039619))

(assert (= (and b!1039621 condMapEmpty!38623) mapIsEmpty!38623))

(assert (= (and b!1039621 (not condMapEmpty!38623)) mapNonEmpty!38623))

(assert (= (and mapNonEmpty!38623 ((_ is ValueCellFull!11649) mapValue!38623)) b!1039617))

(assert (= (and b!1039621 ((_ is ValueCellFull!11649) mapDefault!38623)) b!1039620))

(assert (= b!1039618 b!1039621))

(assert (= start!91074 b!1039618))

(declare-fun m!959415 () Bool)

(assert (=> b!1039618 m!959415))

(declare-fun m!959417 () Bool)

(assert (=> b!1039618 m!959417))

(declare-fun m!959419 () Bool)

(assert (=> b!1039616 m!959419))

(declare-fun m!959421 () Bool)

(assert (=> start!91074 m!959421))

(declare-fun m!959423 () Bool)

(assert (=> b!1039619 m!959423))

(declare-fun m!959425 () Bool)

(assert (=> b!1039619 m!959425))

(declare-fun m!959427 () Bool)

(assert (=> b!1039619 m!959427))

(declare-fun m!959429 () Bool)

(assert (=> b!1039619 m!959429))

(declare-fun m!959431 () Bool)

(assert (=> b!1039619 m!959431))

(declare-fun m!959433 () Bool)

(assert (=> b!1039619 m!959433))

(declare-fun m!959435 () Bool)

(assert (=> b!1039619 m!959435))

(declare-fun m!959437 () Bool)

(assert (=> b!1039619 m!959437))

(declare-fun m!959439 () Bool)

(assert (=> mapNonEmpty!38623 m!959439))

(check-sat (not b_next!20985) (not mapNonEmpty!38623) tp_is_empty!24705 (not start!91074) (not b!1039619) b_and!33535 (not b!1039616) (not b!1039618))
(check-sat b_and!33535 (not b_next!20985))
(get-model)

(declare-fun b!1039656 () Bool)

(declare-fun e!588509 () SeekEntryResult!9785)

(declare-fun e!588510 () SeekEntryResult!9785)

(assert (=> b!1039656 (= e!588509 e!588510)))

(declare-fun lt!458193 () (_ BitVec 64))

(declare-fun lt!458190 () SeekEntryResult!9785)

(assert (=> b!1039656 (= lt!458193 (select (arr!31527 (_keys!11537 thiss!1427)) (index!41512 lt!458190)))))

(declare-fun c!105328 () Bool)

(assert (=> b!1039656 (= c!105328 (= lt!458193 key!909))))

(declare-fun b!1039657 () Bool)

(assert (=> b!1039657 (= e!588510 (Found!9785 (index!41512 lt!458190)))))

(declare-fun b!1039658 () Bool)

(declare-fun e!588508 () SeekEntryResult!9785)

(declare-fun lt!458191 () SeekEntryResult!9785)

(assert (=> b!1039658 (= e!588508 (ite ((_ is MissingVacant!9785) lt!458191) (MissingZero!9785 (index!41513 lt!458191)) lt!458191))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65522 (_ BitVec 32)) SeekEntryResult!9785)

(assert (=> b!1039658 (= lt!458191 (seekKeyOrZeroReturnVacant!0 (x!92788 lt!458190) (index!41512 lt!458190) (index!41512 lt!458190) key!909 (_keys!11537 thiss!1427) (mask!30294 thiss!1427)))))

(declare-fun d!125489 () Bool)

(declare-fun lt!458192 () SeekEntryResult!9785)

(assert (=> d!125489 (and (or ((_ is MissingVacant!9785) lt!458192) (not ((_ is Found!9785) lt!458192)) (and (bvsge (index!41511 lt!458192) #b00000000000000000000000000000000) (bvslt (index!41511 lt!458192) (size!32059 (_keys!11537 thiss!1427))))) (not ((_ is MissingVacant!9785) lt!458192)) (or (not ((_ is Found!9785) lt!458192)) (= (select (arr!31527 (_keys!11537 thiss!1427)) (index!41511 lt!458192)) key!909)))))

(assert (=> d!125489 (= lt!458192 e!588509)))

(declare-fun c!105329 () Bool)

(assert (=> d!125489 (= c!105329 (and ((_ is Intermediate!9785) lt!458190) (undefined!10597 lt!458190)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65522 (_ BitVec 32)) SeekEntryResult!9785)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125489 (= lt!458190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30294 thiss!1427)) key!909 (_keys!11537 thiss!1427) (mask!30294 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125489 (validMask!0 (mask!30294 thiss!1427))))

(assert (=> d!125489 (= (seekEntry!0 key!909 (_keys!11537 thiss!1427) (mask!30294 thiss!1427)) lt!458192)))

(declare-fun b!1039659 () Bool)

(assert (=> b!1039659 (= e!588508 (MissingZero!9785 (index!41512 lt!458190)))))

(declare-fun b!1039660 () Bool)

(assert (=> b!1039660 (= e!588509 Undefined!9785)))

(declare-fun b!1039661 () Bool)

(declare-fun c!105330 () Bool)

(assert (=> b!1039661 (= c!105330 (= lt!458193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1039661 (= e!588510 e!588508)))

(assert (= (and d!125489 c!105329) b!1039660))

(assert (= (and d!125489 (not c!105329)) b!1039656))

(assert (= (and b!1039656 c!105328) b!1039657))

(assert (= (and b!1039656 (not c!105328)) b!1039661))

(assert (= (and b!1039661 c!105330) b!1039659))

(assert (= (and b!1039661 (not c!105330)) b!1039658))

(declare-fun m!959467 () Bool)

(assert (=> b!1039656 m!959467))

(declare-fun m!959469 () Bool)

(assert (=> b!1039658 m!959469))

(declare-fun m!959471 () Bool)

(assert (=> d!125489 m!959471))

(declare-fun m!959473 () Bool)

(assert (=> d!125489 m!959473))

(assert (=> d!125489 m!959473))

(declare-fun m!959475 () Bool)

(assert (=> d!125489 m!959475))

(declare-fun m!959477 () Bool)

(assert (=> d!125489 m!959477))

(assert (=> b!1039616 d!125489))

(declare-fun d!125491 () Bool)

(declare-fun res!693381 () Bool)

(declare-fun e!588513 () Bool)

(assert (=> d!125491 (=> (not res!693381) (not e!588513))))

(declare-fun simpleValid!428 (LongMapFixedSize!5892) Bool)

(assert (=> d!125491 (= res!693381 (simpleValid!428 thiss!1427))))

(assert (=> d!125491 (= (valid!2167 thiss!1427) e!588513)))

(declare-fun b!1039668 () Bool)

(declare-fun res!693382 () Bool)

(assert (=> b!1039668 (=> (not res!693382) (not e!588513))))

(assert (=> b!1039668 (= res!693382 (= (arrayCountValidKeys!0 (_keys!11537 thiss!1427) #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) (_size!3001 thiss!1427)))))

(declare-fun b!1039669 () Bool)

(declare-fun res!693383 () Bool)

(assert (=> b!1039669 (=> (not res!693383) (not e!588513))))

(assert (=> b!1039669 (= res!693383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11537 thiss!1427) (mask!30294 thiss!1427)))))

(declare-fun b!1039670 () Bool)

(assert (=> b!1039670 (= e!588513 (arrayNoDuplicates!0 (_keys!11537 thiss!1427) #b00000000000000000000000000000000 Nil!22068))))

(assert (= (and d!125491 res!693381) b!1039668))

(assert (= (and b!1039668 res!693382) b!1039669))

(assert (= (and b!1039669 res!693383) b!1039670))

(declare-fun m!959479 () Bool)

(assert (=> d!125491 m!959479))

(assert (=> b!1039668 m!959435))

(declare-fun m!959481 () Bool)

(assert (=> b!1039669 m!959481))

(declare-fun m!959483 () Bool)

(assert (=> b!1039670 m!959483))

(assert (=> start!91074 d!125491))

(declare-fun d!125493 () Bool)

(assert (=> d!125493 (= (array_inv!24207 (_keys!11537 thiss!1427)) (bvsge (size!32059 (_keys!11537 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039618 d!125493))

(declare-fun d!125495 () Bool)

(assert (=> d!125495 (= (array_inv!24208 (_values!6351 thiss!1427)) (bvsge (size!32060 (_values!6351 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1039618 d!125495))

(declare-fun b!1039682 () Bool)

(declare-fun e!588518 () Bool)

(assert (=> b!1039682 (= e!588518 (= (arrayCountValidKeys!0 (array!65523 (store (arr!31527 (_keys!11537 thiss!1427)) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32059 (_keys!11537 thiss!1427))) #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11537 thiss!1427) #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!125497 () Bool)

(assert (=> d!125497 e!588518))

(declare-fun res!693393 () Bool)

(assert (=> d!125497 (=> (not res!693393) (not e!588518))))

(assert (=> d!125497 (= res!693393 (and (bvsge (index!41511 lt!458162) #b00000000000000000000000000000000) (bvslt (index!41511 lt!458162) (size!32059 (_keys!11537 thiss!1427)))))))

(declare-fun lt!458196 () Unit!33990)

(declare-fun choose!82 (array!65522 (_ BitVec 32) (_ BitVec 64)) Unit!33990)

(assert (=> d!125497 (= lt!458196 (choose!82 (_keys!11537 thiss!1427) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!588519 () Bool)

(assert (=> d!125497 e!588519))

(declare-fun res!693395 () Bool)

(assert (=> d!125497 (=> (not res!693395) (not e!588519))))

(assert (=> d!125497 (= res!693395 (and (bvsge (index!41511 lt!458162) #b00000000000000000000000000000000) (bvslt (index!41511 lt!458162) (size!32059 (_keys!11537 thiss!1427)))))))

(assert (=> d!125497 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11537 thiss!1427) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000) lt!458196)))

(declare-fun b!1039679 () Bool)

(declare-fun res!693394 () Bool)

(assert (=> b!1039679 (=> (not res!693394) (not e!588519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039679 (= res!693394 (validKeyInArray!0 (select (arr!31527 (_keys!11537 thiss!1427)) (index!41511 lt!458162))))))

(declare-fun b!1039680 () Bool)

(declare-fun res!693392 () Bool)

(assert (=> b!1039680 (=> (not res!693392) (not e!588519))))

(assert (=> b!1039680 (= res!693392 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1039681 () Bool)

(assert (=> b!1039681 (= e!588519 (bvslt (size!32059 (_keys!11537 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!125497 res!693395) b!1039679))

(assert (= (and b!1039679 res!693394) b!1039680))

(assert (= (and b!1039680 res!693392) b!1039681))

(assert (= (and d!125497 res!693393) b!1039682))

(assert (=> b!1039682 m!959423))

(declare-fun m!959485 () Bool)

(assert (=> b!1039682 m!959485))

(assert (=> b!1039682 m!959435))

(declare-fun m!959487 () Bool)

(assert (=> d!125497 m!959487))

(declare-fun m!959489 () Bool)

(assert (=> b!1039679 m!959489))

(assert (=> b!1039679 m!959489))

(declare-fun m!959491 () Bool)

(assert (=> b!1039679 m!959491))

(declare-fun m!959493 () Bool)

(assert (=> b!1039680 m!959493))

(assert (=> b!1039619 d!125497))

(declare-fun d!125499 () Bool)

(declare-fun res!693401 () Bool)

(declare-fun e!588526 () Bool)

(assert (=> d!125499 (=> res!693401 e!588526)))

(assert (=> d!125499 (= res!693401 (bvsge #b00000000000000000000000000000000 (size!32059 lt!458164)))))

(assert (=> d!125499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458164 (mask!30294 thiss!1427)) e!588526)))

(declare-fun b!1039691 () Bool)

(declare-fun e!588527 () Bool)

(declare-fun call!44008 () Bool)

(assert (=> b!1039691 (= e!588527 call!44008)))

(declare-fun b!1039692 () Bool)

(declare-fun e!588528 () Bool)

(assert (=> b!1039692 (= e!588528 call!44008)))

(declare-fun bm!44005 () Bool)

(assert (=> bm!44005 (= call!44008 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!458164 (mask!30294 thiss!1427)))))

(declare-fun b!1039693 () Bool)

(assert (=> b!1039693 (= e!588526 e!588528)))

(declare-fun c!105333 () Bool)

(assert (=> b!1039693 (= c!105333 (validKeyInArray!0 (select (arr!31527 lt!458164) #b00000000000000000000000000000000)))))

(declare-fun b!1039694 () Bool)

(assert (=> b!1039694 (= e!588528 e!588527)))

(declare-fun lt!458204 () (_ BitVec 64))

(assert (=> b!1039694 (= lt!458204 (select (arr!31527 lt!458164) #b00000000000000000000000000000000))))

(declare-fun lt!458203 () Unit!33990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65522 (_ BitVec 64) (_ BitVec 32)) Unit!33990)

(assert (=> b!1039694 (= lt!458203 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!458164 lt!458204 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1039694 (arrayContainsKey!0 lt!458164 lt!458204 #b00000000000000000000000000000000)))

(declare-fun lt!458205 () Unit!33990)

(assert (=> b!1039694 (= lt!458205 lt!458203)))

(declare-fun res!693400 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65522 (_ BitVec 32)) SeekEntryResult!9785)

(assert (=> b!1039694 (= res!693400 (= (seekEntryOrOpen!0 (select (arr!31527 lt!458164) #b00000000000000000000000000000000) lt!458164 (mask!30294 thiss!1427)) (Found!9785 #b00000000000000000000000000000000)))))

(assert (=> b!1039694 (=> (not res!693400) (not e!588527))))

(assert (= (and d!125499 (not res!693401)) b!1039693))

(assert (= (and b!1039693 c!105333) b!1039694))

(assert (= (and b!1039693 (not c!105333)) b!1039692))

(assert (= (and b!1039694 res!693400) b!1039691))

(assert (= (or b!1039691 b!1039692) bm!44005))

(declare-fun m!959495 () Bool)

(assert (=> bm!44005 m!959495))

(declare-fun m!959497 () Bool)

(assert (=> b!1039693 m!959497))

(assert (=> b!1039693 m!959497))

(declare-fun m!959499 () Bool)

(assert (=> b!1039693 m!959499))

(assert (=> b!1039694 m!959497))

(declare-fun m!959501 () Bool)

(assert (=> b!1039694 m!959501))

(declare-fun m!959503 () Bool)

(assert (=> b!1039694 m!959503))

(assert (=> b!1039694 m!959497))

(declare-fun m!959505 () Bool)

(assert (=> b!1039694 m!959505))

(assert (=> b!1039619 d!125499))

(declare-fun d!125501 () Bool)

(declare-fun e!588531 () Bool)

(assert (=> d!125501 e!588531))

(declare-fun res!693404 () Bool)

(assert (=> d!125501 (=> (not res!693404) (not e!588531))))

(assert (=> d!125501 (= res!693404 (and (bvsge (index!41511 lt!458162) #b00000000000000000000000000000000) (bvslt (index!41511 lt!458162) (size!32059 (_keys!11537 thiss!1427)))))))

(declare-fun lt!458208 () Unit!33990)

(declare-fun choose!53 (array!65522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22071) Unit!33990)

(assert (=> d!125501 (= lt!458208 (choose!53 (_keys!11537 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41511 lt!458162) #b00000000000000000000000000000000 Nil!22068))))

(assert (=> d!125501 (bvslt (size!32059 (_keys!11537 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125501 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11537 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41511 lt!458162) #b00000000000000000000000000000000 Nil!22068) lt!458208)))

(declare-fun b!1039697 () Bool)

(assert (=> b!1039697 (= e!588531 (arrayNoDuplicates!0 (array!65523 (store (arr!31527 (_keys!11537 thiss!1427)) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32059 (_keys!11537 thiss!1427))) #b00000000000000000000000000000000 Nil!22068))))

(assert (= (and d!125501 res!693404) b!1039697))

(declare-fun m!959507 () Bool)

(assert (=> d!125501 m!959507))

(assert (=> b!1039697 m!959423))

(declare-fun m!959509 () Bool)

(assert (=> b!1039697 m!959509))

(assert (=> b!1039619 d!125501))

(declare-fun b!1039706 () Bool)

(declare-fun e!588536 () (_ BitVec 32))

(declare-fun e!588537 () (_ BitVec 32))

(assert (=> b!1039706 (= e!588536 e!588537)))

(declare-fun c!105338 () Bool)

(assert (=> b!1039706 (= c!105338 (validKeyInArray!0 (select (arr!31527 lt!458164) #b00000000000000000000000000000000)))))

(declare-fun bm!44008 () Bool)

(declare-fun call!44011 () (_ BitVec 32))

(assert (=> bm!44008 (= call!44011 (arrayCountValidKeys!0 lt!458164 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32059 (_keys!11537 thiss!1427))))))

(declare-fun b!1039707 () Bool)

(assert (=> b!1039707 (= e!588537 call!44011)))

(declare-fun d!125503 () Bool)

(declare-fun lt!458211 () (_ BitVec 32))

(assert (=> d!125503 (and (bvsge lt!458211 #b00000000000000000000000000000000) (bvsle lt!458211 (bvsub (size!32059 lt!458164) #b00000000000000000000000000000000)))))

(assert (=> d!125503 (= lt!458211 e!588536)))

(declare-fun c!105339 () Bool)

(assert (=> d!125503 (= c!105339 (bvsge #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))))))

(assert (=> d!125503 (and (bvsle #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32059 (_keys!11537 thiss!1427)) (size!32059 lt!458164)))))

(assert (=> d!125503 (= (arrayCountValidKeys!0 lt!458164 #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) lt!458211)))

(declare-fun b!1039708 () Bool)

(assert (=> b!1039708 (= e!588537 (bvadd #b00000000000000000000000000000001 call!44011))))

(declare-fun b!1039709 () Bool)

(assert (=> b!1039709 (= e!588536 #b00000000000000000000000000000000)))

(assert (= (and d!125503 c!105339) b!1039709))

(assert (= (and d!125503 (not c!105339)) b!1039706))

(assert (= (and b!1039706 c!105338) b!1039708))

(assert (= (and b!1039706 (not c!105338)) b!1039707))

(assert (= (or b!1039708 b!1039707) bm!44008))

(assert (=> b!1039706 m!959497))

(assert (=> b!1039706 m!959497))

(assert (=> b!1039706 m!959499))

(declare-fun m!959511 () Bool)

(assert (=> bm!44008 m!959511))

(assert (=> b!1039619 d!125503))

(declare-fun d!125505 () Bool)

(declare-fun e!588540 () Bool)

(assert (=> d!125505 e!588540))

(declare-fun res!693407 () Bool)

(assert (=> d!125505 (=> (not res!693407) (not e!588540))))

(assert (=> d!125505 (= res!693407 (and (bvsge (index!41511 lt!458162) #b00000000000000000000000000000000) (bvslt (index!41511 lt!458162) (size!32059 (_keys!11537 thiss!1427)))))))

(declare-fun lt!458214 () Unit!33990)

(declare-fun choose!25 (array!65522 (_ BitVec 32) (_ BitVec 32)) Unit!33990)

(assert (=> d!125505 (= lt!458214 (choose!25 (_keys!11537 thiss!1427) (index!41511 lt!458162) (mask!30294 thiss!1427)))))

(assert (=> d!125505 (validMask!0 (mask!30294 thiss!1427))))

(assert (=> d!125505 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11537 thiss!1427) (index!41511 lt!458162) (mask!30294 thiss!1427)) lt!458214)))

(declare-fun b!1039712 () Bool)

(assert (=> b!1039712 (= e!588540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65523 (store (arr!31527 (_keys!11537 thiss!1427)) (index!41511 lt!458162) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32059 (_keys!11537 thiss!1427))) (mask!30294 thiss!1427)))))

(assert (= (and d!125505 res!693407) b!1039712))

(declare-fun m!959513 () Bool)

(assert (=> d!125505 m!959513))

(assert (=> d!125505 m!959477))

(assert (=> b!1039712 m!959423))

(declare-fun m!959515 () Bool)

(assert (=> b!1039712 m!959515))

(assert (=> b!1039619 d!125505))

(declare-fun b!1039713 () Bool)

(declare-fun e!588541 () (_ BitVec 32))

(declare-fun e!588542 () (_ BitVec 32))

(assert (=> b!1039713 (= e!588541 e!588542)))

(declare-fun c!105340 () Bool)

(assert (=> b!1039713 (= c!105340 (validKeyInArray!0 (select (arr!31527 (_keys!11537 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44009 () Bool)

(declare-fun call!44012 () (_ BitVec 32))

(assert (=> bm!44009 (= call!44012 (arrayCountValidKeys!0 (_keys!11537 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32059 (_keys!11537 thiss!1427))))))

(declare-fun b!1039714 () Bool)

(assert (=> b!1039714 (= e!588542 call!44012)))

(declare-fun d!125507 () Bool)

(declare-fun lt!458215 () (_ BitVec 32))

(assert (=> d!125507 (and (bvsge lt!458215 #b00000000000000000000000000000000) (bvsle lt!458215 (bvsub (size!32059 (_keys!11537 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125507 (= lt!458215 e!588541)))

(declare-fun c!105341 () Bool)

(assert (=> d!125507 (= c!105341 (bvsge #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))))))

(assert (=> d!125507 (and (bvsle #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32059 (_keys!11537 thiss!1427)) (size!32059 (_keys!11537 thiss!1427))))))

(assert (=> d!125507 (= (arrayCountValidKeys!0 (_keys!11537 thiss!1427) #b00000000000000000000000000000000 (size!32059 (_keys!11537 thiss!1427))) lt!458215)))

(declare-fun b!1039715 () Bool)

(assert (=> b!1039715 (= e!588542 (bvadd #b00000000000000000000000000000001 call!44012))))

(declare-fun b!1039716 () Bool)

(assert (=> b!1039716 (= e!588541 #b00000000000000000000000000000000)))

(assert (= (and d!125507 c!105341) b!1039716))

(assert (= (and d!125507 (not c!105341)) b!1039713))

(assert (= (and b!1039713 c!105340) b!1039715))

(assert (= (and b!1039713 (not c!105340)) b!1039714))

(assert (= (or b!1039715 b!1039714) bm!44009))

(declare-fun m!959517 () Bool)

(assert (=> b!1039713 m!959517))

(assert (=> b!1039713 m!959517))

(declare-fun m!959519 () Bool)

(assert (=> b!1039713 m!959519))

(declare-fun m!959521 () Bool)

(assert (=> bm!44009 m!959521))

(assert (=> b!1039619 d!125507))

(declare-fun b!1039727 () Bool)

(declare-fun e!588553 () Bool)

(declare-fun contains!6068 (List!22071 (_ BitVec 64)) Bool)

(assert (=> b!1039727 (= e!588553 (contains!6068 Nil!22068 (select (arr!31527 lt!458164) #b00000000000000000000000000000000)))))

(declare-fun b!1039728 () Bool)

(declare-fun e!588551 () Bool)

(declare-fun call!44015 () Bool)

(assert (=> b!1039728 (= e!588551 call!44015)))

(declare-fun b!1039729 () Bool)

(assert (=> b!1039729 (= e!588551 call!44015)))

(declare-fun b!1039730 () Bool)

(declare-fun e!588554 () Bool)

(assert (=> b!1039730 (= e!588554 e!588551)))

(declare-fun c!105344 () Bool)

(assert (=> b!1039730 (= c!105344 (validKeyInArray!0 (select (arr!31527 lt!458164) #b00000000000000000000000000000000)))))

(declare-fun d!125509 () Bool)

(declare-fun res!693416 () Bool)

(declare-fun e!588552 () Bool)

(assert (=> d!125509 (=> res!693416 e!588552)))

(assert (=> d!125509 (= res!693416 (bvsge #b00000000000000000000000000000000 (size!32059 lt!458164)))))

(assert (=> d!125509 (= (arrayNoDuplicates!0 lt!458164 #b00000000000000000000000000000000 Nil!22068) e!588552)))

(declare-fun b!1039731 () Bool)

(assert (=> b!1039731 (= e!588552 e!588554)))

(declare-fun res!693415 () Bool)

(assert (=> b!1039731 (=> (not res!693415) (not e!588554))))

(assert (=> b!1039731 (= res!693415 (not e!588553))))

(declare-fun res!693414 () Bool)

(assert (=> b!1039731 (=> (not res!693414) (not e!588553))))

(assert (=> b!1039731 (= res!693414 (validKeyInArray!0 (select (arr!31527 lt!458164) #b00000000000000000000000000000000)))))

(declare-fun bm!44012 () Bool)

(assert (=> bm!44012 (= call!44015 (arrayNoDuplicates!0 lt!458164 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105344 (Cons!22067 (select (arr!31527 lt!458164) #b00000000000000000000000000000000) Nil!22068) Nil!22068)))))

(assert (= (and d!125509 (not res!693416)) b!1039731))

(assert (= (and b!1039731 res!693414) b!1039727))

(assert (= (and b!1039731 res!693415) b!1039730))

(assert (= (and b!1039730 c!105344) b!1039728))

(assert (= (and b!1039730 (not c!105344)) b!1039729))

(assert (= (or b!1039728 b!1039729) bm!44012))

(assert (=> b!1039727 m!959497))

(assert (=> b!1039727 m!959497))

(declare-fun m!959523 () Bool)

(assert (=> b!1039727 m!959523))

(assert (=> b!1039730 m!959497))

(assert (=> b!1039730 m!959497))

(assert (=> b!1039730 m!959499))

(assert (=> b!1039731 m!959497))

(assert (=> b!1039731 m!959497))

(assert (=> b!1039731 m!959499))

(assert (=> bm!44012 m!959497))

(declare-fun m!959525 () Bool)

(assert (=> bm!44012 m!959525))

(assert (=> b!1039619 d!125509))

(declare-fun mapNonEmpty!38629 () Bool)

(declare-fun mapRes!38629 () Bool)

(declare-fun tp!74148 () Bool)

(declare-fun e!588559 () Bool)

(assert (=> mapNonEmpty!38629 (= mapRes!38629 (and tp!74148 e!588559))))

(declare-fun mapRest!38629 () (Array (_ BitVec 32) ValueCell!11649))

(declare-fun mapKey!38629 () (_ BitVec 32))

(declare-fun mapValue!38629 () ValueCell!11649)

(assert (=> mapNonEmpty!38629 (= mapRest!38623 (store mapRest!38629 mapKey!38629 mapValue!38629))))

(declare-fun b!1039739 () Bool)

(declare-fun e!588560 () Bool)

(assert (=> b!1039739 (= e!588560 tp_is_empty!24705)))

(declare-fun b!1039738 () Bool)

(assert (=> b!1039738 (= e!588559 tp_is_empty!24705)))

(declare-fun condMapEmpty!38629 () Bool)

(declare-fun mapDefault!38629 () ValueCell!11649)

(assert (=> mapNonEmpty!38623 (= condMapEmpty!38629 (= mapRest!38623 ((as const (Array (_ BitVec 32) ValueCell!11649)) mapDefault!38629)))))

(assert (=> mapNonEmpty!38623 (= tp!74139 (and e!588560 mapRes!38629))))

(declare-fun mapIsEmpty!38629 () Bool)

(assert (=> mapIsEmpty!38629 mapRes!38629))

(assert (= (and mapNonEmpty!38623 condMapEmpty!38629) mapIsEmpty!38629))

(assert (= (and mapNonEmpty!38623 (not condMapEmpty!38629)) mapNonEmpty!38629))

(assert (= (and mapNonEmpty!38629 ((_ is ValueCellFull!11649) mapValue!38629)) b!1039738))

(assert (= (and mapNonEmpty!38623 ((_ is ValueCellFull!11649) mapDefault!38629)) b!1039739))

(declare-fun m!959527 () Bool)

(assert (=> mapNonEmpty!38629 m!959527))

(check-sat (not b!1039697) (not b_next!20985) (not b!1039731) tp_is_empty!24705 (not b!1039712) (not mapNonEmpty!38629) (not b!1039694) (not d!125489) (not bm!44008) (not bm!44009) (not d!125505) (not b!1039730) (not b!1039680) (not b!1039693) (not b!1039669) (not b!1039682) (not d!125501) (not b!1039706) (not b!1039670) (not d!125491) (not b!1039679) b_and!33535 (not b!1039658) (not bm!44012) (not d!125497) (not b!1039727) (not b!1039713) (not bm!44005) (not b!1039668))
(check-sat b_and!33535 (not b_next!20985))

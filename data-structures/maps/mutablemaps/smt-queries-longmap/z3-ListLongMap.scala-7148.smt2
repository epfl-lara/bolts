; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90880 () Bool)

(assert start!90880)

(declare-fun b!1038376 () Bool)

(declare-fun b_free!20943 () Bool)

(declare-fun b_next!20943 () Bool)

(assert (=> b!1038376 (= b_free!20943 (not b_next!20943))))

(declare-fun tp!73991 () Bool)

(declare-fun b_and!33493 () Bool)

(assert (=> b!1038376 (= tp!73991 b_and!33493)))

(declare-fun b!1038374 () Bool)

(declare-fun e!587576 () Bool)

(declare-fun tp_is_empty!24663 () Bool)

(assert (=> b!1038374 (= e!587576 tp_is_empty!24663)))

(declare-fun b!1038375 () Bool)

(declare-fun e!587574 () Bool)

(declare-fun e!587575 () Bool)

(assert (=> b!1038375 (= e!587574 e!587575)))

(declare-fun res!692781 () Bool)

(assert (=> b!1038375 (=> (not res!692781) (not e!587575))))

(declare-datatypes ((SeekEntryResult!9768 0))(
  ( (MissingZero!9768 (index!41442 (_ BitVec 32))) (Found!9768 (index!41443 (_ BitVec 32))) (Intermediate!9768 (undefined!10580 Bool) (index!41444 (_ BitVec 32)) (x!92650 (_ BitVec 32))) (Undefined!9768) (MissingVacant!9768 (index!41445 (_ BitVec 32))) )
))
(declare-fun lt!457711 () SeekEntryResult!9768)

(get-info :version)

(assert (=> b!1038375 (= res!692781 ((_ is Found!9768) lt!457711))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37757 0))(
  ( (V!37758 (val!12382 Int)) )
))
(declare-datatypes ((ValueCell!11628 0))(
  ( (ValueCellFull!11628 (v!14969 V!37757)) (EmptyCell!11628) )
))
(declare-datatypes ((array!65424 0))(
  ( (array!65425 (arr!31485 (Array (_ BitVec 32) (_ BitVec 64))) (size!32016 (_ BitVec 32))) )
))
(declare-datatypes ((array!65426 0))(
  ( (array!65427 (arr!31486 (Array (_ BitVec 32) ValueCell!11628)) (size!32017 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5850 0))(
  ( (LongMapFixedSize!5851 (defaultEntry!6307 Int) (mask!30240 (_ BitVec 32)) (extraKeys!6035 (_ BitVec 32)) (zeroValue!6141 V!37757) (minValue!6141 V!37757) (_size!2980 (_ BitVec 32)) (_keys!11505 array!65424) (_values!6330 array!65426) (_vacant!2980 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5850)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65424 (_ BitVec 32)) SeekEntryResult!9768)

(assert (=> b!1038375 (= lt!457711 (seekEntry!0 key!909 (_keys!11505 thiss!1427) (mask!30240 thiss!1427)))))

(declare-fun mapIsEmpty!38538 () Bool)

(declare-fun mapRes!38538 () Bool)

(assert (=> mapIsEmpty!38538 mapRes!38538))

(declare-fun e!587571 () Bool)

(declare-fun e!587572 () Bool)

(declare-fun array_inv!24183 (array!65424) Bool)

(declare-fun array_inv!24184 (array!65426) Bool)

(assert (=> b!1038376 (= e!587571 (and tp!73991 tp_is_empty!24663 (array_inv!24183 (_keys!11505 thiss!1427)) (array_inv!24184 (_values!6330 thiss!1427)) e!587572))))

(declare-fun b!1038377 () Bool)

(declare-fun e!587577 () Bool)

(assert (=> b!1038377 (= e!587572 (and e!587577 mapRes!38538))))

(declare-fun condMapEmpty!38538 () Bool)

(declare-fun mapDefault!38538 () ValueCell!11628)

(assert (=> b!1038377 (= condMapEmpty!38538 (= (arr!31486 (_values!6330 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11628)) mapDefault!38538)))))

(declare-fun b!1038378 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1038378 (= e!587575 (not (validMask!0 (mask!30240 thiss!1427))))))

(declare-fun lt!457710 () array!65424)

(declare-datatypes ((List!22058 0))(
  ( (Nil!22055) (Cons!22054 (h!23257 (_ BitVec 64)) (t!31279 List!22058)) )
))
(declare-fun arrayNoDuplicates!0 (array!65424 (_ BitVec 32) List!22058) Bool)

(assert (=> b!1038378 (arrayNoDuplicates!0 lt!457710 #b00000000000000000000000000000000 Nil!22055)))

(declare-datatypes ((Unit!33966 0))(
  ( (Unit!33967) )
))
(declare-fun lt!457709 () Unit!33966)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22058) Unit!33966)

(assert (=> b!1038378 (= lt!457709 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11505 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41443 lt!457711) #b00000000000000000000000000000000 Nil!22055))))

(declare-fun arrayCountValidKeys!0 (array!65424 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038378 (= (arrayCountValidKeys!0 lt!457710 #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11505 thiss!1427) #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1038378 (= lt!457710 (array!65425 (store (arr!31485 (_keys!11505 thiss!1427)) (index!41443 lt!457711) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32016 (_keys!11505 thiss!1427))))))

(declare-fun lt!457712 () Unit!33966)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65424 (_ BitVec 32) (_ BitVec 64)) Unit!33966)

(assert (=> b!1038378 (= lt!457712 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11505 thiss!1427) (index!41443 lt!457711) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038379 () Bool)

(assert (=> b!1038379 (= e!587577 tp_is_empty!24663)))

(declare-fun b!1038380 () Bool)

(declare-fun res!692780 () Bool)

(assert (=> b!1038380 (=> (not res!692780) (not e!587574))))

(assert (=> b!1038380 (= res!692780 (not (= key!909 (bvneg key!909))))))

(declare-fun res!692782 () Bool)

(assert (=> start!90880 (=> (not res!692782) (not e!587574))))

(declare-fun valid!2154 (LongMapFixedSize!5850) Bool)

(assert (=> start!90880 (= res!692782 (valid!2154 thiss!1427))))

(assert (=> start!90880 e!587574))

(assert (=> start!90880 e!587571))

(assert (=> start!90880 true))

(declare-fun mapNonEmpty!38538 () Bool)

(declare-fun tp!73990 () Bool)

(assert (=> mapNonEmpty!38538 (= mapRes!38538 (and tp!73990 e!587576))))

(declare-fun mapValue!38538 () ValueCell!11628)

(declare-fun mapRest!38538 () (Array (_ BitVec 32) ValueCell!11628))

(declare-fun mapKey!38538 () (_ BitVec 32))

(assert (=> mapNonEmpty!38538 (= (arr!31486 (_values!6330 thiss!1427)) (store mapRest!38538 mapKey!38538 mapValue!38538))))

(assert (= (and start!90880 res!692782) b!1038380))

(assert (= (and b!1038380 res!692780) b!1038375))

(assert (= (and b!1038375 res!692781) b!1038378))

(assert (= (and b!1038377 condMapEmpty!38538) mapIsEmpty!38538))

(assert (= (and b!1038377 (not condMapEmpty!38538)) mapNonEmpty!38538))

(assert (= (and mapNonEmpty!38538 ((_ is ValueCellFull!11628) mapValue!38538)) b!1038374))

(assert (= (and b!1038377 ((_ is ValueCellFull!11628) mapDefault!38538)) b!1038379))

(assert (= b!1038376 b!1038377))

(assert (= start!90880 b!1038376))

(declare-fun m!958457 () Bool)

(assert (=> start!90880 m!958457))

(declare-fun m!958459 () Bool)

(assert (=> mapNonEmpty!38538 m!958459))

(declare-fun m!958461 () Bool)

(assert (=> b!1038375 m!958461))

(declare-fun m!958463 () Bool)

(assert (=> b!1038378 m!958463))

(declare-fun m!958465 () Bool)

(assert (=> b!1038378 m!958465))

(declare-fun m!958467 () Bool)

(assert (=> b!1038378 m!958467))

(declare-fun m!958469 () Bool)

(assert (=> b!1038378 m!958469))

(declare-fun m!958471 () Bool)

(assert (=> b!1038378 m!958471))

(declare-fun m!958473 () Bool)

(assert (=> b!1038378 m!958473))

(declare-fun m!958475 () Bool)

(assert (=> b!1038378 m!958475))

(declare-fun m!958477 () Bool)

(assert (=> b!1038376 m!958477))

(declare-fun m!958479 () Bool)

(assert (=> b!1038376 m!958479))

(check-sat (not b!1038378) (not start!90880) (not b!1038375) tp_is_empty!24663 (not b!1038376) b_and!33493 (not b_next!20943) (not mapNonEmpty!38538))
(check-sat b_and!33493 (not b_next!20943))
(get-model)

(declare-fun d!125287 () Bool)

(declare-fun e!587601 () Bool)

(assert (=> d!125287 e!587601))

(declare-fun res!692794 () Bool)

(assert (=> d!125287 (=> (not res!692794) (not e!587601))))

(assert (=> d!125287 (= res!692794 (and (bvsge (index!41443 lt!457711) #b00000000000000000000000000000000) (bvslt (index!41443 lt!457711) (size!32016 (_keys!11505 thiss!1427)))))))

(declare-fun lt!457727 () Unit!33966)

(declare-fun choose!53 (array!65424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22058) Unit!33966)

(assert (=> d!125287 (= lt!457727 (choose!53 (_keys!11505 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41443 lt!457711) #b00000000000000000000000000000000 Nil!22055))))

(assert (=> d!125287 (bvslt (size!32016 (_keys!11505 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125287 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11505 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41443 lt!457711) #b00000000000000000000000000000000 Nil!22055) lt!457727)))

(declare-fun b!1038404 () Bool)

(assert (=> b!1038404 (= e!587601 (arrayNoDuplicates!0 (array!65425 (store (arr!31485 (_keys!11505 thiss!1427)) (index!41443 lt!457711) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32016 (_keys!11505 thiss!1427))) #b00000000000000000000000000000000 Nil!22055))))

(assert (= (and d!125287 res!692794) b!1038404))

(declare-fun m!958505 () Bool)

(assert (=> d!125287 m!958505))

(assert (=> b!1038404 m!958467))

(declare-fun m!958507 () Bool)

(assert (=> b!1038404 m!958507))

(assert (=> b!1038378 d!125287))

(declare-fun b!1038415 () Bool)

(declare-fun e!587612 () Bool)

(declare-fun e!587613 () Bool)

(assert (=> b!1038415 (= e!587612 e!587613)))

(declare-fun res!692803 () Bool)

(assert (=> b!1038415 (=> (not res!692803) (not e!587613))))

(declare-fun e!587611 () Bool)

(assert (=> b!1038415 (= res!692803 (not e!587611))))

(declare-fun res!692802 () Bool)

(assert (=> b!1038415 (=> (not res!692802) (not e!587611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1038415 (= res!692802 (validKeyInArray!0 (select (arr!31485 lt!457710) #b00000000000000000000000000000000)))))

(declare-fun b!1038416 () Bool)

(declare-fun e!587610 () Bool)

(declare-fun call!43945 () Bool)

(assert (=> b!1038416 (= e!587610 call!43945)))

(declare-fun b!1038417 () Bool)

(declare-fun contains!6061 (List!22058 (_ BitVec 64)) Bool)

(assert (=> b!1038417 (= e!587611 (contains!6061 Nil!22055 (select (arr!31485 lt!457710) #b00000000000000000000000000000000)))))

(declare-fun d!125289 () Bool)

(declare-fun res!692801 () Bool)

(assert (=> d!125289 (=> res!692801 e!587612)))

(assert (=> d!125289 (= res!692801 (bvsge #b00000000000000000000000000000000 (size!32016 lt!457710)))))

(assert (=> d!125289 (= (arrayNoDuplicates!0 lt!457710 #b00000000000000000000000000000000 Nil!22055) e!587612)))

(declare-fun bm!43942 () Bool)

(declare-fun c!105149 () Bool)

(assert (=> bm!43942 (= call!43945 (arrayNoDuplicates!0 lt!457710 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105149 (Cons!22054 (select (arr!31485 lt!457710) #b00000000000000000000000000000000) Nil!22055) Nil!22055)))))

(declare-fun b!1038418 () Bool)

(assert (=> b!1038418 (= e!587613 e!587610)))

(assert (=> b!1038418 (= c!105149 (validKeyInArray!0 (select (arr!31485 lt!457710) #b00000000000000000000000000000000)))))

(declare-fun b!1038419 () Bool)

(assert (=> b!1038419 (= e!587610 call!43945)))

(assert (= (and d!125289 (not res!692801)) b!1038415))

(assert (= (and b!1038415 res!692802) b!1038417))

(assert (= (and b!1038415 res!692803) b!1038418))

(assert (= (and b!1038418 c!105149) b!1038416))

(assert (= (and b!1038418 (not c!105149)) b!1038419))

(assert (= (or b!1038416 b!1038419) bm!43942))

(declare-fun m!958509 () Bool)

(assert (=> b!1038415 m!958509))

(assert (=> b!1038415 m!958509))

(declare-fun m!958511 () Bool)

(assert (=> b!1038415 m!958511))

(assert (=> b!1038417 m!958509))

(assert (=> b!1038417 m!958509))

(declare-fun m!958513 () Bool)

(assert (=> b!1038417 m!958513))

(assert (=> bm!43942 m!958509))

(declare-fun m!958515 () Bool)

(assert (=> bm!43942 m!958515))

(assert (=> b!1038418 m!958509))

(assert (=> b!1038418 m!958509))

(assert (=> b!1038418 m!958511))

(assert (=> b!1038378 d!125289))

(declare-fun b!1038428 () Bool)

(declare-fun e!587618 () (_ BitVec 32))

(declare-fun call!43948 () (_ BitVec 32))

(assert (=> b!1038428 (= e!587618 (bvadd #b00000000000000000000000000000001 call!43948))))

(declare-fun b!1038429 () Bool)

(declare-fun e!587619 () (_ BitVec 32))

(assert (=> b!1038429 (= e!587619 #b00000000000000000000000000000000)))

(declare-fun bm!43945 () Bool)

(assert (=> bm!43945 (= call!43948 (arrayCountValidKeys!0 lt!457710 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32016 (_keys!11505 thiss!1427))))))

(declare-fun d!125291 () Bool)

(declare-fun lt!457730 () (_ BitVec 32))

(assert (=> d!125291 (and (bvsge lt!457730 #b00000000000000000000000000000000) (bvsle lt!457730 (bvsub (size!32016 lt!457710) #b00000000000000000000000000000000)))))

(assert (=> d!125291 (= lt!457730 e!587619)))

(declare-fun c!105154 () Bool)

(assert (=> d!125291 (= c!105154 (bvsge #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))))))

(assert (=> d!125291 (and (bvsle #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32016 (_keys!11505 thiss!1427)) (size!32016 lt!457710)))))

(assert (=> d!125291 (= (arrayCountValidKeys!0 lt!457710 #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) lt!457730)))

(declare-fun b!1038430 () Bool)

(assert (=> b!1038430 (= e!587619 e!587618)))

(declare-fun c!105155 () Bool)

(assert (=> b!1038430 (= c!105155 (validKeyInArray!0 (select (arr!31485 lt!457710) #b00000000000000000000000000000000)))))

(declare-fun b!1038431 () Bool)

(assert (=> b!1038431 (= e!587618 call!43948)))

(assert (= (and d!125291 c!105154) b!1038429))

(assert (= (and d!125291 (not c!105154)) b!1038430))

(assert (= (and b!1038430 c!105155) b!1038428))

(assert (= (and b!1038430 (not c!105155)) b!1038431))

(assert (= (or b!1038428 b!1038431) bm!43945))

(declare-fun m!958517 () Bool)

(assert (=> bm!43945 m!958517))

(assert (=> b!1038430 m!958509))

(assert (=> b!1038430 m!958509))

(assert (=> b!1038430 m!958511))

(assert (=> b!1038378 d!125291))

(declare-fun d!125293 () Bool)

(assert (=> d!125293 (= (validMask!0 (mask!30240 thiss!1427)) (and (or (= (mask!30240 thiss!1427) #b00000000000000000000000000000111) (= (mask!30240 thiss!1427) #b00000000000000000000000000001111) (= (mask!30240 thiss!1427) #b00000000000000000000000000011111) (= (mask!30240 thiss!1427) #b00000000000000000000000000111111) (= (mask!30240 thiss!1427) #b00000000000000000000000001111111) (= (mask!30240 thiss!1427) #b00000000000000000000000011111111) (= (mask!30240 thiss!1427) #b00000000000000000000000111111111) (= (mask!30240 thiss!1427) #b00000000000000000000001111111111) (= (mask!30240 thiss!1427) #b00000000000000000000011111111111) (= (mask!30240 thiss!1427) #b00000000000000000000111111111111) (= (mask!30240 thiss!1427) #b00000000000000000001111111111111) (= (mask!30240 thiss!1427) #b00000000000000000011111111111111) (= (mask!30240 thiss!1427) #b00000000000000000111111111111111) (= (mask!30240 thiss!1427) #b00000000000000001111111111111111) (= (mask!30240 thiss!1427) #b00000000000000011111111111111111) (= (mask!30240 thiss!1427) #b00000000000000111111111111111111) (= (mask!30240 thiss!1427) #b00000000000001111111111111111111) (= (mask!30240 thiss!1427) #b00000000000011111111111111111111) (= (mask!30240 thiss!1427) #b00000000000111111111111111111111) (= (mask!30240 thiss!1427) #b00000000001111111111111111111111) (= (mask!30240 thiss!1427) #b00000000011111111111111111111111) (= (mask!30240 thiss!1427) #b00000000111111111111111111111111) (= (mask!30240 thiss!1427) #b00000001111111111111111111111111) (= (mask!30240 thiss!1427) #b00000011111111111111111111111111) (= (mask!30240 thiss!1427) #b00000111111111111111111111111111) (= (mask!30240 thiss!1427) #b00001111111111111111111111111111) (= (mask!30240 thiss!1427) #b00011111111111111111111111111111) (= (mask!30240 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30240 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1038378 d!125293))

(declare-fun b!1038440 () Bool)

(declare-fun res!692812 () Bool)

(declare-fun e!587625 () Bool)

(assert (=> b!1038440 (=> (not res!692812) (not e!587625))))

(assert (=> b!1038440 (= res!692812 (validKeyInArray!0 (select (arr!31485 (_keys!11505 thiss!1427)) (index!41443 lt!457711))))))

(declare-fun b!1038441 () Bool)

(declare-fun res!692814 () Bool)

(assert (=> b!1038441 (=> (not res!692814) (not e!587625))))

(assert (=> b!1038441 (= res!692814 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!125295 () Bool)

(declare-fun e!587624 () Bool)

(assert (=> d!125295 e!587624))

(declare-fun res!692813 () Bool)

(assert (=> d!125295 (=> (not res!692813) (not e!587624))))

(assert (=> d!125295 (= res!692813 (and (bvsge (index!41443 lt!457711) #b00000000000000000000000000000000) (bvslt (index!41443 lt!457711) (size!32016 (_keys!11505 thiss!1427)))))))

(declare-fun lt!457733 () Unit!33966)

(declare-fun choose!82 (array!65424 (_ BitVec 32) (_ BitVec 64)) Unit!33966)

(assert (=> d!125295 (= lt!457733 (choose!82 (_keys!11505 thiss!1427) (index!41443 lt!457711) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!125295 e!587625))

(declare-fun res!692815 () Bool)

(assert (=> d!125295 (=> (not res!692815) (not e!587625))))

(assert (=> d!125295 (= res!692815 (and (bvsge (index!41443 lt!457711) #b00000000000000000000000000000000) (bvslt (index!41443 lt!457711) (size!32016 (_keys!11505 thiss!1427)))))))

(assert (=> d!125295 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11505 thiss!1427) (index!41443 lt!457711) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457733)))

(declare-fun b!1038443 () Bool)

(assert (=> b!1038443 (= e!587624 (= (arrayCountValidKeys!0 (array!65425 (store (arr!31485 (_keys!11505 thiss!1427)) (index!41443 lt!457711) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32016 (_keys!11505 thiss!1427))) #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11505 thiss!1427) #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1038442 () Bool)

(assert (=> b!1038442 (= e!587625 (bvslt (size!32016 (_keys!11505 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!125295 res!692815) b!1038440))

(assert (= (and b!1038440 res!692812) b!1038441))

(assert (= (and b!1038441 res!692814) b!1038442))

(assert (= (and d!125295 res!692813) b!1038443))

(declare-fun m!958519 () Bool)

(assert (=> b!1038440 m!958519))

(assert (=> b!1038440 m!958519))

(declare-fun m!958521 () Bool)

(assert (=> b!1038440 m!958521))

(declare-fun m!958523 () Bool)

(assert (=> b!1038441 m!958523))

(declare-fun m!958525 () Bool)

(assert (=> d!125295 m!958525))

(assert (=> b!1038443 m!958467))

(declare-fun m!958527 () Bool)

(assert (=> b!1038443 m!958527))

(assert (=> b!1038443 m!958469))

(assert (=> b!1038378 d!125295))

(declare-fun b!1038444 () Bool)

(declare-fun e!587626 () (_ BitVec 32))

(declare-fun call!43949 () (_ BitVec 32))

(assert (=> b!1038444 (= e!587626 (bvadd #b00000000000000000000000000000001 call!43949))))

(declare-fun b!1038445 () Bool)

(declare-fun e!587627 () (_ BitVec 32))

(assert (=> b!1038445 (= e!587627 #b00000000000000000000000000000000)))

(declare-fun bm!43946 () Bool)

(assert (=> bm!43946 (= call!43949 (arrayCountValidKeys!0 (_keys!11505 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32016 (_keys!11505 thiss!1427))))))

(declare-fun d!125297 () Bool)

(declare-fun lt!457734 () (_ BitVec 32))

(assert (=> d!125297 (and (bvsge lt!457734 #b00000000000000000000000000000000) (bvsle lt!457734 (bvsub (size!32016 (_keys!11505 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125297 (= lt!457734 e!587627)))

(declare-fun c!105156 () Bool)

(assert (=> d!125297 (= c!105156 (bvsge #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))))))

(assert (=> d!125297 (and (bvsle #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32016 (_keys!11505 thiss!1427)) (size!32016 (_keys!11505 thiss!1427))))))

(assert (=> d!125297 (= (arrayCountValidKeys!0 (_keys!11505 thiss!1427) #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) lt!457734)))

(declare-fun b!1038446 () Bool)

(assert (=> b!1038446 (= e!587627 e!587626)))

(declare-fun c!105157 () Bool)

(assert (=> b!1038446 (= c!105157 (validKeyInArray!0 (select (arr!31485 (_keys!11505 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1038447 () Bool)

(assert (=> b!1038447 (= e!587626 call!43949)))

(assert (= (and d!125297 c!105156) b!1038445))

(assert (= (and d!125297 (not c!105156)) b!1038446))

(assert (= (and b!1038446 c!105157) b!1038444))

(assert (= (and b!1038446 (not c!105157)) b!1038447))

(assert (= (or b!1038444 b!1038447) bm!43946))

(declare-fun m!958529 () Bool)

(assert (=> bm!43946 m!958529))

(declare-fun m!958531 () Bool)

(assert (=> b!1038446 m!958531))

(assert (=> b!1038446 m!958531))

(declare-fun m!958533 () Bool)

(assert (=> b!1038446 m!958533))

(assert (=> b!1038378 d!125297))

(declare-fun d!125299 () Bool)

(declare-fun res!692822 () Bool)

(declare-fun e!587630 () Bool)

(assert (=> d!125299 (=> (not res!692822) (not e!587630))))

(declare-fun simpleValid!421 (LongMapFixedSize!5850) Bool)

(assert (=> d!125299 (= res!692822 (simpleValid!421 thiss!1427))))

(assert (=> d!125299 (= (valid!2154 thiss!1427) e!587630)))

(declare-fun b!1038454 () Bool)

(declare-fun res!692823 () Bool)

(assert (=> b!1038454 (=> (not res!692823) (not e!587630))))

(assert (=> b!1038454 (= res!692823 (= (arrayCountValidKeys!0 (_keys!11505 thiss!1427) #b00000000000000000000000000000000 (size!32016 (_keys!11505 thiss!1427))) (_size!2980 thiss!1427)))))

(declare-fun b!1038455 () Bool)

(declare-fun res!692824 () Bool)

(assert (=> b!1038455 (=> (not res!692824) (not e!587630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65424 (_ BitVec 32)) Bool)

(assert (=> b!1038455 (= res!692824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11505 thiss!1427) (mask!30240 thiss!1427)))))

(declare-fun b!1038456 () Bool)

(assert (=> b!1038456 (= e!587630 (arrayNoDuplicates!0 (_keys!11505 thiss!1427) #b00000000000000000000000000000000 Nil!22055))))

(assert (= (and d!125299 res!692822) b!1038454))

(assert (= (and b!1038454 res!692823) b!1038455))

(assert (= (and b!1038455 res!692824) b!1038456))

(declare-fun m!958535 () Bool)

(assert (=> d!125299 m!958535))

(assert (=> b!1038454 m!958469))

(declare-fun m!958537 () Bool)

(assert (=> b!1038455 m!958537))

(declare-fun m!958539 () Bool)

(assert (=> b!1038456 m!958539))

(assert (=> start!90880 d!125299))

(declare-fun d!125301 () Bool)

(assert (=> d!125301 (= (array_inv!24183 (_keys!11505 thiss!1427)) (bvsge (size!32016 (_keys!11505 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038376 d!125301))

(declare-fun d!125303 () Bool)

(assert (=> d!125303 (= (array_inv!24184 (_values!6330 thiss!1427)) (bvsge (size!32017 (_values!6330 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1038376 d!125303))

(declare-fun b!1038469 () Bool)

(declare-fun c!105165 () Bool)

(declare-fun lt!457745 () (_ BitVec 64))

(assert (=> b!1038469 (= c!105165 (= lt!457745 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!587639 () SeekEntryResult!9768)

(declare-fun e!587637 () SeekEntryResult!9768)

(assert (=> b!1038469 (= e!587639 e!587637)))

(declare-fun d!125305 () Bool)

(declare-fun lt!457744 () SeekEntryResult!9768)

(assert (=> d!125305 (and (or ((_ is MissingVacant!9768) lt!457744) (not ((_ is Found!9768) lt!457744)) (and (bvsge (index!41443 lt!457744) #b00000000000000000000000000000000) (bvslt (index!41443 lt!457744) (size!32016 (_keys!11505 thiss!1427))))) (not ((_ is MissingVacant!9768) lt!457744)) (or (not ((_ is Found!9768) lt!457744)) (= (select (arr!31485 (_keys!11505 thiss!1427)) (index!41443 lt!457744)) key!909)))))

(declare-fun e!587638 () SeekEntryResult!9768)

(assert (=> d!125305 (= lt!457744 e!587638)))

(declare-fun c!105166 () Bool)

(declare-fun lt!457746 () SeekEntryResult!9768)

(assert (=> d!125305 (= c!105166 (and ((_ is Intermediate!9768) lt!457746) (undefined!10580 lt!457746)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65424 (_ BitVec 32)) SeekEntryResult!9768)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125305 (= lt!457746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30240 thiss!1427)) key!909 (_keys!11505 thiss!1427) (mask!30240 thiss!1427)))))

(assert (=> d!125305 (validMask!0 (mask!30240 thiss!1427))))

(assert (=> d!125305 (= (seekEntry!0 key!909 (_keys!11505 thiss!1427) (mask!30240 thiss!1427)) lt!457744)))

(declare-fun b!1038470 () Bool)

(assert (=> b!1038470 (= e!587638 e!587639)))

(assert (=> b!1038470 (= lt!457745 (select (arr!31485 (_keys!11505 thiss!1427)) (index!41444 lt!457746)))))

(declare-fun c!105164 () Bool)

(assert (=> b!1038470 (= c!105164 (= lt!457745 key!909))))

(declare-fun b!1038471 () Bool)

(assert (=> b!1038471 (= e!587637 (MissingZero!9768 (index!41444 lt!457746)))))

(declare-fun b!1038472 () Bool)

(declare-fun lt!457743 () SeekEntryResult!9768)

(assert (=> b!1038472 (= e!587637 (ite ((_ is MissingVacant!9768) lt!457743) (MissingZero!9768 (index!41445 lt!457743)) lt!457743))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65424 (_ BitVec 32)) SeekEntryResult!9768)

(assert (=> b!1038472 (= lt!457743 (seekKeyOrZeroReturnVacant!0 (x!92650 lt!457746) (index!41444 lt!457746) (index!41444 lt!457746) key!909 (_keys!11505 thiss!1427) (mask!30240 thiss!1427)))))

(declare-fun b!1038473 () Bool)

(assert (=> b!1038473 (= e!587638 Undefined!9768)))

(declare-fun b!1038474 () Bool)

(assert (=> b!1038474 (= e!587639 (Found!9768 (index!41444 lt!457746)))))

(assert (= (and d!125305 c!105166) b!1038473))

(assert (= (and d!125305 (not c!105166)) b!1038470))

(assert (= (and b!1038470 c!105164) b!1038474))

(assert (= (and b!1038470 (not c!105164)) b!1038469))

(assert (= (and b!1038469 c!105165) b!1038471))

(assert (= (and b!1038469 (not c!105165)) b!1038472))

(declare-fun m!958541 () Bool)

(assert (=> d!125305 m!958541))

(declare-fun m!958543 () Bool)

(assert (=> d!125305 m!958543))

(assert (=> d!125305 m!958543))

(declare-fun m!958545 () Bool)

(assert (=> d!125305 m!958545))

(assert (=> d!125305 m!958463))

(declare-fun m!958547 () Bool)

(assert (=> b!1038470 m!958547))

(declare-fun m!958549 () Bool)

(assert (=> b!1038472 m!958549))

(assert (=> b!1038375 d!125305))

(declare-fun b!1038482 () Bool)

(declare-fun e!587644 () Bool)

(assert (=> b!1038482 (= e!587644 tp_is_empty!24663)))

(declare-fun condMapEmpty!38544 () Bool)

(declare-fun mapDefault!38544 () ValueCell!11628)

(assert (=> mapNonEmpty!38538 (= condMapEmpty!38544 (= mapRest!38538 ((as const (Array (_ BitVec 32) ValueCell!11628)) mapDefault!38544)))))

(declare-fun mapRes!38544 () Bool)

(assert (=> mapNonEmpty!38538 (= tp!73990 (and e!587644 mapRes!38544))))

(declare-fun b!1038481 () Bool)

(declare-fun e!587645 () Bool)

(assert (=> b!1038481 (= e!587645 tp_is_empty!24663)))

(declare-fun mapIsEmpty!38544 () Bool)

(assert (=> mapIsEmpty!38544 mapRes!38544))

(declare-fun mapNonEmpty!38544 () Bool)

(declare-fun tp!74000 () Bool)

(assert (=> mapNonEmpty!38544 (= mapRes!38544 (and tp!74000 e!587645))))

(declare-fun mapValue!38544 () ValueCell!11628)

(declare-fun mapKey!38544 () (_ BitVec 32))

(declare-fun mapRest!38544 () (Array (_ BitVec 32) ValueCell!11628))

(assert (=> mapNonEmpty!38544 (= mapRest!38538 (store mapRest!38544 mapKey!38544 mapValue!38544))))

(assert (= (and mapNonEmpty!38538 condMapEmpty!38544) mapIsEmpty!38544))

(assert (= (and mapNonEmpty!38538 (not condMapEmpty!38544)) mapNonEmpty!38544))

(assert (= (and mapNonEmpty!38544 ((_ is ValueCellFull!11628) mapValue!38544)) b!1038481))

(assert (= (and mapNonEmpty!38538 ((_ is ValueCellFull!11628) mapDefault!38544)) b!1038482))

(declare-fun m!958551 () Bool)

(assert (=> mapNonEmpty!38544 m!958551))

(check-sat (not d!125299) (not b!1038418) (not b!1038441) (not d!125287) (not b!1038404) tp_is_empty!24663 (not b!1038446) (not d!125295) (not bm!43942) (not b!1038440) (not bm!43946) (not b!1038443) (not b!1038430) (not b!1038455) (not bm!43945) (not b!1038456) (not b_next!20943) (not d!125305) (not b!1038454) b_and!33493 (not b!1038472) (not b!1038415) (not mapNonEmpty!38544) (not b!1038417))
(check-sat b_and!33493 (not b_next!20943))

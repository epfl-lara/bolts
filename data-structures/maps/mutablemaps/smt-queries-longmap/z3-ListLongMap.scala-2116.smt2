; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35874 () Bool)

(assert start!35874)

(declare-fun b!360409 () Bool)

(declare-fun res!200540 () Bool)

(declare-fun e!220661 () Bool)

(assert (=> b!360409 (=> (not res!200540) (not e!220661))))

(declare-datatypes ((array!20159 0))(
  ( (array!20160 (arr!9570 (Array (_ BitVec 32) (_ BitVec 64))) (size!9922 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20159)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20159 (_ BitVec 32)) Bool)

(assert (=> b!360409 (= res!200540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360410 () Bool)

(declare-fun e!220659 () Bool)

(declare-fun tp_is_empty!8319 () Bool)

(assert (=> b!360410 (= e!220659 tp_is_empty!8319)))

(declare-fun b!360411 () Bool)

(declare-fun e!220658 () Bool)

(assert (=> b!360411 (= e!220658 tp_is_empty!8319)))

(declare-fun b!360412 () Bool)

(declare-fun res!200535 () Bool)

(assert (=> b!360412 (=> (not res!200535) (not e!220661))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360412 (= res!200535 (validKeyInArray!0 k0!1077))))

(declare-fun b!360413 () Bool)

(declare-fun res!200539 () Bool)

(assert (=> b!360413 (=> (not res!200539) (not e!220661))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360413 (= res!200539 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13986 () Bool)

(declare-fun mapRes!13986 () Bool)

(assert (=> mapIsEmpty!13986 mapRes!13986))

(declare-fun b!360414 () Bool)

(declare-fun res!200537 () Bool)

(assert (=> b!360414 (=> (not res!200537) (not e!220661))))

(declare-datatypes ((List!5519 0))(
  ( (Nil!5516) (Cons!5515 (h!6371 (_ BitVec 64)) (t!10677 List!5519)) )
))
(declare-fun arrayNoDuplicates!0 (array!20159 (_ BitVec 32) List!5519) Bool)

(assert (=> b!360414 (= res!200537 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5516))))

(declare-fun res!200542 () Bool)

(assert (=> start!35874 (=> (not res!200542) (not e!220661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35874 (= res!200542 (validMask!0 mask!1842))))

(assert (=> start!35874 e!220661))

(assert (=> start!35874 tp_is_empty!8319))

(assert (=> start!35874 true))

(declare-fun array_inv!7036 (array!20159) Bool)

(assert (=> start!35874 (array_inv!7036 _keys!1456)))

(declare-datatypes ((V!12069 0))(
  ( (V!12070 (val!4204 Int)) )
))
(declare-datatypes ((ValueCell!3816 0))(
  ( (ValueCellFull!3816 (v!6394 V!12069)) (EmptyCell!3816) )
))
(declare-datatypes ((array!20161 0))(
  ( (array!20162 (arr!9571 (Array (_ BitVec 32) ValueCell!3816)) (size!9923 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20161)

(declare-fun e!220657 () Bool)

(declare-fun array_inv!7037 (array!20161) Bool)

(assert (=> start!35874 (and (array_inv!7037 _values!1208) e!220657)))

(declare-fun b!360415 () Bool)

(declare-fun res!200541 () Bool)

(assert (=> b!360415 (=> (not res!200541) (not e!220661))))

(assert (=> b!360415 (= res!200541 (not (= (select (arr!9570 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!360416 () Bool)

(declare-fun res!200536 () Bool)

(assert (=> b!360416 (=> (not res!200536) (not e!220661))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!360416 (= res!200536 (and (= (size!9923 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9922 _keys!1456) (size!9923 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360417 () Bool)

(declare-fun res!200538 () Bool)

(assert (=> b!360417 (=> (not res!200538) (not e!220661))))

(assert (=> b!360417 (= res!200538 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9922 _keys!1456))))))

(declare-fun mapNonEmpty!13986 () Bool)

(declare-fun tp!28053 () Bool)

(assert (=> mapNonEmpty!13986 (= mapRes!13986 (and tp!28053 e!220659))))

(declare-fun mapRest!13986 () (Array (_ BitVec 32) ValueCell!3816))

(declare-fun mapValue!13986 () ValueCell!3816)

(declare-fun mapKey!13986 () (_ BitVec 32))

(assert (=> mapNonEmpty!13986 (= (arr!9571 _values!1208) (store mapRest!13986 mapKey!13986 mapValue!13986))))

(declare-fun b!360418 () Bool)

(assert (=> b!360418 (= e!220661 (not (and (bvsge (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1805) (size!9922 _keys!1456)))))))

(assert (=> b!360418 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12069)

(declare-datatypes ((Unit!11085 0))(
  ( (Unit!11086) )
))
(declare-fun lt!166426 () Unit!11085)

(declare-fun zeroValue!1150 () V!12069)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!59 (array!20159 array!20161 (_ BitVec 32) (_ BitVec 32) V!12069 V!12069 (_ BitVec 64) (_ BitVec 32)) Unit!11085)

(assert (=> b!360418 (= lt!166426 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!59 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!360419 () Bool)

(assert (=> b!360419 (= e!220657 (and e!220658 mapRes!13986))))

(declare-fun condMapEmpty!13986 () Bool)

(declare-fun mapDefault!13986 () ValueCell!3816)

(assert (=> b!360419 (= condMapEmpty!13986 (= (arr!9571 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3816)) mapDefault!13986)))))

(assert (= (and start!35874 res!200542) b!360416))

(assert (= (and b!360416 res!200536) b!360409))

(assert (= (and b!360409 res!200540) b!360414))

(assert (= (and b!360414 res!200537) b!360412))

(assert (= (and b!360412 res!200535) b!360417))

(assert (= (and b!360417 res!200538) b!360413))

(assert (= (and b!360413 res!200539) b!360415))

(assert (= (and b!360415 res!200541) b!360418))

(assert (= (and b!360419 condMapEmpty!13986) mapIsEmpty!13986))

(assert (= (and b!360419 (not condMapEmpty!13986)) mapNonEmpty!13986))

(get-info :version)

(assert (= (and mapNonEmpty!13986 ((_ is ValueCellFull!3816) mapValue!13986)) b!360410))

(assert (= (and b!360419 ((_ is ValueCellFull!3816) mapDefault!13986)) b!360411))

(assert (= start!35874 b!360419))

(declare-fun m!357559 () Bool)

(assert (=> b!360418 m!357559))

(declare-fun m!357561 () Bool)

(assert (=> b!360418 m!357561))

(declare-fun m!357563 () Bool)

(assert (=> mapNonEmpty!13986 m!357563))

(declare-fun m!357565 () Bool)

(assert (=> b!360415 m!357565))

(declare-fun m!357567 () Bool)

(assert (=> b!360413 m!357567))

(declare-fun m!357569 () Bool)

(assert (=> b!360409 m!357569))

(declare-fun m!357571 () Bool)

(assert (=> start!35874 m!357571))

(declare-fun m!357573 () Bool)

(assert (=> start!35874 m!357573))

(declare-fun m!357575 () Bool)

(assert (=> start!35874 m!357575))

(declare-fun m!357577 () Bool)

(assert (=> b!360414 m!357577))

(declare-fun m!357579 () Bool)

(assert (=> b!360412 m!357579))

(check-sat tp_is_empty!8319 (not start!35874) (not b!360418) (not b!360414) (not b!360413) (not b!360412) (not mapNonEmpty!13986) (not b!360409))
(check-sat)
(get-model)

(declare-fun d!71721 () Bool)

(assert (=> d!71721 (= (validKeyInArray!0 k0!1077) (and (not (= k0!1077 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1077 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!360412 d!71721))

(declare-fun d!71723 () Bool)

(declare-fun res!200571 () Bool)

(declare-fun e!220681 () Bool)

(assert (=> d!71723 (=> res!200571 e!220681)))

(assert (=> d!71723 (= res!200571 (= (select (arr!9570 _keys!1456) from!1805) k0!1077))))

(assert (=> d!71723 (= (arrayContainsKey!0 _keys!1456 k0!1077 from!1805) e!220681)))

(declare-fun b!360457 () Bool)

(declare-fun e!220682 () Bool)

(assert (=> b!360457 (= e!220681 e!220682)))

(declare-fun res!200572 () Bool)

(assert (=> b!360457 (=> (not res!200572) (not e!220682))))

(assert (=> b!360457 (= res!200572 (bvslt (bvadd from!1805 #b00000000000000000000000000000001) (size!9922 _keys!1456)))))

(declare-fun b!360458 () Bool)

(assert (=> b!360458 (= e!220682 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd from!1805 #b00000000000000000000000000000001)))))

(assert (= (and d!71723 (not res!200571)) b!360457))

(assert (= (and b!360457 res!200572) b!360458))

(assert (=> d!71723 m!357565))

(declare-fun m!357603 () Bool)

(assert (=> b!360458 m!357603))

(assert (=> b!360413 d!71723))

(declare-fun d!71725 () Bool)

(assert (=> d!71725 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35874 d!71725))

(declare-fun d!71727 () Bool)

(assert (=> d!71727 (= (array_inv!7036 _keys!1456) (bvsge (size!9922 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35874 d!71727))

(declare-fun d!71729 () Bool)

(assert (=> d!71729 (= (array_inv!7037 _values!1208) (bvsge (size!9923 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35874 d!71729))

(declare-fun d!71731 () Bool)

(declare-fun res!200579 () Bool)

(declare-fun e!220693 () Bool)

(assert (=> d!71731 (=> res!200579 e!220693)))

(assert (=> d!71731 (= res!200579 (bvsge #b00000000000000000000000000000000 (size!9922 _keys!1456)))))

(assert (=> d!71731 (= (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5516) e!220693)))

(declare-fun b!360469 () Bool)

(declare-fun e!220692 () Bool)

(declare-fun contains!2422 (List!5519 (_ BitVec 64)) Bool)

(assert (=> b!360469 (= e!220692 (contains!2422 Nil!5516 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!360470 () Bool)

(declare-fun e!220694 () Bool)

(assert (=> b!360470 (= e!220693 e!220694)))

(declare-fun res!200580 () Bool)

(assert (=> b!360470 (=> (not res!200580) (not e!220694))))

(assert (=> b!360470 (= res!200580 (not e!220692))))

(declare-fun res!200581 () Bool)

(assert (=> b!360470 (=> (not res!200581) (not e!220692))))

(assert (=> b!360470 (= res!200581 (validKeyInArray!0 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!360471 () Bool)

(declare-fun e!220691 () Bool)

(declare-fun call!27158 () Bool)

(assert (=> b!360471 (= e!220691 call!27158)))

(declare-fun b!360472 () Bool)

(assert (=> b!360472 (= e!220691 call!27158)))

(declare-fun bm!27155 () Bool)

(declare-fun c!53633 () Bool)

(assert (=> bm!27155 (= call!27158 (arrayNoDuplicates!0 _keys!1456 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53633 (Cons!5515 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000) Nil!5516) Nil!5516)))))

(declare-fun b!360473 () Bool)

(assert (=> b!360473 (= e!220694 e!220691)))

(assert (=> b!360473 (= c!53633 (validKeyInArray!0 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000)))))

(assert (= (and d!71731 (not res!200579)) b!360470))

(assert (= (and b!360470 res!200581) b!360469))

(assert (= (and b!360470 res!200580) b!360473))

(assert (= (and b!360473 c!53633) b!360471))

(assert (= (and b!360473 (not c!53633)) b!360472))

(assert (= (or b!360471 b!360472) bm!27155))

(declare-fun m!357605 () Bool)

(assert (=> b!360469 m!357605))

(assert (=> b!360469 m!357605))

(declare-fun m!357607 () Bool)

(assert (=> b!360469 m!357607))

(assert (=> b!360470 m!357605))

(assert (=> b!360470 m!357605))

(declare-fun m!357609 () Bool)

(assert (=> b!360470 m!357609))

(assert (=> bm!27155 m!357605))

(declare-fun m!357611 () Bool)

(assert (=> bm!27155 m!357611))

(assert (=> b!360473 m!357605))

(assert (=> b!360473 m!357605))

(assert (=> b!360473 m!357609))

(assert (=> b!360414 d!71731))

(declare-fun d!71733 () Bool)

(declare-fun res!200582 () Bool)

(declare-fun e!220695 () Bool)

(assert (=> d!71733 (=> res!200582 e!220695)))

(assert (=> d!71733 (= res!200582 (= (select (arr!9570 _keys!1456) (bvadd #b00000000000000000000000000000001 from!1805)) k0!1077))))

(assert (=> d!71733 (= (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805)) e!220695)))

(declare-fun b!360474 () Bool)

(declare-fun e!220696 () Bool)

(assert (=> b!360474 (= e!220695 e!220696)))

(declare-fun res!200583 () Bool)

(assert (=> b!360474 (=> (not res!200583) (not e!220696))))

(assert (=> b!360474 (= res!200583 (bvslt (bvadd #b00000000000000000000000000000001 from!1805 #b00000000000000000000000000000001) (size!9922 _keys!1456)))))

(declare-fun b!360475 () Bool)

(assert (=> b!360475 (= e!220696 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805 #b00000000000000000000000000000001)))))

(assert (= (and d!71733 (not res!200582)) b!360474))

(assert (= (and b!360474 res!200583) b!360475))

(declare-fun m!357613 () Bool)

(assert (=> d!71733 m!357613))

(declare-fun m!357615 () Bool)

(assert (=> b!360475 m!357615))

(assert (=> b!360418 d!71733))

(declare-fun d!71735 () Bool)

(assert (=> d!71735 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd from!1805 #b00000000000000000000000000000001))))

(declare-fun lt!166432 () Unit!11085)

(declare-fun choose!1318 (array!20159 array!20161 (_ BitVec 32) (_ BitVec 32) V!12069 V!12069 (_ BitVec 64) (_ BitVec 32)) Unit!11085)

(assert (=> d!71735 (= lt!166432 (choose!1318 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(assert (=> d!71735 (validMask!0 mask!1842)))

(assert (=> d!71735 (= (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!59 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805) lt!166432)))

(declare-fun bs!12287 () Bool)

(assert (= bs!12287 d!71735))

(assert (=> bs!12287 m!357603))

(declare-fun m!357617 () Bool)

(assert (=> bs!12287 m!357617))

(assert (=> bs!12287 m!357571))

(assert (=> b!360418 d!71735))

(declare-fun bm!27158 () Bool)

(declare-fun call!27161 () Bool)

(assert (=> bm!27158 (= call!27161 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1456 mask!1842))))

(declare-fun b!360484 () Bool)

(declare-fun e!220703 () Bool)

(assert (=> b!360484 (= e!220703 call!27161)))

(declare-fun d!71737 () Bool)

(declare-fun res!200588 () Bool)

(declare-fun e!220705 () Bool)

(assert (=> d!71737 (=> res!200588 e!220705)))

(assert (=> d!71737 (= res!200588 (bvsge #b00000000000000000000000000000000 (size!9922 _keys!1456)))))

(assert (=> d!71737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842) e!220705)))

(declare-fun b!360485 () Bool)

(declare-fun e!220704 () Bool)

(assert (=> b!360485 (= e!220705 e!220704)))

(declare-fun c!53636 () Bool)

(assert (=> b!360485 (= c!53636 (validKeyInArray!0 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!360486 () Bool)

(assert (=> b!360486 (= e!220704 call!27161)))

(declare-fun b!360487 () Bool)

(assert (=> b!360487 (= e!220704 e!220703)))

(declare-fun lt!166440 () (_ BitVec 64))

(assert (=> b!360487 (= lt!166440 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000))))

(declare-fun lt!166439 () Unit!11085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20159 (_ BitVec 64) (_ BitVec 32)) Unit!11085)

(assert (=> b!360487 (= lt!166439 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1456 lt!166440 #b00000000000000000000000000000000))))

(assert (=> b!360487 (arrayContainsKey!0 _keys!1456 lt!166440 #b00000000000000000000000000000000)))

(declare-fun lt!166441 () Unit!11085)

(assert (=> b!360487 (= lt!166441 lt!166439)))

(declare-fun res!200589 () Bool)

(declare-datatypes ((SeekEntryResult!3479 0))(
  ( (MissingZero!3479 (index!16095 (_ BitVec 32))) (Found!3479 (index!16096 (_ BitVec 32))) (Intermediate!3479 (undefined!4291 Bool) (index!16097 (_ BitVec 32)) (x!35908 (_ BitVec 32))) (Undefined!3479) (MissingVacant!3479 (index!16098 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20159 (_ BitVec 32)) SeekEntryResult!3479)

(assert (=> b!360487 (= res!200589 (= (seekEntryOrOpen!0 (select (arr!9570 _keys!1456) #b00000000000000000000000000000000) _keys!1456 mask!1842) (Found!3479 #b00000000000000000000000000000000)))))

(assert (=> b!360487 (=> (not res!200589) (not e!220703))))

(assert (= (and d!71737 (not res!200588)) b!360485))

(assert (= (and b!360485 c!53636) b!360487))

(assert (= (and b!360485 (not c!53636)) b!360486))

(assert (= (and b!360487 res!200589) b!360484))

(assert (= (or b!360484 b!360486) bm!27158))

(declare-fun m!357619 () Bool)

(assert (=> bm!27158 m!357619))

(assert (=> b!360485 m!357605))

(assert (=> b!360485 m!357605))

(assert (=> b!360485 m!357609))

(assert (=> b!360487 m!357605))

(declare-fun m!357621 () Bool)

(assert (=> b!360487 m!357621))

(declare-fun m!357623 () Bool)

(assert (=> b!360487 m!357623))

(assert (=> b!360487 m!357605))

(declare-fun m!357625 () Bool)

(assert (=> b!360487 m!357625))

(assert (=> b!360409 d!71737))

(declare-fun condMapEmpty!13992 () Bool)

(declare-fun mapDefault!13992 () ValueCell!3816)

(assert (=> mapNonEmpty!13986 (= condMapEmpty!13992 (= mapRest!13986 ((as const (Array (_ BitVec 32) ValueCell!3816)) mapDefault!13992)))))

(declare-fun e!220711 () Bool)

(declare-fun mapRes!13992 () Bool)

(assert (=> mapNonEmpty!13986 (= tp!28053 (and e!220711 mapRes!13992))))

(declare-fun mapNonEmpty!13992 () Bool)

(declare-fun tp!28059 () Bool)

(declare-fun e!220710 () Bool)

(assert (=> mapNonEmpty!13992 (= mapRes!13992 (and tp!28059 e!220710))))

(declare-fun mapValue!13992 () ValueCell!3816)

(declare-fun mapKey!13992 () (_ BitVec 32))

(declare-fun mapRest!13992 () (Array (_ BitVec 32) ValueCell!3816))

(assert (=> mapNonEmpty!13992 (= mapRest!13986 (store mapRest!13992 mapKey!13992 mapValue!13992))))

(declare-fun mapIsEmpty!13992 () Bool)

(assert (=> mapIsEmpty!13992 mapRes!13992))

(declare-fun b!360494 () Bool)

(assert (=> b!360494 (= e!220710 tp_is_empty!8319)))

(declare-fun b!360495 () Bool)

(assert (=> b!360495 (= e!220711 tp_is_empty!8319)))

(assert (= (and mapNonEmpty!13986 condMapEmpty!13992) mapIsEmpty!13992))

(assert (= (and mapNonEmpty!13986 (not condMapEmpty!13992)) mapNonEmpty!13992))

(assert (= (and mapNonEmpty!13992 ((_ is ValueCellFull!3816) mapValue!13992)) b!360494))

(assert (= (and mapNonEmpty!13986 ((_ is ValueCellFull!3816) mapDefault!13992)) b!360495))

(declare-fun m!357627 () Bool)

(assert (=> mapNonEmpty!13992 m!357627))

(check-sat (not mapNonEmpty!13992) tp_is_empty!8319 (not b!360470) (not d!71735) (not b!360473) (not b!360469) (not b!360485) (not b!360475) (not bm!27158) (not b!360487) (not bm!27155) (not b!360458))
(check-sat)

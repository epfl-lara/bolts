; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131654 () Bool)

(assert start!131654)

(declare-fun b!1541580 () Bool)

(declare-fun e!857497 () Bool)

(declare-fun tp_is_empty!37641 () Bool)

(assert (=> b!1541580 (= e!857497 tp_is_empty!37641)))

(declare-fun b!1541581 () Bool)

(declare-fun res!1058123 () Bool)

(declare-fun e!857494 () Bool)

(assert (=> b!1541581 (=> (not res!1058123) (not e!857494))))

(declare-datatypes ((array!102477 0))(
  ( (array!102478 (arr!49439 (Array (_ BitVec 32) (_ BitVec 64))) (size!49990 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102477)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58631 0))(
  ( (V!58632 (val!18898 Int)) )
))
(declare-datatypes ((ValueCell!17910 0))(
  ( (ValueCellFull!17910 (v!21695 V!58631)) (EmptyCell!17910) )
))
(declare-datatypes ((array!102479 0))(
  ( (array!102480 (arr!49440 (Array (_ BitVec 32) ValueCell!17910)) (size!49991 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102479)

(assert (=> b!1541581 (= res!1058123 (and (= (size!49991 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49990 _keys!618) (size!49991 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058124 () Bool)

(assert (=> start!131654 (=> (not res!1058124) (not e!857494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131654 (= res!1058124 (validMask!0 mask!926))))

(assert (=> start!131654 e!857494))

(assert (=> start!131654 true))

(declare-fun e!857496 () Bool)

(declare-fun array_inv!38381 (array!102479) Bool)

(assert (=> start!131654 (and (array_inv!38381 _values!470) e!857496)))

(declare-fun array_inv!38382 (array!102477) Bool)

(assert (=> start!131654 (array_inv!38382 _keys!618)))

(declare-fun mapIsEmpty!58156 () Bool)

(declare-fun mapRes!58156 () Bool)

(assert (=> mapIsEmpty!58156 mapRes!58156))

(declare-fun b!1541582 () Bool)

(declare-fun e!857498 () Bool)

(assert (=> b!1541582 (= e!857498 tp_is_empty!37641)))

(declare-fun b!1541583 () Bool)

(assert (=> b!1541583 (= e!857494 (and (bvsle #b00000000000000000000000000000000 (size!49990 _keys!618)) (bvsge (size!49990 _keys!618) #b01111111111111111111111111111111)))))

(declare-fun b!1541584 () Bool)

(assert (=> b!1541584 (= e!857496 (and e!857498 mapRes!58156))))

(declare-fun condMapEmpty!58156 () Bool)

(declare-fun mapDefault!58156 () ValueCell!17910)

(assert (=> b!1541584 (= condMapEmpty!58156 (= (arr!49440 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17910)) mapDefault!58156)))))

(declare-fun b!1541585 () Bool)

(declare-fun res!1058122 () Bool)

(assert (=> b!1541585 (=> (not res!1058122) (not e!857494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102477 (_ BitVec 32)) Bool)

(assert (=> b!1541585 (= res!1058122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58156 () Bool)

(declare-fun tp!110684 () Bool)

(assert (=> mapNonEmpty!58156 (= mapRes!58156 (and tp!110684 e!857497))))

(declare-fun mapValue!58156 () ValueCell!17910)

(declare-fun mapRest!58156 () (Array (_ BitVec 32) ValueCell!17910))

(declare-fun mapKey!58156 () (_ BitVec 32))

(assert (=> mapNonEmpty!58156 (= (arr!49440 _values!470) (store mapRest!58156 mapKey!58156 mapValue!58156))))

(assert (= (and start!131654 res!1058124) b!1541581))

(assert (= (and b!1541581 res!1058123) b!1541585))

(assert (= (and b!1541585 res!1058122) b!1541583))

(assert (= (and b!1541584 condMapEmpty!58156) mapIsEmpty!58156))

(assert (= (and b!1541584 (not condMapEmpty!58156)) mapNonEmpty!58156))

(get-info :version)

(assert (= (and mapNonEmpty!58156 ((_ is ValueCellFull!17910) mapValue!58156)) b!1541580))

(assert (= (and b!1541584 ((_ is ValueCellFull!17910) mapDefault!58156)) b!1541582))

(assert (= start!131654 b!1541584))

(declare-fun m!1423523 () Bool)

(assert (=> start!131654 m!1423523))

(declare-fun m!1423525 () Bool)

(assert (=> start!131654 m!1423525))

(declare-fun m!1423527 () Bool)

(assert (=> start!131654 m!1423527))

(declare-fun m!1423529 () Bool)

(assert (=> b!1541585 m!1423529))

(declare-fun m!1423531 () Bool)

(assert (=> mapNonEmpty!58156 m!1423531))

(check-sat (not b!1541585) (not start!131654) (not mapNonEmpty!58156) tp_is_empty!37641)
(check-sat)
(get-model)

(declare-fun b!1541612 () Bool)

(declare-fun e!857520 () Bool)

(declare-fun call!68685 () Bool)

(assert (=> b!1541612 (= e!857520 call!68685)))

(declare-fun bm!68682 () Bool)

(assert (=> bm!68682 (= call!68685 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1541613 () Bool)

(declare-fun e!857522 () Bool)

(assert (=> b!1541613 (= e!857522 call!68685)))

(declare-fun b!1541614 () Bool)

(assert (=> b!1541614 (= e!857522 e!857520)))

(declare-fun lt!665633 () (_ BitVec 64))

(assert (=> b!1541614 (= lt!665633 (select (arr!49439 _keys!618) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51436 0))(
  ( (Unit!51437) )
))
(declare-fun lt!665634 () Unit!51436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102477 (_ BitVec 64) (_ BitVec 32)) Unit!51436)

(assert (=> b!1541614 (= lt!665634 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!665633 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541614 (arrayContainsKey!0 _keys!618 lt!665633 #b00000000000000000000000000000000)))

(declare-fun lt!665635 () Unit!51436)

(assert (=> b!1541614 (= lt!665635 lt!665634)))

(declare-fun res!1058138 () Bool)

(declare-datatypes ((SeekEntryResult!13507 0))(
  ( (MissingZero!13507 (index!56425 (_ BitVec 32))) (Found!13507 (index!56426 (_ BitVec 32))) (Intermediate!13507 (undefined!14319 Bool) (index!56427 (_ BitVec 32)) (x!138364 (_ BitVec 32))) (Undefined!13507) (MissingVacant!13507 (index!56428 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102477 (_ BitVec 32)) SeekEntryResult!13507)

(assert (=> b!1541614 (= res!1058138 (= (seekEntryOrOpen!0 (select (arr!49439 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13507 #b00000000000000000000000000000000)))))

(assert (=> b!1541614 (=> (not res!1058138) (not e!857520))))

(declare-fun b!1541615 () Bool)

(declare-fun e!857521 () Bool)

(assert (=> b!1541615 (= e!857521 e!857522)))

(declare-fun c!141236 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541615 (= c!141236 (validKeyInArray!0 (select (arr!49439 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun d!160623 () Bool)

(declare-fun res!1058139 () Bool)

(assert (=> d!160623 (=> res!1058139 e!857521)))

(assert (=> d!160623 (= res!1058139 (bvsge #b00000000000000000000000000000000 (size!49990 _keys!618)))))

(assert (=> d!160623 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!857521)))

(assert (= (and d!160623 (not res!1058139)) b!1541615))

(assert (= (and b!1541615 c!141236) b!1541614))

(assert (= (and b!1541615 (not c!141236)) b!1541613))

(assert (= (and b!1541614 res!1058138) b!1541612))

(assert (= (or b!1541612 b!1541613) bm!68682))

(declare-fun m!1423543 () Bool)

(assert (=> bm!68682 m!1423543))

(declare-fun m!1423545 () Bool)

(assert (=> b!1541614 m!1423545))

(declare-fun m!1423547 () Bool)

(assert (=> b!1541614 m!1423547))

(declare-fun m!1423549 () Bool)

(assert (=> b!1541614 m!1423549))

(assert (=> b!1541614 m!1423545))

(declare-fun m!1423551 () Bool)

(assert (=> b!1541614 m!1423551))

(assert (=> b!1541615 m!1423545))

(assert (=> b!1541615 m!1423545))

(declare-fun m!1423553 () Bool)

(assert (=> b!1541615 m!1423553))

(assert (=> b!1541585 d!160623))

(declare-fun d!160625 () Bool)

(assert (=> d!160625 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!131654 d!160625))

(declare-fun d!160627 () Bool)

(assert (=> d!160627 (= (array_inv!38381 _values!470) (bvsge (size!49991 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!131654 d!160627))

(declare-fun d!160629 () Bool)

(assert (=> d!160629 (= (array_inv!38382 _keys!618) (bvsge (size!49990 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!131654 d!160629))

(declare-fun mapNonEmpty!58162 () Bool)

(declare-fun mapRes!58162 () Bool)

(declare-fun tp!110690 () Bool)

(declare-fun e!857527 () Bool)

(assert (=> mapNonEmpty!58162 (= mapRes!58162 (and tp!110690 e!857527))))

(declare-fun mapValue!58162 () ValueCell!17910)

(declare-fun mapKey!58162 () (_ BitVec 32))

(declare-fun mapRest!58162 () (Array (_ BitVec 32) ValueCell!17910))

(assert (=> mapNonEmpty!58162 (= mapRest!58156 (store mapRest!58162 mapKey!58162 mapValue!58162))))

(declare-fun b!1541623 () Bool)

(declare-fun e!857528 () Bool)

(assert (=> b!1541623 (= e!857528 tp_is_empty!37641)))

(declare-fun condMapEmpty!58162 () Bool)

(declare-fun mapDefault!58162 () ValueCell!17910)

(assert (=> mapNonEmpty!58156 (= condMapEmpty!58162 (= mapRest!58156 ((as const (Array (_ BitVec 32) ValueCell!17910)) mapDefault!58162)))))

(assert (=> mapNonEmpty!58156 (= tp!110684 (and e!857528 mapRes!58162))))

(declare-fun b!1541622 () Bool)

(assert (=> b!1541622 (= e!857527 tp_is_empty!37641)))

(declare-fun mapIsEmpty!58162 () Bool)

(assert (=> mapIsEmpty!58162 mapRes!58162))

(assert (= (and mapNonEmpty!58156 condMapEmpty!58162) mapIsEmpty!58162))

(assert (= (and mapNonEmpty!58156 (not condMapEmpty!58162)) mapNonEmpty!58162))

(assert (= (and mapNonEmpty!58162 ((_ is ValueCellFull!17910) mapValue!58162)) b!1541622))

(assert (= (and mapNonEmpty!58156 ((_ is ValueCellFull!17910) mapDefault!58162)) b!1541623))

(declare-fun m!1423555 () Bool)

(assert (=> mapNonEmpty!58162 m!1423555))

(check-sat (not b!1541615) (not mapNonEmpty!58162) (not b!1541614) (not bm!68682) tp_is_empty!37641)
(check-sat)

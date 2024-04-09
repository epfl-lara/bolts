; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131668 () Bool)

(assert start!131668)

(declare-fun b!1541659 () Bool)

(declare-fun e!857554 () Bool)

(declare-fun e!857557 () Bool)

(declare-fun mapRes!58168 () Bool)

(assert (=> b!1541659 (= e!857554 (and e!857557 mapRes!58168))))

(declare-fun condMapEmpty!58168 () Bool)

(declare-datatypes ((V!58639 0))(
  ( (V!58640 (val!18901 Int)) )
))
(declare-datatypes ((ValueCell!17913 0))(
  ( (ValueCellFull!17913 (v!21698 V!58639)) (EmptyCell!17913) )
))
(declare-datatypes ((array!102491 0))(
  ( (array!102492 (arr!49445 (Array (_ BitVec 32) ValueCell!17913)) (size!49996 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102491)

(declare-fun mapDefault!58168 () ValueCell!17913)

(assert (=> b!1541659 (= condMapEmpty!58168 (= (arr!49445 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17913)) mapDefault!58168)))))

(declare-fun res!1058162 () Bool)

(declare-fun e!857555 () Bool)

(assert (=> start!131668 (=> (not res!1058162) (not e!857555))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131668 (= res!1058162 (validMask!0 mask!926))))

(assert (=> start!131668 e!857555))

(assert (=> start!131668 true))

(declare-fun array_inv!38387 (array!102491) Bool)

(assert (=> start!131668 (and (array_inv!38387 _values!470) e!857554)))

(declare-datatypes ((array!102493 0))(
  ( (array!102494 (arr!49446 (Array (_ BitVec 32) (_ BitVec 64))) (size!49997 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102493)

(declare-fun array_inv!38388 (array!102493) Bool)

(assert (=> start!131668 (array_inv!38388 _keys!618)))

(declare-fun b!1541660 () Bool)

(declare-fun e!857558 () Bool)

(declare-fun tp_is_empty!37647 () Bool)

(assert (=> b!1541660 (= e!857558 tp_is_empty!37647)))

(declare-fun mapNonEmpty!58168 () Bool)

(declare-fun tp!110696 () Bool)

(assert (=> mapNonEmpty!58168 (= mapRes!58168 (and tp!110696 e!857558))))

(declare-fun mapValue!58168 () ValueCell!17913)

(declare-fun mapKey!58168 () (_ BitVec 32))

(declare-fun mapRest!58168 () (Array (_ BitVec 32) ValueCell!17913))

(assert (=> mapNonEmpty!58168 (= (arr!49445 _values!470) (store mapRest!58168 mapKey!58168 mapValue!58168))))

(declare-fun b!1541661 () Bool)

(assert (=> b!1541661 (= e!857557 tp_is_empty!37647)))

(declare-fun b!1541662 () Bool)

(declare-fun res!1058160 () Bool)

(assert (=> b!1541662 (=> (not res!1058160) (not e!857555))))

(assert (=> b!1541662 (= res!1058160 (and (bvsle #b00000000000000000000000000000000 (size!49997 _keys!618)) (bvslt (size!49997 _keys!618) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!58168 () Bool)

(assert (=> mapIsEmpty!58168 mapRes!58168))

(declare-fun b!1541663 () Bool)

(declare-fun res!1058163 () Bool)

(assert (=> b!1541663 (=> (not res!1058163) (not e!857555))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1541663 (= res!1058163 (and (= (size!49996 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49997 _keys!618) (size!49996 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541664 () Bool)

(declare-fun res!1058161 () Bool)

(assert (=> b!1541664 (=> (not res!1058161) (not e!857555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102493 (_ BitVec 32)) Bool)

(assert (=> b!1541664 (= res!1058161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1541665 () Bool)

(declare-datatypes ((List!36009 0))(
  ( (Nil!36006) (Cons!36005 (h!37451 (_ BitVec 64)) (t!50710 List!36009)) )
))
(declare-fun noDuplicate!2670 (List!36009) Bool)

(assert (=> b!1541665 (= e!857555 (not (noDuplicate!2670 Nil!36006)))))

(assert (= (and start!131668 res!1058162) b!1541663))

(assert (= (and b!1541663 res!1058163) b!1541664))

(assert (= (and b!1541664 res!1058161) b!1541662))

(assert (= (and b!1541662 res!1058160) b!1541665))

(assert (= (and b!1541659 condMapEmpty!58168) mapIsEmpty!58168))

(assert (= (and b!1541659 (not condMapEmpty!58168)) mapNonEmpty!58168))

(get-info :version)

(assert (= (and mapNonEmpty!58168 ((_ is ValueCellFull!17913) mapValue!58168)) b!1541660))

(assert (= (and b!1541659 ((_ is ValueCellFull!17913) mapDefault!58168)) b!1541661))

(assert (= start!131668 b!1541659))

(declare-fun m!1423569 () Bool)

(assert (=> start!131668 m!1423569))

(declare-fun m!1423571 () Bool)

(assert (=> start!131668 m!1423571))

(declare-fun m!1423573 () Bool)

(assert (=> start!131668 m!1423573))

(declare-fun m!1423575 () Bool)

(assert (=> mapNonEmpty!58168 m!1423575))

(declare-fun m!1423577 () Bool)

(assert (=> b!1541664 m!1423577))

(declare-fun m!1423579 () Bool)

(assert (=> b!1541665 m!1423579))

(check-sat (not b!1541665) (not b!1541664) tp_is_empty!37647 (not mapNonEmpty!58168) (not start!131668))
(check-sat)
(get-model)

(declare-fun d!160633 () Bool)

(assert (=> d!160633 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!131668 d!160633))

(declare-fun d!160635 () Bool)

(assert (=> d!160635 (= (array_inv!38387 _values!470) (bvsge (size!49996 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!131668 d!160635))

(declare-fun d!160637 () Bool)

(assert (=> d!160637 (= (array_inv!38388 _keys!618) (bvsge (size!49997 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!131668 d!160637))

(declare-fun bm!68685 () Bool)

(declare-fun call!68688 () Bool)

(assert (=> bm!68685 (= call!68688 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1541695 () Bool)

(declare-fun e!857580 () Bool)

(declare-fun e!857582 () Bool)

(assert (=> b!1541695 (= e!857580 e!857582)))

(declare-fun c!141239 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541695 (= c!141239 (validKeyInArray!0 (select (arr!49446 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun b!1541696 () Bool)

(assert (=> b!1541696 (= e!857582 call!68688)))

(declare-fun b!1541697 () Bool)

(declare-fun e!857581 () Bool)

(assert (=> b!1541697 (= e!857582 e!857581)))

(declare-fun lt!665643 () (_ BitVec 64))

(assert (=> b!1541697 (= lt!665643 (select (arr!49446 _keys!618) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51438 0))(
  ( (Unit!51439) )
))
(declare-fun lt!665644 () Unit!51438)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102493 (_ BitVec 64) (_ BitVec 32)) Unit!51438)

(assert (=> b!1541697 (= lt!665644 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!665643 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541697 (arrayContainsKey!0 _keys!618 lt!665643 #b00000000000000000000000000000000)))

(declare-fun lt!665642 () Unit!51438)

(assert (=> b!1541697 (= lt!665642 lt!665644)))

(declare-fun res!1058180 () Bool)

(declare-datatypes ((SeekEntryResult!13508 0))(
  ( (MissingZero!13508 (index!56429 (_ BitVec 32))) (Found!13508 (index!56430 (_ BitVec 32))) (Intermediate!13508 (undefined!14320 Bool) (index!56431 (_ BitVec 32)) (x!138375 (_ BitVec 32))) (Undefined!13508) (MissingVacant!13508 (index!56432 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102493 (_ BitVec 32)) SeekEntryResult!13508)

(assert (=> b!1541697 (= res!1058180 (= (seekEntryOrOpen!0 (select (arr!49446 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13508 #b00000000000000000000000000000000)))))

(assert (=> b!1541697 (=> (not res!1058180) (not e!857581))))

(declare-fun d!160639 () Bool)

(declare-fun res!1058181 () Bool)

(assert (=> d!160639 (=> res!1058181 e!857580)))

(assert (=> d!160639 (= res!1058181 (bvsge #b00000000000000000000000000000000 (size!49997 _keys!618)))))

(assert (=> d!160639 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!857580)))

(declare-fun b!1541698 () Bool)

(assert (=> b!1541698 (= e!857581 call!68688)))

(assert (= (and d!160639 (not res!1058181)) b!1541695))

(assert (= (and b!1541695 c!141239) b!1541697))

(assert (= (and b!1541695 (not c!141239)) b!1541696))

(assert (= (and b!1541697 res!1058180) b!1541698))

(assert (= (or b!1541698 b!1541696) bm!68685))

(declare-fun m!1423593 () Bool)

(assert (=> bm!68685 m!1423593))

(declare-fun m!1423595 () Bool)

(assert (=> b!1541695 m!1423595))

(assert (=> b!1541695 m!1423595))

(declare-fun m!1423597 () Bool)

(assert (=> b!1541695 m!1423597))

(assert (=> b!1541697 m!1423595))

(declare-fun m!1423599 () Bool)

(assert (=> b!1541697 m!1423599))

(declare-fun m!1423601 () Bool)

(assert (=> b!1541697 m!1423601))

(assert (=> b!1541697 m!1423595))

(declare-fun m!1423603 () Bool)

(assert (=> b!1541697 m!1423603))

(assert (=> b!1541664 d!160639))

(declare-fun d!160641 () Bool)

(declare-fun res!1058186 () Bool)

(declare-fun e!857587 () Bool)

(assert (=> d!160641 (=> res!1058186 e!857587)))

(assert (=> d!160641 (= res!1058186 ((_ is Nil!36006) Nil!36006))))

(assert (=> d!160641 (= (noDuplicate!2670 Nil!36006) e!857587)))

(declare-fun b!1541703 () Bool)

(declare-fun e!857588 () Bool)

(assert (=> b!1541703 (= e!857587 e!857588)))

(declare-fun res!1058187 () Bool)

(assert (=> b!1541703 (=> (not res!1058187) (not e!857588))))

(declare-fun contains!10034 (List!36009 (_ BitVec 64)) Bool)

(assert (=> b!1541703 (= res!1058187 (not (contains!10034 (t!50710 Nil!36006) (h!37451 Nil!36006))))))

(declare-fun b!1541704 () Bool)

(assert (=> b!1541704 (= e!857588 (noDuplicate!2670 (t!50710 Nil!36006)))))

(assert (= (and d!160641 (not res!1058186)) b!1541703))

(assert (= (and b!1541703 res!1058187) b!1541704))

(declare-fun m!1423605 () Bool)

(assert (=> b!1541703 m!1423605))

(declare-fun m!1423607 () Bool)

(assert (=> b!1541704 m!1423607))

(assert (=> b!1541665 d!160641))

(declare-fun mapIsEmpty!58174 () Bool)

(declare-fun mapRes!58174 () Bool)

(assert (=> mapIsEmpty!58174 mapRes!58174))

(declare-fun b!1541711 () Bool)

(declare-fun e!857594 () Bool)

(assert (=> b!1541711 (= e!857594 tp_is_empty!37647)))

(declare-fun condMapEmpty!58174 () Bool)

(declare-fun mapDefault!58174 () ValueCell!17913)

(assert (=> mapNonEmpty!58168 (= condMapEmpty!58174 (= mapRest!58168 ((as const (Array (_ BitVec 32) ValueCell!17913)) mapDefault!58174)))))

(declare-fun e!857593 () Bool)

(assert (=> mapNonEmpty!58168 (= tp!110696 (and e!857593 mapRes!58174))))

(declare-fun mapNonEmpty!58174 () Bool)

(declare-fun tp!110702 () Bool)

(assert (=> mapNonEmpty!58174 (= mapRes!58174 (and tp!110702 e!857594))))

(declare-fun mapRest!58174 () (Array (_ BitVec 32) ValueCell!17913))

(declare-fun mapKey!58174 () (_ BitVec 32))

(declare-fun mapValue!58174 () ValueCell!17913)

(assert (=> mapNonEmpty!58174 (= mapRest!58168 (store mapRest!58174 mapKey!58174 mapValue!58174))))

(declare-fun b!1541712 () Bool)

(assert (=> b!1541712 (= e!857593 tp_is_empty!37647)))

(assert (= (and mapNonEmpty!58168 condMapEmpty!58174) mapIsEmpty!58174))

(assert (= (and mapNonEmpty!58168 (not condMapEmpty!58174)) mapNonEmpty!58174))

(assert (= (and mapNonEmpty!58174 ((_ is ValueCellFull!17913) mapValue!58174)) b!1541711))

(assert (= (and mapNonEmpty!58168 ((_ is ValueCellFull!17913) mapDefault!58174)) b!1541712))

(declare-fun m!1423609 () Bool)

(assert (=> mapNonEmpty!58174 m!1423609))

(check-sat (not mapNonEmpty!58174) (not b!1541697) tp_is_empty!37647 (not bm!68685) (not b!1541704) (not b!1541695) (not b!1541703))
(check-sat)

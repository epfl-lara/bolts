; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112096 () Bool)

(assert start!112096)

(declare-fun mapIsEmpty!56248 () Bool)

(declare-fun mapRes!56248 () Bool)

(assert (=> mapIsEmpty!56248 mapRes!56248))

(declare-fun b!1327403 () Bool)

(declare-fun res!880905 () Bool)

(declare-fun e!756694 () Bool)

(assert (=> b!1327403 (=> (not res!880905) (not e!756694))))

(declare-datatypes ((V!53619 0))(
  ( (V!53620 (val!18268 Int)) )
))
(declare-datatypes ((ValueCell!17295 0))(
  ( (ValueCellFull!17295 (v!20902 V!53619)) (EmptyCell!17295) )
))
(declare-datatypes ((array!89641 0))(
  ( (array!89642 (arr!43284 (Array (_ BitVec 32) ValueCell!17295)) (size!43835 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89641)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89643 0))(
  ( (array!89644 (arr!43285 (Array (_ BitVec 32) (_ BitVec 64))) (size!43836 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89643)

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1327403 (= res!880905 (and (= (size!43835 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43836 _keys!1590) (size!43835 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327404 () Bool)

(declare-fun e!756695 () Bool)

(declare-fun tp_is_empty!36387 () Bool)

(assert (=> b!1327404 (= e!756695 tp_is_empty!36387)))

(declare-fun b!1327405 () Bool)

(declare-fun res!880906 () Bool)

(assert (=> b!1327405 (=> (not res!880906) (not e!756694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89643 (_ BitVec 32)) Bool)

(assert (=> b!1327405 (= res!880906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327406 () Bool)

(declare-fun e!756691 () Bool)

(declare-fun e!756693 () Bool)

(assert (=> b!1327406 (= e!756691 (and e!756693 mapRes!56248))))

(declare-fun condMapEmpty!56248 () Bool)

(declare-fun mapDefault!56248 () ValueCell!17295)

(assert (=> b!1327406 (= condMapEmpty!56248 (= (arr!43284 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17295)) mapDefault!56248)))))

(declare-fun b!1327407 () Bool)

(declare-fun res!880908 () Bool)

(assert (=> b!1327407 (=> (not res!880908) (not e!756694))))

(assert (=> b!1327407 (= res!880908 (and (bvsle #b00000000000000000000000000000000 (size!43836 _keys!1590)) (bvslt (size!43836 _keys!1590) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!56248 () Bool)

(declare-fun tp!107156 () Bool)

(assert (=> mapNonEmpty!56248 (= mapRes!56248 (and tp!107156 e!756695))))

(declare-fun mapKey!56248 () (_ BitVec 32))

(declare-fun mapRest!56248 () (Array (_ BitVec 32) ValueCell!17295))

(declare-fun mapValue!56248 () ValueCell!17295)

(assert (=> mapNonEmpty!56248 (= (arr!43284 _values!1320) (store mapRest!56248 mapKey!56248 mapValue!56248))))

(declare-fun res!880907 () Bool)

(assert (=> start!112096 (=> (not res!880907) (not e!756694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112096 (= res!880907 (validMask!0 mask!1998))))

(assert (=> start!112096 e!756694))

(assert (=> start!112096 true))

(declare-fun array_inv!32613 (array!89641) Bool)

(assert (=> start!112096 (and (array_inv!32613 _values!1320) e!756691)))

(declare-fun array_inv!32614 (array!89643) Bool)

(assert (=> start!112096 (array_inv!32614 _keys!1590)))

(declare-fun b!1327408 () Bool)

(declare-datatypes ((List!30870 0))(
  ( (Nil!30867) (Cons!30866 (h!32075 (_ BitVec 64)) (t!44883 List!30870)) )
))
(declare-fun noDuplicate!2099 (List!30870) Bool)

(assert (=> b!1327408 (= e!756694 (not (noDuplicate!2099 Nil!30867)))))

(declare-fun b!1327409 () Bool)

(assert (=> b!1327409 (= e!756693 tp_is_empty!36387)))

(assert (= (and start!112096 res!880907) b!1327403))

(assert (= (and b!1327403 res!880905) b!1327405))

(assert (= (and b!1327405 res!880906) b!1327407))

(assert (= (and b!1327407 res!880908) b!1327408))

(assert (= (and b!1327406 condMapEmpty!56248) mapIsEmpty!56248))

(assert (= (and b!1327406 (not condMapEmpty!56248)) mapNonEmpty!56248))

(get-info :version)

(assert (= (and mapNonEmpty!56248 ((_ is ValueCellFull!17295) mapValue!56248)) b!1327404))

(assert (= (and b!1327406 ((_ is ValueCellFull!17295) mapDefault!56248)) b!1327409))

(assert (= start!112096 b!1327406))

(declare-fun m!1216739 () Bool)

(assert (=> b!1327405 m!1216739))

(declare-fun m!1216741 () Bool)

(assert (=> mapNonEmpty!56248 m!1216741))

(declare-fun m!1216743 () Bool)

(assert (=> start!112096 m!1216743))

(declare-fun m!1216745 () Bool)

(assert (=> start!112096 m!1216745))

(declare-fun m!1216747 () Bool)

(assert (=> start!112096 m!1216747))

(declare-fun m!1216749 () Bool)

(assert (=> b!1327408 m!1216749))

(check-sat (not start!112096) (not mapNonEmpty!56248) tp_is_empty!36387 (not b!1327408) (not b!1327405))
(check-sat)
(get-model)

(declare-fun d!143243 () Bool)

(assert (=> d!143243 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112096 d!143243))

(declare-fun d!143245 () Bool)

(assert (=> d!143245 (= (array_inv!32613 _values!1320) (bvsge (size!43835 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112096 d!143245))

(declare-fun d!143247 () Bool)

(assert (=> d!143247 (= (array_inv!32614 _keys!1590) (bvsge (size!43836 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112096 d!143247))

(declare-fun d!143249 () Bool)

(declare-fun res!880925 () Bool)

(declare-fun e!756715 () Bool)

(assert (=> d!143249 (=> res!880925 e!756715)))

(assert (=> d!143249 (= res!880925 ((_ is Nil!30867) Nil!30867))))

(assert (=> d!143249 (= (noDuplicate!2099 Nil!30867) e!756715)))

(declare-fun b!1327435 () Bool)

(declare-fun e!756716 () Bool)

(assert (=> b!1327435 (= e!756715 e!756716)))

(declare-fun res!880926 () Bool)

(assert (=> b!1327435 (=> (not res!880926) (not e!756716))))

(declare-fun contains!8800 (List!30870 (_ BitVec 64)) Bool)

(assert (=> b!1327435 (= res!880926 (not (contains!8800 (t!44883 Nil!30867) (h!32075 Nil!30867))))))

(declare-fun b!1327436 () Bool)

(assert (=> b!1327436 (= e!756716 (noDuplicate!2099 (t!44883 Nil!30867)))))

(assert (= (and d!143249 (not res!880925)) b!1327435))

(assert (= (and b!1327435 res!880926) b!1327436))

(declare-fun m!1216763 () Bool)

(assert (=> b!1327435 m!1216763))

(declare-fun m!1216765 () Bool)

(assert (=> b!1327436 m!1216765))

(assert (=> b!1327408 d!143249))

(declare-fun b!1327445 () Bool)

(declare-fun e!756723 () Bool)

(declare-fun call!64815 () Bool)

(assert (=> b!1327445 (= e!756723 call!64815)))

(declare-fun b!1327446 () Bool)

(declare-fun e!756725 () Bool)

(declare-fun e!756724 () Bool)

(assert (=> b!1327446 (= e!756725 e!756724)))

(declare-fun c!125840 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1327446 (= c!125840 (validKeyInArray!0 (select (arr!43285 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1327447 () Bool)

(assert (=> b!1327447 (= e!756724 call!64815)))

(declare-fun d!143251 () Bool)

(declare-fun res!880931 () Bool)

(assert (=> d!143251 (=> res!880931 e!756725)))

(assert (=> d!143251 (= res!880931 (bvsge #b00000000000000000000000000000000 (size!43836 _keys!1590)))))

(assert (=> d!143251 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!756725)))

(declare-fun b!1327448 () Bool)

(assert (=> b!1327448 (= e!756724 e!756723)))

(declare-fun lt!590653 () (_ BitVec 64))

(assert (=> b!1327448 (= lt!590653 (select (arr!43285 _keys!1590) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43665 0))(
  ( (Unit!43666) )
))
(declare-fun lt!590652 () Unit!43665)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89643 (_ BitVec 64) (_ BitVec 32)) Unit!43665)

(assert (=> b!1327448 (= lt!590652 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!590653 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1327448 (arrayContainsKey!0 _keys!1590 lt!590653 #b00000000000000000000000000000000)))

(declare-fun lt!590651 () Unit!43665)

(assert (=> b!1327448 (= lt!590651 lt!590652)))

(declare-fun res!880932 () Bool)

(declare-datatypes ((SeekEntryResult!10042 0))(
  ( (MissingZero!10042 (index!42538 (_ BitVec 32))) (Found!10042 (index!42539 (_ BitVec 32))) (Intermediate!10042 (undefined!10854 Bool) (index!42540 (_ BitVec 32)) (x!118359 (_ BitVec 32))) (Undefined!10042) (MissingVacant!10042 (index!42541 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89643 (_ BitVec 32)) SeekEntryResult!10042)

(assert (=> b!1327448 (= res!880932 (= (seekEntryOrOpen!0 (select (arr!43285 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10042 #b00000000000000000000000000000000)))))

(assert (=> b!1327448 (=> (not res!880932) (not e!756723))))

(declare-fun bm!64812 () Bool)

(assert (=> bm!64812 (= call!64815 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(assert (= (and d!143251 (not res!880931)) b!1327446))

(assert (= (and b!1327446 c!125840) b!1327448))

(assert (= (and b!1327446 (not c!125840)) b!1327447))

(assert (= (and b!1327448 res!880932) b!1327445))

(assert (= (or b!1327445 b!1327447) bm!64812))

(declare-fun m!1216767 () Bool)

(assert (=> b!1327446 m!1216767))

(assert (=> b!1327446 m!1216767))

(declare-fun m!1216769 () Bool)

(assert (=> b!1327446 m!1216769))

(assert (=> b!1327448 m!1216767))

(declare-fun m!1216771 () Bool)

(assert (=> b!1327448 m!1216771))

(declare-fun m!1216773 () Bool)

(assert (=> b!1327448 m!1216773))

(assert (=> b!1327448 m!1216767))

(declare-fun m!1216775 () Bool)

(assert (=> b!1327448 m!1216775))

(declare-fun m!1216777 () Bool)

(assert (=> bm!64812 m!1216777))

(assert (=> b!1327405 d!143251))

(declare-fun mapIsEmpty!56254 () Bool)

(declare-fun mapRes!56254 () Bool)

(assert (=> mapIsEmpty!56254 mapRes!56254))

(declare-fun b!1327455 () Bool)

(declare-fun e!756731 () Bool)

(assert (=> b!1327455 (= e!756731 tp_is_empty!36387)))

(declare-fun b!1327456 () Bool)

(declare-fun e!756730 () Bool)

(assert (=> b!1327456 (= e!756730 tp_is_empty!36387)))

(declare-fun mapNonEmpty!56254 () Bool)

(declare-fun tp!107162 () Bool)

(assert (=> mapNonEmpty!56254 (= mapRes!56254 (and tp!107162 e!756731))))

(declare-fun mapRest!56254 () (Array (_ BitVec 32) ValueCell!17295))

(declare-fun mapValue!56254 () ValueCell!17295)

(declare-fun mapKey!56254 () (_ BitVec 32))

(assert (=> mapNonEmpty!56254 (= mapRest!56248 (store mapRest!56254 mapKey!56254 mapValue!56254))))

(declare-fun condMapEmpty!56254 () Bool)

(declare-fun mapDefault!56254 () ValueCell!17295)

(assert (=> mapNonEmpty!56248 (= condMapEmpty!56254 (= mapRest!56248 ((as const (Array (_ BitVec 32) ValueCell!17295)) mapDefault!56254)))))

(assert (=> mapNonEmpty!56248 (= tp!107156 (and e!756730 mapRes!56254))))

(assert (= (and mapNonEmpty!56248 condMapEmpty!56254) mapIsEmpty!56254))

(assert (= (and mapNonEmpty!56248 (not condMapEmpty!56254)) mapNonEmpty!56254))

(assert (= (and mapNonEmpty!56254 ((_ is ValueCellFull!17295) mapValue!56254)) b!1327455))

(assert (= (and mapNonEmpty!56248 ((_ is ValueCellFull!17295) mapDefault!56254)) b!1327456))

(declare-fun m!1216779 () Bool)

(assert (=> mapNonEmpty!56254 m!1216779))

(check-sat tp_is_empty!36387 (not b!1327435) (not bm!64812) (not b!1327446) (not b!1327448) (not mapNonEmpty!56254) (not b!1327436))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112068 () Bool)

(assert start!112068)

(declare-fun b!1327250 () Bool)

(declare-fun e!756572 () Bool)

(declare-fun tp_is_empty!36375 () Bool)

(assert (=> b!1327250 (= e!756572 tp_is_empty!36375)))

(declare-fun mapNonEmpty!56224 () Bool)

(declare-fun mapRes!56224 () Bool)

(declare-fun tp!107132 () Bool)

(declare-fun e!756574 () Bool)

(assert (=> mapNonEmpty!56224 (= mapRes!56224 (and tp!107132 e!756574))))

(declare-datatypes ((V!53603 0))(
  ( (V!53604 (val!18262 Int)) )
))
(declare-datatypes ((ValueCell!17289 0))(
  ( (ValueCellFull!17289 (v!20896 V!53603)) (EmptyCell!17289) )
))
(declare-datatypes ((array!89619 0))(
  ( (array!89620 (arr!43275 (Array (_ BitVec 32) ValueCell!17289)) (size!43826 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89619)

(declare-fun mapKey!56224 () (_ BitVec 32))

(declare-fun mapRest!56224 () (Array (_ BitVec 32) ValueCell!17289))

(declare-fun mapValue!56224 () ValueCell!17289)

(assert (=> mapNonEmpty!56224 (= (arr!43275 _values!1320) (store mapRest!56224 mapKey!56224 mapValue!56224))))

(declare-fun b!1327251 () Bool)

(declare-fun e!756573 () Bool)

(declare-datatypes ((array!89621 0))(
  ( (array!89622 (arr!43276 (Array (_ BitVec 32) (_ BitVec 64))) (size!43827 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89621)

(assert (=> b!1327251 (= e!756573 (bvsgt #b00000000000000000000000000000000 (size!43827 _keys!1590)))))

(declare-fun b!1327252 () Bool)

(declare-fun e!756571 () Bool)

(assert (=> b!1327252 (= e!756571 (and e!756572 mapRes!56224))))

(declare-fun condMapEmpty!56224 () Bool)

(declare-fun mapDefault!56224 () ValueCell!17289)

(assert (=> b!1327252 (= condMapEmpty!56224 (= (arr!43275 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17289)) mapDefault!56224)))))

(declare-fun res!880834 () Bool)

(assert (=> start!112068 (=> (not res!880834) (not e!756573))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112068 (= res!880834 (validMask!0 mask!1998))))

(assert (=> start!112068 e!756573))

(assert (=> start!112068 true))

(declare-fun array_inv!32607 (array!89619) Bool)

(assert (=> start!112068 (and (array_inv!32607 _values!1320) e!756571)))

(declare-fun array_inv!32608 (array!89621) Bool)

(assert (=> start!112068 (array_inv!32608 _keys!1590)))

(declare-fun b!1327253 () Bool)

(assert (=> b!1327253 (= e!756574 tp_is_empty!36375)))

(declare-fun mapIsEmpty!56224 () Bool)

(assert (=> mapIsEmpty!56224 mapRes!56224))

(declare-fun b!1327254 () Bool)

(declare-fun res!880835 () Bool)

(assert (=> b!1327254 (=> (not res!880835) (not e!756573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89621 (_ BitVec 32)) Bool)

(assert (=> b!1327254 (= res!880835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327255 () Bool)

(declare-fun res!880836 () Bool)

(assert (=> b!1327255 (=> (not res!880836) (not e!756573))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327255 (= res!880836 (and (= (size!43826 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43827 _keys!1590) (size!43826 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112068 res!880834) b!1327255))

(assert (= (and b!1327255 res!880836) b!1327254))

(assert (= (and b!1327254 res!880835) b!1327251))

(assert (= (and b!1327252 condMapEmpty!56224) mapIsEmpty!56224))

(assert (= (and b!1327252 (not condMapEmpty!56224)) mapNonEmpty!56224))

(get-info :version)

(assert (= (and mapNonEmpty!56224 ((_ is ValueCellFull!17289) mapValue!56224)) b!1327253))

(assert (= (and b!1327252 ((_ is ValueCellFull!17289) mapDefault!56224)) b!1327250))

(assert (= start!112068 b!1327252))

(declare-fun m!1216649 () Bool)

(assert (=> mapNonEmpty!56224 m!1216649))

(declare-fun m!1216651 () Bool)

(assert (=> start!112068 m!1216651))

(declare-fun m!1216653 () Bool)

(assert (=> start!112068 m!1216653))

(declare-fun m!1216655 () Bool)

(assert (=> start!112068 m!1216655))

(declare-fun m!1216657 () Bool)

(assert (=> b!1327254 m!1216657))

(check-sat (not start!112068) (not b!1327254) (not mapNonEmpty!56224) tp_is_empty!36375)
(check-sat)
(get-model)

(declare-fun d!143223 () Bool)

(assert (=> d!143223 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112068 d!143223))

(declare-fun d!143225 () Bool)

(assert (=> d!143225 (= (array_inv!32607 _values!1320) (bvsge (size!43826 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112068 d!143225))

(declare-fun d!143227 () Bool)

(assert (=> d!143227 (= (array_inv!32608 _keys!1590) (bvsge (size!43827 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112068 d!143227))

(declare-fun b!1327282 () Bool)

(declare-fun e!756597 () Bool)

(declare-fun e!756599 () Bool)

(assert (=> b!1327282 (= e!756597 e!756599)))

(declare-fun lt!590634 () (_ BitVec 64))

(assert (=> b!1327282 (= lt!590634 (select (arr!43276 _keys!1590) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43661 0))(
  ( (Unit!43662) )
))
(declare-fun lt!590635 () Unit!43661)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89621 (_ BitVec 64) (_ BitVec 32)) Unit!43661)

(assert (=> b!1327282 (= lt!590635 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!590634 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1327282 (arrayContainsKey!0 _keys!1590 lt!590634 #b00000000000000000000000000000000)))

(declare-fun lt!590633 () Unit!43661)

(assert (=> b!1327282 (= lt!590633 lt!590635)))

(declare-fun res!880850 () Bool)

(declare-datatypes ((SeekEntryResult!10040 0))(
  ( (MissingZero!10040 (index!42530 (_ BitVec 32))) (Found!10040 (index!42531 (_ BitVec 32))) (Intermediate!10040 (undefined!10852 Bool) (index!42532 (_ BitVec 32)) (x!118337 (_ BitVec 32))) (Undefined!10040) (MissingVacant!10040 (index!42533 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89621 (_ BitVec 32)) SeekEntryResult!10040)

(assert (=> b!1327282 (= res!880850 (= (seekEntryOrOpen!0 (select (arr!43276 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10040 #b00000000000000000000000000000000)))))

(assert (=> b!1327282 (=> (not res!880850) (not e!756599))))

(declare-fun b!1327283 () Bool)

(declare-fun call!64809 () Bool)

(assert (=> b!1327283 (= e!756599 call!64809)))

(declare-fun b!1327284 () Bool)

(assert (=> b!1327284 (= e!756597 call!64809)))

(declare-fun d!143229 () Bool)

(declare-fun res!880851 () Bool)

(declare-fun e!756598 () Bool)

(assert (=> d!143229 (=> res!880851 e!756598)))

(assert (=> d!143229 (= res!880851 (bvsge #b00000000000000000000000000000000 (size!43827 _keys!1590)))))

(assert (=> d!143229 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!756598)))

(declare-fun b!1327285 () Bool)

(assert (=> b!1327285 (= e!756598 e!756597)))

(declare-fun c!125834 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1327285 (= c!125834 (validKeyInArray!0 (select (arr!43276 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun bm!64806 () Bool)

(assert (=> bm!64806 (= call!64809 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(assert (= (and d!143229 (not res!880851)) b!1327285))

(assert (= (and b!1327285 c!125834) b!1327282))

(assert (= (and b!1327285 (not c!125834)) b!1327284))

(assert (= (and b!1327282 res!880850) b!1327283))

(assert (= (or b!1327283 b!1327284) bm!64806))

(declare-fun m!1216669 () Bool)

(assert (=> b!1327282 m!1216669))

(declare-fun m!1216671 () Bool)

(assert (=> b!1327282 m!1216671))

(declare-fun m!1216673 () Bool)

(assert (=> b!1327282 m!1216673))

(assert (=> b!1327282 m!1216669))

(declare-fun m!1216675 () Bool)

(assert (=> b!1327282 m!1216675))

(assert (=> b!1327285 m!1216669))

(assert (=> b!1327285 m!1216669))

(declare-fun m!1216677 () Bool)

(assert (=> b!1327285 m!1216677))

(declare-fun m!1216679 () Bool)

(assert (=> bm!64806 m!1216679))

(assert (=> b!1327254 d!143229))

(declare-fun b!1327292 () Bool)

(declare-fun e!756605 () Bool)

(assert (=> b!1327292 (= e!756605 tp_is_empty!36375)))

(declare-fun mapIsEmpty!56230 () Bool)

(declare-fun mapRes!56230 () Bool)

(assert (=> mapIsEmpty!56230 mapRes!56230))

(declare-fun mapNonEmpty!56230 () Bool)

(declare-fun tp!107138 () Bool)

(assert (=> mapNonEmpty!56230 (= mapRes!56230 (and tp!107138 e!756605))))

(declare-fun mapRest!56230 () (Array (_ BitVec 32) ValueCell!17289))

(declare-fun mapValue!56230 () ValueCell!17289)

(declare-fun mapKey!56230 () (_ BitVec 32))

(assert (=> mapNonEmpty!56230 (= mapRest!56224 (store mapRest!56230 mapKey!56230 mapValue!56230))))

(declare-fun b!1327293 () Bool)

(declare-fun e!756604 () Bool)

(assert (=> b!1327293 (= e!756604 tp_is_empty!36375)))

(declare-fun condMapEmpty!56230 () Bool)

(declare-fun mapDefault!56230 () ValueCell!17289)

(assert (=> mapNonEmpty!56224 (= condMapEmpty!56230 (= mapRest!56224 ((as const (Array (_ BitVec 32) ValueCell!17289)) mapDefault!56230)))))

(assert (=> mapNonEmpty!56224 (= tp!107132 (and e!756604 mapRes!56230))))

(assert (= (and mapNonEmpty!56224 condMapEmpty!56230) mapIsEmpty!56230))

(assert (= (and mapNonEmpty!56224 (not condMapEmpty!56230)) mapNonEmpty!56230))

(assert (= (and mapNonEmpty!56230 ((_ is ValueCellFull!17289) mapValue!56230)) b!1327292))

(assert (= (and mapNonEmpty!56224 ((_ is ValueCellFull!17289) mapDefault!56230)) b!1327293))

(declare-fun m!1216681 () Bool)

(assert (=> mapNonEmpty!56230 m!1216681))

(check-sat tp_is_empty!36375 (not bm!64806) (not b!1327285) (not b!1327282) (not mapNonEmpty!56230))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111286 () Bool)

(assert start!111286)

(declare-fun b!1316744 () Bool)

(declare-fun res!874090 () Bool)

(declare-fun e!751268 () Bool)

(assert (=> b!1316744 (=> (not res!874090) (not e!751268))))

(declare-datatypes ((array!88427 0))(
  ( (array!88428 (arr!42686 (Array (_ BitVec 32) (_ BitVec 64))) (size!43237 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88427)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52779 0))(
  ( (V!52780 (val!17953 Int)) )
))
(declare-datatypes ((ValueCell!16980 0))(
  ( (ValueCellFull!16980 (v!20580 V!52779)) (EmptyCell!16980) )
))
(declare-datatypes ((array!88429 0))(
  ( (array!88430 (arr!42687 (Array (_ BitVec 32) ValueCell!16980)) (size!43238 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88429)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1316744 (= res!874090 (and (= (size!43238 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43237 _keys!1609) (size!43238 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55274 () Bool)

(declare-fun mapRes!55274 () Bool)

(declare-fun tp!105381 () Bool)

(declare-fun e!751267 () Bool)

(assert (=> mapNonEmpty!55274 (= mapRes!55274 (and tp!105381 e!751267))))

(declare-fun mapRest!55274 () (Array (_ BitVec 32) ValueCell!16980))

(declare-fun mapValue!55274 () ValueCell!16980)

(declare-fun mapKey!55274 () (_ BitVec 32))

(assert (=> mapNonEmpty!55274 (= (arr!42687 _values!1337) (store mapRest!55274 mapKey!55274 mapValue!55274))))

(declare-fun mapIsEmpty!55274 () Bool)

(assert (=> mapIsEmpty!55274 mapRes!55274))

(declare-fun b!1316746 () Bool)

(assert (=> b!1316746 (= e!751268 (and (bvsle #b00000000000000000000000000000000 (size!43237 _keys!1609)) (bvsge (size!43237 _keys!1609) #b01111111111111111111111111111111)))))

(declare-fun b!1316747 () Bool)

(declare-fun res!874089 () Bool)

(assert (=> b!1316747 (=> (not res!874089) (not e!751268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88427 (_ BitVec 32)) Bool)

(assert (=> b!1316747 (= res!874089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!874091 () Bool)

(assert (=> start!111286 (=> (not res!874091) (not e!751268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111286 (= res!874091 (validMask!0 mask!2019))))

(assert (=> start!111286 e!751268))

(assert (=> start!111286 true))

(declare-fun e!751264 () Bool)

(declare-fun array_inv!32203 (array!88429) Bool)

(assert (=> start!111286 (and (array_inv!32203 _values!1337) e!751264)))

(declare-fun array_inv!32204 (array!88427) Bool)

(assert (=> start!111286 (array_inv!32204 _keys!1609)))

(declare-fun b!1316745 () Bool)

(declare-fun tp_is_empty!35757 () Bool)

(assert (=> b!1316745 (= e!751267 tp_is_empty!35757)))

(declare-fun b!1316748 () Bool)

(declare-fun e!751265 () Bool)

(assert (=> b!1316748 (= e!751265 tp_is_empty!35757)))

(declare-fun b!1316749 () Bool)

(assert (=> b!1316749 (= e!751264 (and e!751265 mapRes!55274))))

(declare-fun condMapEmpty!55274 () Bool)

(declare-fun mapDefault!55274 () ValueCell!16980)

(assert (=> b!1316749 (= condMapEmpty!55274 (= (arr!42687 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16980)) mapDefault!55274)))))

(assert (= (and start!111286 res!874091) b!1316744))

(assert (= (and b!1316744 res!874090) b!1316747))

(assert (= (and b!1316747 res!874089) b!1316746))

(assert (= (and b!1316749 condMapEmpty!55274) mapIsEmpty!55274))

(assert (= (and b!1316749 (not condMapEmpty!55274)) mapNonEmpty!55274))

(get-info :version)

(assert (= (and mapNonEmpty!55274 ((_ is ValueCellFull!16980) mapValue!55274)) b!1316745))

(assert (= (and b!1316749 ((_ is ValueCellFull!16980) mapDefault!55274)) b!1316748))

(assert (= start!111286 b!1316749))

(declare-fun m!1204855 () Bool)

(assert (=> mapNonEmpty!55274 m!1204855))

(declare-fun m!1204857 () Bool)

(assert (=> b!1316747 m!1204857))

(declare-fun m!1204859 () Bool)

(assert (=> start!111286 m!1204859))

(declare-fun m!1204861 () Bool)

(assert (=> start!111286 m!1204861))

(declare-fun m!1204863 () Bool)

(assert (=> start!111286 m!1204863))

(check-sat (not start!111286) (not b!1316747) (not mapNonEmpty!55274) tp_is_empty!35757)
(check-sat)
(get-model)

(declare-fun d!142605 () Bool)

(assert (=> d!142605 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111286 d!142605))

(declare-fun d!142607 () Bool)

(assert (=> d!142607 (= (array_inv!32203 _values!1337) (bvsge (size!43238 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111286 d!142607))

(declare-fun d!142609 () Bool)

(assert (=> d!142609 (= (array_inv!32204 _keys!1609) (bvsge (size!43237 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111286 d!142609))

(declare-fun d!142611 () Bool)

(declare-fun res!874106 () Bool)

(declare-fun e!751292 () Bool)

(assert (=> d!142611 (=> res!874106 e!751292)))

(assert (=> d!142611 (= res!874106 (bvsge #b00000000000000000000000000000000 (size!43237 _keys!1609)))))

(assert (=> d!142611 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!751292)))

(declare-fun bm!64671 () Bool)

(declare-fun call!64674 () Bool)

(assert (=> bm!64671 (= call!64674 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1316776 () Bool)

(declare-fun e!751291 () Bool)

(declare-fun e!751290 () Bool)

(assert (=> b!1316776 (= e!751291 e!751290)))

(declare-fun lt!586220 () (_ BitVec 64))

(assert (=> b!1316776 (= lt!586220 (select (arr!42686 _keys!1609) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43358 0))(
  ( (Unit!43359) )
))
(declare-fun lt!586219 () Unit!43358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!88427 (_ BitVec 64) (_ BitVec 32)) Unit!43358)

(assert (=> b!1316776 (= lt!586219 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!586220 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!88427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1316776 (arrayContainsKey!0 _keys!1609 lt!586220 #b00000000000000000000000000000000)))

(declare-fun lt!586221 () Unit!43358)

(assert (=> b!1316776 (= lt!586221 lt!586219)))

(declare-fun res!874105 () Bool)

(declare-datatypes ((SeekEntryResult!10034 0))(
  ( (MissingZero!10034 (index!42506 (_ BitVec 32))) (Found!10034 (index!42507 (_ BitVec 32))) (Intermediate!10034 (undefined!10846 Bool) (index!42508 (_ BitVec 32)) (x!117062 (_ BitVec 32))) (Undefined!10034) (MissingVacant!10034 (index!42509 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!88427 (_ BitVec 32)) SeekEntryResult!10034)

(assert (=> b!1316776 (= res!874105 (= (seekEntryOrOpen!0 (select (arr!42686 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10034 #b00000000000000000000000000000000)))))

(assert (=> b!1316776 (=> (not res!874105) (not e!751290))))

(declare-fun b!1316777 () Bool)

(assert (=> b!1316777 (= e!751291 call!64674)))

(declare-fun b!1316778 () Bool)

(assert (=> b!1316778 (= e!751290 call!64674)))

(declare-fun b!1316779 () Bool)

(assert (=> b!1316779 (= e!751292 e!751291)))

(declare-fun c!125576 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316779 (= c!125576 (validKeyInArray!0 (select (arr!42686 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!142611 (not res!874106)) b!1316779))

(assert (= (and b!1316779 c!125576) b!1316776))

(assert (= (and b!1316779 (not c!125576)) b!1316777))

(assert (= (and b!1316776 res!874105) b!1316778))

(assert (= (or b!1316778 b!1316777) bm!64671))

(declare-fun m!1204875 () Bool)

(assert (=> bm!64671 m!1204875))

(declare-fun m!1204877 () Bool)

(assert (=> b!1316776 m!1204877))

(declare-fun m!1204879 () Bool)

(assert (=> b!1316776 m!1204879))

(declare-fun m!1204881 () Bool)

(assert (=> b!1316776 m!1204881))

(assert (=> b!1316776 m!1204877))

(declare-fun m!1204883 () Bool)

(assert (=> b!1316776 m!1204883))

(assert (=> b!1316779 m!1204877))

(assert (=> b!1316779 m!1204877))

(declare-fun m!1204885 () Bool)

(assert (=> b!1316779 m!1204885))

(assert (=> b!1316747 d!142611))

(declare-fun b!1316786 () Bool)

(declare-fun e!751298 () Bool)

(assert (=> b!1316786 (= e!751298 tp_is_empty!35757)))

(declare-fun b!1316787 () Bool)

(declare-fun e!751297 () Bool)

(assert (=> b!1316787 (= e!751297 tp_is_empty!35757)))

(declare-fun mapIsEmpty!55280 () Bool)

(declare-fun mapRes!55280 () Bool)

(assert (=> mapIsEmpty!55280 mapRes!55280))

(declare-fun mapNonEmpty!55280 () Bool)

(declare-fun tp!105387 () Bool)

(assert (=> mapNonEmpty!55280 (= mapRes!55280 (and tp!105387 e!751298))))

(declare-fun mapRest!55280 () (Array (_ BitVec 32) ValueCell!16980))

(declare-fun mapKey!55280 () (_ BitVec 32))

(declare-fun mapValue!55280 () ValueCell!16980)

(assert (=> mapNonEmpty!55280 (= mapRest!55274 (store mapRest!55280 mapKey!55280 mapValue!55280))))

(declare-fun condMapEmpty!55280 () Bool)

(declare-fun mapDefault!55280 () ValueCell!16980)

(assert (=> mapNonEmpty!55274 (= condMapEmpty!55280 (= mapRest!55274 ((as const (Array (_ BitVec 32) ValueCell!16980)) mapDefault!55280)))))

(assert (=> mapNonEmpty!55274 (= tp!105381 (and e!751297 mapRes!55280))))

(assert (= (and mapNonEmpty!55274 condMapEmpty!55280) mapIsEmpty!55280))

(assert (= (and mapNonEmpty!55274 (not condMapEmpty!55280)) mapNonEmpty!55280))

(assert (= (and mapNonEmpty!55280 ((_ is ValueCellFull!16980) mapValue!55280)) b!1316786))

(assert (= (and mapNonEmpty!55274 ((_ is ValueCellFull!16980) mapDefault!55280)) b!1316787))

(declare-fun m!1204887 () Bool)

(assert (=> mapNonEmpty!55280 m!1204887))

(check-sat (not b!1316776) (not mapNonEmpty!55280) tp_is_empty!35757 (not bm!64671) (not b!1316779))
(check-sat)

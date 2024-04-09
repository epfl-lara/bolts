; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111272 () Bool)

(assert start!111272)

(declare-fun b!1316670 () Bool)

(declare-fun e!751206 () Bool)

(declare-fun e!751207 () Bool)

(declare-fun mapRes!55262 () Bool)

(assert (=> b!1316670 (= e!751206 (and e!751207 mapRes!55262))))

(declare-fun condMapEmpty!55262 () Bool)

(declare-datatypes ((V!52771 0))(
  ( (V!52772 (val!17950 Int)) )
))
(declare-datatypes ((ValueCell!16977 0))(
  ( (ValueCellFull!16977 (v!20577 V!52771)) (EmptyCell!16977) )
))
(declare-datatypes ((array!88415 0))(
  ( (array!88416 (arr!42681 (Array (_ BitVec 32) ValueCell!16977)) (size!43232 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88415)

(declare-fun mapDefault!55262 () ValueCell!16977)

(assert (=> b!1316670 (= condMapEmpty!55262 (= (arr!42681 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16977)) mapDefault!55262)))))

(declare-fun b!1316671 () Bool)

(declare-fun e!751208 () Bool)

(declare-datatypes ((array!88417 0))(
  ( (array!88418 (arr!42682 (Array (_ BitVec 32) (_ BitVec 64))) (size!43233 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88417)

(assert (=> b!1316671 (= e!751208 (bvsgt #b00000000000000000000000000000000 (size!43233 _keys!1609)))))

(declare-fun b!1316672 () Bool)

(declare-fun res!874056 () Bool)

(assert (=> b!1316672 (=> (not res!874056) (not e!751208))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1316672 (= res!874056 (and (= (size!43232 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43233 _keys!1609) (size!43232 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1316673 () Bool)

(declare-fun res!874058 () Bool)

(assert (=> b!1316673 (=> (not res!874058) (not e!751208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88417 (_ BitVec 32)) Bool)

(assert (=> b!1316673 (= res!874058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1316674 () Bool)

(declare-fun e!751204 () Bool)

(declare-fun tp_is_empty!35751 () Bool)

(assert (=> b!1316674 (= e!751204 tp_is_empty!35751)))

(declare-fun mapNonEmpty!55262 () Bool)

(declare-fun tp!105369 () Bool)

(assert (=> mapNonEmpty!55262 (= mapRes!55262 (and tp!105369 e!751204))))

(declare-fun mapKey!55262 () (_ BitVec 32))

(declare-fun mapRest!55262 () (Array (_ BitVec 32) ValueCell!16977))

(declare-fun mapValue!55262 () ValueCell!16977)

(assert (=> mapNonEmpty!55262 (= (arr!42681 _values!1337) (store mapRest!55262 mapKey!55262 mapValue!55262))))

(declare-fun res!874057 () Bool)

(assert (=> start!111272 (=> (not res!874057) (not e!751208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111272 (= res!874057 (validMask!0 mask!2019))))

(assert (=> start!111272 e!751208))

(assert (=> start!111272 true))

(declare-fun array_inv!32199 (array!88415) Bool)

(assert (=> start!111272 (and (array_inv!32199 _values!1337) e!751206)))

(declare-fun array_inv!32200 (array!88417) Bool)

(assert (=> start!111272 (array_inv!32200 _keys!1609)))

(declare-fun mapIsEmpty!55262 () Bool)

(assert (=> mapIsEmpty!55262 mapRes!55262))

(declare-fun b!1316675 () Bool)

(assert (=> b!1316675 (= e!751207 tp_is_empty!35751)))

(assert (= (and start!111272 res!874057) b!1316672))

(assert (= (and b!1316672 res!874056) b!1316673))

(assert (= (and b!1316673 res!874058) b!1316671))

(assert (= (and b!1316670 condMapEmpty!55262) mapIsEmpty!55262))

(assert (= (and b!1316670 (not condMapEmpty!55262)) mapNonEmpty!55262))

(get-info :version)

(assert (= (and mapNonEmpty!55262 ((_ is ValueCellFull!16977) mapValue!55262)) b!1316674))

(assert (= (and b!1316670 ((_ is ValueCellFull!16977) mapDefault!55262)) b!1316675))

(assert (= start!111272 b!1316670))

(declare-fun m!1204811 () Bool)

(assert (=> b!1316673 m!1204811))

(declare-fun m!1204813 () Bool)

(assert (=> mapNonEmpty!55262 m!1204813))

(declare-fun m!1204815 () Bool)

(assert (=> start!111272 m!1204815))

(declare-fun m!1204817 () Bool)

(assert (=> start!111272 m!1204817))

(declare-fun m!1204819 () Bool)

(assert (=> start!111272 m!1204819))

(check-sat (not start!111272) (not b!1316673) (not mapNonEmpty!55262) tp_is_empty!35751)
(check-sat)
(get-model)

(declare-fun d!142595 () Bool)

(assert (=> d!142595 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111272 d!142595))

(declare-fun d!142597 () Bool)

(assert (=> d!142597 (= (array_inv!32199 _values!1337) (bvsge (size!43232 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111272 d!142597))

(declare-fun d!142599 () Bool)

(assert (=> d!142599 (= (array_inv!32200 _keys!1609) (bvsge (size!43233 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111272 d!142599))

(declare-fun b!1316702 () Bool)

(declare-fun e!751231 () Bool)

(declare-fun e!751232 () Bool)

(assert (=> b!1316702 (= e!751231 e!751232)))

(declare-fun c!125573 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316702 (= c!125573 (validKeyInArray!0 (select (arr!42682 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1316703 () Bool)

(declare-fun e!751230 () Bool)

(declare-fun call!64671 () Bool)

(assert (=> b!1316703 (= e!751230 call!64671)))

(declare-fun d!142601 () Bool)

(declare-fun res!874073 () Bool)

(assert (=> d!142601 (=> res!874073 e!751231)))

(assert (=> d!142601 (= res!874073 (bvsge #b00000000000000000000000000000000 (size!43233 _keys!1609)))))

(assert (=> d!142601 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!751231)))

(declare-fun bm!64668 () Bool)

(assert (=> bm!64668 (= call!64671 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1316704 () Bool)

(assert (=> b!1316704 (= e!751232 call!64671)))

(declare-fun b!1316705 () Bool)

(assert (=> b!1316705 (= e!751232 e!751230)))

(declare-fun lt!586212 () (_ BitVec 64))

(assert (=> b!1316705 (= lt!586212 (select (arr!42682 _keys!1609) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43356 0))(
  ( (Unit!43357) )
))
(declare-fun lt!586210 () Unit!43356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!88417 (_ BitVec 64) (_ BitVec 32)) Unit!43356)

(assert (=> b!1316705 (= lt!586210 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!586212 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!88417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1316705 (arrayContainsKey!0 _keys!1609 lt!586212 #b00000000000000000000000000000000)))

(declare-fun lt!586211 () Unit!43356)

(assert (=> b!1316705 (= lt!586211 lt!586210)))

(declare-fun res!874072 () Bool)

(declare-datatypes ((SeekEntryResult!10033 0))(
  ( (MissingZero!10033 (index!42502 (_ BitVec 32))) (Found!10033 (index!42503 (_ BitVec 32))) (Intermediate!10033 (undefined!10845 Bool) (index!42504 (_ BitVec 32)) (x!117051 (_ BitVec 32))) (Undefined!10033) (MissingVacant!10033 (index!42505 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!88417 (_ BitVec 32)) SeekEntryResult!10033)

(assert (=> b!1316705 (= res!874072 (= (seekEntryOrOpen!0 (select (arr!42682 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10033 #b00000000000000000000000000000000)))))

(assert (=> b!1316705 (=> (not res!874072) (not e!751230))))

(assert (= (and d!142601 (not res!874073)) b!1316702))

(assert (= (and b!1316702 c!125573) b!1316705))

(assert (= (and b!1316702 (not c!125573)) b!1316704))

(assert (= (and b!1316705 res!874072) b!1316703))

(assert (= (or b!1316703 b!1316704) bm!64668))

(declare-fun m!1204831 () Bool)

(assert (=> b!1316702 m!1204831))

(assert (=> b!1316702 m!1204831))

(declare-fun m!1204833 () Bool)

(assert (=> b!1316702 m!1204833))

(declare-fun m!1204835 () Bool)

(assert (=> bm!64668 m!1204835))

(assert (=> b!1316705 m!1204831))

(declare-fun m!1204837 () Bool)

(assert (=> b!1316705 m!1204837))

(declare-fun m!1204839 () Bool)

(assert (=> b!1316705 m!1204839))

(assert (=> b!1316705 m!1204831))

(declare-fun m!1204841 () Bool)

(assert (=> b!1316705 m!1204841))

(assert (=> b!1316673 d!142601))

(declare-fun mapIsEmpty!55268 () Bool)

(declare-fun mapRes!55268 () Bool)

(assert (=> mapIsEmpty!55268 mapRes!55268))

(declare-fun b!1316713 () Bool)

(declare-fun e!751237 () Bool)

(assert (=> b!1316713 (= e!751237 tp_is_empty!35751)))

(declare-fun condMapEmpty!55268 () Bool)

(declare-fun mapDefault!55268 () ValueCell!16977)

(assert (=> mapNonEmpty!55262 (= condMapEmpty!55268 (= mapRest!55262 ((as const (Array (_ BitVec 32) ValueCell!16977)) mapDefault!55268)))))

(assert (=> mapNonEmpty!55262 (= tp!105369 (and e!751237 mapRes!55268))))

(declare-fun b!1316712 () Bool)

(declare-fun e!751238 () Bool)

(assert (=> b!1316712 (= e!751238 tp_is_empty!35751)))

(declare-fun mapNonEmpty!55268 () Bool)

(declare-fun tp!105375 () Bool)

(assert (=> mapNonEmpty!55268 (= mapRes!55268 (and tp!105375 e!751238))))

(declare-fun mapRest!55268 () (Array (_ BitVec 32) ValueCell!16977))

(declare-fun mapKey!55268 () (_ BitVec 32))

(declare-fun mapValue!55268 () ValueCell!16977)

(assert (=> mapNonEmpty!55268 (= mapRest!55262 (store mapRest!55268 mapKey!55268 mapValue!55268))))

(assert (= (and mapNonEmpty!55262 condMapEmpty!55268) mapIsEmpty!55268))

(assert (= (and mapNonEmpty!55262 (not condMapEmpty!55268)) mapNonEmpty!55268))

(assert (= (and mapNonEmpty!55268 ((_ is ValueCellFull!16977) mapValue!55268)) b!1316712))

(assert (= (and mapNonEmpty!55262 ((_ is ValueCellFull!16977) mapDefault!55268)) b!1316713))

(declare-fun m!1204843 () Bool)

(assert (=> mapNonEmpty!55268 m!1204843))

(check-sat (not mapNonEmpty!55268) (not bm!64668) (not b!1316702) (not b!1316705) tp_is_empty!35751)
(check-sat)

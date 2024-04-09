; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77440 () Bool)

(assert start!77440)

(declare-fun b!902247 () Bool)

(declare-fun e!505332 () Bool)

(declare-fun e!505330 () Bool)

(declare-fun mapRes!29374 () Bool)

(assert (=> b!902247 (= e!505332 (and e!505330 mapRes!29374))))

(declare-fun condMapEmpty!29374 () Bool)

(declare-datatypes ((V!29561 0))(
  ( (V!29562 (val!9274 Int)) )
))
(declare-datatypes ((ValueCell!8742 0))(
  ( (ValueCellFull!8742 (v!11778 V!29561)) (EmptyCell!8742) )
))
(declare-datatypes ((array!52944 0))(
  ( (array!52945 (arr!25430 (Array (_ BitVec 32) ValueCell!8742)) (size!25890 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52944)

(declare-fun mapDefault!29374 () ValueCell!8742)

(assert (=> b!902247 (= condMapEmpty!29374 (= (arr!25430 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8742)) mapDefault!29374)))))

(declare-fun b!902248 () Bool)

(declare-fun res!608991 () Bool)

(declare-fun e!505328 () Bool)

(assert (=> b!902248 (=> (not res!608991) (not e!505328))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52946 0))(
  ( (array!52947 (arr!25431 (Array (_ BitVec 32) (_ BitVec 64))) (size!25891 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52946)

(assert (=> b!902248 (= res!608991 (and (= (size!25890 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25891 _keys!1386) (size!25890 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902249 () Bool)

(declare-fun res!608990 () Bool)

(assert (=> b!902249 (=> (not res!608990) (not e!505328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52946 (_ BitVec 32)) Bool)

(assert (=> b!902249 (= res!608990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902250 () Bool)

(declare-fun res!608992 () Bool)

(assert (=> b!902250 (=> (not res!608992) (not e!505328))))

(assert (=> b!902250 (= res!608992 (and (bvsle #b00000000000000000000000000000000 (size!25891 _keys!1386)) (bvslt (size!25891 _keys!1386) #b01111111111111111111111111111111)))))

(declare-fun res!608989 () Bool)

(assert (=> start!77440 (=> (not res!608989) (not e!505328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77440 (= res!608989 (validMask!0 mask!1756))))

(assert (=> start!77440 e!505328))

(assert (=> start!77440 true))

(declare-fun array_inv!19916 (array!52944) Bool)

(assert (=> start!77440 (and (array_inv!19916 _values!1152) e!505332)))

(declare-fun array_inv!19917 (array!52946) Bool)

(assert (=> start!77440 (array_inv!19917 _keys!1386)))

(declare-fun b!902251 () Bool)

(declare-fun e!505331 () Bool)

(declare-fun tp_is_empty!18447 () Bool)

(assert (=> b!902251 (= e!505331 tp_is_empty!18447)))

(declare-fun mapNonEmpty!29374 () Bool)

(declare-fun tp!56434 () Bool)

(assert (=> mapNonEmpty!29374 (= mapRes!29374 (and tp!56434 e!505331))))

(declare-fun mapKey!29374 () (_ BitVec 32))

(declare-fun mapValue!29374 () ValueCell!8742)

(declare-fun mapRest!29374 () (Array (_ BitVec 32) ValueCell!8742))

(assert (=> mapNonEmpty!29374 (= (arr!25430 _values!1152) (store mapRest!29374 mapKey!29374 mapValue!29374))))

(declare-fun mapIsEmpty!29374 () Bool)

(assert (=> mapIsEmpty!29374 mapRes!29374))

(declare-fun b!902252 () Bool)

(declare-datatypes ((List!17962 0))(
  ( (Nil!17959) (Cons!17958 (h!19104 (_ BitVec 64)) (t!25353 List!17962)) )
))
(declare-fun noDuplicate!1327 (List!17962) Bool)

(assert (=> b!902252 (= e!505328 (not (noDuplicate!1327 Nil!17959)))))

(declare-fun b!902253 () Bool)

(assert (=> b!902253 (= e!505330 tp_is_empty!18447)))

(assert (= (and start!77440 res!608989) b!902248))

(assert (= (and b!902248 res!608991) b!902249))

(assert (= (and b!902249 res!608990) b!902250))

(assert (= (and b!902250 res!608992) b!902252))

(assert (= (and b!902247 condMapEmpty!29374) mapIsEmpty!29374))

(assert (= (and b!902247 (not condMapEmpty!29374)) mapNonEmpty!29374))

(get-info :version)

(assert (= (and mapNonEmpty!29374 ((_ is ValueCellFull!8742) mapValue!29374)) b!902251))

(assert (= (and b!902247 ((_ is ValueCellFull!8742) mapDefault!29374)) b!902253))

(assert (= start!77440 b!902247))

(declare-fun m!838369 () Bool)

(assert (=> b!902249 m!838369))

(declare-fun m!838371 () Bool)

(assert (=> start!77440 m!838371))

(declare-fun m!838373 () Bool)

(assert (=> start!77440 m!838373))

(declare-fun m!838375 () Bool)

(assert (=> start!77440 m!838375))

(declare-fun m!838377 () Bool)

(assert (=> mapNonEmpty!29374 m!838377))

(declare-fun m!838379 () Bool)

(assert (=> b!902252 m!838379))

(check-sat (not b!902249) (not mapNonEmpty!29374) (not start!77440) (not b!902252) tp_is_empty!18447)
(check-sat)
(get-model)

(declare-fun d!111871 () Bool)

(assert (=> d!111871 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77440 d!111871))

(declare-fun d!111873 () Bool)

(assert (=> d!111873 (= (array_inv!19916 _values!1152) (bvsge (size!25890 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77440 d!111873))

(declare-fun d!111875 () Bool)

(assert (=> d!111875 (= (array_inv!19917 _keys!1386) (bvsge (size!25891 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77440 d!111875))

(declare-fun b!902283 () Bool)

(declare-fun e!505356 () Bool)

(declare-fun e!505355 () Bool)

(assert (=> b!902283 (= e!505356 e!505355)))

(declare-fun lt!407809 () (_ BitVec 64))

(assert (=> b!902283 (= lt!407809 (select (arr!25431 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30607 0))(
  ( (Unit!30608) )
))
(declare-fun lt!407808 () Unit!30607)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52946 (_ BitVec 64) (_ BitVec 32)) Unit!30607)

(assert (=> b!902283 (= lt!407808 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!407809 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!902283 (arrayContainsKey!0 _keys!1386 lt!407809 #b00000000000000000000000000000000)))

(declare-fun lt!407807 () Unit!30607)

(assert (=> b!902283 (= lt!407807 lt!407808)))

(declare-fun res!609009 () Bool)

(declare-datatypes ((SeekEntryResult!8947 0))(
  ( (MissingZero!8947 (index!38158 (_ BitVec 32))) (Found!8947 (index!38159 (_ BitVec 32))) (Intermediate!8947 (undefined!9759 Bool) (index!38160 (_ BitVec 32)) (x!76901 (_ BitVec 32))) (Undefined!8947) (MissingVacant!8947 (index!38161 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52946 (_ BitVec 32)) SeekEntryResult!8947)

(assert (=> b!902283 (= res!609009 (= (seekEntryOrOpen!0 (select (arr!25431 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8947 #b00000000000000000000000000000000)))))

(assert (=> b!902283 (=> (not res!609009) (not e!505355))))

(declare-fun b!902284 () Bool)

(declare-fun call!40243 () Bool)

(assert (=> b!902284 (= e!505356 call!40243)))

(declare-fun bm!40240 () Bool)

(assert (=> bm!40240 (= call!40243 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!902285 () Bool)

(declare-fun e!505354 () Bool)

(assert (=> b!902285 (= e!505354 e!505356)))

(declare-fun c!95557 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!902285 (= c!95557 (validKeyInArray!0 (select (arr!25431 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!111877 () Bool)

(declare-fun res!609010 () Bool)

(assert (=> d!111877 (=> res!609010 e!505354)))

(assert (=> d!111877 (= res!609010 (bvsge #b00000000000000000000000000000000 (size!25891 _keys!1386)))))

(assert (=> d!111877 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!505354)))

(declare-fun b!902286 () Bool)

(assert (=> b!902286 (= e!505355 call!40243)))

(assert (= (and d!111877 (not res!609010)) b!902285))

(assert (= (and b!902285 c!95557) b!902283))

(assert (= (and b!902285 (not c!95557)) b!902284))

(assert (= (and b!902283 res!609009) b!902286))

(assert (= (or b!902286 b!902284) bm!40240))

(declare-fun m!838393 () Bool)

(assert (=> b!902283 m!838393))

(declare-fun m!838395 () Bool)

(assert (=> b!902283 m!838395))

(declare-fun m!838397 () Bool)

(assert (=> b!902283 m!838397))

(assert (=> b!902283 m!838393))

(declare-fun m!838399 () Bool)

(assert (=> b!902283 m!838399))

(declare-fun m!838401 () Bool)

(assert (=> bm!40240 m!838401))

(assert (=> b!902285 m!838393))

(assert (=> b!902285 m!838393))

(declare-fun m!838403 () Bool)

(assert (=> b!902285 m!838403))

(assert (=> b!902249 d!111877))

(declare-fun d!111879 () Bool)

(declare-fun res!609015 () Bool)

(declare-fun e!505361 () Bool)

(assert (=> d!111879 (=> res!609015 e!505361)))

(assert (=> d!111879 (= res!609015 ((_ is Nil!17959) Nil!17959))))

(assert (=> d!111879 (= (noDuplicate!1327 Nil!17959) e!505361)))

(declare-fun b!902291 () Bool)

(declare-fun e!505362 () Bool)

(assert (=> b!902291 (= e!505361 e!505362)))

(declare-fun res!609016 () Bool)

(assert (=> b!902291 (=> (not res!609016) (not e!505362))))

(declare-fun contains!4433 (List!17962 (_ BitVec 64)) Bool)

(assert (=> b!902291 (= res!609016 (not (contains!4433 (t!25353 Nil!17959) (h!19104 Nil!17959))))))

(declare-fun b!902292 () Bool)

(assert (=> b!902292 (= e!505362 (noDuplicate!1327 (t!25353 Nil!17959)))))

(assert (= (and d!111879 (not res!609015)) b!902291))

(assert (= (and b!902291 res!609016) b!902292))

(declare-fun m!838405 () Bool)

(assert (=> b!902291 m!838405))

(declare-fun m!838407 () Bool)

(assert (=> b!902292 m!838407))

(assert (=> b!902252 d!111879))

(declare-fun mapIsEmpty!29380 () Bool)

(declare-fun mapRes!29380 () Bool)

(assert (=> mapIsEmpty!29380 mapRes!29380))

(declare-fun condMapEmpty!29380 () Bool)

(declare-fun mapDefault!29380 () ValueCell!8742)

(assert (=> mapNonEmpty!29374 (= condMapEmpty!29380 (= mapRest!29374 ((as const (Array (_ BitVec 32) ValueCell!8742)) mapDefault!29380)))))

(declare-fun e!505367 () Bool)

(assert (=> mapNonEmpty!29374 (= tp!56434 (and e!505367 mapRes!29380))))

(declare-fun mapNonEmpty!29380 () Bool)

(declare-fun tp!56440 () Bool)

(declare-fun e!505368 () Bool)

(assert (=> mapNonEmpty!29380 (= mapRes!29380 (and tp!56440 e!505368))))

(declare-fun mapRest!29380 () (Array (_ BitVec 32) ValueCell!8742))

(declare-fun mapKey!29380 () (_ BitVec 32))

(declare-fun mapValue!29380 () ValueCell!8742)

(assert (=> mapNonEmpty!29380 (= mapRest!29374 (store mapRest!29380 mapKey!29380 mapValue!29380))))

(declare-fun b!902299 () Bool)

(assert (=> b!902299 (= e!505368 tp_is_empty!18447)))

(declare-fun b!902300 () Bool)

(assert (=> b!902300 (= e!505367 tp_is_empty!18447)))

(assert (= (and mapNonEmpty!29374 condMapEmpty!29380) mapIsEmpty!29380))

(assert (= (and mapNonEmpty!29374 (not condMapEmpty!29380)) mapNonEmpty!29380))

(assert (= (and mapNonEmpty!29380 ((_ is ValueCellFull!8742) mapValue!29380)) b!902299))

(assert (= (and mapNonEmpty!29374 ((_ is ValueCellFull!8742) mapDefault!29380)) b!902300))

(declare-fun m!838409 () Bool)

(assert (=> mapNonEmpty!29380 m!838409))

(check-sat (not b!902291) tp_is_empty!18447 (not bm!40240) (not b!902285) (not b!902283) (not b!902292) (not mapNonEmpty!29380))
(check-sat)

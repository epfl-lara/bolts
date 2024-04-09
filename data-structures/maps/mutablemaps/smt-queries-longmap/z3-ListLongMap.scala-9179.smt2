; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110438 () Bool)

(assert start!110438)

(declare-fun b!1306234 () Bool)

(declare-fun res!867264 () Bool)

(declare-fun e!745218 () Bool)

(assert (=> b!1306234 (=> (not res!867264) (not e!745218))))

(declare-datatypes ((array!86965 0))(
  ( (array!86966 (arr!41960 (Array (_ BitVec 32) (_ BitVec 64))) (size!42511 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86965)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51755 0))(
  ( (V!51756 (val!17569 Int)) )
))
(declare-datatypes ((ValueCell!16596 0))(
  ( (ValueCellFull!16596 (v!20193 V!51755)) (EmptyCell!16596) )
))
(declare-datatypes ((array!86967 0))(
  ( (array!86968 (arr!41961 (Array (_ BitVec 32) ValueCell!16596)) (size!42512 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86967)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306234 (= res!867264 (and (= (size!42512 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42511 _keys!1628) (size!42512 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306235 () Bool)

(declare-fun e!745220 () Bool)

(declare-fun e!745221 () Bool)

(declare-fun mapRes!54106 () Bool)

(assert (=> b!1306235 (= e!745220 (and e!745221 mapRes!54106))))

(declare-fun condMapEmpty!54106 () Bool)

(declare-fun mapDefault!54106 () ValueCell!16596)

(assert (=> b!1306235 (= condMapEmpty!54106 (= (arr!41961 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16596)) mapDefault!54106)))))

(declare-fun b!1306236 () Bool)

(declare-fun e!745217 () Bool)

(declare-fun tp_is_empty!34989 () Bool)

(assert (=> b!1306236 (= e!745217 tp_is_empty!34989)))

(declare-fun b!1306237 () Bool)

(assert (=> b!1306237 (= e!745221 tp_is_empty!34989)))

(declare-fun mapNonEmpty!54106 () Bool)

(declare-fun tp!103187 () Bool)

(assert (=> mapNonEmpty!54106 (= mapRes!54106 (and tp!103187 e!745217))))

(declare-fun mapValue!54106 () ValueCell!16596)

(declare-fun mapKey!54106 () (_ BitVec 32))

(declare-fun mapRest!54106 () (Array (_ BitVec 32) ValueCell!16596))

(assert (=> mapNonEmpty!54106 (= (arr!41961 _values!1354) (store mapRest!54106 mapKey!54106 mapValue!54106))))

(declare-fun b!1306239 () Bool)

(declare-fun res!867261 () Bool)

(assert (=> b!1306239 (=> (not res!867261) (not e!745218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86965 (_ BitVec 32)) Bool)

(assert (=> b!1306239 (= res!867261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!867262 () Bool)

(assert (=> start!110438 (=> (not res!867262) (not e!745218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110438 (= res!867262 (validMask!0 mask!2040))))

(assert (=> start!110438 e!745218))

(assert (=> start!110438 true))

(declare-fun array_inv!31727 (array!86967) Bool)

(assert (=> start!110438 (and (array_inv!31727 _values!1354) e!745220)))

(declare-fun array_inv!31728 (array!86965) Bool)

(assert (=> start!110438 (array_inv!31728 _keys!1628)))

(declare-fun b!1306238 () Bool)

(declare-datatypes ((List!29973 0))(
  ( (Nil!29970) (Cons!29969 (h!31178 (_ BitVec 64)) (t!43586 List!29973)) )
))
(declare-fun noDuplicate!2091 (List!29973) Bool)

(assert (=> b!1306238 (= e!745218 (not (noDuplicate!2091 Nil!29970)))))

(declare-fun b!1306240 () Bool)

(declare-fun res!867263 () Bool)

(assert (=> b!1306240 (=> (not res!867263) (not e!745218))))

(assert (=> b!1306240 (= res!867263 (and (bvsle #b00000000000000000000000000000000 (size!42511 _keys!1628)) (bvslt (size!42511 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!54106 () Bool)

(assert (=> mapIsEmpty!54106 mapRes!54106))

(assert (= (and start!110438 res!867262) b!1306234))

(assert (= (and b!1306234 res!867264) b!1306239))

(assert (= (and b!1306239 res!867261) b!1306240))

(assert (= (and b!1306240 res!867263) b!1306238))

(assert (= (and b!1306235 condMapEmpty!54106) mapIsEmpty!54106))

(assert (= (and b!1306235 (not condMapEmpty!54106)) mapNonEmpty!54106))

(get-info :version)

(assert (= (and mapNonEmpty!54106 ((_ is ValueCellFull!16596) mapValue!54106)) b!1306236))

(assert (= (and b!1306235 ((_ is ValueCellFull!16596) mapDefault!54106)) b!1306237))

(assert (= start!110438 b!1306235))

(declare-fun m!1197347 () Bool)

(assert (=> mapNonEmpty!54106 m!1197347))

(declare-fun m!1197349 () Bool)

(assert (=> b!1306239 m!1197349))

(declare-fun m!1197351 () Bool)

(assert (=> start!110438 m!1197351))

(declare-fun m!1197353 () Bool)

(assert (=> start!110438 m!1197353))

(declare-fun m!1197355 () Bool)

(assert (=> start!110438 m!1197355))

(declare-fun m!1197357 () Bool)

(assert (=> b!1306238 m!1197357))

(check-sat (not b!1306239) tp_is_empty!34989 (not b!1306238) (not start!110438) (not mapNonEmpty!54106))
(check-sat)
(get-model)

(declare-fun d!142159 () Bool)

(assert (=> d!142159 (= (validMask!0 mask!2040) (and (or (= mask!2040 #b00000000000000000000000000000111) (= mask!2040 #b00000000000000000000000000001111) (= mask!2040 #b00000000000000000000000000011111) (= mask!2040 #b00000000000000000000000000111111) (= mask!2040 #b00000000000000000000000001111111) (= mask!2040 #b00000000000000000000000011111111) (= mask!2040 #b00000000000000000000000111111111) (= mask!2040 #b00000000000000000000001111111111) (= mask!2040 #b00000000000000000000011111111111) (= mask!2040 #b00000000000000000000111111111111) (= mask!2040 #b00000000000000000001111111111111) (= mask!2040 #b00000000000000000011111111111111) (= mask!2040 #b00000000000000000111111111111111) (= mask!2040 #b00000000000000001111111111111111) (= mask!2040 #b00000000000000011111111111111111) (= mask!2040 #b00000000000000111111111111111111) (= mask!2040 #b00000000000001111111111111111111) (= mask!2040 #b00000000000011111111111111111111) (= mask!2040 #b00000000000111111111111111111111) (= mask!2040 #b00000000001111111111111111111111) (= mask!2040 #b00000000011111111111111111111111) (= mask!2040 #b00000000111111111111111111111111) (= mask!2040 #b00000001111111111111111111111111) (= mask!2040 #b00000011111111111111111111111111) (= mask!2040 #b00000111111111111111111111111111) (= mask!2040 #b00001111111111111111111111111111) (= mask!2040 #b00011111111111111111111111111111) (= mask!2040 #b00111111111111111111111111111111)) (bvsle mask!2040 #b00111111111111111111111111111111)))))

(assert (=> start!110438 d!142159))

(declare-fun d!142161 () Bool)

(assert (=> d!142161 (= (array_inv!31727 _values!1354) (bvsge (size!42512 _values!1354) #b00000000000000000000000000000000))))

(assert (=> start!110438 d!142161))

(declare-fun d!142163 () Bool)

(assert (=> d!142163 (= (array_inv!31728 _keys!1628) (bvsge (size!42511 _keys!1628) #b00000000000000000000000000000000))))

(assert (=> start!110438 d!142163))

(declare-fun b!1306270 () Bool)

(declare-fun e!745243 () Bool)

(declare-fun e!745245 () Bool)

(assert (=> b!1306270 (= e!745243 e!745245)))

(declare-fun lt!584845 () (_ BitVec 64))

(assert (=> b!1306270 (= lt!584845 (select (arr!41960 _keys!1628) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43218 0))(
  ( (Unit!43219) )
))
(declare-fun lt!584846 () Unit!43218)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86965 (_ BitVec 64) (_ BitVec 32)) Unit!43218)

(assert (=> b!1306270 (= lt!584846 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!584845 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1306270 (arrayContainsKey!0 _keys!1628 lt!584845 #b00000000000000000000000000000000)))

(declare-fun lt!584847 () Unit!43218)

(assert (=> b!1306270 (= lt!584847 lt!584846)))

(declare-fun res!867282 () Bool)

(declare-datatypes ((SeekEntryResult!10030 0))(
  ( (MissingZero!10030 (index!42490 (_ BitVec 32))) (Found!10030 (index!42491 (_ BitVec 32))) (Intermediate!10030 (undefined!10842 Bool) (index!42492 (_ BitVec 32)) (x!116011 (_ BitVec 32))) (Undefined!10030) (MissingVacant!10030 (index!42493 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86965 (_ BitVec 32)) SeekEntryResult!10030)

(assert (=> b!1306270 (= res!867282 (= (seekEntryOrOpen!0 (select (arr!41960 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040) (Found!10030 #b00000000000000000000000000000000)))))

(assert (=> b!1306270 (=> (not res!867282) (not e!745245))))

(declare-fun b!1306271 () Bool)

(declare-fun e!745244 () Bool)

(assert (=> b!1306271 (= e!745244 e!745243)))

(declare-fun c!125486 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1306271 (= c!125486 (validKeyInArray!0 (select (arr!41960 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun d!142165 () Bool)

(declare-fun res!867281 () Bool)

(assert (=> d!142165 (=> res!867281 e!745244)))

(assert (=> d!142165 (= res!867281 (bvsge #b00000000000000000000000000000000 (size!42511 _keys!1628)))))

(assert (=> d!142165 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040) e!745244)))

(declare-fun b!1306272 () Bool)

(declare-fun call!64625 () Bool)

(assert (=> b!1306272 (= e!745245 call!64625)))

(declare-fun b!1306273 () Bool)

(assert (=> b!1306273 (= e!745243 call!64625)))

(declare-fun bm!64622 () Bool)

(assert (=> bm!64622 (= call!64625 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1628 mask!2040))))

(assert (= (and d!142165 (not res!867281)) b!1306271))

(assert (= (and b!1306271 c!125486) b!1306270))

(assert (= (and b!1306271 (not c!125486)) b!1306273))

(assert (= (and b!1306270 res!867282) b!1306272))

(assert (= (or b!1306272 b!1306273) bm!64622))

(declare-fun m!1197371 () Bool)

(assert (=> b!1306270 m!1197371))

(declare-fun m!1197373 () Bool)

(assert (=> b!1306270 m!1197373))

(declare-fun m!1197375 () Bool)

(assert (=> b!1306270 m!1197375))

(assert (=> b!1306270 m!1197371))

(declare-fun m!1197377 () Bool)

(assert (=> b!1306270 m!1197377))

(assert (=> b!1306271 m!1197371))

(assert (=> b!1306271 m!1197371))

(declare-fun m!1197379 () Bool)

(assert (=> b!1306271 m!1197379))

(declare-fun m!1197381 () Bool)

(assert (=> bm!64622 m!1197381))

(assert (=> b!1306239 d!142165))

(declare-fun d!142167 () Bool)

(declare-fun res!867287 () Bool)

(declare-fun e!745250 () Bool)

(assert (=> d!142167 (=> res!867287 e!745250)))

(assert (=> d!142167 (= res!867287 ((_ is Nil!29970) Nil!29970))))

(assert (=> d!142167 (= (noDuplicate!2091 Nil!29970) e!745250)))

(declare-fun b!1306278 () Bool)

(declare-fun e!745251 () Bool)

(assert (=> b!1306278 (= e!745250 e!745251)))

(declare-fun res!867288 () Bool)

(assert (=> b!1306278 (=> (not res!867288) (not e!745251))))

(declare-fun contains!8345 (List!29973 (_ BitVec 64)) Bool)

(assert (=> b!1306278 (= res!867288 (not (contains!8345 (t!43586 Nil!29970) (h!31178 Nil!29970))))))

(declare-fun b!1306279 () Bool)

(assert (=> b!1306279 (= e!745251 (noDuplicate!2091 (t!43586 Nil!29970)))))

(assert (= (and d!142167 (not res!867287)) b!1306278))

(assert (= (and b!1306278 res!867288) b!1306279))

(declare-fun m!1197383 () Bool)

(assert (=> b!1306278 m!1197383))

(declare-fun m!1197385 () Bool)

(assert (=> b!1306279 m!1197385))

(assert (=> b!1306238 d!142167))

(declare-fun condMapEmpty!54112 () Bool)

(declare-fun mapDefault!54112 () ValueCell!16596)

(assert (=> mapNonEmpty!54106 (= condMapEmpty!54112 (= mapRest!54106 ((as const (Array (_ BitVec 32) ValueCell!16596)) mapDefault!54112)))))

(declare-fun e!745257 () Bool)

(declare-fun mapRes!54112 () Bool)

(assert (=> mapNonEmpty!54106 (= tp!103187 (and e!745257 mapRes!54112))))

(declare-fun b!1306287 () Bool)

(assert (=> b!1306287 (= e!745257 tp_is_empty!34989)))

(declare-fun mapNonEmpty!54112 () Bool)

(declare-fun tp!103193 () Bool)

(declare-fun e!745256 () Bool)

(assert (=> mapNonEmpty!54112 (= mapRes!54112 (and tp!103193 e!745256))))

(declare-fun mapRest!54112 () (Array (_ BitVec 32) ValueCell!16596))

(declare-fun mapValue!54112 () ValueCell!16596)

(declare-fun mapKey!54112 () (_ BitVec 32))

(assert (=> mapNonEmpty!54112 (= mapRest!54106 (store mapRest!54112 mapKey!54112 mapValue!54112))))

(declare-fun mapIsEmpty!54112 () Bool)

(assert (=> mapIsEmpty!54112 mapRes!54112))

(declare-fun b!1306286 () Bool)

(assert (=> b!1306286 (= e!745256 tp_is_empty!34989)))

(assert (= (and mapNonEmpty!54106 condMapEmpty!54112) mapIsEmpty!54112))

(assert (= (and mapNonEmpty!54106 (not condMapEmpty!54112)) mapNonEmpty!54112))

(assert (= (and mapNonEmpty!54112 ((_ is ValueCellFull!16596) mapValue!54112)) b!1306286))

(assert (= (and mapNonEmpty!54106 ((_ is ValueCellFull!16596) mapDefault!54112)) b!1306287))

(declare-fun m!1197387 () Bool)

(assert (=> mapNonEmpty!54112 m!1197387))

(check-sat (not mapNonEmpty!54112) (not b!1306270) (not b!1306278) tp_is_empty!34989 (not b!1306279) (not b!1306271) (not bm!64622))
(check-sat)

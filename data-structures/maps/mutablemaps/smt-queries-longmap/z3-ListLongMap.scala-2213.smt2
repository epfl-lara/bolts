; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36716 () Bool)

(assert start!36716)

(declare-fun mapIsEmpty!14334 () Bool)

(declare-fun mapRes!14334 () Bool)

(assert (=> mapIsEmpty!14334 mapRes!14334))

(declare-fun b!366234 () Bool)

(declare-fun res!204930 () Bool)

(declare-fun e!224235 () Bool)

(assert (=> b!366234 (=> (not res!204930) (not e!224235))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-datatypes ((array!20959 0))(
  ( (array!20960 (arr!9947 (Array (_ BitVec 32) (_ BitVec 64))) (size!10299 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20959)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20959 (_ BitVec 32)) Bool)

(assert (=> b!366234 (= res!204930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)) mask!970))))

(declare-fun b!366235 () Bool)

(declare-datatypes ((List!5566 0))(
  ( (Nil!5563) (Cons!5562 (h!6418 (_ BitVec 64)) (t!10724 List!5566)) )
))
(declare-fun noDuplicate!188 (List!5566) Bool)

(assert (=> b!366235 (= e!224235 (not (noDuplicate!188 Nil!5563)))))

(declare-fun b!366236 () Bool)

(declare-fun e!224239 () Bool)

(declare-fun tp_is_empty!8517 () Bool)

(assert (=> b!366236 (= e!224239 tp_is_empty!8517)))

(declare-fun b!366237 () Bool)

(declare-fun res!204928 () Bool)

(assert (=> b!366237 (=> (not res!204928) (not e!224235))))

(declare-fun arrayContainsKey!0 (array!20959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366237 (= res!204928 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!366238 () Bool)

(declare-fun res!204927 () Bool)

(assert (=> b!366238 (=> (not res!204927) (not e!224235))))

(declare-fun arrayNoDuplicates!0 (array!20959 (_ BitVec 32) List!5566) Bool)

(assert (=> b!366238 (= res!204927 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5563))))

(declare-fun b!366239 () Bool)

(declare-fun e!224236 () Bool)

(declare-fun e!224237 () Bool)

(assert (=> b!366239 (= e!224236 (and e!224237 mapRes!14334))))

(declare-fun condMapEmpty!14334 () Bool)

(declare-datatypes ((V!12461 0))(
  ( (V!12462 (val!4303 Int)) )
))
(declare-datatypes ((ValueCell!3915 0))(
  ( (ValueCellFull!3915 (v!6495 V!12461)) (EmptyCell!3915) )
))
(declare-datatypes ((array!20961 0))(
  ( (array!20962 (arr!9948 (Array (_ BitVec 32) ValueCell!3915)) (size!10300 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20961)

(declare-fun mapDefault!14334 () ValueCell!3915)

(assert (=> b!366239 (= condMapEmpty!14334 (= (arr!9948 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3915)) mapDefault!14334)))))

(declare-fun b!366241 () Bool)

(assert (=> b!366241 (= e!224237 tp_is_empty!8517)))

(declare-fun b!366242 () Bool)

(declare-fun res!204926 () Bool)

(assert (=> b!366242 (=> (not res!204926) (not e!224235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366242 (= res!204926 (validKeyInArray!0 k0!778))))

(declare-fun b!366243 () Bool)

(declare-fun res!204932 () Bool)

(assert (=> b!366243 (=> (not res!204932) (not e!224235))))

(assert (=> b!366243 (= res!204932 (and (bvsle #b00000000000000000000000000000000 (size!10299 _keys!658)) (bvslt (size!10299 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!366244 () Bool)

(declare-fun res!204931 () Bool)

(assert (=> b!366244 (=> (not res!204931) (not e!224235))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366244 (= res!204931 (and (= (size!10300 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10299 _keys!658) (size!10300 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366245 () Bool)

(declare-fun res!204925 () Bool)

(assert (=> b!366245 (=> (not res!204925) (not e!224235))))

(assert (=> b!366245 (= res!204925 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10299 _keys!658))))))

(declare-fun mapNonEmpty!14334 () Bool)

(declare-fun tp!28410 () Bool)

(assert (=> mapNonEmpty!14334 (= mapRes!14334 (and tp!28410 e!224239))))

(declare-fun mapRest!14334 () (Array (_ BitVec 32) ValueCell!3915))

(declare-fun mapKey!14334 () (_ BitVec 32))

(declare-fun mapValue!14334 () ValueCell!3915)

(assert (=> mapNonEmpty!14334 (= (arr!9948 _values!506) (store mapRest!14334 mapKey!14334 mapValue!14334))))

(declare-fun b!366246 () Bool)

(declare-fun res!204924 () Bool)

(assert (=> b!366246 (=> (not res!204924) (not e!224235))))

(assert (=> b!366246 (= res!204924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!204929 () Bool)

(assert (=> start!36716 (=> (not res!204929) (not e!224235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36716 (= res!204929 (validMask!0 mask!970))))

(assert (=> start!36716 e!224235))

(assert (=> start!36716 true))

(declare-fun array_inv!7356 (array!20961) Bool)

(assert (=> start!36716 (and (array_inv!7356 _values!506) e!224236)))

(declare-fun array_inv!7357 (array!20959) Bool)

(assert (=> start!36716 (array_inv!7357 _keys!658)))

(declare-fun b!366240 () Bool)

(declare-fun res!204923 () Bool)

(assert (=> b!366240 (=> (not res!204923) (not e!224235))))

(assert (=> b!366240 (= res!204923 (or (= (select (arr!9947 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9947 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!36716 res!204929) b!366244))

(assert (= (and b!366244 res!204931) b!366246))

(assert (= (and b!366246 res!204924) b!366238))

(assert (= (and b!366238 res!204927) b!366245))

(assert (= (and b!366245 res!204925) b!366242))

(assert (= (and b!366242 res!204926) b!366240))

(assert (= (and b!366240 res!204923) b!366237))

(assert (= (and b!366237 res!204928) b!366234))

(assert (= (and b!366234 res!204930) b!366243))

(assert (= (and b!366243 res!204932) b!366235))

(assert (= (and b!366239 condMapEmpty!14334) mapIsEmpty!14334))

(assert (= (and b!366239 (not condMapEmpty!14334)) mapNonEmpty!14334))

(get-info :version)

(assert (= (and mapNonEmpty!14334 ((_ is ValueCellFull!3915) mapValue!14334)) b!366236))

(assert (= (and b!366239 ((_ is ValueCellFull!3915) mapDefault!14334)) b!366241))

(assert (= start!36716 b!366239))

(declare-fun m!363595 () Bool)

(assert (=> b!366235 m!363595))

(declare-fun m!363597 () Bool)

(assert (=> b!366246 m!363597))

(declare-fun m!363599 () Bool)

(assert (=> b!366234 m!363599))

(declare-fun m!363601 () Bool)

(assert (=> b!366234 m!363601))

(declare-fun m!363603 () Bool)

(assert (=> mapNonEmpty!14334 m!363603))

(declare-fun m!363605 () Bool)

(assert (=> start!36716 m!363605))

(declare-fun m!363607 () Bool)

(assert (=> start!36716 m!363607))

(declare-fun m!363609 () Bool)

(assert (=> start!36716 m!363609))

(declare-fun m!363611 () Bool)

(assert (=> b!366238 m!363611))

(declare-fun m!363613 () Bool)

(assert (=> b!366237 m!363613))

(declare-fun m!363615 () Bool)

(assert (=> b!366242 m!363615))

(declare-fun m!363617 () Bool)

(assert (=> b!366240 m!363617))

(check-sat (not start!36716) (not mapNonEmpty!14334) (not b!366238) tp_is_empty!8517 (not b!366234) (not b!366237) (not b!366242) (not b!366246) (not b!366235))
(check-sat)
(get-model)

(declare-fun d!72277 () Bool)

(assert (=> d!72277 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36716 d!72277))

(declare-fun d!72279 () Bool)

(assert (=> d!72279 (= (array_inv!7356 _values!506) (bvsge (size!10300 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36716 d!72279))

(declare-fun d!72281 () Bool)

(assert (=> d!72281 (= (array_inv!7357 _keys!658) (bvsge (size!10299 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36716 d!72281))

(declare-fun b!366294 () Bool)

(declare-fun e!224261 () Bool)

(declare-fun e!224262 () Bool)

(assert (=> b!366294 (= e!224261 e!224262)))

(declare-fun c!53838 () Bool)

(assert (=> b!366294 (= c!53838 (validKeyInArray!0 (select (arr!9947 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72283 () Bool)

(declare-fun res!204968 () Bool)

(assert (=> d!72283 (=> res!204968 e!224261)))

(assert (=> d!72283 (= res!204968 (bvsge #b00000000000000000000000000000000 (size!10299 _keys!658)))))

(assert (=> d!72283 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!224261)))

(declare-fun b!366295 () Bool)

(declare-fun call!27294 () Bool)

(assert (=> b!366295 (= e!224262 call!27294)))

(declare-fun b!366296 () Bool)

(declare-fun e!224263 () Bool)

(assert (=> b!366296 (= e!224262 e!224263)))

(declare-fun lt!169206 () (_ BitVec 64))

(assert (=> b!366296 (= lt!169206 (select (arr!9947 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11383 0))(
  ( (Unit!11384) )
))
(declare-fun lt!169205 () Unit!11383)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20959 (_ BitVec 64) (_ BitVec 32)) Unit!11383)

(assert (=> b!366296 (= lt!169205 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169206 #b00000000000000000000000000000000))))

(assert (=> b!366296 (arrayContainsKey!0 _keys!658 lt!169206 #b00000000000000000000000000000000)))

(declare-fun lt!169204 () Unit!11383)

(assert (=> b!366296 (= lt!169204 lt!169205)))

(declare-fun res!204967 () Bool)

(declare-datatypes ((SeekEntryResult!3494 0))(
  ( (MissingZero!3494 (index!16155 (_ BitVec 32))) (Found!3494 (index!16156 (_ BitVec 32))) (Intermediate!3494 (undefined!4306 Bool) (index!16157 (_ BitVec 32)) (x!36733 (_ BitVec 32))) (Undefined!3494) (MissingVacant!3494 (index!16158 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20959 (_ BitVec 32)) SeekEntryResult!3494)

(assert (=> b!366296 (= res!204967 (= (seekEntryOrOpen!0 (select (arr!9947 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3494 #b00000000000000000000000000000000)))))

(assert (=> b!366296 (=> (not res!204967) (not e!224263))))

(declare-fun b!366297 () Bool)

(assert (=> b!366297 (= e!224263 call!27294)))

(declare-fun bm!27291 () Bool)

(assert (=> bm!27291 (= call!27294 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(assert (= (and d!72283 (not res!204968)) b!366294))

(assert (= (and b!366294 c!53838) b!366296))

(assert (= (and b!366294 (not c!53838)) b!366295))

(assert (= (and b!366296 res!204967) b!366297))

(assert (= (or b!366297 b!366295) bm!27291))

(declare-fun m!363643 () Bool)

(assert (=> b!366294 m!363643))

(assert (=> b!366294 m!363643))

(declare-fun m!363645 () Bool)

(assert (=> b!366294 m!363645))

(assert (=> b!366296 m!363643))

(declare-fun m!363647 () Bool)

(assert (=> b!366296 m!363647))

(declare-fun m!363649 () Bool)

(assert (=> b!366296 m!363649))

(assert (=> b!366296 m!363643))

(declare-fun m!363651 () Bool)

(assert (=> b!366296 m!363651))

(declare-fun m!363653 () Bool)

(assert (=> bm!27291 m!363653))

(assert (=> b!366246 d!72283))

(declare-fun d!72285 () Bool)

(declare-fun res!204973 () Bool)

(declare-fun e!224268 () Bool)

(assert (=> d!72285 (=> res!204973 e!224268)))

(assert (=> d!72285 (= res!204973 (= (select (arr!9947 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72285 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!224268)))

(declare-fun b!366302 () Bool)

(declare-fun e!224269 () Bool)

(assert (=> b!366302 (= e!224268 e!224269)))

(declare-fun res!204974 () Bool)

(assert (=> b!366302 (=> (not res!204974) (not e!224269))))

(assert (=> b!366302 (= res!204974 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!10299 _keys!658)))))

(declare-fun b!366303 () Bool)

(assert (=> b!366303 (= e!224269 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72285 (not res!204973)) b!366302))

(assert (= (and b!366302 res!204974) b!366303))

(assert (=> d!72285 m!363643))

(declare-fun m!363655 () Bool)

(assert (=> b!366303 m!363655))

(assert (=> b!366237 d!72285))

(declare-fun d!72287 () Bool)

(assert (=> d!72287 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!366242 d!72287))

(declare-fun b!366314 () Bool)

(declare-fun e!224279 () Bool)

(declare-fun e!224280 () Bool)

(assert (=> b!366314 (= e!224279 e!224280)))

(declare-fun res!204981 () Bool)

(assert (=> b!366314 (=> (not res!204981) (not e!224280))))

(declare-fun e!224281 () Bool)

(assert (=> b!366314 (= res!204981 (not e!224281))))

(declare-fun res!204983 () Bool)

(assert (=> b!366314 (=> (not res!204983) (not e!224281))))

(assert (=> b!366314 (= res!204983 (validKeyInArray!0 (select (arr!9947 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366315 () Bool)

(declare-fun e!224278 () Bool)

(declare-fun call!27297 () Bool)

(assert (=> b!366315 (= e!224278 call!27297)))

(declare-fun d!72289 () Bool)

(declare-fun res!204982 () Bool)

(assert (=> d!72289 (=> res!204982 e!224279)))

(assert (=> d!72289 (= res!204982 (bvsge #b00000000000000000000000000000000 (size!10299 _keys!658)))))

(assert (=> d!72289 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5563) e!224279)))

(declare-fun bm!27294 () Bool)

(declare-fun c!53841 () Bool)

(assert (=> bm!27294 (= call!27297 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53841 (Cons!5562 (select (arr!9947 _keys!658) #b00000000000000000000000000000000) Nil!5563) Nil!5563)))))

(declare-fun b!366316 () Bool)

(assert (=> b!366316 (= e!224278 call!27297)))

(declare-fun b!366317 () Bool)

(assert (=> b!366317 (= e!224280 e!224278)))

(assert (=> b!366317 (= c!53841 (validKeyInArray!0 (select (arr!9947 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!366318 () Bool)

(declare-fun contains!2437 (List!5566 (_ BitVec 64)) Bool)

(assert (=> b!366318 (= e!224281 (contains!2437 Nil!5563 (select (arr!9947 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72289 (not res!204982)) b!366314))

(assert (= (and b!366314 res!204983) b!366318))

(assert (= (and b!366314 res!204981) b!366317))

(assert (= (and b!366317 c!53841) b!366316))

(assert (= (and b!366317 (not c!53841)) b!366315))

(assert (= (or b!366316 b!366315) bm!27294))

(assert (=> b!366314 m!363643))

(assert (=> b!366314 m!363643))

(assert (=> b!366314 m!363645))

(assert (=> bm!27294 m!363643))

(declare-fun m!363657 () Bool)

(assert (=> bm!27294 m!363657))

(assert (=> b!366317 m!363643))

(assert (=> b!366317 m!363643))

(assert (=> b!366317 m!363645))

(assert (=> b!366318 m!363643))

(assert (=> b!366318 m!363643))

(declare-fun m!363659 () Bool)

(assert (=> b!366318 m!363659))

(assert (=> b!366238 d!72289))

(declare-fun b!366319 () Bool)

(declare-fun e!224282 () Bool)

(declare-fun e!224283 () Bool)

(assert (=> b!366319 (= e!224282 e!224283)))

(declare-fun c!53842 () Bool)

(assert (=> b!366319 (= c!53842 (validKeyInArray!0 (select (arr!9947 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658))) #b00000000000000000000000000000000)))))

(declare-fun d!72291 () Bool)

(declare-fun res!204985 () Bool)

(assert (=> d!72291 (=> res!204985 e!224282)))

(assert (=> d!72291 (= res!204985 (bvsge #b00000000000000000000000000000000 (size!10299 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)))))))

(assert (=> d!72291 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)) mask!970) e!224282)))

(declare-fun b!366320 () Bool)

(declare-fun call!27298 () Bool)

(assert (=> b!366320 (= e!224283 call!27298)))

(declare-fun b!366321 () Bool)

(declare-fun e!224284 () Bool)

(assert (=> b!366321 (= e!224283 e!224284)))

(declare-fun lt!169209 () (_ BitVec 64))

(assert (=> b!366321 (= lt!169209 (select (arr!9947 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658))) #b00000000000000000000000000000000))))

(declare-fun lt!169208 () Unit!11383)

(assert (=> b!366321 (= lt!169208 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)) lt!169209 #b00000000000000000000000000000000))))

(assert (=> b!366321 (arrayContainsKey!0 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)) lt!169209 #b00000000000000000000000000000000)))

(declare-fun lt!169207 () Unit!11383)

(assert (=> b!366321 (= lt!169207 lt!169208)))

(declare-fun res!204984 () Bool)

(assert (=> b!366321 (= res!204984 (= (seekEntryOrOpen!0 (select (arr!9947 (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658))) #b00000000000000000000000000000000) (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)) mask!970) (Found!3494 #b00000000000000000000000000000000)))))

(assert (=> b!366321 (=> (not res!204984) (not e!224284))))

(declare-fun b!366322 () Bool)

(assert (=> b!366322 (= e!224284 call!27298)))

(declare-fun bm!27295 () Bool)

(assert (=> bm!27295 (= call!27298 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!20960 (store (arr!9947 _keys!658) i!548 k0!778) (size!10299 _keys!658)) mask!970))))

(assert (= (and d!72291 (not res!204985)) b!366319))

(assert (= (and b!366319 c!53842) b!366321))

(assert (= (and b!366319 (not c!53842)) b!366320))

(assert (= (and b!366321 res!204984) b!366322))

(assert (= (or b!366322 b!366320) bm!27295))

(declare-fun m!363661 () Bool)

(assert (=> b!366319 m!363661))

(assert (=> b!366319 m!363661))

(declare-fun m!363663 () Bool)

(assert (=> b!366319 m!363663))

(assert (=> b!366321 m!363661))

(declare-fun m!363665 () Bool)

(assert (=> b!366321 m!363665))

(declare-fun m!363667 () Bool)

(assert (=> b!366321 m!363667))

(assert (=> b!366321 m!363661))

(declare-fun m!363669 () Bool)

(assert (=> b!366321 m!363669))

(declare-fun m!363671 () Bool)

(assert (=> bm!27295 m!363671))

(assert (=> b!366234 d!72291))

(declare-fun d!72293 () Bool)

(declare-fun res!204990 () Bool)

(declare-fun e!224289 () Bool)

(assert (=> d!72293 (=> res!204990 e!224289)))

(assert (=> d!72293 (= res!204990 ((_ is Nil!5563) Nil!5563))))

(assert (=> d!72293 (= (noDuplicate!188 Nil!5563) e!224289)))

(declare-fun b!366327 () Bool)

(declare-fun e!224290 () Bool)

(assert (=> b!366327 (= e!224289 e!224290)))

(declare-fun res!204991 () Bool)

(assert (=> b!366327 (=> (not res!204991) (not e!224290))))

(assert (=> b!366327 (= res!204991 (not (contains!2437 (t!10724 Nil!5563) (h!6418 Nil!5563))))))

(declare-fun b!366328 () Bool)

(assert (=> b!366328 (= e!224290 (noDuplicate!188 (t!10724 Nil!5563)))))

(assert (= (and d!72293 (not res!204990)) b!366327))

(assert (= (and b!366327 res!204991) b!366328))

(declare-fun m!363673 () Bool)

(assert (=> b!366327 m!363673))

(declare-fun m!363675 () Bool)

(assert (=> b!366328 m!363675))

(assert (=> b!366235 d!72293))

(declare-fun condMapEmpty!14340 () Bool)

(declare-fun mapDefault!14340 () ValueCell!3915)

(assert (=> mapNonEmpty!14334 (= condMapEmpty!14340 (= mapRest!14334 ((as const (Array (_ BitVec 32) ValueCell!3915)) mapDefault!14340)))))

(declare-fun e!224295 () Bool)

(declare-fun mapRes!14340 () Bool)

(assert (=> mapNonEmpty!14334 (= tp!28410 (and e!224295 mapRes!14340))))

(declare-fun mapIsEmpty!14340 () Bool)

(assert (=> mapIsEmpty!14340 mapRes!14340))

(declare-fun mapNonEmpty!14340 () Bool)

(declare-fun tp!28416 () Bool)

(declare-fun e!224296 () Bool)

(assert (=> mapNonEmpty!14340 (= mapRes!14340 (and tp!28416 e!224296))))

(declare-fun mapKey!14340 () (_ BitVec 32))

(declare-fun mapValue!14340 () ValueCell!3915)

(declare-fun mapRest!14340 () (Array (_ BitVec 32) ValueCell!3915))

(assert (=> mapNonEmpty!14340 (= mapRest!14334 (store mapRest!14340 mapKey!14340 mapValue!14340))))

(declare-fun b!366336 () Bool)

(assert (=> b!366336 (= e!224295 tp_is_empty!8517)))

(declare-fun b!366335 () Bool)

(assert (=> b!366335 (= e!224296 tp_is_empty!8517)))

(assert (= (and mapNonEmpty!14334 condMapEmpty!14340) mapIsEmpty!14340))

(assert (= (and mapNonEmpty!14334 (not condMapEmpty!14340)) mapNonEmpty!14340))

(assert (= (and mapNonEmpty!14340 ((_ is ValueCellFull!3915) mapValue!14340)) b!366335))

(assert (= (and mapNonEmpty!14334 ((_ is ValueCellFull!3915) mapDefault!14340)) b!366336))

(declare-fun m!363677 () Bool)

(assert (=> mapNonEmpty!14340 m!363677))

(check-sat (not bm!27291) (not b!366296) (not b!366321) (not bm!27294) (not b!366303) (not b!366319) (not b!366314) (not mapNonEmpty!14340) (not b!366318) (not b!366317) tp_is_empty!8517 (not b!366294) (not b!366327) (not b!366328) (not bm!27295))
(check-sat)

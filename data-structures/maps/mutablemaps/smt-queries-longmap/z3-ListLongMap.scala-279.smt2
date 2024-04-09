; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4520 () Bool)

(assert start!4520)

(declare-fun b_free!1263 () Bool)

(declare-fun b_next!1263 () Bool)

(assert (=> start!4520 (= b_free!1263 (not b_next!1263))))

(declare-fun tp!5229 () Bool)

(declare-fun b_and!2089 () Bool)

(assert (=> start!4520 (= tp!5229 b_and!2089)))

(declare-fun b!35328 () Bool)

(declare-fun e!22315 () Bool)

(declare-fun e!22318 () Bool)

(declare-fun mapRes!1975 () Bool)

(assert (=> b!35328 (= e!22315 (and e!22318 mapRes!1975))))

(declare-fun condMapEmpty!1975 () Bool)

(declare-datatypes ((V!1981 0))(
  ( (V!1982 (val!835 Int)) )
))
(declare-datatypes ((ValueCell!609 0))(
  ( (ValueCellFull!609 (v!1931 V!1981)) (EmptyCell!609) )
))
(declare-datatypes ((array!2441 0))(
  ( (array!2442 (arr!1167 (Array (_ BitVec 32) ValueCell!609)) (size!1268 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2441)

(declare-fun mapDefault!1975 () ValueCell!609)

(assert (=> b!35328 (= condMapEmpty!1975 (= (arr!1167 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!609)) mapDefault!1975)))))

(declare-fun b!35329 () Bool)

(declare-fun e!22317 () Bool)

(declare-fun e!22320 () Bool)

(assert (=> b!35329 (= e!22317 e!22320)))

(declare-fun res!21450 () Bool)

(assert (=> b!35329 (=> (not res!21450) (not e!22320))))

(declare-datatypes ((SeekEntryResult!168 0))(
  ( (MissingZero!168 (index!2794 (_ BitVec 32))) (Found!168 (index!2795 (_ BitVec 32))) (Intermediate!168 (undefined!980 Bool) (index!2796 (_ BitVec 32)) (x!7012 (_ BitVec 32))) (Undefined!168) (MissingVacant!168 (index!2797 (_ BitVec 32))) )
))
(declare-fun lt!12961 () SeekEntryResult!168)

(declare-datatypes ((array!2443 0))(
  ( (array!2444 (arr!1168 (Array (_ BitVec 32) (_ BitVec 64))) (size!1269 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2443)

(get-info :version)

(assert (=> b!35329 (= res!21450 (and ((_ is Found!168) lt!12961) (bvsge (index!2795 lt!12961) #b00000000000000000000000000000000) (bvslt (index!2795 lt!12961) (size!1269 _keys!1833))))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2443 (_ BitVec 32)) SeekEntryResult!168)

(assert (=> b!35329 (= lt!12961 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun res!21455 () Bool)

(assert (=> start!4520 (=> (not res!21455) (not e!22317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4520 (= res!21455 (validMask!0 mask!2294))))

(assert (=> start!4520 e!22317))

(assert (=> start!4520 true))

(assert (=> start!4520 tp!5229))

(declare-fun array_inv!773 (array!2441) Bool)

(assert (=> start!4520 (and (array_inv!773 _values!1501) e!22315)))

(declare-fun array_inv!774 (array!2443) Bool)

(assert (=> start!4520 (array_inv!774 _keys!1833)))

(declare-fun tp_is_empty!1617 () Bool)

(assert (=> start!4520 tp_is_empty!1617))

(declare-fun b!35330 () Bool)

(declare-fun res!21454 () Bool)

(assert (=> b!35330 (=> (not res!21454) (not e!22317))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35330 (= res!21454 (and (= (size!1268 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1269 _keys!1833) (size!1268 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35331 () Bool)

(assert (=> b!35331 (= e!22318 tp_is_empty!1617)))

(declare-fun mapIsEmpty!1975 () Bool)

(assert (=> mapIsEmpty!1975 mapRes!1975))

(declare-fun b!35332 () Bool)

(declare-fun res!21451 () Bool)

(assert (=> b!35332 (=> (not res!21451) (not e!22317))))

(declare-datatypes ((List!946 0))(
  ( (Nil!943) (Cons!942 (h!1509 (_ BitVec 64)) (t!3655 List!946)) )
))
(declare-fun arrayNoDuplicates!0 (array!2443 (_ BitVec 32) List!946) Bool)

(assert (=> b!35332 (= res!21451 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!943))))

(declare-fun b!35333 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35333 (= e!22320 (not (validKeyInArray!0 (select (arr!1168 _keys!1833) (index!2795 lt!12961)))))))

(declare-fun b!35334 () Bool)

(declare-fun res!21453 () Bool)

(assert (=> b!35334 (=> (not res!21453) (not e!22317))))

(declare-fun arrayContainsKey!0 (array!2443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35334 (= res!21453 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35335 () Bool)

(declare-fun res!21456 () Bool)

(assert (=> b!35335 (=> (not res!21456) (not e!22317))))

(assert (=> b!35335 (= res!21456 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1975 () Bool)

(declare-fun tp!5230 () Bool)

(declare-fun e!22319 () Bool)

(assert (=> mapNonEmpty!1975 (= mapRes!1975 (and tp!5230 e!22319))))

(declare-fun mapRest!1975 () (Array (_ BitVec 32) ValueCell!609))

(declare-fun mapKey!1975 () (_ BitVec 32))

(declare-fun mapValue!1975 () ValueCell!609)

(assert (=> mapNonEmpty!1975 (= (arr!1167 _values!1501) (store mapRest!1975 mapKey!1975 mapValue!1975))))

(declare-fun b!35336 () Bool)

(declare-fun res!21457 () Bool)

(assert (=> b!35336 (=> (not res!21457) (not e!22317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2443 (_ BitVec 32)) Bool)

(assert (=> b!35336 (= res!21457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35337 () Bool)

(declare-fun res!21452 () Bool)

(assert (=> b!35337 (=> (not res!21452) (not e!22317))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1981)

(declare-fun minValue!1443 () V!1981)

(declare-datatypes ((tuple2!1338 0))(
  ( (tuple2!1339 (_1!679 (_ BitVec 64)) (_2!679 V!1981)) )
))
(declare-datatypes ((List!947 0))(
  ( (Nil!944) (Cons!943 (h!1510 tuple2!1338) (t!3656 List!947)) )
))
(declare-datatypes ((ListLongMap!919 0))(
  ( (ListLongMap!920 (toList!475 List!947)) )
))
(declare-fun contains!419 (ListLongMap!919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!296 (array!2443 array!2441 (_ BitVec 32) (_ BitVec 32) V!1981 V!1981 (_ BitVec 32) Int) ListLongMap!919)

(assert (=> b!35337 (= res!21452 (not (contains!419 (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!35338 () Bool)

(assert (=> b!35338 (= e!22319 tp_is_empty!1617)))

(assert (= (and start!4520 res!21455) b!35330))

(assert (= (and b!35330 res!21454) b!35336))

(assert (= (and b!35336 res!21457) b!35332))

(assert (= (and b!35332 res!21451) b!35335))

(assert (= (and b!35335 res!21456) b!35337))

(assert (= (and b!35337 res!21452) b!35334))

(assert (= (and b!35334 res!21453) b!35329))

(assert (= (and b!35329 res!21450) b!35333))

(assert (= (and b!35328 condMapEmpty!1975) mapIsEmpty!1975))

(assert (= (and b!35328 (not condMapEmpty!1975)) mapNonEmpty!1975))

(assert (= (and mapNonEmpty!1975 ((_ is ValueCellFull!609) mapValue!1975)) b!35338))

(assert (= (and b!35328 ((_ is ValueCellFull!609) mapDefault!1975)) b!35331))

(assert (= start!4520 b!35328))

(declare-fun m!28425 () Bool)

(assert (=> b!35335 m!28425))

(declare-fun m!28427 () Bool)

(assert (=> b!35337 m!28427))

(assert (=> b!35337 m!28427))

(declare-fun m!28429 () Bool)

(assert (=> b!35337 m!28429))

(declare-fun m!28431 () Bool)

(assert (=> b!35334 m!28431))

(declare-fun m!28433 () Bool)

(assert (=> b!35329 m!28433))

(declare-fun m!28435 () Bool)

(assert (=> mapNonEmpty!1975 m!28435))

(declare-fun m!28437 () Bool)

(assert (=> b!35336 m!28437))

(declare-fun m!28439 () Bool)

(assert (=> b!35333 m!28439))

(assert (=> b!35333 m!28439))

(declare-fun m!28441 () Bool)

(assert (=> b!35333 m!28441))

(declare-fun m!28443 () Bool)

(assert (=> b!35332 m!28443))

(declare-fun m!28445 () Bool)

(assert (=> start!4520 m!28445))

(declare-fun m!28447 () Bool)

(assert (=> start!4520 m!28447))

(declare-fun m!28449 () Bool)

(assert (=> start!4520 m!28449))

(check-sat (not b!35333) (not b!35335) (not b!35336) (not start!4520) b_and!2089 (not b_next!1263) (not b!35332) (not b!35329) (not b!35337) (not b!35334) tp_is_empty!1617 (not mapNonEmpty!1975))
(check-sat b_and!2089 (not b_next!1263))
(get-model)

(declare-fun b!35382 () Bool)

(declare-fun e!22350 () Bool)

(declare-fun e!22347 () Bool)

(assert (=> b!35382 (= e!22350 e!22347)))

(declare-fun c!4011 () Bool)

(assert (=> b!35382 (= c!4011 (validKeyInArray!0 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun d!5303 () Bool)

(declare-fun res!21488 () Bool)

(declare-fun e!22348 () Bool)

(assert (=> d!5303 (=> res!21488 e!22348)))

(assert (=> d!5303 (= res!21488 (bvsge #b00000000000000000000000000000000 (size!1269 _keys!1833)))))

(assert (=> d!5303 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!943) e!22348)))

(declare-fun b!35383 () Bool)

(assert (=> b!35383 (= e!22348 e!22350)))

(declare-fun res!21490 () Bool)

(assert (=> b!35383 (=> (not res!21490) (not e!22350))))

(declare-fun e!22349 () Bool)

(assert (=> b!35383 (= res!21490 (not e!22349))))

(declare-fun res!21489 () Bool)

(assert (=> b!35383 (=> (not res!21489) (not e!22349))))

(assert (=> b!35383 (= res!21489 (validKeyInArray!0 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2778 () Bool)

(declare-fun call!2781 () Bool)

(assert (=> bm!2778 (= call!2781 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4011 (Cons!942 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000) Nil!943) Nil!943)))))

(declare-fun b!35384 () Bool)

(assert (=> b!35384 (= e!22347 call!2781)))

(declare-fun b!35385 () Bool)

(assert (=> b!35385 (= e!22347 call!2781)))

(declare-fun b!35386 () Bool)

(declare-fun contains!421 (List!946 (_ BitVec 64)) Bool)

(assert (=> b!35386 (= e!22349 (contains!421 Nil!943 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5303 (not res!21488)) b!35383))

(assert (= (and b!35383 res!21489) b!35386))

(assert (= (and b!35383 res!21490) b!35382))

(assert (= (and b!35382 c!4011) b!35385))

(assert (= (and b!35382 (not c!4011)) b!35384))

(assert (= (or b!35385 b!35384) bm!2778))

(declare-fun m!28477 () Bool)

(assert (=> b!35382 m!28477))

(assert (=> b!35382 m!28477))

(declare-fun m!28479 () Bool)

(assert (=> b!35382 m!28479))

(assert (=> b!35383 m!28477))

(assert (=> b!35383 m!28477))

(assert (=> b!35383 m!28479))

(assert (=> bm!2778 m!28477))

(declare-fun m!28481 () Bool)

(assert (=> bm!2778 m!28481))

(assert (=> b!35386 m!28477))

(assert (=> b!35386 m!28477))

(declare-fun m!28483 () Bool)

(assert (=> b!35386 m!28483))

(assert (=> b!35332 d!5303))

(declare-fun b!35396 () Bool)

(declare-fun e!22359 () Bool)

(declare-fun e!22357 () Bool)

(assert (=> b!35396 (= e!22359 e!22357)))

(declare-fun c!4014 () Bool)

(assert (=> b!35396 (= c!4014 (validKeyInArray!0 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35397 () Bool)

(declare-fun call!2784 () Bool)

(assert (=> b!35397 (= e!22357 call!2784)))

(declare-fun b!35398 () Bool)

(declare-fun e!22358 () Bool)

(assert (=> b!35398 (= e!22358 call!2784)))

(declare-fun bm!2781 () Bool)

(assert (=> bm!2781 (= call!2784 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!35395 () Bool)

(assert (=> b!35395 (= e!22357 e!22358)))

(declare-fun lt!12971 () (_ BitVec 64))

(assert (=> b!35395 (= lt!12971 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!779 0))(
  ( (Unit!780) )
))
(declare-fun lt!12972 () Unit!779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2443 (_ BitVec 64) (_ BitVec 32)) Unit!779)

(assert (=> b!35395 (= lt!12972 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12971 #b00000000000000000000000000000000))))

(assert (=> b!35395 (arrayContainsKey!0 _keys!1833 lt!12971 #b00000000000000000000000000000000)))

(declare-fun lt!12973 () Unit!779)

(assert (=> b!35395 (= lt!12973 lt!12972)))

(declare-fun res!21496 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2443 (_ BitVec 32)) SeekEntryResult!168)

(assert (=> b!35395 (= res!21496 (= (seekEntryOrOpen!0 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!168 #b00000000000000000000000000000000)))))

(assert (=> b!35395 (=> (not res!21496) (not e!22358))))

(declare-fun d!5305 () Bool)

(declare-fun res!21495 () Bool)

(assert (=> d!5305 (=> res!21495 e!22359)))

(assert (=> d!5305 (= res!21495 (bvsge #b00000000000000000000000000000000 (size!1269 _keys!1833)))))

(assert (=> d!5305 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!22359)))

(assert (= (and d!5305 (not res!21495)) b!35396))

(assert (= (and b!35396 c!4014) b!35395))

(assert (= (and b!35396 (not c!4014)) b!35397))

(assert (= (and b!35395 res!21496) b!35398))

(assert (= (or b!35398 b!35397) bm!2781))

(assert (=> b!35396 m!28477))

(assert (=> b!35396 m!28477))

(assert (=> b!35396 m!28479))

(declare-fun m!28485 () Bool)

(assert (=> bm!2781 m!28485))

(assert (=> b!35395 m!28477))

(declare-fun m!28487 () Bool)

(assert (=> b!35395 m!28487))

(declare-fun m!28489 () Bool)

(assert (=> b!35395 m!28489))

(assert (=> b!35395 m!28477))

(declare-fun m!28491 () Bool)

(assert (=> b!35395 m!28491))

(assert (=> b!35336 d!5305))

(declare-fun b!35411 () Bool)

(declare-fun e!22367 () SeekEntryResult!168)

(declare-fun lt!12983 () SeekEntryResult!168)

(assert (=> b!35411 (= e!22367 (Found!168 (index!2796 lt!12983)))))

(declare-fun b!35412 () Bool)

(declare-fun e!22368 () SeekEntryResult!168)

(assert (=> b!35412 (= e!22368 e!22367)))

(declare-fun lt!12984 () (_ BitVec 64))

(assert (=> b!35412 (= lt!12984 (select (arr!1168 _keys!1833) (index!2796 lt!12983)))))

(declare-fun c!4022 () Bool)

(assert (=> b!35412 (= c!4022 (= lt!12984 k0!1304))))

(declare-fun d!5307 () Bool)

(declare-fun lt!12985 () SeekEntryResult!168)

(assert (=> d!5307 (and (or ((_ is MissingVacant!168) lt!12985) (not ((_ is Found!168) lt!12985)) (and (bvsge (index!2795 lt!12985) #b00000000000000000000000000000000) (bvslt (index!2795 lt!12985) (size!1269 _keys!1833)))) (not ((_ is MissingVacant!168) lt!12985)) (or (not ((_ is Found!168) lt!12985)) (= (select (arr!1168 _keys!1833) (index!2795 lt!12985)) k0!1304)))))

(assert (=> d!5307 (= lt!12985 e!22368)))

(declare-fun c!4023 () Bool)

(assert (=> d!5307 (= c!4023 (and ((_ is Intermediate!168) lt!12983) (undefined!980 lt!12983)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2443 (_ BitVec 32)) SeekEntryResult!168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5307 (= lt!12983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5307 (validMask!0 mask!2294)))

(assert (=> d!5307 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!12985)))

(declare-fun b!35413 () Bool)

(assert (=> b!35413 (= e!22368 Undefined!168)))

(declare-fun b!35414 () Bool)

(declare-fun e!22366 () SeekEntryResult!168)

(assert (=> b!35414 (= e!22366 (MissingZero!168 (index!2796 lt!12983)))))

(declare-fun b!35415 () Bool)

(declare-fun c!4021 () Bool)

(assert (=> b!35415 (= c!4021 (= lt!12984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!35415 (= e!22367 e!22366)))

(declare-fun b!35416 () Bool)

(declare-fun lt!12982 () SeekEntryResult!168)

(assert (=> b!35416 (= e!22366 (ite ((_ is MissingVacant!168) lt!12982) (MissingZero!168 (index!2797 lt!12982)) lt!12982))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2443 (_ BitVec 32)) SeekEntryResult!168)

(assert (=> b!35416 (= lt!12982 (seekKeyOrZeroReturnVacant!0 (x!7012 lt!12983) (index!2796 lt!12983) (index!2796 lt!12983) k0!1304 _keys!1833 mask!2294))))

(assert (= (and d!5307 c!4023) b!35413))

(assert (= (and d!5307 (not c!4023)) b!35412))

(assert (= (and b!35412 c!4022) b!35411))

(assert (= (and b!35412 (not c!4022)) b!35415))

(assert (= (and b!35415 c!4021) b!35414))

(assert (= (and b!35415 (not c!4021)) b!35416))

(declare-fun m!28493 () Bool)

(assert (=> b!35412 m!28493))

(declare-fun m!28495 () Bool)

(assert (=> d!5307 m!28495))

(declare-fun m!28497 () Bool)

(assert (=> d!5307 m!28497))

(assert (=> d!5307 m!28497))

(declare-fun m!28499 () Bool)

(assert (=> d!5307 m!28499))

(assert (=> d!5307 m!28445))

(declare-fun m!28501 () Bool)

(assert (=> b!35416 m!28501))

(assert (=> b!35329 d!5307))

(declare-fun d!5309 () Bool)

(assert (=> d!5309 (= (validKeyInArray!0 (select (arr!1168 _keys!1833) (index!2795 lt!12961))) (and (not (= (select (arr!1168 _keys!1833) (index!2795 lt!12961)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1168 _keys!1833) (index!2795 lt!12961)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35333 d!5309))

(declare-fun d!5311 () Bool)

(declare-fun e!22374 () Bool)

(assert (=> d!5311 e!22374))

(declare-fun res!21499 () Bool)

(assert (=> d!5311 (=> res!21499 e!22374)))

(declare-fun lt!12994 () Bool)

(assert (=> d!5311 (= res!21499 (not lt!12994))))

(declare-fun lt!12996 () Bool)

(assert (=> d!5311 (= lt!12994 lt!12996)))

(declare-fun lt!12995 () Unit!779)

(declare-fun e!22373 () Unit!779)

(assert (=> d!5311 (= lt!12995 e!22373)))

(declare-fun c!4026 () Bool)

(assert (=> d!5311 (= c!4026 lt!12996)))

(declare-fun containsKey!36 (List!947 (_ BitVec 64)) Bool)

(assert (=> d!5311 (= lt!12996 (containsKey!36 (toList!475 (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!5311 (= (contains!419 (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!12994)))

(declare-fun b!35423 () Bool)

(declare-fun lt!12997 () Unit!779)

(assert (=> b!35423 (= e!22373 lt!12997)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!33 (List!947 (_ BitVec 64)) Unit!779)

(assert (=> b!35423 (= lt!12997 (lemmaContainsKeyImpliesGetValueByKeyDefined!33 (toList!475 (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!78 0))(
  ( (Some!77 (v!1933 V!1981)) (None!76) )
))
(declare-fun isDefined!34 (Option!78) Bool)

(declare-fun getValueByKey!72 (List!947 (_ BitVec 64)) Option!78)

(assert (=> b!35423 (isDefined!34 (getValueByKey!72 (toList!475 (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!35424 () Bool)

(declare-fun Unit!781 () Unit!779)

(assert (=> b!35424 (= e!22373 Unit!781)))

(declare-fun b!35425 () Bool)

(assert (=> b!35425 (= e!22374 (isDefined!34 (getValueByKey!72 (toList!475 (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!5311 c!4026) b!35423))

(assert (= (and d!5311 (not c!4026)) b!35424))

(assert (= (and d!5311 (not res!21499)) b!35425))

(declare-fun m!28503 () Bool)

(assert (=> d!5311 m!28503))

(declare-fun m!28505 () Bool)

(assert (=> b!35423 m!28505))

(declare-fun m!28507 () Bool)

(assert (=> b!35423 m!28507))

(assert (=> b!35423 m!28507))

(declare-fun m!28509 () Bool)

(assert (=> b!35423 m!28509))

(assert (=> b!35425 m!28507))

(assert (=> b!35425 m!28507))

(assert (=> b!35425 m!28509))

(assert (=> b!35337 d!5311))

(declare-fun bm!2796 () Bool)

(declare-fun call!2801 () ListLongMap!919)

(declare-fun call!2805 () ListLongMap!919)

(assert (=> bm!2796 (= call!2801 call!2805)))

(declare-fun b!35468 () Bool)

(declare-fun e!22410 () Bool)

(declare-fun e!22404 () Bool)

(assert (=> b!35468 (= e!22410 e!22404)))

(declare-fun res!21525 () Bool)

(assert (=> b!35468 (=> (not res!21525) (not e!22404))))

(declare-fun lt!13042 () ListLongMap!919)

(assert (=> b!35468 (= res!21525 (contains!419 lt!13042 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!35468 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1269 _keys!1833)))))

(declare-fun b!35469 () Bool)

(declare-fun e!22406 () Bool)

(declare-fun e!22412 () Bool)

(assert (=> b!35469 (= e!22406 e!22412)))

(declare-fun res!21523 () Bool)

(declare-fun call!2802 () Bool)

(assert (=> b!35469 (= res!21523 call!2802)))

(assert (=> b!35469 (=> (not res!21523) (not e!22412))))

(declare-fun b!35470 () Bool)

(declare-fun e!22402 () ListLongMap!919)

(declare-fun call!2803 () ListLongMap!919)

(declare-fun +!58 (ListLongMap!919 tuple2!1338) ListLongMap!919)

(assert (=> b!35470 (= e!22402 (+!58 call!2803 (tuple2!1339 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!35471 () Bool)

(declare-fun res!21519 () Bool)

(declare-fun e!22405 () Bool)

(assert (=> b!35471 (=> (not res!21519) (not e!22405))))

(assert (=> b!35471 (= res!21519 e!22410)))

(declare-fun res!21518 () Bool)

(assert (=> b!35471 (=> res!21518 e!22410)))

(declare-fun e!22403 () Bool)

(assert (=> b!35471 (= res!21518 (not e!22403))))

(declare-fun res!21526 () Bool)

(assert (=> b!35471 (=> (not res!21526) (not e!22403))))

(assert (=> b!35471 (= res!21526 (bvslt #b00000000000000000000000000000000 (size!1269 _keys!1833)))))

(declare-fun b!35473 () Bool)

(declare-fun e!22413 () ListLongMap!919)

(declare-fun call!2804 () ListLongMap!919)

(assert (=> b!35473 (= e!22413 call!2804)))

(declare-fun b!35474 () Bool)

(declare-fun call!2800 () ListLongMap!919)

(assert (=> b!35474 (= e!22413 call!2800)))

(declare-fun b!35475 () Bool)

(declare-fun apply!40 (ListLongMap!919 (_ BitVec 64)) V!1981)

(declare-fun get!603 (ValueCell!609 V!1981) V!1981)

(declare-fun dynLambda!157 (Int (_ BitVec 64)) V!1981)

(assert (=> b!35475 (= e!22404 (= (apply!40 lt!13042 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)) (get!603 (select (arr!1167 _values!1501) #b00000000000000000000000000000000) (dynLambda!157 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1268 _values!1501)))))

(assert (=> b!35475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1269 _keys!1833)))))

(declare-fun b!35476 () Bool)

(declare-fun c!4044 () Bool)

(assert (=> b!35476 (= c!4044 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!22401 () ListLongMap!919)

(assert (=> b!35476 (= e!22401 e!22413)))

(declare-fun b!35477 () Bool)

(assert (=> b!35477 (= e!22402 e!22401)))

(declare-fun c!4039 () Bool)

(assert (=> b!35477 (= c!4039 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!35478 () Bool)

(declare-fun e!22407 () Bool)

(declare-fun e!22411 () Bool)

(assert (=> b!35478 (= e!22407 e!22411)))

(declare-fun res!21522 () Bool)

(declare-fun call!2799 () Bool)

(assert (=> b!35478 (= res!21522 call!2799)))

(assert (=> b!35478 (=> (not res!21522) (not e!22411))))

(declare-fun b!35479 () Bool)

(assert (=> b!35479 (= e!22403 (validKeyInArray!0 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35480 () Bool)

(assert (=> b!35480 (= e!22406 (not call!2802))))

(declare-fun b!35481 () Bool)

(assert (=> b!35481 (= e!22405 e!22407)))

(declare-fun c!4042 () Bool)

(assert (=> b!35481 (= c!4042 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!2797 () Bool)

(assert (=> bm!2797 (= call!2799 (contains!419 lt!13042 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2798 () Bool)

(assert (=> bm!2798 (= call!2802 (contains!419 lt!13042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!35482 () Bool)

(declare-fun e!22409 () Unit!779)

(declare-fun lt!13044 () Unit!779)

(assert (=> b!35482 (= e!22409 lt!13044)))

(declare-fun lt!13054 () ListLongMap!919)

(declare-fun getCurrentListMapNoExtraKeys!27 (array!2443 array!2441 (_ BitVec 32) (_ BitVec 32) V!1981 V!1981 (_ BitVec 32) Int) ListLongMap!919)

(assert (=> b!35482 (= lt!13054 (getCurrentListMapNoExtraKeys!27 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13043 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13043 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13062 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13062 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13047 () Unit!779)

(declare-fun addStillContains!25 (ListLongMap!919 (_ BitVec 64) V!1981 (_ BitVec 64)) Unit!779)

(assert (=> b!35482 (= lt!13047 (addStillContains!25 lt!13054 lt!13043 zeroValue!1443 lt!13062))))

(assert (=> b!35482 (contains!419 (+!58 lt!13054 (tuple2!1339 lt!13043 zeroValue!1443)) lt!13062)))

(declare-fun lt!13055 () Unit!779)

(assert (=> b!35482 (= lt!13055 lt!13047)))

(declare-fun lt!13051 () ListLongMap!919)

(assert (=> b!35482 (= lt!13051 (getCurrentListMapNoExtraKeys!27 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13049 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13049 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13058 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13058 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13053 () Unit!779)

(declare-fun addApplyDifferent!25 (ListLongMap!919 (_ BitVec 64) V!1981 (_ BitVec 64)) Unit!779)

(assert (=> b!35482 (= lt!13053 (addApplyDifferent!25 lt!13051 lt!13049 minValue!1443 lt!13058))))

(assert (=> b!35482 (= (apply!40 (+!58 lt!13051 (tuple2!1339 lt!13049 minValue!1443)) lt!13058) (apply!40 lt!13051 lt!13058))))

(declare-fun lt!13050 () Unit!779)

(assert (=> b!35482 (= lt!13050 lt!13053)))

(declare-fun lt!13052 () ListLongMap!919)

(assert (=> b!35482 (= lt!13052 (getCurrentListMapNoExtraKeys!27 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13046 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13046 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13063 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13063 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13057 () Unit!779)

(assert (=> b!35482 (= lt!13057 (addApplyDifferent!25 lt!13052 lt!13046 zeroValue!1443 lt!13063))))

(assert (=> b!35482 (= (apply!40 (+!58 lt!13052 (tuple2!1339 lt!13046 zeroValue!1443)) lt!13063) (apply!40 lt!13052 lt!13063))))

(declare-fun lt!13061 () Unit!779)

(assert (=> b!35482 (= lt!13061 lt!13057)))

(declare-fun lt!13060 () ListLongMap!919)

(assert (=> b!35482 (= lt!13060 (getCurrentListMapNoExtraKeys!27 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13059 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13059 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13056 () (_ BitVec 64))

(assert (=> b!35482 (= lt!13056 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!35482 (= lt!13044 (addApplyDifferent!25 lt!13060 lt!13059 minValue!1443 lt!13056))))

(assert (=> b!35482 (= (apply!40 (+!58 lt!13060 (tuple2!1339 lt!13059 minValue!1443)) lt!13056) (apply!40 lt!13060 lt!13056))))

(declare-fun bm!2799 () Bool)

(assert (=> bm!2799 (= call!2800 call!2803)))

(declare-fun b!35483 () Bool)

(declare-fun res!21524 () Bool)

(assert (=> b!35483 (=> (not res!21524) (not e!22405))))

(assert (=> b!35483 (= res!21524 e!22406)))

(declare-fun c!4043 () Bool)

(assert (=> b!35483 (= c!4043 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!4041 () Bool)

(declare-fun bm!2800 () Bool)

(assert (=> bm!2800 (= call!2803 (+!58 (ite c!4041 call!2805 (ite c!4039 call!2801 call!2804)) (ite (or c!4041 c!4039) (tuple2!1339 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1339 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun d!5313 () Bool)

(assert (=> d!5313 e!22405))

(declare-fun res!21521 () Bool)

(assert (=> d!5313 (=> (not res!21521) (not e!22405))))

(assert (=> d!5313 (= res!21521 (or (bvsge #b00000000000000000000000000000000 (size!1269 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1269 _keys!1833)))))))

(declare-fun lt!13045 () ListLongMap!919)

(assert (=> d!5313 (= lt!13042 lt!13045)))

(declare-fun lt!13048 () Unit!779)

(assert (=> d!5313 (= lt!13048 e!22409)))

(declare-fun c!4040 () Bool)

(declare-fun e!22408 () Bool)

(assert (=> d!5313 (= c!4040 e!22408)))

(declare-fun res!21520 () Bool)

(assert (=> d!5313 (=> (not res!21520) (not e!22408))))

(assert (=> d!5313 (= res!21520 (bvslt #b00000000000000000000000000000000 (size!1269 _keys!1833)))))

(assert (=> d!5313 (= lt!13045 e!22402)))

(assert (=> d!5313 (= c!4041 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5313 (validMask!0 mask!2294)))

(assert (=> d!5313 (= (getCurrentListMap!296 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!13042)))

(declare-fun b!35472 () Bool)

(assert (=> b!35472 (= e!22401 call!2800)))

(declare-fun b!35484 () Bool)

(assert (=> b!35484 (= e!22408 (validKeyInArray!0 (select (arr!1168 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2801 () Bool)

(assert (=> bm!2801 (= call!2805 (getCurrentListMapNoExtraKeys!27 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun bm!2802 () Bool)

(assert (=> bm!2802 (= call!2804 call!2801)))

(declare-fun b!35485 () Bool)

(declare-fun Unit!782 () Unit!779)

(assert (=> b!35485 (= e!22409 Unit!782)))

(declare-fun b!35486 () Bool)

(assert (=> b!35486 (= e!22411 (= (apply!40 lt!13042 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!35487 () Bool)

(assert (=> b!35487 (= e!22407 (not call!2799))))

(declare-fun b!35488 () Bool)

(assert (=> b!35488 (= e!22412 (= (apply!40 lt!13042 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(assert (= (and d!5313 c!4041) b!35470))

(assert (= (and d!5313 (not c!4041)) b!35477))

(assert (= (and b!35477 c!4039) b!35472))

(assert (= (and b!35477 (not c!4039)) b!35476))

(assert (= (and b!35476 c!4044) b!35474))

(assert (= (and b!35476 (not c!4044)) b!35473))

(assert (= (or b!35474 b!35473) bm!2802))

(assert (= (or b!35472 bm!2802) bm!2796))

(assert (= (or b!35472 b!35474) bm!2799))

(assert (= (or b!35470 bm!2796) bm!2801))

(assert (= (or b!35470 bm!2799) bm!2800))

(assert (= (and d!5313 res!21520) b!35484))

(assert (= (and d!5313 c!4040) b!35482))

(assert (= (and d!5313 (not c!4040)) b!35485))

(assert (= (and d!5313 res!21521) b!35471))

(assert (= (and b!35471 res!21526) b!35479))

(assert (= (and b!35471 (not res!21518)) b!35468))

(assert (= (and b!35468 res!21525) b!35475))

(assert (= (and b!35471 res!21519) b!35483))

(assert (= (and b!35483 c!4043) b!35469))

(assert (= (and b!35483 (not c!4043)) b!35480))

(assert (= (and b!35469 res!21523) b!35488))

(assert (= (or b!35469 b!35480) bm!2798))

(assert (= (and b!35483 res!21524) b!35481))

(assert (= (and b!35481 c!4042) b!35478))

(assert (= (and b!35481 (not c!4042)) b!35487))

(assert (= (and b!35478 res!21522) b!35486))

(assert (= (or b!35478 b!35487) bm!2797))

(declare-fun b_lambda!1727 () Bool)

(assert (=> (not b_lambda!1727) (not b!35475)))

(declare-fun t!3660 () Bool)

(declare-fun tb!697 () Bool)

(assert (=> (and start!4520 (= defaultEntry!1504 defaultEntry!1504) t!3660) tb!697))

(declare-fun result!1197 () Bool)

(assert (=> tb!697 (= result!1197 tp_is_empty!1617)))

(assert (=> b!35475 t!3660))

(declare-fun b_and!2093 () Bool)

(assert (= b_and!2089 (and (=> t!3660 result!1197) b_and!2093)))

(assert (=> d!5313 m!28445))

(assert (=> b!35484 m!28477))

(assert (=> b!35484 m!28477))

(assert (=> b!35484 m!28479))

(declare-fun m!28511 () Bool)

(assert (=> bm!2801 m!28511))

(declare-fun m!28513 () Bool)

(assert (=> bm!2797 m!28513))

(assert (=> b!35479 m!28477))

(assert (=> b!35479 m!28477))

(assert (=> b!35479 m!28479))

(declare-fun m!28515 () Bool)

(assert (=> bm!2798 m!28515))

(assert (=> b!35482 m!28511))

(declare-fun m!28517 () Bool)

(assert (=> b!35482 m!28517))

(declare-fun m!28519 () Bool)

(assert (=> b!35482 m!28519))

(assert (=> b!35482 m!28477))

(declare-fun m!28521 () Bool)

(assert (=> b!35482 m!28521))

(declare-fun m!28523 () Bool)

(assert (=> b!35482 m!28523))

(assert (=> b!35482 m!28519))

(declare-fun m!28525 () Bool)

(assert (=> b!35482 m!28525))

(declare-fun m!28527 () Bool)

(assert (=> b!35482 m!28527))

(assert (=> b!35482 m!28521))

(declare-fun m!28529 () Bool)

(assert (=> b!35482 m!28529))

(declare-fun m!28531 () Bool)

(assert (=> b!35482 m!28531))

(declare-fun m!28533 () Bool)

(assert (=> b!35482 m!28533))

(declare-fun m!28535 () Bool)

(assert (=> b!35482 m!28535))

(declare-fun m!28537 () Bool)

(assert (=> b!35482 m!28537))

(declare-fun m!28539 () Bool)

(assert (=> b!35482 m!28539))

(assert (=> b!35482 m!28517))

(declare-fun m!28541 () Bool)

(assert (=> b!35482 m!28541))

(declare-fun m!28543 () Bool)

(assert (=> b!35482 m!28543))

(declare-fun m!28545 () Bool)

(assert (=> b!35482 m!28545))

(assert (=> b!35482 m!28529))

(declare-fun m!28547 () Bool)

(assert (=> b!35486 m!28547))

(declare-fun m!28549 () Bool)

(assert (=> bm!2800 m!28549))

(declare-fun m!28551 () Bool)

(assert (=> b!35488 m!28551))

(declare-fun m!28553 () Bool)

(assert (=> b!35475 m!28553))

(assert (=> b!35475 m!28553))

(declare-fun m!28555 () Bool)

(assert (=> b!35475 m!28555))

(declare-fun m!28557 () Bool)

(assert (=> b!35475 m!28557))

(assert (=> b!35475 m!28555))

(assert (=> b!35475 m!28477))

(declare-fun m!28559 () Bool)

(assert (=> b!35475 m!28559))

(assert (=> b!35475 m!28477))

(declare-fun m!28561 () Bool)

(assert (=> b!35470 m!28561))

(assert (=> b!35468 m!28477))

(assert (=> b!35468 m!28477))

(declare-fun m!28563 () Bool)

(assert (=> b!35468 m!28563))

(assert (=> b!35337 d!5313))

(declare-fun d!5315 () Bool)

(assert (=> d!5315 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35335 d!5315))

(declare-fun d!5317 () Bool)

(declare-fun res!21531 () Bool)

(declare-fun e!22418 () Bool)

(assert (=> d!5317 (=> res!21531 e!22418)))

(assert (=> d!5317 (= res!21531 (= (select (arr!1168 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5317 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!22418)))

(declare-fun b!35495 () Bool)

(declare-fun e!22419 () Bool)

(assert (=> b!35495 (= e!22418 e!22419)))

(declare-fun res!21532 () Bool)

(assert (=> b!35495 (=> (not res!21532) (not e!22419))))

(assert (=> b!35495 (= res!21532 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1269 _keys!1833)))))

(declare-fun b!35496 () Bool)

(assert (=> b!35496 (= e!22419 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5317 (not res!21531)) b!35495))

(assert (= (and b!35495 res!21532) b!35496))

(assert (=> d!5317 m!28477))

(declare-fun m!28565 () Bool)

(assert (=> b!35496 m!28565))

(assert (=> b!35334 d!5317))

(declare-fun d!5319 () Bool)

(assert (=> d!5319 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4520 d!5319))

(declare-fun d!5321 () Bool)

(assert (=> d!5321 (= (array_inv!773 _values!1501) (bvsge (size!1268 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4520 d!5321))

(declare-fun d!5323 () Bool)

(assert (=> d!5323 (= (array_inv!774 _keys!1833) (bvsge (size!1269 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4520 d!5323))

(declare-fun b!35503 () Bool)

(declare-fun e!22425 () Bool)

(assert (=> b!35503 (= e!22425 tp_is_empty!1617)))

(declare-fun condMapEmpty!1981 () Bool)

(declare-fun mapDefault!1981 () ValueCell!609)

(assert (=> mapNonEmpty!1975 (= condMapEmpty!1981 (= mapRest!1975 ((as const (Array (_ BitVec 32) ValueCell!609)) mapDefault!1981)))))

(declare-fun e!22424 () Bool)

(declare-fun mapRes!1981 () Bool)

(assert (=> mapNonEmpty!1975 (= tp!5230 (and e!22424 mapRes!1981))))

(declare-fun b!35504 () Bool)

(assert (=> b!35504 (= e!22424 tp_is_empty!1617)))

(declare-fun mapNonEmpty!1981 () Bool)

(declare-fun tp!5239 () Bool)

(assert (=> mapNonEmpty!1981 (= mapRes!1981 (and tp!5239 e!22425))))

(declare-fun mapRest!1981 () (Array (_ BitVec 32) ValueCell!609))

(declare-fun mapKey!1981 () (_ BitVec 32))

(declare-fun mapValue!1981 () ValueCell!609)

(assert (=> mapNonEmpty!1981 (= mapRest!1975 (store mapRest!1981 mapKey!1981 mapValue!1981))))

(declare-fun mapIsEmpty!1981 () Bool)

(assert (=> mapIsEmpty!1981 mapRes!1981))

(assert (= (and mapNonEmpty!1975 condMapEmpty!1981) mapIsEmpty!1981))

(assert (= (and mapNonEmpty!1975 (not condMapEmpty!1981)) mapNonEmpty!1981))

(assert (= (and mapNonEmpty!1981 ((_ is ValueCellFull!609) mapValue!1981)) b!35503))

(assert (= (and mapNonEmpty!1975 ((_ is ValueCellFull!609) mapDefault!1981)) b!35504))

(declare-fun m!28567 () Bool)

(assert (=> mapNonEmpty!1981 m!28567))

(declare-fun b_lambda!1729 () Bool)

(assert (= b_lambda!1727 (or (and start!4520 b_free!1263) b_lambda!1729)))

(check-sat (not b!35423) (not b!35488) (not b_next!1263) (not b!35383) (not b!35425) (not b!35484) (not b!35382) (not b_lambda!1729) (not b!35496) (not b!35386) tp_is_empty!1617 (not b!35395) (not b!35479) (not d!5311) b_and!2093 (not bm!2798) (not bm!2778) (not b!35482) (not bm!2797) (not d!5307) (not b!35416) (not bm!2781) (not b!35486) (not b!35470) (not d!5313) (not mapNonEmpty!1981) (not b!35396) (not b!35475) (not bm!2800) (not bm!2801) (not b!35468))
(check-sat b_and!2093 (not b_next!1263))

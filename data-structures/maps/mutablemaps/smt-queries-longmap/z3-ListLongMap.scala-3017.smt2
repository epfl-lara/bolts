; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42446 () Bool)

(assert start!42446)

(declare-fun b_free!11913 () Bool)

(declare-fun b_next!11913 () Bool)

(assert (=> start!42446 (= b_free!11913 (not b_next!11913))))

(declare-fun tp!41772 () Bool)

(declare-fun b_and!20387 () Bool)

(assert (=> start!42446 (= tp!41772 b_and!20387)))

(declare-fun b!473333 () Bool)

(declare-fun e!277712 () Bool)

(declare-datatypes ((array!30401 0))(
  ( (array!30402 (arr!14617 (Array (_ BitVec 32) (_ BitVec 64))) (size!14969 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30401)

(assert (=> b!473333 (= e!277712 (bvsle #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-datatypes ((V!18893 0))(
  ( (V!18894 (val!6715 Int)) )
))
(declare-datatypes ((tuple2!8844 0))(
  ( (tuple2!8845 (_1!4432 (_ BitVec 64)) (_2!4432 V!18893)) )
))
(declare-datatypes ((List!8955 0))(
  ( (Nil!8952) (Cons!8951 (h!9807 tuple2!8844) (t!14933 List!8955)) )
))
(declare-datatypes ((ListLongMap!7771 0))(
  ( (ListLongMap!7772 (toList!3901 List!8955)) )
))
(declare-fun lt!215197 () ListLongMap!7771)

(declare-fun lt!215193 () tuple2!8844)

(declare-fun minValueBefore!38 () V!18893)

(declare-fun +!1708 (ListLongMap!7771 tuple2!8844) ListLongMap!7771)

(assert (=> b!473333 (= (+!1708 lt!215197 lt!215193) (+!1708 (+!1708 lt!215197 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215193))))

(declare-fun minValueAfter!38 () V!18893)

(assert (=> b!473333 (= lt!215193 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13923 0))(
  ( (Unit!13924) )
))
(declare-fun lt!215194 () Unit!13923)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!145 (ListLongMap!7771 (_ BitVec 64) V!18893 V!18893) Unit!13923)

(assert (=> b!473333 (= lt!215194 (addSameAsAddTwiceSameKeyDiffValues!145 lt!215197 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215195 () ListLongMap!7771)

(declare-fun zeroValue!794 () V!18893)

(assert (=> b!473333 (= lt!215197 (+!1708 lt!215195 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215196 () ListLongMap!7771)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6327 0))(
  ( (ValueCellFull!6327 (v!9002 V!18893)) (EmptyCell!6327) )
))
(declare-datatypes ((array!30403 0))(
  ( (array!30404 (arr!14618 (Array (_ BitVec 32) ValueCell!6327)) (size!14970 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30403)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2245 (array!30401 array!30403 (_ BitVec 32) (_ BitVec 32) V!18893 V!18893 (_ BitVec 32) Int) ListLongMap!7771)

(assert (=> b!473333 (= lt!215196 (getCurrentListMap!2245 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215192 () ListLongMap!7771)

(assert (=> b!473333 (= lt!215192 (getCurrentListMap!2245 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473334 () Bool)

(declare-fun e!277711 () Bool)

(declare-fun tp_is_empty!13341 () Bool)

(assert (=> b!473334 (= e!277711 tp_is_empty!13341)))

(declare-fun mapNonEmpty!21724 () Bool)

(declare-fun mapRes!21724 () Bool)

(declare-fun tp!41773 () Bool)

(assert (=> mapNonEmpty!21724 (= mapRes!21724 (and tp!41773 e!277711))))

(declare-fun mapRest!21724 () (Array (_ BitVec 32) ValueCell!6327))

(declare-fun mapValue!21724 () ValueCell!6327)

(declare-fun mapKey!21724 () (_ BitVec 32))

(assert (=> mapNonEmpty!21724 (= (arr!14618 _values!833) (store mapRest!21724 mapKey!21724 mapValue!21724))))

(declare-fun b!473335 () Bool)

(declare-fun res!282810 () Bool)

(declare-fun e!277713 () Bool)

(assert (=> b!473335 (=> (not res!282810) (not e!277713))))

(assert (=> b!473335 (= res!282810 (and (= (size!14970 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14969 _keys!1025) (size!14970 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473336 () Bool)

(declare-fun e!277714 () Bool)

(declare-fun e!277716 () Bool)

(assert (=> b!473336 (= e!277714 (and e!277716 mapRes!21724))))

(declare-fun condMapEmpty!21724 () Bool)

(declare-fun mapDefault!21724 () ValueCell!6327)

(assert (=> b!473336 (= condMapEmpty!21724 (= (arr!14618 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6327)) mapDefault!21724)))))

(declare-fun res!282808 () Bool)

(assert (=> start!42446 (=> (not res!282808) (not e!277713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42446 (= res!282808 (validMask!0 mask!1365))))

(assert (=> start!42446 e!277713))

(assert (=> start!42446 tp_is_empty!13341))

(assert (=> start!42446 tp!41772))

(assert (=> start!42446 true))

(declare-fun array_inv!10538 (array!30401) Bool)

(assert (=> start!42446 (array_inv!10538 _keys!1025)))

(declare-fun array_inv!10539 (array!30403) Bool)

(assert (=> start!42446 (and (array_inv!10539 _values!833) e!277714)))

(declare-fun b!473337 () Bool)

(declare-fun res!282807 () Bool)

(assert (=> b!473337 (=> (not res!282807) (not e!277713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30401 (_ BitVec 32)) Bool)

(assert (=> b!473337 (= res!282807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473338 () Bool)

(assert (=> b!473338 (= e!277713 (not e!277712))))

(declare-fun res!282811 () Bool)

(assert (=> b!473338 (=> res!282811 e!277712)))

(assert (=> b!473338 (= res!282811 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215198 () ListLongMap!7771)

(assert (=> b!473338 (= lt!215195 lt!215198)))

(declare-fun lt!215191 () Unit!13923)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!253 (array!30401 array!30403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18893 V!18893 V!18893 V!18893 (_ BitVec 32) Int) Unit!13923)

(assert (=> b!473338 (= lt!215191 (lemmaNoChangeToArrayThenSameMapNoExtras!253 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2058 (array!30401 array!30403 (_ BitVec 32) (_ BitVec 32) V!18893 V!18893 (_ BitVec 32) Int) ListLongMap!7771)

(assert (=> b!473338 (= lt!215198 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473338 (= lt!215195 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21724 () Bool)

(assert (=> mapIsEmpty!21724 mapRes!21724))

(declare-fun b!473339 () Bool)

(declare-fun res!282809 () Bool)

(assert (=> b!473339 (=> (not res!282809) (not e!277713))))

(declare-datatypes ((List!8956 0))(
  ( (Nil!8953) (Cons!8952 (h!9808 (_ BitVec 64)) (t!14934 List!8956)) )
))
(declare-fun arrayNoDuplicates!0 (array!30401 (_ BitVec 32) List!8956) Bool)

(assert (=> b!473339 (= res!282809 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8953))))

(declare-fun b!473340 () Bool)

(assert (=> b!473340 (= e!277716 tp_is_empty!13341)))

(assert (= (and start!42446 res!282808) b!473335))

(assert (= (and b!473335 res!282810) b!473337))

(assert (= (and b!473337 res!282807) b!473339))

(assert (= (and b!473339 res!282809) b!473338))

(assert (= (and b!473338 (not res!282811)) b!473333))

(assert (= (and b!473336 condMapEmpty!21724) mapIsEmpty!21724))

(assert (= (and b!473336 (not condMapEmpty!21724)) mapNonEmpty!21724))

(get-info :version)

(assert (= (and mapNonEmpty!21724 ((_ is ValueCellFull!6327) mapValue!21724)) b!473334))

(assert (= (and b!473336 ((_ is ValueCellFull!6327) mapDefault!21724)) b!473340))

(assert (= start!42446 b!473336))

(declare-fun m!455449 () Bool)

(assert (=> mapNonEmpty!21724 m!455449))

(declare-fun m!455451 () Bool)

(assert (=> start!42446 m!455451))

(declare-fun m!455453 () Bool)

(assert (=> start!42446 m!455453))

(declare-fun m!455455 () Bool)

(assert (=> start!42446 m!455455))

(declare-fun m!455457 () Bool)

(assert (=> b!473339 m!455457))

(declare-fun m!455459 () Bool)

(assert (=> b!473337 m!455459))

(declare-fun m!455461 () Bool)

(assert (=> b!473338 m!455461))

(declare-fun m!455463 () Bool)

(assert (=> b!473338 m!455463))

(declare-fun m!455465 () Bool)

(assert (=> b!473338 m!455465))

(declare-fun m!455467 () Bool)

(assert (=> b!473333 m!455467))

(declare-fun m!455469 () Bool)

(assert (=> b!473333 m!455469))

(declare-fun m!455471 () Bool)

(assert (=> b!473333 m!455471))

(declare-fun m!455473 () Bool)

(assert (=> b!473333 m!455473))

(declare-fun m!455475 () Bool)

(assert (=> b!473333 m!455475))

(declare-fun m!455477 () Bool)

(assert (=> b!473333 m!455477))

(declare-fun m!455479 () Bool)

(assert (=> b!473333 m!455479))

(assert (=> b!473333 m!455467))

(check-sat tp_is_empty!13341 (not b!473339) (not mapNonEmpty!21724) (not b!473338) (not b!473333) (not b!473337) (not b_next!11913) (not start!42446) b_and!20387)
(check-sat b_and!20387 (not b_next!11913))
(get-model)

(declare-fun b!473374 () Bool)

(declare-fun e!277742 () Bool)

(declare-fun call!30492 () Bool)

(assert (=> b!473374 (= e!277742 call!30492)))

(declare-fun bm!30489 () Bool)

(assert (=> bm!30489 (= call!30492 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!473375 () Bool)

(declare-fun e!277743 () Bool)

(assert (=> b!473375 (= e!277743 call!30492)))

(declare-fun b!473376 () Bool)

(assert (=> b!473376 (= e!277742 e!277743)))

(declare-fun lt!215229 () (_ BitVec 64))

(assert (=> b!473376 (= lt!215229 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215231 () Unit!13923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30401 (_ BitVec 64) (_ BitVec 32)) Unit!13923)

(assert (=> b!473376 (= lt!215231 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!215229 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!473376 (arrayContainsKey!0 _keys!1025 lt!215229 #b00000000000000000000000000000000)))

(declare-fun lt!215230 () Unit!13923)

(assert (=> b!473376 (= lt!215230 lt!215231)))

(declare-fun res!282831 () Bool)

(declare-datatypes ((SeekEntryResult!3544 0))(
  ( (MissingZero!3544 (index!16355 (_ BitVec 32))) (Found!3544 (index!16356 (_ BitVec 32))) (Intermediate!3544 (undefined!4356 Bool) (index!16357 (_ BitVec 32)) (x!44407 (_ BitVec 32))) (Undefined!3544) (MissingVacant!3544 (index!16358 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30401 (_ BitVec 32)) SeekEntryResult!3544)

(assert (=> b!473376 (= res!282831 (= (seekEntryOrOpen!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3544 #b00000000000000000000000000000000)))))

(assert (=> b!473376 (=> (not res!282831) (not e!277743))))

(declare-fun b!473373 () Bool)

(declare-fun e!277741 () Bool)

(assert (=> b!473373 (= e!277741 e!277742)))

(declare-fun c!56976 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!473373 (= c!56976 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75375 () Bool)

(declare-fun res!282832 () Bool)

(assert (=> d!75375 (=> res!282832 e!277741)))

(assert (=> d!75375 (= res!282832 (bvsge #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> d!75375 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!277741)))

(assert (= (and d!75375 (not res!282832)) b!473373))

(assert (= (and b!473373 c!56976) b!473376))

(assert (= (and b!473373 (not c!56976)) b!473374))

(assert (= (and b!473376 res!282831) b!473375))

(assert (= (or b!473375 b!473374) bm!30489))

(declare-fun m!455513 () Bool)

(assert (=> bm!30489 m!455513))

(declare-fun m!455515 () Bool)

(assert (=> b!473376 m!455515))

(declare-fun m!455517 () Bool)

(assert (=> b!473376 m!455517))

(declare-fun m!455519 () Bool)

(assert (=> b!473376 m!455519))

(assert (=> b!473376 m!455515))

(declare-fun m!455521 () Bool)

(assert (=> b!473376 m!455521))

(assert (=> b!473373 m!455515))

(assert (=> b!473373 m!455515))

(declare-fun m!455523 () Bool)

(assert (=> b!473373 m!455523))

(assert (=> b!473337 d!75375))

(declare-fun b!473419 () Bool)

(declare-fun e!277774 () ListLongMap!7771)

(declare-fun call!30508 () ListLongMap!7771)

(assert (=> b!473419 (= e!277774 call!30508)))

(declare-fun b!473420 () Bool)

(declare-fun e!277780 () Bool)

(declare-fun call!30513 () Bool)

(assert (=> b!473420 (= e!277780 (not call!30513))))

(declare-fun b!473421 () Bool)

(declare-fun lt!215290 () ListLongMap!7771)

(declare-fun e!277776 () Bool)

(declare-fun apply!332 (ListLongMap!7771 (_ BitVec 64)) V!18893)

(declare-fun get!7120 (ValueCell!6327 V!18893) V!18893)

(declare-fun dynLambda!924 (Int (_ BitVec 64)) V!18893)

(assert (=> b!473421 (= e!277776 (= (apply!332 lt!215290 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)) (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!473421 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14970 _values!833)))))

(assert (=> b!473421 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun bm!30504 () Bool)

(declare-fun contains!2551 (ListLongMap!7771 (_ BitVec 64)) Bool)

(assert (=> bm!30504 (= call!30513 (contains!2551 lt!215290 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!473422 () Bool)

(declare-fun e!277772 () ListLongMap!7771)

(declare-fun call!30511 () ListLongMap!7771)

(assert (=> b!473422 (= e!277772 call!30511)))

(declare-fun b!473423 () Bool)

(declare-fun e!277771 () ListLongMap!7771)

(declare-fun call!30510 () ListLongMap!7771)

(assert (=> b!473423 (= e!277771 (+!1708 call!30510 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!473424 () Bool)

(declare-fun e!277775 () Unit!13923)

(declare-fun Unit!13925 () Unit!13923)

(assert (=> b!473424 (= e!277775 Unit!13925)))

(declare-fun b!473425 () Bool)

(declare-fun e!277779 () Bool)

(assert (=> b!473425 (= e!277779 (= (apply!332 lt!215290 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!473426 () Bool)

(assert (=> b!473426 (= e!277772 call!30508)))

(declare-fun bm!30505 () Bool)

(declare-fun call!30509 () ListLongMap!7771)

(assert (=> bm!30505 (= call!30509 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473427 () Bool)

(declare-fun lt!215276 () Unit!13923)

(assert (=> b!473427 (= e!277775 lt!215276)))

(declare-fun lt!215281 () ListLongMap!7771)

(assert (=> b!473427 (= lt!215281 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215283 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215283 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215285 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215285 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215282 () Unit!13923)

(declare-fun addStillContains!291 (ListLongMap!7771 (_ BitVec 64) V!18893 (_ BitVec 64)) Unit!13923)

(assert (=> b!473427 (= lt!215282 (addStillContains!291 lt!215281 lt!215283 zeroValue!794 lt!215285))))

(assert (=> b!473427 (contains!2551 (+!1708 lt!215281 (tuple2!8845 lt!215283 zeroValue!794)) lt!215285)))

(declare-fun lt!215284 () Unit!13923)

(assert (=> b!473427 (= lt!215284 lt!215282)))

(declare-fun lt!215291 () ListLongMap!7771)

(assert (=> b!473427 (= lt!215291 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215280 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215280 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215287 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215287 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215289 () Unit!13923)

(declare-fun addApplyDifferent!291 (ListLongMap!7771 (_ BitVec 64) V!18893 (_ BitVec 64)) Unit!13923)

(assert (=> b!473427 (= lt!215289 (addApplyDifferent!291 lt!215291 lt!215280 minValueAfter!38 lt!215287))))

(assert (=> b!473427 (= (apply!332 (+!1708 lt!215291 (tuple2!8845 lt!215280 minValueAfter!38)) lt!215287) (apply!332 lt!215291 lt!215287))))

(declare-fun lt!215294 () Unit!13923)

(assert (=> b!473427 (= lt!215294 lt!215289)))

(declare-fun lt!215295 () ListLongMap!7771)

(assert (=> b!473427 (= lt!215295 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215292 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215292 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215288 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215288 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215296 () Unit!13923)

(assert (=> b!473427 (= lt!215296 (addApplyDifferent!291 lt!215295 lt!215292 zeroValue!794 lt!215288))))

(assert (=> b!473427 (= (apply!332 (+!1708 lt!215295 (tuple2!8845 lt!215292 zeroValue!794)) lt!215288) (apply!332 lt!215295 lt!215288))))

(declare-fun lt!215277 () Unit!13923)

(assert (=> b!473427 (= lt!215277 lt!215296)))

(declare-fun lt!215293 () ListLongMap!7771)

(assert (=> b!473427 (= lt!215293 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215279 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215279 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215278 () (_ BitVec 64))

(assert (=> b!473427 (= lt!215278 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!473427 (= lt!215276 (addApplyDifferent!291 lt!215293 lt!215279 minValueAfter!38 lt!215278))))

(assert (=> b!473427 (= (apply!332 (+!1708 lt!215293 (tuple2!8845 lt!215279 minValueAfter!38)) lt!215278) (apply!332 lt!215293 lt!215278))))

(declare-fun b!473428 () Bool)

(declare-fun c!56989 () Bool)

(assert (=> b!473428 (= c!56989 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!473428 (= e!277774 e!277772)))

(declare-fun bm!30506 () Bool)

(declare-fun call!30507 () ListLongMap!7771)

(assert (=> bm!30506 (= call!30507 call!30509)))

(declare-fun b!473429 () Bool)

(declare-fun e!277777 () Bool)

(assert (=> b!473429 (= e!277777 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473430 () Bool)

(declare-fun e!277778 () Bool)

(assert (=> b!473430 (= e!277778 e!277779)))

(declare-fun res!282855 () Bool)

(declare-fun call!30512 () Bool)

(assert (=> b!473430 (= res!282855 call!30512)))

(assert (=> b!473430 (=> (not res!282855) (not e!277779))))

(declare-fun d!75377 () Bool)

(declare-fun e!277770 () Bool)

(assert (=> d!75377 e!277770))

(declare-fun res!282852 () Bool)

(assert (=> d!75377 (=> (not res!282852) (not e!277770))))

(assert (=> d!75377 (= res!282852 (or (bvsge #b00000000000000000000000000000000 (size!14969 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))))

(declare-fun lt!215286 () ListLongMap!7771)

(assert (=> d!75377 (= lt!215290 lt!215286)))

(declare-fun lt!215297 () Unit!13923)

(assert (=> d!75377 (= lt!215297 e!277775)))

(declare-fun c!56994 () Bool)

(assert (=> d!75377 (= c!56994 e!277777)))

(declare-fun res!282856 () Bool)

(assert (=> d!75377 (=> (not res!282856) (not e!277777))))

(assert (=> d!75377 (= res!282856 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> d!75377 (= lt!215286 e!277771)))

(declare-fun c!56990 () Bool)

(assert (=> d!75377 (= c!56990 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75377 (validMask!0 mask!1365)))

(assert (=> d!75377 (= (getCurrentListMap!2245 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!215290)))

(declare-fun bm!30507 () Bool)

(assert (=> bm!30507 (= call!30508 call!30510)))

(declare-fun b!473431 () Bool)

(assert (=> b!473431 (= e!277771 e!277774)))

(declare-fun c!56993 () Bool)

(assert (=> b!473431 (= c!56993 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!473432 () Bool)

(declare-fun res!282851 () Bool)

(assert (=> b!473432 (=> (not res!282851) (not e!277770))))

(assert (=> b!473432 (= res!282851 e!277780)))

(declare-fun c!56991 () Bool)

(assert (=> b!473432 (= c!56991 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30508 () Bool)

(assert (=> bm!30508 (= call!30512 (contains!2551 lt!215290 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!473433 () Bool)

(declare-fun e!277781 () Bool)

(assert (=> b!473433 (= e!277781 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473434 () Bool)

(declare-fun e!277773 () Bool)

(assert (=> b!473434 (= e!277780 e!277773)))

(declare-fun res!282858 () Bool)

(assert (=> b!473434 (= res!282858 call!30513)))

(assert (=> b!473434 (=> (not res!282858) (not e!277773))))

(declare-fun b!473435 () Bool)

(assert (=> b!473435 (= e!277773 (= (apply!332 lt!215290 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun bm!30509 () Bool)

(assert (=> bm!30509 (= call!30510 (+!1708 (ite c!56990 call!30509 (ite c!56993 call!30507 call!30511)) (ite (or c!56990 c!56993) (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!473436 () Bool)

(assert (=> b!473436 (= e!277770 e!277778)))

(declare-fun c!56992 () Bool)

(assert (=> b!473436 (= c!56992 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!473437 () Bool)

(assert (=> b!473437 (= e!277778 (not call!30512))))

(declare-fun bm!30510 () Bool)

(assert (=> bm!30510 (= call!30511 call!30507)))

(declare-fun b!473438 () Bool)

(declare-fun e!277782 () Bool)

(assert (=> b!473438 (= e!277782 e!277776)))

(declare-fun res!282853 () Bool)

(assert (=> b!473438 (=> (not res!282853) (not e!277776))))

(assert (=> b!473438 (= res!282853 (contains!2551 lt!215290 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!473438 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun b!473439 () Bool)

(declare-fun res!282859 () Bool)

(assert (=> b!473439 (=> (not res!282859) (not e!277770))))

(assert (=> b!473439 (= res!282859 e!277782)))

(declare-fun res!282854 () Bool)

(assert (=> b!473439 (=> res!282854 e!277782)))

(assert (=> b!473439 (= res!282854 (not e!277781))))

(declare-fun res!282857 () Bool)

(assert (=> b!473439 (=> (not res!282857) (not e!277781))))

(assert (=> b!473439 (= res!282857 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (= (and d!75377 c!56990) b!473423))

(assert (= (and d!75377 (not c!56990)) b!473431))

(assert (= (and b!473431 c!56993) b!473419))

(assert (= (and b!473431 (not c!56993)) b!473428))

(assert (= (and b!473428 c!56989) b!473426))

(assert (= (and b!473428 (not c!56989)) b!473422))

(assert (= (or b!473426 b!473422) bm!30510))

(assert (= (or b!473419 bm!30510) bm!30506))

(assert (= (or b!473419 b!473426) bm!30507))

(assert (= (or b!473423 bm!30506) bm!30505))

(assert (= (or b!473423 bm!30507) bm!30509))

(assert (= (and d!75377 res!282856) b!473429))

(assert (= (and d!75377 c!56994) b!473427))

(assert (= (and d!75377 (not c!56994)) b!473424))

(assert (= (and d!75377 res!282852) b!473439))

(assert (= (and b!473439 res!282857) b!473433))

(assert (= (and b!473439 (not res!282854)) b!473438))

(assert (= (and b!473438 res!282853) b!473421))

(assert (= (and b!473439 res!282859) b!473432))

(assert (= (and b!473432 c!56991) b!473434))

(assert (= (and b!473432 (not c!56991)) b!473420))

(assert (= (and b!473434 res!282858) b!473435))

(assert (= (or b!473434 b!473420) bm!30504))

(assert (= (and b!473432 res!282851) b!473436))

(assert (= (and b!473436 c!56992) b!473430))

(assert (= (and b!473436 (not c!56992)) b!473437))

(assert (= (and b!473430 res!282855) b!473425))

(assert (= (or b!473430 b!473437) bm!30508))

(declare-fun b_lambda!10235 () Bool)

(assert (=> (not b_lambda!10235) (not b!473421)))

(declare-fun t!14936 () Bool)

(declare-fun tb!3937 () Bool)

(assert (=> (and start!42446 (= defaultEntry!841 defaultEntry!841) t!14936) tb!3937))

(declare-fun result!7453 () Bool)

(assert (=> tb!3937 (= result!7453 tp_is_empty!13341)))

(assert (=> b!473421 t!14936))

(declare-fun b_and!20391 () Bool)

(assert (= b_and!20387 (and (=> t!14936 result!7453) b_and!20391)))

(assert (=> d!75377 m!455451))

(declare-fun m!455525 () Bool)

(assert (=> b!473425 m!455525))

(declare-fun m!455527 () Bool)

(assert (=> bm!30508 m!455527))

(declare-fun m!455529 () Bool)

(assert (=> b!473421 m!455529))

(declare-fun m!455531 () Bool)

(assert (=> b!473421 m!455531))

(declare-fun m!455533 () Bool)

(assert (=> b!473421 m!455533))

(assert (=> b!473421 m!455531))

(assert (=> b!473421 m!455529))

(assert (=> b!473421 m!455515))

(declare-fun m!455535 () Bool)

(assert (=> b!473421 m!455535))

(assert (=> b!473421 m!455515))

(declare-fun m!455537 () Bool)

(assert (=> b!473435 m!455537))

(declare-fun m!455539 () Bool)

(assert (=> b!473423 m!455539))

(declare-fun m!455541 () Bool)

(assert (=> b!473427 m!455541))

(declare-fun m!455543 () Bool)

(assert (=> b!473427 m!455543))

(assert (=> b!473427 m!455463))

(declare-fun m!455545 () Bool)

(assert (=> b!473427 m!455545))

(declare-fun m!455547 () Bool)

(assert (=> b!473427 m!455547))

(declare-fun m!455549 () Bool)

(assert (=> b!473427 m!455549))

(declare-fun m!455551 () Bool)

(assert (=> b!473427 m!455551))

(declare-fun m!455553 () Bool)

(assert (=> b!473427 m!455553))

(declare-fun m!455555 () Bool)

(assert (=> b!473427 m!455555))

(assert (=> b!473427 m!455545))

(declare-fun m!455557 () Bool)

(assert (=> b!473427 m!455557))

(declare-fun m!455559 () Bool)

(assert (=> b!473427 m!455559))

(declare-fun m!455561 () Bool)

(assert (=> b!473427 m!455561))

(declare-fun m!455563 () Bool)

(assert (=> b!473427 m!455563))

(assert (=> b!473427 m!455551))

(declare-fun m!455565 () Bool)

(assert (=> b!473427 m!455565))

(assert (=> b!473427 m!455515))

(assert (=> b!473427 m!455561))

(declare-fun m!455567 () Bool)

(assert (=> b!473427 m!455567))

(assert (=> b!473427 m!455559))

(declare-fun m!455569 () Bool)

(assert (=> b!473427 m!455569))

(declare-fun m!455571 () Bool)

(assert (=> bm!30509 m!455571))

(assert (=> b!473429 m!455515))

(assert (=> b!473429 m!455515))

(assert (=> b!473429 m!455523))

(assert (=> bm!30505 m!455463))

(assert (=> b!473438 m!455515))

(assert (=> b!473438 m!455515))

(declare-fun m!455573 () Bool)

(assert (=> b!473438 m!455573))

(declare-fun m!455575 () Bool)

(assert (=> bm!30504 m!455575))

(assert (=> b!473433 m!455515))

(assert (=> b!473433 m!455515))

(assert (=> b!473433 m!455523))

(assert (=> b!473333 d!75377))

(declare-fun d!75379 () Bool)

(assert (=> d!75379 (= (+!1708 lt!215197 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (+!1708 (+!1708 lt!215197 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun lt!215300 () Unit!13923)

(declare-fun choose!1359 (ListLongMap!7771 (_ BitVec 64) V!18893 V!18893) Unit!13923)

(assert (=> d!75379 (= lt!215300 (choose!1359 lt!215197 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> d!75379 (= (addSameAsAddTwiceSameKeyDiffValues!145 lt!215197 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38) lt!215300)))

(declare-fun bs!15028 () Bool)

(assert (= bs!15028 d!75379))

(declare-fun m!455577 () Bool)

(assert (=> bs!15028 m!455577))

(assert (=> bs!15028 m!455467))

(assert (=> bs!15028 m!455467))

(declare-fun m!455579 () Bool)

(assert (=> bs!15028 m!455579))

(declare-fun m!455581 () Bool)

(assert (=> bs!15028 m!455581))

(assert (=> b!473333 d!75379))

(declare-fun b!473442 () Bool)

(declare-fun e!277787 () ListLongMap!7771)

(declare-fun call!30515 () ListLongMap!7771)

(assert (=> b!473442 (= e!277787 call!30515)))

(declare-fun b!473443 () Bool)

(declare-fun e!277793 () Bool)

(declare-fun call!30520 () Bool)

(assert (=> b!473443 (= e!277793 (not call!30520))))

(declare-fun lt!215315 () ListLongMap!7771)

(declare-fun b!473444 () Bool)

(declare-fun e!277789 () Bool)

(assert (=> b!473444 (= e!277789 (= (apply!332 lt!215315 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)) (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!473444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14970 _values!833)))))

(assert (=> b!473444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun bm!30511 () Bool)

(assert (=> bm!30511 (= call!30520 (contains!2551 lt!215315 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!473445 () Bool)

(declare-fun e!277785 () ListLongMap!7771)

(declare-fun call!30518 () ListLongMap!7771)

(assert (=> b!473445 (= e!277785 call!30518)))

(declare-fun b!473446 () Bool)

(declare-fun e!277784 () ListLongMap!7771)

(declare-fun call!30517 () ListLongMap!7771)

(assert (=> b!473446 (= e!277784 (+!1708 call!30517 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!473447 () Bool)

(declare-fun e!277788 () Unit!13923)

(declare-fun Unit!13926 () Unit!13923)

(assert (=> b!473447 (= e!277788 Unit!13926)))

(declare-fun b!473448 () Bool)

(declare-fun e!277792 () Bool)

(assert (=> b!473448 (= e!277792 (= (apply!332 lt!215315 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!473449 () Bool)

(assert (=> b!473449 (= e!277785 call!30515)))

(declare-fun call!30516 () ListLongMap!7771)

(declare-fun bm!30512 () Bool)

(assert (=> bm!30512 (= call!30516 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473450 () Bool)

(declare-fun lt!215301 () Unit!13923)

(assert (=> b!473450 (= e!277788 lt!215301)))

(declare-fun lt!215306 () ListLongMap!7771)

(assert (=> b!473450 (= lt!215306 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215308 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215308 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215310 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215310 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215307 () Unit!13923)

(assert (=> b!473450 (= lt!215307 (addStillContains!291 lt!215306 lt!215308 zeroValue!794 lt!215310))))

(assert (=> b!473450 (contains!2551 (+!1708 lt!215306 (tuple2!8845 lt!215308 zeroValue!794)) lt!215310)))

(declare-fun lt!215309 () Unit!13923)

(assert (=> b!473450 (= lt!215309 lt!215307)))

(declare-fun lt!215316 () ListLongMap!7771)

(assert (=> b!473450 (= lt!215316 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215305 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215305 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215312 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215312 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215314 () Unit!13923)

(assert (=> b!473450 (= lt!215314 (addApplyDifferent!291 lt!215316 lt!215305 minValueBefore!38 lt!215312))))

(assert (=> b!473450 (= (apply!332 (+!1708 lt!215316 (tuple2!8845 lt!215305 minValueBefore!38)) lt!215312) (apply!332 lt!215316 lt!215312))))

(declare-fun lt!215319 () Unit!13923)

(assert (=> b!473450 (= lt!215319 lt!215314)))

(declare-fun lt!215320 () ListLongMap!7771)

(assert (=> b!473450 (= lt!215320 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215317 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215317 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215313 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215313 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!215321 () Unit!13923)

(assert (=> b!473450 (= lt!215321 (addApplyDifferent!291 lt!215320 lt!215317 zeroValue!794 lt!215313))))

(assert (=> b!473450 (= (apply!332 (+!1708 lt!215320 (tuple2!8845 lt!215317 zeroValue!794)) lt!215313) (apply!332 lt!215320 lt!215313))))

(declare-fun lt!215302 () Unit!13923)

(assert (=> b!473450 (= lt!215302 lt!215321)))

(declare-fun lt!215318 () ListLongMap!7771)

(assert (=> b!473450 (= lt!215318 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215304 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215304 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!215303 () (_ BitVec 64))

(assert (=> b!473450 (= lt!215303 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!473450 (= lt!215301 (addApplyDifferent!291 lt!215318 lt!215304 minValueBefore!38 lt!215303))))

(assert (=> b!473450 (= (apply!332 (+!1708 lt!215318 (tuple2!8845 lt!215304 minValueBefore!38)) lt!215303) (apply!332 lt!215318 lt!215303))))

(declare-fun b!473451 () Bool)

(declare-fun c!56995 () Bool)

(assert (=> b!473451 (= c!56995 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!473451 (= e!277787 e!277785)))

(declare-fun bm!30513 () Bool)

(declare-fun call!30514 () ListLongMap!7771)

(assert (=> bm!30513 (= call!30514 call!30516)))

(declare-fun b!473452 () Bool)

(declare-fun e!277790 () Bool)

(assert (=> b!473452 (= e!277790 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473453 () Bool)

(declare-fun e!277791 () Bool)

(assert (=> b!473453 (= e!277791 e!277792)))

(declare-fun res!282864 () Bool)

(declare-fun call!30519 () Bool)

(assert (=> b!473453 (= res!282864 call!30519)))

(assert (=> b!473453 (=> (not res!282864) (not e!277792))))

(declare-fun d!75381 () Bool)

(declare-fun e!277783 () Bool)

(assert (=> d!75381 e!277783))

(declare-fun res!282861 () Bool)

(assert (=> d!75381 (=> (not res!282861) (not e!277783))))

(assert (=> d!75381 (= res!282861 (or (bvsge #b00000000000000000000000000000000 (size!14969 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))))

(declare-fun lt!215311 () ListLongMap!7771)

(assert (=> d!75381 (= lt!215315 lt!215311)))

(declare-fun lt!215322 () Unit!13923)

(assert (=> d!75381 (= lt!215322 e!277788)))

(declare-fun c!57000 () Bool)

(assert (=> d!75381 (= c!57000 e!277790)))

(declare-fun res!282865 () Bool)

(assert (=> d!75381 (=> (not res!282865) (not e!277790))))

(assert (=> d!75381 (= res!282865 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> d!75381 (= lt!215311 e!277784)))

(declare-fun c!56996 () Bool)

(assert (=> d!75381 (= c!56996 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75381 (validMask!0 mask!1365)))

(assert (=> d!75381 (= (getCurrentListMap!2245 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!215315)))

(declare-fun bm!30514 () Bool)

(assert (=> bm!30514 (= call!30515 call!30517)))

(declare-fun b!473454 () Bool)

(assert (=> b!473454 (= e!277784 e!277787)))

(declare-fun c!56999 () Bool)

(assert (=> b!473454 (= c!56999 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!473455 () Bool)

(declare-fun res!282860 () Bool)

(assert (=> b!473455 (=> (not res!282860) (not e!277783))))

(assert (=> b!473455 (= res!282860 e!277793)))

(declare-fun c!56997 () Bool)

(assert (=> b!473455 (= c!56997 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30515 () Bool)

(assert (=> bm!30515 (= call!30519 (contains!2551 lt!215315 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!473456 () Bool)

(declare-fun e!277794 () Bool)

(assert (=> b!473456 (= e!277794 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473457 () Bool)

(declare-fun e!277786 () Bool)

(assert (=> b!473457 (= e!277793 e!277786)))

(declare-fun res!282867 () Bool)

(assert (=> b!473457 (= res!282867 call!30520)))

(assert (=> b!473457 (=> (not res!282867) (not e!277786))))

(declare-fun b!473458 () Bool)

(assert (=> b!473458 (= e!277786 (= (apply!332 lt!215315 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun bm!30516 () Bool)

(assert (=> bm!30516 (= call!30517 (+!1708 (ite c!56996 call!30516 (ite c!56999 call!30514 call!30518)) (ite (or c!56996 c!56999) (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!473459 () Bool)

(assert (=> b!473459 (= e!277783 e!277791)))

(declare-fun c!56998 () Bool)

(assert (=> b!473459 (= c!56998 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!473460 () Bool)

(assert (=> b!473460 (= e!277791 (not call!30519))))

(declare-fun bm!30517 () Bool)

(assert (=> bm!30517 (= call!30518 call!30514)))

(declare-fun b!473461 () Bool)

(declare-fun e!277795 () Bool)

(assert (=> b!473461 (= e!277795 e!277789)))

(declare-fun res!282862 () Bool)

(assert (=> b!473461 (=> (not res!282862) (not e!277789))))

(assert (=> b!473461 (= res!282862 (contains!2551 lt!215315 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!473461 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun b!473462 () Bool)

(declare-fun res!282868 () Bool)

(assert (=> b!473462 (=> (not res!282868) (not e!277783))))

(assert (=> b!473462 (= res!282868 e!277795)))

(declare-fun res!282863 () Bool)

(assert (=> b!473462 (=> res!282863 e!277795)))

(assert (=> b!473462 (= res!282863 (not e!277794))))

(declare-fun res!282866 () Bool)

(assert (=> b!473462 (=> (not res!282866) (not e!277794))))

(assert (=> b!473462 (= res!282866 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (= (and d!75381 c!56996) b!473446))

(assert (= (and d!75381 (not c!56996)) b!473454))

(assert (= (and b!473454 c!56999) b!473442))

(assert (= (and b!473454 (not c!56999)) b!473451))

(assert (= (and b!473451 c!56995) b!473449))

(assert (= (and b!473451 (not c!56995)) b!473445))

(assert (= (or b!473449 b!473445) bm!30517))

(assert (= (or b!473442 bm!30517) bm!30513))

(assert (= (or b!473442 b!473449) bm!30514))

(assert (= (or b!473446 bm!30513) bm!30512))

(assert (= (or b!473446 bm!30514) bm!30516))

(assert (= (and d!75381 res!282865) b!473452))

(assert (= (and d!75381 c!57000) b!473450))

(assert (= (and d!75381 (not c!57000)) b!473447))

(assert (= (and d!75381 res!282861) b!473462))

(assert (= (and b!473462 res!282866) b!473456))

(assert (= (and b!473462 (not res!282863)) b!473461))

(assert (= (and b!473461 res!282862) b!473444))

(assert (= (and b!473462 res!282868) b!473455))

(assert (= (and b!473455 c!56997) b!473457))

(assert (= (and b!473455 (not c!56997)) b!473443))

(assert (= (and b!473457 res!282867) b!473458))

(assert (= (or b!473457 b!473443) bm!30511))

(assert (= (and b!473455 res!282860) b!473459))

(assert (= (and b!473459 c!56998) b!473453))

(assert (= (and b!473459 (not c!56998)) b!473460))

(assert (= (and b!473453 res!282864) b!473448))

(assert (= (or b!473453 b!473460) bm!30515))

(declare-fun b_lambda!10237 () Bool)

(assert (=> (not b_lambda!10237) (not b!473444)))

(assert (=> b!473444 t!14936))

(declare-fun b_and!20393 () Bool)

(assert (= b_and!20391 (and (=> t!14936 result!7453) b_and!20393)))

(assert (=> d!75381 m!455451))

(declare-fun m!455583 () Bool)

(assert (=> b!473448 m!455583))

(declare-fun m!455585 () Bool)

(assert (=> bm!30515 m!455585))

(assert (=> b!473444 m!455529))

(assert (=> b!473444 m!455531))

(assert (=> b!473444 m!455533))

(assert (=> b!473444 m!455531))

(assert (=> b!473444 m!455529))

(assert (=> b!473444 m!455515))

(declare-fun m!455587 () Bool)

(assert (=> b!473444 m!455587))

(assert (=> b!473444 m!455515))

(declare-fun m!455589 () Bool)

(assert (=> b!473458 m!455589))

(declare-fun m!455591 () Bool)

(assert (=> b!473446 m!455591))

(declare-fun m!455593 () Bool)

(assert (=> b!473450 m!455593))

(declare-fun m!455595 () Bool)

(assert (=> b!473450 m!455595))

(assert (=> b!473450 m!455465))

(declare-fun m!455597 () Bool)

(assert (=> b!473450 m!455597))

(declare-fun m!455599 () Bool)

(assert (=> b!473450 m!455599))

(declare-fun m!455601 () Bool)

(assert (=> b!473450 m!455601))

(declare-fun m!455603 () Bool)

(assert (=> b!473450 m!455603))

(declare-fun m!455605 () Bool)

(assert (=> b!473450 m!455605))

(declare-fun m!455607 () Bool)

(assert (=> b!473450 m!455607))

(assert (=> b!473450 m!455597))

(declare-fun m!455609 () Bool)

(assert (=> b!473450 m!455609))

(declare-fun m!455611 () Bool)

(assert (=> b!473450 m!455611))

(declare-fun m!455613 () Bool)

(assert (=> b!473450 m!455613))

(declare-fun m!455615 () Bool)

(assert (=> b!473450 m!455615))

(assert (=> b!473450 m!455603))

(declare-fun m!455617 () Bool)

(assert (=> b!473450 m!455617))

(assert (=> b!473450 m!455515))

(assert (=> b!473450 m!455613))

(declare-fun m!455619 () Bool)

(assert (=> b!473450 m!455619))

(assert (=> b!473450 m!455611))

(declare-fun m!455621 () Bool)

(assert (=> b!473450 m!455621))

(declare-fun m!455623 () Bool)

(assert (=> bm!30516 m!455623))

(assert (=> b!473452 m!455515))

(assert (=> b!473452 m!455515))

(assert (=> b!473452 m!455523))

(assert (=> bm!30512 m!455465))

(assert (=> b!473461 m!455515))

(assert (=> b!473461 m!455515))

(declare-fun m!455625 () Bool)

(assert (=> b!473461 m!455625))

(declare-fun m!455627 () Bool)

(assert (=> bm!30511 m!455627))

(assert (=> b!473456 m!455515))

(assert (=> b!473456 m!455515))

(assert (=> b!473456 m!455523))

(assert (=> b!473333 d!75381))

(declare-fun d!75383 () Bool)

(declare-fun e!277798 () Bool)

(assert (=> d!75383 e!277798))

(declare-fun res!282874 () Bool)

(assert (=> d!75383 (=> (not res!282874) (not e!277798))))

(declare-fun lt!215334 () ListLongMap!7771)

(assert (=> d!75383 (= res!282874 (contains!2551 lt!215334 (_1!4432 lt!215193)))))

(declare-fun lt!215333 () List!8955)

(assert (=> d!75383 (= lt!215334 (ListLongMap!7772 lt!215333))))

(declare-fun lt!215332 () Unit!13923)

(declare-fun lt!215331 () Unit!13923)

(assert (=> d!75383 (= lt!215332 lt!215331)))

(declare-datatypes ((Option!385 0))(
  ( (Some!384 (v!9004 V!18893)) (None!383) )
))
(declare-fun getValueByKey!379 (List!8955 (_ BitVec 64)) Option!385)

(assert (=> d!75383 (= (getValueByKey!379 lt!215333 (_1!4432 lt!215193)) (Some!384 (_2!4432 lt!215193)))))

(declare-fun lemmaContainsTupThenGetReturnValue!203 (List!8955 (_ BitVec 64) V!18893) Unit!13923)

(assert (=> d!75383 (= lt!215331 (lemmaContainsTupThenGetReturnValue!203 lt!215333 (_1!4432 lt!215193) (_2!4432 lt!215193)))))

(declare-fun insertStrictlySorted!205 (List!8955 (_ BitVec 64) V!18893) List!8955)

(assert (=> d!75383 (= lt!215333 (insertStrictlySorted!205 (toList!3901 lt!215197) (_1!4432 lt!215193) (_2!4432 lt!215193)))))

(assert (=> d!75383 (= (+!1708 lt!215197 lt!215193) lt!215334)))

(declare-fun b!473467 () Bool)

(declare-fun res!282873 () Bool)

(assert (=> b!473467 (=> (not res!282873) (not e!277798))))

(assert (=> b!473467 (= res!282873 (= (getValueByKey!379 (toList!3901 lt!215334) (_1!4432 lt!215193)) (Some!384 (_2!4432 lt!215193))))))

(declare-fun b!473468 () Bool)

(declare-fun contains!2552 (List!8955 tuple2!8844) Bool)

(assert (=> b!473468 (= e!277798 (contains!2552 (toList!3901 lt!215334) lt!215193))))

(assert (= (and d!75383 res!282874) b!473467))

(assert (= (and b!473467 res!282873) b!473468))

(declare-fun m!455629 () Bool)

(assert (=> d!75383 m!455629))

(declare-fun m!455631 () Bool)

(assert (=> d!75383 m!455631))

(declare-fun m!455633 () Bool)

(assert (=> d!75383 m!455633))

(declare-fun m!455635 () Bool)

(assert (=> d!75383 m!455635))

(declare-fun m!455637 () Bool)

(assert (=> b!473467 m!455637))

(declare-fun m!455639 () Bool)

(assert (=> b!473468 m!455639))

(assert (=> b!473333 d!75383))

(declare-fun d!75385 () Bool)

(declare-fun e!277799 () Bool)

(assert (=> d!75385 e!277799))

(declare-fun res!282876 () Bool)

(assert (=> d!75385 (=> (not res!282876) (not e!277799))))

(declare-fun lt!215338 () ListLongMap!7771)

(assert (=> d!75385 (= res!282876 (contains!2551 lt!215338 (_1!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(declare-fun lt!215337 () List!8955)

(assert (=> d!75385 (= lt!215338 (ListLongMap!7772 lt!215337))))

(declare-fun lt!215336 () Unit!13923)

(declare-fun lt!215335 () Unit!13923)

(assert (=> d!75385 (= lt!215336 lt!215335)))

(assert (=> d!75385 (= (getValueByKey!379 lt!215337 (_1!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))) (Some!384 (_2!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75385 (= lt!215335 (lemmaContainsTupThenGetReturnValue!203 lt!215337 (_1!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) (_2!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75385 (= lt!215337 (insertStrictlySorted!205 (toList!3901 lt!215195) (_1!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) (_2!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))))))

(assert (=> d!75385 (= (+!1708 lt!215195 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)) lt!215338)))

(declare-fun b!473469 () Bool)

(declare-fun res!282875 () Bool)

(assert (=> b!473469 (=> (not res!282875) (not e!277799))))

(assert (=> b!473469 (= res!282875 (= (getValueByKey!379 (toList!3901 lt!215338) (_1!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794))) (Some!384 (_2!4432 (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))))

(declare-fun b!473470 () Bool)

(assert (=> b!473470 (= e!277799 (contains!2552 (toList!3901 lt!215338) (tuple2!8845 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(assert (= (and d!75385 res!282876) b!473469))

(assert (= (and b!473469 res!282875) b!473470))

(declare-fun m!455641 () Bool)

(assert (=> d!75385 m!455641))

(declare-fun m!455643 () Bool)

(assert (=> d!75385 m!455643))

(declare-fun m!455645 () Bool)

(assert (=> d!75385 m!455645))

(declare-fun m!455647 () Bool)

(assert (=> d!75385 m!455647))

(declare-fun m!455649 () Bool)

(assert (=> b!473469 m!455649))

(declare-fun m!455651 () Bool)

(assert (=> b!473470 m!455651))

(assert (=> b!473333 d!75385))

(declare-fun d!75387 () Bool)

(declare-fun e!277800 () Bool)

(assert (=> d!75387 e!277800))

(declare-fun res!282878 () Bool)

(assert (=> d!75387 (=> (not res!282878) (not e!277800))))

(declare-fun lt!215342 () ListLongMap!7771)

(assert (=> d!75387 (= res!282878 (contains!2551 lt!215342 (_1!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lt!215341 () List!8955)

(assert (=> d!75387 (= lt!215342 (ListLongMap!7772 lt!215341))))

(declare-fun lt!215340 () Unit!13923)

(declare-fun lt!215339 () Unit!13923)

(assert (=> d!75387 (= lt!215340 lt!215339)))

(assert (=> d!75387 (= (getValueByKey!379 lt!215341 (_1!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!384 (_2!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75387 (= lt!215339 (lemmaContainsTupThenGetReturnValue!203 lt!215341 (_1!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75387 (= lt!215341 (insertStrictlySorted!205 (toList!3901 lt!215197) (_1!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75387 (= (+!1708 lt!215197 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215342)))

(declare-fun b!473471 () Bool)

(declare-fun res!282877 () Bool)

(assert (=> b!473471 (=> (not res!282877) (not e!277800))))

(assert (=> b!473471 (= res!282877 (= (getValueByKey!379 (toList!3901 lt!215342) (_1!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!384 (_2!4432 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))))

(declare-fun b!473472 () Bool)

(assert (=> b!473472 (= e!277800 (contains!2552 (toList!3901 lt!215342) (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(assert (= (and d!75387 res!282878) b!473471))

(assert (= (and b!473471 res!282877) b!473472))

(declare-fun m!455653 () Bool)

(assert (=> d!75387 m!455653))

(declare-fun m!455655 () Bool)

(assert (=> d!75387 m!455655))

(declare-fun m!455657 () Bool)

(assert (=> d!75387 m!455657))

(declare-fun m!455659 () Bool)

(assert (=> d!75387 m!455659))

(declare-fun m!455661 () Bool)

(assert (=> b!473471 m!455661))

(declare-fun m!455663 () Bool)

(assert (=> b!473472 m!455663))

(assert (=> b!473333 d!75387))

(declare-fun d!75389 () Bool)

(declare-fun e!277801 () Bool)

(assert (=> d!75389 e!277801))

(declare-fun res!282880 () Bool)

(assert (=> d!75389 (=> (not res!282880) (not e!277801))))

(declare-fun lt!215346 () ListLongMap!7771)

(assert (=> d!75389 (= res!282880 (contains!2551 lt!215346 (_1!4432 lt!215193)))))

(declare-fun lt!215345 () List!8955)

(assert (=> d!75389 (= lt!215346 (ListLongMap!7772 lt!215345))))

(declare-fun lt!215344 () Unit!13923)

(declare-fun lt!215343 () Unit!13923)

(assert (=> d!75389 (= lt!215344 lt!215343)))

(assert (=> d!75389 (= (getValueByKey!379 lt!215345 (_1!4432 lt!215193)) (Some!384 (_2!4432 lt!215193)))))

(assert (=> d!75389 (= lt!215343 (lemmaContainsTupThenGetReturnValue!203 lt!215345 (_1!4432 lt!215193) (_2!4432 lt!215193)))))

(assert (=> d!75389 (= lt!215345 (insertStrictlySorted!205 (toList!3901 (+!1708 lt!215197 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (_1!4432 lt!215193) (_2!4432 lt!215193)))))

(assert (=> d!75389 (= (+!1708 (+!1708 lt!215197 (tuple2!8845 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215193) lt!215346)))

(declare-fun b!473473 () Bool)

(declare-fun res!282879 () Bool)

(assert (=> b!473473 (=> (not res!282879) (not e!277801))))

(assert (=> b!473473 (= res!282879 (= (getValueByKey!379 (toList!3901 lt!215346) (_1!4432 lt!215193)) (Some!384 (_2!4432 lt!215193))))))

(declare-fun b!473474 () Bool)

(assert (=> b!473474 (= e!277801 (contains!2552 (toList!3901 lt!215346) lt!215193))))

(assert (= (and d!75389 res!282880) b!473473))

(assert (= (and b!473473 res!282879) b!473474))

(declare-fun m!455665 () Bool)

(assert (=> d!75389 m!455665))

(declare-fun m!455667 () Bool)

(assert (=> d!75389 m!455667))

(declare-fun m!455669 () Bool)

(assert (=> d!75389 m!455669))

(declare-fun m!455671 () Bool)

(assert (=> d!75389 m!455671))

(declare-fun m!455673 () Bool)

(assert (=> b!473473 m!455673))

(declare-fun m!455675 () Bool)

(assert (=> b!473474 m!455675))

(assert (=> b!473333 d!75389))

(declare-fun b!473485 () Bool)

(declare-fun e!277811 () Bool)

(declare-fun contains!2553 (List!8956 (_ BitVec 64)) Bool)

(assert (=> b!473485 (= e!277811 (contains!2553 Nil!8953 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75391 () Bool)

(declare-fun res!282888 () Bool)

(declare-fun e!277813 () Bool)

(assert (=> d!75391 (=> res!282888 e!277813)))

(assert (=> d!75391 (= res!282888 (bvsge #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> d!75391 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8953) e!277813)))

(declare-fun b!473486 () Bool)

(declare-fun e!277812 () Bool)

(declare-fun call!30523 () Bool)

(assert (=> b!473486 (= e!277812 call!30523)))

(declare-fun b!473487 () Bool)

(assert (=> b!473487 (= e!277812 call!30523)))

(declare-fun bm!30520 () Bool)

(declare-fun c!57003 () Bool)

(assert (=> bm!30520 (= call!30523 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57003 (Cons!8952 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000) Nil!8953) Nil!8953)))))

(declare-fun b!473488 () Bool)

(declare-fun e!277810 () Bool)

(assert (=> b!473488 (= e!277813 e!277810)))

(declare-fun res!282889 () Bool)

(assert (=> b!473488 (=> (not res!282889) (not e!277810))))

(assert (=> b!473488 (= res!282889 (not e!277811))))

(declare-fun res!282887 () Bool)

(assert (=> b!473488 (=> (not res!282887) (not e!277811))))

(assert (=> b!473488 (= res!282887 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473489 () Bool)

(assert (=> b!473489 (= e!277810 e!277812)))

(assert (=> b!473489 (= c!57003 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75391 (not res!282888)) b!473488))

(assert (= (and b!473488 res!282887) b!473485))

(assert (= (and b!473488 res!282889) b!473489))

(assert (= (and b!473489 c!57003) b!473487))

(assert (= (and b!473489 (not c!57003)) b!473486))

(assert (= (or b!473487 b!473486) bm!30520))

(assert (=> b!473485 m!455515))

(assert (=> b!473485 m!455515))

(declare-fun m!455677 () Bool)

(assert (=> b!473485 m!455677))

(assert (=> bm!30520 m!455515))

(declare-fun m!455679 () Bool)

(assert (=> bm!30520 m!455679))

(assert (=> b!473488 m!455515))

(assert (=> b!473488 m!455515))

(assert (=> b!473488 m!455523))

(assert (=> b!473489 m!455515))

(assert (=> b!473489 m!455515))

(assert (=> b!473489 m!455523))

(assert (=> b!473339 d!75391))

(declare-fun d!75393 () Bool)

(assert (=> d!75393 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42446 d!75393))

(declare-fun d!75395 () Bool)

(assert (=> d!75395 (= (array_inv!10538 _keys!1025) (bvsge (size!14969 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42446 d!75395))

(declare-fun d!75397 () Bool)

(assert (=> d!75397 (= (array_inv!10539 _values!833) (bvsge (size!14970 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42446 d!75397))

(declare-fun d!75399 () Bool)

(assert (=> d!75399 (= (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215349 () Unit!13923)

(declare-fun choose!1360 (array!30401 array!30403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18893 V!18893 V!18893 V!18893 (_ BitVec 32) Int) Unit!13923)

(assert (=> d!75399 (= lt!215349 (choose!1360 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75399 (validMask!0 mask!1365)))

(assert (=> d!75399 (= (lemmaNoChangeToArrayThenSameMapNoExtras!253 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!215349)))

(declare-fun bs!15029 () Bool)

(assert (= bs!15029 d!75399))

(assert (=> bs!15029 m!455465))

(assert (=> bs!15029 m!455463))

(declare-fun m!455681 () Bool)

(assert (=> bs!15029 m!455681))

(assert (=> bs!15029 m!455451))

(assert (=> b!473338 d!75399))

(declare-fun b!473514 () Bool)

(declare-fun e!277828 () ListLongMap!7771)

(declare-fun call!30526 () ListLongMap!7771)

(assert (=> b!473514 (= e!277828 call!30526)))

(declare-fun b!473515 () Bool)

(declare-fun e!277829 () ListLongMap!7771)

(assert (=> b!473515 (= e!277829 e!277828)))

(declare-fun c!57012 () Bool)

(assert (=> b!473515 (= c!57012 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473516 () Bool)

(assert (=> b!473516 (= e!277829 (ListLongMap!7772 Nil!8952))))

(declare-fun b!473517 () Bool)

(declare-fun e!277830 () Bool)

(assert (=> b!473517 (= e!277830 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!473517 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30523 () Bool)

(assert (=> bm!30523 (= call!30526 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!473518 () Bool)

(declare-fun lt!215364 () ListLongMap!7771)

(declare-fun e!277832 () Bool)

(assert (=> b!473518 (= e!277832 (= lt!215364 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun d!75401 () Bool)

(declare-fun e!277834 () Bool)

(assert (=> d!75401 e!277834))

(declare-fun res!282898 () Bool)

(assert (=> d!75401 (=> (not res!282898) (not e!277834))))

(assert (=> d!75401 (= res!282898 (not (contains!2551 lt!215364 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75401 (= lt!215364 e!277829)))

(declare-fun c!57015 () Bool)

(assert (=> d!75401 (= c!57015 (bvsge #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> d!75401 (validMask!0 mask!1365)))

(assert (=> d!75401 (= (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!215364)))

(declare-fun b!473519 () Bool)

(declare-fun isEmpty!584 (ListLongMap!7771) Bool)

(assert (=> b!473519 (= e!277832 (isEmpty!584 lt!215364))))

(declare-fun b!473520 () Bool)

(assert (=> b!473520 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> b!473520 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14970 _values!833)))))

(declare-fun e!277831 () Bool)

(assert (=> b!473520 (= e!277831 (= (apply!332 lt!215364 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)) (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!473521 () Bool)

(declare-fun e!277833 () Bool)

(assert (=> b!473521 (= e!277833 e!277831)))

(assert (=> b!473521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun res!282901 () Bool)

(assert (=> b!473521 (= res!282901 (contains!2551 lt!215364 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!473521 (=> (not res!282901) (not e!277831))))

(declare-fun b!473522 () Bool)

(declare-fun res!282900 () Bool)

(assert (=> b!473522 (=> (not res!282900) (not e!277834))))

(assert (=> b!473522 (= res!282900 (not (contains!2551 lt!215364 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!473523 () Bool)

(declare-fun lt!215365 () Unit!13923)

(declare-fun lt!215370 () Unit!13923)

(assert (=> b!473523 (= lt!215365 lt!215370)))

(declare-fun lt!215367 () (_ BitVec 64))

(declare-fun lt!215369 () ListLongMap!7771)

(declare-fun lt!215368 () V!18893)

(declare-fun lt!215366 () (_ BitVec 64))

(assert (=> b!473523 (not (contains!2551 (+!1708 lt!215369 (tuple2!8845 lt!215367 lt!215368)) lt!215366))))

(declare-fun addStillNotContains!167 (ListLongMap!7771 (_ BitVec 64) V!18893 (_ BitVec 64)) Unit!13923)

(assert (=> b!473523 (= lt!215370 (addStillNotContains!167 lt!215369 lt!215367 lt!215368 lt!215366))))

(assert (=> b!473523 (= lt!215366 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!473523 (= lt!215368 (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!473523 (= lt!215367 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!473523 (= lt!215369 call!30526)))

(assert (=> b!473523 (= e!277828 (+!1708 call!30526 (tuple2!8845 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000) (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!473524 () Bool)

(assert (=> b!473524 (= e!277833 e!277832)))

(declare-fun c!57013 () Bool)

(assert (=> b!473524 (= c!57013 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun b!473525 () Bool)

(assert (=> b!473525 (= e!277834 e!277833)))

(declare-fun c!57014 () Bool)

(assert (=> b!473525 (= c!57014 e!277830)))

(declare-fun res!282899 () Bool)

(assert (=> b!473525 (=> (not res!282899) (not e!277830))))

(assert (=> b!473525 (= res!282899 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (= (and d!75401 c!57015) b!473516))

(assert (= (and d!75401 (not c!57015)) b!473515))

(assert (= (and b!473515 c!57012) b!473523))

(assert (= (and b!473515 (not c!57012)) b!473514))

(assert (= (or b!473523 b!473514) bm!30523))

(assert (= (and d!75401 res!282898) b!473522))

(assert (= (and b!473522 res!282900) b!473525))

(assert (= (and b!473525 res!282899) b!473517))

(assert (= (and b!473525 c!57014) b!473521))

(assert (= (and b!473525 (not c!57014)) b!473524))

(assert (= (and b!473521 res!282901) b!473520))

(assert (= (and b!473524 c!57013) b!473518))

(assert (= (and b!473524 (not c!57013)) b!473519))

(declare-fun b_lambda!10239 () Bool)

(assert (=> (not b_lambda!10239) (not b!473520)))

(assert (=> b!473520 t!14936))

(declare-fun b_and!20395 () Bool)

(assert (= b_and!20393 (and (=> t!14936 result!7453) b_and!20395)))

(declare-fun b_lambda!10241 () Bool)

(assert (=> (not b_lambda!10241) (not b!473523)))

(assert (=> b!473523 t!14936))

(declare-fun b_and!20397 () Bool)

(assert (= b_and!20395 (and (=> t!14936 result!7453) b_and!20397)))

(assert (=> b!473517 m!455515))

(assert (=> b!473517 m!455515))

(assert (=> b!473517 m!455523))

(declare-fun m!455683 () Bool)

(assert (=> b!473522 m!455683))

(assert (=> b!473515 m!455515))

(assert (=> b!473515 m!455515))

(assert (=> b!473515 m!455523))

(assert (=> b!473520 m!455515))

(assert (=> b!473520 m!455529))

(assert (=> b!473520 m!455531))

(assert (=> b!473520 m!455533))

(assert (=> b!473520 m!455529))

(assert (=> b!473520 m!455531))

(assert (=> b!473520 m!455515))

(declare-fun m!455685 () Bool)

(assert (=> b!473520 m!455685))

(declare-fun m!455687 () Bool)

(assert (=> b!473519 m!455687))

(declare-fun m!455689 () Bool)

(assert (=> d!75401 m!455689))

(assert (=> d!75401 m!455451))

(declare-fun m!455691 () Bool)

(assert (=> b!473518 m!455691))

(assert (=> bm!30523 m!455691))

(declare-fun m!455693 () Bool)

(assert (=> b!473523 m!455693))

(declare-fun m!455695 () Bool)

(assert (=> b!473523 m!455695))

(assert (=> b!473523 m!455529))

(assert (=> b!473523 m!455531))

(assert (=> b!473523 m!455533))

(assert (=> b!473523 m!455529))

(assert (=> b!473523 m!455531))

(declare-fun m!455697 () Bool)

(assert (=> b!473523 m!455697))

(declare-fun m!455699 () Bool)

(assert (=> b!473523 m!455699))

(assert (=> b!473523 m!455515))

(assert (=> b!473523 m!455697))

(assert (=> b!473521 m!455515))

(assert (=> b!473521 m!455515))

(declare-fun m!455701 () Bool)

(assert (=> b!473521 m!455701))

(assert (=> b!473338 d!75401))

(declare-fun b!473526 () Bool)

(declare-fun e!277835 () ListLongMap!7771)

(declare-fun call!30527 () ListLongMap!7771)

(assert (=> b!473526 (= e!277835 call!30527)))

(declare-fun b!473527 () Bool)

(declare-fun e!277836 () ListLongMap!7771)

(assert (=> b!473527 (= e!277836 e!277835)))

(declare-fun c!57016 () Bool)

(assert (=> b!473527 (= c!57016 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!473528 () Bool)

(assert (=> b!473528 (= e!277836 (ListLongMap!7772 Nil!8952))))

(declare-fun b!473529 () Bool)

(declare-fun e!277837 () Bool)

(assert (=> b!473529 (= e!277837 (validKeyInArray!0 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!473529 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30524 () Bool)

(assert (=> bm!30524 (= call!30527 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun lt!215371 () ListLongMap!7771)

(declare-fun b!473530 () Bool)

(declare-fun e!277839 () Bool)

(assert (=> b!473530 (= e!277839 (= lt!215371 (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun d!75403 () Bool)

(declare-fun e!277841 () Bool)

(assert (=> d!75403 e!277841))

(declare-fun res!282902 () Bool)

(assert (=> d!75403 (=> (not res!282902) (not e!277841))))

(assert (=> d!75403 (= res!282902 (not (contains!2551 lt!215371 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75403 (= lt!215371 e!277836)))

(declare-fun c!57019 () Bool)

(assert (=> d!75403 (= c!57019 (bvsge #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> d!75403 (validMask!0 mask!1365)))

(assert (=> d!75403 (= (getCurrentListMapNoExtraKeys!2058 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!215371)))

(declare-fun b!473531 () Bool)

(assert (=> b!473531 (= e!277839 (isEmpty!584 lt!215371))))

(declare-fun b!473532 () Bool)

(assert (=> b!473532 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (=> b!473532 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14970 _values!833)))))

(declare-fun e!277838 () Bool)

(assert (=> b!473532 (= e!277838 (= (apply!332 lt!215371 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)) (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!473533 () Bool)

(declare-fun e!277840 () Bool)

(assert (=> b!473533 (= e!277840 e!277838)))

(assert (=> b!473533 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun res!282905 () Bool)

(assert (=> b!473533 (= res!282905 (contains!2551 lt!215371 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!473533 (=> (not res!282905) (not e!277838))))

(declare-fun b!473534 () Bool)

(declare-fun res!282904 () Bool)

(assert (=> b!473534 (=> (not res!282904) (not e!277841))))

(assert (=> b!473534 (= res!282904 (not (contains!2551 lt!215371 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!473535 () Bool)

(declare-fun lt!215372 () Unit!13923)

(declare-fun lt!215377 () Unit!13923)

(assert (=> b!473535 (= lt!215372 lt!215377)))

(declare-fun lt!215374 () (_ BitVec 64))

(declare-fun lt!215375 () V!18893)

(declare-fun lt!215373 () (_ BitVec 64))

(declare-fun lt!215376 () ListLongMap!7771)

(assert (=> b!473535 (not (contains!2551 (+!1708 lt!215376 (tuple2!8845 lt!215374 lt!215375)) lt!215373))))

(assert (=> b!473535 (= lt!215377 (addStillNotContains!167 lt!215376 lt!215374 lt!215375 lt!215373))))

(assert (=> b!473535 (= lt!215373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!473535 (= lt!215375 (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!473535 (= lt!215374 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!473535 (= lt!215376 call!30527)))

(assert (=> b!473535 (= e!277835 (+!1708 call!30527 (tuple2!8845 (select (arr!14617 _keys!1025) #b00000000000000000000000000000000) (get!7120 (select (arr!14618 _values!833) #b00000000000000000000000000000000) (dynLambda!924 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!473536 () Bool)

(assert (=> b!473536 (= e!277840 e!277839)))

(declare-fun c!57017 () Bool)

(assert (=> b!473536 (= c!57017 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(declare-fun b!473537 () Bool)

(assert (=> b!473537 (= e!277841 e!277840)))

(declare-fun c!57018 () Bool)

(assert (=> b!473537 (= c!57018 e!277837)))

(declare-fun res!282903 () Bool)

(assert (=> b!473537 (=> (not res!282903) (not e!277837))))

(assert (=> b!473537 (= res!282903 (bvslt #b00000000000000000000000000000000 (size!14969 _keys!1025)))))

(assert (= (and d!75403 c!57019) b!473528))

(assert (= (and d!75403 (not c!57019)) b!473527))

(assert (= (and b!473527 c!57016) b!473535))

(assert (= (and b!473527 (not c!57016)) b!473526))

(assert (= (or b!473535 b!473526) bm!30524))

(assert (= (and d!75403 res!282902) b!473534))

(assert (= (and b!473534 res!282904) b!473537))

(assert (= (and b!473537 res!282903) b!473529))

(assert (= (and b!473537 c!57018) b!473533))

(assert (= (and b!473537 (not c!57018)) b!473536))

(assert (= (and b!473533 res!282905) b!473532))

(assert (= (and b!473536 c!57017) b!473530))

(assert (= (and b!473536 (not c!57017)) b!473531))

(declare-fun b_lambda!10243 () Bool)

(assert (=> (not b_lambda!10243) (not b!473532)))

(assert (=> b!473532 t!14936))

(declare-fun b_and!20399 () Bool)

(assert (= b_and!20397 (and (=> t!14936 result!7453) b_and!20399)))

(declare-fun b_lambda!10245 () Bool)

(assert (=> (not b_lambda!10245) (not b!473535)))

(assert (=> b!473535 t!14936))

(declare-fun b_and!20401 () Bool)

(assert (= b_and!20399 (and (=> t!14936 result!7453) b_and!20401)))

(assert (=> b!473529 m!455515))

(assert (=> b!473529 m!455515))

(assert (=> b!473529 m!455523))

(declare-fun m!455703 () Bool)

(assert (=> b!473534 m!455703))

(assert (=> b!473527 m!455515))

(assert (=> b!473527 m!455515))

(assert (=> b!473527 m!455523))

(assert (=> b!473532 m!455515))

(assert (=> b!473532 m!455529))

(assert (=> b!473532 m!455531))

(assert (=> b!473532 m!455533))

(assert (=> b!473532 m!455529))

(assert (=> b!473532 m!455531))

(assert (=> b!473532 m!455515))

(declare-fun m!455705 () Bool)

(assert (=> b!473532 m!455705))

(declare-fun m!455707 () Bool)

(assert (=> b!473531 m!455707))

(declare-fun m!455709 () Bool)

(assert (=> d!75403 m!455709))

(assert (=> d!75403 m!455451))

(declare-fun m!455711 () Bool)

(assert (=> b!473530 m!455711))

(assert (=> bm!30524 m!455711))

(declare-fun m!455713 () Bool)

(assert (=> b!473535 m!455713))

(declare-fun m!455715 () Bool)

(assert (=> b!473535 m!455715))

(assert (=> b!473535 m!455529))

(assert (=> b!473535 m!455531))

(assert (=> b!473535 m!455533))

(assert (=> b!473535 m!455529))

(assert (=> b!473535 m!455531))

(declare-fun m!455717 () Bool)

(assert (=> b!473535 m!455717))

(declare-fun m!455719 () Bool)

(assert (=> b!473535 m!455719))

(assert (=> b!473535 m!455515))

(assert (=> b!473535 m!455717))

(assert (=> b!473533 m!455515))

(assert (=> b!473533 m!455515))

(declare-fun m!455721 () Bool)

(assert (=> b!473533 m!455721))

(assert (=> b!473338 d!75403))

(declare-fun b!473545 () Bool)

(declare-fun e!277846 () Bool)

(assert (=> b!473545 (= e!277846 tp_is_empty!13341)))

(declare-fun b!473544 () Bool)

(declare-fun e!277847 () Bool)

(assert (=> b!473544 (= e!277847 tp_is_empty!13341)))

(declare-fun condMapEmpty!21730 () Bool)

(declare-fun mapDefault!21730 () ValueCell!6327)

(assert (=> mapNonEmpty!21724 (= condMapEmpty!21730 (= mapRest!21724 ((as const (Array (_ BitVec 32) ValueCell!6327)) mapDefault!21730)))))

(declare-fun mapRes!21730 () Bool)

(assert (=> mapNonEmpty!21724 (= tp!41773 (and e!277846 mapRes!21730))))

(declare-fun mapNonEmpty!21730 () Bool)

(declare-fun tp!41782 () Bool)

(assert (=> mapNonEmpty!21730 (= mapRes!21730 (and tp!41782 e!277847))))

(declare-fun mapValue!21730 () ValueCell!6327)

(declare-fun mapKey!21730 () (_ BitVec 32))

(declare-fun mapRest!21730 () (Array (_ BitVec 32) ValueCell!6327))

(assert (=> mapNonEmpty!21730 (= mapRest!21724 (store mapRest!21730 mapKey!21730 mapValue!21730))))

(declare-fun mapIsEmpty!21730 () Bool)

(assert (=> mapIsEmpty!21730 mapRes!21730))

(assert (= (and mapNonEmpty!21724 condMapEmpty!21730) mapIsEmpty!21730))

(assert (= (and mapNonEmpty!21724 (not condMapEmpty!21730)) mapNonEmpty!21730))

(assert (= (and mapNonEmpty!21730 ((_ is ValueCellFull!6327) mapValue!21730)) b!473544))

(assert (= (and mapNonEmpty!21724 ((_ is ValueCellFull!6327) mapDefault!21730)) b!473545))

(declare-fun m!455723 () Bool)

(assert (=> mapNonEmpty!21730 m!455723))

(declare-fun b_lambda!10247 () Bool)

(assert (= b_lambda!10245 (or (and start!42446 b_free!11913) b_lambda!10247)))

(declare-fun b_lambda!10249 () Bool)

(assert (= b_lambda!10239 (or (and start!42446 b_free!11913) b_lambda!10249)))

(declare-fun b_lambda!10251 () Bool)

(assert (= b_lambda!10235 (or (and start!42446 b_free!11913) b_lambda!10251)))

(declare-fun b_lambda!10253 () Bool)

(assert (= b_lambda!10243 (or (and start!42446 b_free!11913) b_lambda!10253)))

(declare-fun b_lambda!10255 () Bool)

(assert (= b_lambda!10241 (or (and start!42446 b_free!11913) b_lambda!10255)))

(declare-fun b_lambda!10257 () Bool)

(assert (= b_lambda!10237 (or (and start!42446 b_free!11913) b_lambda!10257)))

(check-sat (not b!473527) (not b!473429) (not b!473530) (not b!473534) (not b!473533) (not b!473450) (not bm!30520) (not b_next!11913) (not bm!30515) tp_is_empty!13341 (not b!473421) (not d!75389) (not bm!30504) (not d!75387) (not d!75379) (not b!473470) b_and!20401 (not b!473373) (not b!473438) (not b!473456) (not b!473435) (not bm!30505) (not b!473461) (not mapNonEmpty!21730) (not b!473469) (not b!473458) (not d!75381) (not b!473448) (not b!473473) (not b!473518) (not b!473425) (not b!473521) (not d!75377) (not b!473446) (not b!473376) (not b!473468) (not bm!30489) (not bm!30508) (not b!473489) (not bm!30523) (not b!473452) (not bm!30524) (not d!75383) (not b_lambda!10253) (not b!473523) (not b!473535) (not b!473519) (not bm!30516) (not d!75403) (not b!473471) (not b!473529) (not b!473520) (not d!75399) (not b!473444) (not b!473522) (not bm!30509) (not b_lambda!10255) (not b_lambda!10247) (not b!473472) (not b_lambda!10257) (not b!473515) (not d!75401) (not b!473474) (not bm!30511) (not b!473532) (not b!473433) (not b!473531) (not b_lambda!10249) (not b!473423) (not b!473517) (not bm!30512) (not b!473427) (not b!473467) (not d!75385) (not b_lambda!10251) (not b!473485) (not b!473488))
(check-sat b_and!20401 (not b_next!11913))

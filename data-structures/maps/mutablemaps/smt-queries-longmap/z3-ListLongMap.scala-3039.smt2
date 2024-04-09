; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42630 () Bool)

(assert start!42630)

(declare-fun b_free!12045 () Bool)

(declare-fun b_next!12045 () Bool)

(assert (=> start!42630 (= b_free!12045 (not b_next!12045))))

(declare-fun tp!42178 () Bool)

(declare-fun b_and!20551 () Bool)

(assert (=> start!42630 (= tp!42178 b_and!20551)))

(declare-fun res!283881 () Bool)

(declare-fun e!279073 () Bool)

(assert (=> start!42630 (=> (not res!283881) (not e!279073))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42630 (= res!283881 (validMask!0 mask!1365))))

(assert (=> start!42630 e!279073))

(declare-fun tp_is_empty!13473 () Bool)

(assert (=> start!42630 tp_is_empty!13473))

(assert (=> start!42630 tp!42178))

(assert (=> start!42630 true))

(declare-datatypes ((array!30657 0))(
  ( (array!30658 (arr!14742 (Array (_ BitVec 32) (_ BitVec 64))) (size!15094 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30657)

(declare-fun array_inv!10624 (array!30657) Bool)

(assert (=> start!42630 (array_inv!10624 _keys!1025)))

(declare-datatypes ((V!19069 0))(
  ( (V!19070 (val!6781 Int)) )
))
(declare-datatypes ((ValueCell!6393 0))(
  ( (ValueCellFull!6393 (v!9070 V!19069)) (EmptyCell!6393) )
))
(declare-datatypes ((array!30659 0))(
  ( (array!30660 (arr!14743 (Array (_ BitVec 32) ValueCell!6393)) (size!15095 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30659)

(declare-fun e!279074 () Bool)

(declare-fun array_inv!10625 (array!30659) Bool)

(assert (=> start!42630 (and (array_inv!10625 _values!833) e!279074)))

(declare-fun e!279072 () Bool)

(declare-fun b!475256 () Bool)

(declare-fun minValueBefore!38 () V!19069)

(declare-fun zeroValue!794 () V!19069)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!19069)

(declare-datatypes ((tuple2!8942 0))(
  ( (tuple2!8943 (_1!4481 (_ BitVec 64)) (_2!4481 V!19069)) )
))
(declare-datatypes ((List!9053 0))(
  ( (Nil!9050) (Cons!9049 (h!9905 tuple2!8942) (t!15037 List!9053)) )
))
(declare-datatypes ((ListLongMap!7869 0))(
  ( (ListLongMap!7870 (toList!3950 List!9053)) )
))
(declare-fun +!1729 (ListLongMap!7869 tuple2!8942) ListLongMap!7869)

(declare-fun getCurrentListMap!2265 (array!30657 array!30659 (_ BitVec 32) (_ BitVec 32) V!19069 V!19069 (_ BitVec 32) Int) ListLongMap!7869)

(assert (=> b!475256 (= e!279072 (= (+!1729 (getCurrentListMap!2265 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2265 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841)))))

(declare-fun b!475257 () Bool)

(declare-fun e!279077 () Bool)

(assert (=> b!475257 (= e!279077 tp_is_empty!13473)))

(declare-fun b!475258 () Bool)

(declare-fun res!283879 () Bool)

(assert (=> b!475258 (=> (not res!283879) (not e!279073))))

(declare-datatypes ((List!9054 0))(
  ( (Nil!9051) (Cons!9050 (h!9906 (_ BitVec 64)) (t!15038 List!9054)) )
))
(declare-fun arrayNoDuplicates!0 (array!30657 (_ BitVec 32) List!9054) Bool)

(assert (=> b!475258 (= res!283879 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9051))))

(declare-fun b!475259 () Bool)

(declare-fun res!283880 () Bool)

(assert (=> b!475259 (=> (not res!283880) (not e!279073))))

(assert (=> b!475259 (= res!283880 (and (= (size!15095 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15094 _keys!1025) (size!15095 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475260 () Bool)

(declare-fun res!283878 () Bool)

(assert (=> b!475260 (=> (not res!283878) (not e!279073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30657 (_ BitVec 32)) Bool)

(assert (=> b!475260 (= res!283878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21931 () Bool)

(declare-fun mapRes!21931 () Bool)

(declare-fun tp!42177 () Bool)

(assert (=> mapNonEmpty!21931 (= mapRes!21931 (and tp!42177 e!279077))))

(declare-fun mapRest!21931 () (Array (_ BitVec 32) ValueCell!6393))

(declare-fun mapValue!21931 () ValueCell!6393)

(declare-fun mapKey!21931 () (_ BitVec 32))

(assert (=> mapNonEmpty!21931 (= (arr!14743 _values!833) (store mapRest!21931 mapKey!21931 mapValue!21931))))

(declare-fun b!475261 () Bool)

(declare-fun e!279075 () Bool)

(assert (=> b!475261 (= e!279075 tp_is_empty!13473)))

(declare-fun b!475262 () Bool)

(assert (=> b!475262 (= e!279073 (not e!279072))))

(declare-fun res!283882 () Bool)

(assert (=> b!475262 (=> res!283882 e!279072)))

(assert (=> b!475262 (= res!283882 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!216458 () ListLongMap!7869)

(declare-fun lt!216460 () ListLongMap!7869)

(assert (=> b!475262 (= lt!216458 lt!216460)))

(declare-datatypes ((Unit!13977 0))(
  ( (Unit!13978) )
))
(declare-fun lt!216459 () Unit!13977)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!274 (array!30657 array!30659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19069 V!19069 V!19069 V!19069 (_ BitVec 32) Int) Unit!13977)

(assert (=> b!475262 (= lt!216459 (lemmaNoChangeToArrayThenSameMapNoExtras!274 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2103 (array!30657 array!30659 (_ BitVec 32) (_ BitVec 32) V!19069 V!19069 (_ BitVec 32) Int) ListLongMap!7869)

(assert (=> b!475262 (= lt!216460 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475262 (= lt!216458 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21931 () Bool)

(assert (=> mapIsEmpty!21931 mapRes!21931))

(declare-fun b!475263 () Bool)

(assert (=> b!475263 (= e!279074 (and e!279075 mapRes!21931))))

(declare-fun condMapEmpty!21931 () Bool)

(declare-fun mapDefault!21931 () ValueCell!6393)

(assert (=> b!475263 (= condMapEmpty!21931 (= (arr!14743 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6393)) mapDefault!21931)))))

(assert (= (and start!42630 res!283881) b!475259))

(assert (= (and b!475259 res!283880) b!475260))

(assert (= (and b!475260 res!283878) b!475258))

(assert (= (and b!475258 res!283879) b!475262))

(assert (= (and b!475262 (not res!283882)) b!475256))

(assert (= (and b!475263 condMapEmpty!21931) mapIsEmpty!21931))

(assert (= (and b!475263 (not condMapEmpty!21931)) mapNonEmpty!21931))

(get-info :version)

(assert (= (and mapNonEmpty!21931 ((_ is ValueCellFull!6393) mapValue!21931)) b!475257))

(assert (= (and b!475263 ((_ is ValueCellFull!6393) mapDefault!21931)) b!475261))

(assert (= start!42630 b!475263))

(declare-fun m!457471 () Bool)

(assert (=> mapNonEmpty!21931 m!457471))

(declare-fun m!457473 () Bool)

(assert (=> b!475256 m!457473))

(assert (=> b!475256 m!457473))

(declare-fun m!457475 () Bool)

(assert (=> b!475256 m!457475))

(declare-fun m!457477 () Bool)

(assert (=> b!475256 m!457477))

(declare-fun m!457479 () Bool)

(assert (=> b!475262 m!457479))

(declare-fun m!457481 () Bool)

(assert (=> b!475262 m!457481))

(declare-fun m!457483 () Bool)

(assert (=> b!475262 m!457483))

(declare-fun m!457485 () Bool)

(assert (=> b!475258 m!457485))

(declare-fun m!457487 () Bool)

(assert (=> b!475260 m!457487))

(declare-fun m!457489 () Bool)

(assert (=> start!42630 m!457489))

(declare-fun m!457491 () Bool)

(assert (=> start!42630 m!457491))

(declare-fun m!457493 () Bool)

(assert (=> start!42630 m!457493))

(check-sat (not b!475260) (not mapNonEmpty!21931) (not b!475262) (not start!42630) (not b!475258) (not b!475256) tp_is_empty!13473 (not b_next!12045) b_and!20551)
(check-sat b_and!20551 (not b_next!12045))
(get-model)

(declare-fun d!75493 () Bool)

(declare-fun e!279098 () Bool)

(assert (=> d!75493 e!279098))

(declare-fun res!283902 () Bool)

(assert (=> d!75493 (=> (not res!283902) (not e!279098))))

(declare-fun lt!216480 () ListLongMap!7869)

(declare-fun contains!2559 (ListLongMap!7869 (_ BitVec 64)) Bool)

(assert (=> d!75493 (= res!283902 (contains!2559 lt!216480 (_1!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lt!216478 () List!9053)

(assert (=> d!75493 (= lt!216480 (ListLongMap!7870 lt!216478))))

(declare-fun lt!216479 () Unit!13977)

(declare-fun lt!216481 () Unit!13977)

(assert (=> d!75493 (= lt!216479 lt!216481)))

(declare-datatypes ((Option!387 0))(
  ( (Some!386 (v!9072 V!19069)) (None!385) )
))
(declare-fun getValueByKey!381 (List!9053 (_ BitVec 64)) Option!387)

(assert (=> d!75493 (= (getValueByKey!381 lt!216478 (_1!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!386 (_2!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lemmaContainsTupThenGetReturnValue!205 (List!9053 (_ BitVec 64) V!19069) Unit!13977)

(assert (=> d!75493 (= lt!216481 (lemmaContainsTupThenGetReturnValue!205 lt!216478 (_1!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun insertStrictlySorted!207 (List!9053 (_ BitVec 64) V!19069) List!9053)

(assert (=> d!75493 (= lt!216478 (insertStrictlySorted!207 (toList!3950 (getCurrentListMap!2265 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841)) (_1!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(assert (=> d!75493 (= (+!1729 (getCurrentListMap!2265 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) lt!216480)))

(declare-fun b!475292 () Bool)

(declare-fun res!283903 () Bool)

(assert (=> b!475292 (=> (not res!283903) (not e!279098))))

(assert (=> b!475292 (= res!283903 (= (getValueByKey!381 (toList!3950 lt!216480) (_1!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!386 (_2!4481 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))))

(declare-fun b!475293 () Bool)

(declare-fun contains!2560 (List!9053 tuple2!8942) Bool)

(assert (=> b!475293 (= e!279098 (contains!2560 (toList!3950 lt!216480) (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(assert (= (and d!75493 res!283902) b!475292))

(assert (= (and b!475292 res!283903) b!475293))

(declare-fun m!457519 () Bool)

(assert (=> d!75493 m!457519))

(declare-fun m!457521 () Bool)

(assert (=> d!75493 m!457521))

(declare-fun m!457523 () Bool)

(assert (=> d!75493 m!457523))

(declare-fun m!457525 () Bool)

(assert (=> d!75493 m!457525))

(declare-fun m!457527 () Bool)

(assert (=> b!475292 m!457527))

(declare-fun m!457529 () Bool)

(assert (=> b!475293 m!457529))

(assert (=> b!475256 d!75493))

(declare-fun b!475336 () Bool)

(declare-fun e!279136 () ListLongMap!7869)

(declare-fun call!30592 () ListLongMap!7869)

(assert (=> b!475336 (= e!279136 (+!1729 call!30592 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!475337 () Bool)

(declare-fun e!279125 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!475337 (= e!279125 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475338 () Bool)

(declare-fun e!279126 () ListLongMap!7869)

(assert (=> b!475338 (= e!279136 e!279126)))

(declare-fun c!57103 () Bool)

(assert (=> b!475338 (= c!57103 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475339 () Bool)

(declare-fun e!279135 () ListLongMap!7869)

(declare-fun call!30591 () ListLongMap!7869)

(assert (=> b!475339 (= e!279135 call!30591)))

(declare-fun b!475340 () Bool)

(declare-fun e!279132 () Bool)

(declare-fun e!279129 () Bool)

(assert (=> b!475340 (= e!279132 e!279129)))

(declare-fun res!283928 () Bool)

(assert (=> b!475340 (=> (not res!283928) (not e!279129))))

(declare-fun lt!216540 () ListLongMap!7869)

(assert (=> b!475340 (= res!283928 (contains!2559 lt!216540 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475340 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun bm!30587 () Bool)

(declare-fun call!30595 () ListLongMap!7869)

(assert (=> bm!30587 (= call!30595 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475341 () Bool)

(declare-fun e!279127 () Bool)

(declare-fun apply!335 (ListLongMap!7869 (_ BitVec 64)) V!19069)

(assert (=> b!475341 (= e!279127 (= (apply!335 lt!216540 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun bm!30588 () Bool)

(declare-fun call!30593 () Bool)

(assert (=> bm!30588 (= call!30593 (contains!2559 lt!216540 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475342 () Bool)

(declare-fun e!279128 () Bool)

(assert (=> b!475342 (= e!279128 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475343 () Bool)

(declare-fun e!279131 () Bool)

(declare-fun e!279134 () Bool)

(assert (=> b!475343 (= e!279131 e!279134)))

(declare-fun res!283930 () Bool)

(declare-fun call!30590 () Bool)

(assert (=> b!475343 (= res!283930 call!30590)))

(assert (=> b!475343 (=> (not res!283930) (not e!279134))))

(declare-fun b!475345 () Bool)

(declare-fun e!279137 () Unit!13977)

(declare-fun lt!216547 () Unit!13977)

(assert (=> b!475345 (= e!279137 lt!216547)))

(declare-fun lt!216531 () ListLongMap!7869)

(assert (=> b!475345 (= lt!216531 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216535 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216535 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216534 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216534 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216544 () Unit!13977)

(declare-fun addStillContains!293 (ListLongMap!7869 (_ BitVec 64) V!19069 (_ BitVec 64)) Unit!13977)

(assert (=> b!475345 (= lt!216544 (addStillContains!293 lt!216531 lt!216535 zeroValue!794 lt!216534))))

(assert (=> b!475345 (contains!2559 (+!1729 lt!216531 (tuple2!8943 lt!216535 zeroValue!794)) lt!216534)))

(declare-fun lt!216545 () Unit!13977)

(assert (=> b!475345 (= lt!216545 lt!216544)))

(declare-fun lt!216527 () ListLongMap!7869)

(assert (=> b!475345 (= lt!216527 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216542 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216537 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216537 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216530 () Unit!13977)

(declare-fun addApplyDifferent!293 (ListLongMap!7869 (_ BitVec 64) V!19069 (_ BitVec 64)) Unit!13977)

(assert (=> b!475345 (= lt!216530 (addApplyDifferent!293 lt!216527 lt!216542 minValueBefore!38 lt!216537))))

(assert (=> b!475345 (= (apply!335 (+!1729 lt!216527 (tuple2!8943 lt!216542 minValueBefore!38)) lt!216537) (apply!335 lt!216527 lt!216537))))

(declare-fun lt!216526 () Unit!13977)

(assert (=> b!475345 (= lt!216526 lt!216530)))

(declare-fun lt!216543 () ListLongMap!7869)

(assert (=> b!475345 (= lt!216543 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216539 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216539 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216533 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216533 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216529 () Unit!13977)

(assert (=> b!475345 (= lt!216529 (addApplyDifferent!293 lt!216543 lt!216539 zeroValue!794 lt!216533))))

(assert (=> b!475345 (= (apply!335 (+!1729 lt!216543 (tuple2!8943 lt!216539 zeroValue!794)) lt!216533) (apply!335 lt!216543 lt!216533))))

(declare-fun lt!216528 () Unit!13977)

(assert (=> b!475345 (= lt!216528 lt!216529)))

(declare-fun lt!216532 () ListLongMap!7869)

(assert (=> b!475345 (= lt!216532 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216541 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216541 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216536 () (_ BitVec 64))

(assert (=> b!475345 (= lt!216536 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475345 (= lt!216547 (addApplyDifferent!293 lt!216532 lt!216541 minValueBefore!38 lt!216536))))

(assert (=> b!475345 (= (apply!335 (+!1729 lt!216532 (tuple2!8943 lt!216541 minValueBefore!38)) lt!216536) (apply!335 lt!216532 lt!216536))))

(declare-fun b!475346 () Bool)

(declare-fun e!279130 () Bool)

(declare-fun e!279133 () Bool)

(assert (=> b!475346 (= e!279130 e!279133)))

(declare-fun c!57100 () Bool)

(assert (=> b!475346 (= c!57100 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475347 () Bool)

(assert (=> b!475347 (= e!279133 (not call!30593))))

(declare-fun b!475348 () Bool)

(declare-fun Unit!13979 () Unit!13977)

(assert (=> b!475348 (= e!279137 Unit!13979)))

(declare-fun b!475349 () Bool)

(declare-fun c!57104 () Bool)

(assert (=> b!475349 (= c!57104 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!475349 (= e!279126 e!279135)))

(declare-fun bm!30589 () Bool)

(assert (=> bm!30589 (= call!30590 (contains!2559 lt!216540 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30590 () Bool)

(declare-fun call!30594 () ListLongMap!7869)

(declare-fun call!30596 () ListLongMap!7869)

(assert (=> bm!30590 (= call!30594 call!30596)))

(declare-fun b!475350 () Bool)

(assert (=> b!475350 (= e!279126 call!30591)))

(declare-fun bm!30591 () Bool)

(declare-fun c!57105 () Bool)

(assert (=> bm!30591 (= call!30592 (+!1729 (ite c!57105 call!30595 (ite c!57103 call!30596 call!30594)) (ite (or c!57105 c!57103) (tuple2!8943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun bm!30592 () Bool)

(assert (=> bm!30592 (= call!30596 call!30595)))

(declare-fun b!475351 () Bool)

(assert (=> b!475351 (= e!279135 call!30594)))

(declare-fun b!475352 () Bool)

(assert (=> b!475352 (= e!279131 (not call!30590))))

(declare-fun b!475353 () Bool)

(assert (=> b!475353 (= e!279133 e!279127)))

(declare-fun res!283924 () Bool)

(assert (=> b!475353 (= res!283924 call!30593)))

(assert (=> b!475353 (=> (not res!283924) (not e!279127))))

(declare-fun b!475354 () Bool)

(assert (=> b!475354 (= e!279134 (= (apply!335 lt!216540 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!475355 () Bool)

(declare-fun res!283927 () Bool)

(assert (=> b!475355 (=> (not res!283927) (not e!279130))))

(assert (=> b!475355 (= res!283927 e!279132)))

(declare-fun res!283929 () Bool)

(assert (=> b!475355 (=> res!283929 e!279132)))

(assert (=> b!475355 (= res!283929 (not e!279125))))

(declare-fun res!283925 () Bool)

(assert (=> b!475355 (=> (not res!283925) (not e!279125))))

(assert (=> b!475355 (= res!283925 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun b!475344 () Bool)

(declare-fun get!7167 (ValueCell!6393 V!19069) V!19069)

(declare-fun dynLambda!927 (Int (_ BitVec 64)) V!19069)

(assert (=> b!475344 (= e!279129 (= (apply!335 lt!216540 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)) (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!475344 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15095 _values!833)))))

(assert (=> b!475344 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun d!75495 () Bool)

(assert (=> d!75495 e!279130))

(declare-fun res!283926 () Bool)

(assert (=> d!75495 (=> (not res!283926) (not e!279130))))

(assert (=> d!75495 (= res!283926 (or (bvsge #b00000000000000000000000000000000 (size!15094 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))))

(declare-fun lt!216538 () ListLongMap!7869)

(assert (=> d!75495 (= lt!216540 lt!216538)))

(declare-fun lt!216546 () Unit!13977)

(assert (=> d!75495 (= lt!216546 e!279137)))

(declare-fun c!57101 () Bool)

(assert (=> d!75495 (= c!57101 e!279128)))

(declare-fun res!283922 () Bool)

(assert (=> d!75495 (=> (not res!283922) (not e!279128))))

(assert (=> d!75495 (= res!283922 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> d!75495 (= lt!216538 e!279136)))

(assert (=> d!75495 (= c!57105 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75495 (validMask!0 mask!1365)))

(assert (=> d!75495 (= (getCurrentListMap!2265 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216540)))

(declare-fun b!475356 () Bool)

(declare-fun res!283923 () Bool)

(assert (=> b!475356 (=> (not res!283923) (not e!279130))))

(assert (=> b!475356 (= res!283923 e!279131)))

(declare-fun c!57102 () Bool)

(assert (=> b!475356 (= c!57102 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30593 () Bool)

(assert (=> bm!30593 (= call!30591 call!30592)))

(assert (= (and d!75495 c!57105) b!475336))

(assert (= (and d!75495 (not c!57105)) b!475338))

(assert (= (and b!475338 c!57103) b!475350))

(assert (= (and b!475338 (not c!57103)) b!475349))

(assert (= (and b!475349 c!57104) b!475339))

(assert (= (and b!475349 (not c!57104)) b!475351))

(assert (= (or b!475339 b!475351) bm!30590))

(assert (= (or b!475350 bm!30590) bm!30592))

(assert (= (or b!475350 b!475339) bm!30593))

(assert (= (or b!475336 bm!30592) bm!30587))

(assert (= (or b!475336 bm!30593) bm!30591))

(assert (= (and d!75495 res!283922) b!475342))

(assert (= (and d!75495 c!57101) b!475345))

(assert (= (and d!75495 (not c!57101)) b!475348))

(assert (= (and d!75495 res!283926) b!475355))

(assert (= (and b!475355 res!283925) b!475337))

(assert (= (and b!475355 (not res!283929)) b!475340))

(assert (= (and b!475340 res!283928) b!475344))

(assert (= (and b!475355 res!283927) b!475356))

(assert (= (and b!475356 c!57102) b!475343))

(assert (= (and b!475356 (not c!57102)) b!475352))

(assert (= (and b!475343 res!283930) b!475354))

(assert (= (or b!475343 b!475352) bm!30589))

(assert (= (and b!475356 res!283923) b!475346))

(assert (= (and b!475346 c!57100) b!475353))

(assert (= (and b!475346 (not c!57100)) b!475347))

(assert (= (and b!475353 res!283924) b!475341))

(assert (= (or b!475353 b!475347) bm!30588))

(declare-fun b_lambda!10299 () Bool)

(assert (=> (not b_lambda!10299) (not b!475344)))

(declare-fun t!15040 () Bool)

(declare-fun tb!3943 () Bool)

(assert (=> (and start!42630 (= defaultEntry!841 defaultEntry!841) t!15040) tb!3943))

(declare-fun result!7471 () Bool)

(assert (=> tb!3943 (= result!7471 tp_is_empty!13473)))

(assert (=> b!475344 t!15040))

(declare-fun b_and!20555 () Bool)

(assert (= b_and!20551 (and (=> t!15040 result!7471) b_and!20555)))

(declare-fun m!457531 () Bool)

(assert (=> bm!30588 m!457531))

(declare-fun m!457533 () Bool)

(assert (=> b!475337 m!457533))

(assert (=> b!475337 m!457533))

(declare-fun m!457535 () Bool)

(assert (=> b!475337 m!457535))

(declare-fun m!457537 () Bool)

(assert (=> b!475345 m!457537))

(declare-fun m!457539 () Bool)

(assert (=> b!475345 m!457539))

(declare-fun m!457541 () Bool)

(assert (=> b!475345 m!457541))

(declare-fun m!457543 () Bool)

(assert (=> b!475345 m!457543))

(declare-fun m!457545 () Bool)

(assert (=> b!475345 m!457545))

(declare-fun m!457547 () Bool)

(assert (=> b!475345 m!457547))

(declare-fun m!457549 () Bool)

(assert (=> b!475345 m!457549))

(declare-fun m!457551 () Bool)

(assert (=> b!475345 m!457551))

(declare-fun m!457553 () Bool)

(assert (=> b!475345 m!457553))

(assert (=> b!475345 m!457549))

(declare-fun m!457555 () Bool)

(assert (=> b!475345 m!457555))

(declare-fun m!457557 () Bool)

(assert (=> b!475345 m!457557))

(declare-fun m!457559 () Bool)

(assert (=> b!475345 m!457559))

(assert (=> b!475345 m!457483))

(declare-fun m!457561 () Bool)

(assert (=> b!475345 m!457561))

(declare-fun m!457563 () Bool)

(assert (=> b!475345 m!457563))

(assert (=> b!475345 m!457533))

(assert (=> b!475345 m!457555))

(assert (=> b!475345 m!457545))

(assert (=> b!475345 m!457543))

(declare-fun m!457565 () Bool)

(assert (=> b!475345 m!457565))

(assert (=> b!475342 m!457533))

(assert (=> b!475342 m!457533))

(assert (=> b!475342 m!457535))

(assert (=> d!75495 m!457489))

(declare-fun m!457567 () Bool)

(assert (=> bm!30589 m!457567))

(assert (=> b!475344 m!457533))

(declare-fun m!457569 () Bool)

(assert (=> b!475344 m!457569))

(declare-fun m!457571 () Bool)

(assert (=> b!475344 m!457571))

(declare-fun m!457573 () Bool)

(assert (=> b!475344 m!457573))

(declare-fun m!457575 () Bool)

(assert (=> b!475344 m!457575))

(assert (=> b!475344 m!457533))

(assert (=> b!475344 m!457573))

(assert (=> b!475344 m!457571))

(declare-fun m!457577 () Bool)

(assert (=> b!475354 m!457577))

(assert (=> b!475340 m!457533))

(assert (=> b!475340 m!457533))

(declare-fun m!457579 () Bool)

(assert (=> b!475340 m!457579))

(declare-fun m!457581 () Bool)

(assert (=> bm!30591 m!457581))

(declare-fun m!457583 () Bool)

(assert (=> b!475341 m!457583))

(declare-fun m!457585 () Bool)

(assert (=> b!475336 m!457585))

(assert (=> bm!30587 m!457483))

(assert (=> b!475256 d!75495))

(declare-fun b!475359 () Bool)

(declare-fun e!279149 () ListLongMap!7869)

(declare-fun call!30599 () ListLongMap!7869)

(assert (=> b!475359 (= e!279149 (+!1729 call!30599 (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!475360 () Bool)

(declare-fun e!279138 () Bool)

(assert (=> b!475360 (= e!279138 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475361 () Bool)

(declare-fun e!279139 () ListLongMap!7869)

(assert (=> b!475361 (= e!279149 e!279139)))

(declare-fun c!57109 () Bool)

(assert (=> b!475361 (= c!57109 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475362 () Bool)

(declare-fun e!279148 () ListLongMap!7869)

(declare-fun call!30598 () ListLongMap!7869)

(assert (=> b!475362 (= e!279148 call!30598)))

(declare-fun b!475363 () Bool)

(declare-fun e!279145 () Bool)

(declare-fun e!279142 () Bool)

(assert (=> b!475363 (= e!279145 e!279142)))

(declare-fun res!283937 () Bool)

(assert (=> b!475363 (=> (not res!283937) (not e!279142))))

(declare-fun lt!216562 () ListLongMap!7869)

(assert (=> b!475363 (= res!283937 (contains!2559 lt!216562 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475363 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun bm!30594 () Bool)

(declare-fun call!30602 () ListLongMap!7869)

(assert (=> bm!30594 (= call!30602 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475364 () Bool)

(declare-fun e!279140 () Bool)

(assert (=> b!475364 (= e!279140 (= (apply!335 lt!216562 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun bm!30595 () Bool)

(declare-fun call!30600 () Bool)

(assert (=> bm!30595 (= call!30600 (contains!2559 lt!216562 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475365 () Bool)

(declare-fun e!279141 () Bool)

(assert (=> b!475365 (= e!279141 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475366 () Bool)

(declare-fun e!279144 () Bool)

(declare-fun e!279147 () Bool)

(assert (=> b!475366 (= e!279144 e!279147)))

(declare-fun res!283939 () Bool)

(declare-fun call!30597 () Bool)

(assert (=> b!475366 (= res!283939 call!30597)))

(assert (=> b!475366 (=> (not res!283939) (not e!279147))))

(declare-fun b!475368 () Bool)

(declare-fun e!279150 () Unit!13977)

(declare-fun lt!216569 () Unit!13977)

(assert (=> b!475368 (= e!279150 lt!216569)))

(declare-fun lt!216553 () ListLongMap!7869)

(assert (=> b!475368 (= lt!216553 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216557 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216557 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216556 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216556 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216566 () Unit!13977)

(assert (=> b!475368 (= lt!216566 (addStillContains!293 lt!216553 lt!216557 zeroValue!794 lt!216556))))

(assert (=> b!475368 (contains!2559 (+!1729 lt!216553 (tuple2!8943 lt!216557 zeroValue!794)) lt!216556)))

(declare-fun lt!216567 () Unit!13977)

(assert (=> b!475368 (= lt!216567 lt!216566)))

(declare-fun lt!216549 () ListLongMap!7869)

(assert (=> b!475368 (= lt!216549 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216564 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216564 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216559 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216559 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216552 () Unit!13977)

(assert (=> b!475368 (= lt!216552 (addApplyDifferent!293 lt!216549 lt!216564 minValueAfter!38 lt!216559))))

(assert (=> b!475368 (= (apply!335 (+!1729 lt!216549 (tuple2!8943 lt!216564 minValueAfter!38)) lt!216559) (apply!335 lt!216549 lt!216559))))

(declare-fun lt!216548 () Unit!13977)

(assert (=> b!475368 (= lt!216548 lt!216552)))

(declare-fun lt!216565 () ListLongMap!7869)

(assert (=> b!475368 (= lt!216565 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216561 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216561 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216555 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216555 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216551 () Unit!13977)

(assert (=> b!475368 (= lt!216551 (addApplyDifferent!293 lt!216565 lt!216561 zeroValue!794 lt!216555))))

(assert (=> b!475368 (= (apply!335 (+!1729 lt!216565 (tuple2!8943 lt!216561 zeroValue!794)) lt!216555) (apply!335 lt!216565 lt!216555))))

(declare-fun lt!216550 () Unit!13977)

(assert (=> b!475368 (= lt!216550 lt!216551)))

(declare-fun lt!216554 () ListLongMap!7869)

(assert (=> b!475368 (= lt!216554 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216563 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216563 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216558 () (_ BitVec 64))

(assert (=> b!475368 (= lt!216558 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475368 (= lt!216569 (addApplyDifferent!293 lt!216554 lt!216563 minValueAfter!38 lt!216558))))

(assert (=> b!475368 (= (apply!335 (+!1729 lt!216554 (tuple2!8943 lt!216563 minValueAfter!38)) lt!216558) (apply!335 lt!216554 lt!216558))))

(declare-fun b!475369 () Bool)

(declare-fun e!279143 () Bool)

(declare-fun e!279146 () Bool)

(assert (=> b!475369 (= e!279143 e!279146)))

(declare-fun c!57106 () Bool)

(assert (=> b!475369 (= c!57106 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475370 () Bool)

(assert (=> b!475370 (= e!279146 (not call!30600))))

(declare-fun b!475371 () Bool)

(declare-fun Unit!13980 () Unit!13977)

(assert (=> b!475371 (= e!279150 Unit!13980)))

(declare-fun b!475372 () Bool)

(declare-fun c!57110 () Bool)

(assert (=> b!475372 (= c!57110 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!475372 (= e!279139 e!279148)))

(declare-fun bm!30596 () Bool)

(assert (=> bm!30596 (= call!30597 (contains!2559 lt!216562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30597 () Bool)

(declare-fun call!30601 () ListLongMap!7869)

(declare-fun call!30603 () ListLongMap!7869)

(assert (=> bm!30597 (= call!30601 call!30603)))

(declare-fun b!475373 () Bool)

(assert (=> b!475373 (= e!279139 call!30598)))

(declare-fun bm!30598 () Bool)

(declare-fun c!57111 () Bool)

(assert (=> bm!30598 (= call!30599 (+!1729 (ite c!57111 call!30602 (ite c!57109 call!30603 call!30601)) (ite (or c!57111 c!57109) (tuple2!8943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8943 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun bm!30599 () Bool)

(assert (=> bm!30599 (= call!30603 call!30602)))

(declare-fun b!475374 () Bool)

(assert (=> b!475374 (= e!279148 call!30601)))

(declare-fun b!475375 () Bool)

(assert (=> b!475375 (= e!279144 (not call!30597))))

(declare-fun b!475376 () Bool)

(assert (=> b!475376 (= e!279146 e!279140)))

(declare-fun res!283933 () Bool)

(assert (=> b!475376 (= res!283933 call!30600)))

(assert (=> b!475376 (=> (not res!283933) (not e!279140))))

(declare-fun b!475377 () Bool)

(assert (=> b!475377 (= e!279147 (= (apply!335 lt!216562 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!475378 () Bool)

(declare-fun res!283936 () Bool)

(assert (=> b!475378 (=> (not res!283936) (not e!279143))))

(assert (=> b!475378 (= res!283936 e!279145)))

(declare-fun res!283938 () Bool)

(assert (=> b!475378 (=> res!283938 e!279145)))

(assert (=> b!475378 (= res!283938 (not e!279138))))

(declare-fun res!283934 () Bool)

(assert (=> b!475378 (=> (not res!283934) (not e!279138))))

(assert (=> b!475378 (= res!283934 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun b!475367 () Bool)

(assert (=> b!475367 (= e!279142 (= (apply!335 lt!216562 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)) (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!475367 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15095 _values!833)))))

(assert (=> b!475367 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun d!75497 () Bool)

(assert (=> d!75497 e!279143))

(declare-fun res!283935 () Bool)

(assert (=> d!75497 (=> (not res!283935) (not e!279143))))

(assert (=> d!75497 (= res!283935 (or (bvsge #b00000000000000000000000000000000 (size!15094 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))))

(declare-fun lt!216560 () ListLongMap!7869)

(assert (=> d!75497 (= lt!216562 lt!216560)))

(declare-fun lt!216568 () Unit!13977)

(assert (=> d!75497 (= lt!216568 e!279150)))

(declare-fun c!57107 () Bool)

(assert (=> d!75497 (= c!57107 e!279141)))

(declare-fun res!283931 () Bool)

(assert (=> d!75497 (=> (not res!283931) (not e!279141))))

(assert (=> d!75497 (= res!283931 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> d!75497 (= lt!216560 e!279149)))

(assert (=> d!75497 (= c!57111 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75497 (validMask!0 mask!1365)))

(assert (=> d!75497 (= (getCurrentListMap!2265 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216562)))

(declare-fun b!475379 () Bool)

(declare-fun res!283932 () Bool)

(assert (=> b!475379 (=> (not res!283932) (not e!279143))))

(assert (=> b!475379 (= res!283932 e!279144)))

(declare-fun c!57108 () Bool)

(assert (=> b!475379 (= c!57108 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30600 () Bool)

(assert (=> bm!30600 (= call!30598 call!30599)))

(assert (= (and d!75497 c!57111) b!475359))

(assert (= (and d!75497 (not c!57111)) b!475361))

(assert (= (and b!475361 c!57109) b!475373))

(assert (= (and b!475361 (not c!57109)) b!475372))

(assert (= (and b!475372 c!57110) b!475362))

(assert (= (and b!475372 (not c!57110)) b!475374))

(assert (= (or b!475362 b!475374) bm!30597))

(assert (= (or b!475373 bm!30597) bm!30599))

(assert (= (or b!475373 b!475362) bm!30600))

(assert (= (or b!475359 bm!30599) bm!30594))

(assert (= (or b!475359 bm!30600) bm!30598))

(assert (= (and d!75497 res!283931) b!475365))

(assert (= (and d!75497 c!57107) b!475368))

(assert (= (and d!75497 (not c!57107)) b!475371))

(assert (= (and d!75497 res!283935) b!475378))

(assert (= (and b!475378 res!283934) b!475360))

(assert (= (and b!475378 (not res!283938)) b!475363))

(assert (= (and b!475363 res!283937) b!475367))

(assert (= (and b!475378 res!283936) b!475379))

(assert (= (and b!475379 c!57108) b!475366))

(assert (= (and b!475379 (not c!57108)) b!475375))

(assert (= (and b!475366 res!283939) b!475377))

(assert (= (or b!475366 b!475375) bm!30596))

(assert (= (and b!475379 res!283932) b!475369))

(assert (= (and b!475369 c!57106) b!475376))

(assert (= (and b!475369 (not c!57106)) b!475370))

(assert (= (and b!475376 res!283933) b!475364))

(assert (= (or b!475376 b!475370) bm!30595))

(declare-fun b_lambda!10301 () Bool)

(assert (=> (not b_lambda!10301) (not b!475367)))

(assert (=> b!475367 t!15040))

(declare-fun b_and!20557 () Bool)

(assert (= b_and!20555 (and (=> t!15040 result!7471) b_and!20557)))

(declare-fun m!457587 () Bool)

(assert (=> bm!30595 m!457587))

(assert (=> b!475360 m!457533))

(assert (=> b!475360 m!457533))

(assert (=> b!475360 m!457535))

(declare-fun m!457589 () Bool)

(assert (=> b!475368 m!457589))

(declare-fun m!457591 () Bool)

(assert (=> b!475368 m!457591))

(declare-fun m!457593 () Bool)

(assert (=> b!475368 m!457593))

(declare-fun m!457595 () Bool)

(assert (=> b!475368 m!457595))

(declare-fun m!457597 () Bool)

(assert (=> b!475368 m!457597))

(declare-fun m!457599 () Bool)

(assert (=> b!475368 m!457599))

(declare-fun m!457601 () Bool)

(assert (=> b!475368 m!457601))

(declare-fun m!457603 () Bool)

(assert (=> b!475368 m!457603))

(declare-fun m!457605 () Bool)

(assert (=> b!475368 m!457605))

(assert (=> b!475368 m!457601))

(declare-fun m!457607 () Bool)

(assert (=> b!475368 m!457607))

(declare-fun m!457609 () Bool)

(assert (=> b!475368 m!457609))

(declare-fun m!457611 () Bool)

(assert (=> b!475368 m!457611))

(assert (=> b!475368 m!457481))

(declare-fun m!457613 () Bool)

(assert (=> b!475368 m!457613))

(declare-fun m!457615 () Bool)

(assert (=> b!475368 m!457615))

(assert (=> b!475368 m!457533))

(assert (=> b!475368 m!457607))

(assert (=> b!475368 m!457597))

(assert (=> b!475368 m!457595))

(declare-fun m!457617 () Bool)

(assert (=> b!475368 m!457617))

(assert (=> b!475365 m!457533))

(assert (=> b!475365 m!457533))

(assert (=> b!475365 m!457535))

(assert (=> d!75497 m!457489))

(declare-fun m!457619 () Bool)

(assert (=> bm!30596 m!457619))

(assert (=> b!475367 m!457533))

(declare-fun m!457621 () Bool)

(assert (=> b!475367 m!457621))

(assert (=> b!475367 m!457571))

(assert (=> b!475367 m!457573))

(assert (=> b!475367 m!457575))

(assert (=> b!475367 m!457533))

(assert (=> b!475367 m!457573))

(assert (=> b!475367 m!457571))

(declare-fun m!457623 () Bool)

(assert (=> b!475377 m!457623))

(assert (=> b!475363 m!457533))

(assert (=> b!475363 m!457533))

(declare-fun m!457625 () Bool)

(assert (=> b!475363 m!457625))

(declare-fun m!457627 () Bool)

(assert (=> bm!30598 m!457627))

(declare-fun m!457629 () Bool)

(assert (=> b!475364 m!457629))

(declare-fun m!457631 () Bool)

(assert (=> b!475359 m!457631))

(assert (=> bm!30594 m!457481))

(assert (=> b!475256 d!75497))

(declare-fun b!475388 () Bool)

(declare-fun e!279158 () Bool)

(declare-fun call!30606 () Bool)

(assert (=> b!475388 (= e!279158 call!30606)))

(declare-fun b!475389 () Bool)

(declare-fun e!279157 () Bool)

(assert (=> b!475389 (= e!279157 e!279158)))

(declare-fun c!57114 () Bool)

(assert (=> b!475389 (= c!57114 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475390 () Bool)

(declare-fun e!279159 () Bool)

(assert (=> b!475390 (= e!279159 call!30606)))

(declare-fun d!75499 () Bool)

(declare-fun res!283945 () Bool)

(assert (=> d!75499 (=> res!283945 e!279157)))

(assert (=> d!75499 (= res!283945 (bvsge #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> d!75499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!279157)))

(declare-fun bm!30603 () Bool)

(assert (=> bm!30603 (= call!30606 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!475391 () Bool)

(assert (=> b!475391 (= e!279158 e!279159)))

(declare-fun lt!216577 () (_ BitVec 64))

(assert (=> b!475391 (= lt!216577 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216578 () Unit!13977)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30657 (_ BitVec 64) (_ BitVec 32)) Unit!13977)

(assert (=> b!475391 (= lt!216578 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!216577 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!475391 (arrayContainsKey!0 _keys!1025 lt!216577 #b00000000000000000000000000000000)))

(declare-fun lt!216576 () Unit!13977)

(assert (=> b!475391 (= lt!216576 lt!216578)))

(declare-fun res!283944 () Bool)

(declare-datatypes ((SeekEntryResult!3547 0))(
  ( (MissingZero!3547 (index!16367 (_ BitVec 32))) (Found!3547 (index!16368 (_ BitVec 32))) (Intermediate!3547 (undefined!4359 Bool) (index!16369 (_ BitVec 32)) (x!44619 (_ BitVec 32))) (Undefined!3547) (MissingVacant!3547 (index!16370 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30657 (_ BitVec 32)) SeekEntryResult!3547)

(assert (=> b!475391 (= res!283944 (= (seekEntryOrOpen!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3547 #b00000000000000000000000000000000)))))

(assert (=> b!475391 (=> (not res!283944) (not e!279159))))

(assert (= (and d!75499 (not res!283945)) b!475389))

(assert (= (and b!475389 c!57114) b!475391))

(assert (= (and b!475389 (not c!57114)) b!475388))

(assert (= (and b!475391 res!283944) b!475390))

(assert (= (or b!475390 b!475388) bm!30603))

(assert (=> b!475389 m!457533))

(assert (=> b!475389 m!457533))

(assert (=> b!475389 m!457535))

(declare-fun m!457633 () Bool)

(assert (=> bm!30603 m!457633))

(assert (=> b!475391 m!457533))

(declare-fun m!457635 () Bool)

(assert (=> b!475391 m!457635))

(declare-fun m!457637 () Bool)

(assert (=> b!475391 m!457637))

(assert (=> b!475391 m!457533))

(declare-fun m!457639 () Bool)

(assert (=> b!475391 m!457639))

(assert (=> b!475260 d!75499))

(declare-fun d!75501 () Bool)

(declare-fun res!283954 () Bool)

(declare-fun e!279169 () Bool)

(assert (=> d!75501 (=> res!283954 e!279169)))

(assert (=> d!75501 (= res!283954 (bvsge #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> d!75501 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9051) e!279169)))

(declare-fun b!475402 () Bool)

(declare-fun e!279170 () Bool)

(declare-fun call!30609 () Bool)

(assert (=> b!475402 (= e!279170 call!30609)))

(declare-fun b!475403 () Bool)

(assert (=> b!475403 (= e!279170 call!30609)))

(declare-fun b!475404 () Bool)

(declare-fun e!279168 () Bool)

(assert (=> b!475404 (= e!279169 e!279168)))

(declare-fun res!283953 () Bool)

(assert (=> b!475404 (=> (not res!283953) (not e!279168))))

(declare-fun e!279171 () Bool)

(assert (=> b!475404 (= res!283953 (not e!279171))))

(declare-fun res!283952 () Bool)

(assert (=> b!475404 (=> (not res!283952) (not e!279171))))

(assert (=> b!475404 (= res!283952 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30606 () Bool)

(declare-fun c!57117 () Bool)

(assert (=> bm!30606 (= call!30609 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57117 (Cons!9050 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000) Nil!9051) Nil!9051)))))

(declare-fun b!475405 () Bool)

(declare-fun contains!2561 (List!9054 (_ BitVec 64)) Bool)

(assert (=> b!475405 (= e!279171 (contains!2561 Nil!9051 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475406 () Bool)

(assert (=> b!475406 (= e!279168 e!279170)))

(assert (=> b!475406 (= c!57117 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75501 (not res!283954)) b!475404))

(assert (= (and b!475404 res!283952) b!475405))

(assert (= (and b!475404 res!283953) b!475406))

(assert (= (and b!475406 c!57117) b!475402))

(assert (= (and b!475406 (not c!57117)) b!475403))

(assert (= (or b!475402 b!475403) bm!30606))

(assert (=> b!475404 m!457533))

(assert (=> b!475404 m!457533))

(assert (=> b!475404 m!457535))

(assert (=> bm!30606 m!457533))

(declare-fun m!457641 () Bool)

(assert (=> bm!30606 m!457641))

(assert (=> b!475405 m!457533))

(assert (=> b!475405 m!457533))

(declare-fun m!457643 () Bool)

(assert (=> b!475405 m!457643))

(assert (=> b!475406 m!457533))

(assert (=> b!475406 m!457533))

(assert (=> b!475406 m!457535))

(assert (=> b!475258 d!75501))

(declare-fun d!75503 () Bool)

(assert (=> d!75503 (= (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216581 () Unit!13977)

(declare-fun choose!1363 (array!30657 array!30659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19069 V!19069 V!19069 V!19069 (_ BitVec 32) Int) Unit!13977)

(assert (=> d!75503 (= lt!216581 (choose!1363 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75503 (validMask!0 mask!1365)))

(assert (=> d!75503 (= (lemmaNoChangeToArrayThenSameMapNoExtras!274 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216581)))

(declare-fun bs!15098 () Bool)

(assert (= bs!15098 d!75503))

(assert (=> bs!15098 m!457483))

(assert (=> bs!15098 m!457481))

(declare-fun m!457645 () Bool)

(assert (=> bs!15098 m!457645))

(assert (=> bs!15098 m!457489))

(assert (=> b!475262 d!75503))

(declare-fun e!279189 () Bool)

(declare-fun lt!216600 () ListLongMap!7869)

(declare-fun b!475431 () Bool)

(assert (=> b!475431 (= e!279189 (= lt!216600 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!475432 () Bool)

(declare-fun e!279191 () Bool)

(declare-fun e!279192 () Bool)

(assert (=> b!475432 (= e!279191 e!279192)))

(assert (=> b!475432 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun res!283964 () Bool)

(assert (=> b!475432 (= res!283964 (contains!2559 lt!216600 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475432 (=> (not res!283964) (not e!279192))))

(declare-fun d!75505 () Bool)

(declare-fun e!279190 () Bool)

(assert (=> d!75505 e!279190))

(declare-fun res!283963 () Bool)

(assert (=> d!75505 (=> (not res!283963) (not e!279190))))

(assert (=> d!75505 (= res!283963 (not (contains!2559 lt!216600 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!279188 () ListLongMap!7869)

(assert (=> d!75505 (= lt!216600 e!279188)))

(declare-fun c!57127 () Bool)

(assert (=> d!75505 (= c!57127 (bvsge #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> d!75505 (validMask!0 mask!1365)))

(assert (=> d!75505 (= (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216600)))

(declare-fun b!475433 () Bool)

(declare-fun lt!216598 () Unit!13977)

(declare-fun lt!216601 () Unit!13977)

(assert (=> b!475433 (= lt!216598 lt!216601)))

(declare-fun lt!216596 () (_ BitVec 64))

(declare-fun lt!216602 () ListLongMap!7869)

(declare-fun lt!216597 () (_ BitVec 64))

(declare-fun lt!216599 () V!19069)

(assert (=> b!475433 (not (contains!2559 (+!1729 lt!216602 (tuple2!8943 lt!216596 lt!216599)) lt!216597))))

(declare-fun addStillNotContains!170 (ListLongMap!7869 (_ BitVec 64) V!19069 (_ BitVec 64)) Unit!13977)

(assert (=> b!475433 (= lt!216601 (addStillNotContains!170 lt!216602 lt!216596 lt!216599 lt!216597))))

(assert (=> b!475433 (= lt!216597 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475433 (= lt!216599 (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475433 (= lt!216596 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30612 () ListLongMap!7869)

(assert (=> b!475433 (= lt!216602 call!30612)))

(declare-fun e!279187 () ListLongMap!7869)

(assert (=> b!475433 (= e!279187 (+!1729 call!30612 (tuple2!8943 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000) (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30609 () Bool)

(assert (=> bm!30609 (= call!30612 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475434 () Bool)

(declare-fun res!283965 () Bool)

(assert (=> b!475434 (=> (not res!283965) (not e!279190))))

(assert (=> b!475434 (= res!283965 (not (contains!2559 lt!216600 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475435 () Bool)

(assert (=> b!475435 (= e!279190 e!279191)))

(declare-fun c!57129 () Bool)

(declare-fun e!279186 () Bool)

(assert (=> b!475435 (= c!57129 e!279186)))

(declare-fun res!283966 () Bool)

(assert (=> b!475435 (=> (not res!283966) (not e!279186))))

(assert (=> b!475435 (= res!283966 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun b!475436 () Bool)

(assert (=> b!475436 (= e!279191 e!279189)))

(declare-fun c!57126 () Bool)

(assert (=> b!475436 (= c!57126 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun b!475437 () Bool)

(assert (=> b!475437 (= e!279188 (ListLongMap!7870 Nil!9050))))

(declare-fun b!475438 () Bool)

(assert (=> b!475438 (= e!279188 e!279187)))

(declare-fun c!57128 () Bool)

(assert (=> b!475438 (= c!57128 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475439 () Bool)

(assert (=> b!475439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> b!475439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15095 _values!833)))))

(assert (=> b!475439 (= e!279192 (= (apply!335 lt!216600 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)) (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!475440 () Bool)

(assert (=> b!475440 (= e!279186 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475440 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!475441 () Bool)

(declare-fun isEmpty!587 (ListLongMap!7869) Bool)

(assert (=> b!475441 (= e!279189 (isEmpty!587 lt!216600))))

(declare-fun b!475442 () Bool)

(assert (=> b!475442 (= e!279187 call!30612)))

(assert (= (and d!75505 c!57127) b!475437))

(assert (= (and d!75505 (not c!57127)) b!475438))

(assert (= (and b!475438 c!57128) b!475433))

(assert (= (and b!475438 (not c!57128)) b!475442))

(assert (= (or b!475433 b!475442) bm!30609))

(assert (= (and d!75505 res!283963) b!475434))

(assert (= (and b!475434 res!283965) b!475435))

(assert (= (and b!475435 res!283966) b!475440))

(assert (= (and b!475435 c!57129) b!475432))

(assert (= (and b!475435 (not c!57129)) b!475436))

(assert (= (and b!475432 res!283964) b!475439))

(assert (= (and b!475436 c!57126) b!475431))

(assert (= (and b!475436 (not c!57126)) b!475441))

(declare-fun b_lambda!10303 () Bool)

(assert (=> (not b_lambda!10303) (not b!475433)))

(assert (=> b!475433 t!15040))

(declare-fun b_and!20559 () Bool)

(assert (= b_and!20557 (and (=> t!15040 result!7471) b_and!20559)))

(declare-fun b_lambda!10305 () Bool)

(assert (=> (not b_lambda!10305) (not b!475439)))

(assert (=> b!475439 t!15040))

(declare-fun b_and!20561 () Bool)

(assert (= b_and!20559 (and (=> t!15040 result!7471) b_and!20561)))

(declare-fun m!457647 () Bool)

(assert (=> b!475431 m!457647))

(declare-fun m!457649 () Bool)

(assert (=> b!475441 m!457649))

(assert (=> b!475438 m!457533))

(assert (=> b!475438 m!457533))

(assert (=> b!475438 m!457535))

(declare-fun m!457651 () Bool)

(assert (=> b!475433 m!457651))

(declare-fun m!457653 () Bool)

(assert (=> b!475433 m!457653))

(declare-fun m!457655 () Bool)

(assert (=> b!475433 m!457655))

(assert (=> b!475433 m!457571))

(assert (=> b!475433 m!457571))

(assert (=> b!475433 m!457573))

(assert (=> b!475433 m!457575))

(declare-fun m!457657 () Bool)

(assert (=> b!475433 m!457657))

(assert (=> b!475433 m!457533))

(assert (=> b!475433 m!457573))

(assert (=> b!475433 m!457653))

(assert (=> b!475440 m!457533))

(assert (=> b!475440 m!457533))

(assert (=> b!475440 m!457535))

(assert (=> bm!30609 m!457647))

(declare-fun m!457659 () Bool)

(assert (=> b!475434 m!457659))

(assert (=> b!475439 m!457571))

(assert (=> b!475439 m!457573))

(assert (=> b!475439 m!457533))

(assert (=> b!475439 m!457533))

(declare-fun m!457661 () Bool)

(assert (=> b!475439 m!457661))

(assert (=> b!475439 m!457571))

(assert (=> b!475439 m!457573))

(assert (=> b!475439 m!457575))

(declare-fun m!457663 () Bool)

(assert (=> d!75505 m!457663))

(assert (=> d!75505 m!457489))

(assert (=> b!475432 m!457533))

(assert (=> b!475432 m!457533))

(declare-fun m!457665 () Bool)

(assert (=> b!475432 m!457665))

(assert (=> b!475262 d!75505))

(declare-fun e!279196 () Bool)

(declare-fun lt!216607 () ListLongMap!7869)

(declare-fun b!475443 () Bool)

(assert (=> b!475443 (= e!279196 (= lt!216607 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!475444 () Bool)

(declare-fun e!279198 () Bool)

(declare-fun e!279199 () Bool)

(assert (=> b!475444 (= e!279198 e!279199)))

(assert (=> b!475444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun res!283968 () Bool)

(assert (=> b!475444 (= res!283968 (contains!2559 lt!216607 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475444 (=> (not res!283968) (not e!279199))))

(declare-fun d!75507 () Bool)

(declare-fun e!279197 () Bool)

(assert (=> d!75507 e!279197))

(declare-fun res!283967 () Bool)

(assert (=> d!75507 (=> (not res!283967) (not e!279197))))

(assert (=> d!75507 (= res!283967 (not (contains!2559 lt!216607 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!279195 () ListLongMap!7869)

(assert (=> d!75507 (= lt!216607 e!279195)))

(declare-fun c!57131 () Bool)

(assert (=> d!75507 (= c!57131 (bvsge #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> d!75507 (validMask!0 mask!1365)))

(assert (=> d!75507 (= (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216607)))

(declare-fun b!475445 () Bool)

(declare-fun lt!216605 () Unit!13977)

(declare-fun lt!216608 () Unit!13977)

(assert (=> b!475445 (= lt!216605 lt!216608)))

(declare-fun lt!216604 () (_ BitVec 64))

(declare-fun lt!216609 () ListLongMap!7869)

(declare-fun lt!216606 () V!19069)

(declare-fun lt!216603 () (_ BitVec 64))

(assert (=> b!475445 (not (contains!2559 (+!1729 lt!216609 (tuple2!8943 lt!216603 lt!216606)) lt!216604))))

(assert (=> b!475445 (= lt!216608 (addStillNotContains!170 lt!216609 lt!216603 lt!216606 lt!216604))))

(assert (=> b!475445 (= lt!216604 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475445 (= lt!216606 (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475445 (= lt!216603 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30613 () ListLongMap!7869)

(assert (=> b!475445 (= lt!216609 call!30613)))

(declare-fun e!279194 () ListLongMap!7869)

(assert (=> b!475445 (= e!279194 (+!1729 call!30613 (tuple2!8943 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000) (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30610 () Bool)

(assert (=> bm!30610 (= call!30613 (getCurrentListMapNoExtraKeys!2103 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475446 () Bool)

(declare-fun res!283969 () Bool)

(assert (=> b!475446 (=> (not res!283969) (not e!279197))))

(assert (=> b!475446 (= res!283969 (not (contains!2559 lt!216607 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475447 () Bool)

(assert (=> b!475447 (= e!279197 e!279198)))

(declare-fun c!57133 () Bool)

(declare-fun e!279193 () Bool)

(assert (=> b!475447 (= c!57133 e!279193)))

(declare-fun res!283970 () Bool)

(assert (=> b!475447 (=> (not res!283970) (not e!279193))))

(assert (=> b!475447 (= res!283970 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun b!475448 () Bool)

(assert (=> b!475448 (= e!279198 e!279196)))

(declare-fun c!57130 () Bool)

(assert (=> b!475448 (= c!57130 (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(declare-fun b!475449 () Bool)

(assert (=> b!475449 (= e!279195 (ListLongMap!7870 Nil!9050))))

(declare-fun b!475450 () Bool)

(assert (=> b!475450 (= e!279195 e!279194)))

(declare-fun c!57132 () Bool)

(assert (=> b!475450 (= c!57132 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475451 () Bool)

(assert (=> b!475451 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15094 _keys!1025)))))

(assert (=> b!475451 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15095 _values!833)))))

(assert (=> b!475451 (= e!279199 (= (apply!335 lt!216607 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)) (get!7167 (select (arr!14743 _values!833) #b00000000000000000000000000000000) (dynLambda!927 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!475452 () Bool)

(assert (=> b!475452 (= e!279193 (validKeyInArray!0 (select (arr!14742 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475452 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!475453 () Bool)

(assert (=> b!475453 (= e!279196 (isEmpty!587 lt!216607))))

(declare-fun b!475454 () Bool)

(assert (=> b!475454 (= e!279194 call!30613)))

(assert (= (and d!75507 c!57131) b!475449))

(assert (= (and d!75507 (not c!57131)) b!475450))

(assert (= (and b!475450 c!57132) b!475445))

(assert (= (and b!475450 (not c!57132)) b!475454))

(assert (= (or b!475445 b!475454) bm!30610))

(assert (= (and d!75507 res!283967) b!475446))

(assert (= (and b!475446 res!283969) b!475447))

(assert (= (and b!475447 res!283970) b!475452))

(assert (= (and b!475447 c!57133) b!475444))

(assert (= (and b!475447 (not c!57133)) b!475448))

(assert (= (and b!475444 res!283968) b!475451))

(assert (= (and b!475448 c!57130) b!475443))

(assert (= (and b!475448 (not c!57130)) b!475453))

(declare-fun b_lambda!10307 () Bool)

(assert (=> (not b_lambda!10307) (not b!475445)))

(assert (=> b!475445 t!15040))

(declare-fun b_and!20563 () Bool)

(assert (= b_and!20561 (and (=> t!15040 result!7471) b_and!20563)))

(declare-fun b_lambda!10309 () Bool)

(assert (=> (not b_lambda!10309) (not b!475451)))

(assert (=> b!475451 t!15040))

(declare-fun b_and!20565 () Bool)

(assert (= b_and!20563 (and (=> t!15040 result!7471) b_and!20565)))

(declare-fun m!457667 () Bool)

(assert (=> b!475443 m!457667))

(declare-fun m!457669 () Bool)

(assert (=> b!475453 m!457669))

(assert (=> b!475450 m!457533))

(assert (=> b!475450 m!457533))

(assert (=> b!475450 m!457535))

(declare-fun m!457671 () Bool)

(assert (=> b!475445 m!457671))

(declare-fun m!457673 () Bool)

(assert (=> b!475445 m!457673))

(declare-fun m!457675 () Bool)

(assert (=> b!475445 m!457675))

(assert (=> b!475445 m!457571))

(assert (=> b!475445 m!457571))

(assert (=> b!475445 m!457573))

(assert (=> b!475445 m!457575))

(declare-fun m!457677 () Bool)

(assert (=> b!475445 m!457677))

(assert (=> b!475445 m!457533))

(assert (=> b!475445 m!457573))

(assert (=> b!475445 m!457673))

(assert (=> b!475452 m!457533))

(assert (=> b!475452 m!457533))

(assert (=> b!475452 m!457535))

(assert (=> bm!30610 m!457667))

(declare-fun m!457679 () Bool)

(assert (=> b!475446 m!457679))

(assert (=> b!475451 m!457571))

(assert (=> b!475451 m!457573))

(assert (=> b!475451 m!457533))

(assert (=> b!475451 m!457533))

(declare-fun m!457681 () Bool)

(assert (=> b!475451 m!457681))

(assert (=> b!475451 m!457571))

(assert (=> b!475451 m!457573))

(assert (=> b!475451 m!457575))

(declare-fun m!457683 () Bool)

(assert (=> d!75507 m!457683))

(assert (=> d!75507 m!457489))

(assert (=> b!475444 m!457533))

(assert (=> b!475444 m!457533))

(declare-fun m!457685 () Bool)

(assert (=> b!475444 m!457685))

(assert (=> b!475262 d!75507))

(declare-fun d!75509 () Bool)

(assert (=> d!75509 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42630 d!75509))

(declare-fun d!75511 () Bool)

(assert (=> d!75511 (= (array_inv!10624 _keys!1025) (bvsge (size!15094 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42630 d!75511))

(declare-fun d!75513 () Bool)

(assert (=> d!75513 (= (array_inv!10625 _values!833) (bvsge (size!15095 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42630 d!75513))

(declare-fun condMapEmpty!21937 () Bool)

(declare-fun mapDefault!21937 () ValueCell!6393)

(assert (=> mapNonEmpty!21931 (= condMapEmpty!21937 (= mapRest!21931 ((as const (Array (_ BitVec 32) ValueCell!6393)) mapDefault!21937)))))

(declare-fun e!279205 () Bool)

(declare-fun mapRes!21937 () Bool)

(assert (=> mapNonEmpty!21931 (= tp!42177 (and e!279205 mapRes!21937))))

(declare-fun b!475462 () Bool)

(assert (=> b!475462 (= e!279205 tp_is_empty!13473)))

(declare-fun b!475461 () Bool)

(declare-fun e!279204 () Bool)

(assert (=> b!475461 (= e!279204 tp_is_empty!13473)))

(declare-fun mapIsEmpty!21937 () Bool)

(assert (=> mapIsEmpty!21937 mapRes!21937))

(declare-fun mapNonEmpty!21937 () Bool)

(declare-fun tp!42187 () Bool)

(assert (=> mapNonEmpty!21937 (= mapRes!21937 (and tp!42187 e!279204))))

(declare-fun mapRest!21937 () (Array (_ BitVec 32) ValueCell!6393))

(declare-fun mapValue!21937 () ValueCell!6393)

(declare-fun mapKey!21937 () (_ BitVec 32))

(assert (=> mapNonEmpty!21937 (= mapRest!21931 (store mapRest!21937 mapKey!21937 mapValue!21937))))

(assert (= (and mapNonEmpty!21931 condMapEmpty!21937) mapIsEmpty!21937))

(assert (= (and mapNonEmpty!21931 (not condMapEmpty!21937)) mapNonEmpty!21937))

(assert (= (and mapNonEmpty!21937 ((_ is ValueCellFull!6393) mapValue!21937)) b!475461))

(assert (= (and mapNonEmpty!21931 ((_ is ValueCellFull!6393) mapDefault!21937)) b!475462))

(declare-fun m!457687 () Bool)

(assert (=> mapNonEmpty!21937 m!457687))

(declare-fun b_lambda!10311 () Bool)

(assert (= b_lambda!10299 (or (and start!42630 b_free!12045) b_lambda!10311)))

(declare-fun b_lambda!10313 () Bool)

(assert (= b_lambda!10307 (or (and start!42630 b_free!12045) b_lambda!10313)))

(declare-fun b_lambda!10315 () Bool)

(assert (= b_lambda!10303 (or (and start!42630 b_free!12045) b_lambda!10315)))

(declare-fun b_lambda!10317 () Bool)

(assert (= b_lambda!10301 (or (and start!42630 b_free!12045) b_lambda!10317)))

(declare-fun b_lambda!10319 () Bool)

(assert (= b_lambda!10305 (or (and start!42630 b_free!12045) b_lambda!10319)))

(declare-fun b_lambda!10321 () Bool)

(assert (= b_lambda!10309 (or (and start!42630 b_free!12045) b_lambda!10321)))

(check-sat tp_is_empty!13473 (not b_lambda!10313) (not b!475359) (not d!75493) (not bm!30594) (not b!475364) b_and!20565 (not b!475337) (not b!475434) (not mapNonEmpty!21937) (not b!475292) (not b!475405) (not bm!30595) (not b!475406) (not b_lambda!10311) (not b_lambda!10315) (not b_lambda!10319) (not b!475341) (not b!475453) (not d!75503) (not b!475450) (not bm!30610) (not b!475452) (not b!475345) (not b!475451) (not b!475336) (not bm!30589) (not bm!30596) (not b!475360) (not b!475441) (not d!75507) (not bm!30591) (not b!475354) (not bm!30603) (not b!475368) (not b_lambda!10321) (not b!475431) (not bm!30587) (not bm!30598) (not b_lambda!10317) (not b!475438) (not b!475293) (not b!475367) (not bm!30606) (not b!475363) (not b!475445) (not b!475365) (not d!75497) (not d!75505) (not d!75495) (not b!475340) (not b!475404) (not b!475439) (not b!475389) (not b!475344) (not bm!30588) (not b!475391) (not b!475433) (not b!475443) (not b!475432) (not b_next!12045) (not b!475377) (not b!475342) (not bm!30609) (not b!475444) (not b!475440) (not b!475446))
(check-sat b_and!20565 (not b_next!12045))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132026 () Bool)

(assert start!132026)

(declare-fun b_free!31707 () Bool)

(declare-fun b_next!31707 () Bool)

(assert (=> start!132026 (= b_free!31707 (not b_next!31707))))

(declare-fun tp!111373 () Bool)

(declare-fun b_and!51127 () Bool)

(assert (=> start!132026 (= tp!111373 b_and!51127)))

(declare-fun b!1546282 () Bool)

(declare-fun res!1060246 () Bool)

(declare-fun e!860728 () Bool)

(assert (=> b!1546282 (=> (not res!1060246) (not e!860728))))

(declare-datatypes ((array!103135 0))(
  ( (array!103136 (arr!49765 (Array (_ BitVec 32) (_ BitVec 64))) (size!50316 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103135)

(declare-datatypes ((List!36175 0))(
  ( (Nil!36172) (Cons!36171 (h!37617 (_ BitVec 64)) (t!50876 List!36175)) )
))
(declare-fun arrayNoDuplicates!0 (array!103135 (_ BitVec 32) List!36175) Bool)

(assert (=> b!1546282 (= res!1060246 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36172))))

(declare-fun b!1546283 () Bool)

(declare-fun res!1060243 () Bool)

(assert (=> b!1546283 (=> (not res!1060243) (not e!860728))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!59087 0))(
  ( (V!59088 (val!19069 Int)) )
))
(declare-datatypes ((ValueCell!18081 0))(
  ( (ValueCellFull!18081 (v!21867 V!59087)) (EmptyCell!18081) )
))
(declare-datatypes ((array!103137 0))(
  ( (array!103138 (arr!49766 (Array (_ BitVec 32) ValueCell!18081)) (size!50317 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103137)

(assert (=> b!1546283 (= res!1060243 (and (= (size!50317 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50316 _keys!618) (size!50317 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546284 () Bool)

(declare-fun e!860726 () Bool)

(assert (=> b!1546284 (= e!860726 (not true))))

(declare-fun zeroValue!436 () V!59087)

(declare-datatypes ((tuple2!24664 0))(
  ( (tuple2!24665 (_1!12342 (_ BitVec 64)) (_2!12342 V!59087)) )
))
(declare-datatypes ((List!36176 0))(
  ( (Nil!36173) (Cons!36172 (h!37618 tuple2!24664) (t!50877 List!36176)) )
))
(declare-datatypes ((ListLongMap!22285 0))(
  ( (ListLongMap!22286 (toList!11158 List!36176)) )
))
(declare-fun lt!666480 () ListLongMap!22285)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun contains!10058 (ListLongMap!22285 (_ BitVec 64)) Bool)

(declare-fun +!4886 (ListLongMap!22285 tuple2!24664) ListLongMap!22285)

(assert (=> b!1546284 (contains!10058 (+!4886 lt!666480 (tuple2!24665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49765 _keys!618) from!762))))

(declare-datatypes ((Unit!51478 0))(
  ( (Unit!51479) )
))
(declare-fun lt!666482 () Unit!51478)

(declare-fun addStillContains!1240 (ListLongMap!22285 (_ BitVec 64) V!59087 (_ BitVec 64)) Unit!51478)

(assert (=> b!1546284 (= lt!666482 (addStillContains!1240 lt!666480 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49765 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59087)

(declare-fun getCurrentListMapNoExtraKeys!6605 (array!103135 array!103137 (_ BitVec 32) (_ BitVec 32) V!59087 V!59087 (_ BitVec 32) Int) ListLongMap!22285)

(assert (=> b!1546284 (= lt!666480 (getCurrentListMapNoExtraKeys!6605 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546285 () Bool)

(assert (=> b!1546285 (= e!860728 e!860726)))

(declare-fun res!1060247 () Bool)

(assert (=> b!1546285 (=> (not res!1060247) (not e!860726))))

(assert (=> b!1546285 (= res!1060247 (bvslt from!762 (size!50316 _keys!618)))))

(declare-fun lt!666481 () ListLongMap!22285)

(declare-fun e!860724 () ListLongMap!22285)

(assert (=> b!1546285 (= lt!666481 e!860724)))

(declare-fun c!141744 () Bool)

(declare-fun lt!666479 () Bool)

(assert (=> b!1546285 (= c!141744 (and (not lt!666479) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546285 (= lt!666479 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69524 () Bool)

(declare-fun call!69527 () ListLongMap!22285)

(declare-fun call!69528 () ListLongMap!22285)

(assert (=> bm!69524 (= call!69527 call!69528)))

(declare-fun mapNonEmpty!58678 () Bool)

(declare-fun mapRes!58678 () Bool)

(declare-fun tp!111374 () Bool)

(declare-fun e!860721 () Bool)

(assert (=> mapNonEmpty!58678 (= mapRes!58678 (and tp!111374 e!860721))))

(declare-fun mapValue!58678 () ValueCell!18081)

(declare-fun mapRest!58678 () (Array (_ BitVec 32) ValueCell!18081))

(declare-fun mapKey!58678 () (_ BitVec 32))

(assert (=> mapNonEmpty!58678 (= (arr!49766 _values!470) (store mapRest!58678 mapKey!58678 mapValue!58678))))

(declare-fun mapIsEmpty!58678 () Bool)

(assert (=> mapIsEmpty!58678 mapRes!58678))

(declare-fun b!1546286 () Bool)

(declare-fun res!1060241 () Bool)

(assert (=> b!1546286 (=> (not res!1060241) (not e!860726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546286 (= res!1060241 (validKeyInArray!0 (select (arr!49765 _keys!618) from!762)))))

(declare-fun b!1546287 () Bool)

(declare-fun tp_is_empty!37983 () Bool)

(assert (=> b!1546287 (= e!860721 tp_is_empty!37983)))

(declare-fun b!1546288 () Bool)

(declare-fun c!141745 () Bool)

(assert (=> b!1546288 (= c!141745 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666479))))

(declare-fun e!860725 () ListLongMap!22285)

(declare-fun e!860722 () ListLongMap!22285)

(assert (=> b!1546288 (= e!860725 e!860722)))

(declare-fun b!1546289 () Bool)

(declare-fun e!860720 () Bool)

(declare-fun e!860723 () Bool)

(assert (=> b!1546289 (= e!860720 (and e!860723 mapRes!58678))))

(declare-fun condMapEmpty!58678 () Bool)

(declare-fun mapDefault!58678 () ValueCell!18081)

(assert (=> b!1546289 (= condMapEmpty!58678 (= (arr!49766 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18081)) mapDefault!58678)))))

(declare-fun b!1546290 () Bool)

(assert (=> b!1546290 (= e!860724 (+!4886 call!69528 (tuple2!24665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546291 () Bool)

(assert (=> b!1546291 (= e!860722 call!69527)))

(declare-fun b!1546292 () Bool)

(assert (=> b!1546292 (= e!860723 tp_is_empty!37983)))

(declare-fun b!1546293 () Bool)

(declare-fun res!1060242 () Bool)

(assert (=> b!1546293 (=> (not res!1060242) (not e!860728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103135 (_ BitVec 32)) Bool)

(assert (=> b!1546293 (= res!1060242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69525 () Bool)

(declare-fun call!69529 () ListLongMap!22285)

(declare-fun call!69531 () ListLongMap!22285)

(assert (=> bm!69525 (= call!69529 call!69531)))

(declare-fun bm!69526 () Bool)

(declare-fun call!69530 () ListLongMap!22285)

(assert (=> bm!69526 (= call!69530 (getCurrentListMapNoExtraKeys!6605 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1060244 () Bool)

(assert (=> start!132026 (=> (not res!1060244) (not e!860728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132026 (= res!1060244 (validMask!0 mask!926))))

(assert (=> start!132026 e!860728))

(declare-fun array_inv!38631 (array!103135) Bool)

(assert (=> start!132026 (array_inv!38631 _keys!618)))

(assert (=> start!132026 tp_is_empty!37983))

(assert (=> start!132026 true))

(assert (=> start!132026 tp!111373))

(declare-fun array_inv!38632 (array!103137) Bool)

(assert (=> start!132026 (and (array_inv!38632 _values!470) e!860720)))

(declare-fun b!1546294 () Bool)

(assert (=> b!1546294 (= e!860725 call!69527)))

(declare-fun b!1546295 () Bool)

(assert (=> b!1546295 (= e!860722 call!69529)))

(declare-fun bm!69527 () Bool)

(assert (=> bm!69527 (= call!69531 call!69530)))

(declare-fun b!1546296 () Bool)

(assert (=> b!1546296 (= e!860724 e!860725)))

(declare-fun c!141746 () Bool)

(assert (=> b!1546296 (= c!141746 (and (not lt!666479) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1546297 () Bool)

(declare-fun res!1060245 () Bool)

(assert (=> b!1546297 (=> (not res!1060245) (not e!860728))))

(assert (=> b!1546297 (= res!1060245 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50316 _keys!618))))))

(declare-fun bm!69528 () Bool)

(assert (=> bm!69528 (= call!69528 (+!4886 (ite c!141744 call!69530 (ite c!141746 call!69531 call!69529)) (ite (or c!141744 c!141746) (tuple2!24665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and start!132026 res!1060244) b!1546283))

(assert (= (and b!1546283 res!1060243) b!1546293))

(assert (= (and b!1546293 res!1060242) b!1546282))

(assert (= (and b!1546282 res!1060246) b!1546297))

(assert (= (and b!1546297 res!1060245) b!1546285))

(assert (= (and b!1546285 c!141744) b!1546290))

(assert (= (and b!1546285 (not c!141744)) b!1546296))

(assert (= (and b!1546296 c!141746) b!1546294))

(assert (= (and b!1546296 (not c!141746)) b!1546288))

(assert (= (and b!1546288 c!141745) b!1546291))

(assert (= (and b!1546288 (not c!141745)) b!1546295))

(assert (= (or b!1546291 b!1546295) bm!69525))

(assert (= (or b!1546294 bm!69525) bm!69527))

(assert (= (or b!1546294 b!1546291) bm!69524))

(assert (= (or b!1546290 bm!69527) bm!69526))

(assert (= (or b!1546290 bm!69524) bm!69528))

(assert (= (and b!1546285 res!1060247) b!1546286))

(assert (= (and b!1546286 res!1060241) b!1546284))

(assert (= (and b!1546289 condMapEmpty!58678) mapIsEmpty!58678))

(assert (= (and b!1546289 (not condMapEmpty!58678)) mapNonEmpty!58678))

(get-info :version)

(assert (= (and mapNonEmpty!58678 ((_ is ValueCellFull!18081) mapValue!58678)) b!1546287))

(assert (= (and b!1546289 ((_ is ValueCellFull!18081) mapDefault!58678)) b!1546292))

(assert (= start!132026 b!1546289))

(declare-fun m!1426241 () Bool)

(assert (=> start!132026 m!1426241))

(declare-fun m!1426243 () Bool)

(assert (=> start!132026 m!1426243))

(declare-fun m!1426245 () Bool)

(assert (=> start!132026 m!1426245))

(declare-fun m!1426247 () Bool)

(assert (=> bm!69526 m!1426247))

(declare-fun m!1426249 () Bool)

(assert (=> mapNonEmpty!58678 m!1426249))

(declare-fun m!1426251 () Bool)

(assert (=> b!1546290 m!1426251))

(declare-fun m!1426253 () Bool)

(assert (=> b!1546286 m!1426253))

(assert (=> b!1546286 m!1426253))

(declare-fun m!1426255 () Bool)

(assert (=> b!1546286 m!1426255))

(assert (=> b!1546284 m!1426247))

(assert (=> b!1546284 m!1426253))

(declare-fun m!1426257 () Bool)

(assert (=> b!1546284 m!1426257))

(assert (=> b!1546284 m!1426253))

(declare-fun m!1426259 () Bool)

(assert (=> b!1546284 m!1426259))

(assert (=> b!1546284 m!1426257))

(assert (=> b!1546284 m!1426253))

(declare-fun m!1426261 () Bool)

(assert (=> b!1546284 m!1426261))

(declare-fun m!1426263 () Bool)

(assert (=> bm!69528 m!1426263))

(declare-fun m!1426265 () Bool)

(assert (=> b!1546293 m!1426265))

(declare-fun m!1426267 () Bool)

(assert (=> b!1546282 m!1426267))

(check-sat (not start!132026) tp_is_empty!37983 b_and!51127 (not bm!69528) (not bm!69526) (not b!1546293) (not b_next!31707) (not b!1546286) (not b!1546290) (not mapNonEmpty!58678) (not b!1546282) (not b!1546284))
(check-sat b_and!51127 (not b_next!31707))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132068 () Bool)

(assert start!132068)

(declare-fun b_free!31749 () Bool)

(declare-fun b_next!31749 () Bool)

(assert (=> start!132068 (= b_free!31749 (not b_next!31749))))

(declare-fun tp!111500 () Bool)

(declare-fun b_and!51169 () Bool)

(assert (=> start!132068 (= tp!111500 b_and!51169)))

(declare-fun b!1547290 () Bool)

(declare-datatypes ((V!59143 0))(
  ( (V!59144 (val!19090 Int)) )
))
(declare-datatypes ((tuple2!24704 0))(
  ( (tuple2!24705 (_1!12362 (_ BitVec 64)) (_2!12362 V!59143)) )
))
(declare-datatypes ((List!36213 0))(
  ( (Nil!36210) (Cons!36209 (h!37655 tuple2!24704) (t!50914 List!36213)) )
))
(declare-datatypes ((ListLongMap!22325 0))(
  ( (ListLongMap!22326 (toList!11178 List!36213)) )
))
(declare-fun e!861289 () ListLongMap!22325)

(declare-fun call!69842 () ListLongMap!22325)

(declare-fun minValue!436 () V!59143)

(declare-fun +!4903 (ListLongMap!22325 tuple2!24704) ListLongMap!22325)

(assert (=> b!1547290 (= e!861289 (+!4903 call!69842 (tuple2!24705 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapNonEmpty!58741 () Bool)

(declare-fun mapRes!58741 () Bool)

(declare-fun tp!111499 () Bool)

(declare-fun e!861288 () Bool)

(assert (=> mapNonEmpty!58741 (= mapRes!58741 (and tp!111499 e!861288))))

(declare-datatypes ((ValueCell!18102 0))(
  ( (ValueCellFull!18102 (v!21888 V!59143)) (EmptyCell!18102) )
))
(declare-fun mapValue!58741 () ValueCell!18102)

(declare-datatypes ((array!103215 0))(
  ( (array!103216 (arr!49805 (Array (_ BitVec 32) ValueCell!18102)) (size!50356 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103215)

(declare-fun mapKey!58741 () (_ BitVec 32))

(declare-fun mapRest!58741 () (Array (_ BitVec 32) ValueCell!18102))

(assert (=> mapNonEmpty!58741 (= (arr!49805 _values!470) (store mapRest!58741 mapKey!58741 mapValue!58741))))

(declare-fun b!1547292 () Bool)

(declare-fun res!1060682 () Bool)

(declare-fun e!861292 () Bool)

(assert (=> b!1547292 (=> (not res!1060682) (not e!861292))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103217 0))(
  ( (array!103218 (arr!49806 (Array (_ BitVec 32) (_ BitVec 64))) (size!50357 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103217)

(assert (=> b!1547292 (= res!1060682 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50357 _keys!618))))))

(declare-fun b!1547293 () Bool)

(declare-fun e!861290 () Bool)

(declare-fun e!861293 () Bool)

(assert (=> b!1547293 (= e!861290 (and e!861293 mapRes!58741))))

(declare-fun condMapEmpty!58741 () Bool)

(declare-fun mapDefault!58741 () ValueCell!18102)

(assert (=> b!1547293 (= condMapEmpty!58741 (= (arr!49805 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18102)) mapDefault!58741)))))

(declare-fun b!1547294 () Bool)

(declare-fun tp_is_empty!38025 () Bool)

(assert (=> b!1547294 (= e!861293 tp_is_empty!38025)))

(declare-fun b!1547295 () Bool)

(declare-fun e!861287 () Bool)

(assert (=> b!1547295 (= e!861287 (not true))))

(declare-fun lt!666790 () ListLongMap!22325)

(declare-fun apply!1087 (ListLongMap!22325 (_ BitVec 64)) V!59143)

(assert (=> b!1547295 (= (apply!1087 (+!4903 lt!666790 (tuple2!24705 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49806 _keys!618) from!762)) (apply!1087 lt!666790 (select (arr!49806 _keys!618) from!762)))))

(declare-datatypes ((Unit!51504 0))(
  ( (Unit!51505) )
))
(declare-fun lt!666794 () Unit!51504)

(declare-fun addApplyDifferent!590 (ListLongMap!22325 (_ BitVec 64) V!59143 (_ BitVec 64)) Unit!51504)

(assert (=> b!1547295 (= lt!666794 (addApplyDifferent!590 lt!666790 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49806 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59143)

(declare-fun contains!10071 (ListLongMap!22325 (_ BitVec 64)) Bool)

(assert (=> b!1547295 (contains!10071 (+!4903 lt!666790 (tuple2!24705 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49806 _keys!618) from!762))))

(declare-fun lt!666793 () Unit!51504)

(declare-fun addStillContains!1253 (ListLongMap!22325 (_ BitVec 64) V!59143 (_ BitVec 64)) Unit!51504)

(assert (=> b!1547295 (= lt!666793 (addStillContains!1253 lt!666790 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49806 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6622 (array!103217 array!103215 (_ BitVec 32) (_ BitVec 32) V!59143 V!59143 (_ BitVec 32) Int) ListLongMap!22325)

(assert (=> b!1547295 (= lt!666790 (getCurrentListMapNoExtraKeys!6622 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547296 () Bool)

(declare-fun c!141935 () Bool)

(declare-fun lt!666792 () Bool)

(assert (=> b!1547296 (= c!141935 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666792))))

(declare-fun e!861294 () ListLongMap!22325)

(declare-fun e!861295 () ListLongMap!22325)

(assert (=> b!1547296 (= e!861294 e!861295)))

(declare-fun b!1547297 () Bool)

(declare-fun res!1060684 () Bool)

(assert (=> b!1547297 (=> (not res!1060684) (not e!861292))))

(assert (=> b!1547297 (= res!1060684 (and (= (size!50356 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50357 _keys!618) (size!50356 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58741 () Bool)

(assert (=> mapIsEmpty!58741 mapRes!58741))

(declare-fun b!1547298 () Bool)

(declare-fun res!1060683 () Bool)

(assert (=> b!1547298 (=> (not res!1060683) (not e!861287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547298 (= res!1060683 (validKeyInArray!0 (select (arr!49806 _keys!618) from!762)))))

(declare-fun call!69844 () ListLongMap!22325)

(declare-fun c!141934 () Bool)

(declare-fun call!69846 () ListLongMap!22325)

(declare-fun c!141933 () Bool)

(declare-fun call!69843 () ListLongMap!22325)

(declare-fun bm!69839 () Bool)

(assert (=> bm!69839 (= call!69842 (+!4903 (ite c!141933 call!69844 (ite c!141934 call!69843 call!69846)) (ite (or c!141933 c!141934) (tuple2!24705 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24705 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69840 () Bool)

(assert (=> bm!69840 (= call!69843 call!69844)))

(declare-fun bm!69841 () Bool)

(declare-fun call!69845 () ListLongMap!22325)

(assert (=> bm!69841 (= call!69845 call!69842)))

(declare-fun b!1547299 () Bool)

(declare-fun res!1060688 () Bool)

(assert (=> b!1547299 (=> (not res!1060688) (not e!861292))))

(declare-datatypes ((List!36214 0))(
  ( (Nil!36211) (Cons!36210 (h!37656 (_ BitVec 64)) (t!50915 List!36214)) )
))
(declare-fun arrayNoDuplicates!0 (array!103217 (_ BitVec 32) List!36214) Bool)

(assert (=> b!1547299 (= res!1060688 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36211))))

(declare-fun b!1547300 () Bool)

(assert (=> b!1547300 (= e!861292 e!861287)))

(declare-fun res!1060687 () Bool)

(assert (=> b!1547300 (=> (not res!1060687) (not e!861287))))

(assert (=> b!1547300 (= res!1060687 (bvslt from!762 (size!50357 _keys!618)))))

(declare-fun lt!666791 () ListLongMap!22325)

(assert (=> b!1547300 (= lt!666791 e!861289)))

(assert (=> b!1547300 (= c!141933 (and (not lt!666792) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547300 (= lt!666792 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547301 () Bool)

(assert (=> b!1547301 (= e!861289 e!861294)))

(assert (=> b!1547301 (= c!141934 (and (not lt!666792) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547302 () Bool)

(declare-fun res!1060685 () Bool)

(assert (=> b!1547302 (=> (not res!1060685) (not e!861292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103217 (_ BitVec 32)) Bool)

(assert (=> b!1547302 (= res!1060685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69842 () Bool)

(assert (=> bm!69842 (= call!69846 call!69843)))

(declare-fun res!1060686 () Bool)

(assert (=> start!132068 (=> (not res!1060686) (not e!861292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132068 (= res!1060686 (validMask!0 mask!926))))

(assert (=> start!132068 e!861292))

(declare-fun array_inv!38659 (array!103217) Bool)

(assert (=> start!132068 (array_inv!38659 _keys!618)))

(assert (=> start!132068 tp_is_empty!38025))

(assert (=> start!132068 true))

(assert (=> start!132068 tp!111500))

(declare-fun array_inv!38660 (array!103215) Bool)

(assert (=> start!132068 (and (array_inv!38660 _values!470) e!861290)))

(declare-fun b!1547291 () Bool)

(assert (=> b!1547291 (= e!861288 tp_is_empty!38025)))

(declare-fun b!1547303 () Bool)

(assert (=> b!1547303 (= e!861295 call!69846)))

(declare-fun b!1547304 () Bool)

(assert (=> b!1547304 (= e!861294 call!69845)))

(declare-fun b!1547305 () Bool)

(assert (=> b!1547305 (= e!861295 call!69845)))

(declare-fun bm!69843 () Bool)

(assert (=> bm!69843 (= call!69844 (getCurrentListMapNoExtraKeys!6622 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(assert (= (and start!132068 res!1060686) b!1547297))

(assert (= (and b!1547297 res!1060684) b!1547302))

(assert (= (and b!1547302 res!1060685) b!1547299))

(assert (= (and b!1547299 res!1060688) b!1547292))

(assert (= (and b!1547292 res!1060682) b!1547300))

(assert (= (and b!1547300 c!141933) b!1547290))

(assert (= (and b!1547300 (not c!141933)) b!1547301))

(assert (= (and b!1547301 c!141934) b!1547304))

(assert (= (and b!1547301 (not c!141934)) b!1547296))

(assert (= (and b!1547296 c!141935) b!1547305))

(assert (= (and b!1547296 (not c!141935)) b!1547303))

(assert (= (or b!1547305 b!1547303) bm!69842))

(assert (= (or b!1547304 bm!69842) bm!69840))

(assert (= (or b!1547304 b!1547305) bm!69841))

(assert (= (or b!1547290 bm!69840) bm!69843))

(assert (= (or b!1547290 bm!69841) bm!69839))

(assert (= (and b!1547300 res!1060687) b!1547298))

(assert (= (and b!1547298 res!1060683) b!1547295))

(assert (= (and b!1547293 condMapEmpty!58741) mapIsEmpty!58741))

(assert (= (and b!1547293 (not condMapEmpty!58741)) mapNonEmpty!58741))

(get-info :version)

(assert (= (and mapNonEmpty!58741 ((_ is ValueCellFull!18102) mapValue!58741)) b!1547291))

(assert (= (and b!1547293 ((_ is ValueCellFull!18102) mapDefault!58741)) b!1547294))

(assert (= start!132068 b!1547293))

(declare-fun m!1426963 () Bool)

(assert (=> bm!69839 m!1426963))

(declare-fun m!1426965 () Bool)

(assert (=> mapNonEmpty!58741 m!1426965))

(declare-fun m!1426967 () Bool)

(assert (=> b!1547290 m!1426967))

(declare-fun m!1426969 () Bool)

(assert (=> b!1547299 m!1426969))

(declare-fun m!1426971 () Bool)

(assert (=> b!1547302 m!1426971))

(declare-fun m!1426973 () Bool)

(assert (=> b!1547295 m!1426973))

(declare-fun m!1426975 () Bool)

(assert (=> b!1547295 m!1426975))

(assert (=> b!1547295 m!1426973))

(declare-fun m!1426977 () Bool)

(assert (=> b!1547295 m!1426977))

(declare-fun m!1426979 () Bool)

(assert (=> b!1547295 m!1426979))

(assert (=> b!1547295 m!1426973))

(declare-fun m!1426981 () Bool)

(assert (=> b!1547295 m!1426981))

(declare-fun m!1426983 () Bool)

(assert (=> b!1547295 m!1426983))

(assert (=> b!1547295 m!1426983))

(assert (=> b!1547295 m!1426973))

(declare-fun m!1426985 () Bool)

(assert (=> b!1547295 m!1426985))

(assert (=> b!1547295 m!1426981))

(assert (=> b!1547295 m!1426973))

(declare-fun m!1426987 () Bool)

(assert (=> b!1547295 m!1426987))

(assert (=> b!1547295 m!1426973))

(declare-fun m!1426989 () Bool)

(assert (=> b!1547295 m!1426989))

(assert (=> bm!69843 m!1426979))

(assert (=> b!1547298 m!1426973))

(assert (=> b!1547298 m!1426973))

(declare-fun m!1426991 () Bool)

(assert (=> b!1547298 m!1426991))

(declare-fun m!1426993 () Bool)

(assert (=> start!132068 m!1426993))

(declare-fun m!1426995 () Bool)

(assert (=> start!132068 m!1426995))

(declare-fun m!1426997 () Bool)

(assert (=> start!132068 m!1426997))

(check-sat (not mapNonEmpty!58741) b_and!51169 (not b!1547298) (not b!1547295) tp_is_empty!38025 (not bm!69843) (not b!1547302) (not start!132068) (not b!1547290) (not bm!69839) (not b_next!31749) (not b!1547299))
(check-sat b_and!51169 (not b_next!31749))

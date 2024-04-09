; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73294 () Bool)

(assert start!73294)

(declare-fun b_free!14181 () Bool)

(declare-fun b_next!14181 () Bool)

(assert (=> start!73294 (= b_free!14181 (not b_next!14181))))

(declare-fun tp!50048 () Bool)

(declare-fun b_and!23539 () Bool)

(assert (=> start!73294 (= tp!50048 b_and!23539)))

(declare-fun b!854259 () Bool)

(declare-fun res!580254 () Bool)

(declare-fun e!476384 () Bool)

(assert (=> b!854259 (=> (not res!580254) (not e!476384))))

(declare-datatypes ((array!48814 0))(
  ( (array!48815 (arr!23434 (Array (_ BitVec 32) (_ BitVec 64))) (size!23875 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48814)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48814 (_ BitVec 32)) Bool)

(assert (=> b!854259 (= res!580254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!854260 () Bool)

(declare-fun res!580258 () Bool)

(assert (=> b!854260 (=> (not res!580258) (not e!476384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854260 (= res!580258 (validMask!0 mask!1196))))

(declare-fun b!854261 () Bool)

(declare-fun e!476388 () Bool)

(declare-fun e!476383 () Bool)

(declare-fun mapRes!26075 () Bool)

(assert (=> b!854261 (= e!476388 (and e!476383 mapRes!26075))))

(declare-fun condMapEmpty!26075 () Bool)

(declare-datatypes ((V!26803 0))(
  ( (V!26804 (val!8206 Int)) )
))
(declare-datatypes ((ValueCell!7719 0))(
  ( (ValueCellFull!7719 (v!10627 V!26803)) (EmptyCell!7719) )
))
(declare-datatypes ((array!48816 0))(
  ( (array!48817 (arr!23435 (Array (_ BitVec 32) ValueCell!7719)) (size!23876 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48816)

(declare-fun mapDefault!26075 () ValueCell!7719)

(assert (=> b!854261 (= condMapEmpty!26075 (= (arr!23435 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7719)) mapDefault!26075)))))

(declare-fun b!854262 () Bool)

(declare-fun e!476387 () Bool)

(declare-datatypes ((tuple2!10804 0))(
  ( (tuple2!10805 (_1!5412 (_ BitVec 64)) (_2!5412 V!26803)) )
))
(declare-datatypes ((List!16676 0))(
  ( (Nil!16673) (Cons!16672 (h!17803 tuple2!10804) (t!23311 List!16676)) )
))
(declare-datatypes ((ListLongMap!9587 0))(
  ( (ListLongMap!9588 (toList!4809 List!16676)) )
))
(declare-fun call!38399 () ListLongMap!9587)

(declare-fun call!38398 () ListLongMap!9587)

(assert (=> b!854262 (= e!476387 (= call!38399 call!38398))))

(declare-fun b!854263 () Bool)

(declare-fun res!580259 () Bool)

(assert (=> b!854263 (=> (not res!580259) (not e!476384))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854263 (= res!580259 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23875 _keys!868))))))

(declare-fun v!557 () V!26803)

(declare-fun b!854264 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2144 (ListLongMap!9587 tuple2!10804) ListLongMap!9587)

(assert (=> b!854264 (= e!476387 (= call!38399 (+!2144 call!38398 (tuple2!10805 k0!854 v!557))))))

(declare-fun b!854265 () Bool)

(declare-fun e!476385 () Bool)

(assert (=> b!854265 (= e!476385 true)))

(declare-fun lt!385303 () ListLongMap!9587)

(declare-fun lt!385304 () V!26803)

(declare-fun lt!385308 () tuple2!10804)

(assert (=> b!854265 (= (+!2144 lt!385303 lt!385308) (+!2144 (+!2144 lt!385303 (tuple2!10805 k0!854 lt!385304)) lt!385308))))

(declare-fun lt!385301 () V!26803)

(assert (=> b!854265 (= lt!385308 (tuple2!10805 k0!854 lt!385301))))

(declare-datatypes ((Unit!29130 0))(
  ( (Unit!29131) )
))
(declare-fun lt!385307 () Unit!29130)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!322 (ListLongMap!9587 (_ BitVec 64) V!26803 V!26803) Unit!29130)

(assert (=> b!854265 (= lt!385307 (addSameAsAddTwiceSameKeyDiffValues!322 lt!385303 k0!854 lt!385304 lt!385301))))

(declare-fun lt!385305 () V!26803)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12380 (ValueCell!7719 V!26803) V!26803)

(assert (=> b!854265 (= lt!385304 (get!12380 (select (arr!23435 _values!688) from!1053) lt!385305))))

(declare-fun lt!385302 () ListLongMap!9587)

(assert (=> b!854265 (= lt!385302 (+!2144 lt!385303 (tuple2!10805 (select (arr!23434 _keys!868) from!1053) lt!385301)))))

(assert (=> b!854265 (= lt!385301 (get!12380 (select (store (arr!23435 _values!688) i!612 (ValueCellFull!7719 v!557)) from!1053) lt!385305))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1070 (Int (_ BitVec 64)) V!26803)

(assert (=> b!854265 (= lt!385305 (dynLambda!1070 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26803)

(declare-fun zeroValue!654 () V!26803)

(declare-fun lt!385299 () array!48816)

(declare-fun getCurrentListMapNoExtraKeys!2791 (array!48814 array!48816 (_ BitVec 32) (_ BitVec 32) V!26803 V!26803 (_ BitVec 32) Int) ListLongMap!9587)

(assert (=> b!854265 (= lt!385303 (getCurrentListMapNoExtraKeys!2791 _keys!868 lt!385299 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854266 () Bool)

(declare-fun tp_is_empty!16317 () Bool)

(assert (=> b!854266 (= e!476383 tp_is_empty!16317)))

(declare-fun b!854267 () Bool)

(declare-fun res!580257 () Bool)

(assert (=> b!854267 (=> (not res!580257) (not e!476384))))

(declare-datatypes ((List!16677 0))(
  ( (Nil!16674) (Cons!16673 (h!17804 (_ BitVec 64)) (t!23312 List!16677)) )
))
(declare-fun arrayNoDuplicates!0 (array!48814 (_ BitVec 32) List!16677) Bool)

(assert (=> b!854267 (= res!580257 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16674))))

(declare-fun bm!38395 () Bool)

(assert (=> bm!38395 (= call!38398 (getCurrentListMapNoExtraKeys!2791 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854258 () Bool)

(declare-fun res!580252 () Bool)

(assert (=> b!854258 (=> (not res!580252) (not e!476384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854258 (= res!580252 (validKeyInArray!0 k0!854))))

(declare-fun res!580253 () Bool)

(assert (=> start!73294 (=> (not res!580253) (not e!476384))))

(assert (=> start!73294 (= res!580253 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23875 _keys!868))))))

(assert (=> start!73294 e!476384))

(assert (=> start!73294 tp_is_empty!16317))

(assert (=> start!73294 true))

(assert (=> start!73294 tp!50048))

(declare-fun array_inv!18554 (array!48814) Bool)

(assert (=> start!73294 (array_inv!18554 _keys!868)))

(declare-fun array_inv!18555 (array!48816) Bool)

(assert (=> start!73294 (and (array_inv!18555 _values!688) e!476388)))

(declare-fun b!854268 () Bool)

(declare-fun res!580251 () Bool)

(assert (=> b!854268 (=> (not res!580251) (not e!476384))))

(assert (=> b!854268 (= res!580251 (and (= (select (arr!23434 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854269 () Bool)

(declare-fun res!580256 () Bool)

(assert (=> b!854269 (=> (not res!580256) (not e!476384))))

(assert (=> b!854269 (= res!580256 (and (= (size!23876 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23875 _keys!868) (size!23876 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38396 () Bool)

(assert (=> bm!38396 (= call!38399 (getCurrentListMapNoExtraKeys!2791 _keys!868 lt!385299 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854270 () Bool)

(declare-fun e!476382 () Bool)

(assert (=> b!854270 (= e!476384 e!476382)))

(declare-fun res!580260 () Bool)

(assert (=> b!854270 (=> (not res!580260) (not e!476382))))

(assert (=> b!854270 (= res!580260 (= from!1053 i!612))))

(assert (=> b!854270 (= lt!385302 (getCurrentListMapNoExtraKeys!2791 _keys!868 lt!385299 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!854270 (= lt!385299 (array!48817 (store (arr!23435 _values!688) i!612 (ValueCellFull!7719 v!557)) (size!23876 _values!688)))))

(declare-fun lt!385300 () ListLongMap!9587)

(assert (=> b!854270 (= lt!385300 (getCurrentListMapNoExtraKeys!2791 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26075 () Bool)

(declare-fun tp!50047 () Bool)

(declare-fun e!476386 () Bool)

(assert (=> mapNonEmpty!26075 (= mapRes!26075 (and tp!50047 e!476386))))

(declare-fun mapKey!26075 () (_ BitVec 32))

(declare-fun mapRest!26075 () (Array (_ BitVec 32) ValueCell!7719))

(declare-fun mapValue!26075 () ValueCell!7719)

(assert (=> mapNonEmpty!26075 (= (arr!23435 _values!688) (store mapRest!26075 mapKey!26075 mapValue!26075))))

(declare-fun mapIsEmpty!26075 () Bool)

(assert (=> mapIsEmpty!26075 mapRes!26075))

(declare-fun b!854271 () Bool)

(assert (=> b!854271 (= e!476382 (not e!476385))))

(declare-fun res!580255 () Bool)

(assert (=> b!854271 (=> res!580255 e!476385)))

(assert (=> b!854271 (= res!580255 (not (validKeyInArray!0 (select (arr!23434 _keys!868) from!1053))))))

(assert (=> b!854271 e!476387))

(declare-fun c!91860 () Bool)

(assert (=> b!854271 (= c!91860 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!385306 () Unit!29130)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!404 (array!48814 array!48816 (_ BitVec 32) (_ BitVec 32) V!26803 V!26803 (_ BitVec 32) (_ BitVec 64) V!26803 (_ BitVec 32) Int) Unit!29130)

(assert (=> b!854271 (= lt!385306 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!404 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854272 () Bool)

(assert (=> b!854272 (= e!476386 tp_is_empty!16317)))

(assert (= (and start!73294 res!580253) b!854260))

(assert (= (and b!854260 res!580258) b!854269))

(assert (= (and b!854269 res!580256) b!854259))

(assert (= (and b!854259 res!580254) b!854267))

(assert (= (and b!854267 res!580257) b!854263))

(assert (= (and b!854263 res!580259) b!854258))

(assert (= (and b!854258 res!580252) b!854268))

(assert (= (and b!854268 res!580251) b!854270))

(assert (= (and b!854270 res!580260) b!854271))

(assert (= (and b!854271 c!91860) b!854264))

(assert (= (and b!854271 (not c!91860)) b!854262))

(assert (= (or b!854264 b!854262) bm!38396))

(assert (= (or b!854264 b!854262) bm!38395))

(assert (= (and b!854271 (not res!580255)) b!854265))

(assert (= (and b!854261 condMapEmpty!26075) mapIsEmpty!26075))

(assert (= (and b!854261 (not condMapEmpty!26075)) mapNonEmpty!26075))

(get-info :version)

(assert (= (and mapNonEmpty!26075 ((_ is ValueCellFull!7719) mapValue!26075)) b!854272))

(assert (= (and b!854261 ((_ is ValueCellFull!7719) mapDefault!26075)) b!854266))

(assert (= start!73294 b!854261))

(declare-fun b_lambda!11743 () Bool)

(assert (=> (not b_lambda!11743) (not b!854265)))

(declare-fun t!23310 () Bool)

(declare-fun tb!4491 () Bool)

(assert (=> (and start!73294 (= defaultEntry!696 defaultEntry!696) t!23310) tb!4491))

(declare-fun result!8585 () Bool)

(assert (=> tb!4491 (= result!8585 tp_is_empty!16317)))

(assert (=> b!854265 t!23310))

(declare-fun b_and!23541 () Bool)

(assert (= b_and!23539 (and (=> t!23310 result!8585) b_and!23541)))

(declare-fun m!795721 () Bool)

(assert (=> b!854260 m!795721))

(declare-fun m!795723 () Bool)

(assert (=> b!854259 m!795723))

(declare-fun m!795725 () Bool)

(assert (=> b!854270 m!795725))

(declare-fun m!795727 () Bool)

(assert (=> b!854270 m!795727))

(declare-fun m!795729 () Bool)

(assert (=> b!854270 m!795729))

(declare-fun m!795731 () Bool)

(assert (=> b!854267 m!795731))

(declare-fun m!795733 () Bool)

(assert (=> mapNonEmpty!26075 m!795733))

(declare-fun m!795735 () Bool)

(assert (=> b!854271 m!795735))

(assert (=> b!854271 m!795735))

(declare-fun m!795737 () Bool)

(assert (=> b!854271 m!795737))

(declare-fun m!795739 () Bool)

(assert (=> b!854271 m!795739))

(declare-fun m!795741 () Bool)

(assert (=> b!854264 m!795741))

(declare-fun m!795743 () Bool)

(assert (=> b!854268 m!795743))

(declare-fun m!795745 () Bool)

(assert (=> start!73294 m!795745))

(declare-fun m!795747 () Bool)

(assert (=> start!73294 m!795747))

(declare-fun m!795749 () Bool)

(assert (=> bm!38396 m!795749))

(declare-fun m!795751 () Bool)

(assert (=> b!854258 m!795751))

(declare-fun m!795753 () Bool)

(assert (=> bm!38395 m!795753))

(declare-fun m!795755 () Bool)

(assert (=> b!854265 m!795755))

(declare-fun m!795757 () Bool)

(assert (=> b!854265 m!795757))

(declare-fun m!795759 () Bool)

(assert (=> b!854265 m!795759))

(declare-fun m!795761 () Bool)

(assert (=> b!854265 m!795761))

(assert (=> b!854265 m!795759))

(declare-fun m!795763 () Bool)

(assert (=> b!854265 m!795763))

(declare-fun m!795765 () Bool)

(assert (=> b!854265 m!795765))

(declare-fun m!795767 () Bool)

(assert (=> b!854265 m!795767))

(declare-fun m!795769 () Bool)

(assert (=> b!854265 m!795769))

(declare-fun m!795771 () Bool)

(assert (=> b!854265 m!795771))

(assert (=> b!854265 m!795749))

(assert (=> b!854265 m!795769))

(assert (=> b!854265 m!795765))

(assert (=> b!854265 m!795727))

(assert (=> b!854265 m!795735))

(declare-fun m!795773 () Bool)

(assert (=> b!854265 m!795773))

(check-sat (not b!854260) (not bm!38396) (not b_next!14181) (not b!854267) b_and!23541 (not b!854264) (not b!854270) (not bm!38395) (not b!854265) tp_is_empty!16317 (not start!73294) (not b!854258) (not b!854259) (not b_lambda!11743) (not b!854271) (not mapNonEmpty!26075))
(check-sat b_and!23541 (not b_next!14181))

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73158 () Bool)

(assert start!73158)

(declare-fun b_free!14045 () Bool)

(declare-fun b_next!14045 () Bool)

(assert (=> start!73158 (= b_free!14045 (not b_next!14045))))

(declare-fun tp!49639 () Bool)

(declare-fun b_and!23267 () Bool)

(assert (=> start!73158 (= tp!49639 b_and!23267)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26621 0))(
  ( (V!26622 (val!8138 Int)) )
))
(declare-datatypes ((tuple2!10686 0))(
  ( (tuple2!10687 (_1!5353 (_ BitVec 64)) (_2!5353 V!26621)) )
))
(declare-datatypes ((List!16576 0))(
  ( (Nil!16573) (Cons!16572 (h!17703 tuple2!10686) (t!23075 List!16576)) )
))
(declare-datatypes ((ListLongMap!9469 0))(
  ( (ListLongMap!9470 (toList!4750 List!16576)) )
))
(declare-fun call!37991 () ListLongMap!9469)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26621)

(declare-fun zeroValue!654 () V!26621)

(declare-datatypes ((array!48550 0))(
  ( (array!48551 (arr!23302 (Array (_ BitVec 32) (_ BitVec 64))) (size!23743 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48550)

(declare-fun bm!37987 () Bool)

(declare-datatypes ((ValueCell!7651 0))(
  ( (ValueCellFull!7651 (v!10559 V!26621)) (EmptyCell!7651) )
))
(declare-datatypes ((array!48552 0))(
  ( (array!48553 (arr!23303 (Array (_ BitVec 32) ValueCell!7651)) (size!23744 (_ BitVec 32))) )
))
(declare-fun lt!383264 () array!48552)

(declare-fun getCurrentListMapNoExtraKeys!2735 (array!48550 array!48552 (_ BitVec 32) (_ BitVec 32) V!26621 V!26621 (_ BitVec 32) Int) ListLongMap!9469)

(assert (=> bm!37987 (= call!37991 (getCurrentListMapNoExtraKeys!2735 _keys!868 lt!383264 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851062 () Bool)

(declare-fun res!578212 () Bool)

(declare-fun e!474756 () Bool)

(assert (=> b!851062 (=> (not res!578212) (not e!474756))))

(declare-datatypes ((List!16577 0))(
  ( (Nil!16574) (Cons!16573 (h!17704 (_ BitVec 64)) (t!23076 List!16577)) )
))
(declare-fun arrayNoDuplicates!0 (array!48550 (_ BitVec 32) List!16577) Bool)

(assert (=> b!851062 (= res!578212 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16574))))

(declare-fun b!851063 () Bool)

(declare-fun e!474754 () Bool)

(assert (=> b!851063 (= e!474756 e!474754)))

(declare-fun res!578215 () Bool)

(assert (=> b!851063 (=> (not res!578215) (not e!474754))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851063 (= res!578215 (= from!1053 i!612))))

(declare-fun lt!383263 () ListLongMap!9469)

(assert (=> b!851063 (= lt!383263 (getCurrentListMapNoExtraKeys!2735 _keys!868 lt!383264 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26621)

(declare-fun _values!688 () array!48552)

(assert (=> b!851063 (= lt!383264 (array!48553 (store (arr!23303 _values!688) i!612 (ValueCellFull!7651 v!557)) (size!23744 _values!688)))))

(declare-fun lt!383266 () ListLongMap!9469)

(assert (=> b!851063 (= lt!383266 (getCurrentListMapNoExtraKeys!2735 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!578217 () Bool)

(assert (=> start!73158 (=> (not res!578217) (not e!474756))))

(assert (=> start!73158 (= res!578217 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23743 _keys!868))))))

(assert (=> start!73158 e!474756))

(declare-fun tp_is_empty!16181 () Bool)

(assert (=> start!73158 tp_is_empty!16181))

(assert (=> start!73158 true))

(assert (=> start!73158 tp!49639))

(declare-fun array_inv!18476 (array!48550) Bool)

(assert (=> start!73158 (array_inv!18476 _keys!868)))

(declare-fun e!474752 () Bool)

(declare-fun array_inv!18477 (array!48552) Bool)

(assert (=> start!73158 (and (array_inv!18477 _values!688) e!474752)))

(declare-fun b!851064 () Bool)

(declare-fun e!474749 () Bool)

(assert (=> b!851064 (= e!474749 true)))

(declare-fun lt!383259 () tuple2!10686)

(declare-fun lt!383267 () ListLongMap!9469)

(declare-fun lt!383261 () V!26621)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2093 (ListLongMap!9469 tuple2!10686) ListLongMap!9469)

(assert (=> b!851064 (= (+!2093 lt!383267 lt!383259) (+!2093 (+!2093 lt!383267 (tuple2!10687 k!854 lt!383261)) lt!383259))))

(declare-fun lt!383262 () V!26621)

(assert (=> b!851064 (= lt!383259 (tuple2!10687 k!854 lt!383262))))

(declare-datatypes ((Unit!29030 0))(
  ( (Unit!29031) )
))
(declare-fun lt!383260 () Unit!29030)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!277 (ListLongMap!9469 (_ BitVec 64) V!26621 V!26621) Unit!29030)

(assert (=> b!851064 (= lt!383260 (addSameAsAddTwiceSameKeyDiffValues!277 lt!383267 k!854 lt!383261 lt!383262))))

(declare-fun lt!383265 () V!26621)

(declare-fun get!12289 (ValueCell!7651 V!26621) V!26621)

(assert (=> b!851064 (= lt!383261 (get!12289 (select (arr!23303 _values!688) from!1053) lt!383265))))

(assert (=> b!851064 (= lt!383263 (+!2093 lt!383267 (tuple2!10687 (select (arr!23302 _keys!868) from!1053) lt!383262)))))

(assert (=> b!851064 (= lt!383262 (get!12289 (select (store (arr!23303 _values!688) i!612 (ValueCellFull!7651 v!557)) from!1053) lt!383265))))

(declare-fun dynLambda!1025 (Int (_ BitVec 64)) V!26621)

(assert (=> b!851064 (= lt!383265 (dynLambda!1025 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851064 (= lt!383267 (getCurrentListMapNoExtraKeys!2735 _keys!868 lt!383264 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851065 () Bool)

(declare-fun res!578218 () Bool)

(assert (=> b!851065 (=> (not res!578218) (not e!474756))))

(assert (=> b!851065 (= res!578218 (and (= (size!23744 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23743 _keys!868) (size!23744 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37988 () Bool)

(declare-fun call!37990 () ListLongMap!9469)

(assert (=> bm!37988 (= call!37990 (getCurrentListMapNoExtraKeys!2735 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851066 () Bool)

(declare-fun res!578211 () Bool)

(assert (=> b!851066 (=> (not res!578211) (not e!474756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851066 (= res!578211 (validMask!0 mask!1196))))

(declare-fun b!851067 () Bool)

(assert (=> b!851067 (= e!474754 (not e!474749))))

(declare-fun res!578214 () Bool)

(assert (=> b!851067 (=> res!578214 e!474749)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851067 (= res!578214 (not (validKeyInArray!0 (select (arr!23302 _keys!868) from!1053))))))

(declare-fun e!474751 () Bool)

(assert (=> b!851067 e!474751))

(declare-fun c!91656 () Bool)

(assert (=> b!851067 (= c!91656 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383268 () Unit!29030)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!360 (array!48550 array!48552 (_ BitVec 32) (_ BitVec 32) V!26621 V!26621 (_ BitVec 32) (_ BitVec 64) V!26621 (_ BitVec 32) Int) Unit!29030)

(assert (=> b!851067 (= lt!383268 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!360 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25871 () Bool)

(declare-fun mapRes!25871 () Bool)

(assert (=> mapIsEmpty!25871 mapRes!25871))

(declare-fun b!851068 () Bool)

(declare-fun res!578213 () Bool)

(assert (=> b!851068 (=> (not res!578213) (not e!474756))))

(assert (=> b!851068 (= res!578213 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23743 _keys!868))))))

(declare-fun b!851069 () Bool)

(declare-fun res!578216 () Bool)

(assert (=> b!851069 (=> (not res!578216) (not e!474756))))

(assert (=> b!851069 (= res!578216 (validKeyInArray!0 k!854))))

(declare-fun b!851070 () Bool)

(assert (=> b!851070 (= e!474751 (= call!37991 (+!2093 call!37990 (tuple2!10687 k!854 v!557))))))

(declare-fun mapNonEmpty!25871 () Bool)

(declare-fun tp!49640 () Bool)

(declare-fun e!474750 () Bool)

(assert (=> mapNonEmpty!25871 (= mapRes!25871 (and tp!49640 e!474750))))

(declare-fun mapKey!25871 () (_ BitVec 32))

(declare-fun mapValue!25871 () ValueCell!7651)

(declare-fun mapRest!25871 () (Array (_ BitVec 32) ValueCell!7651))

(assert (=> mapNonEmpty!25871 (= (arr!23303 _values!688) (store mapRest!25871 mapKey!25871 mapValue!25871))))

(declare-fun b!851071 () Bool)

(declare-fun e!474753 () Bool)

(assert (=> b!851071 (= e!474752 (and e!474753 mapRes!25871))))

(declare-fun condMapEmpty!25871 () Bool)

(declare-fun mapDefault!25871 () ValueCell!7651)


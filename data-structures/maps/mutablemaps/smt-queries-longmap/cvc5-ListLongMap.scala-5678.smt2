; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73880 () Bool)

(assert start!73880)

(declare-fun b_free!14767 () Bool)

(declare-fun b_next!14767 () Bool)

(assert (=> start!73880 (= b_free!14767 (not b_next!14767))))

(declare-fun tp!51805 () Bool)

(declare-fun b_and!24531 () Bool)

(assert (=> start!73880 (= tp!51805 b_and!24531)))

(declare-fun b!867275 () Bool)

(declare-fun e!483133 () Bool)

(declare-fun tp_is_empty!16903 () Bool)

(assert (=> b!867275 (= e!483133 tp_is_empty!16903)))

(declare-fun b!867276 () Bool)

(declare-datatypes ((Unit!29727 0))(
  ( (Unit!29728) )
))
(declare-fun e!483127 () Unit!29727)

(declare-fun Unit!29729 () Unit!29727)

(assert (=> b!867276 (= e!483127 Unit!29729)))

(declare-fun res!589371 () Bool)

(declare-fun e!483132 () Bool)

(assert (=> start!73880 (=> (not res!589371) (not e!483132))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49946 0))(
  ( (array!49947 (arr!24000 (Array (_ BitVec 32) (_ BitVec 64))) (size!24441 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49946)

(assert (=> start!73880 (= res!589371 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24441 _keys!868))))))

(assert (=> start!73880 e!483132))

(assert (=> start!73880 tp_is_empty!16903))

(assert (=> start!73880 true))

(assert (=> start!73880 tp!51805))

(declare-fun array_inv!18946 (array!49946) Bool)

(assert (=> start!73880 (array_inv!18946 _keys!868)))

(declare-datatypes ((V!27585 0))(
  ( (V!27586 (val!8499 Int)) )
))
(declare-datatypes ((ValueCell!8012 0))(
  ( (ValueCellFull!8012 (v!10920 V!27585)) (EmptyCell!8012) )
))
(declare-datatypes ((array!49948 0))(
  ( (array!49949 (arr!24001 (Array (_ BitVec 32) ValueCell!8012)) (size!24442 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49948)

(declare-fun e!483134 () Bool)

(declare-fun array_inv!18947 (array!49948) Bool)

(assert (=> start!73880 (and (array_inv!18947 _values!688) e!483134)))

(declare-fun b!867277 () Bool)

(declare-fun res!589376 () Bool)

(assert (=> b!867277 (=> (not res!589376) (not e!483132))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867277 (= res!589376 (validKeyInArray!0 k!854))))

(declare-fun b!867278 () Bool)

(declare-fun e!483135 () Bool)

(assert (=> b!867278 (= e!483132 e!483135)))

(declare-fun res!589367 () Bool)

(assert (=> b!867278 (=> (not res!589367) (not e!483135))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!867278 (= res!589367 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11280 0))(
  ( (tuple2!11281 (_1!5650 (_ BitVec 64)) (_2!5650 V!27585)) )
))
(declare-datatypes ((List!17142 0))(
  ( (Nil!17139) (Cons!17138 (h!18269 tuple2!11280) (t!24183 List!17142)) )
))
(declare-datatypes ((ListLongMap!10063 0))(
  ( (ListLongMap!10064 (toList!5047 List!17142)) )
))
(declare-fun lt!394006 () ListLongMap!10063)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!394002 () array!49948)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27585)

(declare-fun zeroValue!654 () V!27585)

(declare-fun getCurrentListMapNoExtraKeys!3012 (array!49946 array!49948 (_ BitVec 32) (_ BitVec 32) V!27585 V!27585 (_ BitVec 32) Int) ListLongMap!10063)

(assert (=> b!867278 (= lt!394006 (getCurrentListMapNoExtraKeys!3012 _keys!868 lt!394002 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27585)

(assert (=> b!867278 (= lt!394002 (array!49949 (store (arr!24001 _values!688) i!612 (ValueCellFull!8012 v!557)) (size!24442 _values!688)))))

(declare-fun lt!394011 () ListLongMap!10063)

(assert (=> b!867278 (= lt!394011 (getCurrentListMapNoExtraKeys!3012 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867279 () Bool)

(declare-fun res!589373 () Bool)

(assert (=> b!867279 (=> (not res!589373) (not e!483132))))

(assert (=> b!867279 (= res!589373 (and (= (size!24442 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24441 _keys!868) (size!24442 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867280 () Bool)

(declare-fun res!589370 () Bool)

(assert (=> b!867280 (=> (not res!589370) (not e!483132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49946 (_ BitVec 32)) Bool)

(assert (=> b!867280 (= res!589370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867281 () Bool)

(declare-fun e!483131 () Bool)

(assert (=> b!867281 (= e!483135 (not e!483131))))

(declare-fun res!589374 () Bool)

(assert (=> b!867281 (=> res!589374 e!483131)))

(assert (=> b!867281 (= res!589374 (not (validKeyInArray!0 (select (arr!24000 _keys!868) from!1053))))))

(declare-fun lt!394012 () ListLongMap!10063)

(declare-fun lt!394017 () ListLongMap!10063)

(assert (=> b!867281 (= lt!394012 lt!394017)))

(declare-fun lt!394014 () ListLongMap!10063)

(declare-fun lt!394010 () tuple2!11280)

(declare-fun +!2341 (ListLongMap!10063 tuple2!11280) ListLongMap!10063)

(assert (=> b!867281 (= lt!394017 (+!2341 lt!394014 lt!394010))))

(assert (=> b!867281 (= lt!394012 (getCurrentListMapNoExtraKeys!3012 _keys!868 lt!394002 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!867281 (= lt!394010 (tuple2!11281 k!854 v!557))))

(assert (=> b!867281 (= lt!394014 (getCurrentListMapNoExtraKeys!3012 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!394005 () Unit!29727)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!573 (array!49946 array!49948 (_ BitVec 32) (_ BitVec 32) V!27585 V!27585 (_ BitVec 32) (_ BitVec 64) V!27585 (_ BitVec 32) Int) Unit!29727)

(assert (=> b!867281 (= lt!394005 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!573 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867282 () Bool)

(declare-fun Unit!29730 () Unit!29727)

(assert (=> b!867282 (= e!483127 Unit!29730)))

(declare-fun lt!394003 () Unit!29727)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49946 (_ BitVec 32) (_ BitVec 32)) Unit!29727)

(assert (=> b!867282 (= lt!394003 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17143 0))(
  ( (Nil!17140) (Cons!17139 (h!18270 (_ BitVec 64)) (t!24184 List!17143)) )
))
(declare-fun arrayNoDuplicates!0 (array!49946 (_ BitVec 32) List!17143) Bool)

(assert (=> b!867282 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17140)))

(declare-fun lt!394013 () Unit!29727)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49946 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29727)

(assert (=> b!867282 (= lt!394013 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!867282 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!394015 () Unit!29727)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49946 (_ BitVec 64) (_ BitVec 32) List!17143) Unit!29727)

(assert (=> b!867282 (= lt!394015 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17140))))

(assert (=> b!867282 false))

(declare-fun b!867283 () Bool)

(declare-fun res!589369 () Bool)

(assert (=> b!867283 (=> (not res!589369) (not e!483132))))

(assert (=> b!867283 (= res!589369 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17140))))

(declare-fun b!867284 () Bool)

(declare-fun e!483129 () Bool)

(assert (=> b!867284 (= e!483131 e!483129)))

(declare-fun res!589372 () Bool)

(assert (=> b!867284 (=> res!589372 e!483129)))

(assert (=> b!867284 (= res!589372 (= k!854 (select (arr!24000 _keys!868) from!1053)))))

(assert (=> b!867284 (not (= (select (arr!24000 _keys!868) from!1053) k!854))))

(declare-fun lt!394004 () Unit!29727)

(assert (=> b!867284 (= lt!394004 e!483127)))

(declare-fun c!92289 () Bool)

(assert (=> b!867284 (= c!92289 (= (select (arr!24000 _keys!868) from!1053) k!854))))

(declare-fun lt!394009 () ListLongMap!10063)

(assert (=> b!867284 (= lt!394006 lt!394009)))

(declare-fun lt!394008 () tuple2!11280)

(assert (=> b!867284 (= lt!394009 (+!2341 lt!394017 lt!394008))))

(declare-fun lt!394016 () V!27585)

(assert (=> b!867284 (= lt!394008 (tuple2!11281 (select (arr!24000 _keys!868) from!1053) lt!394016))))

(declare-fun get!12711 (ValueCell!8012 V!27585) V!27585)

(declare-fun dynLambda!1205 (Int (_ BitVec 64)) V!27585)

(assert (=> b!867284 (= lt!394016 (get!12711 (select (arr!24001 _values!688) from!1053) (dynLambda!1205 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!26954 () Bool)

(declare-fun mapRes!26954 () Bool)

(declare-fun tp!51806 () Bool)

(assert (=> mapNonEmpty!26954 (= mapRes!26954 (and tp!51806 e!483133))))

(declare-fun mapValue!26954 () ValueCell!8012)

(declare-fun mapKey!26954 () (_ BitVec 32))

(declare-fun mapRest!26954 () (Array (_ BitVec 32) ValueCell!8012))

(assert (=> mapNonEmpty!26954 (= (arr!24001 _values!688) (store mapRest!26954 mapKey!26954 mapValue!26954))))

(declare-fun b!867285 () Bool)

(declare-fun res!589377 () Bool)

(assert (=> b!867285 (=> (not res!589377) (not e!483132))))

(assert (=> b!867285 (= res!589377 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24441 _keys!868))))))

(declare-fun b!867286 () Bool)

(declare-fun res!589375 () Bool)

(assert (=> b!867286 (=> (not res!589375) (not e!483132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867286 (= res!589375 (validMask!0 mask!1196))))

(declare-fun b!867287 () Bool)

(declare-fun e!483130 () Bool)

(assert (=> b!867287 (= e!483130 tp_is_empty!16903)))

(declare-fun b!867288 () Bool)

(assert (=> b!867288 (= e!483129 true)))

(assert (=> b!867288 (= lt!394009 (+!2341 (+!2341 lt!394014 lt!394008) lt!394010))))

(declare-fun lt!394007 () Unit!29727)

(declare-fun addCommutativeForDiffKeys!542 (ListLongMap!10063 (_ BitVec 64) V!27585 (_ BitVec 64) V!27585) Unit!29727)

(assert (=> b!867288 (= lt!394007 (addCommutativeForDiffKeys!542 lt!394014 k!854 v!557 (select (arr!24000 _keys!868) from!1053) lt!394016))))

(declare-fun b!867289 () Bool)

(declare-fun res!589368 () Bool)

(assert (=> b!867289 (=> (not res!589368) (not e!483132))))

(assert (=> b!867289 (= res!589368 (and (= (select (arr!24000 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!867290 () Bool)

(assert (=> b!867290 (= e!483134 (and e!483130 mapRes!26954))))

(declare-fun condMapEmpty!26954 () Bool)

(declare-fun mapDefault!26954 () ValueCell!8012)


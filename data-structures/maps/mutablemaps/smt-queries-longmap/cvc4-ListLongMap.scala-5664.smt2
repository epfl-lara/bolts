; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73800 () Bool)

(assert start!73800)

(declare-fun b_free!14687 () Bool)

(declare-fun b_next!14687 () Bool)

(assert (=> start!73800 (= b_free!14687 (not b_next!14687))))

(declare-fun tp!51566 () Bool)

(declare-fun b_and!24371 () Bool)

(assert (=> start!73800 (= tp!51566 b_and!24371)))

(declare-fun b!865275 () Bool)

(declare-fun res!588053 () Bool)

(declare-fun e!482050 () Bool)

(assert (=> b!865275 (=> (not res!588053) (not e!482050))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49790 0))(
  ( (array!49791 (arr!23922 (Array (_ BitVec 32) (_ BitVec 64))) (size!24363 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49790)

(assert (=> b!865275 (= res!588053 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24363 _keys!868))))))

(declare-fun b!865276 () Bool)

(declare-fun res!588056 () Bool)

(assert (=> b!865276 (=> (not res!588056) (not e!482050))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865276 (= res!588056 (validKeyInArray!0 k!854))))

(declare-fun b!865277 () Bool)

(declare-fun e!482048 () Bool)

(declare-fun e!482053 () Bool)

(assert (=> b!865277 (= e!482048 e!482053)))

(declare-fun res!588057 () Bool)

(assert (=> b!865277 (=> res!588057 e!482053)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!865277 (= res!588057 (= k!854 (select (arr!23922 _keys!868) from!1053)))))

(assert (=> b!865277 (not (= (select (arr!23922 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29608 0))(
  ( (Unit!29609) )
))
(declare-fun lt!392094 () Unit!29608)

(declare-fun e!482054 () Unit!29608)

(assert (=> b!865277 (= lt!392094 e!482054)))

(declare-fun c!92169 () Bool)

(assert (=> b!865277 (= c!92169 (= (select (arr!23922 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27477 0))(
  ( (V!27478 (val!8459 Int)) )
))
(declare-datatypes ((tuple2!11212 0))(
  ( (tuple2!11213 (_1!5616 (_ BitVec 64)) (_2!5616 V!27477)) )
))
(declare-datatypes ((List!17076 0))(
  ( (Nil!17073) (Cons!17072 (h!18203 tuple2!11212) (t!24037 List!17076)) )
))
(declare-datatypes ((ListLongMap!9995 0))(
  ( (ListLongMap!9996 (toList!5013 List!17076)) )
))
(declare-fun lt!392090 () ListLongMap!9995)

(declare-fun lt!392088 () ListLongMap!9995)

(assert (=> b!865277 (= lt!392090 lt!392088)))

(declare-fun lt!392093 () ListLongMap!9995)

(declare-fun lt!392086 () tuple2!11212)

(declare-fun +!2309 (ListLongMap!9995 tuple2!11212) ListLongMap!9995)

(assert (=> b!865277 (= lt!392088 (+!2309 lt!392093 lt!392086))))

(declare-fun lt!392089 () V!27477)

(assert (=> b!865277 (= lt!392086 (tuple2!11213 (select (arr!23922 _keys!868) from!1053) lt!392089))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7972 0))(
  ( (ValueCellFull!7972 (v!10880 V!27477)) (EmptyCell!7972) )
))
(declare-datatypes ((array!49792 0))(
  ( (array!49793 (arr!23923 (Array (_ BitVec 32) ValueCell!7972)) (size!24364 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49792)

(declare-fun get!12655 (ValueCell!7972 V!27477) V!27477)

(declare-fun dynLambda!1177 (Int (_ BitVec 64)) V!27477)

(assert (=> b!865277 (= lt!392089 (get!12655 (select (arr!23923 _values!688) from!1053) (dynLambda!1177 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865278 () Bool)

(declare-fun res!588052 () Bool)

(assert (=> b!865278 (=> (not res!588052) (not e!482050))))

(assert (=> b!865278 (= res!588052 (and (= (select (arr!23922 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!865279 () Bool)

(declare-fun e!482047 () Bool)

(assert (=> b!865279 (= e!482050 e!482047)))

(declare-fun res!588049 () Bool)

(assert (=> b!865279 (=> (not res!588049) (not e!482047))))

(assert (=> b!865279 (= res!588049 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27477)

(declare-fun lt!392087 () array!49792)

(declare-fun zeroValue!654 () V!27477)

(declare-fun getCurrentListMapNoExtraKeys!2983 (array!49790 array!49792 (_ BitVec 32) (_ BitVec 32) V!27477 V!27477 (_ BitVec 32) Int) ListLongMap!9995)

(assert (=> b!865279 (= lt!392090 (getCurrentListMapNoExtraKeys!2983 _keys!868 lt!392087 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27477)

(assert (=> b!865279 (= lt!392087 (array!49793 (store (arr!23923 _values!688) i!612 (ValueCellFull!7972 v!557)) (size!24364 _values!688)))))

(declare-fun lt!392092 () ListLongMap!9995)

(assert (=> b!865279 (= lt!392092 (getCurrentListMapNoExtraKeys!2983 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865280 () Bool)

(assert (=> b!865280 (= e!482047 (not e!482048))))

(declare-fun res!588051 () Bool)

(assert (=> b!865280 (=> res!588051 e!482048)))

(assert (=> b!865280 (= res!588051 (not (validKeyInArray!0 (select (arr!23922 _keys!868) from!1053))))))

(declare-fun lt!392085 () ListLongMap!9995)

(assert (=> b!865280 (= lt!392085 lt!392093)))

(declare-fun lt!392095 () ListLongMap!9995)

(declare-fun lt!392083 () tuple2!11212)

(assert (=> b!865280 (= lt!392093 (+!2309 lt!392095 lt!392083))))

(assert (=> b!865280 (= lt!392085 (getCurrentListMapNoExtraKeys!2983 _keys!868 lt!392087 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865280 (= lt!392083 (tuple2!11213 k!854 v!557))))

(assert (=> b!865280 (= lt!392095 (getCurrentListMapNoExtraKeys!2983 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392084 () Unit!29608)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!549 (array!49790 array!49792 (_ BitVec 32) (_ BitVec 32) V!27477 V!27477 (_ BitVec 32) (_ BitVec 64) V!27477 (_ BitVec 32) Int) Unit!29608)

(assert (=> b!865280 (= lt!392084 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!549 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865281 () Bool)

(declare-fun res!588054 () Bool)

(assert (=> b!865281 (=> (not res!588054) (not e!482050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49790 (_ BitVec 32)) Bool)

(assert (=> b!865281 (= res!588054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865282 () Bool)

(declare-fun Unit!29610 () Unit!29608)

(assert (=> b!865282 (= e!482054 Unit!29610)))

(declare-fun lt!392082 () Unit!29608)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49790 (_ BitVec 32) (_ BitVec 32)) Unit!29608)

(assert (=> b!865282 (= lt!392082 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17077 0))(
  ( (Nil!17074) (Cons!17073 (h!18204 (_ BitVec 64)) (t!24038 List!17077)) )
))
(declare-fun arrayNoDuplicates!0 (array!49790 (_ BitVec 32) List!17077) Bool)

(assert (=> b!865282 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17074)))

(declare-fun lt!392091 () Unit!29608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49790 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29608)

(assert (=> b!865282 (= lt!392091 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865282 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392096 () Unit!29608)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49790 (_ BitVec 64) (_ BitVec 32) List!17077) Unit!29608)

(assert (=> b!865282 (= lt!392096 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17074))))

(assert (=> b!865282 false))

(declare-fun b!865283 () Bool)

(declare-fun res!588055 () Bool)

(assert (=> b!865283 (=> (not res!588055) (not e!482050))))

(assert (=> b!865283 (= res!588055 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17074))))

(declare-fun b!865284 () Bool)

(declare-fun e!482052 () Bool)

(declare-fun tp_is_empty!16823 () Bool)

(assert (=> b!865284 (= e!482052 tp_is_empty!16823)))

(declare-fun b!865285 () Bool)

(declare-fun res!588048 () Bool)

(assert (=> b!865285 (=> (not res!588048) (not e!482050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865285 (= res!588048 (validMask!0 mask!1196))))

(declare-fun b!865286 () Bool)

(assert (=> b!865286 (= e!482053 true)))

(assert (=> b!865286 (= lt!392088 (+!2309 (+!2309 lt!392095 lt!392086) lt!392083))))

(declare-fun lt!392097 () Unit!29608)

(declare-fun addCommutativeForDiffKeys!516 (ListLongMap!9995 (_ BitVec 64) V!27477 (_ BitVec 64) V!27477) Unit!29608)

(assert (=> b!865286 (= lt!392097 (addCommutativeForDiffKeys!516 lt!392095 k!854 v!557 (select (arr!23922 _keys!868) from!1053) lt!392089))))

(declare-fun b!865287 () Bool)

(declare-fun e!482049 () Bool)

(declare-fun mapRes!26834 () Bool)

(assert (=> b!865287 (= e!482049 (and e!482052 mapRes!26834))))

(declare-fun condMapEmpty!26834 () Bool)

(declare-fun mapDefault!26834 () ValueCell!7972)


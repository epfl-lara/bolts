; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73628 () Bool)

(assert start!73628)

(declare-fun b_free!14515 () Bool)

(declare-fun b_next!14515 () Bool)

(assert (=> start!73628 (= b_free!14515 (not b_next!14515))))

(declare-fun tp!51050 () Bool)

(declare-fun b_and!24027 () Bool)

(assert (=> start!73628 (= tp!51050 b_and!24027)))

(declare-fun mapNonEmpty!26576 () Bool)

(declare-fun mapRes!26576 () Bool)

(declare-fun tp!51049 () Bool)

(declare-fun e!479788 () Bool)

(assert (=> mapNonEmpty!26576 (= mapRes!26576 (and tp!51049 e!479788))))

(declare-datatypes ((V!27249 0))(
  ( (V!27250 (val!8373 Int)) )
))
(declare-datatypes ((ValueCell!7886 0))(
  ( (ValueCellFull!7886 (v!10794 V!27249)) (EmptyCell!7886) )
))
(declare-fun mapRest!26576 () (Array (_ BitVec 32) ValueCell!7886))

(declare-fun mapKey!26576 () (_ BitVec 32))

(declare-fun mapValue!26576 () ValueCell!7886)

(declare-datatypes ((array!49450 0))(
  ( (array!49451 (arr!23752 (Array (_ BitVec 32) ValueCell!7886)) (size!24193 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49450)

(assert (=> mapNonEmpty!26576 (= (arr!23752 _values!688) (store mapRest!26576 mapKey!26576 mapValue!26576))))

(declare-fun b!861036 () Bool)

(declare-datatypes ((Unit!29324 0))(
  ( (Unit!29325) )
))
(declare-fun e!479791 () Unit!29324)

(declare-fun Unit!29326 () Unit!29324)

(assert (=> b!861036 (= e!479791 Unit!29326)))

(declare-fun lt!388267 () Unit!29324)

(declare-datatypes ((array!49452 0))(
  ( (array!49453 (arr!23753 (Array (_ BitVec 32) (_ BitVec 64))) (size!24194 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49452)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49452 (_ BitVec 32) (_ BitVec 32)) Unit!29324)

(assert (=> b!861036 (= lt!388267 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16927 0))(
  ( (Nil!16924) (Cons!16923 (h!18054 (_ BitVec 64)) (t!23716 List!16927)) )
))
(declare-fun arrayNoDuplicates!0 (array!49452 (_ BitVec 32) List!16927) Bool)

(assert (=> b!861036 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16924)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!388259 () Unit!29324)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49452 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29324)

(assert (=> b!861036 (= lt!388259 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861036 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388261 () Unit!29324)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49452 (_ BitVec 64) (_ BitVec 32) List!16927) Unit!29324)

(assert (=> b!861036 (= lt!388261 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16924))))

(assert (=> b!861036 false))

(declare-fun b!861037 () Bool)

(declare-fun res!585270 () Bool)

(declare-fun e!479793 () Bool)

(assert (=> b!861037 (=> (not res!585270) (not e!479793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861037 (= res!585270 (validKeyInArray!0 k!854))))

(declare-fun b!861038 () Bool)

(declare-fun Unit!29327 () Unit!29324)

(assert (=> b!861038 (= e!479791 Unit!29327)))

(declare-fun b!861039 () Bool)

(declare-fun res!585278 () Bool)

(assert (=> b!861039 (=> (not res!585278) (not e!479793))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49452 (_ BitVec 32)) Bool)

(assert (=> b!861039 (= res!585278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861040 () Bool)

(declare-fun e!479792 () Bool)

(declare-fun e!479790 () Bool)

(assert (=> b!861040 (= e!479792 (not e!479790))))

(declare-fun res!585271 () Bool)

(assert (=> b!861040 (=> res!585271 e!479790)))

(assert (=> b!861040 (= res!585271 (not (validKeyInArray!0 (select (arr!23753 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11056 0))(
  ( (tuple2!11057 (_1!5538 (_ BitVec 64)) (_2!5538 V!27249)) )
))
(declare-datatypes ((List!16928 0))(
  ( (Nil!16925) (Cons!16924 (h!18055 tuple2!11056) (t!23717 List!16928)) )
))
(declare-datatypes ((ListLongMap!9839 0))(
  ( (ListLongMap!9840 (toList!4935 List!16928)) )
))
(declare-fun lt!388260 () ListLongMap!9839)

(declare-fun lt!388262 () ListLongMap!9839)

(assert (=> b!861040 (= lt!388260 lt!388262)))

(declare-fun v!557 () V!27249)

(declare-fun lt!388269 () ListLongMap!9839)

(declare-fun +!2236 (ListLongMap!9839 tuple2!11056) ListLongMap!9839)

(assert (=> b!861040 (= lt!388262 (+!2236 lt!388269 (tuple2!11057 k!854 v!557)))))

(declare-fun lt!388263 () array!49450)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27249)

(declare-fun zeroValue!654 () V!27249)

(declare-fun getCurrentListMapNoExtraKeys!2915 (array!49452 array!49450 (_ BitVec 32) (_ BitVec 32) V!27249 V!27249 (_ BitVec 32) Int) ListLongMap!9839)

(assert (=> b!861040 (= lt!388260 (getCurrentListMapNoExtraKeys!2915 _keys!868 lt!388263 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861040 (= lt!388269 (getCurrentListMapNoExtraKeys!2915 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388264 () Unit!29324)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!489 (array!49452 array!49450 (_ BitVec 32) (_ BitVec 32) V!27249 V!27249 (_ BitVec 32) (_ BitVec 64) V!27249 (_ BitVec 32) Int) Unit!29324)

(assert (=> b!861040 (= lt!388264 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!489 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861041 () Bool)

(declare-fun res!585273 () Bool)

(assert (=> b!861041 (=> (not res!585273) (not e!479793))))

(assert (=> b!861041 (= res!585273 (and (= (select (arr!23753 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861042 () Bool)

(declare-fun res!585275 () Bool)

(assert (=> b!861042 (=> (not res!585275) (not e!479793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861042 (= res!585275 (validMask!0 mask!1196))))

(declare-fun b!861043 () Bool)

(assert (=> b!861043 (= e!479790 true)))

(assert (=> b!861043 (not (= (select (arr!23753 _keys!868) from!1053) k!854))))

(declare-fun lt!388268 () Unit!29324)

(assert (=> b!861043 (= lt!388268 e!479791)))

(declare-fun c!91911 () Bool)

(assert (=> b!861043 (= c!91911 (= (select (arr!23753 _keys!868) from!1053) k!854))))

(declare-fun lt!388265 () ListLongMap!9839)

(declare-fun get!12540 (ValueCell!7886 V!27249) V!27249)

(declare-fun dynLambda!1118 (Int (_ BitVec 64)) V!27249)

(assert (=> b!861043 (= lt!388265 (+!2236 lt!388262 (tuple2!11057 (select (arr!23753 _keys!868) from!1053) (get!12540 (select (arr!23752 _values!688) from!1053) (dynLambda!1118 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861044 () Bool)

(declare-fun e!479786 () Bool)

(declare-fun e!479789 () Bool)

(assert (=> b!861044 (= e!479786 (and e!479789 mapRes!26576))))

(declare-fun condMapEmpty!26576 () Bool)

(declare-fun mapDefault!26576 () ValueCell!7886)


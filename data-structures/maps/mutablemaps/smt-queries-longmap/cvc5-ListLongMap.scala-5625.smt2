; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73562 () Bool)

(assert start!73562)

(declare-fun b_free!14449 () Bool)

(declare-fun b_next!14449 () Bool)

(assert (=> start!73562 (= b_free!14449 (not b_next!14449))))

(declare-fun tp!50852 () Bool)

(declare-fun b_and!23895 () Bool)

(assert (=> start!73562 (= tp!50852 b_and!23895)))

(declare-fun b!859346 () Bool)

(declare-fun e!478928 () Bool)

(declare-fun e!478924 () Bool)

(assert (=> b!859346 (= e!478928 e!478924)))

(declare-fun res!584006 () Bool)

(assert (=> b!859346 (=> res!584006 e!478924)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49328 0))(
  ( (array!49329 (arr!23691 (Array (_ BitVec 32) (_ BitVec 64))) (size!24132 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49328)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859346 (= res!584006 (not (= (select (arr!23691 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!27161 0))(
  ( (V!27162 (val!8340 Int)) )
))
(declare-datatypes ((tuple2!11002 0))(
  ( (tuple2!11003 (_1!5511 (_ BitVec 64)) (_2!5511 V!27161)) )
))
(declare-datatypes ((List!16875 0))(
  ( (Nil!16872) (Cons!16871 (h!18002 tuple2!11002) (t!23598 List!16875)) )
))
(declare-datatypes ((ListLongMap!9785 0))(
  ( (ListLongMap!9786 (toList!4908 List!16875)) )
))
(declare-fun lt!387247 () ListLongMap!9785)

(declare-fun lt!387240 () ListLongMap!9785)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7853 0))(
  ( (ValueCellFull!7853 (v!10761 V!27161)) (EmptyCell!7853) )
))
(declare-datatypes ((array!49330 0))(
  ( (array!49331 (arr!23692 (Array (_ BitVec 32) ValueCell!7853)) (size!24133 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49330)

(declare-fun +!2211 (ListLongMap!9785 tuple2!11002) ListLongMap!9785)

(declare-fun get!12498 (ValueCell!7853 V!27161) V!27161)

(declare-fun dynLambda!1098 (Int (_ BitVec 64)) V!27161)

(assert (=> b!859346 (= lt!387240 (+!2211 lt!387247 (tuple2!11003 (select (arr!23691 _keys!868) from!1053) (get!12498 (select (arr!23692 _values!688) from!1053) (dynLambda!1098 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859347 () Bool)

(declare-fun e!478931 () Bool)

(assert (=> b!859347 (= e!478924 e!478931)))

(declare-fun res!584012 () Bool)

(assert (=> b!859347 (=> res!584012 e!478931)))

(assert (=> b!859347 (= res!584012 (or (bvsge (size!24132 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24132 _keys!868)) (bvsge from!1053 (size!24132 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859347 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29266 0))(
  ( (Unit!29267) )
))
(declare-fun lt!387243 () Unit!29266)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49328 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29266)

(assert (=> b!859347 (= lt!387243 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!16876 0))(
  ( (Nil!16873) (Cons!16872 (h!18003 (_ BitVec 64)) (t!23599 List!16876)) )
))
(declare-fun arrayNoDuplicates!0 (array!49328 (_ BitVec 32) List!16876) Bool)

(assert (=> b!859347 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16873)))

(declare-fun lt!387242 () Unit!29266)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49328 (_ BitVec 32) (_ BitVec 32)) Unit!29266)

(assert (=> b!859347 (= lt!387242 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859348 () Bool)

(declare-fun e!478926 () Bool)

(declare-fun e!478932 () Bool)

(assert (=> b!859348 (= e!478926 e!478932)))

(declare-fun res!584009 () Bool)

(assert (=> b!859348 (=> (not res!584009) (not e!478932))))

(assert (=> b!859348 (= res!584009 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387245 () array!49330)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27161)

(declare-fun zeroValue!654 () V!27161)

(declare-fun getCurrentListMapNoExtraKeys!2888 (array!49328 array!49330 (_ BitVec 32) (_ BitVec 32) V!27161 V!27161 (_ BitVec 32) Int) ListLongMap!9785)

(assert (=> b!859348 (= lt!387240 (getCurrentListMapNoExtraKeys!2888 _keys!868 lt!387245 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27161)

(assert (=> b!859348 (= lt!387245 (array!49331 (store (arr!23692 _values!688) i!612 (ValueCellFull!7853 v!557)) (size!24133 _values!688)))))

(declare-fun lt!387241 () ListLongMap!9785)

(assert (=> b!859348 (= lt!387241 (getCurrentListMapNoExtraKeys!2888 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859349 () Bool)

(assert (=> b!859349 (= e!478931 true)))

(declare-fun lt!387244 () Bool)

(declare-fun contains!4220 (List!16876 (_ BitVec 64)) Bool)

(assert (=> b!859349 (= lt!387244 (contains!4220 Nil!16873 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!26477 () Bool)

(declare-fun mapRes!26477 () Bool)

(assert (=> mapIsEmpty!26477 mapRes!26477))

(declare-fun b!859350 () Bool)

(declare-fun res!584011 () Bool)

(assert (=> b!859350 (=> (not res!584011) (not e!478926))))

(assert (=> b!859350 (= res!584011 (and (= (size!24133 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24132 _keys!868) (size!24133 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859351 () Bool)

(declare-fun res!584000 () Bool)

(assert (=> b!859351 (=> res!584000 e!478931)))

(assert (=> b!859351 (= res!584000 (contains!4220 Nil!16873 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859352 () Bool)

(declare-fun res!584005 () Bool)

(assert (=> b!859352 (=> (not res!584005) (not e!478926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859352 (= res!584005 (validKeyInArray!0 k!854))))

(declare-fun b!859353 () Bool)

(declare-fun res!584001 () Bool)

(assert (=> b!859353 (=> (not res!584001) (not e!478926))))

(assert (=> b!859353 (= res!584001 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24132 _keys!868))))))

(declare-fun b!859354 () Bool)

(assert (=> b!859354 (= e!478932 (not e!478928))))

(declare-fun res!584013 () Bool)

(assert (=> b!859354 (=> res!584013 e!478928)))

(assert (=> b!859354 (= res!584013 (not (validKeyInArray!0 (select (arr!23691 _keys!868) from!1053))))))

(declare-fun lt!387249 () ListLongMap!9785)

(assert (=> b!859354 (= lt!387249 lt!387247)))

(declare-fun lt!387246 () ListLongMap!9785)

(assert (=> b!859354 (= lt!387247 (+!2211 lt!387246 (tuple2!11003 k!854 v!557)))))

(assert (=> b!859354 (= lt!387249 (getCurrentListMapNoExtraKeys!2888 _keys!868 lt!387245 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859354 (= lt!387246 (getCurrentListMapNoExtraKeys!2888 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387248 () Unit!29266)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!468 (array!49328 array!49330 (_ BitVec 32) (_ BitVec 32) V!27161 V!27161 (_ BitVec 32) (_ BitVec 64) V!27161 (_ BitVec 32) Int) Unit!29266)

(assert (=> b!859354 (= lt!387248 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!468 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859355 () Bool)

(declare-fun e!478929 () Bool)

(declare-fun tp_is_empty!16585 () Bool)

(assert (=> b!859355 (= e!478929 tp_is_empty!16585)))

(declare-fun b!859356 () Bool)

(declare-fun res!584003 () Bool)

(assert (=> b!859356 (=> res!584003 e!478931)))

(declare-fun noDuplicate!1302 (List!16876) Bool)

(assert (=> b!859356 (= res!584003 (not (noDuplicate!1302 Nil!16873)))))

(declare-fun b!859357 () Bool)

(declare-fun e!478930 () Bool)

(assert (=> b!859357 (= e!478930 tp_is_empty!16585)))

(declare-fun b!859358 () Bool)

(declare-fun res!584002 () Bool)

(assert (=> b!859358 (=> (not res!584002) (not e!478926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859358 (= res!584002 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26477 () Bool)

(declare-fun tp!50851 () Bool)

(assert (=> mapNonEmpty!26477 (= mapRes!26477 (and tp!50851 e!478930))))

(declare-fun mapRest!26477 () (Array (_ BitVec 32) ValueCell!7853))

(declare-fun mapValue!26477 () ValueCell!7853)

(declare-fun mapKey!26477 () (_ BitVec 32))

(assert (=> mapNonEmpty!26477 (= (arr!23692 _values!688) (store mapRest!26477 mapKey!26477 mapValue!26477))))

(declare-fun b!859359 () Bool)

(declare-fun res!584007 () Bool)

(assert (=> b!859359 (=> (not res!584007) (not e!478926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49328 (_ BitVec 32)) Bool)

(assert (=> b!859359 (= res!584007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859345 () Bool)

(declare-fun e!478927 () Bool)

(assert (=> b!859345 (= e!478927 (and e!478929 mapRes!26477))))

(declare-fun condMapEmpty!26477 () Bool)

(declare-fun mapDefault!26477 () ValueCell!7853)


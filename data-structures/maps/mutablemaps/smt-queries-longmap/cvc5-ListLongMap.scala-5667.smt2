; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73814 () Bool)

(assert start!73814)

(declare-fun b_free!14701 () Bool)

(declare-fun b_next!14701 () Bool)

(assert (=> start!73814 (= b_free!14701 (not b_next!14701))))

(declare-fun tp!51608 () Bool)

(declare-fun b_and!24399 () Bool)

(assert (=> start!73814 (= tp!51608 b_and!24399)))

(declare-fun b!865625 () Bool)

(declare-fun res!588278 () Bool)

(declare-fun e!482238 () Bool)

(assert (=> b!865625 (=> (not res!588278) (not e!482238))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865625 (= res!588278 (validKeyInArray!0 k!854))))

(declare-fun b!865626 () Bool)

(declare-fun e!482243 () Bool)

(assert (=> b!865626 (= e!482238 e!482243)))

(declare-fun res!588284 () Bool)

(assert (=> b!865626 (=> (not res!588284) (not e!482243))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865626 (= res!588284 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27497 0))(
  ( (V!27498 (val!8466 Int)) )
))
(declare-datatypes ((ValueCell!7979 0))(
  ( (ValueCellFull!7979 (v!10887 V!27497)) (EmptyCell!7979) )
))
(declare-datatypes ((array!49818 0))(
  ( (array!49819 (arr!23936 (Array (_ BitVec 32) ValueCell!7979)) (size!24377 (_ BitVec 32))) )
))
(declare-fun lt!392430 () array!49818)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11224 0))(
  ( (tuple2!11225 (_1!5622 (_ BitVec 64)) (_2!5622 V!27497)) )
))
(declare-datatypes ((List!17089 0))(
  ( (Nil!17086) (Cons!17085 (h!18216 tuple2!11224) (t!24064 List!17089)) )
))
(declare-datatypes ((ListLongMap!10007 0))(
  ( (ListLongMap!10008 (toList!5019 List!17089)) )
))
(declare-fun lt!392429 () ListLongMap!10007)

(declare-datatypes ((array!49820 0))(
  ( (array!49821 (arr!23937 (Array (_ BitVec 32) (_ BitVec 64))) (size!24378 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49820)

(declare-fun minValue!654 () V!27497)

(declare-fun zeroValue!654 () V!27497)

(declare-fun getCurrentListMapNoExtraKeys!2987 (array!49820 array!49818 (_ BitVec 32) (_ BitVec 32) V!27497 V!27497 (_ BitVec 32) Int) ListLongMap!10007)

(assert (=> b!865626 (= lt!392429 (getCurrentListMapNoExtraKeys!2987 _keys!868 lt!392430 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27497)

(declare-fun _values!688 () array!49818)

(assert (=> b!865626 (= lt!392430 (array!49819 (store (arr!23936 _values!688) i!612 (ValueCellFull!7979 v!557)) (size!24377 _values!688)))))

(declare-fun lt!392422 () ListLongMap!10007)

(assert (=> b!865626 (= lt!392422 (getCurrentListMapNoExtraKeys!2987 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865627 () Bool)

(declare-fun res!588279 () Bool)

(assert (=> b!865627 (=> (not res!588279) (not e!482238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865627 (= res!588279 (validMask!0 mask!1196))))

(declare-fun b!865628 () Bool)

(declare-fun e!482242 () Bool)

(declare-fun e!482239 () Bool)

(assert (=> b!865628 (= e!482242 e!482239)))

(declare-fun res!588286 () Bool)

(assert (=> b!865628 (=> res!588286 e!482239)))

(assert (=> b!865628 (= res!588286 (= k!854 (select (arr!23937 _keys!868) from!1053)))))

(assert (=> b!865628 (not (= (select (arr!23937 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29633 0))(
  ( (Unit!29634) )
))
(declare-fun lt!392420 () Unit!29633)

(declare-fun e!482240 () Unit!29633)

(assert (=> b!865628 (= lt!392420 e!482240)))

(declare-fun c!92190 () Bool)

(assert (=> b!865628 (= c!92190 (= (select (arr!23937 _keys!868) from!1053) k!854))))

(declare-fun lt!392427 () ListLongMap!10007)

(assert (=> b!865628 (= lt!392429 lt!392427)))

(declare-fun lt!392426 () ListLongMap!10007)

(declare-fun lt!392424 () tuple2!11224)

(declare-fun +!2315 (ListLongMap!10007 tuple2!11224) ListLongMap!10007)

(assert (=> b!865628 (= lt!392427 (+!2315 lt!392426 lt!392424))))

(declare-fun lt!392423 () V!27497)

(assert (=> b!865628 (= lt!392424 (tuple2!11225 (select (arr!23937 _keys!868) from!1053) lt!392423))))

(declare-fun get!12667 (ValueCell!7979 V!27497) V!27497)

(declare-fun dynLambda!1183 (Int (_ BitVec 64)) V!27497)

(assert (=> b!865628 (= lt!392423 (get!12667 (select (arr!23936 _values!688) from!1053) (dynLambda!1183 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865629 () Bool)

(assert (=> b!865629 (= e!482243 (not e!482242))))

(declare-fun res!588281 () Bool)

(assert (=> b!865629 (=> res!588281 e!482242)))

(assert (=> b!865629 (= res!588281 (not (validKeyInArray!0 (select (arr!23937 _keys!868) from!1053))))))

(declare-fun lt!392418 () ListLongMap!10007)

(assert (=> b!865629 (= lt!392418 lt!392426)))

(declare-fun lt!392428 () ListLongMap!10007)

(declare-fun lt!392425 () tuple2!11224)

(assert (=> b!865629 (= lt!392426 (+!2315 lt!392428 lt!392425))))

(assert (=> b!865629 (= lt!392418 (getCurrentListMapNoExtraKeys!2987 _keys!868 lt!392430 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865629 (= lt!392425 (tuple2!11225 k!854 v!557))))

(assert (=> b!865629 (= lt!392428 (getCurrentListMapNoExtraKeys!2987 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392421 () Unit!29633)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!553 (array!49820 array!49818 (_ BitVec 32) (_ BitVec 32) V!27497 V!27497 (_ BitVec 32) (_ BitVec 64) V!27497 (_ BitVec 32) Int) Unit!29633)

(assert (=> b!865629 (= lt!392421 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!553 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865630 () Bool)

(declare-fun res!588283 () Bool)

(assert (=> b!865630 (=> (not res!588283) (not e!482238))))

(declare-datatypes ((List!17090 0))(
  ( (Nil!17087) (Cons!17086 (h!18217 (_ BitVec 64)) (t!24065 List!17090)) )
))
(declare-fun arrayNoDuplicates!0 (array!49820 (_ BitVec 32) List!17090) Bool)

(assert (=> b!865630 (= res!588283 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17087))))

(declare-fun b!865631 () Bool)

(declare-fun e!482236 () Bool)

(declare-fun tp_is_empty!16837 () Bool)

(assert (=> b!865631 (= e!482236 tp_is_empty!16837)))

(declare-fun b!865632 () Bool)

(declare-fun Unit!29635 () Unit!29633)

(assert (=> b!865632 (= e!482240 Unit!29635)))

(declare-fun b!865634 () Bool)

(assert (=> b!865634 (= e!482239 true)))

(assert (=> b!865634 (= lt!392427 (+!2315 (+!2315 lt!392428 lt!392424) lt!392425))))

(declare-fun lt!392432 () Unit!29633)

(declare-fun addCommutativeForDiffKeys!522 (ListLongMap!10007 (_ BitVec 64) V!27497 (_ BitVec 64) V!27497) Unit!29633)

(assert (=> b!865634 (= lt!392432 (addCommutativeForDiffKeys!522 lt!392428 k!854 v!557 (select (arr!23937 _keys!868) from!1053) lt!392423))))

(declare-fun mapNonEmpty!26855 () Bool)

(declare-fun mapRes!26855 () Bool)

(declare-fun tp!51607 () Bool)

(assert (=> mapNonEmpty!26855 (= mapRes!26855 (and tp!51607 e!482236))))

(declare-fun mapValue!26855 () ValueCell!7979)

(declare-fun mapKey!26855 () (_ BitVec 32))

(declare-fun mapRest!26855 () (Array (_ BitVec 32) ValueCell!7979))

(assert (=> mapNonEmpty!26855 (= (arr!23936 _values!688) (store mapRest!26855 mapKey!26855 mapValue!26855))))

(declare-fun b!865635 () Bool)

(declare-fun e!482237 () Bool)

(declare-fun e!482244 () Bool)

(assert (=> b!865635 (= e!482237 (and e!482244 mapRes!26855))))

(declare-fun condMapEmpty!26855 () Bool)

(declare-fun mapDefault!26855 () ValueCell!7979)


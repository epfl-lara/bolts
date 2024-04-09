; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73850 () Bool)

(assert start!73850)

(declare-fun b_free!14737 () Bool)

(declare-fun b_next!14737 () Bool)

(assert (=> start!73850 (= b_free!14737 (not b_next!14737))))

(declare-fun tp!51715 () Bool)

(declare-fun b_and!24471 () Bool)

(assert (=> start!73850 (= tp!51715 b_and!24471)))

(declare-fun b!866525 () Bool)

(declare-fun res!588874 () Bool)

(declare-fun e!482729 () Bool)

(assert (=> b!866525 (=> (not res!588874) (not e!482729))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49886 0))(
  ( (array!49887 (arr!23970 (Array (_ BitVec 32) (_ BitVec 64))) (size!24411 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49886)

(declare-datatypes ((V!27545 0))(
  ( (V!27546 (val!8484 Int)) )
))
(declare-datatypes ((ValueCell!7997 0))(
  ( (ValueCellFull!7997 (v!10905 V!27545)) (EmptyCell!7997) )
))
(declare-datatypes ((array!49888 0))(
  ( (array!49889 (arr!23971 (Array (_ BitVec 32) ValueCell!7997)) (size!24412 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49888)

(assert (=> b!866525 (= res!588874 (and (= (size!24412 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24411 _keys!868) (size!24412 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866526 () Bool)

(declare-fun res!588875 () Bool)

(assert (=> b!866526 (=> (not res!588875) (not e!482729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49886 (_ BitVec 32)) Bool)

(assert (=> b!866526 (= res!588875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866527 () Bool)

(declare-fun e!482727 () Bool)

(declare-fun e!482723 () Bool)

(assert (=> b!866527 (= e!482727 e!482723)))

(declare-fun res!588873 () Bool)

(assert (=> b!866527 (=> res!588873 e!482723)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866527 (= res!588873 (= k!854 (select (arr!23970 _keys!868) from!1053)))))

(assert (=> b!866527 (not (= (select (arr!23970 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29684 0))(
  ( (Unit!29685) )
))
(declare-fun lt!393291 () Unit!29684)

(declare-fun e!482722 () Unit!29684)

(assert (=> b!866527 (= lt!393291 e!482722)))

(declare-fun c!92244 () Bool)

(assert (=> b!866527 (= c!92244 (= (select (arr!23970 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11254 0))(
  ( (tuple2!11255 (_1!5637 (_ BitVec 64)) (_2!5637 V!27545)) )
))
(declare-datatypes ((List!17118 0))(
  ( (Nil!17115) (Cons!17114 (h!18245 tuple2!11254) (t!24129 List!17118)) )
))
(declare-datatypes ((ListLongMap!10037 0))(
  ( (ListLongMap!10038 (toList!5034 List!17118)) )
))
(declare-fun lt!393287 () ListLongMap!10037)

(declare-fun lt!393295 () ListLongMap!10037)

(assert (=> b!866527 (= lt!393287 lt!393295)))

(declare-fun lt!393283 () ListLongMap!10037)

(declare-fun lt!393297 () tuple2!11254)

(declare-fun +!2330 (ListLongMap!10037 tuple2!11254) ListLongMap!10037)

(assert (=> b!866527 (= lt!393295 (+!2330 lt!393283 lt!393297))))

(declare-fun lt!393284 () V!27545)

(assert (=> b!866527 (= lt!393297 (tuple2!11255 (select (arr!23970 _keys!868) from!1053) lt!393284))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12692 (ValueCell!7997 V!27545) V!27545)

(declare-fun dynLambda!1196 (Int (_ BitVec 64)) V!27545)

(assert (=> b!866527 (= lt!393284 (get!12692 (select (arr!23971 _values!688) from!1053) (dynLambda!1196 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866528 () Bool)

(declare-fun e!482726 () Bool)

(assert (=> b!866528 (= e!482726 (not e!482727))))

(declare-fun res!588879 () Bool)

(assert (=> b!866528 (=> res!588879 e!482727)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866528 (= res!588879 (not (validKeyInArray!0 (select (arr!23970 _keys!868) from!1053))))))

(declare-fun lt!393292 () ListLongMap!10037)

(assert (=> b!866528 (= lt!393292 lt!393283)))

(declare-fun lt!393296 () ListLongMap!10037)

(declare-fun lt!393289 () tuple2!11254)

(assert (=> b!866528 (= lt!393283 (+!2330 lt!393296 lt!393289))))

(declare-fun lt!393282 () array!49888)

(declare-fun minValue!654 () V!27545)

(declare-fun zeroValue!654 () V!27545)

(declare-fun getCurrentListMapNoExtraKeys!3001 (array!49886 array!49888 (_ BitVec 32) (_ BitVec 32) V!27545 V!27545 (_ BitVec 32) Int) ListLongMap!10037)

(assert (=> b!866528 (= lt!393292 (getCurrentListMapNoExtraKeys!3001 _keys!868 lt!393282 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27545)

(assert (=> b!866528 (= lt!393289 (tuple2!11255 k!854 v!557))))

(assert (=> b!866528 (= lt!393296 (getCurrentListMapNoExtraKeys!3001 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!393286 () Unit!29684)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!565 (array!49886 array!49888 (_ BitVec 32) (_ BitVec 32) V!27545 V!27545 (_ BitVec 32) (_ BitVec 64) V!27545 (_ BitVec 32) Int) Unit!29684)

(assert (=> b!866528 (= lt!393286 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!565 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866529 () Bool)

(declare-fun res!588882 () Bool)

(assert (=> b!866529 (=> (not res!588882) (not e!482729))))

(assert (=> b!866529 (= res!588882 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24411 _keys!868))))))

(declare-fun b!866530 () Bool)

(declare-fun Unit!29686 () Unit!29684)

(assert (=> b!866530 (= e!482722 Unit!29686)))

(declare-fun b!866531 () Bool)

(declare-fun res!588878 () Bool)

(assert (=> b!866531 (=> (not res!588878) (not e!482729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866531 (= res!588878 (validMask!0 mask!1196))))

(declare-fun b!866532 () Bool)

(declare-fun e!482730 () Bool)

(declare-fun e!482725 () Bool)

(declare-fun mapRes!26909 () Bool)

(assert (=> b!866532 (= e!482730 (and e!482725 mapRes!26909))))

(declare-fun condMapEmpty!26909 () Bool)

(declare-fun mapDefault!26909 () ValueCell!7997)


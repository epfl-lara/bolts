; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73802 () Bool)

(assert start!73802)

(declare-fun b_free!14689 () Bool)

(declare-fun b_next!14689 () Bool)

(assert (=> start!73802 (= b_free!14689 (not b_next!14689))))

(declare-fun tp!51571 () Bool)

(declare-fun b_and!24375 () Bool)

(assert (=> start!73802 (= tp!51571 b_and!24375)))

(declare-fun b!865325 () Bool)

(declare-fun e!482077 () Bool)

(declare-fun e!482080 () Bool)

(assert (=> b!865325 (= e!482077 e!482080)))

(declare-fun res!588082 () Bool)

(assert (=> b!865325 (=> (not res!588082) (not e!482080))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865325 (= res!588082 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27481 0))(
  ( (V!27482 (val!8460 Int)) )
))
(declare-datatypes ((ValueCell!7973 0))(
  ( (ValueCellFull!7973 (v!10881 V!27481)) (EmptyCell!7973) )
))
(declare-datatypes ((array!49794 0))(
  ( (array!49795 (arr!23924 (Array (_ BitVec 32) ValueCell!7973)) (size!24365 (_ BitVec 32))) )
))
(declare-fun lt!392141 () array!49794)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11214 0))(
  ( (tuple2!11215 (_1!5617 (_ BitVec 64)) (_2!5617 V!27481)) )
))
(declare-datatypes ((List!17078 0))(
  ( (Nil!17075) (Cons!17074 (h!18205 tuple2!11214) (t!24041 List!17078)) )
))
(declare-datatypes ((ListLongMap!9997 0))(
  ( (ListLongMap!9998 (toList!5014 List!17078)) )
))
(declare-fun lt!392131 () ListLongMap!9997)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49796 0))(
  ( (array!49797 (arr!23925 (Array (_ BitVec 32) (_ BitVec 64))) (size!24366 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49796)

(declare-fun minValue!654 () V!27481)

(declare-fun zeroValue!654 () V!27481)

(declare-fun getCurrentListMapNoExtraKeys!2984 (array!49796 array!49794 (_ BitVec 32) (_ BitVec 32) V!27481 V!27481 (_ BitVec 32) Int) ListLongMap!9997)

(assert (=> b!865325 (= lt!392131 (getCurrentListMapNoExtraKeys!2984 _keys!868 lt!392141 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27481)

(declare-fun _values!688 () array!49794)

(assert (=> b!865325 (= lt!392141 (array!49795 (store (arr!23924 _values!688) i!612 (ValueCellFull!7973 v!557)) (size!24365 _values!688)))))

(declare-fun lt!392142 () ListLongMap!9997)

(assert (=> b!865325 (= lt!392142 (getCurrentListMapNoExtraKeys!2984 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26837 () Bool)

(declare-fun mapRes!26837 () Bool)

(assert (=> mapIsEmpty!26837 mapRes!26837))

(declare-fun b!865326 () Bool)

(declare-fun e!482076 () Bool)

(declare-fun tp_is_empty!16825 () Bool)

(assert (=> b!865326 (= e!482076 tp_is_empty!16825)))

(declare-fun b!865327 () Bool)

(declare-fun res!588086 () Bool)

(assert (=> b!865327 (=> (not res!588086) (not e!482077))))

(declare-datatypes ((List!17079 0))(
  ( (Nil!17076) (Cons!17075 (h!18206 (_ BitVec 64)) (t!24042 List!17079)) )
))
(declare-fun arrayNoDuplicates!0 (array!49796 (_ BitVec 32) List!17079) Bool)

(assert (=> b!865327 (= res!588086 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17076))))

(declare-fun b!865328 () Bool)

(declare-fun res!588085 () Bool)

(assert (=> b!865328 (=> (not res!588085) (not e!482077))))

(assert (=> b!865328 (= res!588085 (and (= (size!24365 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24366 _keys!868) (size!24365 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865329 () Bool)

(declare-fun e!482078 () Bool)

(assert (=> b!865329 (= e!482078 tp_is_empty!16825)))

(declare-fun b!865331 () Bool)

(declare-fun res!588089 () Bool)

(assert (=> b!865331 (=> (not res!588089) (not e!482077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49796 (_ BitVec 32)) Bool)

(assert (=> b!865331 (= res!588089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865332 () Bool)

(declare-fun e!482081 () Bool)

(assert (=> b!865332 (= e!482081 true)))

(declare-fun lt!392140 () tuple2!11214)

(declare-fun lt!392130 () ListLongMap!9997)

(declare-fun lt!392139 () tuple2!11214)

(declare-fun lt!392144 () ListLongMap!9997)

(declare-fun +!2310 (ListLongMap!9997 tuple2!11214) ListLongMap!9997)

(assert (=> b!865332 (= lt!392144 (+!2310 (+!2310 lt!392130 lt!392140) lt!392139))))

(declare-fun lt!392143 () V!27481)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!29611 0))(
  ( (Unit!29612) )
))
(declare-fun lt!392145 () Unit!29611)

(declare-fun addCommutativeForDiffKeys!517 (ListLongMap!9997 (_ BitVec 64) V!27481 (_ BitVec 64) V!27481) Unit!29611)

(assert (=> b!865332 (= lt!392145 (addCommutativeForDiffKeys!517 lt!392130 k!854 v!557 (select (arr!23925 _keys!868) from!1053) lt!392143))))

(declare-fun b!865333 () Bool)

(declare-fun res!588083 () Bool)

(assert (=> b!865333 (=> (not res!588083) (not e!482077))))

(assert (=> b!865333 (= res!588083 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24366 _keys!868))))))

(declare-fun b!865334 () Bool)

(declare-fun res!588087 () Bool)

(assert (=> b!865334 (=> (not res!588087) (not e!482077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865334 (= res!588087 (validKeyInArray!0 k!854))))

(declare-fun b!865335 () Bool)

(declare-fun e!482074 () Bool)

(assert (=> b!865335 (= e!482074 e!482081)))

(declare-fun res!588090 () Bool)

(assert (=> b!865335 (=> res!588090 e!482081)))

(assert (=> b!865335 (= res!588090 (= k!854 (select (arr!23925 _keys!868) from!1053)))))

(assert (=> b!865335 (not (= (select (arr!23925 _keys!868) from!1053) k!854))))

(declare-fun lt!392136 () Unit!29611)

(declare-fun e!482075 () Unit!29611)

(assert (=> b!865335 (= lt!392136 e!482075)))

(declare-fun c!92172 () Bool)

(assert (=> b!865335 (= c!92172 (= (select (arr!23925 _keys!868) from!1053) k!854))))

(assert (=> b!865335 (= lt!392131 lt!392144)))

(declare-fun lt!392137 () ListLongMap!9997)

(assert (=> b!865335 (= lt!392144 (+!2310 lt!392137 lt!392140))))

(assert (=> b!865335 (= lt!392140 (tuple2!11215 (select (arr!23925 _keys!868) from!1053) lt!392143))))

(declare-fun get!12658 (ValueCell!7973 V!27481) V!27481)

(declare-fun dynLambda!1178 (Int (_ BitVec 64)) V!27481)

(assert (=> b!865335 (= lt!392143 (get!12658 (select (arr!23924 _values!688) from!1053) (dynLambda!1178 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865336 () Bool)

(declare-fun Unit!29613 () Unit!29611)

(assert (=> b!865336 (= e!482075 Unit!29613)))

(declare-fun b!865330 () Bool)

(declare-fun Unit!29614 () Unit!29611)

(assert (=> b!865330 (= e!482075 Unit!29614)))

(declare-fun lt!392135 () Unit!29611)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49796 (_ BitVec 32) (_ BitVec 32)) Unit!29611)

(assert (=> b!865330 (= lt!392135 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865330 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17076)))

(declare-fun lt!392132 () Unit!29611)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49796 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29611)

(assert (=> b!865330 (= lt!392132 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865330 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392134 () Unit!29611)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49796 (_ BitVec 64) (_ BitVec 32) List!17079) Unit!29611)

(assert (=> b!865330 (= lt!392134 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17076))))

(assert (=> b!865330 false))

(declare-fun res!588084 () Bool)

(assert (=> start!73802 (=> (not res!588084) (not e!482077))))

(assert (=> start!73802 (= res!588084 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24366 _keys!868))))))

(assert (=> start!73802 e!482077))

(assert (=> start!73802 tp_is_empty!16825))

(assert (=> start!73802 true))

(assert (=> start!73802 tp!51571))

(declare-fun array_inv!18896 (array!49796) Bool)

(assert (=> start!73802 (array_inv!18896 _keys!868)))

(declare-fun e!482082 () Bool)

(declare-fun array_inv!18897 (array!49794) Bool)

(assert (=> start!73802 (and (array_inv!18897 _values!688) e!482082)))

(declare-fun mapNonEmpty!26837 () Bool)

(declare-fun tp!51572 () Bool)

(assert (=> mapNonEmpty!26837 (= mapRes!26837 (and tp!51572 e!482078))))

(declare-fun mapKey!26837 () (_ BitVec 32))

(declare-fun mapRest!26837 () (Array (_ BitVec 32) ValueCell!7973))

(declare-fun mapValue!26837 () ValueCell!7973)

(assert (=> mapNonEmpty!26837 (= (arr!23924 _values!688) (store mapRest!26837 mapKey!26837 mapValue!26837))))

(declare-fun b!865337 () Bool)

(assert (=> b!865337 (= e!482080 (not e!482074))))

(declare-fun res!588081 () Bool)

(assert (=> b!865337 (=> res!588081 e!482074)))

(assert (=> b!865337 (= res!588081 (not (validKeyInArray!0 (select (arr!23925 _keys!868) from!1053))))))

(declare-fun lt!392133 () ListLongMap!9997)

(assert (=> b!865337 (= lt!392133 lt!392137)))

(assert (=> b!865337 (= lt!392137 (+!2310 lt!392130 lt!392139))))

(assert (=> b!865337 (= lt!392133 (getCurrentListMapNoExtraKeys!2984 _keys!868 lt!392141 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865337 (= lt!392139 (tuple2!11215 k!854 v!557))))

(assert (=> b!865337 (= lt!392130 (getCurrentListMapNoExtraKeys!2984 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392138 () Unit!29611)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!550 (array!49796 array!49794 (_ BitVec 32) (_ BitVec 32) V!27481 V!27481 (_ BitVec 32) (_ BitVec 64) V!27481 (_ BitVec 32) Int) Unit!29611)

(assert (=> b!865337 (= lt!392138 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!550 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865338 () Bool)

(assert (=> b!865338 (= e!482082 (and e!482076 mapRes!26837))))

(declare-fun condMapEmpty!26837 () Bool)

(declare-fun mapDefault!26837 () ValueCell!7973)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73724 () Bool)

(assert start!73724)

(declare-fun b_free!14611 () Bool)

(declare-fun b_next!14611 () Bool)

(assert (=> start!73724 (= b_free!14611 (not b_next!14611))))

(declare-fun tp!51338 () Bool)

(declare-fun b_and!24219 () Bool)

(assert (=> start!73724 (= tp!51338 b_and!24219)))

(declare-fun b!863375 () Bool)

(declare-fun e!481027 () Bool)

(declare-fun tp_is_empty!16747 () Bool)

(assert (=> b!863375 (= e!481027 tp_is_empty!16747)))

(declare-fun b!863376 () Bool)

(declare-fun res!586800 () Bool)

(declare-fun e!481023 () Bool)

(assert (=> b!863376 (=> (not res!586800) (not e!481023))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863376 (= res!586800 (validMask!0 mask!1196))))

(declare-fun b!863377 () Bool)

(declare-fun e!481028 () Bool)

(assert (=> b!863377 (= e!481028 true)))

(declare-datatypes ((V!27377 0))(
  ( (V!27378 (val!8421 Int)) )
))
(declare-datatypes ((tuple2!11142 0))(
  ( (tuple2!11143 (_1!5581 (_ BitVec 64)) (_2!5581 V!27377)) )
))
(declare-datatypes ((List!17011 0))(
  ( (Nil!17008) (Cons!17007 (h!18138 tuple2!11142) (t!23896 List!17011)) )
))
(declare-datatypes ((ListLongMap!9925 0))(
  ( (ListLongMap!9926 (toList!4978 List!17011)) )
))
(declare-fun lt!390269 () ListLongMap!9925)

(declare-fun lt!390258 () tuple2!11142)

(declare-fun lt!390266 () ListLongMap!9925)

(declare-fun lt!390271 () tuple2!11142)

(declare-fun +!2275 (ListLongMap!9925 tuple2!11142) ListLongMap!9925)

(assert (=> b!863377 (= lt!390266 (+!2275 (+!2275 lt!390269 lt!390271) lt!390258))))

(declare-fun lt!390267 () V!27377)

(declare-fun v!557 () V!27377)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49638 0))(
  ( (array!49639 (arr!23846 (Array (_ BitVec 32) (_ BitVec 64))) (size!24287 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49638)

(declare-datatypes ((Unit!29480 0))(
  ( (Unit!29481) )
))
(declare-fun lt!390259 () Unit!29480)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!488 (ListLongMap!9925 (_ BitVec 64) V!27377 (_ BitVec 64) V!27377) Unit!29480)

(assert (=> b!863377 (= lt!390259 (addCommutativeForDiffKeys!488 lt!390269 k!854 v!557 (select (arr!23846 _keys!868) from!1053) lt!390267))))

(declare-fun b!863378 () Bool)

(declare-fun e!481022 () Unit!29480)

(declare-fun Unit!29482 () Unit!29480)

(assert (=> b!863378 (= e!481022 Unit!29482)))

(declare-fun lt!390268 () Unit!29480)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49638 (_ BitVec 32) (_ BitVec 32)) Unit!29480)

(assert (=> b!863378 (= lt!390268 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17012 0))(
  ( (Nil!17009) (Cons!17008 (h!18139 (_ BitVec 64)) (t!23897 List!17012)) )
))
(declare-fun arrayNoDuplicates!0 (array!49638 (_ BitVec 32) List!17012) Bool)

(assert (=> b!863378 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17009)))

(declare-fun lt!390263 () Unit!29480)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49638 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29480)

(assert (=> b!863378 (= lt!390263 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863378 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390264 () Unit!29480)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49638 (_ BitVec 64) (_ BitVec 32) List!17012) Unit!29480)

(assert (=> b!863378 (= lt!390264 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17009))))

(assert (=> b!863378 false))

(declare-fun b!863379 () Bool)

(declare-fun res!586793 () Bool)

(assert (=> b!863379 (=> (not res!586793) (not e!481023))))

(assert (=> b!863379 (= res!586793 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17009))))

(declare-fun b!863380 () Bool)

(declare-fun res!586801 () Bool)

(assert (=> b!863380 (=> (not res!586801) (not e!481023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863380 (= res!586801 (validKeyInArray!0 k!854))))

(declare-fun b!863381 () Bool)

(declare-fun Unit!29483 () Unit!29480)

(assert (=> b!863381 (= e!481022 Unit!29483)))

(declare-fun mapNonEmpty!26720 () Bool)

(declare-fun mapRes!26720 () Bool)

(declare-fun tp!51337 () Bool)

(declare-fun e!481026 () Bool)

(assert (=> mapNonEmpty!26720 (= mapRes!26720 (and tp!51337 e!481026))))

(declare-datatypes ((ValueCell!7934 0))(
  ( (ValueCellFull!7934 (v!10842 V!27377)) (EmptyCell!7934) )
))
(declare-fun mapRest!26720 () (Array (_ BitVec 32) ValueCell!7934))

(declare-fun mapValue!26720 () ValueCell!7934)

(declare-fun mapKey!26720 () (_ BitVec 32))

(declare-datatypes ((array!49640 0))(
  ( (array!49641 (arr!23847 (Array (_ BitVec 32) ValueCell!7934)) (size!24288 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49640)

(assert (=> mapNonEmpty!26720 (= (arr!23847 _values!688) (store mapRest!26720 mapKey!26720 mapValue!26720))))

(declare-fun b!863382 () Bool)

(declare-fun e!481025 () Bool)

(declare-fun e!481029 () Bool)

(assert (=> b!863382 (= e!481025 (not e!481029))))

(declare-fun res!586796 () Bool)

(assert (=> b!863382 (=> res!586796 e!481029)))

(assert (=> b!863382 (= res!586796 (not (validKeyInArray!0 (select (arr!23846 _keys!868) from!1053))))))

(declare-fun lt!390272 () ListLongMap!9925)

(declare-fun lt!390261 () ListLongMap!9925)

(assert (=> b!863382 (= lt!390272 lt!390261)))

(assert (=> b!863382 (= lt!390261 (+!2275 lt!390269 lt!390258))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!390262 () array!49640)

(declare-fun minValue!654 () V!27377)

(declare-fun zeroValue!654 () V!27377)

(declare-fun getCurrentListMapNoExtraKeys!2953 (array!49638 array!49640 (_ BitVec 32) (_ BitVec 32) V!27377 V!27377 (_ BitVec 32) Int) ListLongMap!9925)

(assert (=> b!863382 (= lt!390272 (getCurrentListMapNoExtraKeys!2953 _keys!868 lt!390262 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863382 (= lt!390258 (tuple2!11143 k!854 v!557))))

(assert (=> b!863382 (= lt!390269 (getCurrentListMapNoExtraKeys!2953 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390260 () Unit!29480)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!522 (array!49638 array!49640 (_ BitVec 32) (_ BitVec 32) V!27377 V!27377 (_ BitVec 32) (_ BitVec 64) V!27377 (_ BitVec 32) Int) Unit!29480)

(assert (=> b!863382 (= lt!390260 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!522 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26720 () Bool)

(assert (=> mapIsEmpty!26720 mapRes!26720))

(declare-fun res!586795 () Bool)

(assert (=> start!73724 (=> (not res!586795) (not e!481023))))

(assert (=> start!73724 (= res!586795 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24287 _keys!868))))))

(assert (=> start!73724 e!481023))

(assert (=> start!73724 tp_is_empty!16747))

(assert (=> start!73724 true))

(assert (=> start!73724 tp!51338))

(declare-fun array_inv!18840 (array!49638) Bool)

(assert (=> start!73724 (array_inv!18840 _keys!868)))

(declare-fun e!481024 () Bool)

(declare-fun array_inv!18841 (array!49640) Bool)

(assert (=> start!73724 (and (array_inv!18841 _values!688) e!481024)))

(declare-fun b!863383 () Bool)

(declare-fun res!586797 () Bool)

(assert (=> b!863383 (=> (not res!586797) (not e!481023))))

(assert (=> b!863383 (= res!586797 (and (= (size!24288 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24287 _keys!868) (size!24288 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863384 () Bool)

(assert (=> b!863384 (= e!481023 e!481025)))

(declare-fun res!586799 () Bool)

(assert (=> b!863384 (=> (not res!586799) (not e!481025))))

(assert (=> b!863384 (= res!586799 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!390273 () ListLongMap!9925)

(assert (=> b!863384 (= lt!390273 (getCurrentListMapNoExtraKeys!2953 _keys!868 lt!390262 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!863384 (= lt!390262 (array!49641 (store (arr!23847 _values!688) i!612 (ValueCellFull!7934 v!557)) (size!24288 _values!688)))))

(declare-fun lt!390270 () ListLongMap!9925)

(assert (=> b!863384 (= lt!390270 (getCurrentListMapNoExtraKeys!2953 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863385 () Bool)

(assert (=> b!863385 (= e!481026 tp_is_empty!16747)))

(declare-fun b!863386 () Bool)

(declare-fun res!586798 () Bool)

(assert (=> b!863386 (=> (not res!586798) (not e!481023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49638 (_ BitVec 32)) Bool)

(assert (=> b!863386 (= res!586798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863387 () Bool)

(declare-fun res!586803 () Bool)

(assert (=> b!863387 (=> (not res!586803) (not e!481023))))

(assert (=> b!863387 (= res!586803 (and (= (select (arr!23846 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!863388 () Bool)

(assert (=> b!863388 (= e!481024 (and e!481027 mapRes!26720))))

(declare-fun condMapEmpty!26720 () Bool)

(declare-fun mapDefault!26720 () ValueCell!7934)


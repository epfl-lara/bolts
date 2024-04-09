; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73742 () Bool)

(assert start!73742)

(declare-fun b_free!14629 () Bool)

(declare-fun b_next!14629 () Bool)

(assert (=> start!73742 (= b_free!14629 (not b_next!14629))))

(declare-fun tp!51391 () Bool)

(declare-fun b_and!24255 () Bool)

(assert (=> start!73742 (= tp!51391 b_and!24255)))

(declare-fun mapIsEmpty!26747 () Bool)

(declare-fun mapRes!26747 () Bool)

(assert (=> mapIsEmpty!26747 mapRes!26747))

(declare-fun b!863826 () Bool)

(declare-fun e!481269 () Bool)

(declare-fun e!481272 () Bool)

(assert (=> b!863826 (= e!481269 (not e!481272))))

(declare-fun res!587098 () Bool)

(assert (=> b!863826 (=> res!587098 e!481272)))

(declare-datatypes ((array!49674 0))(
  ( (array!49675 (arr!23864 (Array (_ BitVec 32) (_ BitVec 64))) (size!24305 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49674)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863826 (= res!587098 (not (validKeyInArray!0 (select (arr!23864 _keys!868) from!1053))))))

(declare-datatypes ((V!27401 0))(
  ( (V!27402 (val!8430 Int)) )
))
(declare-datatypes ((tuple2!11160 0))(
  ( (tuple2!11161 (_1!5590 (_ BitVec 64)) (_2!5590 V!27401)) )
))
(declare-datatypes ((List!17027 0))(
  ( (Nil!17024) (Cons!17023 (h!18154 tuple2!11160) (t!23930 List!17027)) )
))
(declare-datatypes ((ListLongMap!9943 0))(
  ( (ListLongMap!9944 (toList!4987 List!17027)) )
))
(declare-fun lt!390696 () ListLongMap!9943)

(declare-fun lt!390695 () ListLongMap!9943)

(assert (=> b!863826 (= lt!390696 lt!390695)))

(declare-fun lt!390701 () ListLongMap!9943)

(declare-fun lt!390703 () tuple2!11160)

(declare-fun +!2284 (ListLongMap!9943 tuple2!11160) ListLongMap!9943)

(assert (=> b!863826 (= lt!390695 (+!2284 lt!390701 lt!390703))))

(declare-datatypes ((ValueCell!7943 0))(
  ( (ValueCellFull!7943 (v!10851 V!27401)) (EmptyCell!7943) )
))
(declare-datatypes ((array!49676 0))(
  ( (array!49677 (arr!23865 (Array (_ BitVec 32) ValueCell!7943)) (size!24306 (_ BitVec 32))) )
))
(declare-fun lt!390705 () array!49676)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27401)

(declare-fun zeroValue!654 () V!27401)

(declare-fun getCurrentListMapNoExtraKeys!2960 (array!49674 array!49676 (_ BitVec 32) (_ BitVec 32) V!27401 V!27401 (_ BitVec 32) Int) ListLongMap!9943)

(assert (=> b!863826 (= lt!390696 (getCurrentListMapNoExtraKeys!2960 _keys!868 lt!390705 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27401)

(assert (=> b!863826 (= lt!390703 (tuple2!11161 k!854 v!557))))

(declare-fun _values!688 () array!49676)

(assert (=> b!863826 (= lt!390701 (getCurrentListMapNoExtraKeys!2960 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29511 0))(
  ( (Unit!29512) )
))
(declare-fun lt!390690 () Unit!29511)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!529 (array!49674 array!49676 (_ BitVec 32) (_ BitVec 32) V!27401 V!27401 (_ BitVec 32) (_ BitVec 64) V!27401 (_ BitVec 32) Int) Unit!29511)

(assert (=> b!863826 (= lt!390690 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!529 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863827 () Bool)

(declare-fun res!587092 () Bool)

(declare-fun e!481270 () Bool)

(assert (=> b!863827 (=> (not res!587092) (not e!481270))))

(assert (=> b!863827 (= res!587092 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24305 _keys!868))))))

(declare-fun mapNonEmpty!26747 () Bool)

(declare-fun tp!51392 () Bool)

(declare-fun e!481265 () Bool)

(assert (=> mapNonEmpty!26747 (= mapRes!26747 (and tp!51392 e!481265))))

(declare-fun mapValue!26747 () ValueCell!7943)

(declare-fun mapKey!26747 () (_ BitVec 32))

(declare-fun mapRest!26747 () (Array (_ BitVec 32) ValueCell!7943))

(assert (=> mapNonEmpty!26747 (= (arr!23865 _values!688) (store mapRest!26747 mapKey!26747 mapValue!26747))))

(declare-fun b!863828 () Bool)

(declare-fun e!481271 () Bool)

(assert (=> b!863828 (= e!481271 true)))

(declare-fun lt!390699 () tuple2!11160)

(declare-fun lt!390693 () ListLongMap!9943)

(assert (=> b!863828 (= lt!390693 (+!2284 (+!2284 lt!390701 lt!390699) lt!390703))))

(declare-fun lt!390692 () Unit!29511)

(declare-fun lt!390697 () V!27401)

(declare-fun addCommutativeForDiffKeys!496 (ListLongMap!9943 (_ BitVec 64) V!27401 (_ BitVec 64) V!27401) Unit!29511)

(assert (=> b!863828 (= lt!390692 (addCommutativeForDiffKeys!496 lt!390701 k!854 v!557 (select (arr!23864 _keys!868) from!1053) lt!390697))))

(declare-fun b!863829 () Bool)

(declare-fun res!587095 () Bool)

(assert (=> b!863829 (=> (not res!587095) (not e!481270))))

(assert (=> b!863829 (= res!587095 (validKeyInArray!0 k!854))))

(declare-fun b!863830 () Bool)

(declare-fun tp_is_empty!16765 () Bool)

(assert (=> b!863830 (= e!481265 tp_is_empty!16765)))

(declare-fun b!863831 () Bool)

(declare-fun e!481267 () Bool)

(assert (=> b!863831 (= e!481267 tp_is_empty!16765)))

(declare-fun b!863832 () Bool)

(assert (=> b!863832 (= e!481270 e!481269)))

(declare-fun res!587093 () Bool)

(assert (=> b!863832 (=> (not res!587093) (not e!481269))))

(assert (=> b!863832 (= res!587093 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!390691 () ListLongMap!9943)

(assert (=> b!863832 (= lt!390691 (getCurrentListMapNoExtraKeys!2960 _keys!868 lt!390705 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!863832 (= lt!390705 (array!49677 (store (arr!23865 _values!688) i!612 (ValueCellFull!7943 v!557)) (size!24306 _values!688)))))

(declare-fun lt!390700 () ListLongMap!9943)

(assert (=> b!863832 (= lt!390700 (getCurrentListMapNoExtraKeys!2960 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863833 () Bool)

(assert (=> b!863833 (= e!481272 e!481271)))

(declare-fun res!587094 () Bool)

(assert (=> b!863833 (=> res!587094 e!481271)))

(assert (=> b!863833 (= res!587094 (= k!854 (select (arr!23864 _keys!868) from!1053)))))

(assert (=> b!863833 (not (= (select (arr!23864 _keys!868) from!1053) k!854))))

(declare-fun lt!390704 () Unit!29511)

(declare-fun e!481264 () Unit!29511)

(assert (=> b!863833 (= lt!390704 e!481264)))

(declare-fun c!92082 () Bool)

(assert (=> b!863833 (= c!92082 (= (select (arr!23864 _keys!868) from!1053) k!854))))

(assert (=> b!863833 (= lt!390691 lt!390693)))

(assert (=> b!863833 (= lt!390693 (+!2284 lt!390695 lt!390699))))

(assert (=> b!863833 (= lt!390699 (tuple2!11161 (select (arr!23864 _keys!868) from!1053) lt!390697))))

(declare-fun get!12617 (ValueCell!7943 V!27401) V!27401)

(declare-fun dynLambda!1157 (Int (_ BitVec 64)) V!27401)

(assert (=> b!863833 (= lt!390697 (get!12617 (select (arr!23865 _values!688) from!1053) (dynLambda!1157 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863834 () Bool)

(declare-fun Unit!29513 () Unit!29511)

(assert (=> b!863834 (= e!481264 Unit!29513)))

(declare-fun b!863825 () Bool)

(declare-fun res!587096 () Bool)

(assert (=> b!863825 (=> (not res!587096) (not e!481270))))

(assert (=> b!863825 (= res!587096 (and (= (select (arr!23864 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!587091 () Bool)

(assert (=> start!73742 (=> (not res!587091) (not e!481270))))

(assert (=> start!73742 (= res!587091 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24305 _keys!868))))))

(assert (=> start!73742 e!481270))

(assert (=> start!73742 tp_is_empty!16765))

(assert (=> start!73742 true))

(assert (=> start!73742 tp!51391))

(declare-fun array_inv!18852 (array!49674) Bool)

(assert (=> start!73742 (array_inv!18852 _keys!868)))

(declare-fun e!481268 () Bool)

(declare-fun array_inv!18853 (array!49676) Bool)

(assert (=> start!73742 (and (array_inv!18853 _values!688) e!481268)))

(declare-fun b!863835 () Bool)

(declare-fun Unit!29514 () Unit!29511)

(assert (=> b!863835 (= e!481264 Unit!29514)))

(declare-fun lt!390694 () Unit!29511)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49674 (_ BitVec 32) (_ BitVec 32)) Unit!29511)

(assert (=> b!863835 (= lt!390694 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17028 0))(
  ( (Nil!17025) (Cons!17024 (h!18155 (_ BitVec 64)) (t!23931 List!17028)) )
))
(declare-fun arrayNoDuplicates!0 (array!49674 (_ BitVec 32) List!17028) Bool)

(assert (=> b!863835 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17025)))

(declare-fun lt!390702 () Unit!29511)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49674 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29511)

(assert (=> b!863835 (= lt!390702 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863835 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390698 () Unit!29511)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49674 (_ BitVec 64) (_ BitVec 32) List!17028) Unit!29511)

(assert (=> b!863835 (= lt!390698 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17025))))

(assert (=> b!863835 false))

(declare-fun b!863836 () Bool)

(declare-fun res!587090 () Bool)

(assert (=> b!863836 (=> (not res!587090) (not e!481270))))

(assert (=> b!863836 (= res!587090 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17025))))

(declare-fun b!863837 () Bool)

(declare-fun res!587100 () Bool)

(assert (=> b!863837 (=> (not res!587100) (not e!481270))))

(assert (=> b!863837 (= res!587100 (and (= (size!24306 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24305 _keys!868) (size!24306 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863838 () Bool)

(assert (=> b!863838 (= e!481268 (and e!481267 mapRes!26747))))

(declare-fun condMapEmpty!26747 () Bool)

(declare-fun mapDefault!26747 () ValueCell!7943)


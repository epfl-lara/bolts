; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73256 () Bool)

(assert start!73256)

(declare-fun b_free!14143 () Bool)

(declare-fun b_next!14143 () Bool)

(assert (=> start!73256 (= b_free!14143 (not b_next!14143))))

(declare-fun tp!49934 () Bool)

(declare-fun b_and!23463 () Bool)

(assert (=> start!73256 (= tp!49934 b_and!23463)))

(declare-fun mapNonEmpty!26018 () Bool)

(declare-fun mapRes!26018 () Bool)

(declare-fun tp!49933 () Bool)

(declare-fun e!475927 () Bool)

(assert (=> mapNonEmpty!26018 (= mapRes!26018 (and tp!49933 e!475927))))

(declare-fun mapKey!26018 () (_ BitVec 32))

(declare-datatypes ((V!26753 0))(
  ( (V!26754 (val!8187 Int)) )
))
(declare-datatypes ((ValueCell!7700 0))(
  ( (ValueCellFull!7700 (v!10608 V!26753)) (EmptyCell!7700) )
))
(declare-fun mapRest!26018 () (Array (_ BitVec 32) ValueCell!7700))

(declare-fun mapValue!26018 () ValueCell!7700)

(declare-datatypes ((array!48742 0))(
  ( (array!48743 (arr!23398 (Array (_ BitVec 32) ValueCell!7700)) (size!23839 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48742)

(assert (=> mapNonEmpty!26018 (= (arr!23398 _values!688) (store mapRest!26018 mapKey!26018 mapValue!26018))))

(declare-fun b!853365 () Bool)

(declare-fun e!475925 () Bool)

(declare-fun e!475930 () Bool)

(assert (=> b!853365 (= e!475925 e!475930)))

(declare-fun res!579688 () Bool)

(assert (=> b!853365 (=> (not res!579688) (not e!475930))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853365 (= res!579688 (= from!1053 i!612))))

(declare-datatypes ((tuple2!10774 0))(
  ( (tuple2!10775 (_1!5397 (_ BitVec 64)) (_2!5397 V!26753)) )
))
(declare-datatypes ((List!16651 0))(
  ( (Nil!16648) (Cons!16647 (h!17778 tuple2!10774) (t!23248 List!16651)) )
))
(declare-datatypes ((ListLongMap!9557 0))(
  ( (ListLongMap!9558 (toList!4794 List!16651)) )
))
(declare-fun lt!384733 () ListLongMap!9557)

(declare-fun lt!384731 () array!48742)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48744 0))(
  ( (array!48745 (arr!23399 (Array (_ BitVec 32) (_ BitVec 64))) (size!23840 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48744)

(declare-fun minValue!654 () V!26753)

(declare-fun zeroValue!654 () V!26753)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2777 (array!48744 array!48742 (_ BitVec 32) (_ BitVec 32) V!26753 V!26753 (_ BitVec 32) Int) ListLongMap!9557)

(assert (=> b!853365 (= lt!384733 (getCurrentListMapNoExtraKeys!2777 _keys!868 lt!384731 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26753)

(assert (=> b!853365 (= lt!384731 (array!48743 (store (arr!23398 _values!688) i!612 (ValueCellFull!7700 v!557)) (size!23839 _values!688)))))

(declare-fun lt!384736 () ListLongMap!9557)

(assert (=> b!853365 (= lt!384736 (getCurrentListMapNoExtraKeys!2777 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853366 () Bool)

(declare-fun res!579681 () Bool)

(assert (=> b!853366 (=> (not res!579681) (not e!475925))))

(declare-datatypes ((List!16652 0))(
  ( (Nil!16649) (Cons!16648 (h!17779 (_ BitVec 64)) (t!23249 List!16652)) )
))
(declare-fun arrayNoDuplicates!0 (array!48744 (_ BitVec 32) List!16652) Bool)

(assert (=> b!853366 (= res!579681 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16649))))

(declare-fun b!853367 () Bool)

(declare-fun res!579683 () Bool)

(assert (=> b!853367 (=> (not res!579683) (not e!475925))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853367 (= res!579683 (validKeyInArray!0 k!854))))

(declare-fun b!853368 () Bool)

(declare-fun e!475926 () Bool)

(assert (=> b!853368 (= e!475926 true)))

(declare-fun lt!384735 () V!26753)

(declare-fun lt!384729 () ListLongMap!9557)

(declare-fun lt!384732 () tuple2!10774)

(declare-fun +!2133 (ListLongMap!9557 tuple2!10774) ListLongMap!9557)

(assert (=> b!853368 (= (+!2133 lt!384729 lt!384732) (+!2133 (+!2133 lt!384729 (tuple2!10775 k!854 lt!384735)) lt!384732))))

(declare-fun lt!384730 () V!26753)

(assert (=> b!853368 (= lt!384732 (tuple2!10775 k!854 lt!384730))))

(declare-datatypes ((Unit!29112 0))(
  ( (Unit!29113) )
))
(declare-fun lt!384734 () Unit!29112)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!313 (ListLongMap!9557 (_ BitVec 64) V!26753 V!26753) Unit!29112)

(assert (=> b!853368 (= lt!384734 (addSameAsAddTwiceSameKeyDiffValues!313 lt!384729 k!854 lt!384735 lt!384730))))

(declare-fun lt!384738 () V!26753)

(declare-fun get!12359 (ValueCell!7700 V!26753) V!26753)

(assert (=> b!853368 (= lt!384735 (get!12359 (select (arr!23398 _values!688) from!1053) lt!384738))))

(assert (=> b!853368 (= lt!384733 (+!2133 lt!384729 (tuple2!10775 (select (arr!23399 _keys!868) from!1053) lt!384730)))))

(assert (=> b!853368 (= lt!384730 (get!12359 (select (store (arr!23398 _values!688) i!612 (ValueCellFull!7700 v!557)) from!1053) lt!384738))))

(declare-fun dynLambda!1061 (Int (_ BitVec 64)) V!26753)

(assert (=> b!853368 (= lt!384738 (dynLambda!1061 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853368 (= lt!384729 (getCurrentListMapNoExtraKeys!2777 _keys!868 lt!384731 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853369 () Bool)

(declare-fun e!475932 () Bool)

(declare-fun tp_is_empty!16279 () Bool)

(assert (=> b!853369 (= e!475932 tp_is_empty!16279)))

(declare-fun b!853370 () Bool)

(declare-fun res!579689 () Bool)

(assert (=> b!853370 (=> (not res!579689) (not e!475925))))

(assert (=> b!853370 (= res!579689 (and (= (select (arr!23399 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun e!475928 () Bool)

(declare-fun call!38285 () ListLongMap!9557)

(declare-fun b!853371 () Bool)

(declare-fun call!38284 () ListLongMap!9557)

(assert (=> b!853371 (= e!475928 (= call!38284 (+!2133 call!38285 (tuple2!10775 k!854 v!557))))))

(declare-fun mapIsEmpty!26018 () Bool)

(assert (=> mapIsEmpty!26018 mapRes!26018))

(declare-fun b!853372 () Bool)

(declare-fun res!579686 () Bool)

(assert (=> b!853372 (=> (not res!579686) (not e!475925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853372 (= res!579686 (validMask!0 mask!1196))))

(declare-fun bm!38281 () Bool)

(assert (=> bm!38281 (= call!38284 (getCurrentListMapNoExtraKeys!2777 _keys!868 lt!384731 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853373 () Bool)

(assert (=> b!853373 (= e!475927 tp_is_empty!16279)))

(declare-fun b!853374 () Bool)

(declare-fun res!579690 () Bool)

(assert (=> b!853374 (=> (not res!579690) (not e!475925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48744 (_ BitVec 32)) Bool)

(assert (=> b!853374 (= res!579690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853375 () Bool)

(assert (=> b!853375 (= e!475930 (not e!475926))))

(declare-fun res!579684 () Bool)

(assert (=> b!853375 (=> res!579684 e!475926)))

(assert (=> b!853375 (= res!579684 (not (validKeyInArray!0 (select (arr!23399 _keys!868) from!1053))))))

(assert (=> b!853375 e!475928))

(declare-fun c!91803 () Bool)

(assert (=> b!853375 (= c!91803 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384737 () Unit!29112)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!396 (array!48744 array!48742 (_ BitVec 32) (_ BitVec 32) V!26753 V!26753 (_ BitVec 32) (_ BitVec 64) V!26753 (_ BitVec 32) Int) Unit!29112)

(assert (=> b!853375 (= lt!384737 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!396 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853377 () Bool)

(assert (=> b!853377 (= e!475928 (= call!38284 call!38285))))

(declare-fun b!853378 () Bool)

(declare-fun res!579687 () Bool)

(assert (=> b!853378 (=> (not res!579687) (not e!475925))))

(assert (=> b!853378 (= res!579687 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23840 _keys!868))))))

(declare-fun bm!38282 () Bool)

(assert (=> bm!38282 (= call!38285 (getCurrentListMapNoExtraKeys!2777 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853379 () Bool)

(declare-fun e!475929 () Bool)

(assert (=> b!853379 (= e!475929 (and e!475932 mapRes!26018))))

(declare-fun condMapEmpty!26018 () Bool)

(declare-fun mapDefault!26018 () ValueCell!7700)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73226 () Bool)

(assert start!73226)

(declare-fun b_free!14113 () Bool)

(declare-fun b_next!14113 () Bool)

(assert (=> start!73226 (= b_free!14113 (not b_next!14113))))

(declare-fun tp!49844 () Bool)

(declare-fun b_and!23403 () Bool)

(assert (=> start!73226 (= tp!49844 b_and!23403)))

(declare-datatypes ((V!26713 0))(
  ( (V!26714 (val!8172 Int)) )
))
(declare-fun v!557 () V!26713)

(declare-fun e!475570 () Bool)

(declare-fun b!852660 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((tuple2!10748 0))(
  ( (tuple2!10749 (_1!5384 (_ BitVec 64)) (_2!5384 V!26713)) )
))
(declare-datatypes ((List!16629 0))(
  ( (Nil!16626) (Cons!16625 (h!17756 tuple2!10748) (t!23196 List!16629)) )
))
(declare-datatypes ((ListLongMap!9531 0))(
  ( (ListLongMap!9532 (toList!4781 List!16629)) )
))
(declare-fun call!38195 () ListLongMap!9531)

(declare-fun call!38194 () ListLongMap!9531)

(declare-fun +!2121 (ListLongMap!9531 tuple2!10748) ListLongMap!9531)

(assert (=> b!852660 (= e!475570 (= call!38195 (+!2121 call!38194 (tuple2!10749 k!854 v!557))))))

(declare-fun mapIsEmpty!25973 () Bool)

(declare-fun mapRes!25973 () Bool)

(assert (=> mapIsEmpty!25973 mapRes!25973))

(declare-fun b!852661 () Bool)

(declare-fun e!475572 () Bool)

(assert (=> b!852661 (= e!475572 true)))

(declare-fun lt!384288 () tuple2!10748)

(declare-fun lt!384282 () ListLongMap!9531)

(declare-fun lt!384287 () V!26713)

(assert (=> b!852661 (= (+!2121 lt!384282 lt!384288) (+!2121 (+!2121 lt!384282 (tuple2!10749 k!854 lt!384287)) lt!384288))))

(declare-fun lt!384279 () V!26713)

(assert (=> b!852661 (= lt!384288 (tuple2!10749 k!854 lt!384279))))

(declare-datatypes ((Unit!29088 0))(
  ( (Unit!29089) )
))
(declare-fun lt!384280 () Unit!29088)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!301 (ListLongMap!9531 (_ BitVec 64) V!26713 V!26713) Unit!29088)

(assert (=> b!852661 (= lt!384280 (addSameAsAddTwiceSameKeyDiffValues!301 lt!384282 k!854 lt!384287 lt!384279))))

(declare-fun lt!384285 () V!26713)

(declare-datatypes ((ValueCell!7685 0))(
  ( (ValueCellFull!7685 (v!10593 V!26713)) (EmptyCell!7685) )
))
(declare-datatypes ((array!48682 0))(
  ( (array!48683 (arr!23368 (Array (_ BitVec 32) ValueCell!7685)) (size!23809 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48682)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12337 (ValueCell!7685 V!26713) V!26713)

(assert (=> b!852661 (= lt!384287 (get!12337 (select (arr!23368 _values!688) from!1053) lt!384285))))

(declare-fun lt!384286 () ListLongMap!9531)

(declare-datatypes ((array!48684 0))(
  ( (array!48685 (arr!23369 (Array (_ BitVec 32) (_ BitVec 64))) (size!23810 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48684)

(assert (=> b!852661 (= lt!384286 (+!2121 lt!384282 (tuple2!10749 (select (arr!23369 _keys!868) from!1053) lt!384279)))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852661 (= lt!384279 (get!12337 (select (store (arr!23368 _values!688) i!612 (ValueCellFull!7685 v!557)) from!1053) lt!384285))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1049 (Int (_ BitVec 64)) V!26713)

(assert (=> b!852661 (= lt!384285 (dynLambda!1049 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26713)

(declare-fun lt!384281 () array!48682)

(declare-fun zeroValue!654 () V!26713)

(declare-fun getCurrentListMapNoExtraKeys!2764 (array!48684 array!48682 (_ BitVec 32) (_ BitVec 32) V!26713 V!26713 (_ BitVec 32) Int) ListLongMap!9531)

(assert (=> b!852661 (= lt!384282 (getCurrentListMapNoExtraKeys!2764 _keys!868 lt!384281 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852662 () Bool)

(declare-fun e!475565 () Bool)

(declare-fun tp_is_empty!16249 () Bool)

(assert (=> b!852662 (= e!475565 tp_is_empty!16249)))

(declare-fun b!852663 () Bool)

(declare-fun res!579239 () Bool)

(declare-fun e!475571 () Bool)

(assert (=> b!852663 (=> (not res!579239) (not e!475571))))

(assert (=> b!852663 (= res!579239 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23810 _keys!868))))))

(declare-fun b!852664 () Bool)

(declare-fun res!579232 () Bool)

(assert (=> b!852664 (=> (not res!579232) (not e!475571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48684 (_ BitVec 32)) Bool)

(assert (=> b!852664 (= res!579232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852665 () Bool)

(declare-fun e!475566 () Bool)

(assert (=> b!852665 (= e!475571 e!475566)))

(declare-fun res!579233 () Bool)

(assert (=> b!852665 (=> (not res!579233) (not e!475566))))

(assert (=> b!852665 (= res!579233 (= from!1053 i!612))))

(assert (=> b!852665 (= lt!384286 (getCurrentListMapNoExtraKeys!2764 _keys!868 lt!384281 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852665 (= lt!384281 (array!48683 (store (arr!23368 _values!688) i!612 (ValueCellFull!7685 v!557)) (size!23809 _values!688)))))

(declare-fun lt!384284 () ListLongMap!9531)

(assert (=> b!852665 (= lt!384284 (getCurrentListMapNoExtraKeys!2764 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852666 () Bool)

(declare-fun e!475569 () Bool)

(assert (=> b!852666 (= e!475569 (and e!475565 mapRes!25973))))

(declare-fun condMapEmpty!25973 () Bool)

(declare-fun mapDefault!25973 () ValueCell!7685)


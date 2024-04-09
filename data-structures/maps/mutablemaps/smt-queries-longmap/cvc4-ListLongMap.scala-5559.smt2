; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73170 () Bool)

(assert start!73170)

(declare-fun b_free!14057 () Bool)

(declare-fun b_next!14057 () Bool)

(assert (=> start!73170 (= b_free!14057 (not b_next!14057))))

(declare-fun tp!49676 () Bool)

(declare-fun b_and!23291 () Bool)

(assert (=> start!73170 (= tp!49676 b_and!23291)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48574 0))(
  ( (array!48575 (arr!23314 (Array (_ BitVec 32) (_ BitVec 64))) (size!23755 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48574)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!38023 () Bool)

(declare-datatypes ((V!26637 0))(
  ( (V!26638 (val!8144 Int)) )
))
(declare-datatypes ((ValueCell!7657 0))(
  ( (ValueCellFull!7657 (v!10565 V!26637)) (EmptyCell!7657) )
))
(declare-datatypes ((array!48576 0))(
  ( (array!48577 (arr!23315 (Array (_ BitVec 32) ValueCell!7657)) (size!23756 (_ BitVec 32))) )
))
(declare-fun lt!383445 () array!48576)

(declare-datatypes ((tuple2!10698 0))(
  ( (tuple2!10699 (_1!5359 (_ BitVec 64)) (_2!5359 V!26637)) )
))
(declare-datatypes ((List!16585 0))(
  ( (Nil!16582) (Cons!16581 (h!17712 tuple2!10698) (t!23096 List!16585)) )
))
(declare-datatypes ((ListLongMap!9481 0))(
  ( (ListLongMap!9482 (toList!4756 List!16585)) )
))
(declare-fun call!38026 () ListLongMap!9481)

(declare-fun minValue!654 () V!26637)

(declare-fun zeroValue!654 () V!26637)

(declare-fun getCurrentListMapNoExtraKeys!2741 (array!48574 array!48576 (_ BitVec 32) (_ BitVec 32) V!26637 V!26637 (_ BitVec 32) Int) ListLongMap!9481)

(assert (=> bm!38023 (= call!38026 (getCurrentListMapNoExtraKeys!2741 _keys!868 lt!383445 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38027 () ListLongMap!9481)

(declare-fun e!474897 () Bool)

(declare-fun v!557 () V!26637)

(declare-fun b!851344 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2098 (ListLongMap!9481 tuple2!10698) ListLongMap!9481)

(assert (=> b!851344 (= e!474897 (= call!38026 (+!2098 call!38027 (tuple2!10699 k!854 v!557))))))

(declare-fun bm!38024 () Bool)

(declare-fun _values!688 () array!48576)

(assert (=> bm!38024 (= call!38027 (getCurrentListMapNoExtraKeys!2741 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851345 () Bool)

(declare-fun e!474894 () Bool)

(assert (=> b!851345 (= e!474894 true)))

(declare-fun lt!383440 () ListLongMap!9481)

(declare-fun lt!383441 () tuple2!10698)

(declare-fun lt!383448 () V!26637)

(assert (=> b!851345 (= (+!2098 lt!383440 lt!383441) (+!2098 (+!2098 lt!383440 (tuple2!10699 k!854 lt!383448)) lt!383441))))

(declare-fun lt!383444 () V!26637)

(assert (=> b!851345 (= lt!383441 (tuple2!10699 k!854 lt!383444))))

(declare-datatypes ((Unit!29042 0))(
  ( (Unit!29043) )
))
(declare-fun lt!383446 () Unit!29042)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!282 (ListLongMap!9481 (_ BitVec 64) V!26637 V!26637) Unit!29042)

(assert (=> b!851345 (= lt!383446 (addSameAsAddTwiceSameKeyDiffValues!282 lt!383440 k!854 lt!383448 lt!383444))))

(declare-fun lt!383439 () V!26637)

(declare-fun get!12298 (ValueCell!7657 V!26637) V!26637)

(assert (=> b!851345 (= lt!383448 (get!12298 (select (arr!23315 _values!688) from!1053) lt!383439))))

(declare-fun lt!383447 () ListLongMap!9481)

(assert (=> b!851345 (= lt!383447 (+!2098 lt!383440 (tuple2!10699 (select (arr!23314 _keys!868) from!1053) lt!383444)))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851345 (= lt!383444 (get!12298 (select (store (arr!23315 _values!688) i!612 (ValueCellFull!7657 v!557)) from!1053) lt!383439))))

(declare-fun dynLambda!1030 (Int (_ BitVec 64)) V!26637)

(assert (=> b!851345 (= lt!383439 (dynLambda!1030 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851345 (= lt!383440 (getCurrentListMapNoExtraKeys!2741 _keys!868 lt!383445 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25889 () Bool)

(declare-fun mapRes!25889 () Bool)

(assert (=> mapIsEmpty!25889 mapRes!25889))

(declare-fun b!851347 () Bool)

(declare-fun e!474898 () Bool)

(declare-fun tp_is_empty!16193 () Bool)

(assert (=> b!851347 (= e!474898 tp_is_empty!16193)))

(declare-fun b!851348 () Bool)

(declare-fun res!578400 () Bool)

(declare-fun e!474900 () Bool)

(assert (=> b!851348 (=> (not res!578400) (not e!474900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851348 (= res!578400 (validMask!0 mask!1196))))

(declare-fun b!851349 () Bool)

(declare-fun e!474895 () Bool)

(assert (=> b!851349 (= e!474895 (not e!474894))))

(declare-fun res!578392 () Bool)

(assert (=> b!851349 (=> res!578392 e!474894)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851349 (= res!578392 (not (validKeyInArray!0 (select (arr!23314 _keys!868) from!1053))))))

(assert (=> b!851349 e!474897))

(declare-fun c!91674 () Bool)

(assert (=> b!851349 (= c!91674 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383443 () Unit!29042)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!365 (array!48574 array!48576 (_ BitVec 32) (_ BitVec 32) V!26637 V!26637 (_ BitVec 32) (_ BitVec 64) V!26637 (_ BitVec 32) Int) Unit!29042)

(assert (=> b!851349 (= lt!383443 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!365 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851350 () Bool)

(declare-fun res!578398 () Bool)

(assert (=> b!851350 (=> (not res!578398) (not e!474900))))

(assert (=> b!851350 (= res!578398 (and (= (size!23756 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23755 _keys!868) (size!23756 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851351 () Bool)

(declare-fun res!578394 () Bool)

(assert (=> b!851351 (=> (not res!578394) (not e!474900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48574 (_ BitVec 32)) Bool)

(assert (=> b!851351 (= res!578394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851352 () Bool)

(declare-fun res!578397 () Bool)

(assert (=> b!851352 (=> (not res!578397) (not e!474900))))

(assert (=> b!851352 (= res!578397 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23755 _keys!868))))))

(declare-fun b!851353 () Bool)

(assert (=> b!851353 (= e!474897 (= call!38026 call!38027))))

(declare-fun b!851354 () Bool)

(assert (=> b!851354 (= e!474900 e!474895)))

(declare-fun res!578393 () Bool)

(assert (=> b!851354 (=> (not res!578393) (not e!474895))))

(assert (=> b!851354 (= res!578393 (= from!1053 i!612))))

(assert (=> b!851354 (= lt!383447 (getCurrentListMapNoExtraKeys!2741 _keys!868 lt!383445 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851354 (= lt!383445 (array!48577 (store (arr!23315 _values!688) i!612 (ValueCellFull!7657 v!557)) (size!23756 _values!688)))))

(declare-fun lt!383442 () ListLongMap!9481)

(assert (=> b!851354 (= lt!383442 (getCurrentListMapNoExtraKeys!2741 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851355 () Bool)

(declare-fun res!578396 () Bool)

(assert (=> b!851355 (=> (not res!578396) (not e!474900))))

(assert (=> b!851355 (= res!578396 (validKeyInArray!0 k!854))))

(declare-fun b!851356 () Bool)

(declare-fun e!474899 () Bool)

(assert (=> b!851356 (= e!474899 tp_is_empty!16193)))

(declare-fun mapNonEmpty!25889 () Bool)

(declare-fun tp!49675 () Bool)

(assert (=> mapNonEmpty!25889 (= mapRes!25889 (and tp!49675 e!474899))))

(declare-fun mapValue!25889 () ValueCell!7657)

(declare-fun mapRest!25889 () (Array (_ BitVec 32) ValueCell!7657))

(declare-fun mapKey!25889 () (_ BitVec 32))

(assert (=> mapNonEmpty!25889 (= (arr!23315 _values!688) (store mapRest!25889 mapKey!25889 mapValue!25889))))

(declare-fun b!851357 () Bool)

(declare-fun e!474893 () Bool)

(assert (=> b!851357 (= e!474893 (and e!474898 mapRes!25889))))

(declare-fun condMapEmpty!25889 () Bool)

(declare-fun mapDefault!25889 () ValueCell!7657)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73218 () Bool)

(assert start!73218)

(declare-fun b_free!14105 () Bool)

(declare-fun b_next!14105 () Bool)

(assert (=> start!73218 (= b_free!14105 (not b_next!14105))))

(declare-fun tp!49819 () Bool)

(declare-fun b_and!23387 () Bool)

(assert (=> start!73218 (= tp!49819 b_and!23387)))

(declare-fun b!852472 () Bool)

(declare-fun e!475469 () Bool)

(declare-fun tp_is_empty!16241 () Bool)

(assert (=> b!852472 (= e!475469 tp_is_empty!16241)))

(declare-fun b!852473 () Bool)

(declare-fun res!579116 () Bool)

(declare-fun e!475472 () Bool)

(assert (=> b!852473 (=> (not res!579116) (not e!475472))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852473 (= res!579116 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!25961 () Bool)

(declare-fun mapRes!25961 () Bool)

(declare-fun tp!49820 () Bool)

(declare-fun e!475476 () Bool)

(assert (=> mapNonEmpty!25961 (= mapRes!25961 (and tp!49820 e!475476))))

(declare-datatypes ((V!26701 0))(
  ( (V!26702 (val!8168 Int)) )
))
(declare-datatypes ((ValueCell!7681 0))(
  ( (ValueCellFull!7681 (v!10589 V!26701)) (EmptyCell!7681) )
))
(declare-fun mapValue!25961 () ValueCell!7681)

(declare-fun mapKey!25961 () (_ BitVec 32))

(declare-fun mapRest!25961 () (Array (_ BitVec 32) ValueCell!7681))

(declare-datatypes ((array!48668 0))(
  ( (array!48669 (arr!23361 (Array (_ BitVec 32) ValueCell!7681)) (size!23802 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48668)

(assert (=> mapNonEmpty!25961 (= (arr!23361 _values!688) (store mapRest!25961 mapKey!25961 mapValue!25961))))

(declare-fun b!852475 () Bool)

(declare-fun e!475474 () Bool)

(assert (=> b!852475 (= e!475474 true)))

(declare-fun lt!384161 () V!26701)

(declare-datatypes ((tuple2!10740 0))(
  ( (tuple2!10741 (_1!5380 (_ BitVec 64)) (_2!5380 V!26701)) )
))
(declare-datatypes ((List!16624 0))(
  ( (Nil!16621) (Cons!16620 (h!17751 tuple2!10740) (t!23183 List!16624)) )
))
(declare-datatypes ((ListLongMap!9523 0))(
  ( (ListLongMap!9524 (toList!4777 List!16624)) )
))
(declare-fun lt!384165 () ListLongMap!9523)

(declare-fun lt!384159 () tuple2!10740)

(declare-fun +!2117 (ListLongMap!9523 tuple2!10740) ListLongMap!9523)

(assert (=> b!852475 (= (+!2117 lt!384165 lt!384159) (+!2117 (+!2117 lt!384165 (tuple2!10741 k!854 lt!384161)) lt!384159))))

(declare-fun lt!384162 () V!26701)

(assert (=> b!852475 (= lt!384159 (tuple2!10741 k!854 lt!384162))))

(declare-datatypes ((Unit!29082 0))(
  ( (Unit!29083) )
))
(declare-fun lt!384160 () Unit!29082)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!299 (ListLongMap!9523 (_ BitVec 64) V!26701 V!26701) Unit!29082)

(assert (=> b!852475 (= lt!384160 (addSameAsAddTwiceSameKeyDiffValues!299 lt!384165 k!854 lt!384161 lt!384162))))

(declare-fun lt!384168 () V!26701)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12331 (ValueCell!7681 V!26701) V!26701)

(assert (=> b!852475 (= lt!384161 (get!12331 (select (arr!23361 _values!688) from!1053) lt!384168))))

(declare-fun lt!384167 () ListLongMap!9523)

(declare-datatypes ((array!48670 0))(
  ( (array!48671 (arr!23362 (Array (_ BitVec 32) (_ BitVec 64))) (size!23803 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48670)

(assert (=> b!852475 (= lt!384167 (+!2117 lt!384165 (tuple2!10741 (select (arr!23362 _keys!868) from!1053) lt!384162)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun v!557 () V!26701)

(assert (=> b!852475 (= lt!384162 (get!12331 (select (store (arr!23361 _values!688) i!612 (ValueCellFull!7681 v!557)) from!1053) lt!384168))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1047 (Int (_ BitVec 64)) V!26701)

(assert (=> b!852475 (= lt!384168 (dynLambda!1047 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384163 () array!48668)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26701)

(declare-fun zeroValue!654 () V!26701)

(declare-fun getCurrentListMapNoExtraKeys!2761 (array!48670 array!48668 (_ BitVec 32) (_ BitVec 32) V!26701 V!26701 (_ BitVec 32) Int) ListLongMap!9523)

(assert (=> b!852475 (= lt!384165 (getCurrentListMapNoExtraKeys!2761 _keys!868 lt!384163 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852476 () Bool)

(assert (=> b!852476 (= e!475476 tp_is_empty!16241)))

(declare-fun call!38171 () ListLongMap!9523)

(declare-fun e!475471 () Bool)

(declare-fun b!852477 () Bool)

(declare-fun call!38170 () ListLongMap!9523)

(assert (=> b!852477 (= e!475471 (= call!38171 (+!2117 call!38170 (tuple2!10741 k!854 v!557))))))

(declare-fun b!852478 () Bool)

(declare-fun e!475475 () Bool)

(assert (=> b!852478 (= e!475475 (not e!475474))))

(declare-fun res!579113 () Bool)

(assert (=> b!852478 (=> res!579113 e!475474)))

(assert (=> b!852478 (= res!579113 (not (validKeyInArray!0 (select (arr!23362 _keys!868) from!1053))))))

(assert (=> b!852478 e!475471))

(declare-fun c!91746 () Bool)

(assert (=> b!852478 (= c!91746 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384166 () Unit!29082)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!383 (array!48670 array!48668 (_ BitVec 32) (_ BitVec 32) V!26701 V!26701 (_ BitVec 32) (_ BitVec 64) V!26701 (_ BitVec 32) Int) Unit!29082)

(assert (=> b!852478 (= lt!384166 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!383 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852479 () Bool)

(declare-fun res!579117 () Bool)

(assert (=> b!852479 (=> (not res!579117) (not e!475472))))

(assert (=> b!852479 (= res!579117 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23803 _keys!868))))))

(declare-fun b!852480 () Bool)

(declare-fun res!579114 () Bool)

(assert (=> b!852480 (=> (not res!579114) (not e!475472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852480 (= res!579114 (validMask!0 mask!1196))))

(declare-fun b!852481 () Bool)

(declare-fun e!475470 () Bool)

(assert (=> b!852481 (= e!475470 (and e!475469 mapRes!25961))))

(declare-fun condMapEmpty!25961 () Bool)

(declare-fun mapDefault!25961 () ValueCell!7681)


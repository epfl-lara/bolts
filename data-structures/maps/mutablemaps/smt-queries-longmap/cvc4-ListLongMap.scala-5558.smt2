; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73164 () Bool)

(assert start!73164)

(declare-fun b_free!14051 () Bool)

(declare-fun b_next!14051 () Bool)

(assert (=> start!73164 (= b_free!14051 (not b_next!14051))))

(declare-fun tp!49658 () Bool)

(declare-fun b_and!23279 () Bool)

(assert (=> start!73164 (= tp!49658 b_and!23279)))

(declare-fun b!851203 () Bool)

(declare-fun e!474827 () Bool)

(declare-datatypes ((V!26629 0))(
  ( (V!26630 (val!8141 Int)) )
))
(declare-datatypes ((tuple2!10692 0))(
  ( (tuple2!10693 (_1!5356 (_ BitVec 64)) (_2!5356 V!26629)) )
))
(declare-datatypes ((List!16581 0))(
  ( (Nil!16578) (Cons!16577 (h!17708 tuple2!10692) (t!23086 List!16581)) )
))
(declare-datatypes ((ListLongMap!9475 0))(
  ( (ListLongMap!9476 (toList!4753 List!16581)) )
))
(declare-fun call!38009 () ListLongMap!9475)

(declare-fun call!38008 () ListLongMap!9475)

(assert (=> b!851203 (= e!474827 (= call!38009 call!38008))))

(declare-fun b!851204 () Bool)

(declare-fun v!557 () V!26629)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2096 (ListLongMap!9475 tuple2!10692) ListLongMap!9475)

(assert (=> b!851204 (= e!474827 (= call!38009 (+!2096 call!38008 (tuple2!10693 k!854 v!557))))))

(declare-fun b!851205 () Bool)

(declare-fun res!578310 () Bool)

(declare-fun e!474821 () Bool)

(assert (=> b!851205 (=> (not res!578310) (not e!474821))))

(declare-datatypes ((array!48562 0))(
  ( (array!48563 (arr!23308 (Array (_ BitVec 32) (_ BitVec 64))) (size!23749 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48562)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48562 (_ BitVec 32)) Bool)

(assert (=> b!851205 (= res!578310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!38006 () Bool)

(declare-datatypes ((ValueCell!7654 0))(
  ( (ValueCellFull!7654 (v!10562 V!26629)) (EmptyCell!7654) )
))
(declare-datatypes ((array!48564 0))(
  ( (array!48565 (arr!23309 (Array (_ BitVec 32) ValueCell!7654)) (size!23750 (_ BitVec 32))) )
))
(declare-fun lt!383349 () array!48564)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26629)

(declare-fun zeroValue!654 () V!26629)

(declare-fun getCurrentListMapNoExtraKeys!2738 (array!48562 array!48564 (_ BitVec 32) (_ BitVec 32) V!26629 V!26629 (_ BitVec 32) Int) ListLongMap!9475)

(assert (=> bm!38006 (= call!38009 (getCurrentListMapNoExtraKeys!2738 _keys!868 lt!383349 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851206 () Bool)

(declare-fun e!474824 () Bool)

(assert (=> b!851206 (= e!474821 e!474824)))

(declare-fun res!578306 () Bool)

(assert (=> b!851206 (=> (not res!578306) (not e!474824))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851206 (= res!578306 (= from!1053 i!612))))

(declare-fun lt!383350 () ListLongMap!9475)

(assert (=> b!851206 (= lt!383350 (getCurrentListMapNoExtraKeys!2738 _keys!868 lt!383349 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!48564)

(assert (=> b!851206 (= lt!383349 (array!48565 (store (arr!23309 _values!688) i!612 (ValueCellFull!7654 v!557)) (size!23750 _values!688)))))

(declare-fun lt!383351 () ListLongMap!9475)

(assert (=> b!851206 (= lt!383351 (getCurrentListMapNoExtraKeys!2738 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851207 () Bool)

(declare-fun res!578308 () Bool)

(assert (=> b!851207 (=> (not res!578308) (not e!474821))))

(assert (=> b!851207 (= res!578308 (and (= (size!23750 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23749 _keys!868) (size!23750 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851208 () Bool)

(declare-fun res!578307 () Bool)

(assert (=> b!851208 (=> (not res!578307) (not e!474821))))

(assert (=> b!851208 (= res!578307 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23749 _keys!868))))))

(declare-fun b!851209 () Bool)

(declare-fun e!474828 () Bool)

(declare-fun tp_is_empty!16187 () Bool)

(assert (=> b!851209 (= e!474828 tp_is_empty!16187)))

(declare-fun b!851210 () Bool)

(declare-fun res!578301 () Bool)

(assert (=> b!851210 (=> (not res!578301) (not e!474821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851210 (= res!578301 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!25880 () Bool)

(declare-fun mapRes!25880 () Bool)

(declare-fun tp!49657 () Bool)

(declare-fun e!474823 () Bool)

(assert (=> mapNonEmpty!25880 (= mapRes!25880 (and tp!49657 e!474823))))

(declare-fun mapRest!25880 () (Array (_ BitVec 32) ValueCell!7654))

(declare-fun mapKey!25880 () (_ BitVec 32))

(declare-fun mapValue!25880 () ValueCell!7654)

(assert (=> mapNonEmpty!25880 (= (arr!23309 _values!688) (store mapRest!25880 mapKey!25880 mapValue!25880))))

(declare-fun b!851211 () Bool)

(declare-fun res!578302 () Bool)

(assert (=> b!851211 (=> (not res!578302) (not e!474821))))

(assert (=> b!851211 (= res!578302 (and (= (select (arr!23308 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!851212 () Bool)

(declare-fun e!474822 () Bool)

(assert (=> b!851212 (= e!474822 true)))

(declare-fun lt!383353 () tuple2!10692)

(declare-fun lt!383357 () ListLongMap!9475)

(declare-fun lt!383355 () V!26629)

(assert (=> b!851212 (= (+!2096 lt!383357 lt!383353) (+!2096 (+!2096 lt!383357 (tuple2!10693 k!854 lt!383355)) lt!383353))))

(declare-fun lt!383352 () V!26629)

(assert (=> b!851212 (= lt!383353 (tuple2!10693 k!854 lt!383352))))

(declare-datatypes ((Unit!29036 0))(
  ( (Unit!29037) )
))
(declare-fun lt!383354 () Unit!29036)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!280 (ListLongMap!9475 (_ BitVec 64) V!26629 V!26629) Unit!29036)

(assert (=> b!851212 (= lt!383354 (addSameAsAddTwiceSameKeyDiffValues!280 lt!383357 k!854 lt!383355 lt!383352))))

(declare-fun lt!383358 () V!26629)

(declare-fun get!12294 (ValueCell!7654 V!26629) V!26629)

(assert (=> b!851212 (= lt!383355 (get!12294 (select (arr!23309 _values!688) from!1053) lt!383358))))

(assert (=> b!851212 (= lt!383350 (+!2096 lt!383357 (tuple2!10693 (select (arr!23308 _keys!868) from!1053) lt!383352)))))

(assert (=> b!851212 (= lt!383352 (get!12294 (select (store (arr!23309 _values!688) i!612 (ValueCellFull!7654 v!557)) from!1053) lt!383358))))

(declare-fun dynLambda!1028 (Int (_ BitVec 64)) V!26629)

(assert (=> b!851212 (= lt!383358 (dynLambda!1028 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851212 (= lt!383357 (getCurrentListMapNoExtraKeys!2738 _keys!868 lt!383349 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38005 () Bool)

(assert (=> bm!38005 (= call!38008 (getCurrentListMapNoExtraKeys!2738 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578304 () Bool)

(assert (=> start!73164 (=> (not res!578304) (not e!474821))))

(assert (=> start!73164 (= res!578304 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23749 _keys!868))))))

(assert (=> start!73164 e!474821))

(assert (=> start!73164 tp_is_empty!16187))

(assert (=> start!73164 true))

(assert (=> start!73164 tp!49658))

(declare-fun array_inv!18480 (array!48562) Bool)

(assert (=> start!73164 (array_inv!18480 _keys!868)))

(declare-fun e!474825 () Bool)

(declare-fun array_inv!18481 (array!48564) Bool)

(assert (=> start!73164 (and (array_inv!18481 _values!688) e!474825)))

(declare-fun b!851213 () Bool)

(assert (=> b!851213 (= e!474825 (and e!474828 mapRes!25880))))

(declare-fun condMapEmpty!25880 () Bool)

(declare-fun mapDefault!25880 () ValueCell!7654)


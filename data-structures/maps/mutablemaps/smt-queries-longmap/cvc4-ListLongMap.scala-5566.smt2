; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73212 () Bool)

(assert start!73212)

(declare-fun b_free!14099 () Bool)

(declare-fun b_next!14099 () Bool)

(assert (=> start!73212 (= b_free!14099 (not b_next!14099))))

(declare-fun tp!49801 () Bool)

(declare-fun b_and!23375 () Bool)

(assert (=> start!73212 (= tp!49801 b_and!23375)))

(declare-fun b!852331 () Bool)

(declare-fun e!475403 () Bool)

(assert (=> b!852331 (= e!475403 true)))

(declare-datatypes ((V!26693 0))(
  ( (V!26694 (val!8165 Int)) )
))
(declare-datatypes ((tuple2!10734 0))(
  ( (tuple2!10735 (_1!5377 (_ BitVec 64)) (_2!5377 V!26693)) )
))
(declare-datatypes ((List!16619 0))(
  ( (Nil!16616) (Cons!16615 (h!17746 tuple2!10734) (t!23172 List!16619)) )
))
(declare-datatypes ((ListLongMap!9517 0))(
  ( (ListLongMap!9518 (toList!4774 List!16619)) )
))
(declare-fun lt!384071 () ListLongMap!9517)

(declare-fun lt!384076 () V!26693)

(declare-fun lt!384075 () tuple2!10734)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2115 (ListLongMap!9517 tuple2!10734) ListLongMap!9517)

(assert (=> b!852331 (= (+!2115 lt!384071 lt!384075) (+!2115 (+!2115 lt!384071 (tuple2!10735 k!854 lt!384076)) lt!384075))))

(declare-fun lt!384078 () V!26693)

(assert (=> b!852331 (= lt!384075 (tuple2!10735 k!854 lt!384078))))

(declare-datatypes ((Unit!29076 0))(
  ( (Unit!29077) )
))
(declare-fun lt!384069 () Unit!29076)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!297 (ListLongMap!9517 (_ BitVec 64) V!26693 V!26693) Unit!29076)

(assert (=> b!852331 (= lt!384069 (addSameAsAddTwiceSameKeyDiffValues!297 lt!384071 k!854 lt!384076 lt!384078))))

(declare-fun lt!384070 () V!26693)

(declare-datatypes ((ValueCell!7678 0))(
  ( (ValueCellFull!7678 (v!10586 V!26693)) (EmptyCell!7678) )
))
(declare-datatypes ((array!48656 0))(
  ( (array!48657 (arr!23355 (Array (_ BitVec 32) ValueCell!7678)) (size!23796 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48656)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12327 (ValueCell!7678 V!26693) V!26693)

(assert (=> b!852331 (= lt!384076 (get!12327 (select (arr!23355 _values!688) from!1053) lt!384070))))

(declare-fun lt!384077 () ListLongMap!9517)

(declare-datatypes ((array!48658 0))(
  ( (array!48659 (arr!23356 (Array (_ BitVec 32) (_ BitVec 64))) (size!23797 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48658)

(assert (=> b!852331 (= lt!384077 (+!2115 lt!384071 (tuple2!10735 (select (arr!23356 _keys!868) from!1053) lt!384078)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun v!557 () V!26693)

(assert (=> b!852331 (= lt!384078 (get!12327 (select (store (arr!23355 _values!688) i!612 (ValueCellFull!7678 v!557)) from!1053) lt!384070))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1045 (Int (_ BitVec 64)) V!26693)

(assert (=> b!852331 (= lt!384070 (dynLambda!1045 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384073 () array!48656)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26693)

(declare-fun zeroValue!654 () V!26693)

(declare-fun getCurrentListMapNoExtraKeys!2758 (array!48658 array!48656 (_ BitVec 32) (_ BitVec 32) V!26693 V!26693 (_ BitVec 32) Int) ListLongMap!9517)

(assert (=> b!852331 (= lt!384071 (getCurrentListMapNoExtraKeys!2758 _keys!868 lt!384073 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852333 () Bool)

(declare-fun res!579028 () Bool)

(declare-fun e!475398 () Bool)

(assert (=> b!852333 (=> (not res!579028) (not e!475398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48658 (_ BitVec 32)) Bool)

(assert (=> b!852333 (= res!579028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852334 () Bool)

(declare-fun e!475404 () Bool)

(declare-fun tp_is_empty!16235 () Bool)

(assert (=> b!852334 (= e!475404 tp_is_empty!16235)))

(declare-fun e!475402 () Bool)

(declare-fun b!852335 () Bool)

(declare-fun call!38152 () ListLongMap!9517)

(declare-fun call!38153 () ListLongMap!9517)

(assert (=> b!852335 (= e!475402 (= call!38153 (+!2115 call!38152 (tuple2!10735 k!854 v!557))))))

(declare-fun b!852336 () Bool)

(declare-fun e!475399 () Bool)

(assert (=> b!852336 (= e!475399 tp_is_empty!16235)))

(declare-fun b!852337 () Bool)

(declare-fun e!475400 () Bool)

(assert (=> b!852337 (= e!475400 (not e!475403))))

(declare-fun res!579021 () Bool)

(assert (=> b!852337 (=> res!579021 e!475403)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852337 (= res!579021 (not (validKeyInArray!0 (select (arr!23356 _keys!868) from!1053))))))

(assert (=> b!852337 e!475402))

(declare-fun c!91737 () Bool)

(assert (=> b!852337 (= c!91737 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384072 () Unit!29076)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!380 (array!48658 array!48656 (_ BitVec 32) (_ BitVec 32) V!26693 V!26693 (_ BitVec 32) (_ BitVec 64) V!26693 (_ BitVec 32) Int) Unit!29076)

(assert (=> b!852337 (= lt!384072 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!380 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852338 () Bool)

(declare-fun res!579022 () Bool)

(assert (=> b!852338 (=> (not res!579022) (not e!475398))))

(assert (=> b!852338 (= res!579022 (and (= (size!23796 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23797 _keys!868) (size!23796 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25952 () Bool)

(declare-fun mapRes!25952 () Bool)

(assert (=> mapIsEmpty!25952 mapRes!25952))

(declare-fun mapNonEmpty!25952 () Bool)

(declare-fun tp!49802 () Bool)

(assert (=> mapNonEmpty!25952 (= mapRes!25952 (and tp!49802 e!475399))))

(declare-fun mapRest!25952 () (Array (_ BitVec 32) ValueCell!7678))

(declare-fun mapValue!25952 () ValueCell!7678)

(declare-fun mapKey!25952 () (_ BitVec 32))

(assert (=> mapNonEmpty!25952 (= (arr!23355 _values!688) (store mapRest!25952 mapKey!25952 mapValue!25952))))

(declare-fun b!852339 () Bool)

(assert (=> b!852339 (= e!475398 e!475400)))

(declare-fun res!579023 () Bool)

(assert (=> b!852339 (=> (not res!579023) (not e!475400))))

(assert (=> b!852339 (= res!579023 (= from!1053 i!612))))

(assert (=> b!852339 (= lt!384077 (getCurrentListMapNoExtraKeys!2758 _keys!868 lt!384073 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852339 (= lt!384073 (array!48657 (store (arr!23355 _values!688) i!612 (ValueCellFull!7678 v!557)) (size!23796 _values!688)))))

(declare-fun lt!384074 () ListLongMap!9517)

(assert (=> b!852339 (= lt!384074 (getCurrentListMapNoExtraKeys!2758 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852340 () Bool)

(assert (=> b!852340 (= e!475402 (= call!38153 call!38152))))

(declare-fun b!852341 () Bool)

(declare-fun res!579027 () Bool)

(assert (=> b!852341 (=> (not res!579027) (not e!475398))))

(assert (=> b!852341 (= res!579027 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23797 _keys!868))))))

(declare-fun res!579024 () Bool)

(assert (=> start!73212 (=> (not res!579024) (not e!475398))))

(assert (=> start!73212 (= res!579024 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23797 _keys!868))))))

(assert (=> start!73212 e!475398))

(assert (=> start!73212 tp_is_empty!16235))

(assert (=> start!73212 true))

(assert (=> start!73212 tp!49801))

(declare-fun array_inv!18512 (array!48658) Bool)

(assert (=> start!73212 (array_inv!18512 _keys!868)))

(declare-fun e!475397 () Bool)

(declare-fun array_inv!18513 (array!48656) Bool)

(assert (=> start!73212 (and (array_inv!18513 _values!688) e!475397)))

(declare-fun b!852332 () Bool)

(declare-fun res!579030 () Bool)

(assert (=> b!852332 (=> (not res!579030) (not e!475398))))

(assert (=> b!852332 (= res!579030 (validKeyInArray!0 k!854))))

(declare-fun b!852342 () Bool)

(declare-fun res!579026 () Bool)

(assert (=> b!852342 (=> (not res!579026) (not e!475398))))

(assert (=> b!852342 (= res!579026 (and (= (select (arr!23356 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!852343 () Bool)

(declare-fun res!579029 () Bool)

(assert (=> b!852343 (=> (not res!579029) (not e!475398))))

(declare-datatypes ((List!16620 0))(
  ( (Nil!16617) (Cons!16616 (h!17747 (_ BitVec 64)) (t!23173 List!16620)) )
))
(declare-fun arrayNoDuplicates!0 (array!48658 (_ BitVec 32) List!16620) Bool)

(assert (=> b!852343 (= res!579029 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16617))))

(declare-fun bm!38149 () Bool)

(assert (=> bm!38149 (= call!38153 (getCurrentListMapNoExtraKeys!2758 _keys!868 lt!384073 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852344 () Bool)

(declare-fun res!579025 () Bool)

(assert (=> b!852344 (=> (not res!579025) (not e!475398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852344 (= res!579025 (validMask!0 mask!1196))))

(declare-fun b!852345 () Bool)

(assert (=> b!852345 (= e!475397 (and e!475404 mapRes!25952))))

(declare-fun condMapEmpty!25952 () Bool)

(declare-fun mapDefault!25952 () ValueCell!7678)


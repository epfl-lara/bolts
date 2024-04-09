; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73208 () Bool)

(assert start!73208)

(declare-fun b_free!14095 () Bool)

(declare-fun b_next!14095 () Bool)

(assert (=> start!73208 (= b_free!14095 (not b_next!14095))))

(declare-fun tp!49790 () Bool)

(declare-fun b_and!23367 () Bool)

(assert (=> start!73208 (= tp!49790 b_and!23367)))

(declare-fun res!578963 () Bool)

(declare-fun e!475351 () Bool)

(assert (=> start!73208 (=> (not res!578963) (not e!475351))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48648 0))(
  ( (array!48649 (arr!23351 (Array (_ BitVec 32) (_ BitVec 64))) (size!23792 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48648)

(assert (=> start!73208 (= res!578963 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23792 _keys!868))))))

(assert (=> start!73208 e!475351))

(declare-fun tp_is_empty!16231 () Bool)

(assert (=> start!73208 tp_is_empty!16231))

(assert (=> start!73208 true))

(assert (=> start!73208 tp!49790))

(declare-fun array_inv!18508 (array!48648) Bool)

(assert (=> start!73208 (array_inv!18508 _keys!868)))

(declare-datatypes ((V!26689 0))(
  ( (V!26690 (val!8163 Int)) )
))
(declare-datatypes ((ValueCell!7676 0))(
  ( (ValueCellFull!7676 (v!10584 V!26689)) (EmptyCell!7676) )
))
(declare-datatypes ((array!48650 0))(
  ( (array!48651 (arr!23352 (Array (_ BitVec 32) ValueCell!7676)) (size!23793 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48650)

(declare-fun e!475349 () Bool)

(declare-fun array_inv!18509 (array!48650) Bool)

(assert (=> start!73208 (and (array_inv!18509 _values!688) e!475349)))

(declare-fun mapIsEmpty!25946 () Bool)

(declare-fun mapRes!25946 () Bool)

(assert (=> mapIsEmpty!25946 mapRes!25946))

(declare-fun b!852237 () Bool)

(declare-fun e!475352 () Bool)

(assert (=> b!852237 (= e!475352 tp_is_empty!16231)))

(declare-datatypes ((tuple2!10730 0))(
  ( (tuple2!10731 (_1!5375 (_ BitVec 64)) (_2!5375 V!26689)) )
))
(declare-datatypes ((List!16615 0))(
  ( (Nil!16612) (Cons!16611 (h!17742 tuple2!10730) (t!23164 List!16615)) )
))
(declare-datatypes ((ListLongMap!9513 0))(
  ( (ListLongMap!9514 (toList!4772 List!16615)) )
))
(declare-fun call!38141 () ListLongMap!9513)

(declare-fun v!557 () V!26689)

(declare-fun b!852238 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!38140 () ListLongMap!9513)

(declare-fun e!475356 () Bool)

(declare-fun +!2113 (ListLongMap!9513 tuple2!10730) ListLongMap!9513)

(assert (=> b!852238 (= e!475356 (= call!38141 (+!2113 call!38140 (tuple2!10731 k!854 v!557))))))

(declare-fun b!852239 () Bool)

(declare-fun res!578964 () Bool)

(assert (=> b!852239 (=> (not res!578964) (not e!475351))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48648 (_ BitVec 32)) Bool)

(assert (=> b!852239 (= res!578964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852240 () Bool)

(declare-fun e!475354 () Bool)

(assert (=> b!852240 (= e!475354 true)))

(declare-fun lt!384016 () V!26689)

(declare-fun lt!384009 () ListLongMap!9513)

(declare-fun lt!384012 () tuple2!10730)

(assert (=> b!852240 (= (+!2113 lt!384009 lt!384012) (+!2113 (+!2113 lt!384009 (tuple2!10731 k!854 lt!384016)) lt!384012))))

(declare-fun lt!384010 () V!26689)

(assert (=> b!852240 (= lt!384012 (tuple2!10731 k!854 lt!384010))))

(declare-datatypes ((Unit!29072 0))(
  ( (Unit!29073) )
))
(declare-fun lt!384018 () Unit!29072)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!295 (ListLongMap!9513 (_ BitVec 64) V!26689 V!26689) Unit!29072)

(assert (=> b!852240 (= lt!384018 (addSameAsAddTwiceSameKeyDiffValues!295 lt!384009 k!854 lt!384016 lt!384010))))

(declare-fun lt!384015 () V!26689)

(declare-fun get!12325 (ValueCell!7676 V!26689) V!26689)

(assert (=> b!852240 (= lt!384016 (get!12325 (select (arr!23352 _values!688) from!1053) lt!384015))))

(declare-fun lt!384013 () ListLongMap!9513)

(assert (=> b!852240 (= lt!384013 (+!2113 lt!384009 (tuple2!10731 (select (arr!23351 _keys!868) from!1053) lt!384010)))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852240 (= lt!384010 (get!12325 (select (store (arr!23352 _values!688) i!612 (ValueCellFull!7676 v!557)) from!1053) lt!384015))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1043 (Int (_ BitVec 64)) V!26689)

(assert (=> b!852240 (= lt!384015 (dynLambda!1043 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384011 () array!48650)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26689)

(declare-fun zeroValue!654 () V!26689)

(declare-fun getCurrentListMapNoExtraKeys!2756 (array!48648 array!48650 (_ BitVec 32) (_ BitVec 32) V!26689 V!26689 (_ BitVec 32) Int) ListLongMap!9513)

(assert (=> b!852240 (= lt!384009 (getCurrentListMapNoExtraKeys!2756 _keys!868 lt!384011 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852241 () Bool)

(declare-fun res!578970 () Bool)

(assert (=> b!852241 (=> (not res!578970) (not e!475351))))

(declare-datatypes ((List!16616 0))(
  ( (Nil!16613) (Cons!16612 (h!17743 (_ BitVec 64)) (t!23165 List!16616)) )
))
(declare-fun arrayNoDuplicates!0 (array!48648 (_ BitVec 32) List!16616) Bool)

(assert (=> b!852241 (= res!578970 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16613))))

(declare-fun bm!38137 () Bool)

(assert (=> bm!38137 (= call!38140 (getCurrentListMapNoExtraKeys!2756 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852242 () Bool)

(declare-fun res!578969 () Bool)

(assert (=> b!852242 (=> (not res!578969) (not e!475351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852242 (= res!578969 (validMask!0 mask!1196))))

(declare-fun b!852243 () Bool)

(declare-fun e!475355 () Bool)

(assert (=> b!852243 (= e!475355 tp_is_empty!16231)))

(declare-fun b!852244 () Bool)

(declare-fun res!578965 () Bool)

(assert (=> b!852244 (=> (not res!578965) (not e!475351))))

(assert (=> b!852244 (= res!578965 (and (= (select (arr!23351 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!852245 () Bool)

(declare-fun e!475353 () Bool)

(assert (=> b!852245 (= e!475351 e!475353)))

(declare-fun res!578962 () Bool)

(assert (=> b!852245 (=> (not res!578962) (not e!475353))))

(assert (=> b!852245 (= res!578962 (= from!1053 i!612))))

(assert (=> b!852245 (= lt!384013 (getCurrentListMapNoExtraKeys!2756 _keys!868 lt!384011 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852245 (= lt!384011 (array!48651 (store (arr!23352 _values!688) i!612 (ValueCellFull!7676 v!557)) (size!23793 _values!688)))))

(declare-fun lt!384014 () ListLongMap!9513)

(assert (=> b!852245 (= lt!384014 (getCurrentListMapNoExtraKeys!2756 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852246 () Bool)

(assert (=> b!852246 (= e!475353 (not e!475354))))

(declare-fun res!578966 () Bool)

(assert (=> b!852246 (=> res!578966 e!475354)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852246 (= res!578966 (not (validKeyInArray!0 (select (arr!23351 _keys!868) from!1053))))))

(assert (=> b!852246 e!475356))

(declare-fun c!91731 () Bool)

(assert (=> b!852246 (= c!91731 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384017 () Unit!29072)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!378 (array!48648 array!48650 (_ BitVec 32) (_ BitVec 32) V!26689 V!26689 (_ BitVec 32) (_ BitVec 64) V!26689 (_ BitVec 32) Int) Unit!29072)

(assert (=> b!852246 (= lt!384017 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!378 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852247 () Bool)

(assert (=> b!852247 (= e!475356 (= call!38141 call!38140))))

(declare-fun b!852248 () Bool)

(declare-fun res!578968 () Bool)

(assert (=> b!852248 (=> (not res!578968) (not e!475351))))

(assert (=> b!852248 (= res!578968 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23792 _keys!868))))))

(declare-fun mapNonEmpty!25946 () Bool)

(declare-fun tp!49789 () Bool)

(assert (=> mapNonEmpty!25946 (= mapRes!25946 (and tp!49789 e!475355))))

(declare-fun mapKey!25946 () (_ BitVec 32))

(declare-fun mapRest!25946 () (Array (_ BitVec 32) ValueCell!7676))

(declare-fun mapValue!25946 () ValueCell!7676)

(assert (=> mapNonEmpty!25946 (= (arr!23352 _values!688) (store mapRest!25946 mapKey!25946 mapValue!25946))))

(declare-fun b!852249 () Bool)

(assert (=> b!852249 (= e!475349 (and e!475352 mapRes!25946))))

(declare-fun condMapEmpty!25946 () Bool)

(declare-fun mapDefault!25946 () ValueCell!7676)


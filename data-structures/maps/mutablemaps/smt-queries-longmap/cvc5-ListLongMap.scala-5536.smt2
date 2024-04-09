; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73028 () Bool)

(assert start!73028)

(declare-fun b_free!13915 () Bool)

(declare-fun b_next!13915 () Bool)

(assert (=> start!73028 (= b_free!13915 (not b_next!13915))))

(declare-fun tp!49250 () Bool)

(declare-fun b_and!23019 () Bool)

(assert (=> start!73028 (= tp!49250 b_and!23019)))

(declare-datatypes ((V!26449 0))(
  ( (V!26450 (val!8073 Int)) )
))
(declare-datatypes ((tuple2!10568 0))(
  ( (tuple2!10569 (_1!5294 (_ BitVec 64)) (_2!5294 V!26449)) )
))
(declare-datatypes ((List!16475 0))(
  ( (Nil!16472) (Cons!16471 (h!17602 tuple2!10568) (t!22854 List!16475)) )
))
(declare-datatypes ((ListLongMap!9351 0))(
  ( (ListLongMap!9352 (toList!4691 List!16475)) )
))
(declare-fun call!37600 () ListLongMap!9351)

(declare-fun v!557 () V!26449)

(declare-fun e!473200 () Bool)

(declare-fun call!37601 () ListLongMap!9351)

(declare-fun b!848026 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2043 (ListLongMap!9351 tuple2!10568) ListLongMap!9351)

(assert (=> b!848026 (= e!473200 (= call!37600 (+!2043 call!37601 (tuple2!10569 k!854 v!557))))))

(declare-fun b!848028 () Bool)

(declare-fun res!576271 () Bool)

(declare-fun e!473196 () Bool)

(assert (=> b!848028 (=> (not res!576271) (not e!473196))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48294 0))(
  ( (array!48295 (arr!23174 (Array (_ BitVec 32) (_ BitVec 64))) (size!23615 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48294)

(declare-datatypes ((ValueCell!7586 0))(
  ( (ValueCellFull!7586 (v!10494 V!26449)) (EmptyCell!7586) )
))
(declare-datatypes ((array!48296 0))(
  ( (array!48297 (arr!23175 (Array (_ BitVec 32) ValueCell!7586)) (size!23616 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48296)

(assert (=> b!848028 (= res!576271 (and (= (size!23616 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23615 _keys!868) (size!23616 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848029 () Bool)

(declare-fun e!473197 () Bool)

(assert (=> b!848029 (= e!473196 e!473197)))

(declare-fun res!576275 () Bool)

(assert (=> b!848029 (=> (not res!576275) (not e!473197))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848029 (= res!576275 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!381893 () ListLongMap!9351)

(declare-fun lt!381894 () array!48296)

(declare-fun minValue!654 () V!26449)

(declare-fun zeroValue!654 () V!26449)

(declare-fun getCurrentListMapNoExtraKeys!2680 (array!48294 array!48296 (_ BitVec 32) (_ BitVec 32) V!26449 V!26449 (_ BitVec 32) Int) ListLongMap!9351)

(assert (=> b!848029 (= lt!381893 (getCurrentListMapNoExtraKeys!2680 _keys!868 lt!381894 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848029 (= lt!381894 (array!48297 (store (arr!23175 _values!688) i!612 (ValueCellFull!7586 v!557)) (size!23616 _values!688)))))

(declare-fun lt!381891 () ListLongMap!9351)

(assert (=> b!848029 (= lt!381891 (getCurrentListMapNoExtraKeys!2680 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun c!91461 () Bool)

(declare-fun bm!37597 () Bool)

(assert (=> bm!37597 (= call!37600 (getCurrentListMapNoExtraKeys!2680 _keys!868 (ite c!91461 lt!381894 _values!688) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848030 () Bool)

(declare-fun e!473202 () Bool)

(declare-fun tp_is_empty!16051 () Bool)

(assert (=> b!848030 (= e!473202 tp_is_empty!16051)))

(declare-fun b!848031 () Bool)

(declare-fun res!576274 () Bool)

(assert (=> b!848031 (=> (not res!576274) (not e!473196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848031 (= res!576274 (validMask!0 mask!1196))))

(declare-fun b!848032 () Bool)

(declare-fun res!576272 () Bool)

(assert (=> b!848032 (=> (not res!576272) (not e!473196))))

(declare-datatypes ((List!16476 0))(
  ( (Nil!16473) (Cons!16472 (h!17603 (_ BitVec 64)) (t!22855 List!16476)) )
))
(declare-fun arrayNoDuplicates!0 (array!48294 (_ BitVec 32) List!16476) Bool)

(assert (=> b!848032 (= res!576272 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16473))))

(declare-fun mapIsEmpty!25676 () Bool)

(declare-fun mapRes!25676 () Bool)

(assert (=> mapIsEmpty!25676 mapRes!25676))

(declare-fun b!848033 () Bool)

(assert (=> b!848033 (= e!473197 (not true))))

(assert (=> b!848033 e!473200))

(assert (=> b!848033 (= c!91461 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28944 0))(
  ( (Unit!28945) )
))
(declare-fun lt!381892 () Unit!28944)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!321 (array!48294 array!48296 (_ BitVec 32) (_ BitVec 32) V!26449 V!26449 (_ BitVec 32) (_ BitVec 64) V!26449 (_ BitVec 32) Int) Unit!28944)

(assert (=> b!848033 (= lt!381892 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!321 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848034 () Bool)

(declare-fun e!473198 () Bool)

(assert (=> b!848034 (= e!473198 tp_is_empty!16051)))

(declare-fun b!848035 () Bool)

(declare-fun res!576276 () Bool)

(assert (=> b!848035 (=> (not res!576276) (not e!473196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848035 (= res!576276 (validKeyInArray!0 k!854))))

(declare-fun b!848027 () Bool)

(declare-fun res!576268 () Bool)

(assert (=> b!848027 (=> (not res!576268) (not e!473196))))

(assert (=> b!848027 (= res!576268 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23615 _keys!868))))))

(declare-fun res!576269 () Bool)

(assert (=> start!73028 (=> (not res!576269) (not e!473196))))

(assert (=> start!73028 (= res!576269 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23615 _keys!868))))))

(assert (=> start!73028 e!473196))

(assert (=> start!73028 tp_is_empty!16051))

(assert (=> start!73028 true))

(assert (=> start!73028 tp!49250))

(declare-fun array_inv!18380 (array!48294) Bool)

(assert (=> start!73028 (array_inv!18380 _keys!868)))

(declare-fun e!473199 () Bool)

(declare-fun array_inv!18381 (array!48296) Bool)

(assert (=> start!73028 (and (array_inv!18381 _values!688) e!473199)))

(declare-fun bm!37598 () Bool)

(assert (=> bm!37598 (= call!37601 (getCurrentListMapNoExtraKeys!2680 _keys!868 (ite c!91461 _values!688 lt!381894) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848036 () Bool)

(assert (=> b!848036 (= e!473199 (and e!473198 mapRes!25676))))

(declare-fun condMapEmpty!25676 () Bool)

(declare-fun mapDefault!25676 () ValueCell!7586)


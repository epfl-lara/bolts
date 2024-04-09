; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72996 () Bool)

(assert start!72996)

(declare-fun b_free!13883 () Bool)

(declare-fun b_next!13883 () Bool)

(assert (=> start!72996 (= b_free!13883 (not b_next!13883))))

(declare-fun tp!49154 () Bool)

(declare-fun b_and!22987 () Bool)

(assert (=> start!72996 (= tp!49154 b_and!22987)))

(declare-datatypes ((V!26405 0))(
  ( (V!26406 (val!8057 Int)) )
))
(declare-datatypes ((ValueCell!7570 0))(
  ( (ValueCellFull!7570 (v!10478 V!26405)) (EmptyCell!7570) )
))
(declare-datatypes ((array!48232 0))(
  ( (array!48233 (arr!23143 (Array (_ BitVec 32) ValueCell!7570)) (size!23584 (_ BitVec 32))) )
))
(declare-fun lt!381701 () array!48232)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37501 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26405)

(declare-fun zeroValue!654 () V!26405)

(declare-datatypes ((array!48234 0))(
  ( (array!48235 (arr!23144 (Array (_ BitVec 32) (_ BitVec 64))) (size!23585 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48234)

(declare-datatypes ((tuple2!10538 0))(
  ( (tuple2!10539 (_1!5279 (_ BitVec 64)) (_2!5279 V!26405)) )
))
(declare-datatypes ((List!16452 0))(
  ( (Nil!16449) (Cons!16448 (h!17579 tuple2!10538) (t!22831 List!16452)) )
))
(declare-datatypes ((ListLongMap!9321 0))(
  ( (ListLongMap!9322 (toList!4676 List!16452)) )
))
(declare-fun call!37504 () ListLongMap!9321)

(declare-fun getCurrentListMapNoExtraKeys!2665 (array!48234 array!48232 (_ BitVec 32) (_ BitVec 32) V!26405 V!26405 (_ BitVec 32) Int) ListLongMap!9321)

(assert (=> bm!37501 (= call!37504 (getCurrentListMapNoExtraKeys!2665 _keys!868 lt!381701 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25628 () Bool)

(declare-fun mapRes!25628 () Bool)

(declare-fun tp!49153 () Bool)

(declare-fun e!472860 () Bool)

(assert (=> mapNonEmpty!25628 (= mapRes!25628 (and tp!49153 e!472860))))

(declare-fun mapRest!25628 () (Array (_ BitVec 32) ValueCell!7570))

(declare-fun mapKey!25628 () (_ BitVec 32))

(declare-fun mapValue!25628 () ValueCell!7570)

(declare-fun _values!688 () array!48232)

(assert (=> mapNonEmpty!25628 (= (arr!23143 _values!688) (store mapRest!25628 mapKey!25628 mapValue!25628))))

(declare-fun b!847354 () Bool)

(declare-fun res!575844 () Bool)

(declare-fun e!472864 () Bool)

(assert (=> b!847354 (=> (not res!575844) (not e!472864))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847354 (= res!575844 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25628 () Bool)

(assert (=> mapIsEmpty!25628 mapRes!25628))

(declare-fun call!37505 () ListLongMap!9321)

(declare-fun bm!37502 () Bool)

(assert (=> bm!37502 (= call!37505 (getCurrentListMapNoExtraKeys!2665 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847356 () Bool)

(declare-fun tp_is_empty!16019 () Bool)

(assert (=> b!847356 (= e!472860 tp_is_empty!16019)))

(declare-fun v!557 () V!26405)

(declare-fun e!472862 () Bool)

(declare-fun b!847357 () Bool)

(declare-fun +!2034 (ListLongMap!9321 tuple2!10538) ListLongMap!9321)

(assert (=> b!847357 (= e!472862 (= call!37504 (+!2034 call!37505 (tuple2!10539 k!854 v!557))))))

(declare-fun b!847358 () Bool)

(declare-fun res!575836 () Bool)

(assert (=> b!847358 (=> (not res!575836) (not e!472864))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847358 (= res!575836 (and (= (select (arr!23144 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!847359 () Bool)

(declare-fun e!472866 () Bool)

(assert (=> b!847359 (= e!472864 e!472866)))

(declare-fun res!575843 () Bool)

(assert (=> b!847359 (=> (not res!575843) (not e!472866))))

(assert (=> b!847359 (= res!575843 (= from!1053 i!612))))

(declare-fun lt!381702 () ListLongMap!9321)

(assert (=> b!847359 (= lt!381702 (getCurrentListMapNoExtraKeys!2665 _keys!868 lt!381701 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!847359 (= lt!381701 (array!48233 (store (arr!23143 _values!688) i!612 (ValueCellFull!7570 v!557)) (size!23584 _values!688)))))

(declare-fun lt!381700 () ListLongMap!9321)

(assert (=> b!847359 (= lt!381700 (getCurrentListMapNoExtraKeys!2665 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847360 () Bool)

(declare-fun res!575838 () Bool)

(assert (=> b!847360 (=> (not res!575838) (not e!472864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847360 (= res!575838 (validMask!0 mask!1196))))

(declare-fun b!847361 () Bool)

(assert (=> b!847361 (= e!472866 (not true))))

(assert (=> b!847361 e!472862))

(declare-fun c!91413 () Bool)

(assert (=> b!847361 (= c!91413 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28924 0))(
  ( (Unit!28925) )
))
(declare-fun lt!381699 () Unit!28924)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!311 (array!48234 array!48232 (_ BitVec 32) (_ BitVec 32) V!26405 V!26405 (_ BitVec 32) (_ BitVec 64) V!26405 (_ BitVec 32) Int) Unit!28924)

(assert (=> b!847361 (= lt!381699 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!311 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847362 () Bool)

(assert (=> b!847362 (= e!472862 (= call!37504 call!37505))))

(declare-fun b!847363 () Bool)

(declare-fun res!575841 () Bool)

(assert (=> b!847363 (=> (not res!575841) (not e!472864))))

(assert (=> b!847363 (= res!575841 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23585 _keys!868))))))

(declare-fun b!847355 () Bool)

(declare-fun e!472865 () Bool)

(declare-fun e!472861 () Bool)

(assert (=> b!847355 (= e!472865 (and e!472861 mapRes!25628))))

(declare-fun condMapEmpty!25628 () Bool)

(declare-fun mapDefault!25628 () ValueCell!7570)


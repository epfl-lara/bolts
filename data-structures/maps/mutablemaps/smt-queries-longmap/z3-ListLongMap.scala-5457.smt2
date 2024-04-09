; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72556 () Bool)

(assert start!72556)

(declare-fun b_free!13713 () Bool)

(declare-fun b_next!13713 () Bool)

(assert (=> start!72556 (= b_free!13713 (not b_next!13713))))

(declare-fun tp!48238 () Bool)

(declare-fun b_and!22817 () Bool)

(assert (=> start!72556 (= tp!48238 b_and!22817)))

(declare-fun b!841565 () Bool)

(declare-fun res!572165 () Bool)

(declare-fun e!469481 () Bool)

(assert (=> b!841565 (=> (not res!572165) (not e!469481))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47402 0))(
  ( (array!47403 (arr!22728 (Array (_ BitVec 32) (_ BitVec 64))) (size!23169 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47402)

(declare-datatypes ((V!25819 0))(
  ( (V!25820 (val!7837 Int)) )
))
(declare-datatypes ((ValueCell!7350 0))(
  ( (ValueCellFull!7350 (v!10258 V!25819)) (EmptyCell!7350) )
))
(declare-datatypes ((array!47404 0))(
  ( (array!47405 (arr!22729 (Array (_ BitVec 32) ValueCell!7350)) (size!23170 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47404)

(assert (=> b!841565 (= res!572165 (and (= (size!23170 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23169 _keys!868) (size!23170 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37369 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10422 0))(
  ( (tuple2!10423 (_1!5221 (_ BitVec 64)) (_2!5221 V!25819)) )
))
(declare-datatypes ((List!16245 0))(
  ( (Nil!16242) (Cons!16241 (h!17372 tuple2!10422) (t!22624 List!16245)) )
))
(declare-datatypes ((ListLongMap!9205 0))(
  ( (ListLongMap!9206 (toList!4618 List!16245)) )
))
(declare-fun call!37373 () ListLongMap!9205)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25819)

(declare-fun zeroValue!654 () V!25819)

(declare-fun getCurrentListMapNoExtraKeys!2608 (array!47402 array!47404 (_ BitVec 32) (_ BitVec 32) V!25819 V!25819 (_ BitVec 32) Int) ListLongMap!9205)

(assert (=> bm!37369 (= call!37373 (getCurrentListMapNoExtraKeys!2608 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841566 () Bool)

(declare-fun res!572164 () Bool)

(assert (=> b!841566 (=> (not res!572164) (not e!469481))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841566 (= res!572164 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!24968 () Bool)

(declare-fun mapRes!24968 () Bool)

(assert (=> mapIsEmpty!24968 mapRes!24968))

(declare-fun b!841567 () Bool)

(declare-fun e!469480 () Bool)

(declare-fun tp_is_empty!15579 () Bool)

(assert (=> b!841567 (= e!469480 tp_is_empty!15579)))

(declare-fun b!841568 () Bool)

(declare-fun e!469479 () Bool)

(assert (=> b!841568 (= e!469479 (and e!469480 mapRes!24968))))

(declare-fun condMapEmpty!24968 () Bool)

(declare-fun mapDefault!24968 () ValueCell!7350)

(assert (=> b!841568 (= condMapEmpty!24968 (= (arr!22729 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7350)) mapDefault!24968)))))

(declare-fun b!841569 () Bool)

(declare-fun res!572166 () Bool)

(assert (=> b!841569 (=> (not res!572166) (not e!469481))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841569 (= res!572166 (and (= (select (arr!22728 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23169 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun call!37372 () ListLongMap!9205)

(declare-fun v!557 () V!25819)

(declare-fun bm!37370 () Bool)

(assert (=> bm!37370 (= call!37372 (getCurrentListMapNoExtraKeys!2608 _keys!868 (array!47405 (store (arr!22729 _values!688) i!612 (ValueCellFull!7350 v!557)) (size!23170 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841570 () Bool)

(declare-fun res!572159 () Bool)

(assert (=> b!841570 (=> (not res!572159) (not e!469481))))

(declare-datatypes ((List!16246 0))(
  ( (Nil!16243) (Cons!16242 (h!17373 (_ BitVec 64)) (t!22625 List!16246)) )
))
(declare-fun arrayNoDuplicates!0 (array!47402 (_ BitVec 32) List!16246) Bool)

(assert (=> b!841570 (= res!572159 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16243))))

(declare-fun b!841571 () Bool)

(declare-fun res!572160 () Bool)

(assert (=> b!841571 (=> (not res!572160) (not e!469481))))

(assert (=> b!841571 (= res!572160 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23169 _keys!868))))))

(declare-fun b!841573 () Bool)

(declare-fun res!572161 () Bool)

(assert (=> b!841573 (=> (not res!572161) (not e!469481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841573 (= res!572161 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24968 () Bool)

(declare-fun tp!48239 () Bool)

(declare-fun e!469482 () Bool)

(assert (=> mapNonEmpty!24968 (= mapRes!24968 (and tp!48239 e!469482))))

(declare-fun mapRest!24968 () (Array (_ BitVec 32) ValueCell!7350))

(declare-fun mapKey!24968 () (_ BitVec 32))

(declare-fun mapValue!24968 () ValueCell!7350)

(assert (=> mapNonEmpty!24968 (= (arr!22729 _values!688) (store mapRest!24968 mapKey!24968 mapValue!24968))))

(declare-fun b!841574 () Bool)

(declare-fun e!469477 () Bool)

(declare-fun +!2021 (ListLongMap!9205 tuple2!10422) ListLongMap!9205)

(assert (=> b!841574 (= e!469477 (= call!37372 (+!2021 call!37373 (tuple2!10423 k0!854 v!557))))))

(declare-fun b!841575 () Bool)

(assert (=> b!841575 (= e!469482 tp_is_empty!15579)))

(declare-fun b!841576 () Bool)

(declare-fun res!572162 () Bool)

(assert (=> b!841576 (=> (not res!572162) (not e!469481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47402 (_ BitVec 32)) Bool)

(assert (=> b!841576 (= res!572162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841577 () Bool)

(assert (=> b!841577 (= e!469477 (= call!37372 call!37373))))

(declare-fun res!572163 () Bool)

(assert (=> start!72556 (=> (not res!572163) (not e!469481))))

(assert (=> start!72556 (= res!572163 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23169 _keys!868))))))

(assert (=> start!72556 e!469481))

(assert (=> start!72556 tp_is_empty!15579))

(assert (=> start!72556 true))

(assert (=> start!72556 tp!48238))

(declare-fun array_inv!18070 (array!47402) Bool)

(assert (=> start!72556 (array_inv!18070 _keys!868)))

(declare-fun array_inv!18071 (array!47404) Bool)

(assert (=> start!72556 (and (array_inv!18071 _values!688) e!469479)))

(declare-fun b!841572 () Bool)

(assert (=> b!841572 (= e!469481 (not true))))

(assert (=> b!841572 e!469477))

(declare-fun c!91347 () Bool)

(assert (=> b!841572 (= c!91347 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28898 0))(
  ( (Unit!28899) )
))
(declare-fun lt!380880 () Unit!28898)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!298 (array!47402 array!47404 (_ BitVec 32) (_ BitVec 32) V!25819 V!25819 (_ BitVec 32) (_ BitVec 64) V!25819 (_ BitVec 32) Int) Unit!28898)

(assert (=> b!841572 (= lt!380880 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!298 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72556 res!572163) b!841573))

(assert (= (and b!841573 res!572161) b!841565))

(assert (= (and b!841565 res!572165) b!841576))

(assert (= (and b!841576 res!572162) b!841570))

(assert (= (and b!841570 res!572159) b!841571))

(assert (= (and b!841571 res!572160) b!841566))

(assert (= (and b!841566 res!572164) b!841569))

(assert (= (and b!841569 res!572166) b!841572))

(assert (= (and b!841572 c!91347) b!841574))

(assert (= (and b!841572 (not c!91347)) b!841577))

(assert (= (or b!841574 b!841577) bm!37370))

(assert (= (or b!841574 b!841577) bm!37369))

(assert (= (and b!841568 condMapEmpty!24968) mapIsEmpty!24968))

(assert (= (and b!841568 (not condMapEmpty!24968)) mapNonEmpty!24968))

(get-info :version)

(assert (= (and mapNonEmpty!24968 ((_ is ValueCellFull!7350) mapValue!24968)) b!841575))

(assert (= (and b!841568 ((_ is ValueCellFull!7350) mapDefault!24968)) b!841567))

(assert (= start!72556 b!841568))

(declare-fun m!785023 () Bool)

(assert (=> b!841570 m!785023))

(declare-fun m!785025 () Bool)

(assert (=> b!841576 m!785025))

(declare-fun m!785027 () Bool)

(assert (=> bm!37369 m!785027))

(declare-fun m!785029 () Bool)

(assert (=> b!841574 m!785029))

(declare-fun m!785031 () Bool)

(assert (=> b!841573 m!785031))

(declare-fun m!785033 () Bool)

(assert (=> start!72556 m!785033))

(declare-fun m!785035 () Bool)

(assert (=> start!72556 m!785035))

(declare-fun m!785037 () Bool)

(assert (=> mapNonEmpty!24968 m!785037))

(declare-fun m!785039 () Bool)

(assert (=> b!841566 m!785039))

(declare-fun m!785041 () Bool)

(assert (=> b!841569 m!785041))

(declare-fun m!785043 () Bool)

(assert (=> b!841572 m!785043))

(declare-fun m!785045 () Bool)

(assert (=> bm!37370 m!785045))

(declare-fun m!785047 () Bool)

(assert (=> bm!37370 m!785047))

(check-sat (not bm!37370) (not mapNonEmpty!24968) (not b!841574) (not b!841570) b_and!22817 (not b!841573) (not b_next!13713) tp_is_empty!15579 (not b!841576) (not b!841572) (not bm!37369) (not start!72556) (not b!841566))
(check-sat b_and!22817 (not b_next!13713))

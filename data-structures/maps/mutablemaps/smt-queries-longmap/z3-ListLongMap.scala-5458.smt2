; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72562 () Bool)

(assert start!72562)

(declare-fun b_free!13719 () Bool)

(declare-fun b_next!13719 () Bool)

(assert (=> start!72562 (= b_free!13719 (not b_next!13719))))

(declare-fun tp!48257 () Bool)

(declare-fun b_and!22823 () Bool)

(assert (=> start!72562 (= tp!48257 b_and!22823)))

(declare-fun b!841682 () Bool)

(declare-fun res!572237 () Bool)

(declare-fun e!469533 () Bool)

(assert (=> b!841682 (=> (not res!572237) (not e!469533))))

(declare-datatypes ((array!47414 0))(
  ( (array!47415 (arr!22734 (Array (_ BitVec 32) (_ BitVec 64))) (size!23175 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47414)

(declare-datatypes ((List!16249 0))(
  ( (Nil!16246) (Cons!16245 (h!17376 (_ BitVec 64)) (t!22628 List!16249)) )
))
(declare-fun arrayNoDuplicates!0 (array!47414 (_ BitVec 32) List!16249) Bool)

(assert (=> b!841682 (= res!572237 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16246))))

(declare-fun mapIsEmpty!24977 () Bool)

(declare-fun mapRes!24977 () Bool)

(assert (=> mapIsEmpty!24977 mapRes!24977))

(declare-fun bm!37387 () Bool)

(declare-datatypes ((V!25827 0))(
  ( (V!25828 (val!7840 Int)) )
))
(declare-fun v!557 () V!25827)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25827)

(declare-fun zeroValue!654 () V!25827)

(declare-datatypes ((tuple2!10424 0))(
  ( (tuple2!10425 (_1!5222 (_ BitVec 64)) (_2!5222 V!25827)) )
))
(declare-datatypes ((List!16250 0))(
  ( (Nil!16247) (Cons!16246 (h!17377 tuple2!10424) (t!22629 List!16250)) )
))
(declare-datatypes ((ListLongMap!9207 0))(
  ( (ListLongMap!9208 (toList!4619 List!16250)) )
))
(declare-fun call!37391 () ListLongMap!9207)

(declare-datatypes ((ValueCell!7353 0))(
  ( (ValueCellFull!7353 (v!10261 V!25827)) (EmptyCell!7353) )
))
(declare-datatypes ((array!47416 0))(
  ( (array!47417 (arr!22735 (Array (_ BitVec 32) ValueCell!7353)) (size!23176 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47416)

(declare-fun getCurrentListMapNoExtraKeys!2609 (array!47414 array!47416 (_ BitVec 32) (_ BitVec 32) V!25827 V!25827 (_ BitVec 32) Int) ListLongMap!9207)

(assert (=> bm!37387 (= call!37391 (getCurrentListMapNoExtraKeys!2609 _keys!868 (array!47417 (store (arr!22735 _values!688) i!612 (ValueCellFull!7353 v!557)) (size!23176 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841683 () Bool)

(declare-fun res!572238 () Bool)

(assert (=> b!841683 (=> (not res!572238) (not e!469533))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841683 (= res!572238 (validKeyInArray!0 k0!854))))

(declare-fun call!37390 () ListLongMap!9207)

(declare-fun e!469534 () Bool)

(declare-fun b!841684 () Bool)

(declare-fun +!2022 (ListLongMap!9207 tuple2!10424) ListLongMap!9207)

(assert (=> b!841684 (= e!469534 (= call!37391 (+!2022 call!37390 (tuple2!10425 k0!854 v!557))))))

(declare-fun b!841685 () Bool)

(declare-fun res!572235 () Bool)

(assert (=> b!841685 (=> (not res!572235) (not e!469533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47414 (_ BitVec 32)) Bool)

(assert (=> b!841685 (= res!572235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841686 () Bool)

(declare-fun e!469536 () Bool)

(declare-fun e!469531 () Bool)

(assert (=> b!841686 (= e!469536 (and e!469531 mapRes!24977))))

(declare-fun condMapEmpty!24977 () Bool)

(declare-fun mapDefault!24977 () ValueCell!7353)

(assert (=> b!841686 (= condMapEmpty!24977 (= (arr!22735 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7353)) mapDefault!24977)))))

(declare-fun b!841687 () Bool)

(declare-fun res!572236 () Bool)

(assert (=> b!841687 (=> (not res!572236) (not e!469533))))

(assert (=> b!841687 (= res!572236 (and (= (size!23176 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23175 _keys!868) (size!23176 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841688 () Bool)

(declare-fun res!572234 () Bool)

(assert (=> b!841688 (=> (not res!572234) (not e!469533))))

(assert (=> b!841688 (= res!572234 (and (= (select (arr!22734 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23175 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841690 () Bool)

(assert (=> b!841690 (= e!469533 (not true))))

(assert (=> b!841690 e!469534))

(declare-fun c!91356 () Bool)

(assert (=> b!841690 (= c!91356 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28902 0))(
  ( (Unit!28903) )
))
(declare-fun lt!380889 () Unit!28902)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!300 (array!47414 array!47416 (_ BitVec 32) (_ BitVec 32) V!25827 V!25827 (_ BitVec 32) (_ BitVec 64) V!25827 (_ BitVec 32) Int) Unit!28902)

(assert (=> b!841690 (= lt!380889 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!300 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841691 () Bool)

(declare-fun res!572233 () Bool)

(assert (=> b!841691 (=> (not res!572233) (not e!469533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841691 (= res!572233 (validMask!0 mask!1196))))

(declare-fun bm!37388 () Bool)

(assert (=> bm!37388 (= call!37390 (getCurrentListMapNoExtraKeys!2609 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841692 () Bool)

(declare-fun e!469535 () Bool)

(declare-fun tp_is_empty!15585 () Bool)

(assert (=> b!841692 (= e!469535 tp_is_empty!15585)))

(declare-fun mapNonEmpty!24977 () Bool)

(declare-fun tp!48256 () Bool)

(assert (=> mapNonEmpty!24977 (= mapRes!24977 (and tp!48256 e!469535))))

(declare-fun mapRest!24977 () (Array (_ BitVec 32) ValueCell!7353))

(declare-fun mapKey!24977 () (_ BitVec 32))

(declare-fun mapValue!24977 () ValueCell!7353)

(assert (=> mapNonEmpty!24977 (= (arr!22735 _values!688) (store mapRest!24977 mapKey!24977 mapValue!24977))))

(declare-fun b!841693 () Bool)

(declare-fun res!572231 () Bool)

(assert (=> b!841693 (=> (not res!572231) (not e!469533))))

(assert (=> b!841693 (= res!572231 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23175 _keys!868))))))

(declare-fun b!841694 () Bool)

(assert (=> b!841694 (= e!469531 tp_is_empty!15585)))

(declare-fun b!841689 () Bool)

(assert (=> b!841689 (= e!469534 (= call!37391 call!37390))))

(declare-fun res!572232 () Bool)

(assert (=> start!72562 (=> (not res!572232) (not e!469533))))

(assert (=> start!72562 (= res!572232 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23175 _keys!868))))))

(assert (=> start!72562 e!469533))

(assert (=> start!72562 tp_is_empty!15585))

(assert (=> start!72562 true))

(assert (=> start!72562 tp!48257))

(declare-fun array_inv!18072 (array!47414) Bool)

(assert (=> start!72562 (array_inv!18072 _keys!868)))

(declare-fun array_inv!18073 (array!47416) Bool)

(assert (=> start!72562 (and (array_inv!18073 _values!688) e!469536)))

(assert (= (and start!72562 res!572232) b!841691))

(assert (= (and b!841691 res!572233) b!841687))

(assert (= (and b!841687 res!572236) b!841685))

(assert (= (and b!841685 res!572235) b!841682))

(assert (= (and b!841682 res!572237) b!841693))

(assert (= (and b!841693 res!572231) b!841683))

(assert (= (and b!841683 res!572238) b!841688))

(assert (= (and b!841688 res!572234) b!841690))

(assert (= (and b!841690 c!91356) b!841684))

(assert (= (and b!841690 (not c!91356)) b!841689))

(assert (= (or b!841684 b!841689) bm!37387))

(assert (= (or b!841684 b!841689) bm!37388))

(assert (= (and b!841686 condMapEmpty!24977) mapIsEmpty!24977))

(assert (= (and b!841686 (not condMapEmpty!24977)) mapNonEmpty!24977))

(get-info :version)

(assert (= (and mapNonEmpty!24977 ((_ is ValueCellFull!7353) mapValue!24977)) b!841692))

(assert (= (and b!841686 ((_ is ValueCellFull!7353) mapDefault!24977)) b!841694))

(assert (= start!72562 b!841686))

(declare-fun m!785101 () Bool)

(assert (=> b!841682 m!785101))

(declare-fun m!785103 () Bool)

(assert (=> b!841683 m!785103))

(declare-fun m!785105 () Bool)

(assert (=> b!841691 m!785105))

(declare-fun m!785107 () Bool)

(assert (=> bm!37388 m!785107))

(declare-fun m!785109 () Bool)

(assert (=> bm!37387 m!785109))

(declare-fun m!785111 () Bool)

(assert (=> bm!37387 m!785111))

(declare-fun m!785113 () Bool)

(assert (=> b!841688 m!785113))

(declare-fun m!785115 () Bool)

(assert (=> start!72562 m!785115))

(declare-fun m!785117 () Bool)

(assert (=> start!72562 m!785117))

(declare-fun m!785119 () Bool)

(assert (=> b!841685 m!785119))

(declare-fun m!785121 () Bool)

(assert (=> b!841690 m!785121))

(declare-fun m!785123 () Bool)

(assert (=> mapNonEmpty!24977 m!785123))

(declare-fun m!785125 () Bool)

(assert (=> b!841684 m!785125))

(check-sat tp_is_empty!15585 b_and!22823 (not b!841684) (not b!841691) (not b!841685) (not b_next!13719) (not b!841690) (not mapNonEmpty!24977) (not b!841682) (not start!72562) (not b!841683) (not bm!37387) (not bm!37388))
(check-sat b_and!22823 (not b_next!13719))

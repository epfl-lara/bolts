; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74044 () Bool)

(assert start!74044)

(declare-fun b_free!14931 () Bool)

(declare-fun b_next!14931 () Bool)

(assert (=> start!74044 (= b_free!14931 (not b_next!14931))))

(declare-fun tp!52298 () Bool)

(declare-fun b_and!24701 () Bool)

(assert (=> start!74044 (= tp!52298 b_and!24701)))

(declare-fun b!870261 () Bool)

(declare-fun e!484624 () Bool)

(declare-fun e!484627 () Bool)

(assert (=> b!870261 (= e!484624 e!484627)))

(declare-fun res!591601 () Bool)

(assert (=> b!870261 (=> (not res!591601) (not e!484627))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870261 (= res!591601 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27803 0))(
  ( (V!27804 (val!8581 Int)) )
))
(declare-datatypes ((tuple2!11402 0))(
  ( (tuple2!11403 (_1!5711 (_ BitVec 64)) (_2!5711 V!27803)) )
))
(declare-datatypes ((List!17256 0))(
  ( (Nil!17253) (Cons!17252 (h!18383 tuple2!11402) (t!24301 List!17256)) )
))
(declare-datatypes ((ListLongMap!10185 0))(
  ( (ListLongMap!10186 (toList!5108 List!17256)) )
))
(declare-fun lt!395070 () ListLongMap!10185)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50266 0))(
  ( (array!50267 (arr!24160 (Array (_ BitVec 32) (_ BitVec 64))) (size!24601 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50266)

(declare-fun minValue!654 () V!27803)

(declare-fun zeroValue!654 () V!27803)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8094 0))(
  ( (ValueCellFull!8094 (v!11002 V!27803)) (EmptyCell!8094) )
))
(declare-datatypes ((array!50268 0))(
  ( (array!50269 (arr!24161 (Array (_ BitVec 32) ValueCell!8094)) (size!24602 (_ BitVec 32))) )
))
(declare-fun lt!395072 () array!50268)

(declare-fun getCurrentListMapNoExtraKeys!3072 (array!50266 array!50268 (_ BitVec 32) (_ BitVec 32) V!27803 V!27803 (_ BitVec 32) Int) ListLongMap!10185)

(assert (=> b!870261 (= lt!395070 (getCurrentListMapNoExtraKeys!3072 _keys!868 lt!395072 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27803)

(declare-fun _values!688 () array!50268)

(assert (=> b!870261 (= lt!395072 (array!50269 (store (arr!24161 _values!688) i!612 (ValueCellFull!8094 v!557)) (size!24602 _values!688)))))

(declare-fun lt!395071 () ListLongMap!10185)

(assert (=> b!870261 (= lt!395071 (getCurrentListMapNoExtraKeys!3072 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!591597 () Bool)

(assert (=> start!74044 (=> (not res!591597) (not e!484624))))

(assert (=> start!74044 (= res!591597 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24601 _keys!868))))))

(assert (=> start!74044 e!484624))

(declare-fun tp_is_empty!17067 () Bool)

(assert (=> start!74044 tp_is_empty!17067))

(assert (=> start!74044 true))

(assert (=> start!74044 tp!52298))

(declare-fun array_inv!19054 (array!50266) Bool)

(assert (=> start!74044 (array_inv!19054 _keys!868)))

(declare-fun e!484628 () Bool)

(declare-fun array_inv!19055 (array!50268) Bool)

(assert (=> start!74044 (and (array_inv!19055 _values!688) e!484628)))

(declare-fun mapIsEmpty!27200 () Bool)

(declare-fun mapRes!27200 () Bool)

(assert (=> mapIsEmpty!27200 mapRes!27200))

(declare-fun b!870262 () Bool)

(declare-fun res!591598 () Bool)

(assert (=> b!870262 (=> (not res!591598) (not e!484624))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!870262 (= res!591598 (and (= (select (arr!24160 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870263 () Bool)

(declare-fun e!484626 () Bool)

(assert (=> b!870263 (= e!484626 tp_is_empty!17067)))

(declare-fun b!870264 () Bool)

(declare-fun res!591600 () Bool)

(assert (=> b!870264 (=> (not res!591600) (not e!484624))))

(assert (=> b!870264 (= res!591600 (and (= (size!24602 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24601 _keys!868) (size!24602 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870265 () Bool)

(declare-fun res!591602 () Bool)

(assert (=> b!870265 (=> (not res!591602) (not e!484624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50266 (_ BitVec 32)) Bool)

(assert (=> b!870265 (= res!591602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870266 () Bool)

(declare-fun res!591595 () Bool)

(assert (=> b!870266 (=> (not res!591595) (not e!484624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870266 (= res!591595 (validKeyInArray!0 k0!854))))

(declare-fun b!870267 () Bool)

(declare-fun e!484625 () Bool)

(assert (=> b!870267 (= e!484625 tp_is_empty!17067)))

(declare-fun b!870268 () Bool)

(declare-fun res!591596 () Bool)

(assert (=> b!870268 (=> (not res!591596) (not e!484624))))

(assert (=> b!870268 (= res!591596 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24601 _keys!868))))))

(declare-fun b!870269 () Bool)

(declare-fun res!591599 () Bool)

(assert (=> b!870269 (=> (not res!591599) (not e!484624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870269 (= res!591599 (validMask!0 mask!1196))))

(declare-fun b!870270 () Bool)

(assert (=> b!870270 (= e!484627 (not true))))

(declare-fun +!2389 (ListLongMap!10185 tuple2!11402) ListLongMap!10185)

(assert (=> b!870270 (= (getCurrentListMapNoExtraKeys!3072 _keys!868 lt!395072 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2389 (getCurrentListMapNoExtraKeys!3072 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11403 k0!854 v!557)))))

(declare-datatypes ((Unit!29828 0))(
  ( (Unit!29829) )
))
(declare-fun lt!395073 () Unit!29828)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!620 (array!50266 array!50268 (_ BitVec 32) (_ BitVec 32) V!27803 V!27803 (_ BitVec 32) (_ BitVec 64) V!27803 (_ BitVec 32) Int) Unit!29828)

(assert (=> b!870270 (= lt!395073 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!620 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27200 () Bool)

(declare-fun tp!52297 () Bool)

(assert (=> mapNonEmpty!27200 (= mapRes!27200 (and tp!52297 e!484626))))

(declare-fun mapRest!27200 () (Array (_ BitVec 32) ValueCell!8094))

(declare-fun mapKey!27200 () (_ BitVec 32))

(declare-fun mapValue!27200 () ValueCell!8094)

(assert (=> mapNonEmpty!27200 (= (arr!24161 _values!688) (store mapRest!27200 mapKey!27200 mapValue!27200))))

(declare-fun b!870271 () Bool)

(assert (=> b!870271 (= e!484628 (and e!484625 mapRes!27200))))

(declare-fun condMapEmpty!27200 () Bool)

(declare-fun mapDefault!27200 () ValueCell!8094)

(assert (=> b!870271 (= condMapEmpty!27200 (= (arr!24161 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8094)) mapDefault!27200)))))

(declare-fun b!870272 () Bool)

(declare-fun res!591603 () Bool)

(assert (=> b!870272 (=> (not res!591603) (not e!484624))))

(declare-datatypes ((List!17257 0))(
  ( (Nil!17254) (Cons!17253 (h!18384 (_ BitVec 64)) (t!24302 List!17257)) )
))
(declare-fun arrayNoDuplicates!0 (array!50266 (_ BitVec 32) List!17257) Bool)

(assert (=> b!870272 (= res!591603 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17254))))

(assert (= (and start!74044 res!591597) b!870269))

(assert (= (and b!870269 res!591599) b!870264))

(assert (= (and b!870264 res!591600) b!870265))

(assert (= (and b!870265 res!591602) b!870272))

(assert (= (and b!870272 res!591603) b!870268))

(assert (= (and b!870268 res!591596) b!870266))

(assert (= (and b!870266 res!591595) b!870262))

(assert (= (and b!870262 res!591598) b!870261))

(assert (= (and b!870261 res!591601) b!870270))

(assert (= (and b!870271 condMapEmpty!27200) mapIsEmpty!27200))

(assert (= (and b!870271 (not condMapEmpty!27200)) mapNonEmpty!27200))

(get-info :version)

(assert (= (and mapNonEmpty!27200 ((_ is ValueCellFull!8094) mapValue!27200)) b!870263))

(assert (= (and b!870271 ((_ is ValueCellFull!8094) mapDefault!27200)) b!870267))

(assert (= start!74044 b!870271))

(declare-fun m!811741 () Bool)

(assert (=> b!870272 m!811741))

(declare-fun m!811743 () Bool)

(assert (=> b!870266 m!811743))

(declare-fun m!811745 () Bool)

(assert (=> b!870261 m!811745))

(declare-fun m!811747 () Bool)

(assert (=> b!870261 m!811747))

(declare-fun m!811749 () Bool)

(assert (=> b!870261 m!811749))

(declare-fun m!811751 () Bool)

(assert (=> mapNonEmpty!27200 m!811751))

(declare-fun m!811753 () Bool)

(assert (=> b!870265 m!811753))

(declare-fun m!811755 () Bool)

(assert (=> b!870262 m!811755))

(declare-fun m!811757 () Bool)

(assert (=> b!870269 m!811757))

(declare-fun m!811759 () Bool)

(assert (=> b!870270 m!811759))

(declare-fun m!811761 () Bool)

(assert (=> b!870270 m!811761))

(assert (=> b!870270 m!811761))

(declare-fun m!811763 () Bool)

(assert (=> b!870270 m!811763))

(declare-fun m!811765 () Bool)

(assert (=> b!870270 m!811765))

(declare-fun m!811767 () Bool)

(assert (=> start!74044 m!811767))

(declare-fun m!811769 () Bool)

(assert (=> start!74044 m!811769))

(check-sat (not b_next!14931) (not start!74044) (not b!870272) (not b!870266) (not mapNonEmpty!27200) (not b!870265) b_and!24701 (not b!870261) tp_is_empty!17067 (not b!870270) (not b!870269))
(check-sat b_and!24701 (not b_next!14931))

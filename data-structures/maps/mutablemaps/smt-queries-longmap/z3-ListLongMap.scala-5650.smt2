; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73714 () Bool)

(assert start!73714)

(declare-fun b_free!14601 () Bool)

(declare-fun b_next!14601 () Bool)

(assert (=> start!73714 (= b_free!14601 (not b_next!14601))))

(declare-fun tp!51307 () Bool)

(declare-fun b_and!24199 () Bool)

(assert (=> start!73714 (= tp!51307 b_and!24199)))

(declare-fun res!586632 () Bool)

(declare-fun e!480888 () Bool)

(assert (=> start!73714 (=> (not res!586632) (not e!480888))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49620 0))(
  ( (array!49621 (arr!23837 (Array (_ BitVec 32) (_ BitVec 64))) (size!24278 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49620)

(assert (=> start!73714 (= res!586632 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24278 _keys!868))))))

(assert (=> start!73714 e!480888))

(declare-fun tp_is_empty!16737 () Bool)

(assert (=> start!73714 tp_is_empty!16737))

(assert (=> start!73714 true))

(assert (=> start!73714 tp!51307))

(declare-fun array_inv!18834 (array!49620) Bool)

(assert (=> start!73714 (array_inv!18834 _keys!868)))

(declare-datatypes ((V!27363 0))(
  ( (V!27364 (val!8416 Int)) )
))
(declare-datatypes ((ValueCell!7929 0))(
  ( (ValueCellFull!7929 (v!10837 V!27363)) (EmptyCell!7929) )
))
(declare-datatypes ((array!49622 0))(
  ( (array!49623 (arr!23838 (Array (_ BitVec 32) ValueCell!7929)) (size!24279 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49622)

(declare-fun e!480894 () Bool)

(declare-fun array_inv!18835 (array!49622) Bool)

(assert (=> start!73714 (and (array_inv!18835 _values!688) e!480894)))

(declare-fun b!863125 () Bool)

(declare-fun res!586638 () Bool)

(assert (=> b!863125 (=> (not res!586638) (not e!480888))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!863125 (= res!586638 (and (= (select (arr!23837 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!863126 () Bool)

(declare-fun e!480886 () Bool)

(assert (=> b!863126 (= e!480886 true)))

(declare-datatypes ((tuple2!11136 0))(
  ( (tuple2!11137 (_1!5578 (_ BitVec 64)) (_2!5578 V!27363)) )
))
(declare-datatypes ((List!17004 0))(
  ( (Nil!17001) (Cons!17000 (h!18131 tuple2!11136) (t!23879 List!17004)) )
))
(declare-datatypes ((ListLongMap!9919 0))(
  ( (ListLongMap!9920 (toList!4975 List!17004)) )
))
(declare-fun lt!390018 () ListLongMap!9919)

(declare-fun lt!390022 () tuple2!11136)

(declare-fun lt!390031 () tuple2!11136)

(declare-fun lt!390027 () ListLongMap!9919)

(declare-fun +!2272 (ListLongMap!9919 tuple2!11136) ListLongMap!9919)

(assert (=> b!863126 (= lt!390027 (+!2272 (+!2272 lt!390018 lt!390031) lt!390022))))

(declare-datatypes ((Unit!29466 0))(
  ( (Unit!29467) )
))
(declare-fun lt!390032 () Unit!29466)

(declare-fun v!557 () V!27363)

(declare-fun lt!390028 () V!27363)

(declare-fun addCommutativeForDiffKeys!485 (ListLongMap!9919 (_ BitVec 64) V!27363 (_ BitVec 64) V!27363) Unit!29466)

(assert (=> b!863126 (= lt!390032 (addCommutativeForDiffKeys!485 lt!390018 k0!854 v!557 (select (arr!23837 _keys!868) from!1053) lt!390028))))

(declare-fun b!863127 () Bool)

(declare-fun e!480890 () Bool)

(assert (=> b!863127 (= e!480888 e!480890)))

(declare-fun res!586629 () Bool)

(assert (=> b!863127 (=> (not res!586629) (not e!480890))))

(assert (=> b!863127 (= res!586629 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!390030 () array!49622)

(declare-fun minValue!654 () V!27363)

(declare-fun zeroValue!654 () V!27363)

(declare-fun lt!390026 () ListLongMap!9919)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2950 (array!49620 array!49622 (_ BitVec 32) (_ BitVec 32) V!27363 V!27363 (_ BitVec 32) Int) ListLongMap!9919)

(assert (=> b!863127 (= lt!390026 (getCurrentListMapNoExtraKeys!2950 _keys!868 lt!390030 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!863127 (= lt!390030 (array!49623 (store (arr!23838 _values!688) i!612 (ValueCellFull!7929 v!557)) (size!24279 _values!688)))))

(declare-fun lt!390021 () ListLongMap!9919)

(assert (=> b!863127 (= lt!390021 (getCurrentListMapNoExtraKeys!2950 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863128 () Bool)

(declare-fun res!586631 () Bool)

(assert (=> b!863128 (=> (not res!586631) (not e!480888))))

(assert (=> b!863128 (= res!586631 (and (= (size!24279 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24278 _keys!868) (size!24279 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863129 () Bool)

(declare-fun res!586637 () Bool)

(assert (=> b!863129 (=> (not res!586637) (not e!480888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863129 (= res!586637 (validKeyInArray!0 k0!854))))

(declare-fun b!863130 () Bool)

(declare-fun res!586628 () Bool)

(assert (=> b!863130 (=> (not res!586628) (not e!480888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863130 (= res!586628 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26705 () Bool)

(declare-fun mapRes!26705 () Bool)

(assert (=> mapIsEmpty!26705 mapRes!26705))

(declare-fun b!863131 () Bool)

(declare-fun e!480893 () Bool)

(assert (=> b!863131 (= e!480893 tp_is_empty!16737)))

(declare-fun mapNonEmpty!26705 () Bool)

(declare-fun tp!51308 () Bool)

(declare-fun e!480887 () Bool)

(assert (=> mapNonEmpty!26705 (= mapRes!26705 (and tp!51308 e!480887))))

(declare-fun mapKey!26705 () (_ BitVec 32))

(declare-fun mapValue!26705 () ValueCell!7929)

(declare-fun mapRest!26705 () (Array (_ BitVec 32) ValueCell!7929))

(assert (=> mapNonEmpty!26705 (= (arr!23838 _values!688) (store mapRest!26705 mapKey!26705 mapValue!26705))))

(declare-fun b!863132 () Bool)

(declare-fun e!480891 () Bool)

(assert (=> b!863132 (= e!480891 e!480886)))

(declare-fun res!586633 () Bool)

(assert (=> b!863132 (=> res!586633 e!480886)))

(assert (=> b!863132 (= res!586633 (= k0!854 (select (arr!23837 _keys!868) from!1053)))))

(assert (=> b!863132 (not (= (select (arr!23837 _keys!868) from!1053) k0!854))))

(declare-fun lt!390033 () Unit!29466)

(declare-fun e!480892 () Unit!29466)

(assert (=> b!863132 (= lt!390033 e!480892)))

(declare-fun c!92040 () Bool)

(assert (=> b!863132 (= c!92040 (= (select (arr!23837 _keys!868) from!1053) k0!854))))

(assert (=> b!863132 (= lt!390026 lt!390027)))

(declare-fun lt!390029 () ListLongMap!9919)

(assert (=> b!863132 (= lt!390027 (+!2272 lt!390029 lt!390031))))

(assert (=> b!863132 (= lt!390031 (tuple2!11137 (select (arr!23837 _keys!868) from!1053) lt!390028))))

(declare-fun get!12598 (ValueCell!7929 V!27363) V!27363)

(declare-fun dynLambda!1148 (Int (_ BitVec 64)) V!27363)

(assert (=> b!863132 (= lt!390028 (get!12598 (select (arr!23838 _values!688) from!1053) (dynLambda!1148 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863133 () Bool)

(declare-fun res!586630 () Bool)

(assert (=> b!863133 (=> (not res!586630) (not e!480888))))

(declare-datatypes ((List!17005 0))(
  ( (Nil!17002) (Cons!17001 (h!18132 (_ BitVec 64)) (t!23880 List!17005)) )
))
(declare-fun arrayNoDuplicates!0 (array!49620 (_ BitVec 32) List!17005) Bool)

(assert (=> b!863133 (= res!586630 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17002))))

(declare-fun b!863134 () Bool)

(declare-fun Unit!29468 () Unit!29466)

(assert (=> b!863134 (= e!480892 Unit!29468)))

(declare-fun b!863135 () Bool)

(assert (=> b!863135 (= e!480890 (not e!480891))))

(declare-fun res!586635 () Bool)

(assert (=> b!863135 (=> res!586635 e!480891)))

(assert (=> b!863135 (= res!586635 (not (validKeyInArray!0 (select (arr!23837 _keys!868) from!1053))))))

(declare-fun lt!390020 () ListLongMap!9919)

(assert (=> b!863135 (= lt!390020 lt!390029)))

(assert (=> b!863135 (= lt!390029 (+!2272 lt!390018 lt!390022))))

(assert (=> b!863135 (= lt!390020 (getCurrentListMapNoExtraKeys!2950 _keys!868 lt!390030 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863135 (= lt!390022 (tuple2!11137 k0!854 v!557))))

(assert (=> b!863135 (= lt!390018 (getCurrentListMapNoExtraKeys!2950 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390019 () Unit!29466)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!519 (array!49620 array!49622 (_ BitVec 32) (_ BitVec 32) V!27363 V!27363 (_ BitVec 32) (_ BitVec 64) V!27363 (_ BitVec 32) Int) Unit!29466)

(assert (=> b!863135 (= lt!390019 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!519 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863136 () Bool)

(declare-fun res!586634 () Bool)

(assert (=> b!863136 (=> (not res!586634) (not e!480888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49620 (_ BitVec 32)) Bool)

(assert (=> b!863136 (= res!586634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863137 () Bool)

(assert (=> b!863137 (= e!480887 tp_is_empty!16737)))

(declare-fun b!863138 () Bool)

(declare-fun res!586636 () Bool)

(assert (=> b!863138 (=> (not res!586636) (not e!480888))))

(assert (=> b!863138 (= res!586636 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24278 _keys!868))))))

(declare-fun b!863139 () Bool)

(declare-fun Unit!29469 () Unit!29466)

(assert (=> b!863139 (= e!480892 Unit!29469)))

(declare-fun lt!390023 () Unit!29466)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49620 (_ BitVec 32) (_ BitVec 32)) Unit!29466)

(assert (=> b!863139 (= lt!390023 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!863139 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17002)))

(declare-fun lt!390025 () Unit!29466)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49620 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29466)

(assert (=> b!863139 (= lt!390025 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863139 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390024 () Unit!29466)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49620 (_ BitVec 64) (_ BitVec 32) List!17005) Unit!29466)

(assert (=> b!863139 (= lt!390024 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17002))))

(assert (=> b!863139 false))

(declare-fun b!863140 () Bool)

(assert (=> b!863140 (= e!480894 (and e!480893 mapRes!26705))))

(declare-fun condMapEmpty!26705 () Bool)

(declare-fun mapDefault!26705 () ValueCell!7929)

(assert (=> b!863140 (= condMapEmpty!26705 (= (arr!23838 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7929)) mapDefault!26705)))))

(assert (= (and start!73714 res!586632) b!863130))

(assert (= (and b!863130 res!586628) b!863128))

(assert (= (and b!863128 res!586631) b!863136))

(assert (= (and b!863136 res!586634) b!863133))

(assert (= (and b!863133 res!586630) b!863138))

(assert (= (and b!863138 res!586636) b!863129))

(assert (= (and b!863129 res!586637) b!863125))

(assert (= (and b!863125 res!586638) b!863127))

(assert (= (and b!863127 res!586629) b!863135))

(assert (= (and b!863135 (not res!586635)) b!863132))

(assert (= (and b!863132 c!92040) b!863139))

(assert (= (and b!863132 (not c!92040)) b!863134))

(assert (= (and b!863132 (not res!586633)) b!863126))

(assert (= (and b!863140 condMapEmpty!26705) mapIsEmpty!26705))

(assert (= (and b!863140 (not condMapEmpty!26705)) mapNonEmpty!26705))

(get-info :version)

(assert (= (and mapNonEmpty!26705 ((_ is ValueCellFull!7929) mapValue!26705)) b!863137))

(assert (= (and b!863140 ((_ is ValueCellFull!7929) mapDefault!26705)) b!863131))

(assert (= start!73714 b!863140))

(declare-fun b_lambda!11983 () Bool)

(assert (=> (not b_lambda!11983) (not b!863132)))

(declare-fun t!23878 () Bool)

(declare-fun tb!4731 () Bool)

(assert (=> (and start!73714 (= defaultEntry!696 defaultEntry!696) t!23878) tb!4731))

(declare-fun result!9065 () Bool)

(assert (=> tb!4731 (= result!9065 tp_is_empty!16737)))

(assert (=> b!863132 t!23878))

(declare-fun b_and!24201 () Bool)

(assert (= b_and!24199 (and (=> t!23878 result!9065) b_and!24201)))

(declare-fun m!804383 () Bool)

(assert (=> b!863139 m!804383))

(declare-fun m!804385 () Bool)

(assert (=> b!863139 m!804385))

(declare-fun m!804387 () Bool)

(assert (=> b!863139 m!804387))

(declare-fun m!804389 () Bool)

(assert (=> b!863139 m!804389))

(declare-fun m!804391 () Bool)

(assert (=> b!863139 m!804391))

(declare-fun m!804393 () Bool)

(assert (=> b!863129 m!804393))

(declare-fun m!804395 () Bool)

(assert (=> b!863132 m!804395))

(declare-fun m!804397 () Bool)

(assert (=> b!863132 m!804397))

(declare-fun m!804399 () Bool)

(assert (=> b!863132 m!804399))

(assert (=> b!863132 m!804395))

(declare-fun m!804401 () Bool)

(assert (=> b!863132 m!804401))

(assert (=> b!863132 m!804397))

(declare-fun m!804403 () Bool)

(assert (=> b!863132 m!804403))

(declare-fun m!804405 () Bool)

(assert (=> b!863133 m!804405))

(declare-fun m!804407 () Bool)

(assert (=> b!863127 m!804407))

(declare-fun m!804409 () Bool)

(assert (=> b!863127 m!804409))

(declare-fun m!804411 () Bool)

(assert (=> b!863127 m!804411))

(declare-fun m!804413 () Bool)

(assert (=> start!73714 m!804413))

(declare-fun m!804415 () Bool)

(assert (=> start!73714 m!804415))

(declare-fun m!804417 () Bool)

(assert (=> b!863136 m!804417))

(declare-fun m!804419 () Bool)

(assert (=> b!863130 m!804419))

(declare-fun m!804421 () Bool)

(assert (=> mapNonEmpty!26705 m!804421))

(declare-fun m!804423 () Bool)

(assert (=> b!863125 m!804423))

(declare-fun m!804425 () Bool)

(assert (=> b!863135 m!804425))

(assert (=> b!863135 m!804401))

(declare-fun m!804427 () Bool)

(assert (=> b!863135 m!804427))

(declare-fun m!804429 () Bool)

(assert (=> b!863135 m!804429))

(declare-fun m!804431 () Bool)

(assert (=> b!863135 m!804431))

(assert (=> b!863135 m!804401))

(declare-fun m!804433 () Bool)

(assert (=> b!863135 m!804433))

(declare-fun m!804435 () Bool)

(assert (=> b!863126 m!804435))

(assert (=> b!863126 m!804435))

(declare-fun m!804437 () Bool)

(assert (=> b!863126 m!804437))

(assert (=> b!863126 m!804401))

(assert (=> b!863126 m!804401))

(declare-fun m!804439 () Bool)

(assert (=> b!863126 m!804439))

(check-sat (not b_next!14601) (not b!863130) (not b!863132) (not b!863135) (not b!863126) (not b!863127) (not start!73714) tp_is_empty!16737 (not b_lambda!11983) (not b!863129) (not mapNonEmpty!26705) b_and!24201 (not b!863136) (not b!863133) (not b!863139))
(check-sat b_and!24201 (not b_next!14601))

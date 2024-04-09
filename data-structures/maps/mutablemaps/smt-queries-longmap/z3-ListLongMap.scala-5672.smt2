; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73846 () Bool)

(assert start!73846)

(declare-fun b_free!14733 () Bool)

(declare-fun b_next!14733 () Bool)

(assert (=> start!73846 (= b_free!14733 (not b_next!14733))))

(declare-fun tp!51703 () Bool)

(declare-fun b_and!24463 () Bool)

(assert (=> start!73846 (= tp!51703 b_and!24463)))

(declare-fun b!866425 () Bool)

(declare-datatypes ((Unit!29676 0))(
  ( (Unit!29677) )
))
(declare-fun e!482671 () Unit!29676)

(declare-fun Unit!29678 () Unit!29676)

(assert (=> b!866425 (= e!482671 Unit!29678)))

(declare-fun mapIsEmpty!26903 () Bool)

(declare-fun mapRes!26903 () Bool)

(assert (=> mapIsEmpty!26903 mapRes!26903))

(declare-fun b!866426 () Bool)

(declare-fun res!588815 () Bool)

(declare-fun e!482674 () Bool)

(assert (=> b!866426 (=> (not res!588815) (not e!482674))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49878 0))(
  ( (array!49879 (arr!23966 (Array (_ BitVec 32) (_ BitVec 64))) (size!24407 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49878)

(assert (=> b!866426 (= res!588815 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24407 _keys!868))))))

(declare-fun b!866427 () Bool)

(declare-fun Unit!29679 () Unit!29676)

(assert (=> b!866427 (= e!482671 Unit!29679)))

(declare-fun lt!393189 () Unit!29676)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49878 (_ BitVec 32) (_ BitVec 32)) Unit!29676)

(assert (=> b!866427 (= lt!393189 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17114 0))(
  ( (Nil!17111) (Cons!17110 (h!18241 (_ BitVec 64)) (t!24121 List!17114)) )
))
(declare-fun arrayNoDuplicates!0 (array!49878 (_ BitVec 32) List!17114) Bool)

(assert (=> b!866427 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17111)))

(declare-fun lt!393196 () Unit!29676)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49878 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29676)

(assert (=> b!866427 (= lt!393196 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866427 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393198 () Unit!29676)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49878 (_ BitVec 64) (_ BitVec 32) List!17114) Unit!29676)

(assert (=> b!866427 (= lt!393198 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17111))))

(assert (=> b!866427 false))

(declare-fun b!866428 () Bool)

(declare-fun res!588811 () Bool)

(assert (=> b!866428 (=> (not res!588811) (not e!482674))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27539 0))(
  ( (V!27540 (val!8482 Int)) )
))
(declare-datatypes ((ValueCell!7995 0))(
  ( (ValueCellFull!7995 (v!10903 V!27539)) (EmptyCell!7995) )
))
(declare-datatypes ((array!49880 0))(
  ( (array!49881 (arr!23967 (Array (_ BitVec 32) ValueCell!7995)) (size!24408 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49880)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!866428 (= res!588811 (and (= (size!24408 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24407 _keys!868) (size!24408 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866429 () Bool)

(declare-fun res!588806 () Bool)

(assert (=> b!866429 (=> (not res!588806) (not e!482674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866429 (= res!588806 (validKeyInArray!0 k0!854))))

(declare-fun b!866430 () Bool)

(declare-fun res!588808 () Bool)

(assert (=> b!866430 (=> (not res!588808) (not e!482674))))

(assert (=> b!866430 (= res!588808 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17111))))

(declare-fun b!866431 () Bool)

(declare-fun res!588816 () Bool)

(assert (=> b!866431 (=> (not res!588816) (not e!482674))))

(assert (=> b!866431 (= res!588816 (and (= (select (arr!23966 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!866432 () Bool)

(declare-fun res!588807 () Bool)

(assert (=> b!866432 (=> (not res!588807) (not e!482674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866432 (= res!588807 (validMask!0 mask!1196))))

(declare-fun b!866433 () Bool)

(declare-fun e!482670 () Bool)

(declare-fun e!482675 () Bool)

(assert (=> b!866433 (= e!482670 (and e!482675 mapRes!26903))))

(declare-fun condMapEmpty!26903 () Bool)

(declare-fun mapDefault!26903 () ValueCell!7995)

(assert (=> b!866433 (= condMapEmpty!26903 (= (arr!23967 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7995)) mapDefault!26903)))))

(declare-fun mapNonEmpty!26903 () Bool)

(declare-fun tp!51704 () Bool)

(declare-fun e!482672 () Bool)

(assert (=> mapNonEmpty!26903 (= mapRes!26903 (and tp!51704 e!482672))))

(declare-fun mapValue!26903 () ValueCell!7995)

(declare-fun mapRest!26903 () (Array (_ BitVec 32) ValueCell!7995))

(declare-fun mapKey!26903 () (_ BitVec 32))

(assert (=> mapNonEmpty!26903 (= (arr!23967 _values!688) (store mapRest!26903 mapKey!26903 mapValue!26903))))

(declare-fun res!588814 () Bool)

(assert (=> start!73846 (=> (not res!588814) (not e!482674))))

(assert (=> start!73846 (= res!588814 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24407 _keys!868))))))

(assert (=> start!73846 e!482674))

(declare-fun tp_is_empty!16869 () Bool)

(assert (=> start!73846 tp_is_empty!16869))

(assert (=> start!73846 true))

(assert (=> start!73846 tp!51703))

(declare-fun array_inv!18924 (array!49878) Bool)

(assert (=> start!73846 (array_inv!18924 _keys!868)))

(declare-fun array_inv!18925 (array!49880) Bool)

(assert (=> start!73846 (and (array_inv!18925 _values!688) e!482670)))

(declare-fun b!866434 () Bool)

(declare-fun e!482669 () Bool)

(assert (=> b!866434 (= e!482669 true)))

(declare-datatypes ((tuple2!11250 0))(
  ( (tuple2!11251 (_1!5635 (_ BitVec 64)) (_2!5635 V!27539)) )
))
(declare-datatypes ((List!17115 0))(
  ( (Nil!17112) (Cons!17111 (h!18242 tuple2!11250) (t!24122 List!17115)) )
))
(declare-datatypes ((ListLongMap!10033 0))(
  ( (ListLongMap!10034 (toList!5032 List!17115)) )
))
(declare-fun lt!393194 () ListLongMap!10033)

(declare-fun lt!393187 () ListLongMap!10033)

(declare-fun lt!393193 () tuple2!11250)

(declare-fun lt!393197 () tuple2!11250)

(declare-fun +!2328 (ListLongMap!10033 tuple2!11250) ListLongMap!10033)

(assert (=> b!866434 (= lt!393187 (+!2328 (+!2328 lt!393194 lt!393197) lt!393193))))

(declare-fun v!557 () V!27539)

(declare-fun lt!393200 () Unit!29676)

(declare-fun lt!393201 () V!27539)

(declare-fun addCommutativeForDiffKeys!532 (ListLongMap!10033 (_ BitVec 64) V!27539 (_ BitVec 64) V!27539) Unit!29676)

(assert (=> b!866434 (= lt!393200 (addCommutativeForDiffKeys!532 lt!393194 k0!854 v!557 (select (arr!23966 _keys!868) from!1053) lt!393201))))

(declare-fun b!866435 () Bool)

(declare-fun res!588810 () Bool)

(assert (=> b!866435 (=> (not res!588810) (not e!482674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49878 (_ BitVec 32)) Bool)

(assert (=> b!866435 (= res!588810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866436 () Bool)

(assert (=> b!866436 (= e!482672 tp_is_empty!16869)))

(declare-fun b!866437 () Bool)

(declare-fun e!482676 () Bool)

(declare-fun e!482668 () Bool)

(assert (=> b!866437 (= e!482676 (not e!482668))))

(declare-fun res!588813 () Bool)

(assert (=> b!866437 (=> res!588813 e!482668)))

(assert (=> b!866437 (= res!588813 (not (validKeyInArray!0 (select (arr!23966 _keys!868) from!1053))))))

(declare-fun lt!393195 () ListLongMap!10033)

(declare-fun lt!393199 () ListLongMap!10033)

(assert (=> b!866437 (= lt!393195 lt!393199)))

(assert (=> b!866437 (= lt!393199 (+!2328 lt!393194 lt!393193))))

(declare-fun lt!393188 () array!49880)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27539)

(declare-fun zeroValue!654 () V!27539)

(declare-fun getCurrentListMapNoExtraKeys!2999 (array!49878 array!49880 (_ BitVec 32) (_ BitVec 32) V!27539 V!27539 (_ BitVec 32) Int) ListLongMap!10033)

(assert (=> b!866437 (= lt!393195 (getCurrentListMapNoExtraKeys!2999 _keys!868 lt!393188 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866437 (= lt!393193 (tuple2!11251 k0!854 v!557))))

(assert (=> b!866437 (= lt!393194 (getCurrentListMapNoExtraKeys!2999 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393190 () Unit!29676)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!563 (array!49878 array!49880 (_ BitVec 32) (_ BitVec 32) V!27539 V!27539 (_ BitVec 32) (_ BitVec 64) V!27539 (_ BitVec 32) Int) Unit!29676)

(assert (=> b!866437 (= lt!393190 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!563 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866438 () Bool)

(assert (=> b!866438 (= e!482668 e!482669)))

(declare-fun res!588812 () Bool)

(assert (=> b!866438 (=> res!588812 e!482669)))

(assert (=> b!866438 (= res!588812 (= k0!854 (select (arr!23966 _keys!868) from!1053)))))

(assert (=> b!866438 (not (= (select (arr!23966 _keys!868) from!1053) k0!854))))

(declare-fun lt!393191 () Unit!29676)

(assert (=> b!866438 (= lt!393191 e!482671)))

(declare-fun c!92238 () Bool)

(assert (=> b!866438 (= c!92238 (= (select (arr!23966 _keys!868) from!1053) k0!854))))

(declare-fun lt!393192 () ListLongMap!10033)

(assert (=> b!866438 (= lt!393192 lt!393187)))

(assert (=> b!866438 (= lt!393187 (+!2328 lt!393199 lt!393197))))

(assert (=> b!866438 (= lt!393197 (tuple2!11251 (select (arr!23966 _keys!868) from!1053) lt!393201))))

(declare-fun get!12688 (ValueCell!7995 V!27539) V!27539)

(declare-fun dynLambda!1194 (Int (_ BitVec 64)) V!27539)

(assert (=> b!866438 (= lt!393201 (get!12688 (select (arr!23967 _values!688) from!1053) (dynLambda!1194 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866439 () Bool)

(assert (=> b!866439 (= e!482675 tp_is_empty!16869)))

(declare-fun b!866440 () Bool)

(assert (=> b!866440 (= e!482674 e!482676)))

(declare-fun res!588809 () Bool)

(assert (=> b!866440 (=> (not res!588809) (not e!482676))))

(assert (=> b!866440 (= res!588809 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!866440 (= lt!393192 (getCurrentListMapNoExtraKeys!2999 _keys!868 lt!393188 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!866440 (= lt!393188 (array!49881 (store (arr!23967 _values!688) i!612 (ValueCellFull!7995 v!557)) (size!24408 _values!688)))))

(declare-fun lt!393186 () ListLongMap!10033)

(assert (=> b!866440 (= lt!393186 (getCurrentListMapNoExtraKeys!2999 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73846 res!588814) b!866432))

(assert (= (and b!866432 res!588807) b!866428))

(assert (= (and b!866428 res!588811) b!866435))

(assert (= (and b!866435 res!588810) b!866430))

(assert (= (and b!866430 res!588808) b!866426))

(assert (= (and b!866426 res!588815) b!866429))

(assert (= (and b!866429 res!588806) b!866431))

(assert (= (and b!866431 res!588816) b!866440))

(assert (= (and b!866440 res!588809) b!866437))

(assert (= (and b!866437 (not res!588813)) b!866438))

(assert (= (and b!866438 c!92238) b!866427))

(assert (= (and b!866438 (not c!92238)) b!866425))

(assert (= (and b!866438 (not res!588812)) b!866434))

(assert (= (and b!866433 condMapEmpty!26903) mapIsEmpty!26903))

(assert (= (and b!866433 (not condMapEmpty!26903)) mapNonEmpty!26903))

(get-info :version)

(assert (= (and mapNonEmpty!26903 ((_ is ValueCellFull!7995) mapValue!26903)) b!866436))

(assert (= (and b!866433 ((_ is ValueCellFull!7995) mapDefault!26903)) b!866439))

(assert (= start!73846 b!866433))

(declare-fun b_lambda!12115 () Bool)

(assert (=> (not b_lambda!12115) (not b!866438)))

(declare-fun t!24120 () Bool)

(declare-fun tb!4863 () Bool)

(assert (=> (and start!73846 (= defaultEntry!696 defaultEntry!696) t!24120) tb!4863))

(declare-fun result!9329 () Bool)

(assert (=> tb!4863 (= result!9329 tp_is_empty!16869)))

(assert (=> b!866438 t!24120))

(declare-fun b_and!24465 () Bool)

(assert (= b_and!24463 (and (=> t!24120 result!9329) b_and!24465)))

(declare-fun m!808211 () Bool)

(assert (=> b!866435 m!808211))

(declare-fun m!808213 () Bool)

(assert (=> b!866437 m!808213))

(declare-fun m!808215 () Bool)

(assert (=> b!866437 m!808215))

(declare-fun m!808217 () Bool)

(assert (=> b!866437 m!808217))

(declare-fun m!808219 () Bool)

(assert (=> b!866437 m!808219))

(declare-fun m!808221 () Bool)

(assert (=> b!866437 m!808221))

(assert (=> b!866437 m!808215))

(declare-fun m!808223 () Bool)

(assert (=> b!866437 m!808223))

(declare-fun m!808225 () Bool)

(assert (=> mapNonEmpty!26903 m!808225))

(declare-fun m!808227 () Bool)

(assert (=> b!866427 m!808227))

(declare-fun m!808229 () Bool)

(assert (=> b!866427 m!808229))

(declare-fun m!808231 () Bool)

(assert (=> b!866427 m!808231))

(declare-fun m!808233 () Bool)

(assert (=> b!866427 m!808233))

(declare-fun m!808235 () Bool)

(assert (=> b!866427 m!808235))

(declare-fun m!808237 () Bool)

(assert (=> b!866430 m!808237))

(declare-fun m!808239 () Bool)

(assert (=> b!866432 m!808239))

(declare-fun m!808241 () Bool)

(assert (=> b!866434 m!808241))

(assert (=> b!866434 m!808241))

(declare-fun m!808243 () Bool)

(assert (=> b!866434 m!808243))

(assert (=> b!866434 m!808215))

(assert (=> b!866434 m!808215))

(declare-fun m!808245 () Bool)

(assert (=> b!866434 m!808245))

(declare-fun m!808247 () Bool)

(assert (=> b!866429 m!808247))

(declare-fun m!808249 () Bool)

(assert (=> b!866440 m!808249))

(declare-fun m!808251 () Bool)

(assert (=> b!866440 m!808251))

(declare-fun m!808253 () Bool)

(assert (=> b!866440 m!808253))

(declare-fun m!808255 () Bool)

(assert (=> b!866431 m!808255))

(declare-fun m!808257 () Bool)

(assert (=> b!866438 m!808257))

(declare-fun m!808259 () Bool)

(assert (=> b!866438 m!808259))

(declare-fun m!808261 () Bool)

(assert (=> b!866438 m!808261))

(declare-fun m!808263 () Bool)

(assert (=> b!866438 m!808263))

(assert (=> b!866438 m!808259))

(assert (=> b!866438 m!808215))

(assert (=> b!866438 m!808261))

(declare-fun m!808265 () Bool)

(assert (=> start!73846 m!808265))

(declare-fun m!808267 () Bool)

(assert (=> start!73846 m!808267))

(check-sat (not b!866429) (not b_lambda!12115) (not b!866434) (not b!866435) (not b!866432) (not b!866438) b_and!24465 (not start!73846) (not b!866430) tp_is_empty!16869 (not mapNonEmpty!26903) (not b!866427) (not b!866437) (not b!866440) (not b_next!14733))
(check-sat b_and!24465 (not b_next!14733))

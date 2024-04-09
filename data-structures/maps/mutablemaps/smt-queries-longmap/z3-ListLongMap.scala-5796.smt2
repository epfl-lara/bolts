; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74794 () Bool)

(assert start!74794)

(declare-fun b_free!15369 () Bool)

(declare-fun b_next!15369 () Bool)

(assert (=> start!74794 (= b_free!15369 (not b_next!15369))))

(declare-fun tp!53802 () Bool)

(declare-fun b_and!25407 () Bool)

(assert (=> start!74794 (= tp!53802 b_and!25407)))

(declare-fun mapIsEmpty!28047 () Bool)

(declare-fun mapRes!28047 () Bool)

(assert (=> mapIsEmpty!28047 mapRes!28047))

(declare-fun b!881265 () Bool)

(declare-fun res!598830 () Bool)

(declare-fun e!490473 () Bool)

(assert (=> b!881265 (=> (not res!598830) (not e!490473))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51334 0))(
  ( (array!51335 (arr!24685 (Array (_ BitVec 32) (_ BitVec 64))) (size!25126 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51334)

(declare-datatypes ((V!28531 0))(
  ( (V!28532 (val!8854 Int)) )
))
(declare-datatypes ((ValueCell!8367 0))(
  ( (ValueCellFull!8367 (v!11306 V!28531)) (EmptyCell!8367) )
))
(declare-datatypes ((array!51336 0))(
  ( (array!51337 (arr!24686 (Array (_ BitVec 32) ValueCell!8367)) (size!25127 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51336)

(assert (=> b!881265 (= res!598830 (and (= (size!25127 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25126 _keys!868) (size!25127 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!598832 () Bool)

(assert (=> start!74794 (=> (not res!598832) (not e!490473))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74794 (= res!598832 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25126 _keys!868))))))

(assert (=> start!74794 e!490473))

(declare-fun tp_is_empty!17613 () Bool)

(assert (=> start!74794 tp_is_empty!17613))

(assert (=> start!74794 true))

(assert (=> start!74794 tp!53802))

(declare-fun array_inv!19426 (array!51334) Bool)

(assert (=> start!74794 (array_inv!19426 _keys!868)))

(declare-fun e!490466 () Bool)

(declare-fun array_inv!19427 (array!51336) Bool)

(assert (=> start!74794 (and (array_inv!19427 _values!688) e!490466)))

(declare-fun b!881266 () Bool)

(declare-fun res!598835 () Bool)

(assert (=> b!881266 (=> (not res!598835) (not e!490473))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881266 (= res!598835 (validKeyInArray!0 k0!854))))

(declare-fun b!881267 () Bool)

(declare-fun e!490469 () Bool)

(assert (=> b!881267 (= e!490469 tp_is_empty!17613)))

(declare-fun b!881268 () Bool)

(declare-fun res!598826 () Bool)

(assert (=> b!881268 (=> (not res!598826) (not e!490473))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!881268 (= res!598826 (and (= (select (arr!24685 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!881269 () Bool)

(declare-fun e!490472 () Bool)

(assert (=> b!881269 (= e!490473 e!490472)))

(declare-fun res!598833 () Bool)

(assert (=> b!881269 (=> (not res!598833) (not e!490472))))

(assert (=> b!881269 (= res!598833 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11748 0))(
  ( (tuple2!11749 (_1!5884 (_ BitVec 64)) (_2!5884 V!28531)) )
))
(declare-datatypes ((List!17617 0))(
  ( (Nil!17614) (Cons!17613 (h!18744 tuple2!11748) (t!24796 List!17617)) )
))
(declare-datatypes ((ListLongMap!10531 0))(
  ( (ListLongMap!10532 (toList!5281 List!17617)) )
))
(declare-fun lt!398601 () ListLongMap!10531)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!398594 () array!51336)

(declare-fun minValue!654 () V!28531)

(declare-fun zeroValue!654 () V!28531)

(declare-fun getCurrentListMapNoExtraKeys!3241 (array!51334 array!51336 (_ BitVec 32) (_ BitVec 32) V!28531 V!28531 (_ BitVec 32) Int) ListLongMap!10531)

(assert (=> b!881269 (= lt!398601 (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28531)

(assert (=> b!881269 (= lt!398594 (array!51337 (store (arr!24686 _values!688) i!612 (ValueCellFull!8367 v!557)) (size!25127 _values!688)))))

(declare-fun lt!398595 () ListLongMap!10531)

(assert (=> b!881269 (= lt!398595 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881270 () Bool)

(declare-fun e!490468 () Bool)

(declare-fun e!490471 () Bool)

(assert (=> b!881270 (= e!490468 e!490471)))

(declare-fun res!598828 () Bool)

(assert (=> b!881270 (=> res!598828 e!490471)))

(assert (=> b!881270 (= res!598828 (not (= (select (arr!24685 _keys!868) from!1053) k0!854)))))

(declare-fun lt!398596 () ListLongMap!10531)

(declare-fun +!2487 (ListLongMap!10531 tuple2!11748) ListLongMap!10531)

(declare-fun get!13004 (ValueCell!8367 V!28531) V!28531)

(declare-fun dynLambda!1249 (Int (_ BitVec 64)) V!28531)

(assert (=> b!881270 (= lt!398601 (+!2487 lt!398596 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881271 () Bool)

(assert (=> b!881271 (= e!490471 (bvslt (size!25126 _keys!868) #b01111111111111111111111111111111))))

(declare-fun arrayContainsKey!0 (array!51334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881271 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30050 0))(
  ( (Unit!30051) )
))
(declare-fun lt!398593 () Unit!30050)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30050)

(assert (=> b!881271 (= lt!398593 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!17618 0))(
  ( (Nil!17615) (Cons!17614 (h!18745 (_ BitVec 64)) (t!24797 List!17618)) )
))
(declare-fun arrayNoDuplicates!0 (array!51334 (_ BitVec 32) List!17618) Bool)

(assert (=> b!881271 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17615)))

(declare-fun lt!398598 () Unit!30050)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51334 (_ BitVec 32) (_ BitVec 32)) Unit!30050)

(assert (=> b!881271 (= lt!398598 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881272 () Bool)

(declare-fun res!598829 () Bool)

(assert (=> b!881272 (=> (not res!598829) (not e!490473))))

(assert (=> b!881272 (= res!598829 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17615))))

(declare-fun b!881273 () Bool)

(declare-fun res!598834 () Bool)

(assert (=> b!881273 (=> (not res!598834) (not e!490473))))

(assert (=> b!881273 (= res!598834 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25126 _keys!868))))))

(declare-fun b!881274 () Bool)

(declare-fun res!598825 () Bool)

(assert (=> b!881274 (=> (not res!598825) (not e!490473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881274 (= res!598825 (validMask!0 mask!1196))))

(declare-fun b!881275 () Bool)

(assert (=> b!881275 (= e!490472 (not e!490468))))

(declare-fun res!598831 () Bool)

(assert (=> b!881275 (=> res!598831 e!490468)))

(assert (=> b!881275 (= res!598831 (not (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053))))))

(declare-fun lt!398597 () ListLongMap!10531)

(assert (=> b!881275 (= lt!398597 lt!398596)))

(declare-fun lt!398600 () ListLongMap!10531)

(assert (=> b!881275 (= lt!398596 (+!2487 lt!398600 (tuple2!11749 k0!854 v!557)))))

(assert (=> b!881275 (= lt!398597 (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881275 (= lt!398600 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398599 () Unit!30050)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!716 (array!51334 array!51336 (_ BitVec 32) (_ BitVec 32) V!28531 V!28531 (_ BitVec 32) (_ BitVec 64) V!28531 (_ BitVec 32) Int) Unit!30050)

(assert (=> b!881275 (= lt!398599 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!716 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881276 () Bool)

(assert (=> b!881276 (= e!490466 (and e!490469 mapRes!28047))))

(declare-fun condMapEmpty!28047 () Bool)

(declare-fun mapDefault!28047 () ValueCell!8367)

(assert (=> b!881276 (= condMapEmpty!28047 (= (arr!24686 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8367)) mapDefault!28047)))))

(declare-fun b!881277 () Bool)

(declare-fun e!490467 () Bool)

(assert (=> b!881277 (= e!490467 tp_is_empty!17613)))

(declare-fun b!881278 () Bool)

(declare-fun res!598827 () Bool)

(assert (=> b!881278 (=> (not res!598827) (not e!490473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51334 (_ BitVec 32)) Bool)

(assert (=> b!881278 (= res!598827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!28047 () Bool)

(declare-fun tp!53801 () Bool)

(assert (=> mapNonEmpty!28047 (= mapRes!28047 (and tp!53801 e!490467))))

(declare-fun mapValue!28047 () ValueCell!8367)

(declare-fun mapKey!28047 () (_ BitVec 32))

(declare-fun mapRest!28047 () (Array (_ BitVec 32) ValueCell!8367))

(assert (=> mapNonEmpty!28047 (= (arr!24686 _values!688) (store mapRest!28047 mapKey!28047 mapValue!28047))))

(assert (= (and start!74794 res!598832) b!881274))

(assert (= (and b!881274 res!598825) b!881265))

(assert (= (and b!881265 res!598830) b!881278))

(assert (= (and b!881278 res!598827) b!881272))

(assert (= (and b!881272 res!598829) b!881273))

(assert (= (and b!881273 res!598834) b!881266))

(assert (= (and b!881266 res!598835) b!881268))

(assert (= (and b!881268 res!598826) b!881269))

(assert (= (and b!881269 res!598833) b!881275))

(assert (= (and b!881275 (not res!598831)) b!881270))

(assert (= (and b!881270 (not res!598828)) b!881271))

(assert (= (and b!881276 condMapEmpty!28047) mapIsEmpty!28047))

(assert (= (and b!881276 (not condMapEmpty!28047)) mapNonEmpty!28047))

(get-info :version)

(assert (= (and mapNonEmpty!28047 ((_ is ValueCellFull!8367) mapValue!28047)) b!881277))

(assert (= (and b!881276 ((_ is ValueCellFull!8367) mapDefault!28047)) b!881267))

(assert (= start!74794 b!881276))

(declare-fun b_lambda!12575 () Bool)

(assert (=> (not b_lambda!12575) (not b!881270)))

(declare-fun t!24795 () Bool)

(declare-fun tb!5035 () Bool)

(assert (=> (and start!74794 (= defaultEntry!696 defaultEntry!696) t!24795) tb!5035))

(declare-fun result!9691 () Bool)

(assert (=> tb!5035 (= result!9691 tp_is_empty!17613)))

(assert (=> b!881270 t!24795))

(declare-fun b_and!25409 () Bool)

(assert (= b_and!25407 (and (=> t!24795 result!9691) b_and!25409)))

(declare-fun m!821213 () Bool)

(assert (=> b!881271 m!821213))

(declare-fun m!821215 () Bool)

(assert (=> b!881271 m!821215))

(declare-fun m!821217 () Bool)

(assert (=> b!881271 m!821217))

(declare-fun m!821219 () Bool)

(assert (=> b!881271 m!821219))

(declare-fun m!821221 () Bool)

(assert (=> mapNonEmpty!28047 m!821221))

(declare-fun m!821223 () Bool)

(assert (=> b!881268 m!821223))

(declare-fun m!821225 () Bool)

(assert (=> b!881272 m!821225))

(declare-fun m!821227 () Bool)

(assert (=> b!881274 m!821227))

(declare-fun m!821229 () Bool)

(assert (=> b!881278 m!821229))

(declare-fun m!821231 () Bool)

(assert (=> b!881269 m!821231))

(declare-fun m!821233 () Bool)

(assert (=> b!881269 m!821233))

(declare-fun m!821235 () Bool)

(assert (=> b!881269 m!821235))

(declare-fun m!821237 () Bool)

(assert (=> b!881266 m!821237))

(declare-fun m!821239 () Bool)

(assert (=> b!881275 m!821239))

(declare-fun m!821241 () Bool)

(assert (=> b!881275 m!821241))

(declare-fun m!821243 () Bool)

(assert (=> b!881275 m!821243))

(declare-fun m!821245 () Bool)

(assert (=> b!881275 m!821245))

(declare-fun m!821247 () Bool)

(assert (=> b!881275 m!821247))

(assert (=> b!881275 m!821243))

(declare-fun m!821249 () Bool)

(assert (=> b!881275 m!821249))

(declare-fun m!821251 () Bool)

(assert (=> start!74794 m!821251))

(declare-fun m!821253 () Bool)

(assert (=> start!74794 m!821253))

(declare-fun m!821255 () Bool)

(assert (=> b!881270 m!821255))

(assert (=> b!881270 m!821243))

(declare-fun m!821257 () Bool)

(assert (=> b!881270 m!821257))

(assert (=> b!881270 m!821255))

(assert (=> b!881270 m!821257))

(declare-fun m!821259 () Bool)

(assert (=> b!881270 m!821259))

(declare-fun m!821261 () Bool)

(assert (=> b!881270 m!821261))

(check-sat (not b_lambda!12575) (not b!881274) (not b!881266) (not start!74794) (not mapNonEmpty!28047) (not b_next!15369) (not b!881275) tp_is_empty!17613 (not b!881272) (not b!881270) b_and!25409 (not b!881278) (not b!881271) (not b!881269))
(check-sat b_and!25409 (not b_next!15369))
(get-model)

(declare-fun b_lambda!12579 () Bool)

(assert (= b_lambda!12575 (or (and start!74794 b_free!15369) b_lambda!12579)))

(check-sat (not b!881274) (not b!881266) (not start!74794) (not b_lambda!12579) (not mapNonEmpty!28047) (not b_next!15369) (not b!881275) tp_is_empty!17613 (not b!881272) (not b!881270) b_and!25409 (not b!881278) (not b!881271) (not b!881269))
(check-sat b_and!25409 (not b_next!15369))
(get-model)

(declare-fun b!881349 () Bool)

(declare-fun e!490517 () ListLongMap!10531)

(declare-fun e!490514 () ListLongMap!10531)

(assert (=> b!881349 (= e!490517 e!490514)))

(declare-fun c!92860 () Bool)

(assert (=> b!881349 (= c!92860 (validKeyInArray!0 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!881350 () Bool)

(declare-fun e!490518 () Bool)

(declare-fun e!490512 () Bool)

(assert (=> b!881350 (= e!490518 e!490512)))

(declare-fun c!92861 () Bool)

(declare-fun e!490516 () Bool)

(assert (=> b!881350 (= c!92861 e!490516)))

(declare-fun res!598880 () Bool)

(assert (=> b!881350 (=> (not res!598880) (not e!490516))))

(assert (=> b!881350 (= res!598880 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(declare-fun b!881351 () Bool)

(declare-fun call!38931 () ListLongMap!10531)

(assert (=> b!881351 (= e!490514 call!38931)))

(declare-fun b!881352 () Bool)

(declare-fun lt!398646 () Unit!30050)

(declare-fun lt!398649 () Unit!30050)

(assert (=> b!881352 (= lt!398646 lt!398649)))

(declare-fun lt!398648 () (_ BitVec 64))

(declare-fun lt!398643 () (_ BitVec 64))

(declare-fun lt!398644 () ListLongMap!10531)

(declare-fun lt!398647 () V!28531)

(declare-fun contains!4259 (ListLongMap!10531 (_ BitVec 64)) Bool)

(assert (=> b!881352 (not (contains!4259 (+!2487 lt!398644 (tuple2!11749 lt!398648 lt!398647)) lt!398643))))

(declare-fun addStillNotContains!209 (ListLongMap!10531 (_ BitVec 64) V!28531 (_ BitVec 64)) Unit!30050)

(assert (=> b!881352 (= lt!398649 (addStillNotContains!209 lt!398644 lt!398648 lt!398647 lt!398643))))

(assert (=> b!881352 (= lt!398643 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881352 (= lt!398647 (get!13004 (select (arr!24686 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881352 (= lt!398648 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881352 (= lt!398644 call!38931)))

(assert (=> b!881352 (= e!490514 (+!2487 call!38931 (tuple2!11749 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13004 (select (arr!24686 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881353 () Bool)

(assert (=> b!881353 (= e!490517 (ListLongMap!10532 Nil!17614))))

(declare-fun b!881354 () Bool)

(declare-fun res!598878 () Bool)

(assert (=> b!881354 (=> (not res!598878) (not e!490518))))

(declare-fun lt!398645 () ListLongMap!10531)

(assert (=> b!881354 (= res!598878 (not (contains!4259 lt!398645 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!881355 () Bool)

(assert (=> b!881355 (= e!490516 (validKeyInArray!0 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881355 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!881356 () Bool)

(assert (=> b!881356 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (=> b!881356 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25127 _values!688)))))

(declare-fun e!490513 () Bool)

(declare-fun apply!382 (ListLongMap!10531 (_ BitVec 64)) V!28531)

(assert (=> b!881356 (= e!490513 (= (apply!382 lt!398645 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13004 (select (arr!24686 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38928 () Bool)

(assert (=> bm!38928 (= call!38931 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108973 () Bool)

(assert (=> d!108973 e!490518))

(declare-fun res!598877 () Bool)

(assert (=> d!108973 (=> (not res!598877) (not e!490518))))

(assert (=> d!108973 (= res!598877 (not (contains!4259 lt!398645 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108973 (= lt!398645 e!490517)))

(declare-fun c!92862 () Bool)

(assert (=> d!108973 (= c!92862 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (=> d!108973 (validMask!0 mask!1196)))

(assert (=> d!108973 (= (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398645)))

(declare-fun e!490515 () Bool)

(declare-fun b!881357 () Bool)

(assert (=> b!881357 (= e!490515 (= lt!398645 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!881358 () Bool)

(declare-fun isEmpty!674 (ListLongMap!10531) Bool)

(assert (=> b!881358 (= e!490515 (isEmpty!674 lt!398645))))

(declare-fun b!881359 () Bool)

(assert (=> b!881359 (= e!490512 e!490513)))

(assert (=> b!881359 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(declare-fun res!598879 () Bool)

(assert (=> b!881359 (= res!598879 (contains!4259 lt!398645 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881359 (=> (not res!598879) (not e!490513))))

(declare-fun b!881360 () Bool)

(assert (=> b!881360 (= e!490512 e!490515)))

(declare-fun c!92859 () Bool)

(assert (=> b!881360 (= c!92859 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (= (and d!108973 c!92862) b!881353))

(assert (= (and d!108973 (not c!92862)) b!881349))

(assert (= (and b!881349 c!92860) b!881352))

(assert (= (and b!881349 (not c!92860)) b!881351))

(assert (= (or b!881352 b!881351) bm!38928))

(assert (= (and d!108973 res!598877) b!881354))

(assert (= (and b!881354 res!598878) b!881350))

(assert (= (and b!881350 res!598880) b!881355))

(assert (= (and b!881350 c!92861) b!881359))

(assert (= (and b!881350 (not c!92861)) b!881360))

(assert (= (and b!881359 res!598879) b!881356))

(assert (= (and b!881360 c!92859) b!881357))

(assert (= (and b!881360 (not c!92859)) b!881358))

(declare-fun b_lambda!12581 () Bool)

(assert (=> (not b_lambda!12581) (not b!881352)))

(assert (=> b!881352 t!24795))

(declare-fun b_and!25415 () Bool)

(assert (= b_and!25409 (and (=> t!24795 result!9691) b_and!25415)))

(declare-fun b_lambda!12583 () Bool)

(assert (=> (not b_lambda!12583) (not b!881356)))

(assert (=> b!881356 t!24795))

(declare-fun b_and!25417 () Bool)

(assert (= b_and!25415 (and (=> t!24795 result!9691) b_and!25417)))

(declare-fun m!821313 () Bool)

(assert (=> b!881355 m!821313))

(assert (=> b!881355 m!821313))

(declare-fun m!821315 () Bool)

(assert (=> b!881355 m!821315))

(declare-fun m!821317 () Bool)

(assert (=> b!881357 m!821317))

(declare-fun m!821319 () Bool)

(assert (=> b!881358 m!821319))

(declare-fun m!821321 () Bool)

(assert (=> b!881354 m!821321))

(assert (=> b!881349 m!821313))

(assert (=> b!881349 m!821313))

(assert (=> b!881349 m!821315))

(assert (=> b!881359 m!821313))

(assert (=> b!881359 m!821313))

(declare-fun m!821323 () Bool)

(assert (=> b!881359 m!821323))

(declare-fun m!821325 () Bool)

(assert (=> d!108973 m!821325))

(assert (=> d!108973 m!821227))

(declare-fun m!821327 () Bool)

(assert (=> b!881352 m!821327))

(assert (=> b!881352 m!821257))

(declare-fun m!821329 () Bool)

(assert (=> b!881352 m!821329))

(declare-fun m!821331 () Bool)

(assert (=> b!881352 m!821331))

(declare-fun m!821333 () Bool)

(assert (=> b!881352 m!821333))

(assert (=> b!881352 m!821313))

(assert (=> b!881352 m!821257))

(assert (=> b!881352 m!821327))

(assert (=> b!881352 m!821333))

(declare-fun m!821335 () Bool)

(assert (=> b!881352 m!821335))

(declare-fun m!821337 () Bool)

(assert (=> b!881352 m!821337))

(assert (=> bm!38928 m!821317))

(assert (=> b!881356 m!821327))

(assert (=> b!881356 m!821257))

(assert (=> b!881356 m!821329))

(assert (=> b!881356 m!821313))

(declare-fun m!821339 () Bool)

(assert (=> b!881356 m!821339))

(assert (=> b!881356 m!821313))

(assert (=> b!881356 m!821257))

(assert (=> b!881356 m!821327))

(assert (=> b!881275 d!108973))

(declare-fun d!108975 () Bool)

(assert (=> d!108975 (= (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)) (and (not (= (select (arr!24685 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24685 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!881275 d!108975))

(declare-fun call!38937 () ListLongMap!10531)

(declare-fun e!490523 () Bool)

(declare-fun call!38936 () ListLongMap!10531)

(declare-fun b!881367 () Bool)

(assert (=> b!881367 (= e!490523 (= call!38936 (+!2487 call!38937 (tuple2!11749 k0!854 v!557))))))

(declare-fun b!881368 () Bool)

(declare-fun e!490524 () Bool)

(assert (=> b!881368 (= e!490524 e!490523)))

(declare-fun c!92865 () Bool)

(assert (=> b!881368 (= c!92865 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38933 () Bool)

(assert (=> bm!38933 (= call!38937 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38934 () Bool)

(assert (=> bm!38934 (= call!38936 (getCurrentListMapNoExtraKeys!3241 _keys!868 (array!51337 (store (arr!24686 _values!688) i!612 (ValueCellFull!8367 v!557)) (size!25127 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!108977 () Bool)

(assert (=> d!108977 e!490524))

(declare-fun res!598883 () Bool)

(assert (=> d!108977 (=> (not res!598883) (not e!490524))))

(assert (=> d!108977 (= res!598883 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25127 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25127 _values!688))))))))

(declare-fun lt!398652 () Unit!30050)

(declare-fun choose!1446 (array!51334 array!51336 (_ BitVec 32) (_ BitVec 32) V!28531 V!28531 (_ BitVec 32) (_ BitVec 64) V!28531 (_ BitVec 32) Int) Unit!30050)

(assert (=> d!108977 (= lt!398652 (choose!1446 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108977 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (=> d!108977 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!716 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398652)))

(declare-fun b!881369 () Bool)

(assert (=> b!881369 (= e!490523 (= call!38936 call!38937))))

(assert (= (and d!108977 res!598883) b!881368))

(assert (= (and b!881368 c!92865) b!881367))

(assert (= (and b!881368 (not c!92865)) b!881369))

(assert (= (or b!881367 b!881369) bm!38933))

(assert (= (or b!881367 b!881369) bm!38934))

(declare-fun m!821341 () Bool)

(assert (=> b!881367 m!821341))

(assert (=> bm!38933 m!821241))

(assert (=> bm!38934 m!821233))

(declare-fun m!821343 () Bool)

(assert (=> bm!38934 m!821343))

(declare-fun m!821345 () Bool)

(assert (=> d!108977 m!821345))

(assert (=> b!881275 d!108977))

(declare-fun d!108979 () Bool)

(declare-fun e!490527 () Bool)

(assert (=> d!108979 e!490527))

(declare-fun res!598888 () Bool)

(assert (=> d!108979 (=> (not res!598888) (not e!490527))))

(declare-fun lt!398664 () ListLongMap!10531)

(assert (=> d!108979 (= res!598888 (contains!4259 lt!398664 (_1!5884 (tuple2!11749 k0!854 v!557))))))

(declare-fun lt!398661 () List!17617)

(assert (=> d!108979 (= lt!398664 (ListLongMap!10532 lt!398661))))

(declare-fun lt!398663 () Unit!30050)

(declare-fun lt!398662 () Unit!30050)

(assert (=> d!108979 (= lt!398663 lt!398662)))

(declare-datatypes ((Option!429 0))(
  ( (Some!428 (v!11311 V!28531)) (None!427) )
))
(declare-fun getValueByKey!423 (List!17617 (_ BitVec 64)) Option!429)

(assert (=> d!108979 (= (getValueByKey!423 lt!398661 (_1!5884 (tuple2!11749 k0!854 v!557))) (Some!428 (_2!5884 (tuple2!11749 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!239 (List!17617 (_ BitVec 64) V!28531) Unit!30050)

(assert (=> d!108979 (= lt!398662 (lemmaContainsTupThenGetReturnValue!239 lt!398661 (_1!5884 (tuple2!11749 k0!854 v!557)) (_2!5884 (tuple2!11749 k0!854 v!557))))))

(declare-fun insertStrictlySorted!277 (List!17617 (_ BitVec 64) V!28531) List!17617)

(assert (=> d!108979 (= lt!398661 (insertStrictlySorted!277 (toList!5281 lt!398600) (_1!5884 (tuple2!11749 k0!854 v!557)) (_2!5884 (tuple2!11749 k0!854 v!557))))))

(assert (=> d!108979 (= (+!2487 lt!398600 (tuple2!11749 k0!854 v!557)) lt!398664)))

(declare-fun b!881374 () Bool)

(declare-fun res!598889 () Bool)

(assert (=> b!881374 (=> (not res!598889) (not e!490527))))

(assert (=> b!881374 (= res!598889 (= (getValueByKey!423 (toList!5281 lt!398664) (_1!5884 (tuple2!11749 k0!854 v!557))) (Some!428 (_2!5884 (tuple2!11749 k0!854 v!557)))))))

(declare-fun b!881375 () Bool)

(declare-fun contains!4260 (List!17617 tuple2!11748) Bool)

(assert (=> b!881375 (= e!490527 (contains!4260 (toList!5281 lt!398664) (tuple2!11749 k0!854 v!557)))))

(assert (= (and d!108979 res!598888) b!881374))

(assert (= (and b!881374 res!598889) b!881375))

(declare-fun m!821347 () Bool)

(assert (=> d!108979 m!821347))

(declare-fun m!821349 () Bool)

(assert (=> d!108979 m!821349))

(declare-fun m!821351 () Bool)

(assert (=> d!108979 m!821351))

(declare-fun m!821353 () Bool)

(assert (=> d!108979 m!821353))

(declare-fun m!821355 () Bool)

(assert (=> b!881374 m!821355))

(declare-fun m!821357 () Bool)

(assert (=> b!881375 m!821357))

(assert (=> b!881275 d!108979))

(declare-fun b!881376 () Bool)

(declare-fun e!490533 () ListLongMap!10531)

(declare-fun e!490530 () ListLongMap!10531)

(assert (=> b!881376 (= e!490533 e!490530)))

(declare-fun c!92867 () Bool)

(assert (=> b!881376 (= c!92867 (validKeyInArray!0 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!881377 () Bool)

(declare-fun e!490534 () Bool)

(declare-fun e!490528 () Bool)

(assert (=> b!881377 (= e!490534 e!490528)))

(declare-fun c!92868 () Bool)

(declare-fun e!490532 () Bool)

(assert (=> b!881377 (= c!92868 e!490532)))

(declare-fun res!598893 () Bool)

(assert (=> b!881377 (=> (not res!598893) (not e!490532))))

(assert (=> b!881377 (= res!598893 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(declare-fun b!881378 () Bool)

(declare-fun call!38938 () ListLongMap!10531)

(assert (=> b!881378 (= e!490530 call!38938)))

(declare-fun b!881379 () Bool)

(declare-fun lt!398668 () Unit!30050)

(declare-fun lt!398671 () Unit!30050)

(assert (=> b!881379 (= lt!398668 lt!398671)))

(declare-fun lt!398670 () (_ BitVec 64))

(declare-fun lt!398665 () (_ BitVec 64))

(declare-fun lt!398666 () ListLongMap!10531)

(declare-fun lt!398669 () V!28531)

(assert (=> b!881379 (not (contains!4259 (+!2487 lt!398666 (tuple2!11749 lt!398670 lt!398669)) lt!398665))))

(assert (=> b!881379 (= lt!398671 (addStillNotContains!209 lt!398666 lt!398670 lt!398669 lt!398665))))

(assert (=> b!881379 (= lt!398665 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881379 (= lt!398669 (get!13004 (select (arr!24686 lt!398594) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881379 (= lt!398670 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881379 (= lt!398666 call!38938)))

(assert (=> b!881379 (= e!490530 (+!2487 call!38938 (tuple2!11749 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13004 (select (arr!24686 lt!398594) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881380 () Bool)

(assert (=> b!881380 (= e!490533 (ListLongMap!10532 Nil!17614))))

(declare-fun b!881381 () Bool)

(declare-fun res!598891 () Bool)

(assert (=> b!881381 (=> (not res!598891) (not e!490534))))

(declare-fun lt!398667 () ListLongMap!10531)

(assert (=> b!881381 (= res!598891 (not (contains!4259 lt!398667 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!881382 () Bool)

(assert (=> b!881382 (= e!490532 (validKeyInArray!0 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881382 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!881383 () Bool)

(assert (=> b!881383 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (=> b!881383 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25127 lt!398594)))))

(declare-fun e!490529 () Bool)

(assert (=> b!881383 (= e!490529 (= (apply!382 lt!398667 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13004 (select (arr!24686 lt!398594) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38935 () Bool)

(assert (=> bm!38935 (= call!38938 (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108981 () Bool)

(assert (=> d!108981 e!490534))

(declare-fun res!598890 () Bool)

(assert (=> d!108981 (=> (not res!598890) (not e!490534))))

(assert (=> d!108981 (= res!598890 (not (contains!4259 lt!398667 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108981 (= lt!398667 e!490533)))

(declare-fun c!92869 () Bool)

(assert (=> d!108981 (= c!92869 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (=> d!108981 (validMask!0 mask!1196)))

(assert (=> d!108981 (= (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!398667)))

(declare-fun e!490531 () Bool)

(declare-fun b!881384 () Bool)

(assert (=> b!881384 (= e!490531 (= lt!398667 (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!881385 () Bool)

(assert (=> b!881385 (= e!490531 (isEmpty!674 lt!398667))))

(declare-fun b!881386 () Bool)

(assert (=> b!881386 (= e!490528 e!490529)))

(assert (=> b!881386 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(declare-fun res!598892 () Bool)

(assert (=> b!881386 (= res!598892 (contains!4259 lt!398667 (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!881386 (=> (not res!598892) (not e!490529))))

(declare-fun b!881387 () Bool)

(assert (=> b!881387 (= e!490528 e!490531)))

(declare-fun c!92866 () Bool)

(assert (=> b!881387 (= c!92866 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25126 _keys!868)))))

(assert (= (and d!108981 c!92869) b!881380))

(assert (= (and d!108981 (not c!92869)) b!881376))

(assert (= (and b!881376 c!92867) b!881379))

(assert (= (and b!881376 (not c!92867)) b!881378))

(assert (= (or b!881379 b!881378) bm!38935))

(assert (= (and d!108981 res!598890) b!881381))

(assert (= (and b!881381 res!598891) b!881377))

(assert (= (and b!881377 res!598893) b!881382))

(assert (= (and b!881377 c!92868) b!881386))

(assert (= (and b!881377 (not c!92868)) b!881387))

(assert (= (and b!881386 res!598892) b!881383))

(assert (= (and b!881387 c!92866) b!881384))

(assert (= (and b!881387 (not c!92866)) b!881385))

(declare-fun b_lambda!12585 () Bool)

(assert (=> (not b_lambda!12585) (not b!881379)))

(assert (=> b!881379 t!24795))

(declare-fun b_and!25419 () Bool)

(assert (= b_and!25417 (and (=> t!24795 result!9691) b_and!25419)))

(declare-fun b_lambda!12587 () Bool)

(assert (=> (not b_lambda!12587) (not b!881383)))

(assert (=> b!881383 t!24795))

(declare-fun b_and!25421 () Bool)

(assert (= b_and!25419 (and (=> t!24795 result!9691) b_and!25421)))

(assert (=> b!881382 m!821313))

(assert (=> b!881382 m!821313))

(assert (=> b!881382 m!821315))

(declare-fun m!821359 () Bool)

(assert (=> b!881384 m!821359))

(declare-fun m!821361 () Bool)

(assert (=> b!881385 m!821361))

(declare-fun m!821363 () Bool)

(assert (=> b!881381 m!821363))

(assert (=> b!881376 m!821313))

(assert (=> b!881376 m!821313))

(assert (=> b!881376 m!821315))

(assert (=> b!881386 m!821313))

(assert (=> b!881386 m!821313))

(declare-fun m!821365 () Bool)

(assert (=> b!881386 m!821365))

(declare-fun m!821367 () Bool)

(assert (=> d!108981 m!821367))

(assert (=> d!108981 m!821227))

(declare-fun m!821369 () Bool)

(assert (=> b!881379 m!821369))

(assert (=> b!881379 m!821257))

(declare-fun m!821371 () Bool)

(assert (=> b!881379 m!821371))

(declare-fun m!821373 () Bool)

(assert (=> b!881379 m!821373))

(declare-fun m!821375 () Bool)

(assert (=> b!881379 m!821375))

(assert (=> b!881379 m!821313))

(assert (=> b!881379 m!821257))

(assert (=> b!881379 m!821369))

(assert (=> b!881379 m!821375))

(declare-fun m!821377 () Bool)

(assert (=> b!881379 m!821377))

(declare-fun m!821379 () Bool)

(assert (=> b!881379 m!821379))

(assert (=> bm!38935 m!821359))

(assert (=> b!881383 m!821369))

(assert (=> b!881383 m!821257))

(assert (=> b!881383 m!821371))

(assert (=> b!881383 m!821313))

(declare-fun m!821381 () Bool)

(assert (=> b!881383 m!821381))

(assert (=> b!881383 m!821313))

(assert (=> b!881383 m!821257))

(assert (=> b!881383 m!821369))

(assert (=> b!881275 d!108981))

(declare-fun d!108983 () Bool)

(declare-fun e!490535 () Bool)

(assert (=> d!108983 e!490535))

(declare-fun res!598894 () Bool)

(assert (=> d!108983 (=> (not res!598894) (not e!490535))))

(declare-fun lt!398675 () ListLongMap!10531)

(assert (=> d!108983 (= res!598894 (contains!4259 lt!398675 (_1!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!398672 () List!17617)

(assert (=> d!108983 (= lt!398675 (ListLongMap!10532 lt!398672))))

(declare-fun lt!398674 () Unit!30050)

(declare-fun lt!398673 () Unit!30050)

(assert (=> d!108983 (= lt!398674 lt!398673)))

(assert (=> d!108983 (= (getValueByKey!423 lt!398672 (_1!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!428 (_2!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108983 (= lt!398673 (lemmaContainsTupThenGetReturnValue!239 lt!398672 (_1!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108983 (= lt!398672 (insertStrictlySorted!277 (toList!5281 lt!398596) (_1!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108983 (= (+!2487 lt!398596 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!398675)))

(declare-fun b!881388 () Bool)

(declare-fun res!598895 () Bool)

(assert (=> b!881388 (=> (not res!598895) (not e!490535))))

(assert (=> b!881388 (= res!598895 (= (getValueByKey!423 (toList!5281 lt!398675) (_1!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!428 (_2!5884 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!881389 () Bool)

(assert (=> b!881389 (= e!490535 (contains!4260 (toList!5281 lt!398675) (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108983 res!598894) b!881388))

(assert (= (and b!881388 res!598895) b!881389))

(declare-fun m!821383 () Bool)

(assert (=> d!108983 m!821383))

(declare-fun m!821385 () Bool)

(assert (=> d!108983 m!821385))

(declare-fun m!821387 () Bool)

(assert (=> d!108983 m!821387))

(declare-fun m!821389 () Bool)

(assert (=> d!108983 m!821389))

(declare-fun m!821391 () Bool)

(assert (=> b!881388 m!821391))

(declare-fun m!821393 () Bool)

(assert (=> b!881389 m!821393))

(assert (=> b!881270 d!108983))

(declare-fun d!108985 () Bool)

(declare-fun c!92872 () Bool)

(assert (=> d!108985 (= c!92872 ((_ is ValueCellFull!8367) (select (arr!24686 _values!688) from!1053)))))

(declare-fun e!490538 () V!28531)

(assert (=> d!108985 (= (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!490538)))

(declare-fun b!881394 () Bool)

(declare-fun get!13006 (ValueCell!8367 V!28531) V!28531)

(assert (=> b!881394 (= e!490538 (get!13006 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!881395 () Bool)

(declare-fun get!13007 (ValueCell!8367 V!28531) V!28531)

(assert (=> b!881395 (= e!490538 (get!13007 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108985 c!92872) b!881394))

(assert (= (and d!108985 (not c!92872)) b!881395))

(assert (=> b!881394 m!821255))

(assert (=> b!881394 m!821257))

(declare-fun m!821395 () Bool)

(assert (=> b!881394 m!821395))

(assert (=> b!881395 m!821255))

(assert (=> b!881395 m!821257))

(declare-fun m!821397 () Bool)

(assert (=> b!881395 m!821397))

(assert (=> b!881270 d!108985))

(declare-fun b!881396 () Bool)

(declare-fun e!490544 () ListLongMap!10531)

(declare-fun e!490541 () ListLongMap!10531)

(assert (=> b!881396 (= e!490544 e!490541)))

(declare-fun c!92874 () Bool)

(assert (=> b!881396 (= c!92874 (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)))))

(declare-fun b!881397 () Bool)

(declare-fun e!490545 () Bool)

(declare-fun e!490539 () Bool)

(assert (=> b!881397 (= e!490545 e!490539)))

(declare-fun c!92875 () Bool)

(declare-fun e!490543 () Bool)

(assert (=> b!881397 (= c!92875 e!490543)))

(declare-fun res!598899 () Bool)

(assert (=> b!881397 (=> (not res!598899) (not e!490543))))

(assert (=> b!881397 (= res!598899 (bvslt from!1053 (size!25126 _keys!868)))))

(declare-fun b!881398 () Bool)

(declare-fun call!38939 () ListLongMap!10531)

(assert (=> b!881398 (= e!490541 call!38939)))

(declare-fun b!881399 () Bool)

(declare-fun lt!398679 () Unit!30050)

(declare-fun lt!398682 () Unit!30050)

(assert (=> b!881399 (= lt!398679 lt!398682)))

(declare-fun lt!398680 () V!28531)

(declare-fun lt!398681 () (_ BitVec 64))

(declare-fun lt!398676 () (_ BitVec 64))

(declare-fun lt!398677 () ListLongMap!10531)

(assert (=> b!881399 (not (contains!4259 (+!2487 lt!398677 (tuple2!11749 lt!398681 lt!398680)) lt!398676))))

(assert (=> b!881399 (= lt!398682 (addStillNotContains!209 lt!398677 lt!398681 lt!398680 lt!398676))))

(assert (=> b!881399 (= lt!398676 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881399 (= lt!398680 (get!13004 (select (arr!24686 lt!398594) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881399 (= lt!398681 (select (arr!24685 _keys!868) from!1053))))

(assert (=> b!881399 (= lt!398677 call!38939)))

(assert (=> b!881399 (= e!490541 (+!2487 call!38939 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 lt!398594) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881400 () Bool)

(assert (=> b!881400 (= e!490544 (ListLongMap!10532 Nil!17614))))

(declare-fun b!881401 () Bool)

(declare-fun res!598897 () Bool)

(assert (=> b!881401 (=> (not res!598897) (not e!490545))))

(declare-fun lt!398678 () ListLongMap!10531)

(assert (=> b!881401 (= res!598897 (not (contains!4259 lt!398678 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!881402 () Bool)

(assert (=> b!881402 (= e!490543 (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)))))

(assert (=> b!881402 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!881403 () Bool)

(assert (=> b!881403 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25126 _keys!868)))))

(assert (=> b!881403 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25127 lt!398594)))))

(declare-fun e!490540 () Bool)

(assert (=> b!881403 (= e!490540 (= (apply!382 lt!398678 (select (arr!24685 _keys!868) from!1053)) (get!13004 (select (arr!24686 lt!398594) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38936 () Bool)

(assert (=> bm!38936 (= call!38939 (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108987 () Bool)

(assert (=> d!108987 e!490545))

(declare-fun res!598896 () Bool)

(assert (=> d!108987 (=> (not res!598896) (not e!490545))))

(assert (=> d!108987 (= res!598896 (not (contains!4259 lt!398678 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108987 (= lt!398678 e!490544)))

(declare-fun c!92876 () Bool)

(assert (=> d!108987 (= c!92876 (bvsge from!1053 (size!25126 _keys!868)))))

(assert (=> d!108987 (validMask!0 mask!1196)))

(assert (=> d!108987 (= (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!398678)))

(declare-fun e!490542 () Bool)

(declare-fun b!881404 () Bool)

(assert (=> b!881404 (= e!490542 (= lt!398678 (getCurrentListMapNoExtraKeys!3241 _keys!868 lt!398594 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!881405 () Bool)

(assert (=> b!881405 (= e!490542 (isEmpty!674 lt!398678))))

(declare-fun b!881406 () Bool)

(assert (=> b!881406 (= e!490539 e!490540)))

(assert (=> b!881406 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25126 _keys!868)))))

(declare-fun res!598898 () Bool)

(assert (=> b!881406 (= res!598898 (contains!4259 lt!398678 (select (arr!24685 _keys!868) from!1053)))))

(assert (=> b!881406 (=> (not res!598898) (not e!490540))))

(declare-fun b!881407 () Bool)

(assert (=> b!881407 (= e!490539 e!490542)))

(declare-fun c!92873 () Bool)

(assert (=> b!881407 (= c!92873 (bvslt from!1053 (size!25126 _keys!868)))))

(assert (= (and d!108987 c!92876) b!881400))

(assert (= (and d!108987 (not c!92876)) b!881396))

(assert (= (and b!881396 c!92874) b!881399))

(assert (= (and b!881396 (not c!92874)) b!881398))

(assert (= (or b!881399 b!881398) bm!38936))

(assert (= (and d!108987 res!598896) b!881401))

(assert (= (and b!881401 res!598897) b!881397))

(assert (= (and b!881397 res!598899) b!881402))

(assert (= (and b!881397 c!92875) b!881406))

(assert (= (and b!881397 (not c!92875)) b!881407))

(assert (= (and b!881406 res!598898) b!881403))

(assert (= (and b!881407 c!92873) b!881404))

(assert (= (and b!881407 (not c!92873)) b!881405))

(declare-fun b_lambda!12589 () Bool)

(assert (=> (not b_lambda!12589) (not b!881399)))

(assert (=> b!881399 t!24795))

(declare-fun b_and!25423 () Bool)

(assert (= b_and!25421 (and (=> t!24795 result!9691) b_and!25423)))

(declare-fun b_lambda!12591 () Bool)

(assert (=> (not b_lambda!12591) (not b!881403)))

(assert (=> b!881403 t!24795))

(declare-fun b_and!25425 () Bool)

(assert (= b_and!25423 (and (=> t!24795 result!9691) b_and!25425)))

(assert (=> b!881402 m!821243))

(assert (=> b!881402 m!821243))

(assert (=> b!881402 m!821245))

(declare-fun m!821399 () Bool)

(assert (=> b!881404 m!821399))

(declare-fun m!821401 () Bool)

(assert (=> b!881405 m!821401))

(declare-fun m!821403 () Bool)

(assert (=> b!881401 m!821403))

(assert (=> b!881396 m!821243))

(assert (=> b!881396 m!821243))

(assert (=> b!881396 m!821245))

(assert (=> b!881406 m!821243))

(assert (=> b!881406 m!821243))

(declare-fun m!821405 () Bool)

(assert (=> b!881406 m!821405))

(declare-fun m!821407 () Bool)

(assert (=> d!108987 m!821407))

(assert (=> d!108987 m!821227))

(declare-fun m!821409 () Bool)

(assert (=> b!881399 m!821409))

(assert (=> b!881399 m!821257))

(declare-fun m!821411 () Bool)

(assert (=> b!881399 m!821411))

(declare-fun m!821413 () Bool)

(assert (=> b!881399 m!821413))

(declare-fun m!821415 () Bool)

(assert (=> b!881399 m!821415))

(assert (=> b!881399 m!821243))

(assert (=> b!881399 m!821257))

(assert (=> b!881399 m!821409))

(assert (=> b!881399 m!821415))

(declare-fun m!821417 () Bool)

(assert (=> b!881399 m!821417))

(declare-fun m!821419 () Bool)

(assert (=> b!881399 m!821419))

(assert (=> bm!38936 m!821399))

(assert (=> b!881403 m!821409))

(assert (=> b!881403 m!821257))

(assert (=> b!881403 m!821411))

(assert (=> b!881403 m!821243))

(declare-fun m!821421 () Bool)

(assert (=> b!881403 m!821421))

(assert (=> b!881403 m!821243))

(assert (=> b!881403 m!821257))

(assert (=> b!881403 m!821409))

(assert (=> b!881269 d!108987))

(declare-fun b!881408 () Bool)

(declare-fun e!490551 () ListLongMap!10531)

(declare-fun e!490548 () ListLongMap!10531)

(assert (=> b!881408 (= e!490551 e!490548)))

(declare-fun c!92878 () Bool)

(assert (=> b!881408 (= c!92878 (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)))))

(declare-fun b!881409 () Bool)

(declare-fun e!490552 () Bool)

(declare-fun e!490546 () Bool)

(assert (=> b!881409 (= e!490552 e!490546)))

(declare-fun c!92879 () Bool)

(declare-fun e!490550 () Bool)

(assert (=> b!881409 (= c!92879 e!490550)))

(declare-fun res!598903 () Bool)

(assert (=> b!881409 (=> (not res!598903) (not e!490550))))

(assert (=> b!881409 (= res!598903 (bvslt from!1053 (size!25126 _keys!868)))))

(declare-fun b!881410 () Bool)

(declare-fun call!38940 () ListLongMap!10531)

(assert (=> b!881410 (= e!490548 call!38940)))

(declare-fun b!881411 () Bool)

(declare-fun lt!398686 () Unit!30050)

(declare-fun lt!398689 () Unit!30050)

(assert (=> b!881411 (= lt!398686 lt!398689)))

(declare-fun lt!398683 () (_ BitVec 64))

(declare-fun lt!398687 () V!28531)

(declare-fun lt!398688 () (_ BitVec 64))

(declare-fun lt!398684 () ListLongMap!10531)

(assert (=> b!881411 (not (contains!4259 (+!2487 lt!398684 (tuple2!11749 lt!398688 lt!398687)) lt!398683))))

(assert (=> b!881411 (= lt!398689 (addStillNotContains!209 lt!398684 lt!398688 lt!398687 lt!398683))))

(assert (=> b!881411 (= lt!398683 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!881411 (= lt!398687 (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!881411 (= lt!398688 (select (arr!24685 _keys!868) from!1053))))

(assert (=> b!881411 (= lt!398684 call!38940)))

(assert (=> b!881411 (= e!490548 (+!2487 call!38940 (tuple2!11749 (select (arr!24685 _keys!868) from!1053) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881412 () Bool)

(assert (=> b!881412 (= e!490551 (ListLongMap!10532 Nil!17614))))

(declare-fun b!881413 () Bool)

(declare-fun res!598901 () Bool)

(assert (=> b!881413 (=> (not res!598901) (not e!490552))))

(declare-fun lt!398685 () ListLongMap!10531)

(assert (=> b!881413 (= res!598901 (not (contains!4259 lt!398685 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!881414 () Bool)

(assert (=> b!881414 (= e!490550 (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)))))

(assert (=> b!881414 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!881415 () Bool)

(assert (=> b!881415 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25126 _keys!868)))))

(assert (=> b!881415 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25127 _values!688)))))

(declare-fun e!490547 () Bool)

(assert (=> b!881415 (= e!490547 (= (apply!382 lt!398685 (select (arr!24685 _keys!868) from!1053)) (get!13004 (select (arr!24686 _values!688) from!1053) (dynLambda!1249 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!38937 () Bool)

(assert (=> bm!38937 (= call!38940 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun d!108989 () Bool)

(assert (=> d!108989 e!490552))

(declare-fun res!598900 () Bool)

(assert (=> d!108989 (=> (not res!598900) (not e!490552))))

(assert (=> d!108989 (= res!598900 (not (contains!4259 lt!398685 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108989 (= lt!398685 e!490551)))

(declare-fun c!92880 () Bool)

(assert (=> d!108989 (= c!92880 (bvsge from!1053 (size!25126 _keys!868)))))

(assert (=> d!108989 (validMask!0 mask!1196)))

(assert (=> d!108989 (= (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!398685)))

(declare-fun e!490549 () Bool)

(declare-fun b!881416 () Bool)

(assert (=> b!881416 (= e!490549 (= lt!398685 (getCurrentListMapNoExtraKeys!3241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!881417 () Bool)

(assert (=> b!881417 (= e!490549 (isEmpty!674 lt!398685))))

(declare-fun b!881418 () Bool)

(assert (=> b!881418 (= e!490546 e!490547)))

(assert (=> b!881418 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25126 _keys!868)))))

(declare-fun res!598902 () Bool)

(assert (=> b!881418 (= res!598902 (contains!4259 lt!398685 (select (arr!24685 _keys!868) from!1053)))))

(assert (=> b!881418 (=> (not res!598902) (not e!490547))))

(declare-fun b!881419 () Bool)

(assert (=> b!881419 (= e!490546 e!490549)))

(declare-fun c!92877 () Bool)

(assert (=> b!881419 (= c!92877 (bvslt from!1053 (size!25126 _keys!868)))))

(assert (= (and d!108989 c!92880) b!881412))

(assert (= (and d!108989 (not c!92880)) b!881408))

(assert (= (and b!881408 c!92878) b!881411))

(assert (= (and b!881408 (not c!92878)) b!881410))

(assert (= (or b!881411 b!881410) bm!38937))

(assert (= (and d!108989 res!598900) b!881413))

(assert (= (and b!881413 res!598901) b!881409))

(assert (= (and b!881409 res!598903) b!881414))

(assert (= (and b!881409 c!92879) b!881418))

(assert (= (and b!881409 (not c!92879)) b!881419))

(assert (= (and b!881418 res!598902) b!881415))

(assert (= (and b!881419 c!92877) b!881416))

(assert (= (and b!881419 (not c!92877)) b!881417))

(declare-fun b_lambda!12593 () Bool)

(assert (=> (not b_lambda!12593) (not b!881411)))

(assert (=> b!881411 t!24795))

(declare-fun b_and!25427 () Bool)

(assert (= b_and!25425 (and (=> t!24795 result!9691) b_and!25427)))

(declare-fun b_lambda!12595 () Bool)

(assert (=> (not b_lambda!12595) (not b!881415)))

(assert (=> b!881415 t!24795))

(declare-fun b_and!25429 () Bool)

(assert (= b_and!25427 (and (=> t!24795 result!9691) b_and!25429)))

(assert (=> b!881414 m!821243))

(assert (=> b!881414 m!821243))

(assert (=> b!881414 m!821245))

(declare-fun m!821423 () Bool)

(assert (=> b!881416 m!821423))

(declare-fun m!821425 () Bool)

(assert (=> b!881417 m!821425))

(declare-fun m!821427 () Bool)

(assert (=> b!881413 m!821427))

(assert (=> b!881408 m!821243))

(assert (=> b!881408 m!821243))

(assert (=> b!881408 m!821245))

(assert (=> b!881418 m!821243))

(assert (=> b!881418 m!821243))

(declare-fun m!821429 () Bool)

(assert (=> b!881418 m!821429))

(declare-fun m!821431 () Bool)

(assert (=> d!108989 m!821431))

(assert (=> d!108989 m!821227))

(assert (=> b!881411 m!821255))

(assert (=> b!881411 m!821257))

(assert (=> b!881411 m!821259))

(declare-fun m!821433 () Bool)

(assert (=> b!881411 m!821433))

(declare-fun m!821435 () Bool)

(assert (=> b!881411 m!821435))

(assert (=> b!881411 m!821243))

(assert (=> b!881411 m!821257))

(assert (=> b!881411 m!821255))

(assert (=> b!881411 m!821435))

(declare-fun m!821437 () Bool)

(assert (=> b!881411 m!821437))

(declare-fun m!821439 () Bool)

(assert (=> b!881411 m!821439))

(assert (=> bm!38937 m!821423))

(assert (=> b!881415 m!821255))

(assert (=> b!881415 m!821257))

(assert (=> b!881415 m!821259))

(assert (=> b!881415 m!821243))

(declare-fun m!821441 () Bool)

(assert (=> b!881415 m!821441))

(assert (=> b!881415 m!821243))

(assert (=> b!881415 m!821257))

(assert (=> b!881415 m!821255))

(assert (=> b!881269 d!108989))

(declare-fun d!108991 () Bool)

(assert (=> d!108991 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!881274 d!108991))

(declare-fun b!881428 () Bool)

(declare-fun e!490559 () Bool)

(declare-fun call!38943 () Bool)

(assert (=> b!881428 (= e!490559 call!38943)))

(declare-fun bm!38940 () Bool)

(assert (=> bm!38940 (= call!38943 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!881429 () Bool)

(declare-fun e!490561 () Bool)

(assert (=> b!881429 (= e!490561 e!490559)))

(declare-fun lt!398696 () (_ BitVec 64))

(assert (=> b!881429 (= lt!398696 (select (arr!24685 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!398697 () Unit!30050)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51334 (_ BitVec 64) (_ BitVec 32)) Unit!30050)

(assert (=> b!881429 (= lt!398697 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!398696 #b00000000000000000000000000000000))))

(assert (=> b!881429 (arrayContainsKey!0 _keys!868 lt!398696 #b00000000000000000000000000000000)))

(declare-fun lt!398698 () Unit!30050)

(assert (=> b!881429 (= lt!398698 lt!398697)))

(declare-fun res!598909 () Bool)

(declare-datatypes ((SeekEntryResult!8747 0))(
  ( (MissingZero!8747 (index!37358 (_ BitVec 32))) (Found!8747 (index!37359 (_ BitVec 32))) (Intermediate!8747 (undefined!9559 Bool) (index!37360 (_ BitVec 32)) (x!74684 (_ BitVec 32))) (Undefined!8747) (MissingVacant!8747 (index!37361 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51334 (_ BitVec 32)) SeekEntryResult!8747)

(assert (=> b!881429 (= res!598909 (= (seekEntryOrOpen!0 (select (arr!24685 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8747 #b00000000000000000000000000000000)))))

(assert (=> b!881429 (=> (not res!598909) (not e!490559))))

(declare-fun b!881430 () Bool)

(assert (=> b!881430 (= e!490561 call!38943)))

(declare-fun b!881431 () Bool)

(declare-fun e!490560 () Bool)

(assert (=> b!881431 (= e!490560 e!490561)))

(declare-fun c!92883 () Bool)

(assert (=> b!881431 (= c!92883 (validKeyInArray!0 (select (arr!24685 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108993 () Bool)

(declare-fun res!598908 () Bool)

(assert (=> d!108993 (=> res!598908 e!490560)))

(assert (=> d!108993 (= res!598908 (bvsge #b00000000000000000000000000000000 (size!25126 _keys!868)))))

(assert (=> d!108993 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!490560)))

(assert (= (and d!108993 (not res!598908)) b!881431))

(assert (= (and b!881431 c!92883) b!881429))

(assert (= (and b!881431 (not c!92883)) b!881430))

(assert (= (and b!881429 res!598909) b!881428))

(assert (= (or b!881428 b!881430) bm!38940))

(declare-fun m!821443 () Bool)

(assert (=> bm!38940 m!821443))

(declare-fun m!821445 () Bool)

(assert (=> b!881429 m!821445))

(declare-fun m!821447 () Bool)

(assert (=> b!881429 m!821447))

(declare-fun m!821449 () Bool)

(assert (=> b!881429 m!821449))

(assert (=> b!881429 m!821445))

(declare-fun m!821451 () Bool)

(assert (=> b!881429 m!821451))

(assert (=> b!881431 m!821445))

(assert (=> b!881431 m!821445))

(declare-fun m!821453 () Bool)

(assert (=> b!881431 m!821453))

(assert (=> b!881278 d!108993))

(declare-fun b!881442 () Bool)

(declare-fun e!490571 () Bool)

(declare-fun call!38946 () Bool)

(assert (=> b!881442 (= e!490571 call!38946)))

(declare-fun bm!38943 () Bool)

(declare-fun c!92886 () Bool)

(assert (=> bm!38943 (= call!38946 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92886 (Cons!17614 (select (arr!24685 _keys!868) #b00000000000000000000000000000000) Nil!17615) Nil!17615)))))

(declare-fun b!881443 () Bool)

(declare-fun e!490570 () Bool)

(declare-fun e!490573 () Bool)

(assert (=> b!881443 (= e!490570 e!490573)))

(declare-fun res!598916 () Bool)

(assert (=> b!881443 (=> (not res!598916) (not e!490573))))

(declare-fun e!490572 () Bool)

(assert (=> b!881443 (= res!598916 (not e!490572))))

(declare-fun res!598918 () Bool)

(assert (=> b!881443 (=> (not res!598918) (not e!490572))))

(assert (=> b!881443 (= res!598918 (validKeyInArray!0 (select (arr!24685 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108995 () Bool)

(declare-fun res!598917 () Bool)

(assert (=> d!108995 (=> res!598917 e!490570)))

(assert (=> d!108995 (= res!598917 (bvsge #b00000000000000000000000000000000 (size!25126 _keys!868)))))

(assert (=> d!108995 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17615) e!490570)))

(declare-fun b!881444 () Bool)

(assert (=> b!881444 (= e!490573 e!490571)))

(assert (=> b!881444 (= c!92886 (validKeyInArray!0 (select (arr!24685 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!881445 () Bool)

(assert (=> b!881445 (= e!490571 call!38946)))

(declare-fun b!881446 () Bool)

(declare-fun contains!4261 (List!17618 (_ BitVec 64)) Bool)

(assert (=> b!881446 (= e!490572 (contains!4261 Nil!17615 (select (arr!24685 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108995 (not res!598917)) b!881443))

(assert (= (and b!881443 res!598918) b!881446))

(assert (= (and b!881443 res!598916) b!881444))

(assert (= (and b!881444 c!92886) b!881442))

(assert (= (and b!881444 (not c!92886)) b!881445))

(assert (= (or b!881442 b!881445) bm!38943))

(assert (=> bm!38943 m!821445))

(declare-fun m!821455 () Bool)

(assert (=> bm!38943 m!821455))

(assert (=> b!881443 m!821445))

(assert (=> b!881443 m!821445))

(assert (=> b!881443 m!821453))

(assert (=> b!881444 m!821445))

(assert (=> b!881444 m!821445))

(assert (=> b!881444 m!821453))

(assert (=> b!881446 m!821445))

(assert (=> b!881446 m!821445))

(declare-fun m!821457 () Bool)

(assert (=> b!881446 m!821457))

(assert (=> b!881272 d!108995))

(declare-fun d!108997 () Bool)

(declare-fun res!598923 () Bool)

(declare-fun e!490578 () Bool)

(assert (=> d!108997 (=> res!598923 e!490578)))

(assert (=> d!108997 (= res!598923 (= (select (arr!24685 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) k0!854))))

(assert (=> d!108997 (= (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053)) e!490578)))

(declare-fun b!881451 () Bool)

(declare-fun e!490579 () Bool)

(assert (=> b!881451 (= e!490578 e!490579)))

(declare-fun res!598924 () Bool)

(assert (=> b!881451 (=> (not res!598924) (not e!490579))))

(assert (=> b!881451 (= res!598924 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!25126 _keys!868)))))

(declare-fun b!881452 () Bool)

(assert (=> b!881452 (= e!490579 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)))))

(assert (= (and d!108997 (not res!598923)) b!881451))

(assert (= (and b!881451 res!598924) b!881452))

(assert (=> d!108997 m!821313))

(declare-fun m!821459 () Bool)

(assert (=> b!881452 m!821459))

(assert (=> b!881271 d!108997))

(declare-fun d!108999 () Bool)

(assert (=> d!108999 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!398701 () Unit!30050)

(declare-fun choose!114 (array!51334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30050)

(assert (=> d!108999 (= lt!398701 (choose!114 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> d!108999 (bvsge i!612 #b00000000000000000000000000000000)))

(assert (=> d!108999 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)) lt!398701)))

(declare-fun bs!24717 () Bool)

(assert (= bs!24717 d!108999))

(assert (=> bs!24717 m!821213))

(declare-fun m!821461 () Bool)

(assert (=> bs!24717 m!821461))

(assert (=> b!881271 d!108999))

(declare-fun b!881453 () Bool)

(declare-fun e!490581 () Bool)

(declare-fun call!38947 () Bool)

(assert (=> b!881453 (= e!490581 call!38947)))

(declare-fun bm!38944 () Bool)

(declare-fun c!92887 () Bool)

(assert (=> bm!38944 (= call!38947 (arrayNoDuplicates!0 _keys!868 (bvadd from!1053 #b00000000000000000000000000000001) (ite c!92887 (Cons!17614 (select (arr!24685 _keys!868) from!1053) Nil!17615) Nil!17615)))))

(declare-fun b!881454 () Bool)

(declare-fun e!490580 () Bool)

(declare-fun e!490583 () Bool)

(assert (=> b!881454 (= e!490580 e!490583)))

(declare-fun res!598925 () Bool)

(assert (=> b!881454 (=> (not res!598925) (not e!490583))))

(declare-fun e!490582 () Bool)

(assert (=> b!881454 (= res!598925 (not e!490582))))

(declare-fun res!598927 () Bool)

(assert (=> b!881454 (=> (not res!598927) (not e!490582))))

(assert (=> b!881454 (= res!598927 (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)))))

(declare-fun d!109001 () Bool)

(declare-fun res!598926 () Bool)

(assert (=> d!109001 (=> res!598926 e!490580)))

(assert (=> d!109001 (= res!598926 (bvsge from!1053 (size!25126 _keys!868)))))

(assert (=> d!109001 (= (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17615) e!490580)))

(declare-fun b!881455 () Bool)

(assert (=> b!881455 (= e!490583 e!490581)))

(assert (=> b!881455 (= c!92887 (validKeyInArray!0 (select (arr!24685 _keys!868) from!1053)))))

(declare-fun b!881456 () Bool)

(assert (=> b!881456 (= e!490581 call!38947)))

(declare-fun b!881457 () Bool)

(assert (=> b!881457 (= e!490582 (contains!4261 Nil!17615 (select (arr!24685 _keys!868) from!1053)))))

(assert (= (and d!109001 (not res!598926)) b!881454))

(assert (= (and b!881454 res!598927) b!881457))

(assert (= (and b!881454 res!598925) b!881455))

(assert (= (and b!881455 c!92887) b!881453))

(assert (= (and b!881455 (not c!92887)) b!881456))

(assert (= (or b!881453 b!881456) bm!38944))

(assert (=> bm!38944 m!821243))

(declare-fun m!821463 () Bool)

(assert (=> bm!38944 m!821463))

(assert (=> b!881454 m!821243))

(assert (=> b!881454 m!821243))

(assert (=> b!881454 m!821245))

(assert (=> b!881455 m!821243))

(assert (=> b!881455 m!821243))

(assert (=> b!881455 m!821245))

(assert (=> b!881457 m!821243))

(assert (=> b!881457 m!821243))

(declare-fun m!821465 () Bool)

(assert (=> b!881457 m!821465))

(assert (=> b!881271 d!109001))

(declare-fun d!109003 () Bool)

(assert (=> d!109003 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17615)))

(declare-fun lt!398704 () Unit!30050)

(declare-fun choose!39 (array!51334 (_ BitVec 32) (_ BitVec 32)) Unit!30050)

(assert (=> d!109003 (= lt!398704 (choose!39 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> d!109003 (bvslt (size!25126 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!109003 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053) lt!398704)))

(declare-fun bs!24718 () Bool)

(assert (= bs!24718 d!109003))

(assert (=> bs!24718 m!821217))

(declare-fun m!821467 () Bool)

(assert (=> bs!24718 m!821467))

(assert (=> b!881271 d!109003))

(declare-fun d!109005 () Bool)

(assert (=> d!109005 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!881266 d!109005))

(declare-fun d!109007 () Bool)

(assert (=> d!109007 (= (array_inv!19426 _keys!868) (bvsge (size!25126 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74794 d!109007))

(declare-fun d!109009 () Bool)

(assert (=> d!109009 (= (array_inv!19427 _values!688) (bvsge (size!25127 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74794 d!109009))

(declare-fun condMapEmpty!28053 () Bool)

(declare-fun mapDefault!28053 () ValueCell!8367)

(assert (=> mapNonEmpty!28047 (= condMapEmpty!28053 (= mapRest!28047 ((as const (Array (_ BitVec 32) ValueCell!8367)) mapDefault!28053)))))

(declare-fun e!490588 () Bool)

(declare-fun mapRes!28053 () Bool)

(assert (=> mapNonEmpty!28047 (= tp!53801 (and e!490588 mapRes!28053))))

(declare-fun mapNonEmpty!28053 () Bool)

(declare-fun tp!53811 () Bool)

(declare-fun e!490589 () Bool)

(assert (=> mapNonEmpty!28053 (= mapRes!28053 (and tp!53811 e!490589))))

(declare-fun mapKey!28053 () (_ BitVec 32))

(declare-fun mapValue!28053 () ValueCell!8367)

(declare-fun mapRest!28053 () (Array (_ BitVec 32) ValueCell!8367))

(assert (=> mapNonEmpty!28053 (= mapRest!28047 (store mapRest!28053 mapKey!28053 mapValue!28053))))

(declare-fun b!881465 () Bool)

(assert (=> b!881465 (= e!490588 tp_is_empty!17613)))

(declare-fun mapIsEmpty!28053 () Bool)

(assert (=> mapIsEmpty!28053 mapRes!28053))

(declare-fun b!881464 () Bool)

(assert (=> b!881464 (= e!490589 tp_is_empty!17613)))

(assert (= (and mapNonEmpty!28047 condMapEmpty!28053) mapIsEmpty!28053))

(assert (= (and mapNonEmpty!28047 (not condMapEmpty!28053)) mapNonEmpty!28053))

(assert (= (and mapNonEmpty!28053 ((_ is ValueCellFull!8367) mapValue!28053)) b!881464))

(assert (= (and mapNonEmpty!28047 ((_ is ValueCellFull!8367) mapDefault!28053)) b!881465))

(declare-fun m!821469 () Bool)

(assert (=> mapNonEmpty!28053 m!821469))

(declare-fun b_lambda!12597 () Bool)

(assert (= b_lambda!12583 (or (and start!74794 b_free!15369) b_lambda!12597)))

(declare-fun b_lambda!12599 () Bool)

(assert (= b_lambda!12593 (or (and start!74794 b_free!15369) b_lambda!12599)))

(declare-fun b_lambda!12601 () Bool)

(assert (= b_lambda!12581 (or (and start!74794 b_free!15369) b_lambda!12601)))

(declare-fun b_lambda!12603 () Bool)

(assert (= b_lambda!12585 (or (and start!74794 b_free!15369) b_lambda!12603)))

(declare-fun b_lambda!12605 () Bool)

(assert (= b_lambda!12589 (or (and start!74794 b_free!15369) b_lambda!12605)))

(declare-fun b_lambda!12607 () Bool)

(assert (= b_lambda!12587 (or (and start!74794 b_free!15369) b_lambda!12607)))

(declare-fun b_lambda!12609 () Bool)

(assert (= b_lambda!12595 (or (and start!74794 b_free!15369) b_lambda!12609)))

(declare-fun b_lambda!12611 () Bool)

(assert (= b_lambda!12591 (or (and start!74794 b_free!15369) b_lambda!12611)))

(check-sat (not b!881385) (not b!881396) (not b!881395) (not b_lambda!12599) (not b!881406) tp_is_empty!17613 (not d!109003) (not b!881429) (not b!881356) (not mapNonEmpty!28053) (not b!881446) (not b!881413) (not d!108999) (not b_lambda!12611) (not b!881443) (not b!881382) (not b!881431) (not bm!38935) (not b!881408) (not b!881411) (not b!881418) (not d!108983) (not b!881405) (not d!108977) (not b!881374) (not b!881384) (not b!881376) (not b!881386) (not b_lambda!12579) (not b!881401) (not b!881394) (not b!881399) (not b!881457) (not b!881352) (not d!108989) (not b!881381) (not b!881452) (not bm!38936) (not b!881454) (not b!881415) (not bm!38943) (not b_lambda!12609) (not b!881375) (not b!881404) (not b_lambda!12601) (not d!108987) (not b!881355) (not d!108973) (not b!881389) (not b!881403) (not b!881388) (not b!881455) (not b!881417) (not b!881379) (not b_lambda!12597) (not b_next!15369) (not b_lambda!12603) (not b!881383) (not b_lambda!12607) (not b!881349) (not bm!38940) (not b!881367) (not b!881358) (not d!108979) (not bm!38944) (not b!881354) (not d!108981) (not b!881444) (not b!881357) (not b!881402) (not bm!38937) (not bm!38934) (not bm!38933) (not b!881416) (not b!881414) (not b!881359) (not bm!38928) b_and!25429 (not b_lambda!12605))
(check-sat b_and!25429 (not b_next!15369))

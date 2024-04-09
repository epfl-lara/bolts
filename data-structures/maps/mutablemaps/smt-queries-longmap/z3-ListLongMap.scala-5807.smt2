; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74944 () Bool)

(assert start!74944)

(declare-fun b_free!15435 () Bool)

(declare-fun b_next!15435 () Bool)

(assert (=> start!74944 (= b_free!15435 (not b_next!15435))))

(declare-fun tp!54009 () Bool)

(declare-fun b_and!25587 () Bool)

(assert (=> start!74944 (= tp!54009 b_and!25587)))

(declare-fun mapIsEmpty!28155 () Bool)

(declare-fun mapRes!28155 () Bool)

(assert (=> mapIsEmpty!28155 mapRes!28155))

(declare-fun b!883264 () Bool)

(declare-fun res!600187 () Bool)

(declare-fun e!491603 () Bool)

(assert (=> b!883264 (=> (not res!600187) (not e!491603))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51468 0))(
  ( (array!51469 (arr!24749 (Array (_ BitVec 32) (_ BitVec 64))) (size!25190 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51468)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883264 (= res!600187 (and (= (select (arr!24749 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!883265 () Bool)

(declare-fun res!600193 () Bool)

(assert (=> b!883265 (=> (not res!600193) (not e!491603))))

(declare-datatypes ((List!17672 0))(
  ( (Nil!17669) (Cons!17668 (h!18799 (_ BitVec 64)) (t!24917 List!17672)) )
))
(declare-fun arrayNoDuplicates!0 (array!51468 (_ BitVec 32) List!17672) Bool)

(assert (=> b!883265 (= res!600193 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17669))))

(declare-fun b!883266 () Bool)

(declare-fun res!600190 () Bool)

(assert (=> b!883266 (=> (not res!600190) (not e!491603))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28619 0))(
  ( (V!28620 (val!8887 Int)) )
))
(declare-datatypes ((ValueCell!8400 0))(
  ( (ValueCellFull!8400 (v!11352 V!28619)) (EmptyCell!8400) )
))
(declare-datatypes ((array!51470 0))(
  ( (array!51471 (arr!24750 (Array (_ BitVec 32) ValueCell!8400)) (size!25191 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51470)

(assert (=> b!883266 (= res!600190 (and (= (size!25191 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25190 _keys!868) (size!25191 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883267 () Bool)

(declare-fun e!491606 () Bool)

(declare-fun e!491604 () Bool)

(assert (=> b!883267 (= e!491606 (and e!491604 mapRes!28155))))

(declare-fun condMapEmpty!28155 () Bool)

(declare-fun mapDefault!28155 () ValueCell!8400)

(assert (=> b!883267 (= condMapEmpty!28155 (= (arr!24750 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8400)) mapDefault!28155)))))

(declare-fun mapNonEmpty!28155 () Bool)

(declare-fun tp!54008 () Bool)

(declare-fun e!491599 () Bool)

(assert (=> mapNonEmpty!28155 (= mapRes!28155 (and tp!54008 e!491599))))

(declare-fun mapValue!28155 () ValueCell!8400)

(declare-fun mapKey!28155 () (_ BitVec 32))

(declare-fun mapRest!28155 () (Array (_ BitVec 32) ValueCell!8400))

(assert (=> mapNonEmpty!28155 (= (arr!24750 _values!688) (store mapRest!28155 mapKey!28155 mapValue!28155))))

(declare-fun b!883268 () Bool)

(declare-fun e!491602 () Bool)

(declare-fun e!491600 () Bool)

(assert (=> b!883268 (= e!491602 (not e!491600))))

(declare-fun res!600188 () Bool)

(assert (=> b!883268 (=> res!600188 e!491600)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883268 (= res!600188 (not (validKeyInArray!0 (select (arr!24749 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11806 0))(
  ( (tuple2!11807 (_1!5913 (_ BitVec 64)) (_2!5913 V!28619)) )
))
(declare-datatypes ((List!17673 0))(
  ( (Nil!17670) (Cons!17669 (h!18800 tuple2!11806) (t!24918 List!17673)) )
))
(declare-datatypes ((ListLongMap!10589 0))(
  ( (ListLongMap!10590 (toList!5310 List!17673)) )
))
(declare-fun lt!399774 () ListLongMap!10589)

(declare-fun lt!399771 () ListLongMap!10589)

(assert (=> b!883268 (= lt!399774 lt!399771)))

(declare-fun lt!399780 () ListLongMap!10589)

(declare-fun v!557 () V!28619)

(declare-fun +!2514 (ListLongMap!10589 tuple2!11806) ListLongMap!10589)

(assert (=> b!883268 (= lt!399771 (+!2514 lt!399780 (tuple2!11807 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28619)

(declare-fun zeroValue!654 () V!28619)

(declare-fun lt!399777 () array!51470)

(declare-fun getCurrentListMapNoExtraKeys!3267 (array!51468 array!51470 (_ BitVec 32) (_ BitVec 32) V!28619 V!28619 (_ BitVec 32) Int) ListLongMap!10589)

(assert (=> b!883268 (= lt!399774 (getCurrentListMapNoExtraKeys!3267 _keys!868 lt!399777 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883268 (= lt!399780 (getCurrentListMapNoExtraKeys!3267 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30110 0))(
  ( (Unit!30111) )
))
(declare-fun lt!399772 () Unit!30110)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!739 (array!51468 array!51470 (_ BitVec 32) (_ BitVec 32) V!28619 V!28619 (_ BitVec 32) (_ BitVec 64) V!28619 (_ BitVec 32) Int) Unit!30110)

(assert (=> b!883268 (= lt!399772 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!739 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883269 () Bool)

(declare-fun res!600191 () Bool)

(assert (=> b!883269 (=> (not res!600191) (not e!491603))))

(assert (=> b!883269 (= res!600191 (validKeyInArray!0 k0!854))))

(declare-fun b!883270 () Bool)

(assert (=> b!883270 (= e!491600 (not (= (select (arr!24749 _keys!868) from!1053) k0!854)))))

(declare-fun lt!399776 () Unit!30110)

(declare-fun e!491601 () Unit!30110)

(assert (=> b!883270 (= lt!399776 e!491601)))

(declare-fun c!92976 () Bool)

(assert (=> b!883270 (= c!92976 (= (select (arr!24749 _keys!868) from!1053) k0!854))))

(declare-fun lt!399775 () ListLongMap!10589)

(declare-fun get!13052 (ValueCell!8400 V!28619) V!28619)

(declare-fun dynLambda!1269 (Int (_ BitVec 64)) V!28619)

(assert (=> b!883270 (= lt!399775 (+!2514 lt!399771 (tuple2!11807 (select (arr!24749 _keys!868) from!1053) (get!13052 (select (arr!24750 _values!688) from!1053) (dynLambda!1269 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883271 () Bool)

(assert (=> b!883271 (= e!491603 e!491602)))

(declare-fun res!600195 () Bool)

(assert (=> b!883271 (=> (not res!600195) (not e!491602))))

(assert (=> b!883271 (= res!600195 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!883271 (= lt!399775 (getCurrentListMapNoExtraKeys!3267 _keys!868 lt!399777 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!883271 (= lt!399777 (array!51471 (store (arr!24750 _values!688) i!612 (ValueCellFull!8400 v!557)) (size!25191 _values!688)))))

(declare-fun lt!399778 () ListLongMap!10589)

(assert (=> b!883271 (= lt!399778 (getCurrentListMapNoExtraKeys!3267 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883272 () Bool)

(declare-fun res!600192 () Bool)

(assert (=> b!883272 (=> (not res!600192) (not e!491603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51468 (_ BitVec 32)) Bool)

(assert (=> b!883272 (= res!600192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!600194 () Bool)

(assert (=> start!74944 (=> (not res!600194) (not e!491603))))

(assert (=> start!74944 (= res!600194 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25190 _keys!868))))))

(assert (=> start!74944 e!491603))

(declare-fun tp_is_empty!17679 () Bool)

(assert (=> start!74944 tp_is_empty!17679))

(assert (=> start!74944 true))

(assert (=> start!74944 tp!54009))

(declare-fun array_inv!19468 (array!51468) Bool)

(assert (=> start!74944 (array_inv!19468 _keys!868)))

(declare-fun array_inv!19469 (array!51470) Bool)

(assert (=> start!74944 (and (array_inv!19469 _values!688) e!491606)))

(declare-fun b!883273 () Bool)

(declare-fun res!600196 () Bool)

(assert (=> b!883273 (=> (not res!600196) (not e!491603))))

(assert (=> b!883273 (= res!600196 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25190 _keys!868))))))

(declare-fun b!883274 () Bool)

(declare-fun Unit!30112 () Unit!30110)

(assert (=> b!883274 (= e!491601 Unit!30112)))

(declare-fun lt!399781 () Unit!30110)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51468 (_ BitVec 32) (_ BitVec 32)) Unit!30110)

(assert (=> b!883274 (= lt!399781 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!883274 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17669)))

(declare-fun lt!399773 () Unit!30110)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51468 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30110)

(assert (=> b!883274 (= lt!399773 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883274 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399779 () Unit!30110)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51468 (_ BitVec 64) (_ BitVec 32) List!17672) Unit!30110)

(assert (=> b!883274 (= lt!399779 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17669))))

(assert (=> b!883274 false))

(declare-fun b!883275 () Bool)

(assert (=> b!883275 (= e!491599 tp_is_empty!17679)))

(declare-fun b!883276 () Bool)

(assert (=> b!883276 (= e!491604 tp_is_empty!17679)))

(declare-fun b!883277 () Bool)

(declare-fun res!600189 () Bool)

(assert (=> b!883277 (=> (not res!600189) (not e!491603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883277 (= res!600189 (validMask!0 mask!1196))))

(declare-fun b!883278 () Bool)

(declare-fun Unit!30113 () Unit!30110)

(assert (=> b!883278 (= e!491601 Unit!30113)))

(assert (= (and start!74944 res!600194) b!883277))

(assert (= (and b!883277 res!600189) b!883266))

(assert (= (and b!883266 res!600190) b!883272))

(assert (= (and b!883272 res!600192) b!883265))

(assert (= (and b!883265 res!600193) b!883273))

(assert (= (and b!883273 res!600196) b!883269))

(assert (= (and b!883269 res!600191) b!883264))

(assert (= (and b!883264 res!600187) b!883271))

(assert (= (and b!883271 res!600195) b!883268))

(assert (= (and b!883268 (not res!600188)) b!883270))

(assert (= (and b!883270 c!92976) b!883274))

(assert (= (and b!883270 (not c!92976)) b!883278))

(assert (= (and b!883267 condMapEmpty!28155) mapIsEmpty!28155))

(assert (= (and b!883267 (not condMapEmpty!28155)) mapNonEmpty!28155))

(get-info :version)

(assert (= (and mapNonEmpty!28155 ((_ is ValueCellFull!8400) mapValue!28155)) b!883275))

(assert (= (and b!883267 ((_ is ValueCellFull!8400) mapDefault!28155)) b!883276))

(assert (= start!74944 b!883267))

(declare-fun b_lambda!12743 () Bool)

(assert (=> (not b_lambda!12743) (not b!883270)))

(declare-fun t!24916 () Bool)

(declare-fun tb!5101 () Bool)

(assert (=> (and start!74944 (= defaultEntry!696 defaultEntry!696) t!24916) tb!5101))

(declare-fun result!9829 () Bool)

(assert (=> tb!5101 (= result!9829 tp_is_empty!17679)))

(assert (=> b!883270 t!24916))

(declare-fun b_and!25589 () Bool)

(assert (= b_and!25587 (and (=> t!24916 result!9829) b_and!25589)))

(declare-fun m!823429 () Bool)

(assert (=> b!883264 m!823429))

(declare-fun m!823431 () Bool)

(assert (=> b!883274 m!823431))

(declare-fun m!823433 () Bool)

(assert (=> b!883274 m!823433))

(declare-fun m!823435 () Bool)

(assert (=> b!883274 m!823435))

(declare-fun m!823437 () Bool)

(assert (=> b!883274 m!823437))

(declare-fun m!823439 () Bool)

(assert (=> b!883274 m!823439))

(declare-fun m!823441 () Bool)

(assert (=> b!883277 m!823441))

(declare-fun m!823443 () Bool)

(assert (=> start!74944 m!823443))

(declare-fun m!823445 () Bool)

(assert (=> start!74944 m!823445))

(declare-fun m!823447 () Bool)

(assert (=> b!883270 m!823447))

(declare-fun m!823449 () Bool)

(assert (=> b!883270 m!823449))

(declare-fun m!823451 () Bool)

(assert (=> b!883270 m!823451))

(declare-fun m!823453 () Bool)

(assert (=> b!883270 m!823453))

(assert (=> b!883270 m!823449))

(declare-fun m!823455 () Bool)

(assert (=> b!883270 m!823455))

(assert (=> b!883270 m!823451))

(declare-fun m!823457 () Bool)

(assert (=> b!883265 m!823457))

(declare-fun m!823459 () Bool)

(assert (=> b!883268 m!823459))

(declare-fun m!823461 () Bool)

(assert (=> b!883268 m!823461))

(assert (=> b!883268 m!823455))

(declare-fun m!823463 () Bool)

(assert (=> b!883268 m!823463))

(assert (=> b!883268 m!823455))

(declare-fun m!823465 () Bool)

(assert (=> b!883268 m!823465))

(declare-fun m!823467 () Bool)

(assert (=> b!883268 m!823467))

(declare-fun m!823469 () Bool)

(assert (=> b!883271 m!823469))

(declare-fun m!823471 () Bool)

(assert (=> b!883271 m!823471))

(declare-fun m!823473 () Bool)

(assert (=> b!883271 m!823473))

(declare-fun m!823475 () Bool)

(assert (=> mapNonEmpty!28155 m!823475))

(declare-fun m!823477 () Bool)

(assert (=> b!883269 m!823477))

(declare-fun m!823479 () Bool)

(assert (=> b!883272 m!823479))

(check-sat tp_is_empty!17679 (not b!883274) (not b!883272) (not b_next!15435) (not start!74944) (not b!883277) (not b!883268) (not b!883270) (not mapNonEmpty!28155) (not b!883271) b_and!25589 (not b!883269) (not b!883265) (not b_lambda!12743))
(check-sat b_and!25589 (not b_next!15435))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72574 () Bool)

(assert start!72574)

(declare-fun b_free!13731 () Bool)

(declare-fun b_next!13731 () Bool)

(assert (=> start!72574 (= b_free!13731 (not b_next!13731))))

(declare-fun tp!48293 () Bool)

(declare-fun b_and!22835 () Bool)

(assert (=> start!72574 (= tp!48293 b_and!22835)))

(declare-fun b!841916 () Bool)

(declare-fun res!572376 () Bool)

(declare-fun e!469639 () Bool)

(assert (=> b!841916 (=> (not res!572376) (not e!469639))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47436 0))(
  ( (array!47437 (arr!22745 (Array (_ BitVec 32) (_ BitVec 64))) (size!23186 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47436)

(assert (=> b!841916 (= res!572376 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23186 _keys!868))))))

(declare-fun b!841917 () Bool)

(declare-fun e!469642 () Bool)

(declare-fun e!469643 () Bool)

(declare-fun mapRes!24995 () Bool)

(assert (=> b!841917 (= e!469642 (and e!469643 mapRes!24995))))

(declare-fun condMapEmpty!24995 () Bool)

(declare-datatypes ((V!25843 0))(
  ( (V!25844 (val!7846 Int)) )
))
(declare-datatypes ((ValueCell!7359 0))(
  ( (ValueCellFull!7359 (v!10267 V!25843)) (EmptyCell!7359) )
))
(declare-datatypes ((array!47438 0))(
  ( (array!47439 (arr!22746 (Array (_ BitVec 32) ValueCell!7359)) (size!23187 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47438)

(declare-fun mapDefault!24995 () ValueCell!7359)

(assert (=> b!841917 (= condMapEmpty!24995 (= (arr!22746 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7359)) mapDefault!24995)))))

(declare-fun v!557 () V!25843)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10434 0))(
  ( (tuple2!10435 (_1!5227 (_ BitVec 64)) (_2!5227 V!25843)) )
))
(declare-datatypes ((List!16258 0))(
  ( (Nil!16255) (Cons!16254 (h!17385 tuple2!10434) (t!22637 List!16258)) )
))
(declare-datatypes ((ListLongMap!9217 0))(
  ( (ListLongMap!9218 (toList!4624 List!16258)) )
))
(declare-fun call!37427 () ListLongMap!9217)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25843)

(declare-fun zeroValue!654 () V!25843)

(declare-fun bm!37423 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2613 (array!47436 array!47438 (_ BitVec 32) (_ BitVec 32) V!25843 V!25843 (_ BitVec 32) Int) ListLongMap!9217)

(assert (=> bm!37423 (= call!37427 (getCurrentListMapNoExtraKeys!2613 _keys!868 (array!47439 (store (arr!22746 _values!688) i!612 (ValueCellFull!7359 v!557)) (size!23187 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!37426 () ListLongMap!9217)

(declare-fun bm!37424 () Bool)

(assert (=> bm!37424 (= call!37426 (getCurrentListMapNoExtraKeys!2613 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24995 () Bool)

(declare-fun tp!48292 () Bool)

(declare-fun e!469640 () Bool)

(assert (=> mapNonEmpty!24995 (= mapRes!24995 (and tp!48292 e!469640))))

(declare-fun mapValue!24995 () ValueCell!7359)

(declare-fun mapKey!24995 () (_ BitVec 32))

(declare-fun mapRest!24995 () (Array (_ BitVec 32) ValueCell!7359))

(assert (=> mapNonEmpty!24995 (= (arr!22746 _values!688) (store mapRest!24995 mapKey!24995 mapValue!24995))))

(declare-fun b!841918 () Bool)

(declare-fun res!572379 () Bool)

(assert (=> b!841918 (=> (not res!572379) (not e!469639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841918 (= res!572379 (validMask!0 mask!1196))))

(declare-fun e!469641 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun b!841920 () Bool)

(declare-fun +!2026 (ListLongMap!9217 tuple2!10434) ListLongMap!9217)

(assert (=> b!841920 (= e!469641 (= call!37427 (+!2026 call!37426 (tuple2!10435 k0!854 v!557))))))

(declare-fun b!841921 () Bool)

(declare-fun res!572378 () Bool)

(assert (=> b!841921 (=> (not res!572378) (not e!469639))))

(assert (=> b!841921 (= res!572378 (and (= (size!23187 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23186 _keys!868) (size!23187 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841922 () Bool)

(assert (=> b!841922 (= e!469639 (not true))))

(assert (=> b!841922 e!469641))

(declare-fun c!91374 () Bool)

(assert (=> b!841922 (= c!91374 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28906 0))(
  ( (Unit!28907) )
))
(declare-fun lt!380907 () Unit!28906)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!302 (array!47436 array!47438 (_ BitVec 32) (_ BitVec 32) V!25843 V!25843 (_ BitVec 32) (_ BitVec 64) V!25843 (_ BitVec 32) Int) Unit!28906)

(assert (=> b!841922 (= lt!380907 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!302 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841923 () Bool)

(declare-fun res!572375 () Bool)

(assert (=> b!841923 (=> (not res!572375) (not e!469639))))

(declare-datatypes ((List!16259 0))(
  ( (Nil!16256) (Cons!16255 (h!17386 (_ BitVec 64)) (t!22638 List!16259)) )
))
(declare-fun arrayNoDuplicates!0 (array!47436 (_ BitVec 32) List!16259) Bool)

(assert (=> b!841923 (= res!572375 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16256))))

(declare-fun b!841924 () Bool)

(declare-fun res!572377 () Bool)

(assert (=> b!841924 (=> (not res!572377) (not e!469639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841924 (= res!572377 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!24995 () Bool)

(assert (=> mapIsEmpty!24995 mapRes!24995))

(declare-fun b!841919 () Bool)

(declare-fun res!572382 () Bool)

(assert (=> b!841919 (=> (not res!572382) (not e!469639))))

(assert (=> b!841919 (= res!572382 (and (= (select (arr!22745 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23186 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun res!572380 () Bool)

(assert (=> start!72574 (=> (not res!572380) (not e!469639))))

(assert (=> start!72574 (= res!572380 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23186 _keys!868))))))

(assert (=> start!72574 e!469639))

(declare-fun tp_is_empty!15597 () Bool)

(assert (=> start!72574 tp_is_empty!15597))

(assert (=> start!72574 true))

(assert (=> start!72574 tp!48293))

(declare-fun array_inv!18080 (array!47436) Bool)

(assert (=> start!72574 (array_inv!18080 _keys!868)))

(declare-fun array_inv!18081 (array!47438) Bool)

(assert (=> start!72574 (and (array_inv!18081 _values!688) e!469642)))

(declare-fun b!841925 () Bool)

(assert (=> b!841925 (= e!469643 tp_is_empty!15597)))

(declare-fun b!841926 () Bool)

(assert (=> b!841926 (= e!469641 (= call!37427 call!37426))))

(declare-fun b!841927 () Bool)

(assert (=> b!841927 (= e!469640 tp_is_empty!15597)))

(declare-fun b!841928 () Bool)

(declare-fun res!572381 () Bool)

(assert (=> b!841928 (=> (not res!572381) (not e!469639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47436 (_ BitVec 32)) Bool)

(assert (=> b!841928 (= res!572381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72574 res!572380) b!841918))

(assert (= (and b!841918 res!572379) b!841921))

(assert (= (and b!841921 res!572378) b!841928))

(assert (= (and b!841928 res!572381) b!841923))

(assert (= (and b!841923 res!572375) b!841916))

(assert (= (and b!841916 res!572376) b!841924))

(assert (= (and b!841924 res!572377) b!841919))

(assert (= (and b!841919 res!572382) b!841922))

(assert (= (and b!841922 c!91374) b!841920))

(assert (= (and b!841922 (not c!91374)) b!841926))

(assert (= (or b!841920 b!841926) bm!37423))

(assert (= (or b!841920 b!841926) bm!37424))

(assert (= (and b!841917 condMapEmpty!24995) mapIsEmpty!24995))

(assert (= (and b!841917 (not condMapEmpty!24995)) mapNonEmpty!24995))

(get-info :version)

(assert (= (and mapNonEmpty!24995 ((_ is ValueCellFull!7359) mapValue!24995)) b!841927))

(assert (= (and b!841917 ((_ is ValueCellFull!7359) mapDefault!24995)) b!841925))

(assert (= start!72574 b!841917))

(declare-fun m!785257 () Bool)

(assert (=> b!841928 m!785257))

(declare-fun m!785259 () Bool)

(assert (=> b!841919 m!785259))

(declare-fun m!785261 () Bool)

(assert (=> b!841922 m!785261))

(declare-fun m!785263 () Bool)

(assert (=> b!841920 m!785263))

(declare-fun m!785265 () Bool)

(assert (=> mapNonEmpty!24995 m!785265))

(declare-fun m!785267 () Bool)

(assert (=> b!841924 m!785267))

(declare-fun m!785269 () Bool)

(assert (=> bm!37424 m!785269))

(declare-fun m!785271 () Bool)

(assert (=> b!841923 m!785271))

(declare-fun m!785273 () Bool)

(assert (=> b!841918 m!785273))

(declare-fun m!785275 () Bool)

(assert (=> start!72574 m!785275))

(declare-fun m!785277 () Bool)

(assert (=> start!72574 m!785277))

(declare-fun m!785279 () Bool)

(assert (=> bm!37423 m!785279))

(declare-fun m!785281 () Bool)

(assert (=> bm!37423 m!785281))

(check-sat (not b_next!13731) (not bm!37423) b_and!22835 (not mapNonEmpty!24995) (not bm!37424) (not start!72574) tp_is_empty!15597 (not b!841918) (not b!841923) (not b!841920) (not b!841924) (not b!841922) (not b!841928))
(check-sat b_and!22835 (not b_next!13731))

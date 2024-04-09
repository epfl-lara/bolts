; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72550 () Bool)

(assert start!72550)

(declare-fun b_free!13707 () Bool)

(declare-fun b_next!13707 () Bool)

(assert (=> start!72550 (= b_free!13707 (not b_next!13707))))

(declare-fun tp!48220 () Bool)

(declare-fun b_and!22811 () Bool)

(assert (=> start!72550 (= tp!48220 b_and!22811)))

(declare-fun mapIsEmpty!24959 () Bool)

(declare-fun mapRes!24959 () Bool)

(assert (=> mapIsEmpty!24959 mapRes!24959))

(declare-fun b!841448 () Bool)

(declare-fun e!469425 () Bool)

(declare-fun e!469426 () Bool)

(assert (=> b!841448 (= e!469425 (and e!469426 mapRes!24959))))

(declare-fun condMapEmpty!24959 () Bool)

(declare-datatypes ((V!25811 0))(
  ( (V!25812 (val!7834 Int)) )
))
(declare-datatypes ((ValueCell!7347 0))(
  ( (ValueCellFull!7347 (v!10255 V!25811)) (EmptyCell!7347) )
))
(declare-datatypes ((array!47392 0))(
  ( (array!47393 (arr!22723 (Array (_ BitVec 32) ValueCell!7347)) (size!23164 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47392)

(declare-fun mapDefault!24959 () ValueCell!7347)

(assert (=> b!841448 (= condMapEmpty!24959 (= (arr!22723 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7347)) mapDefault!24959)))))

(declare-fun b!841449 () Bool)

(declare-fun res!572089 () Bool)

(declare-fun e!469423 () Bool)

(assert (=> b!841449 (=> (not res!572089) (not e!469423))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47394 0))(
  ( (array!47395 (arr!22724 (Array (_ BitVec 32) (_ BitVec 64))) (size!23165 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47394)

(assert (=> b!841449 (= res!572089 (and (= (size!23164 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23165 _keys!868) (size!23164 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841450 () Bool)

(declare-fun e!469428 () Bool)

(declare-fun tp_is_empty!15573 () Bool)

(assert (=> b!841450 (= e!469428 tp_is_empty!15573)))

(declare-fun res!572093 () Bool)

(assert (=> start!72550 (=> (not res!572093) (not e!469423))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72550 (= res!572093 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23165 _keys!868))))))

(assert (=> start!72550 e!469423))

(assert (=> start!72550 tp_is_empty!15573))

(assert (=> start!72550 true))

(assert (=> start!72550 tp!48220))

(declare-fun array_inv!18068 (array!47394) Bool)

(assert (=> start!72550 (array_inv!18068 _keys!868)))

(declare-fun array_inv!18069 (array!47392) Bool)

(assert (=> start!72550 (and (array_inv!18069 _values!688) e!469425)))

(declare-fun mapNonEmpty!24959 () Bool)

(declare-fun tp!48221 () Bool)

(assert (=> mapNonEmpty!24959 (= mapRes!24959 (and tp!48221 e!469428))))

(declare-fun mapRest!24959 () (Array (_ BitVec 32) ValueCell!7347))

(declare-fun mapValue!24959 () ValueCell!7347)

(declare-fun mapKey!24959 () (_ BitVec 32))

(assert (=> mapNonEmpty!24959 (= (arr!22723 _values!688) (store mapRest!24959 mapKey!24959 mapValue!24959))))

(declare-fun b!841451 () Bool)

(declare-fun res!572088 () Bool)

(assert (=> b!841451 (=> (not res!572088) (not e!469423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47394 (_ BitVec 32)) Bool)

(assert (=> b!841451 (= res!572088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841452 () Bool)

(declare-fun res!572090 () Bool)

(assert (=> b!841452 (=> (not res!572090) (not e!469423))))

(declare-datatypes ((List!16241 0))(
  ( (Nil!16238) (Cons!16237 (h!17368 (_ BitVec 64)) (t!22620 List!16241)) )
))
(declare-fun arrayNoDuplicates!0 (array!47394 (_ BitVec 32) List!16241) Bool)

(assert (=> b!841452 (= res!572090 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16238))))

(declare-fun b!841453 () Bool)

(assert (=> b!841453 (= e!469426 tp_is_empty!15573)))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37351 () Bool)

(declare-fun minValue!654 () V!25811)

(declare-fun zeroValue!654 () V!25811)

(declare-datatypes ((tuple2!10418 0))(
  ( (tuple2!10419 (_1!5219 (_ BitVec 64)) (_2!5219 V!25811)) )
))
(declare-datatypes ((List!16242 0))(
  ( (Nil!16239) (Cons!16238 (h!17369 tuple2!10418) (t!22621 List!16242)) )
))
(declare-datatypes ((ListLongMap!9201 0))(
  ( (ListLongMap!9202 (toList!4616 List!16242)) )
))
(declare-fun call!37355 () ListLongMap!9201)

(declare-fun getCurrentListMapNoExtraKeys!2606 (array!47394 array!47392 (_ BitVec 32) (_ BitVec 32) V!25811 V!25811 (_ BitVec 32) Int) ListLongMap!9201)

(assert (=> bm!37351 (= call!37355 (getCurrentListMapNoExtraKeys!2606 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841454 () Bool)

(declare-fun e!469427 () Bool)

(declare-fun call!37354 () ListLongMap!9201)

(assert (=> b!841454 (= e!469427 (= call!37354 call!37355))))

(declare-fun b!841455 () Bool)

(declare-fun res!572094 () Bool)

(assert (=> b!841455 (=> (not res!572094) (not e!469423))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841455 (= res!572094 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23165 _keys!868))))))

(declare-fun b!841456 () Bool)

(declare-fun res!572091 () Bool)

(assert (=> b!841456 (=> (not res!572091) (not e!469423))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!841456 (= res!572091 (and (= (select (arr!22724 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23165 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841457 () Bool)

(declare-fun res!572087 () Bool)

(assert (=> b!841457 (=> (not res!572087) (not e!469423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841457 (= res!572087 (validKeyInArray!0 k0!854))))

(declare-fun b!841458 () Bool)

(declare-fun res!572092 () Bool)

(assert (=> b!841458 (=> (not res!572092) (not e!469423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841458 (= res!572092 (validMask!0 mask!1196))))

(declare-fun b!841459 () Bool)

(assert (=> b!841459 (= e!469423 (not true))))

(assert (=> b!841459 e!469427))

(declare-fun c!91338 () Bool)

(assert (=> b!841459 (= c!91338 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25811)

(declare-datatypes ((Unit!28896 0))(
  ( (Unit!28897) )
))
(declare-fun lt!380871 () Unit!28896)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!297 (array!47394 array!47392 (_ BitVec 32) (_ BitVec 32) V!25811 V!25811 (_ BitVec 32) (_ BitVec 64) V!25811 (_ BitVec 32) Int) Unit!28896)

(assert (=> b!841459 (= lt!380871 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!297 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841460 () Bool)

(declare-fun +!2019 (ListLongMap!9201 tuple2!10418) ListLongMap!9201)

(assert (=> b!841460 (= e!469427 (= call!37354 (+!2019 call!37355 (tuple2!10419 k0!854 v!557))))))

(declare-fun bm!37352 () Bool)

(assert (=> bm!37352 (= call!37354 (getCurrentListMapNoExtraKeys!2606 _keys!868 (array!47393 (store (arr!22723 _values!688) i!612 (ValueCellFull!7347 v!557)) (size!23164 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72550 res!572093) b!841458))

(assert (= (and b!841458 res!572092) b!841449))

(assert (= (and b!841449 res!572089) b!841451))

(assert (= (and b!841451 res!572088) b!841452))

(assert (= (and b!841452 res!572090) b!841455))

(assert (= (and b!841455 res!572094) b!841457))

(assert (= (and b!841457 res!572087) b!841456))

(assert (= (and b!841456 res!572091) b!841459))

(assert (= (and b!841459 c!91338) b!841460))

(assert (= (and b!841459 (not c!91338)) b!841454))

(assert (= (or b!841460 b!841454) bm!37352))

(assert (= (or b!841460 b!841454) bm!37351))

(assert (= (and b!841448 condMapEmpty!24959) mapIsEmpty!24959))

(assert (= (and b!841448 (not condMapEmpty!24959)) mapNonEmpty!24959))

(get-info :version)

(assert (= (and mapNonEmpty!24959 ((_ is ValueCellFull!7347) mapValue!24959)) b!841450))

(assert (= (and b!841448 ((_ is ValueCellFull!7347) mapDefault!24959)) b!841453))

(assert (= start!72550 b!841448))

(declare-fun m!784945 () Bool)

(assert (=> b!841451 m!784945))

(declare-fun m!784947 () Bool)

(assert (=> bm!37352 m!784947))

(declare-fun m!784949 () Bool)

(assert (=> bm!37352 m!784949))

(declare-fun m!784951 () Bool)

(assert (=> b!841457 m!784951))

(declare-fun m!784953 () Bool)

(assert (=> b!841452 m!784953))

(declare-fun m!784955 () Bool)

(assert (=> bm!37351 m!784955))

(declare-fun m!784957 () Bool)

(assert (=> b!841460 m!784957))

(declare-fun m!784959 () Bool)

(assert (=> b!841458 m!784959))

(declare-fun m!784961 () Bool)

(assert (=> b!841459 m!784961))

(declare-fun m!784963 () Bool)

(assert (=> start!72550 m!784963))

(declare-fun m!784965 () Bool)

(assert (=> start!72550 m!784965))

(declare-fun m!784967 () Bool)

(assert (=> b!841456 m!784967))

(declare-fun m!784969 () Bool)

(assert (=> mapNonEmpty!24959 m!784969))

(check-sat (not bm!37352) (not b!841451) (not mapNonEmpty!24959) (not b_next!13707) (not b!841460) (not b!841452) tp_is_empty!15573 (not b!841459) (not bm!37351) b_and!22811 (not b!841457) (not b!841458) (not start!72550))
(check-sat b_and!22811 (not b_next!13707))

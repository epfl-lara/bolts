; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72442 () Bool)

(assert start!72442)

(declare-fun b_free!13599 () Bool)

(declare-fun b_next!13599 () Bool)

(assert (=> start!72442 (= b_free!13599 (not b_next!13599))))

(declare-fun tp!47897 () Bool)

(declare-fun b_and!22703 () Bool)

(assert (=> start!72442 (= tp!47897 b_and!22703)))

(declare-fun b!839342 () Bool)

(declare-fun e!468452 () Bool)

(assert (=> b!839342 (= e!468452 (not true))))

(declare-fun e!468453 () Bool)

(assert (=> b!839342 e!468453))

(declare-fun c!91176 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839342 (= c!91176 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28826 0))(
  ( (Unit!28827) )
))
(declare-fun lt!380709 () Unit!28826)

(declare-datatypes ((V!25667 0))(
  ( (V!25668 (val!7780 Int)) )
))
(declare-fun v!557 () V!25667)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47182 0))(
  ( (array!47183 (arr!22618 (Array (_ BitVec 32) (_ BitVec 64))) (size!23059 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47182)

(declare-datatypes ((ValueCell!7293 0))(
  ( (ValueCellFull!7293 (v!10201 V!25667)) (EmptyCell!7293) )
))
(declare-datatypes ((array!47184 0))(
  ( (array!47185 (arr!22619 (Array (_ BitVec 32) ValueCell!7293)) (size!23060 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47184)

(declare-fun minValue!654 () V!25667)

(declare-fun zeroValue!654 () V!25667)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!262 (array!47182 array!47184 (_ BitVec 32) (_ BitVec 32) V!25667 V!25667 (_ BitVec 32) (_ BitVec 64) V!25667 (_ BitVec 32) Int) Unit!28826)

(assert (=> b!839342 (= lt!380709 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!262 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839343 () Bool)

(declare-fun res!570797 () Bool)

(assert (=> b!839343 (=> (not res!570797) (not e!468452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839343 (= res!570797 (validMask!0 mask!1196))))

(declare-fun b!839344 () Bool)

(declare-fun res!570794 () Bool)

(assert (=> b!839344 (=> (not res!570794) (not e!468452))))

(assert (=> b!839344 (= res!570794 (and (= (select (arr!22618 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23059 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10322 0))(
  ( (tuple2!10323 (_1!5171 (_ BitVec 64)) (_2!5171 V!25667)) )
))
(declare-datatypes ((List!16155 0))(
  ( (Nil!16152) (Cons!16151 (h!17282 tuple2!10322) (t!22534 List!16155)) )
))
(declare-datatypes ((ListLongMap!9105 0))(
  ( (ListLongMap!9106 (toList!4568 List!16155)) )
))
(declare-fun call!37031 () ListLongMap!9105)

(declare-fun bm!37027 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2561 (array!47182 array!47184 (_ BitVec 32) (_ BitVec 32) V!25667 V!25667 (_ BitVec 32) Int) ListLongMap!9105)

(assert (=> bm!37027 (= call!37031 (getCurrentListMapNoExtraKeys!2561 _keys!868 (array!47185 (store (arr!22619 _values!688) i!612 (ValueCellFull!7293 v!557)) (size!23060 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839345 () Bool)

(declare-fun e!468451 () Bool)

(declare-fun tp_is_empty!15465 () Bool)

(assert (=> b!839345 (= e!468451 tp_is_empty!15465)))

(declare-fun call!37030 () ListLongMap!9105)

(declare-fun bm!37028 () Bool)

(assert (=> bm!37028 (= call!37030 (getCurrentListMapNoExtraKeys!2561 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839346 () Bool)

(declare-fun res!570796 () Bool)

(assert (=> b!839346 (=> (not res!570796) (not e!468452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839346 (= res!570796 (validKeyInArray!0 k0!854))))

(declare-fun b!839347 () Bool)

(assert (=> b!839347 (= e!468453 (= call!37031 call!37030))))

(declare-fun b!839348 () Bool)

(declare-fun +!1987 (ListLongMap!9105 tuple2!10322) ListLongMap!9105)

(assert (=> b!839348 (= e!468453 (= call!37031 (+!1987 call!37030 (tuple2!10323 k0!854 v!557))))))

(declare-fun b!839349 () Bool)

(declare-fun res!570791 () Bool)

(assert (=> b!839349 (=> (not res!570791) (not e!468452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47182 (_ BitVec 32)) Bool)

(assert (=> b!839349 (= res!570791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839350 () Bool)

(declare-fun res!570798 () Bool)

(assert (=> b!839350 (=> (not res!570798) (not e!468452))))

(assert (=> b!839350 (= res!570798 (and (= (size!23060 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23059 _keys!868) (size!23060 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839351 () Bool)

(declare-fun res!570793 () Bool)

(assert (=> b!839351 (=> (not res!570793) (not e!468452))))

(declare-datatypes ((List!16156 0))(
  ( (Nil!16153) (Cons!16152 (h!17283 (_ BitVec 64)) (t!22535 List!16156)) )
))
(declare-fun arrayNoDuplicates!0 (array!47182 (_ BitVec 32) List!16156) Bool)

(assert (=> b!839351 (= res!570793 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16153))))

(declare-fun res!570795 () Bool)

(assert (=> start!72442 (=> (not res!570795) (not e!468452))))

(assert (=> start!72442 (= res!570795 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23059 _keys!868))))))

(assert (=> start!72442 e!468452))

(assert (=> start!72442 tp_is_empty!15465))

(assert (=> start!72442 true))

(assert (=> start!72442 tp!47897))

(declare-fun array_inv!17990 (array!47182) Bool)

(assert (=> start!72442 (array_inv!17990 _keys!868)))

(declare-fun e!468456 () Bool)

(declare-fun array_inv!17991 (array!47184) Bool)

(assert (=> start!72442 (and (array_inv!17991 _values!688) e!468456)))

(declare-fun mapNonEmpty!24797 () Bool)

(declare-fun mapRes!24797 () Bool)

(declare-fun tp!47896 () Bool)

(assert (=> mapNonEmpty!24797 (= mapRes!24797 (and tp!47896 e!468451))))

(declare-fun mapRest!24797 () (Array (_ BitVec 32) ValueCell!7293))

(declare-fun mapValue!24797 () ValueCell!7293)

(declare-fun mapKey!24797 () (_ BitVec 32))

(assert (=> mapNonEmpty!24797 (= (arr!22619 _values!688) (store mapRest!24797 mapKey!24797 mapValue!24797))))

(declare-fun mapIsEmpty!24797 () Bool)

(assert (=> mapIsEmpty!24797 mapRes!24797))

(declare-fun b!839352 () Bool)

(declare-fun e!468454 () Bool)

(assert (=> b!839352 (= e!468454 tp_is_empty!15465)))

(declare-fun b!839353 () Bool)

(assert (=> b!839353 (= e!468456 (and e!468454 mapRes!24797))))

(declare-fun condMapEmpty!24797 () Bool)

(declare-fun mapDefault!24797 () ValueCell!7293)

(assert (=> b!839353 (= condMapEmpty!24797 (= (arr!22619 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7293)) mapDefault!24797)))))

(declare-fun b!839354 () Bool)

(declare-fun res!570792 () Bool)

(assert (=> b!839354 (=> (not res!570792) (not e!468452))))

(assert (=> b!839354 (= res!570792 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23059 _keys!868))))))

(assert (= (and start!72442 res!570795) b!839343))

(assert (= (and b!839343 res!570797) b!839350))

(assert (= (and b!839350 res!570798) b!839349))

(assert (= (and b!839349 res!570791) b!839351))

(assert (= (and b!839351 res!570793) b!839354))

(assert (= (and b!839354 res!570792) b!839346))

(assert (= (and b!839346 res!570796) b!839344))

(assert (= (and b!839344 res!570794) b!839342))

(assert (= (and b!839342 c!91176) b!839348))

(assert (= (and b!839342 (not c!91176)) b!839347))

(assert (= (or b!839348 b!839347) bm!37027))

(assert (= (or b!839348 b!839347) bm!37028))

(assert (= (and b!839353 condMapEmpty!24797) mapIsEmpty!24797))

(assert (= (and b!839353 (not condMapEmpty!24797)) mapNonEmpty!24797))

(get-info :version)

(assert (= (and mapNonEmpty!24797 ((_ is ValueCellFull!7293) mapValue!24797)) b!839345))

(assert (= (and b!839353 ((_ is ValueCellFull!7293) mapDefault!24797)) b!839352))

(assert (= start!72442 b!839353))

(declare-fun m!783541 () Bool)

(assert (=> b!839343 m!783541))

(declare-fun m!783543 () Bool)

(assert (=> b!839344 m!783543))

(declare-fun m!783545 () Bool)

(assert (=> bm!37027 m!783545))

(declare-fun m!783547 () Bool)

(assert (=> bm!37027 m!783547))

(declare-fun m!783549 () Bool)

(assert (=> b!839342 m!783549))

(declare-fun m!783551 () Bool)

(assert (=> b!839346 m!783551))

(declare-fun m!783553 () Bool)

(assert (=> b!839351 m!783553))

(declare-fun m!783555 () Bool)

(assert (=> start!72442 m!783555))

(declare-fun m!783557 () Bool)

(assert (=> start!72442 m!783557))

(declare-fun m!783559 () Bool)

(assert (=> b!839349 m!783559))

(declare-fun m!783561 () Bool)

(assert (=> b!839348 m!783561))

(declare-fun m!783563 () Bool)

(assert (=> bm!37028 m!783563))

(declare-fun m!783565 () Bool)

(assert (=> mapNonEmpty!24797 m!783565))

(check-sat (not mapNonEmpty!24797) (not b!839342) (not b!839348) tp_is_empty!15465 (not b!839351) (not start!72442) (not b_next!13599) (not bm!37028) (not b!839346) (not bm!37027) (not b!839349) (not b!839343) b_and!22703)
(check-sat b_and!22703 (not b_next!13599))

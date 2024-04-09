; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72994 () Bool)

(assert start!72994)

(declare-fun b_free!13881 () Bool)

(declare-fun b_next!13881 () Bool)

(assert (=> start!72994 (= b_free!13881 (not b_next!13881))))

(declare-fun tp!49147 () Bool)

(declare-fun b_and!22985 () Bool)

(assert (=> start!72994 (= tp!49147 b_and!22985)))

(declare-fun b!847312 () Bool)

(declare-fun res!575810 () Bool)

(declare-fun e!472844 () Bool)

(assert (=> b!847312 (=> (not res!575810) (not e!472844))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847312 (= res!575810 (validMask!0 mask!1196))))

(declare-fun b!847313 () Bool)

(declare-fun e!472841 () Bool)

(declare-fun e!472842 () Bool)

(declare-fun mapRes!25625 () Bool)

(assert (=> b!847313 (= e!472841 (and e!472842 mapRes!25625))))

(declare-fun condMapEmpty!25625 () Bool)

(declare-datatypes ((V!26403 0))(
  ( (V!26404 (val!8056 Int)) )
))
(declare-datatypes ((ValueCell!7569 0))(
  ( (ValueCellFull!7569 (v!10477 V!26403)) (EmptyCell!7569) )
))
(declare-datatypes ((array!48228 0))(
  ( (array!48229 (arr!23141 (Array (_ BitVec 32) ValueCell!7569)) (size!23582 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48228)

(declare-fun mapDefault!25625 () ValueCell!7569)

(assert (=> b!847313 (= condMapEmpty!25625 (= (arr!23141 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7569)) mapDefault!25625)))))

(declare-fun b!847314 () Bool)

(declare-fun e!472843 () Bool)

(declare-datatypes ((tuple2!10536 0))(
  ( (tuple2!10537 (_1!5278 (_ BitVec 64)) (_2!5278 V!26403)) )
))
(declare-datatypes ((List!16450 0))(
  ( (Nil!16447) (Cons!16446 (h!17577 tuple2!10536) (t!22829 List!16450)) )
))
(declare-datatypes ((ListLongMap!9319 0))(
  ( (ListLongMap!9320 (toList!4675 List!16450)) )
))
(declare-fun call!37498 () ListLongMap!9319)

(declare-fun call!37499 () ListLongMap!9319)

(assert (=> b!847314 (= e!472843 (= call!37498 call!37499))))

(declare-fun b!847315 () Bool)

(declare-fun res!575809 () Bool)

(assert (=> b!847315 (=> (not res!575809) (not e!472844))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48230 0))(
  ( (array!48231 (arr!23142 (Array (_ BitVec 32) (_ BitVec 64))) (size!23583 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48230)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!847315 (= res!575809 (and (= (select (arr!23142 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun bm!37495 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26403)

(declare-fun zeroValue!654 () V!26403)

(declare-fun getCurrentListMapNoExtraKeys!2664 (array!48230 array!48228 (_ BitVec 32) (_ BitVec 32) V!26403 V!26403 (_ BitVec 32) Int) ListLongMap!9319)

(assert (=> bm!37495 (= call!37499 (getCurrentListMapNoExtraKeys!2664 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847316 () Bool)

(declare-fun e!472839 () Bool)

(assert (=> b!847316 (= e!472844 e!472839)))

(declare-fun res!575817 () Bool)

(assert (=> b!847316 (=> (not res!575817) (not e!472839))))

(assert (=> b!847316 (= res!575817 (= from!1053 i!612))))

(declare-fun lt!381689 () array!48228)

(declare-fun lt!381687 () ListLongMap!9319)

(assert (=> b!847316 (= lt!381687 (getCurrentListMapNoExtraKeys!2664 _keys!868 lt!381689 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26403)

(assert (=> b!847316 (= lt!381689 (array!48229 (store (arr!23141 _values!688) i!612 (ValueCellFull!7569 v!557)) (size!23582 _values!688)))))

(declare-fun lt!381688 () ListLongMap!9319)

(assert (=> b!847316 (= lt!381688 (getCurrentListMapNoExtraKeys!2664 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847317 () Bool)

(declare-fun res!575812 () Bool)

(assert (=> b!847317 (=> (not res!575812) (not e!472844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847317 (= res!575812 (validKeyInArray!0 k0!854))))

(declare-fun b!847318 () Bool)

(declare-fun tp_is_empty!16017 () Bool)

(assert (=> b!847318 (= e!472842 tp_is_empty!16017)))

(declare-fun b!847319 () Bool)

(declare-fun res!575813 () Bool)

(assert (=> b!847319 (=> (not res!575813) (not e!472844))))

(assert (=> b!847319 (= res!575813 (and (= (size!23582 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23583 _keys!868) (size!23582 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25625 () Bool)

(assert (=> mapIsEmpty!25625 mapRes!25625))

(declare-fun res!575814 () Bool)

(assert (=> start!72994 (=> (not res!575814) (not e!472844))))

(assert (=> start!72994 (= res!575814 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23583 _keys!868))))))

(assert (=> start!72994 e!472844))

(assert (=> start!72994 tp_is_empty!16017))

(assert (=> start!72994 true))

(assert (=> start!72994 tp!49147))

(declare-fun array_inv!18362 (array!48230) Bool)

(assert (=> start!72994 (array_inv!18362 _keys!868)))

(declare-fun array_inv!18363 (array!48228) Bool)

(assert (=> start!72994 (and (array_inv!18363 _values!688) e!472841)))

(declare-fun b!847320 () Bool)

(declare-fun e!472840 () Bool)

(assert (=> b!847320 (= e!472840 tp_is_empty!16017)))

(declare-fun b!847321 () Bool)

(declare-fun res!575811 () Bool)

(assert (=> b!847321 (=> (not res!575811) (not e!472844))))

(assert (=> b!847321 (= res!575811 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23583 _keys!868))))))

(declare-fun b!847322 () Bool)

(declare-fun res!575816 () Bool)

(assert (=> b!847322 (=> (not res!575816) (not e!472844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48230 (_ BitVec 32)) Bool)

(assert (=> b!847322 (= res!575816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25625 () Bool)

(declare-fun tp!49148 () Bool)

(assert (=> mapNonEmpty!25625 (= mapRes!25625 (and tp!49148 e!472840))))

(declare-fun mapKey!25625 () (_ BitVec 32))

(declare-fun mapRest!25625 () (Array (_ BitVec 32) ValueCell!7569))

(declare-fun mapValue!25625 () ValueCell!7569)

(assert (=> mapNonEmpty!25625 (= (arr!23141 _values!688) (store mapRest!25625 mapKey!25625 mapValue!25625))))

(declare-fun b!847323 () Bool)

(declare-fun +!2033 (ListLongMap!9319 tuple2!10536) ListLongMap!9319)

(assert (=> b!847323 (= e!472843 (= call!37498 (+!2033 call!37499 (tuple2!10537 k0!854 v!557))))))

(declare-fun bm!37496 () Bool)

(assert (=> bm!37496 (= call!37498 (getCurrentListMapNoExtraKeys!2664 _keys!868 lt!381689 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847324 () Bool)

(declare-fun res!575815 () Bool)

(assert (=> b!847324 (=> (not res!575815) (not e!472844))))

(declare-datatypes ((List!16451 0))(
  ( (Nil!16448) (Cons!16447 (h!17578 (_ BitVec 64)) (t!22830 List!16451)) )
))
(declare-fun arrayNoDuplicates!0 (array!48230 (_ BitVec 32) List!16451) Bool)

(assert (=> b!847324 (= res!575815 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16448))))

(declare-fun b!847325 () Bool)

(assert (=> b!847325 (= e!472839 (not true))))

(assert (=> b!847325 e!472843))

(declare-fun c!91410 () Bool)

(assert (=> b!847325 (= c!91410 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28922 0))(
  ( (Unit!28923) )
))
(declare-fun lt!381690 () Unit!28922)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!310 (array!48230 array!48228 (_ BitVec 32) (_ BitVec 32) V!26403 V!26403 (_ BitVec 32) (_ BitVec 64) V!26403 (_ BitVec 32) Int) Unit!28922)

(assert (=> b!847325 (= lt!381690 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!310 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72994 res!575814) b!847312))

(assert (= (and b!847312 res!575810) b!847319))

(assert (= (and b!847319 res!575813) b!847322))

(assert (= (and b!847322 res!575816) b!847324))

(assert (= (and b!847324 res!575815) b!847321))

(assert (= (and b!847321 res!575811) b!847317))

(assert (= (and b!847317 res!575812) b!847315))

(assert (= (and b!847315 res!575809) b!847316))

(assert (= (and b!847316 res!575817) b!847325))

(assert (= (and b!847325 c!91410) b!847323))

(assert (= (and b!847325 (not c!91410)) b!847314))

(assert (= (or b!847323 b!847314) bm!37496))

(assert (= (or b!847323 b!847314) bm!37495))

(assert (= (and b!847313 condMapEmpty!25625) mapIsEmpty!25625))

(assert (= (and b!847313 (not condMapEmpty!25625)) mapNonEmpty!25625))

(get-info :version)

(assert (= (and mapNonEmpty!25625 ((_ is ValueCellFull!7569) mapValue!25625)) b!847320))

(assert (= (and b!847313 ((_ is ValueCellFull!7569) mapDefault!25625)) b!847318))

(assert (= start!72994 b!847313))

(declare-fun m!788483 () Bool)

(assert (=> bm!37495 m!788483))

(declare-fun m!788485 () Bool)

(assert (=> b!847322 m!788485))

(declare-fun m!788487 () Bool)

(assert (=> b!847315 m!788487))

(declare-fun m!788489 () Bool)

(assert (=> b!847316 m!788489))

(declare-fun m!788491 () Bool)

(assert (=> b!847316 m!788491))

(declare-fun m!788493 () Bool)

(assert (=> b!847316 m!788493))

(declare-fun m!788495 () Bool)

(assert (=> bm!37496 m!788495))

(declare-fun m!788497 () Bool)

(assert (=> start!72994 m!788497))

(declare-fun m!788499 () Bool)

(assert (=> start!72994 m!788499))

(declare-fun m!788501 () Bool)

(assert (=> b!847325 m!788501))

(declare-fun m!788503 () Bool)

(assert (=> b!847324 m!788503))

(declare-fun m!788505 () Bool)

(assert (=> b!847323 m!788505))

(declare-fun m!788507 () Bool)

(assert (=> b!847317 m!788507))

(declare-fun m!788509 () Bool)

(assert (=> b!847312 m!788509))

(declare-fun m!788511 () Bool)

(assert (=> mapNonEmpty!25625 m!788511))

(check-sat (not b!847324) (not b!847322) (not b_next!13881) tp_is_empty!16017 b_and!22985 (not b!847312) (not start!72994) (not mapNonEmpty!25625) (not b!847323) (not b!847325) (not bm!37495) (not b!847316) (not b!847317) (not bm!37496))
(check-sat b_and!22985 (not b_next!13881))

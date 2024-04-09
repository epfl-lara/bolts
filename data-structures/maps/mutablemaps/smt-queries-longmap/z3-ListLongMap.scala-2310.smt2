; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37332 () Bool)

(assert start!37332)

(declare-fun b_free!8451 () Bool)

(declare-fun b_next!8451 () Bool)

(assert (=> start!37332 (= b_free!8451 (not b_next!8451))))

(declare-fun tp!30068 () Bool)

(declare-fun b_and!15711 () Bool)

(assert (=> start!37332 (= tp!30068 b_and!15711)))

(declare-fun b!378405 () Bool)

(declare-fun e!230305 () Bool)

(declare-fun e!230306 () Bool)

(declare-fun mapRes!15213 () Bool)

(assert (=> b!378405 (= e!230305 (and e!230306 mapRes!15213))))

(declare-fun condMapEmpty!15213 () Bool)

(declare-datatypes ((V!13237 0))(
  ( (V!13238 (val!4594 Int)) )
))
(declare-datatypes ((ValueCell!4206 0))(
  ( (ValueCellFull!4206 (v!6787 V!13237)) (EmptyCell!4206) )
))
(declare-datatypes ((array!22095 0))(
  ( (array!22096 (arr!10513 (Array (_ BitVec 32) ValueCell!4206)) (size!10865 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22095)

(declare-fun mapDefault!15213 () ValueCell!4206)

(assert (=> b!378405 (= condMapEmpty!15213 (= (arr!10513 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4206)) mapDefault!15213)))))

(declare-fun b!378406 () Bool)

(declare-fun res!214432 () Bool)

(declare-fun e!230300 () Bool)

(assert (=> b!378406 (=> (not res!214432) (not e!230300))))

(declare-datatypes ((array!22097 0))(
  ( (array!22098 (arr!10514 (Array (_ BitVec 32) (_ BitVec 64))) (size!10866 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22097)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378406 (= res!214432 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!378407 () Bool)

(declare-fun res!214431 () Bool)

(assert (=> b!378407 (=> (not res!214431) (not e!230300))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378407 (= res!214431 (or (= (select (arr!10514 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10514 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15213 () Bool)

(assert (=> mapIsEmpty!15213 mapRes!15213))

(declare-fun b!378408 () Bool)

(declare-fun e!230304 () Bool)

(declare-fun e!230302 () Bool)

(assert (=> b!378408 (= e!230304 e!230302)))

(declare-fun res!214440 () Bool)

(assert (=> b!378408 (=> res!214440 e!230302)))

(assert (=> b!378408 (= res!214440 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6104 0))(
  ( (tuple2!6105 (_1!3062 (_ BitVec 64)) (_2!3062 V!13237)) )
))
(declare-datatypes ((List!5976 0))(
  ( (Nil!5973) (Cons!5972 (h!6828 tuple2!6104) (t!11134 List!5976)) )
))
(declare-datatypes ((ListLongMap!5031 0))(
  ( (ListLongMap!5032 (toList!2531 List!5976)) )
))
(declare-fun lt!176424 () ListLongMap!5031)

(declare-fun lt!176421 () ListLongMap!5031)

(assert (=> b!378408 (= lt!176424 lt!176421)))

(declare-fun lt!176422 () ListLongMap!5031)

(declare-fun lt!176430 () tuple2!6104)

(declare-fun +!872 (ListLongMap!5031 tuple2!6104) ListLongMap!5031)

(assert (=> b!378408 (= lt!176421 (+!872 lt!176422 lt!176430))))

(declare-fun lt!176427 () ListLongMap!5031)

(declare-fun lt!176428 () ListLongMap!5031)

(assert (=> b!378408 (= lt!176427 lt!176428)))

(declare-fun lt!176420 () ListLongMap!5031)

(assert (=> b!378408 (= lt!176428 (+!872 lt!176420 lt!176430))))

(declare-fun lt!176425 () ListLongMap!5031)

(assert (=> b!378408 (= lt!176427 (+!872 lt!176425 lt!176430))))

(declare-fun minValue!472 () V!13237)

(assert (=> b!378408 (= lt!176430 (tuple2!6105 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378409 () Bool)

(assert (=> b!378409 (= e!230302 true)))

(declare-fun lt!176419 () tuple2!6104)

(assert (=> b!378409 (= lt!176428 (+!872 lt!176421 lt!176419))))

(declare-fun v!373 () V!13237)

(declare-datatypes ((Unit!11641 0))(
  ( (Unit!11642) )
))
(declare-fun lt!176431 () Unit!11641)

(declare-fun addCommutativeForDiffKeys!287 (ListLongMap!5031 (_ BitVec 64) V!13237 (_ BitVec 64) V!13237) Unit!11641)

(assert (=> b!378409 (= lt!176431 (addCommutativeForDiffKeys!287 lt!176422 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378411 () Bool)

(declare-fun e!230301 () Bool)

(declare-fun tp_is_empty!9099 () Bool)

(assert (=> b!378411 (= e!230301 tp_is_empty!9099)))

(declare-fun b!378412 () Bool)

(declare-fun res!214439 () Bool)

(assert (=> b!378412 (=> (not res!214439) (not e!230300))))

(assert (=> b!378412 (= res!214439 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10866 _keys!658))))))

(declare-fun b!378413 () Bool)

(declare-fun res!214433 () Bool)

(assert (=> b!378413 (=> (not res!214433) (not e!230300))))

(declare-datatypes ((List!5977 0))(
  ( (Nil!5974) (Cons!5973 (h!6829 (_ BitVec 64)) (t!11135 List!5977)) )
))
(declare-fun arrayNoDuplicates!0 (array!22097 (_ BitVec 32) List!5977) Bool)

(assert (=> b!378413 (= res!214433 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5974))))

(declare-fun b!378414 () Bool)

(declare-fun e!230303 () Bool)

(assert (=> b!378414 (= e!230300 e!230303)))

(declare-fun res!214438 () Bool)

(assert (=> b!378414 (=> (not res!214438) (not e!230303))))

(declare-fun lt!176426 () array!22097)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22097 (_ BitVec 32)) Bool)

(assert (=> b!378414 (= res!214438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176426 mask!970))))

(assert (=> b!378414 (= lt!176426 (array!22098 (store (arr!10514 _keys!658) i!548 k0!778) (size!10866 _keys!658)))))

(declare-fun b!378415 () Bool)

(declare-fun res!214436 () Bool)

(assert (=> b!378415 (=> (not res!214436) (not e!230303))))

(assert (=> b!378415 (= res!214436 (arrayNoDuplicates!0 lt!176426 #b00000000000000000000000000000000 Nil!5974))))

(declare-fun b!378416 () Bool)

(declare-fun res!214437 () Bool)

(assert (=> b!378416 (=> (not res!214437) (not e!230300))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378416 (= res!214437 (and (= (size!10865 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10866 _keys!658) (size!10865 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378417 () Bool)

(declare-fun res!214435 () Bool)

(assert (=> b!378417 (=> (not res!214435) (not e!230300))))

(assert (=> b!378417 (= res!214435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15213 () Bool)

(declare-fun tp!30069 () Bool)

(assert (=> mapNonEmpty!15213 (= mapRes!15213 (and tp!30069 e!230301))))

(declare-fun mapRest!15213 () (Array (_ BitVec 32) ValueCell!4206))

(declare-fun mapKey!15213 () (_ BitVec 32))

(declare-fun mapValue!15213 () ValueCell!4206)

(assert (=> mapNonEmpty!15213 (= (arr!10513 _values!506) (store mapRest!15213 mapKey!15213 mapValue!15213))))

(declare-fun res!214442 () Bool)

(assert (=> start!37332 (=> (not res!214442) (not e!230300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37332 (= res!214442 (validMask!0 mask!970))))

(assert (=> start!37332 e!230300))

(declare-fun array_inv!7734 (array!22095) Bool)

(assert (=> start!37332 (and (array_inv!7734 _values!506) e!230305)))

(assert (=> start!37332 tp!30068))

(assert (=> start!37332 true))

(assert (=> start!37332 tp_is_empty!9099))

(declare-fun array_inv!7735 (array!22097) Bool)

(assert (=> start!37332 (array_inv!7735 _keys!658)))

(declare-fun b!378410 () Bool)

(assert (=> b!378410 (= e!230306 tp_is_empty!9099)))

(declare-fun b!378418 () Bool)

(declare-fun res!214441 () Bool)

(assert (=> b!378418 (=> (not res!214441) (not e!230300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378418 (= res!214441 (validKeyInArray!0 k0!778))))

(declare-fun b!378419 () Bool)

(assert (=> b!378419 (= e!230303 (not e!230304))))

(declare-fun res!214434 () Bool)

(assert (=> b!378419 (=> res!214434 e!230304)))

(assert (=> b!378419 (= res!214434 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!472 () V!13237)

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1963 (array!22097 array!22095 (_ BitVec 32) (_ BitVec 32) V!13237 V!13237 (_ BitVec 32) Int) ListLongMap!5031)

(assert (=> b!378419 (= lt!176424 (getCurrentListMap!1963 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176429 () array!22095)

(assert (=> b!378419 (= lt!176427 (getCurrentListMap!1963 lt!176426 lt!176429 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378419 (and (= lt!176425 lt!176420) (= lt!176420 lt!176425))))

(assert (=> b!378419 (= lt!176420 (+!872 lt!176422 lt!176419))))

(assert (=> b!378419 (= lt!176419 (tuple2!6105 k0!778 v!373))))

(declare-fun lt!176423 () Unit!11641)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!114 (array!22097 array!22095 (_ BitVec 32) (_ BitVec 32) V!13237 V!13237 (_ BitVec 32) (_ BitVec 64) V!13237 (_ BitVec 32) Int) Unit!11641)

(assert (=> b!378419 (= lt!176423 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!114 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!781 (array!22097 array!22095 (_ BitVec 32) (_ BitVec 32) V!13237 V!13237 (_ BitVec 32) Int) ListLongMap!5031)

(assert (=> b!378419 (= lt!176425 (getCurrentListMapNoExtraKeys!781 lt!176426 lt!176429 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378419 (= lt!176429 (array!22096 (store (arr!10513 _values!506) i!548 (ValueCellFull!4206 v!373)) (size!10865 _values!506)))))

(assert (=> b!378419 (= lt!176422 (getCurrentListMapNoExtraKeys!781 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37332 res!214442) b!378416))

(assert (= (and b!378416 res!214437) b!378417))

(assert (= (and b!378417 res!214435) b!378413))

(assert (= (and b!378413 res!214433) b!378412))

(assert (= (and b!378412 res!214439) b!378418))

(assert (= (and b!378418 res!214441) b!378407))

(assert (= (and b!378407 res!214431) b!378406))

(assert (= (and b!378406 res!214432) b!378414))

(assert (= (and b!378414 res!214438) b!378415))

(assert (= (and b!378415 res!214436) b!378419))

(assert (= (and b!378419 (not res!214434)) b!378408))

(assert (= (and b!378408 (not res!214440)) b!378409))

(assert (= (and b!378405 condMapEmpty!15213) mapIsEmpty!15213))

(assert (= (and b!378405 (not condMapEmpty!15213)) mapNonEmpty!15213))

(get-info :version)

(assert (= (and mapNonEmpty!15213 ((_ is ValueCellFull!4206) mapValue!15213)) b!378411))

(assert (= (and b!378405 ((_ is ValueCellFull!4206) mapDefault!15213)) b!378410))

(assert (= start!37332 b!378405))

(declare-fun m!375269 () Bool)

(assert (=> b!378413 m!375269))

(declare-fun m!375271 () Bool)

(assert (=> b!378408 m!375271))

(declare-fun m!375273 () Bool)

(assert (=> b!378408 m!375273))

(declare-fun m!375275 () Bool)

(assert (=> b!378408 m!375275))

(declare-fun m!375277 () Bool)

(assert (=> b!378407 m!375277))

(declare-fun m!375279 () Bool)

(assert (=> b!378414 m!375279))

(declare-fun m!375281 () Bool)

(assert (=> b!378414 m!375281))

(declare-fun m!375283 () Bool)

(assert (=> b!378419 m!375283))

(declare-fun m!375285 () Bool)

(assert (=> b!378419 m!375285))

(declare-fun m!375287 () Bool)

(assert (=> b!378419 m!375287))

(declare-fun m!375289 () Bool)

(assert (=> b!378419 m!375289))

(declare-fun m!375291 () Bool)

(assert (=> b!378419 m!375291))

(declare-fun m!375293 () Bool)

(assert (=> b!378419 m!375293))

(declare-fun m!375295 () Bool)

(assert (=> b!378419 m!375295))

(declare-fun m!375297 () Bool)

(assert (=> mapNonEmpty!15213 m!375297))

(declare-fun m!375299 () Bool)

(assert (=> b!378418 m!375299))

(declare-fun m!375301 () Bool)

(assert (=> b!378415 m!375301))

(declare-fun m!375303 () Bool)

(assert (=> b!378417 m!375303))

(declare-fun m!375305 () Bool)

(assert (=> start!37332 m!375305))

(declare-fun m!375307 () Bool)

(assert (=> start!37332 m!375307))

(declare-fun m!375309 () Bool)

(assert (=> start!37332 m!375309))

(declare-fun m!375311 () Bool)

(assert (=> b!378406 m!375311))

(declare-fun m!375313 () Bool)

(assert (=> b!378409 m!375313))

(declare-fun m!375315 () Bool)

(assert (=> b!378409 m!375315))

(check-sat (not b!378406) (not b!378417) tp_is_empty!9099 (not start!37332) (not b!378409) (not b!378418) (not b_next!8451) (not b!378414) (not b!378419) (not mapNonEmpty!15213) b_and!15711 (not b!378415) (not b!378408) (not b!378413))
(check-sat b_and!15711 (not b_next!8451))

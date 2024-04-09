; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72598 () Bool)

(assert start!72598)

(declare-fun mapNonEmpty!25031 () Bool)

(declare-fun mapRes!25031 () Bool)

(declare-fun tp!48350 () Bool)

(declare-fun e!469841 () Bool)

(assert (=> mapNonEmpty!25031 (= mapRes!25031 (and tp!48350 e!469841))))

(declare-datatypes ((V!25875 0))(
  ( (V!25876 (val!7858 Int)) )
))
(declare-datatypes ((ValueCell!7371 0))(
  ( (ValueCellFull!7371 (v!10279 V!25875)) (EmptyCell!7371) )
))
(declare-fun mapRest!25031 () (Array (_ BitVec 32) ValueCell!7371))

(declare-fun mapValue!25031 () ValueCell!7371)

(declare-fun mapKey!25031 () (_ BitVec 32))

(declare-datatypes ((array!47484 0))(
  ( (array!47485 (arr!22769 (Array (_ BitVec 32) ValueCell!7371)) (size!23210 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47484)

(assert (=> mapNonEmpty!25031 (= (arr!22769 _values!688) (store mapRest!25031 mapKey!25031 mapValue!25031))))

(declare-fun b!842300 () Bool)

(declare-fun res!572609 () Bool)

(declare-fun e!469844 () Bool)

(assert (=> b!842300 (=> (not res!572609) (not e!469844))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842300 (= res!572609 (validMask!0 mask!1196))))

(declare-fun b!842301 () Bool)

(declare-fun e!469845 () Bool)

(declare-fun tp_is_empty!15621 () Bool)

(assert (=> b!842301 (= e!469845 tp_is_empty!15621)))

(declare-fun b!842302 () Bool)

(declare-fun res!572610 () Bool)

(assert (=> b!842302 (=> (not res!572610) (not e!469844))))

(declare-datatypes ((array!47486 0))(
  ( (array!47487 (arr!22770 (Array (_ BitVec 32) (_ BitVec 64))) (size!23211 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47486)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47486 (_ BitVec 32)) Bool)

(assert (=> b!842302 (= res!572610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25031 () Bool)

(assert (=> mapIsEmpty!25031 mapRes!25031))

(declare-fun res!572607 () Bool)

(assert (=> start!72598 (=> (not res!572607) (not e!469844))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72598 (= res!572607 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23211 _keys!868))))))

(assert (=> start!72598 e!469844))

(assert (=> start!72598 true))

(declare-fun array_inv!18100 (array!47486) Bool)

(assert (=> start!72598 (array_inv!18100 _keys!868)))

(declare-fun e!469843 () Bool)

(declare-fun array_inv!18101 (array!47484) Bool)

(assert (=> start!72598 (and (array_inv!18101 _values!688) e!469843)))

(declare-fun b!842303 () Bool)

(assert (=> b!842303 (= e!469843 (and e!469845 mapRes!25031))))

(declare-fun condMapEmpty!25031 () Bool)

(declare-fun mapDefault!25031 () ValueCell!7371)

(assert (=> b!842303 (= condMapEmpty!25031 (= (arr!22769 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7371)) mapDefault!25031)))))

(declare-fun b!842304 () Bool)

(assert (=> b!842304 (= e!469844 false)))

(declare-fun lt!380943 () Bool)

(declare-datatypes ((List!16273 0))(
  ( (Nil!16270) (Cons!16269 (h!17400 (_ BitVec 64)) (t!22652 List!16273)) )
))
(declare-fun arrayNoDuplicates!0 (array!47486 (_ BitVec 32) List!16273) Bool)

(assert (=> b!842304 (= lt!380943 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16270))))

(declare-fun b!842305 () Bool)

(declare-fun res!572608 () Bool)

(assert (=> b!842305 (=> (not res!572608) (not e!469844))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842305 (= res!572608 (and (= (size!23210 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23211 _keys!868) (size!23210 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842306 () Bool)

(assert (=> b!842306 (= e!469841 tp_is_empty!15621)))

(assert (= (and start!72598 res!572607) b!842300))

(assert (= (and b!842300 res!572609) b!842305))

(assert (= (and b!842305 res!572608) b!842302))

(assert (= (and b!842302 res!572610) b!842304))

(assert (= (and b!842303 condMapEmpty!25031) mapIsEmpty!25031))

(assert (= (and b!842303 (not condMapEmpty!25031)) mapNonEmpty!25031))

(get-info :version)

(assert (= (and mapNonEmpty!25031 ((_ is ValueCellFull!7371) mapValue!25031)) b!842306))

(assert (= (and b!842303 ((_ is ValueCellFull!7371) mapDefault!25031)) b!842301))

(assert (= start!72598 b!842303))

(declare-fun m!785513 () Bool)

(assert (=> b!842300 m!785513))

(declare-fun m!785515 () Bool)

(assert (=> start!72598 m!785515))

(declare-fun m!785517 () Bool)

(assert (=> start!72598 m!785517))

(declare-fun m!785519 () Bool)

(assert (=> b!842304 m!785519))

(declare-fun m!785521 () Bool)

(assert (=> b!842302 m!785521))

(declare-fun m!785523 () Bool)

(assert (=> mapNonEmpty!25031 m!785523))

(check-sat (not mapNonEmpty!25031) (not start!72598) (not b!842302) tp_is_empty!15621 (not b!842304) (not b!842300))
(check-sat)

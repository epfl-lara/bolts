; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72796 () Bool)

(assert start!72796)

(declare-fun b!844379 () Bool)

(declare-fun res!573795 () Bool)

(declare-fun e!471330 () Bool)

(assert (=> b!844379 (=> (not res!573795) (not e!471330))))

(declare-datatypes ((array!47854 0))(
  ( (array!47855 (arr!22954 (Array (_ BitVec 32) (_ BitVec 64))) (size!23395 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47854)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47854 (_ BitVec 32)) Bool)

(assert (=> b!844379 (= res!573795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!573796 () Bool)

(assert (=> start!72796 (=> (not res!573796) (not e!471330))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72796 (= res!573796 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23395 _keys!868))))))

(assert (=> start!72796 e!471330))

(assert (=> start!72796 true))

(declare-fun array_inv!18234 (array!47854) Bool)

(assert (=> start!72796 (array_inv!18234 _keys!868)))

(declare-datatypes ((V!26139 0))(
  ( (V!26140 (val!7957 Int)) )
))
(declare-datatypes ((ValueCell!7470 0))(
  ( (ValueCellFull!7470 (v!10378 V!26139)) (EmptyCell!7470) )
))
(declare-datatypes ((array!47856 0))(
  ( (array!47857 (arr!22955 (Array (_ BitVec 32) ValueCell!7470)) (size!23396 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47856)

(declare-fun e!471326 () Bool)

(declare-fun array_inv!18235 (array!47856) Bool)

(assert (=> start!72796 (and (array_inv!18235 _values!688) e!471326)))

(declare-fun b!844380 () Bool)

(assert (=> b!844380 (= e!471330 false)))

(declare-fun lt!381240 () Bool)

(declare-datatypes ((List!16341 0))(
  ( (Nil!16338) (Cons!16337 (h!17468 (_ BitVec 64)) (t!22720 List!16341)) )
))
(declare-fun arrayNoDuplicates!0 (array!47854 (_ BitVec 32) List!16341) Bool)

(assert (=> b!844380 (= lt!381240 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16338))))

(declare-fun mapNonEmpty!25328 () Bool)

(declare-fun mapRes!25328 () Bool)

(declare-fun tp!48647 () Bool)

(declare-fun e!471327 () Bool)

(assert (=> mapNonEmpty!25328 (= mapRes!25328 (and tp!48647 e!471327))))

(declare-fun mapKey!25328 () (_ BitVec 32))

(declare-fun mapValue!25328 () ValueCell!7470)

(declare-fun mapRest!25328 () (Array (_ BitVec 32) ValueCell!7470))

(assert (=> mapNonEmpty!25328 (= (arr!22955 _values!688) (store mapRest!25328 mapKey!25328 mapValue!25328))))

(declare-fun b!844381 () Bool)

(declare-fun res!573797 () Bool)

(assert (=> b!844381 (=> (not res!573797) (not e!471330))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844381 (= res!573797 (and (= (size!23396 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23395 _keys!868) (size!23396 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844382 () Bool)

(declare-fun res!573798 () Bool)

(assert (=> b!844382 (=> (not res!573798) (not e!471330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844382 (= res!573798 (validMask!0 mask!1196))))

(declare-fun b!844383 () Bool)

(declare-fun e!471328 () Bool)

(declare-fun tp_is_empty!15819 () Bool)

(assert (=> b!844383 (= e!471328 tp_is_empty!15819)))

(declare-fun b!844384 () Bool)

(assert (=> b!844384 (= e!471327 tp_is_empty!15819)))

(declare-fun mapIsEmpty!25328 () Bool)

(assert (=> mapIsEmpty!25328 mapRes!25328))

(declare-fun b!844385 () Bool)

(assert (=> b!844385 (= e!471326 (and e!471328 mapRes!25328))))

(declare-fun condMapEmpty!25328 () Bool)

(declare-fun mapDefault!25328 () ValueCell!7470)

(assert (=> b!844385 (= condMapEmpty!25328 (= (arr!22955 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7470)) mapDefault!25328)))))

(assert (= (and start!72796 res!573796) b!844382))

(assert (= (and b!844382 res!573798) b!844381))

(assert (= (and b!844381 res!573797) b!844379))

(assert (= (and b!844379 res!573795) b!844380))

(assert (= (and b!844385 condMapEmpty!25328) mapIsEmpty!25328))

(assert (= (and b!844385 (not condMapEmpty!25328)) mapNonEmpty!25328))

(get-info :version)

(assert (= (and mapNonEmpty!25328 ((_ is ValueCellFull!7470) mapValue!25328)) b!844384))

(assert (= (and b!844385 ((_ is ValueCellFull!7470) mapDefault!25328)) b!844383))

(assert (= start!72796 b!844385))

(declare-fun m!786701 () Bool)

(assert (=> b!844382 m!786701))

(declare-fun m!786703 () Bool)

(assert (=> b!844379 m!786703))

(declare-fun m!786705 () Bool)

(assert (=> b!844380 m!786705))

(declare-fun m!786707 () Bool)

(assert (=> mapNonEmpty!25328 m!786707))

(declare-fun m!786709 () Bool)

(assert (=> start!72796 m!786709))

(declare-fun m!786711 () Bool)

(assert (=> start!72796 m!786711))

(check-sat (not b!844379) (not mapNonEmpty!25328) (not start!72796) (not b!844380) (not b!844382) tp_is_empty!15819)
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72328 () Bool)

(assert start!72328)

(declare-fun mapNonEmpty!24626 () Bool)

(declare-fun mapRes!24626 () Bool)

(declare-fun tp!47621 () Bool)

(declare-fun e!467493 () Bool)

(assert (=> mapNonEmpty!24626 (= mapRes!24626 (and tp!47621 e!467493))))

(declare-datatypes ((V!25515 0))(
  ( (V!25516 (val!7723 Int)) )
))
(declare-datatypes ((ValueCell!7236 0))(
  ( (ValueCellFull!7236 (v!10144 V!25515)) (EmptyCell!7236) )
))
(declare-fun mapValue!24626 () ValueCell!7236)

(declare-fun mapRest!24626 () (Array (_ BitVec 32) ValueCell!7236))

(declare-fun mapKey!24626 () (_ BitVec 32))

(declare-datatypes ((array!46962 0))(
  ( (array!46963 (arr!22508 (Array (_ BitVec 32) ValueCell!7236)) (size!22949 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46962)

(assert (=> mapNonEmpty!24626 (= (arr!22508 _values!688) (store mapRest!24626 mapKey!24626 mapValue!24626))))

(declare-fun b!837521 () Bool)

(declare-fun tp_is_empty!15351 () Bool)

(assert (=> b!837521 (= e!467493 tp_is_empty!15351)))

(declare-fun b!837522 () Bool)

(declare-fun e!467495 () Bool)

(declare-fun e!467492 () Bool)

(assert (=> b!837522 (= e!467495 (and e!467492 mapRes!24626))))

(declare-fun condMapEmpty!24626 () Bool)

(declare-fun mapDefault!24626 () ValueCell!7236)

(assert (=> b!837522 (= condMapEmpty!24626 (= (arr!22508 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7236)) mapDefault!24626)))))

(declare-fun res!569693 () Bool)

(declare-fun e!467496 () Bool)

(assert (=> start!72328 (=> (not res!569693) (not e!467496))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46964 0))(
  ( (array!46965 (arr!22509 (Array (_ BitVec 32) (_ BitVec 64))) (size!22950 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46964)

(assert (=> start!72328 (= res!569693 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22950 _keys!868))))))

(assert (=> start!72328 e!467496))

(assert (=> start!72328 true))

(declare-fun array_inv!17912 (array!46964) Bool)

(assert (=> start!72328 (array_inv!17912 _keys!868)))

(declare-fun array_inv!17913 (array!46962) Bool)

(assert (=> start!72328 (and (array_inv!17913 _values!688) e!467495)))

(declare-fun b!837523 () Bool)

(declare-fun res!569691 () Bool)

(assert (=> b!837523 (=> (not res!569691) (not e!467496))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837523 (= res!569691 (validMask!0 mask!1196))))

(declare-fun b!837524 () Bool)

(assert (=> b!837524 (= e!467492 tp_is_empty!15351)))

(declare-fun mapIsEmpty!24626 () Bool)

(assert (=> mapIsEmpty!24626 mapRes!24626))

(declare-fun b!837525 () Bool)

(assert (=> b!837525 (= e!467496 false)))

(declare-fun lt!380538 () Bool)

(declare-datatypes ((List!16086 0))(
  ( (Nil!16083) (Cons!16082 (h!17213 (_ BitVec 64)) (t!22465 List!16086)) )
))
(declare-fun arrayNoDuplicates!0 (array!46964 (_ BitVec 32) List!16086) Bool)

(assert (=> b!837525 (= lt!380538 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16083))))

(declare-fun b!837526 () Bool)

(declare-fun res!569694 () Bool)

(assert (=> b!837526 (=> (not res!569694) (not e!467496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46964 (_ BitVec 32)) Bool)

(assert (=> b!837526 (= res!569694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837527 () Bool)

(declare-fun res!569692 () Bool)

(assert (=> b!837527 (=> (not res!569692) (not e!467496))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837527 (= res!569692 (and (= (size!22949 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22950 _keys!868) (size!22949 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72328 res!569693) b!837523))

(assert (= (and b!837523 res!569691) b!837527))

(assert (= (and b!837527 res!569692) b!837526))

(assert (= (and b!837526 res!569694) b!837525))

(assert (= (and b!837522 condMapEmpty!24626) mapIsEmpty!24626))

(assert (= (and b!837522 (not condMapEmpty!24626)) mapNonEmpty!24626))

(get-info :version)

(assert (= (and mapNonEmpty!24626 ((_ is ValueCellFull!7236) mapValue!24626)) b!837521))

(assert (= (and b!837522 ((_ is ValueCellFull!7236) mapDefault!24626)) b!837524))

(assert (= start!72328 b!837522))

(declare-fun m!782381 () Bool)

(assert (=> mapNonEmpty!24626 m!782381))

(declare-fun m!782383 () Bool)

(assert (=> b!837526 m!782383))

(declare-fun m!782385 () Bool)

(assert (=> start!72328 m!782385))

(declare-fun m!782387 () Bool)

(assert (=> start!72328 m!782387))

(declare-fun m!782389 () Bool)

(assert (=> b!837523 m!782389))

(declare-fun m!782391 () Bool)

(assert (=> b!837525 m!782391))

(check-sat (not b!837523) (not mapNonEmpty!24626) (not b!837526) tp_is_empty!15351 (not start!72328) (not b!837525))
(check-sat)

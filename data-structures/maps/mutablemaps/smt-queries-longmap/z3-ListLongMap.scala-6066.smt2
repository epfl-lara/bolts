; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78534 () Bool)

(assert start!78534)

(declare-fun mapIsEmpty!30597 () Bool)

(declare-fun mapRes!30597 () Bool)

(assert (=> mapIsEmpty!30597 mapRes!30597))

(declare-fun b!915096 () Bool)

(declare-fun e!513560 () Bool)

(declare-fun tp_is_empty!19227 () Bool)

(assert (=> b!915096 (= e!513560 tp_is_empty!19227)))

(declare-fun b!915097 () Bool)

(declare-fun e!513561 () Bool)

(assert (=> b!915097 (= e!513561 false)))

(declare-fun lt!411585 () Bool)

(declare-datatypes ((array!54466 0))(
  ( (array!54467 (arr!26174 (Array (_ BitVec 32) (_ BitVec 64))) (size!26634 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54466)

(declare-datatypes ((List!18476 0))(
  ( (Nil!18473) (Cons!18472 (h!19618 (_ BitVec 64)) (t!26097 List!18476)) )
))
(declare-fun arrayNoDuplicates!0 (array!54466 (_ BitVec 32) List!18476) Bool)

(assert (=> b!915097 (= lt!411585 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18473))))

(declare-fun b!915098 () Bool)

(declare-fun res!617126 () Bool)

(assert (=> b!915098 (=> (not res!617126) (not e!513561))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54466 (_ BitVec 32)) Bool)

(assert (=> b!915098 (= res!617126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30597 () Bool)

(declare-fun tp!58665 () Bool)

(assert (=> mapNonEmpty!30597 (= mapRes!30597 (and tp!58665 e!513560))))

(declare-datatypes ((V!30601 0))(
  ( (V!30602 (val!9664 Int)) )
))
(declare-datatypes ((ValueCell!9132 0))(
  ( (ValueCellFull!9132 (v!12182 V!30601)) (EmptyCell!9132) )
))
(declare-fun mapValue!30597 () ValueCell!9132)

(declare-fun mapRest!30597 () (Array (_ BitVec 32) ValueCell!9132))

(declare-datatypes ((array!54468 0))(
  ( (array!54469 (arr!26175 (Array (_ BitVec 32) ValueCell!9132)) (size!26635 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54468)

(declare-fun mapKey!30597 () (_ BitVec 32))

(assert (=> mapNonEmpty!30597 (= (arr!26175 _values!1231) (store mapRest!30597 mapKey!30597 mapValue!30597))))

(declare-fun res!617124 () Bool)

(assert (=> start!78534 (=> (not res!617124) (not e!513561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78534 (= res!617124 (validMask!0 mask!1881))))

(assert (=> start!78534 e!513561))

(assert (=> start!78534 true))

(declare-fun e!513564 () Bool)

(declare-fun array_inv!20420 (array!54468) Bool)

(assert (=> start!78534 (and (array_inv!20420 _values!1231) e!513564)))

(declare-fun array_inv!20421 (array!54466) Bool)

(assert (=> start!78534 (array_inv!20421 _keys!1487)))

(declare-fun b!915099 () Bool)

(declare-fun e!513562 () Bool)

(assert (=> b!915099 (= e!513562 tp_is_empty!19227)))

(declare-fun b!915100 () Bool)

(declare-fun res!617125 () Bool)

(assert (=> b!915100 (=> (not res!617125) (not e!513561))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915100 (= res!617125 (and (= (size!26635 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26634 _keys!1487) (size!26635 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915101 () Bool)

(assert (=> b!915101 (= e!513564 (and e!513562 mapRes!30597))))

(declare-fun condMapEmpty!30597 () Bool)

(declare-fun mapDefault!30597 () ValueCell!9132)

(assert (=> b!915101 (= condMapEmpty!30597 (= (arr!26175 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9132)) mapDefault!30597)))))

(assert (= (and start!78534 res!617124) b!915100))

(assert (= (and b!915100 res!617125) b!915098))

(assert (= (and b!915098 res!617126) b!915097))

(assert (= (and b!915101 condMapEmpty!30597) mapIsEmpty!30597))

(assert (= (and b!915101 (not condMapEmpty!30597)) mapNonEmpty!30597))

(get-info :version)

(assert (= (and mapNonEmpty!30597 ((_ is ValueCellFull!9132) mapValue!30597)) b!915096))

(assert (= (and b!915101 ((_ is ValueCellFull!9132) mapDefault!30597)) b!915099))

(assert (= start!78534 b!915101))

(declare-fun m!849643 () Bool)

(assert (=> b!915097 m!849643))

(declare-fun m!849645 () Bool)

(assert (=> b!915098 m!849645))

(declare-fun m!849647 () Bool)

(assert (=> mapNonEmpty!30597 m!849647))

(declare-fun m!849649 () Bool)

(assert (=> start!78534 m!849649))

(declare-fun m!849651 () Bool)

(assert (=> start!78534 m!849651))

(declare-fun m!849653 () Bool)

(assert (=> start!78534 m!849653))

(check-sat (not b!915098) (not start!78534) (not b!915097) (not mapNonEmpty!30597) tp_is_empty!19227)
(check-sat)

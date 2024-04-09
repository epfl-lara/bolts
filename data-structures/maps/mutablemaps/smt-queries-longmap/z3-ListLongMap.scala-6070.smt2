; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78558 () Bool)

(assert start!78558)

(declare-fun b!915312 () Bool)

(declare-fun e!513743 () Bool)

(declare-fun tp_is_empty!19251 () Bool)

(assert (=> b!915312 (= e!513743 tp_is_empty!19251)))

(declare-fun res!617234 () Bool)

(declare-fun e!513744 () Bool)

(assert (=> start!78558 (=> (not res!617234) (not e!513744))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78558 (= res!617234 (validMask!0 mask!1881))))

(assert (=> start!78558 e!513744))

(assert (=> start!78558 true))

(declare-datatypes ((V!30633 0))(
  ( (V!30634 (val!9676 Int)) )
))
(declare-datatypes ((ValueCell!9144 0))(
  ( (ValueCellFull!9144 (v!12194 V!30633)) (EmptyCell!9144) )
))
(declare-datatypes ((array!54508 0))(
  ( (array!54509 (arr!26195 (Array (_ BitVec 32) ValueCell!9144)) (size!26655 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54508)

(declare-fun e!513741 () Bool)

(declare-fun array_inv!20434 (array!54508) Bool)

(assert (=> start!78558 (and (array_inv!20434 _values!1231) e!513741)))

(declare-datatypes ((array!54510 0))(
  ( (array!54511 (arr!26196 (Array (_ BitVec 32) (_ BitVec 64))) (size!26656 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54510)

(declare-fun array_inv!20435 (array!54510) Bool)

(assert (=> start!78558 (array_inv!20435 _keys!1487)))

(declare-fun b!915313 () Bool)

(declare-fun res!617233 () Bool)

(assert (=> b!915313 (=> (not res!617233) (not e!513744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54510 (_ BitVec 32)) Bool)

(assert (=> b!915313 (= res!617233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915314 () Bool)

(assert (=> b!915314 (= e!513744 false)))

(declare-fun lt!411621 () Bool)

(declare-datatypes ((List!18483 0))(
  ( (Nil!18480) (Cons!18479 (h!19625 (_ BitVec 64)) (t!26104 List!18483)) )
))
(declare-fun arrayNoDuplicates!0 (array!54510 (_ BitVec 32) List!18483) Bool)

(assert (=> b!915314 (= lt!411621 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18480))))

(declare-fun b!915315 () Bool)

(declare-fun e!513742 () Bool)

(assert (=> b!915315 (= e!513742 tp_is_empty!19251)))

(declare-fun b!915316 () Bool)

(declare-fun res!617232 () Bool)

(assert (=> b!915316 (=> (not res!617232) (not e!513744))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915316 (= res!617232 (and (= (size!26655 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26656 _keys!1487) (size!26655 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915317 () Bool)

(declare-fun mapRes!30633 () Bool)

(assert (=> b!915317 (= e!513741 (and e!513743 mapRes!30633))))

(declare-fun condMapEmpty!30633 () Bool)

(declare-fun mapDefault!30633 () ValueCell!9144)

(assert (=> b!915317 (= condMapEmpty!30633 (= (arr!26195 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9144)) mapDefault!30633)))))

(declare-fun mapIsEmpty!30633 () Bool)

(assert (=> mapIsEmpty!30633 mapRes!30633))

(declare-fun mapNonEmpty!30633 () Bool)

(declare-fun tp!58701 () Bool)

(assert (=> mapNonEmpty!30633 (= mapRes!30633 (and tp!58701 e!513742))))

(declare-fun mapRest!30633 () (Array (_ BitVec 32) ValueCell!9144))

(declare-fun mapKey!30633 () (_ BitVec 32))

(declare-fun mapValue!30633 () ValueCell!9144)

(assert (=> mapNonEmpty!30633 (= (arr!26195 _values!1231) (store mapRest!30633 mapKey!30633 mapValue!30633))))

(assert (= (and start!78558 res!617234) b!915316))

(assert (= (and b!915316 res!617232) b!915313))

(assert (= (and b!915313 res!617233) b!915314))

(assert (= (and b!915317 condMapEmpty!30633) mapIsEmpty!30633))

(assert (= (and b!915317 (not condMapEmpty!30633)) mapNonEmpty!30633))

(get-info :version)

(assert (= (and mapNonEmpty!30633 ((_ is ValueCellFull!9144) mapValue!30633)) b!915315))

(assert (= (and b!915317 ((_ is ValueCellFull!9144) mapDefault!30633)) b!915312))

(assert (= start!78558 b!915317))

(declare-fun m!849787 () Bool)

(assert (=> start!78558 m!849787))

(declare-fun m!849789 () Bool)

(assert (=> start!78558 m!849789))

(declare-fun m!849791 () Bool)

(assert (=> start!78558 m!849791))

(declare-fun m!849793 () Bool)

(assert (=> b!915313 m!849793))

(declare-fun m!849795 () Bool)

(assert (=> b!915314 m!849795))

(declare-fun m!849797 () Bool)

(assert (=> mapNonEmpty!30633 m!849797))

(check-sat (not mapNonEmpty!30633) (not start!78558) tp_is_empty!19251 (not b!915313) (not b!915314))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78528 () Bool)

(assert start!78528)

(declare-fun b!915042 () Bool)

(declare-fun e!513516 () Bool)

(declare-fun tp_is_empty!19221 () Bool)

(assert (=> b!915042 (= e!513516 tp_is_empty!19221)))

(declare-fun b!915043 () Bool)

(declare-fun e!513515 () Bool)

(declare-fun e!513518 () Bool)

(declare-fun mapRes!30588 () Bool)

(assert (=> b!915043 (= e!513515 (and e!513518 mapRes!30588))))

(declare-fun condMapEmpty!30588 () Bool)

(declare-datatypes ((V!30593 0))(
  ( (V!30594 (val!9661 Int)) )
))
(declare-datatypes ((ValueCell!9129 0))(
  ( (ValueCellFull!9129 (v!12179 V!30593)) (EmptyCell!9129) )
))
(declare-datatypes ((array!54456 0))(
  ( (array!54457 (arr!26169 (Array (_ BitVec 32) ValueCell!9129)) (size!26629 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54456)

(declare-fun mapDefault!30588 () ValueCell!9129)

(assert (=> b!915043 (= condMapEmpty!30588 (= (arr!26169 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9129)) mapDefault!30588)))))

(declare-fun b!915044 () Bool)

(assert (=> b!915044 (= e!513518 tp_is_empty!19221)))

(declare-fun mapNonEmpty!30588 () Bool)

(declare-fun tp!58656 () Bool)

(assert (=> mapNonEmpty!30588 (= mapRes!30588 (and tp!58656 e!513516))))

(declare-fun mapKey!30588 () (_ BitVec 32))

(declare-fun mapRest!30588 () (Array (_ BitVec 32) ValueCell!9129))

(declare-fun mapValue!30588 () ValueCell!9129)

(assert (=> mapNonEmpty!30588 (= (arr!26169 _values!1231) (store mapRest!30588 mapKey!30588 mapValue!30588))))

(declare-fun b!915045 () Bool)

(declare-fun e!513519 () Bool)

(assert (=> b!915045 (= e!513519 false)))

(declare-fun lt!411576 () Bool)

(declare-datatypes ((array!54458 0))(
  ( (array!54459 (arr!26170 (Array (_ BitVec 32) (_ BitVec 64))) (size!26630 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54458)

(declare-datatypes ((List!18475 0))(
  ( (Nil!18472) (Cons!18471 (h!19617 (_ BitVec 64)) (t!26096 List!18475)) )
))
(declare-fun arrayNoDuplicates!0 (array!54458 (_ BitVec 32) List!18475) Bool)

(assert (=> b!915045 (= lt!411576 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18472))))

(declare-fun res!617097 () Bool)

(assert (=> start!78528 (=> (not res!617097) (not e!513519))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78528 (= res!617097 (validMask!0 mask!1881))))

(assert (=> start!78528 e!513519))

(assert (=> start!78528 true))

(declare-fun array_inv!20418 (array!54456) Bool)

(assert (=> start!78528 (and (array_inv!20418 _values!1231) e!513515)))

(declare-fun array_inv!20419 (array!54458) Bool)

(assert (=> start!78528 (array_inv!20419 _keys!1487)))

(declare-fun b!915046 () Bool)

(declare-fun res!617099 () Bool)

(assert (=> b!915046 (=> (not res!617099) (not e!513519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54458 (_ BitVec 32)) Bool)

(assert (=> b!915046 (= res!617099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30588 () Bool)

(assert (=> mapIsEmpty!30588 mapRes!30588))

(declare-fun b!915047 () Bool)

(declare-fun res!617098 () Bool)

(assert (=> b!915047 (=> (not res!617098) (not e!513519))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915047 (= res!617098 (and (= (size!26629 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26630 _keys!1487) (size!26629 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!78528 res!617097) b!915047))

(assert (= (and b!915047 res!617098) b!915046))

(assert (= (and b!915046 res!617099) b!915045))

(assert (= (and b!915043 condMapEmpty!30588) mapIsEmpty!30588))

(assert (= (and b!915043 (not condMapEmpty!30588)) mapNonEmpty!30588))

(get-info :version)

(assert (= (and mapNonEmpty!30588 ((_ is ValueCellFull!9129) mapValue!30588)) b!915042))

(assert (= (and b!915043 ((_ is ValueCellFull!9129) mapDefault!30588)) b!915044))

(assert (= start!78528 b!915043))

(declare-fun m!849607 () Bool)

(assert (=> mapNonEmpty!30588 m!849607))

(declare-fun m!849609 () Bool)

(assert (=> b!915045 m!849609))

(declare-fun m!849611 () Bool)

(assert (=> start!78528 m!849611))

(declare-fun m!849613 () Bool)

(assert (=> start!78528 m!849613))

(declare-fun m!849615 () Bool)

(assert (=> start!78528 m!849615))

(declare-fun m!849617 () Bool)

(assert (=> b!915046 m!849617))

(check-sat (not mapNonEmpty!30588) (not start!78528) tp_is_empty!19221 (not b!915046) (not b!915045))
(check-sat)

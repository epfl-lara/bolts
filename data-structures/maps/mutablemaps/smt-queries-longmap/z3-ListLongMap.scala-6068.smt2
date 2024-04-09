; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78546 () Bool)

(assert start!78546)

(declare-fun mapIsEmpty!30615 () Bool)

(declare-fun mapRes!30615 () Bool)

(assert (=> mapIsEmpty!30615 mapRes!30615))

(declare-fun b!915204 () Bool)

(declare-fun e!513652 () Bool)

(declare-fun tp_is_empty!19239 () Bool)

(assert (=> b!915204 (= e!513652 tp_is_empty!19239)))

(declare-fun mapNonEmpty!30615 () Bool)

(declare-fun tp!58683 () Bool)

(assert (=> mapNonEmpty!30615 (= mapRes!30615 (and tp!58683 e!513652))))

(declare-datatypes ((V!30617 0))(
  ( (V!30618 (val!9670 Int)) )
))
(declare-datatypes ((ValueCell!9138 0))(
  ( (ValueCellFull!9138 (v!12188 V!30617)) (EmptyCell!9138) )
))
(declare-fun mapRest!30615 () (Array (_ BitVec 32) ValueCell!9138))

(declare-datatypes ((array!54486 0))(
  ( (array!54487 (arr!26184 (Array (_ BitVec 32) ValueCell!9138)) (size!26644 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54486)

(declare-fun mapValue!30615 () ValueCell!9138)

(declare-fun mapKey!30615 () (_ BitVec 32))

(assert (=> mapNonEmpty!30615 (= (arr!26184 _values!1231) (store mapRest!30615 mapKey!30615 mapValue!30615))))

(declare-fun b!915205 () Bool)

(declare-fun res!617180 () Bool)

(declare-fun e!513651 () Bool)

(assert (=> b!915205 (=> (not res!617180) (not e!513651))))

(declare-datatypes ((array!54488 0))(
  ( (array!54489 (arr!26185 (Array (_ BitVec 32) (_ BitVec 64))) (size!26645 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54488)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915205 (= res!617180 (and (= (size!26644 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26645 _keys!1487) (size!26644 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915206 () Bool)

(declare-fun e!513653 () Bool)

(assert (=> b!915206 (= e!513653 tp_is_empty!19239)))

(declare-fun b!915207 () Bool)

(declare-fun e!513650 () Bool)

(assert (=> b!915207 (= e!513650 (and e!513653 mapRes!30615))))

(declare-fun condMapEmpty!30615 () Bool)

(declare-fun mapDefault!30615 () ValueCell!9138)

(assert (=> b!915207 (= condMapEmpty!30615 (= (arr!26184 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9138)) mapDefault!30615)))))

(declare-fun b!915208 () Bool)

(declare-fun res!617179 () Bool)

(assert (=> b!915208 (=> (not res!617179) (not e!513651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54488 (_ BitVec 32)) Bool)

(assert (=> b!915208 (= res!617179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915209 () Bool)

(assert (=> b!915209 (= e!513651 false)))

(declare-fun lt!411603 () Bool)

(declare-datatypes ((List!18479 0))(
  ( (Nil!18476) (Cons!18475 (h!19621 (_ BitVec 64)) (t!26100 List!18479)) )
))
(declare-fun arrayNoDuplicates!0 (array!54488 (_ BitVec 32) List!18479) Bool)

(assert (=> b!915209 (= lt!411603 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18476))))

(declare-fun res!617178 () Bool)

(assert (=> start!78546 (=> (not res!617178) (not e!513651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78546 (= res!617178 (validMask!0 mask!1881))))

(assert (=> start!78546 e!513651))

(assert (=> start!78546 true))

(declare-fun array_inv!20426 (array!54486) Bool)

(assert (=> start!78546 (and (array_inv!20426 _values!1231) e!513650)))

(declare-fun array_inv!20427 (array!54488) Bool)

(assert (=> start!78546 (array_inv!20427 _keys!1487)))

(assert (= (and start!78546 res!617178) b!915205))

(assert (= (and b!915205 res!617180) b!915208))

(assert (= (and b!915208 res!617179) b!915209))

(assert (= (and b!915207 condMapEmpty!30615) mapIsEmpty!30615))

(assert (= (and b!915207 (not condMapEmpty!30615)) mapNonEmpty!30615))

(get-info :version)

(assert (= (and mapNonEmpty!30615 ((_ is ValueCellFull!9138) mapValue!30615)) b!915204))

(assert (= (and b!915207 ((_ is ValueCellFull!9138) mapDefault!30615)) b!915206))

(assert (= start!78546 b!915207))

(declare-fun m!849715 () Bool)

(assert (=> mapNonEmpty!30615 m!849715))

(declare-fun m!849717 () Bool)

(assert (=> b!915208 m!849717))

(declare-fun m!849719 () Bool)

(assert (=> b!915209 m!849719))

(declare-fun m!849721 () Bool)

(assert (=> start!78546 m!849721))

(declare-fun m!849723 () Bool)

(assert (=> start!78546 m!849723))

(declare-fun m!849725 () Bool)

(assert (=> start!78546 m!849725))

(check-sat (not b!915208) (not mapNonEmpty!30615) tp_is_empty!19239 (not b!915209) (not start!78546))
(check-sat)

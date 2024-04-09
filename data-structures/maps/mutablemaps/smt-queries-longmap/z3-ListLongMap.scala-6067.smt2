; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78540 () Bool)

(assert start!78540)

(declare-fun b!915150 () Bool)

(declare-fun e!513605 () Bool)

(assert (=> b!915150 (= e!513605 false)))

(declare-fun lt!411594 () Bool)

(declare-datatypes ((array!54478 0))(
  ( (array!54479 (arr!26180 (Array (_ BitVec 32) (_ BitVec 64))) (size!26640 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54478)

(declare-datatypes ((List!18478 0))(
  ( (Nil!18475) (Cons!18474 (h!19620 (_ BitVec 64)) (t!26099 List!18478)) )
))
(declare-fun arrayNoDuplicates!0 (array!54478 (_ BitVec 32) List!18478) Bool)

(assert (=> b!915150 (= lt!411594 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18475))))

(declare-fun res!617153 () Bool)

(assert (=> start!78540 (=> (not res!617153) (not e!513605))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78540 (= res!617153 (validMask!0 mask!1881))))

(assert (=> start!78540 e!513605))

(assert (=> start!78540 true))

(declare-datatypes ((V!30609 0))(
  ( (V!30610 (val!9667 Int)) )
))
(declare-datatypes ((ValueCell!9135 0))(
  ( (ValueCellFull!9135 (v!12185 V!30609)) (EmptyCell!9135) )
))
(declare-datatypes ((array!54480 0))(
  ( (array!54481 (arr!26181 (Array (_ BitVec 32) ValueCell!9135)) (size!26641 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54480)

(declare-fun e!513606 () Bool)

(declare-fun array_inv!20424 (array!54480) Bool)

(assert (=> start!78540 (and (array_inv!20424 _values!1231) e!513606)))

(declare-fun array_inv!20425 (array!54478) Bool)

(assert (=> start!78540 (array_inv!20425 _keys!1487)))

(declare-fun b!915151 () Bool)

(declare-fun res!617152 () Bool)

(assert (=> b!915151 (=> (not res!617152) (not e!513605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54478 (_ BitVec 32)) Bool)

(assert (=> b!915151 (= res!617152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915152 () Bool)

(declare-fun e!513609 () Bool)

(declare-fun tp_is_empty!19233 () Bool)

(assert (=> b!915152 (= e!513609 tp_is_empty!19233)))

(declare-fun b!915153 () Bool)

(declare-fun res!617151 () Bool)

(assert (=> b!915153 (=> (not res!617151) (not e!513605))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915153 (= res!617151 (and (= (size!26641 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26640 _keys!1487) (size!26641 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915154 () Bool)

(declare-fun mapRes!30606 () Bool)

(assert (=> b!915154 (= e!513606 (and e!513609 mapRes!30606))))

(declare-fun condMapEmpty!30606 () Bool)

(declare-fun mapDefault!30606 () ValueCell!9135)

(assert (=> b!915154 (= condMapEmpty!30606 (= (arr!26181 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9135)) mapDefault!30606)))))

(declare-fun mapNonEmpty!30606 () Bool)

(declare-fun tp!58674 () Bool)

(declare-fun e!513607 () Bool)

(assert (=> mapNonEmpty!30606 (= mapRes!30606 (and tp!58674 e!513607))))

(declare-fun mapRest!30606 () (Array (_ BitVec 32) ValueCell!9135))

(declare-fun mapKey!30606 () (_ BitVec 32))

(declare-fun mapValue!30606 () ValueCell!9135)

(assert (=> mapNonEmpty!30606 (= (arr!26181 _values!1231) (store mapRest!30606 mapKey!30606 mapValue!30606))))

(declare-fun mapIsEmpty!30606 () Bool)

(assert (=> mapIsEmpty!30606 mapRes!30606))

(declare-fun b!915155 () Bool)

(assert (=> b!915155 (= e!513607 tp_is_empty!19233)))

(assert (= (and start!78540 res!617153) b!915153))

(assert (= (and b!915153 res!617151) b!915151))

(assert (= (and b!915151 res!617152) b!915150))

(assert (= (and b!915154 condMapEmpty!30606) mapIsEmpty!30606))

(assert (= (and b!915154 (not condMapEmpty!30606)) mapNonEmpty!30606))

(get-info :version)

(assert (= (and mapNonEmpty!30606 ((_ is ValueCellFull!9135) mapValue!30606)) b!915155))

(assert (= (and b!915154 ((_ is ValueCellFull!9135) mapDefault!30606)) b!915152))

(assert (= start!78540 b!915154))

(declare-fun m!849679 () Bool)

(assert (=> b!915150 m!849679))

(declare-fun m!849681 () Bool)

(assert (=> start!78540 m!849681))

(declare-fun m!849683 () Bool)

(assert (=> start!78540 m!849683))

(declare-fun m!849685 () Bool)

(assert (=> start!78540 m!849685))

(declare-fun m!849687 () Bool)

(assert (=> b!915151 m!849687))

(declare-fun m!849689 () Bool)

(assert (=> mapNonEmpty!30606 m!849689))

(check-sat (not b!915151) (not b!915150) (not start!78540) tp_is_empty!19233 (not mapNonEmpty!30606))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95438 () Bool)

(assert start!95438)

(declare-datatypes ((array!69140 0))(
  ( (array!69141 (arr!33244 (Array (_ BitVec 32) (_ BitVec 64))) (size!33781 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69140)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun e!616111 () Bool)

(declare-fun b!1077441 () Bool)

(assert (=> b!1077441 (= e!616111 (and (= (select (arr!33244 _keys!1070) i!650) k0!904) (not (= (size!33781 _keys!1070) (bvadd #b00000000000000000000000000000001 mask!1414)))))))

(declare-fun res!718014 () Bool)

(assert (=> start!95438 (=> (not res!718014) (not e!616111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95438 (= res!718014 (validMask!0 mask!1414))))

(assert (=> start!95438 e!616111))

(assert (=> start!95438 true))

(declare-fun array_inv!25546 (array!69140) Bool)

(assert (=> start!95438 (array_inv!25546 _keys!1070)))

(declare-datatypes ((V!39947 0))(
  ( (V!39948 (val!13114 Int)) )
))
(declare-datatypes ((ValueCell!12348 0))(
  ( (ValueCellFull!12348 (v!15735 V!39947)) (EmptyCell!12348) )
))
(declare-datatypes ((array!69142 0))(
  ( (array!69143 (arr!33245 (Array (_ BitVec 32) ValueCell!12348)) (size!33782 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69142)

(declare-fun e!616110 () Bool)

(declare-fun array_inv!25547 (array!69142) Bool)

(assert (=> start!95438 (and (array_inv!25547 _values!874) e!616110)))

(declare-fun b!1077442 () Bool)

(declare-fun res!718018 () Bool)

(assert (=> b!1077442 (=> (not res!718018) (not e!616111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69140 (_ BitVec 32)) Bool)

(assert (=> b!1077442 (= res!718018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!40915 () Bool)

(declare-fun mapRes!40915 () Bool)

(declare-fun tp!78378 () Bool)

(declare-fun e!616108 () Bool)

(assert (=> mapNonEmpty!40915 (= mapRes!40915 (and tp!78378 e!616108))))

(declare-fun mapValue!40915 () ValueCell!12348)

(declare-fun mapKey!40915 () (_ BitVec 32))

(declare-fun mapRest!40915 () (Array (_ BitVec 32) ValueCell!12348))

(assert (=> mapNonEmpty!40915 (= (arr!33245 _values!874) (store mapRest!40915 mapKey!40915 mapValue!40915))))

(declare-fun b!1077443 () Bool)

(declare-fun res!718015 () Bool)

(assert (=> b!1077443 (=> (not res!718015) (not e!616111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077443 (= res!718015 (validKeyInArray!0 k0!904))))

(declare-fun b!1077444 () Bool)

(declare-fun res!718013 () Bool)

(assert (=> b!1077444 (=> (not res!718013) (not e!616111))))

(declare-datatypes ((List!23334 0))(
  ( (Nil!23331) (Cons!23330 (h!24539 (_ BitVec 64)) (t!32700 List!23334)) )
))
(declare-fun arrayNoDuplicates!0 (array!69140 (_ BitVec 32) List!23334) Bool)

(assert (=> b!1077444 (= res!718013 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23331))))

(declare-fun b!1077445 () Bool)

(declare-fun tp_is_empty!26115 () Bool)

(assert (=> b!1077445 (= e!616108 tp_is_empty!26115)))

(declare-fun mapIsEmpty!40915 () Bool)

(assert (=> mapIsEmpty!40915 mapRes!40915))

(declare-fun b!1077446 () Bool)

(declare-fun res!718017 () Bool)

(assert (=> b!1077446 (=> (not res!718017) (not e!616111))))

(assert (=> b!1077446 (= res!718017 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33781 _keys!1070))))))

(declare-fun b!1077447 () Bool)

(declare-fun res!718016 () Bool)

(assert (=> b!1077447 (=> (not res!718016) (not e!616111))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077447 (= res!718016 (and (= (size!33782 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33781 _keys!1070) (size!33782 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077448 () Bool)

(declare-fun e!616107 () Bool)

(assert (=> b!1077448 (= e!616107 tp_is_empty!26115)))

(declare-fun b!1077449 () Bool)

(assert (=> b!1077449 (= e!616110 (and e!616107 mapRes!40915))))

(declare-fun condMapEmpty!40915 () Bool)

(declare-fun mapDefault!40915 () ValueCell!12348)

(assert (=> b!1077449 (= condMapEmpty!40915 (= (arr!33245 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12348)) mapDefault!40915)))))

(assert (= (and start!95438 res!718014) b!1077447))

(assert (= (and b!1077447 res!718016) b!1077442))

(assert (= (and b!1077442 res!718018) b!1077444))

(assert (= (and b!1077444 res!718013) b!1077446))

(assert (= (and b!1077446 res!718017) b!1077443))

(assert (= (and b!1077443 res!718015) b!1077441))

(assert (= (and b!1077449 condMapEmpty!40915) mapIsEmpty!40915))

(assert (= (and b!1077449 (not condMapEmpty!40915)) mapNonEmpty!40915))

(get-info :version)

(assert (= (and mapNonEmpty!40915 ((_ is ValueCellFull!12348) mapValue!40915)) b!1077445))

(assert (= (and b!1077449 ((_ is ValueCellFull!12348) mapDefault!40915)) b!1077448))

(assert (= start!95438 b!1077449))

(declare-fun m!996413 () Bool)

(assert (=> b!1077443 m!996413))

(declare-fun m!996415 () Bool)

(assert (=> b!1077444 m!996415))

(declare-fun m!996417 () Bool)

(assert (=> mapNonEmpty!40915 m!996417))

(declare-fun m!996419 () Bool)

(assert (=> b!1077441 m!996419))

(declare-fun m!996421 () Bool)

(assert (=> b!1077442 m!996421))

(declare-fun m!996423 () Bool)

(assert (=> start!95438 m!996423))

(declare-fun m!996425 () Bool)

(assert (=> start!95438 m!996425))

(declare-fun m!996427 () Bool)

(assert (=> start!95438 m!996427))

(check-sat (not start!95438) (not b!1077443) (not b!1077442) (not mapNonEmpty!40915) tp_is_empty!26115 (not b!1077444))
(check-sat)

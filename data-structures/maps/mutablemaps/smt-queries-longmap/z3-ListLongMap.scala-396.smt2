; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7430 () Bool)

(assert start!7430)

(declare-fun b!47726 () Bool)

(declare-fun e!30593 () Bool)

(assert (=> b!47726 (= e!30593 false)))

(declare-fun lt!20457 () Bool)

(declare-datatypes ((array!3170 0))(
  ( (array!3171 (arr!1519 (Array (_ BitVec 32) (_ BitVec 64))) (size!1741 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3170)

(declare-datatypes ((List!1282 0))(
  ( (Nil!1279) (Cons!1278 (h!1858 (_ BitVec 64)) (t!4318 List!1282)) )
))
(declare-fun arrayNoDuplicates!0 (array!3170 (_ BitVec 32) List!1282) Bool)

(assert (=> b!47726 (= lt!20457 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1279))))

(declare-fun mapIsEmpty!2126 () Bool)

(declare-fun mapRes!2126 () Bool)

(assert (=> mapIsEmpty!2126 mapRes!2126))

(declare-fun b!47728 () Bool)

(declare-fun res!27750 () Bool)

(assert (=> b!47728 (=> (not res!27750) (not e!30593))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2473 0))(
  ( (V!2474 (val!1066 Int)) )
))
(declare-datatypes ((ValueCell!738 0))(
  ( (ValueCellFull!738 (v!2126 V!2473)) (EmptyCell!738) )
))
(declare-datatypes ((array!3172 0))(
  ( (array!3173 (arr!1520 (Array (_ BitVec 32) ValueCell!738)) (size!1742 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3172)

(assert (=> b!47728 (= res!27750 (and (= (size!1742 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1741 _keys!1940) (size!1742 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47729 () Bool)

(declare-fun res!27749 () Bool)

(assert (=> b!47729 (=> (not res!27749) (not e!30593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3170 (_ BitVec 32)) Bool)

(assert (=> b!47729 (= res!27749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun mapNonEmpty!2126 () Bool)

(declare-fun tp!6275 () Bool)

(declare-fun e!30594 () Bool)

(assert (=> mapNonEmpty!2126 (= mapRes!2126 (and tp!6275 e!30594))))

(declare-fun mapRest!2126 () (Array (_ BitVec 32) ValueCell!738))

(declare-fun mapValue!2126 () ValueCell!738)

(declare-fun mapKey!2126 () (_ BitVec 32))

(assert (=> mapNonEmpty!2126 (= (arr!1520 _values!1550) (store mapRest!2126 mapKey!2126 mapValue!2126))))

(declare-fun b!47727 () Bool)

(declare-fun e!30592 () Bool)

(declare-fun e!30595 () Bool)

(assert (=> b!47727 (= e!30592 (and e!30595 mapRes!2126))))

(declare-fun condMapEmpty!2126 () Bool)

(declare-fun mapDefault!2126 () ValueCell!738)

(assert (=> b!47727 (= condMapEmpty!2126 (= (arr!1520 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!738)) mapDefault!2126)))))

(declare-fun res!27748 () Bool)

(assert (=> start!7430 (=> (not res!27748) (not e!30593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7430 (= res!27748 (validMask!0 mask!2458))))

(assert (=> start!7430 e!30593))

(assert (=> start!7430 true))

(declare-fun array_inv!870 (array!3172) Bool)

(assert (=> start!7430 (and (array_inv!870 _values!1550) e!30592)))

(declare-fun array_inv!871 (array!3170) Bool)

(assert (=> start!7430 (array_inv!871 _keys!1940)))

(declare-fun b!47730 () Bool)

(declare-fun tp_is_empty!2055 () Bool)

(assert (=> b!47730 (= e!30595 tp_is_empty!2055)))

(declare-fun b!47731 () Bool)

(assert (=> b!47731 (= e!30594 tp_is_empty!2055)))

(assert (= (and start!7430 res!27748) b!47728))

(assert (= (and b!47728 res!27750) b!47729))

(assert (= (and b!47729 res!27749) b!47726))

(assert (= (and b!47727 condMapEmpty!2126) mapIsEmpty!2126))

(assert (= (and b!47727 (not condMapEmpty!2126)) mapNonEmpty!2126))

(get-info :version)

(assert (= (and mapNonEmpty!2126 ((_ is ValueCellFull!738) mapValue!2126)) b!47731))

(assert (= (and b!47727 ((_ is ValueCellFull!738) mapDefault!2126)) b!47730))

(assert (= start!7430 b!47727))

(declare-fun m!41869 () Bool)

(assert (=> b!47726 m!41869))

(declare-fun m!41871 () Bool)

(assert (=> b!47729 m!41871))

(declare-fun m!41873 () Bool)

(assert (=> mapNonEmpty!2126 m!41873))

(declare-fun m!41875 () Bool)

(assert (=> start!7430 m!41875))

(declare-fun m!41877 () Bool)

(assert (=> start!7430 m!41877))

(declare-fun m!41879 () Bool)

(assert (=> start!7430 m!41879))

(check-sat (not b!47726) tp_is_empty!2055 (not b!47729) (not mapNonEmpty!2126) (not start!7430))
(check-sat)

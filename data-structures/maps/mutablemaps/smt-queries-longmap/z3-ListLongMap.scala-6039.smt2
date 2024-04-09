; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78164 () Bool)

(assert start!78164)

(declare-fun b_free!16647 () Bool)

(declare-fun b_next!16647 () Bool)

(assert (=> start!78164 (= b_free!16647 (not b_next!16647))))

(declare-fun tp!58215 () Bool)

(declare-fun b_and!27239 () Bool)

(assert (=> start!78164 (= tp!58215 b_and!27239)))

(declare-fun res!615223 () Bool)

(declare-fun e!511457 () Bool)

(assert (=> start!78164 (=> (not res!615223) (not e!511457))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78164 (= res!615223 (validMask!0 mask!1756))))

(assert (=> start!78164 e!511457))

(declare-datatypes ((V!30385 0))(
  ( (V!30386 (val!9583 Int)) )
))
(declare-datatypes ((ValueCell!9051 0))(
  ( (ValueCellFull!9051 (v!12093 V!30385)) (EmptyCell!9051) )
))
(declare-datatypes ((array!54138 0))(
  ( (array!54139 (arr!26020 (Array (_ BitVec 32) ValueCell!9051)) (size!26480 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54138)

(declare-fun e!511459 () Bool)

(declare-fun array_inv!20318 (array!54138) Bool)

(assert (=> start!78164 (and (array_inv!20318 _values!1152) e!511459)))

(assert (=> start!78164 tp!58215))

(assert (=> start!78164 true))

(declare-fun tp_is_empty!19065 () Bool)

(assert (=> start!78164 tp_is_empty!19065))

(declare-datatypes ((array!54140 0))(
  ( (array!54141 (arr!26021 (Array (_ BitVec 32) (_ BitVec 64))) (size!26481 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54140)

(declare-fun array_inv!20319 (array!54140) Bool)

(assert (=> start!78164 (array_inv!20319 _keys!1386)))

(declare-fun b!911785 () Bool)

(declare-fun res!615220 () Bool)

(assert (=> b!911785 (=> (not res!615220) (not e!511457))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!911785 (= res!615220 (and (= (size!26480 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26481 _keys!1386) (size!26480 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30322 () Bool)

(declare-fun mapRes!30322 () Bool)

(assert (=> mapIsEmpty!30322 mapRes!30322))

(declare-fun b!911786 () Bool)

(assert (=> b!911786 (= e!511457 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30385)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!410476 () Bool)

(declare-fun minValue!1094 () V!30385)

(declare-datatypes ((tuple2!12538 0))(
  ( (tuple2!12539 (_1!6279 (_ BitVec 64)) (_2!6279 V!30385)) )
))
(declare-datatypes ((List!18381 0))(
  ( (Nil!18378) (Cons!18377 (h!19523 tuple2!12538) (t!25976 List!18381)) )
))
(declare-datatypes ((ListLongMap!11249 0))(
  ( (ListLongMap!11250 (toList!5640 List!18381)) )
))
(declare-fun contains!4650 (ListLongMap!11249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2870 (array!54140 array!54138 (_ BitVec 32) (_ BitVec 32) V!30385 V!30385 (_ BitVec 32) Int) ListLongMap!11249)

(assert (=> b!911786 (= lt!410476 (contains!4650 (getCurrentListMap!2870 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911787 () Bool)

(declare-fun e!511460 () Bool)

(assert (=> b!911787 (= e!511460 tp_is_empty!19065)))

(declare-fun b!911788 () Bool)

(declare-fun res!615221 () Bool)

(assert (=> b!911788 (=> (not res!615221) (not e!511457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54140 (_ BitVec 32)) Bool)

(assert (=> b!911788 (= res!615221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30322 () Bool)

(declare-fun tp!58216 () Bool)

(declare-fun e!511456 () Bool)

(assert (=> mapNonEmpty!30322 (= mapRes!30322 (and tp!58216 e!511456))))

(declare-fun mapRest!30322 () (Array (_ BitVec 32) ValueCell!9051))

(declare-fun mapValue!30322 () ValueCell!9051)

(declare-fun mapKey!30322 () (_ BitVec 32))

(assert (=> mapNonEmpty!30322 (= (arr!26020 _values!1152) (store mapRest!30322 mapKey!30322 mapValue!30322))))

(declare-fun b!911789 () Bool)

(assert (=> b!911789 (= e!511456 tp_is_empty!19065)))

(declare-fun b!911790 () Bool)

(assert (=> b!911790 (= e!511459 (and e!511460 mapRes!30322))))

(declare-fun condMapEmpty!30322 () Bool)

(declare-fun mapDefault!30322 () ValueCell!9051)

(assert (=> b!911790 (= condMapEmpty!30322 (= (arr!26020 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9051)) mapDefault!30322)))))

(declare-fun b!911791 () Bool)

(declare-fun res!615222 () Bool)

(assert (=> b!911791 (=> (not res!615222) (not e!511457))))

(declare-datatypes ((List!18382 0))(
  ( (Nil!18379) (Cons!18378 (h!19524 (_ BitVec 64)) (t!25977 List!18382)) )
))
(declare-fun arrayNoDuplicates!0 (array!54140 (_ BitVec 32) List!18382) Bool)

(assert (=> b!911791 (= res!615222 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18379))))

(assert (= (and start!78164 res!615223) b!911785))

(assert (= (and b!911785 res!615220) b!911788))

(assert (= (and b!911788 res!615221) b!911791))

(assert (= (and b!911791 res!615222) b!911786))

(assert (= (and b!911790 condMapEmpty!30322) mapIsEmpty!30322))

(assert (= (and b!911790 (not condMapEmpty!30322)) mapNonEmpty!30322))

(get-info :version)

(assert (= (and mapNonEmpty!30322 ((_ is ValueCellFull!9051) mapValue!30322)) b!911789))

(assert (= (and b!911790 ((_ is ValueCellFull!9051) mapDefault!30322)) b!911787))

(assert (= start!78164 b!911790))

(declare-fun m!846523 () Bool)

(assert (=> mapNonEmpty!30322 m!846523))

(declare-fun m!846525 () Bool)

(assert (=> start!78164 m!846525))

(declare-fun m!846527 () Bool)

(assert (=> start!78164 m!846527))

(declare-fun m!846529 () Bool)

(assert (=> start!78164 m!846529))

(declare-fun m!846531 () Bool)

(assert (=> b!911786 m!846531))

(assert (=> b!911786 m!846531))

(declare-fun m!846533 () Bool)

(assert (=> b!911786 m!846533))

(declare-fun m!846535 () Bool)

(assert (=> b!911791 m!846535))

(declare-fun m!846537 () Bool)

(assert (=> b!911788 m!846537))

(check-sat (not b_next!16647) (not b!911791) b_and!27239 (not mapNonEmpty!30322) (not b!911786) (not start!78164) tp_is_empty!19065 (not b!911788))
(check-sat b_and!27239 (not b_next!16647))

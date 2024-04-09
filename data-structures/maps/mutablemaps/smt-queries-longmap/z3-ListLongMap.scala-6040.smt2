; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78170 () Bool)

(assert start!78170)

(declare-fun b_free!16653 () Bool)

(declare-fun b_next!16653 () Bool)

(assert (=> start!78170 (= b_free!16653 (not b_next!16653))))

(declare-fun tp!58233 () Bool)

(declare-fun b_and!27245 () Bool)

(assert (=> start!78170 (= tp!58233 b_and!27245)))

(declare-fun b!911848 () Bool)

(declare-fun e!511501 () Bool)

(assert (=> b!911848 (= e!511501 false)))

(declare-datatypes ((V!30393 0))(
  ( (V!30394 (val!9586 Int)) )
))
(declare-datatypes ((ValueCell!9054 0))(
  ( (ValueCellFull!9054 (v!12096 V!30393)) (EmptyCell!9054) )
))
(declare-datatypes ((array!54150 0))(
  ( (array!54151 (arr!26026 (Array (_ BitVec 32) ValueCell!9054)) (size!26486 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54150)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30393)

(declare-datatypes ((array!54152 0))(
  ( (array!54153 (arr!26027 (Array (_ BitVec 32) (_ BitVec 64))) (size!26487 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54152)

(declare-fun lt!410485 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30393)

(declare-datatypes ((tuple2!12544 0))(
  ( (tuple2!12545 (_1!6282 (_ BitVec 64)) (_2!6282 V!30393)) )
))
(declare-datatypes ((List!18386 0))(
  ( (Nil!18383) (Cons!18382 (h!19528 tuple2!12544) (t!25981 List!18386)) )
))
(declare-datatypes ((ListLongMap!11255 0))(
  ( (ListLongMap!11256 (toList!5643 List!18386)) )
))
(declare-fun contains!4653 (ListLongMap!11255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2873 (array!54152 array!54150 (_ BitVec 32) (_ BitVec 32) V!30393 V!30393 (_ BitVec 32) Int) ListLongMap!11255)

(assert (=> b!911848 (= lt!410485 (contains!4653 (getCurrentListMap!2873 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911849 () Bool)

(declare-fun e!511505 () Bool)

(declare-fun tp_is_empty!19071 () Bool)

(assert (=> b!911849 (= e!511505 tp_is_empty!19071)))

(declare-fun mapNonEmpty!30331 () Bool)

(declare-fun mapRes!30331 () Bool)

(declare-fun tp!58234 () Bool)

(assert (=> mapNonEmpty!30331 (= mapRes!30331 (and tp!58234 e!511505))))

(declare-fun mapRest!30331 () (Array (_ BitVec 32) ValueCell!9054))

(declare-fun mapValue!30331 () ValueCell!9054)

(declare-fun mapKey!30331 () (_ BitVec 32))

(assert (=> mapNonEmpty!30331 (= (arr!26026 _values!1152) (store mapRest!30331 mapKey!30331 mapValue!30331))))

(declare-fun b!911850 () Bool)

(declare-fun res!615257 () Bool)

(assert (=> b!911850 (=> (not res!615257) (not e!511501))))

(declare-datatypes ((List!18387 0))(
  ( (Nil!18384) (Cons!18383 (h!19529 (_ BitVec 64)) (t!25982 List!18387)) )
))
(declare-fun arrayNoDuplicates!0 (array!54152 (_ BitVec 32) List!18387) Bool)

(assert (=> b!911850 (= res!615257 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18384))))

(declare-fun res!615256 () Bool)

(assert (=> start!78170 (=> (not res!615256) (not e!511501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78170 (= res!615256 (validMask!0 mask!1756))))

(assert (=> start!78170 e!511501))

(declare-fun e!511504 () Bool)

(declare-fun array_inv!20322 (array!54150) Bool)

(assert (=> start!78170 (and (array_inv!20322 _values!1152) e!511504)))

(assert (=> start!78170 tp!58233))

(assert (=> start!78170 true))

(assert (=> start!78170 tp_is_empty!19071))

(declare-fun array_inv!20323 (array!54152) Bool)

(assert (=> start!78170 (array_inv!20323 _keys!1386)))

(declare-fun b!911851 () Bool)

(declare-fun res!615259 () Bool)

(assert (=> b!911851 (=> (not res!615259) (not e!511501))))

(assert (=> b!911851 (= res!615259 (and (= (size!26486 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26487 _keys!1386) (size!26486 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911852 () Bool)

(declare-fun e!511503 () Bool)

(assert (=> b!911852 (= e!511503 tp_is_empty!19071)))

(declare-fun mapIsEmpty!30331 () Bool)

(assert (=> mapIsEmpty!30331 mapRes!30331))

(declare-fun b!911853 () Bool)

(declare-fun res!615258 () Bool)

(assert (=> b!911853 (=> (not res!615258) (not e!511501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54152 (_ BitVec 32)) Bool)

(assert (=> b!911853 (= res!615258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911854 () Bool)

(assert (=> b!911854 (= e!511504 (and e!511503 mapRes!30331))))

(declare-fun condMapEmpty!30331 () Bool)

(declare-fun mapDefault!30331 () ValueCell!9054)

(assert (=> b!911854 (= condMapEmpty!30331 (= (arr!26026 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9054)) mapDefault!30331)))))

(assert (= (and start!78170 res!615256) b!911851))

(assert (= (and b!911851 res!615259) b!911853))

(assert (= (and b!911853 res!615258) b!911850))

(assert (= (and b!911850 res!615257) b!911848))

(assert (= (and b!911854 condMapEmpty!30331) mapIsEmpty!30331))

(assert (= (and b!911854 (not condMapEmpty!30331)) mapNonEmpty!30331))

(get-info :version)

(assert (= (and mapNonEmpty!30331 ((_ is ValueCellFull!9054) mapValue!30331)) b!911849))

(assert (= (and b!911854 ((_ is ValueCellFull!9054) mapDefault!30331)) b!911852))

(assert (= start!78170 b!911854))

(declare-fun m!846571 () Bool)

(assert (=> b!911848 m!846571))

(assert (=> b!911848 m!846571))

(declare-fun m!846573 () Bool)

(assert (=> b!911848 m!846573))

(declare-fun m!846575 () Bool)

(assert (=> start!78170 m!846575))

(declare-fun m!846577 () Bool)

(assert (=> start!78170 m!846577))

(declare-fun m!846579 () Bool)

(assert (=> start!78170 m!846579))

(declare-fun m!846581 () Bool)

(assert (=> b!911853 m!846581))

(declare-fun m!846583 () Bool)

(assert (=> b!911850 m!846583))

(declare-fun m!846585 () Bool)

(assert (=> mapNonEmpty!30331 m!846585))

(check-sat (not b!911848) tp_is_empty!19071 (not b!911853) (not b!911850) (not b_next!16653) (not start!78170) b_and!27245 (not mapNonEmpty!30331))
(check-sat b_and!27245 (not b_next!16653))

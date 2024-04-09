; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78028 () Bool)

(assert start!78028)

(declare-fun b_free!16527 () Bool)

(declare-fun b_next!16527 () Bool)

(assert (=> start!78028 (= b_free!16527 (not b_next!16527))))

(declare-fun tp!57852 () Bool)

(declare-fun b_and!27117 () Bool)

(assert (=> start!78028 (= tp!57852 b_and!27117)))

(declare-fun b!910398 () Bool)

(declare-fun res!614437 () Bool)

(declare-fun e!510484 () Bool)

(assert (=> b!910398 (=> (not res!614437) (not e!510484))))

(declare-datatypes ((array!53902 0))(
  ( (array!53903 (arr!25903 (Array (_ BitVec 32) (_ BitVec 64))) (size!26363 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53902)

(declare-datatypes ((List!18296 0))(
  ( (Nil!18293) (Cons!18292 (h!19438 (_ BitVec 64)) (t!25889 List!18296)) )
))
(declare-fun arrayNoDuplicates!0 (array!53902 (_ BitVec 32) List!18296) Bool)

(assert (=> b!910398 (= res!614437 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18293))))

(declare-fun b!910399 () Bool)

(declare-fun e!510487 () Bool)

(declare-fun tp_is_empty!18945 () Bool)

(assert (=> b!910399 (= e!510487 tp_is_empty!18945)))

(declare-fun mapIsEmpty!30139 () Bool)

(declare-fun mapRes!30139 () Bool)

(assert (=> mapIsEmpty!30139 mapRes!30139))

(declare-fun b!910400 () Bool)

(declare-fun e!510486 () Bool)

(assert (=> b!910400 (= e!510486 tp_is_empty!18945)))

(declare-fun b!910401 () Bool)

(declare-fun res!614439 () Bool)

(assert (=> b!910401 (=> (not res!614439) (not e!510484))))

(declare-datatypes ((V!30225 0))(
  ( (V!30226 (val!9523 Int)) )
))
(declare-datatypes ((ValueCell!8991 0))(
  ( (ValueCellFull!8991 (v!12032 V!30225)) (EmptyCell!8991) )
))
(declare-datatypes ((array!53904 0))(
  ( (array!53905 (arr!25904 (Array (_ BitVec 32) ValueCell!8991)) (size!26364 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53904)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!910401 (= res!614439 (and (= (size!26364 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26363 _keys!1386) (size!26364 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614438 () Bool)

(assert (=> start!78028 (=> (not res!614438) (not e!510484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78028 (= res!614438 (validMask!0 mask!1756))))

(assert (=> start!78028 e!510484))

(declare-fun e!510488 () Bool)

(declare-fun array_inv!20234 (array!53904) Bool)

(assert (=> start!78028 (and (array_inv!20234 _values!1152) e!510488)))

(assert (=> start!78028 tp!57852))

(assert (=> start!78028 true))

(assert (=> start!78028 tp_is_empty!18945))

(declare-fun array_inv!20235 (array!53902) Bool)

(assert (=> start!78028 (array_inv!20235 _keys!1386)))

(declare-fun b!910402 () Bool)

(declare-fun res!614440 () Bool)

(assert (=> b!910402 (=> (not res!614440) (not e!510484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53902 (_ BitVec 32)) Bool)

(assert (=> b!910402 (= res!614440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30139 () Bool)

(declare-fun tp!57853 () Bool)

(assert (=> mapNonEmpty!30139 (= mapRes!30139 (and tp!57853 e!510486))))

(declare-fun mapValue!30139 () ValueCell!8991)

(declare-fun mapRest!30139 () (Array (_ BitVec 32) ValueCell!8991))

(declare-fun mapKey!30139 () (_ BitVec 32))

(assert (=> mapNonEmpty!30139 (= (arr!25904 _values!1152) (store mapRest!30139 mapKey!30139 mapValue!30139))))

(declare-fun b!910403 () Bool)

(assert (=> b!910403 (= e!510484 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410218 () Bool)

(declare-fun zeroValue!1094 () V!30225)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30225)

(declare-datatypes ((tuple2!12444 0))(
  ( (tuple2!12445 (_1!6232 (_ BitVec 64)) (_2!6232 V!30225)) )
))
(declare-datatypes ((List!18297 0))(
  ( (Nil!18294) (Cons!18293 (h!19439 tuple2!12444) (t!25890 List!18297)) )
))
(declare-datatypes ((ListLongMap!11155 0))(
  ( (ListLongMap!11156 (toList!5593 List!18297)) )
))
(declare-fun contains!4602 (ListLongMap!11155 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2823 (array!53902 array!53904 (_ BitVec 32) (_ BitVec 32) V!30225 V!30225 (_ BitVec 32) Int) ListLongMap!11155)

(assert (=> b!910403 (= lt!410218 (contains!4602 (getCurrentListMap!2823 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910404 () Bool)

(assert (=> b!910404 (= e!510488 (and e!510487 mapRes!30139))))

(declare-fun condMapEmpty!30139 () Bool)

(declare-fun mapDefault!30139 () ValueCell!8991)

(assert (=> b!910404 (= condMapEmpty!30139 (= (arr!25904 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8991)) mapDefault!30139)))))

(assert (= (and start!78028 res!614438) b!910401))

(assert (= (and b!910401 res!614439) b!910402))

(assert (= (and b!910402 res!614440) b!910398))

(assert (= (and b!910398 res!614437) b!910403))

(assert (= (and b!910404 condMapEmpty!30139) mapIsEmpty!30139))

(assert (= (and b!910404 (not condMapEmpty!30139)) mapNonEmpty!30139))

(get-info :version)

(assert (= (and mapNonEmpty!30139 ((_ is ValueCellFull!8991) mapValue!30139)) b!910400))

(assert (= (and b!910404 ((_ is ValueCellFull!8991) mapDefault!30139)) b!910399))

(assert (= start!78028 b!910404))

(declare-fun m!845477 () Bool)

(assert (=> mapNonEmpty!30139 m!845477))

(declare-fun m!845479 () Bool)

(assert (=> b!910398 m!845479))

(declare-fun m!845481 () Bool)

(assert (=> start!78028 m!845481))

(declare-fun m!845483 () Bool)

(assert (=> start!78028 m!845483))

(declare-fun m!845485 () Bool)

(assert (=> start!78028 m!845485))

(declare-fun m!845487 () Bool)

(assert (=> b!910403 m!845487))

(assert (=> b!910403 m!845487))

(declare-fun m!845489 () Bool)

(assert (=> b!910403 m!845489))

(declare-fun m!845491 () Bool)

(assert (=> b!910402 m!845491))

(check-sat (not mapNonEmpty!30139) (not b!910398) (not start!78028) (not b!910402) (not b!910403) b_and!27117 tp_is_empty!18945 (not b_next!16527))
(check-sat b_and!27117 (not b_next!16527))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78034 () Bool)

(assert start!78034)

(declare-fun b_free!16533 () Bool)

(declare-fun b_next!16533 () Bool)

(assert (=> start!78034 (= b_free!16533 (not b_next!16533))))

(declare-fun tp!57870 () Bool)

(declare-fun b_and!27123 () Bool)

(assert (=> start!78034 (= tp!57870 b_and!27123)))

(declare-fun b!910461 () Bool)

(declare-fun res!614476 () Bool)

(declare-fun e!510532 () Bool)

(assert (=> b!910461 (=> (not res!614476) (not e!510532))))

(declare-datatypes ((V!30233 0))(
  ( (V!30234 (val!9526 Int)) )
))
(declare-datatypes ((ValueCell!8994 0))(
  ( (ValueCellFull!8994 (v!12035 V!30233)) (EmptyCell!8994) )
))
(declare-datatypes ((array!53914 0))(
  ( (array!53915 (arr!25909 (Array (_ BitVec 32) ValueCell!8994)) (size!26369 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53914)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((array!53916 0))(
  ( (array!53917 (arr!25910 (Array (_ BitVec 32) (_ BitVec 64))) (size!26370 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53916)

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!910461 (= res!614476 (and (= (size!26369 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26370 _keys!1386) (size!26369 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910462 () Bool)

(declare-fun e!510530 () Bool)

(declare-fun e!510529 () Bool)

(declare-fun mapRes!30148 () Bool)

(assert (=> b!910462 (= e!510530 (and e!510529 mapRes!30148))))

(declare-fun condMapEmpty!30148 () Bool)

(declare-fun mapDefault!30148 () ValueCell!8994)

(assert (=> b!910462 (= condMapEmpty!30148 (= (arr!25909 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8994)) mapDefault!30148)))))

(declare-fun b!910463 () Bool)

(assert (=> b!910463 (= e!510532 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30233)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!410227 () Bool)

(declare-fun minValue!1094 () V!30233)

(declare-datatypes ((tuple2!12450 0))(
  ( (tuple2!12451 (_1!6235 (_ BitVec 64)) (_2!6235 V!30233)) )
))
(declare-datatypes ((List!18301 0))(
  ( (Nil!18298) (Cons!18297 (h!19443 tuple2!12450) (t!25894 List!18301)) )
))
(declare-datatypes ((ListLongMap!11161 0))(
  ( (ListLongMap!11162 (toList!5596 List!18301)) )
))
(declare-fun contains!4605 (ListLongMap!11161 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2826 (array!53916 array!53914 (_ BitVec 32) (_ BitVec 32) V!30233 V!30233 (_ BitVec 32) Int) ListLongMap!11161)

(assert (=> b!910463 (= lt!410227 (contains!4605 (getCurrentListMap!2826 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910464 () Bool)

(declare-fun tp_is_empty!18951 () Bool)

(assert (=> b!910464 (= e!510529 tp_is_empty!18951)))

(declare-fun mapNonEmpty!30148 () Bool)

(declare-fun tp!57871 () Bool)

(declare-fun e!510531 () Bool)

(assert (=> mapNonEmpty!30148 (= mapRes!30148 (and tp!57871 e!510531))))

(declare-fun mapRest!30148 () (Array (_ BitVec 32) ValueCell!8994))

(declare-fun mapKey!30148 () (_ BitVec 32))

(declare-fun mapValue!30148 () ValueCell!8994)

(assert (=> mapNonEmpty!30148 (= (arr!25909 _values!1152) (store mapRest!30148 mapKey!30148 mapValue!30148))))

(declare-fun b!910465 () Bool)

(declare-fun res!614474 () Bool)

(assert (=> b!910465 (=> (not res!614474) (not e!510532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53916 (_ BitVec 32)) Bool)

(assert (=> b!910465 (= res!614474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910466 () Bool)

(declare-fun res!614473 () Bool)

(assert (=> b!910466 (=> (not res!614473) (not e!510532))))

(declare-datatypes ((List!18302 0))(
  ( (Nil!18299) (Cons!18298 (h!19444 (_ BitVec 64)) (t!25895 List!18302)) )
))
(declare-fun arrayNoDuplicates!0 (array!53916 (_ BitVec 32) List!18302) Bool)

(assert (=> b!910466 (= res!614473 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18299))))

(declare-fun b!910467 () Bool)

(assert (=> b!910467 (= e!510531 tp_is_empty!18951)))

(declare-fun res!614475 () Bool)

(assert (=> start!78034 (=> (not res!614475) (not e!510532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78034 (= res!614475 (validMask!0 mask!1756))))

(assert (=> start!78034 e!510532))

(declare-fun array_inv!20238 (array!53914) Bool)

(assert (=> start!78034 (and (array_inv!20238 _values!1152) e!510530)))

(assert (=> start!78034 tp!57870))

(assert (=> start!78034 true))

(assert (=> start!78034 tp_is_empty!18951))

(declare-fun array_inv!20239 (array!53916) Bool)

(assert (=> start!78034 (array_inv!20239 _keys!1386)))

(declare-fun mapIsEmpty!30148 () Bool)

(assert (=> mapIsEmpty!30148 mapRes!30148))

(assert (= (and start!78034 res!614475) b!910461))

(assert (= (and b!910461 res!614476) b!910465))

(assert (= (and b!910465 res!614474) b!910466))

(assert (= (and b!910466 res!614473) b!910463))

(assert (= (and b!910462 condMapEmpty!30148) mapIsEmpty!30148))

(assert (= (and b!910462 (not condMapEmpty!30148)) mapNonEmpty!30148))

(get-info :version)

(assert (= (and mapNonEmpty!30148 ((_ is ValueCellFull!8994) mapValue!30148)) b!910467))

(assert (= (and b!910462 ((_ is ValueCellFull!8994) mapDefault!30148)) b!910464))

(assert (= start!78034 b!910462))

(declare-fun m!845525 () Bool)

(assert (=> start!78034 m!845525))

(declare-fun m!845527 () Bool)

(assert (=> start!78034 m!845527))

(declare-fun m!845529 () Bool)

(assert (=> start!78034 m!845529))

(declare-fun m!845531 () Bool)

(assert (=> b!910463 m!845531))

(assert (=> b!910463 m!845531))

(declare-fun m!845533 () Bool)

(assert (=> b!910463 m!845533))

(declare-fun m!845535 () Bool)

(assert (=> mapNonEmpty!30148 m!845535))

(declare-fun m!845537 () Bool)

(assert (=> b!910466 m!845537))

(declare-fun m!845539 () Bool)

(assert (=> b!910465 m!845539))

(check-sat (not b!910466) tp_is_empty!18951 (not b!910465) b_and!27123 (not start!78034) (not b_next!16533) (not b!910463) (not mapNonEmpty!30148))
(check-sat b_and!27123 (not b_next!16533))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78146 () Bool)

(assert start!78146)

(declare-fun b_free!16629 () Bool)

(declare-fun b_next!16629 () Bool)

(assert (=> start!78146 (= b_free!16629 (not b_next!16629))))

(declare-fun tp!58162 () Bool)

(declare-fun b_and!27221 () Bool)

(assert (=> start!78146 (= tp!58162 b_and!27221)))

(declare-fun b!911596 () Bool)

(declare-fun e!511321 () Bool)

(declare-fun tp_is_empty!19047 () Bool)

(assert (=> b!911596 (= e!511321 tp_is_empty!19047)))

(declare-fun mapNonEmpty!30295 () Bool)

(declare-fun mapRes!30295 () Bool)

(declare-fun tp!58161 () Bool)

(declare-fun e!511322 () Bool)

(assert (=> mapNonEmpty!30295 (= mapRes!30295 (and tp!58161 e!511322))))

(declare-datatypes ((V!30361 0))(
  ( (V!30362 (val!9574 Int)) )
))
(declare-datatypes ((ValueCell!9042 0))(
  ( (ValueCellFull!9042 (v!12084 V!30361)) (EmptyCell!9042) )
))
(declare-datatypes ((array!54102 0))(
  ( (array!54103 (arr!26002 (Array (_ BitVec 32) ValueCell!9042)) (size!26462 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54102)

(declare-fun mapRest!30295 () (Array (_ BitVec 32) ValueCell!9042))

(declare-fun mapKey!30295 () (_ BitVec 32))

(declare-fun mapValue!30295 () ValueCell!9042)

(assert (=> mapNonEmpty!30295 (= (arr!26002 _values!1152) (store mapRest!30295 mapKey!30295 mapValue!30295))))

(declare-fun res!615114 () Bool)

(declare-fun e!511325 () Bool)

(assert (=> start!78146 (=> (not res!615114) (not e!511325))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78146 (= res!615114 (validMask!0 mask!1756))))

(assert (=> start!78146 e!511325))

(declare-fun e!511324 () Bool)

(declare-fun array_inv!20306 (array!54102) Bool)

(assert (=> start!78146 (and (array_inv!20306 _values!1152) e!511324)))

(assert (=> start!78146 tp!58162))

(assert (=> start!78146 true))

(assert (=> start!78146 tp_is_empty!19047))

(declare-datatypes ((array!54104 0))(
  ( (array!54105 (arr!26003 (Array (_ BitVec 32) (_ BitVec 64))) (size!26463 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54104)

(declare-fun array_inv!20307 (array!54104) Bool)

(assert (=> start!78146 (array_inv!20307 _keys!1386)))

(declare-fun b!911597 () Bool)

(assert (=> b!911597 (= e!511325 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30361)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30361)

(declare-fun lt!410449 () Bool)

(declare-datatypes ((tuple2!12526 0))(
  ( (tuple2!12527 (_1!6273 (_ BitVec 64)) (_2!6273 V!30361)) )
))
(declare-datatypes ((List!18370 0))(
  ( (Nil!18367) (Cons!18366 (h!19512 tuple2!12526) (t!25965 List!18370)) )
))
(declare-datatypes ((ListLongMap!11237 0))(
  ( (ListLongMap!11238 (toList!5634 List!18370)) )
))
(declare-fun contains!4644 (ListLongMap!11237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2864 (array!54104 array!54102 (_ BitVec 32) (_ BitVec 32) V!30361 V!30361 (_ BitVec 32) Int) ListLongMap!11237)

(assert (=> b!911597 (= lt!410449 (contains!4644 (getCurrentListMap!2864 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapIsEmpty!30295 () Bool)

(assert (=> mapIsEmpty!30295 mapRes!30295))

(declare-fun b!911598 () Bool)

(declare-fun res!615113 () Bool)

(assert (=> b!911598 (=> (not res!615113) (not e!511325))))

(declare-datatypes ((List!18371 0))(
  ( (Nil!18368) (Cons!18367 (h!19513 (_ BitVec 64)) (t!25966 List!18371)) )
))
(declare-fun arrayNoDuplicates!0 (array!54104 (_ BitVec 32) List!18371) Bool)

(assert (=> b!911598 (= res!615113 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18368))))

(declare-fun b!911599 () Bool)

(assert (=> b!911599 (= e!511322 tp_is_empty!19047)))

(declare-fun b!911600 () Bool)

(declare-fun res!615112 () Bool)

(assert (=> b!911600 (=> (not res!615112) (not e!511325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54104 (_ BitVec 32)) Bool)

(assert (=> b!911600 (= res!615112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911601 () Bool)

(assert (=> b!911601 (= e!511324 (and e!511321 mapRes!30295))))

(declare-fun condMapEmpty!30295 () Bool)

(declare-fun mapDefault!30295 () ValueCell!9042)

(assert (=> b!911601 (= condMapEmpty!30295 (= (arr!26002 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9042)) mapDefault!30295)))))

(declare-fun b!911602 () Bool)

(declare-fun res!615115 () Bool)

(assert (=> b!911602 (=> (not res!615115) (not e!511325))))

(assert (=> b!911602 (= res!615115 (and (= (size!26462 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26463 _keys!1386) (size!26462 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!78146 res!615114) b!911602))

(assert (= (and b!911602 res!615115) b!911600))

(assert (= (and b!911600 res!615112) b!911598))

(assert (= (and b!911598 res!615113) b!911597))

(assert (= (and b!911601 condMapEmpty!30295) mapIsEmpty!30295))

(assert (= (and b!911601 (not condMapEmpty!30295)) mapNonEmpty!30295))

(get-info :version)

(assert (= (and mapNonEmpty!30295 ((_ is ValueCellFull!9042) mapValue!30295)) b!911599))

(assert (= (and b!911601 ((_ is ValueCellFull!9042) mapDefault!30295)) b!911596))

(assert (= start!78146 b!911601))

(declare-fun m!846379 () Bool)

(assert (=> b!911597 m!846379))

(assert (=> b!911597 m!846379))

(declare-fun m!846381 () Bool)

(assert (=> b!911597 m!846381))

(declare-fun m!846383 () Bool)

(assert (=> b!911600 m!846383))

(declare-fun m!846385 () Bool)

(assert (=> start!78146 m!846385))

(declare-fun m!846387 () Bool)

(assert (=> start!78146 m!846387))

(declare-fun m!846389 () Bool)

(assert (=> start!78146 m!846389))

(declare-fun m!846391 () Bool)

(assert (=> b!911598 m!846391))

(declare-fun m!846393 () Bool)

(assert (=> mapNonEmpty!30295 m!846393))

(check-sat b_and!27221 (not mapNonEmpty!30295) (not start!78146) (not b!911597) (not b_next!16629) (not b!911600) tp_is_empty!19047 (not b!911598))
(check-sat b_and!27221 (not b_next!16629))

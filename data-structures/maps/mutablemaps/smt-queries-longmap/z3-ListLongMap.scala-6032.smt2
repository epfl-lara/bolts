; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78106 () Bool)

(assert start!78106)

(declare-fun b_free!16605 () Bool)

(declare-fun b_next!16605 () Bool)

(assert (=> start!78106 (= b_free!16605 (not b_next!16605))))

(declare-fun tp!58086 () Bool)

(declare-fun b_and!27195 () Bool)

(assert (=> start!78106 (= tp!58086 b_and!27195)))

(declare-fun b!911217 () Bool)

(declare-fun res!614907 () Bool)

(declare-fun e!511071 () Bool)

(assert (=> b!911217 (=> (not res!614907) (not e!511071))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54052 0))(
  ( (array!54053 (arr!25978 (Array (_ BitVec 32) (_ BitVec 64))) (size!26438 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54052)

(declare-datatypes ((V!30329 0))(
  ( (V!30330 (val!9562 Int)) )
))
(declare-datatypes ((ValueCell!9030 0))(
  ( (ValueCellFull!9030 (v!12071 V!30329)) (EmptyCell!9030) )
))
(declare-datatypes ((array!54054 0))(
  ( (array!54055 (arr!25979 (Array (_ BitVec 32) ValueCell!9030)) (size!26439 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54054)

(assert (=> b!911217 (= res!614907 (and (= (size!26439 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26438 _keys!1386) (size!26439 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30256 () Bool)

(declare-fun mapRes!30256 () Bool)

(declare-fun tp!58087 () Bool)

(declare-fun e!511069 () Bool)

(assert (=> mapNonEmpty!30256 (= mapRes!30256 (and tp!58087 e!511069))))

(declare-fun mapKey!30256 () (_ BitVec 32))

(declare-fun mapRest!30256 () (Array (_ BitVec 32) ValueCell!9030))

(declare-fun mapValue!30256 () ValueCell!9030)

(assert (=> mapNonEmpty!30256 (= (arr!25979 _values!1152) (store mapRest!30256 mapKey!30256 mapValue!30256))))

(declare-fun b!911218 () Bool)

(assert (=> b!911218 (= e!511071 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30329)

(declare-fun lt!410335 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30329)

(declare-datatypes ((tuple2!12506 0))(
  ( (tuple2!12507 (_1!6263 (_ BitVec 64)) (_2!6263 V!30329)) )
))
(declare-datatypes ((List!18353 0))(
  ( (Nil!18350) (Cons!18349 (h!19495 tuple2!12506) (t!25946 List!18353)) )
))
(declare-datatypes ((ListLongMap!11217 0))(
  ( (ListLongMap!11218 (toList!5624 List!18353)) )
))
(declare-fun contains!4633 (ListLongMap!11217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2854 (array!54052 array!54054 (_ BitVec 32) (_ BitVec 32) V!30329 V!30329 (_ BitVec 32) Int) ListLongMap!11217)

(assert (=> b!911218 (= lt!410335 (contains!4633 (getCurrentListMap!2854 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapIsEmpty!30256 () Bool)

(assert (=> mapIsEmpty!30256 mapRes!30256))

(declare-fun res!614908 () Bool)

(assert (=> start!78106 (=> (not res!614908) (not e!511071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78106 (= res!614908 (validMask!0 mask!1756))))

(assert (=> start!78106 e!511071))

(declare-fun e!511073 () Bool)

(declare-fun array_inv!20290 (array!54054) Bool)

(assert (=> start!78106 (and (array_inv!20290 _values!1152) e!511073)))

(assert (=> start!78106 tp!58086))

(assert (=> start!78106 true))

(declare-fun tp_is_empty!19023 () Bool)

(assert (=> start!78106 tp_is_empty!19023))

(declare-fun array_inv!20291 (array!54052) Bool)

(assert (=> start!78106 (array_inv!20291 _keys!1386)))

(declare-fun b!911219 () Bool)

(declare-fun e!511072 () Bool)

(assert (=> b!911219 (= e!511073 (and e!511072 mapRes!30256))))

(declare-fun condMapEmpty!30256 () Bool)

(declare-fun mapDefault!30256 () ValueCell!9030)

(assert (=> b!911219 (= condMapEmpty!30256 (= (arr!25979 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9030)) mapDefault!30256)))))

(declare-fun b!911220 () Bool)

(declare-fun res!614906 () Bool)

(assert (=> b!911220 (=> (not res!614906) (not e!511071))))

(declare-datatypes ((List!18354 0))(
  ( (Nil!18351) (Cons!18350 (h!19496 (_ BitVec 64)) (t!25947 List!18354)) )
))
(declare-fun arrayNoDuplicates!0 (array!54052 (_ BitVec 32) List!18354) Bool)

(assert (=> b!911220 (= res!614906 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18351))))

(declare-fun b!911221 () Bool)

(assert (=> b!911221 (= e!511069 tp_is_empty!19023)))

(declare-fun b!911222 () Bool)

(assert (=> b!911222 (= e!511072 tp_is_empty!19023)))

(declare-fun b!911223 () Bool)

(declare-fun res!614905 () Bool)

(assert (=> b!911223 (=> (not res!614905) (not e!511071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54052 (_ BitVec 32)) Bool)

(assert (=> b!911223 (= res!614905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!78106 res!614908) b!911217))

(assert (= (and b!911217 res!614907) b!911223))

(assert (= (and b!911223 res!614905) b!911220))

(assert (= (and b!911220 res!614906) b!911218))

(assert (= (and b!911219 condMapEmpty!30256) mapIsEmpty!30256))

(assert (= (and b!911219 (not condMapEmpty!30256)) mapNonEmpty!30256))

(get-info :version)

(assert (= (and mapNonEmpty!30256 ((_ is ValueCellFull!9030) mapValue!30256)) b!911221))

(assert (= (and b!911219 ((_ is ValueCellFull!9030) mapDefault!30256)) b!911222))

(assert (= start!78106 b!911219))

(declare-fun m!846101 () Bool)

(assert (=> mapNonEmpty!30256 m!846101))

(declare-fun m!846103 () Bool)

(assert (=> b!911218 m!846103))

(assert (=> b!911218 m!846103))

(declare-fun m!846105 () Bool)

(assert (=> b!911218 m!846105))

(declare-fun m!846107 () Bool)

(assert (=> b!911220 m!846107))

(declare-fun m!846109 () Bool)

(assert (=> start!78106 m!846109))

(declare-fun m!846111 () Bool)

(assert (=> start!78106 m!846111))

(declare-fun m!846113 () Bool)

(assert (=> start!78106 m!846113))

(declare-fun m!846115 () Bool)

(assert (=> b!911223 m!846115))

(check-sat (not start!78106) (not mapNonEmpty!30256) tp_is_empty!19023 (not b!911218) (not b!911223) (not b!911220) b_and!27195 (not b_next!16605))
(check-sat b_and!27195 (not b_next!16605))

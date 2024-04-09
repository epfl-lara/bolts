; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78140 () Bool)

(assert start!78140)

(declare-fun b_free!16623 () Bool)

(declare-fun b_next!16623 () Bool)

(assert (=> start!78140 (= b_free!16623 (not b_next!16623))))

(declare-fun tp!58143 () Bool)

(declare-fun b_and!27215 () Bool)

(assert (=> start!78140 (= tp!58143 b_and!27215)))

(declare-fun b!911533 () Bool)

(declare-fun e!511278 () Bool)

(declare-fun tp_is_empty!19041 () Bool)

(assert (=> b!911533 (= e!511278 tp_is_empty!19041)))

(declare-fun b!911534 () Bool)

(declare-fun e!511279 () Bool)

(assert (=> b!911534 (= e!511279 false)))

(declare-datatypes ((V!30353 0))(
  ( (V!30354 (val!9571 Int)) )
))
(declare-datatypes ((ValueCell!9039 0))(
  ( (ValueCellFull!9039 (v!12081 V!30353)) (EmptyCell!9039) )
))
(declare-datatypes ((array!54090 0))(
  ( (array!54091 (arr!25996 (Array (_ BitVec 32) ValueCell!9039)) (size!26456 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54090)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30353)

(declare-datatypes ((array!54092 0))(
  ( (array!54093 (arr!25997 (Array (_ BitVec 32) (_ BitVec 64))) (size!26457 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54092)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!410440 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30353)

(declare-datatypes ((tuple2!12520 0))(
  ( (tuple2!12521 (_1!6270 (_ BitVec 64)) (_2!6270 V!30353)) )
))
(declare-datatypes ((List!18364 0))(
  ( (Nil!18361) (Cons!18360 (h!19506 tuple2!12520) (t!25959 List!18364)) )
))
(declare-datatypes ((ListLongMap!11231 0))(
  ( (ListLongMap!11232 (toList!5631 List!18364)) )
))
(declare-fun contains!4641 (ListLongMap!11231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2861 (array!54092 array!54090 (_ BitVec 32) (_ BitVec 32) V!30353 V!30353 (_ BitVec 32) Int) ListLongMap!11231)

(assert (=> b!911534 (= lt!410440 (contains!4641 (getCurrentListMap!2861 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911535 () Bool)

(declare-fun res!615079 () Bool)

(assert (=> b!911535 (=> (not res!615079) (not e!511279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54092 (_ BitVec 32)) Bool)

(assert (=> b!911535 (= res!615079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30286 () Bool)

(declare-fun mapRes!30286 () Bool)

(assert (=> mapIsEmpty!30286 mapRes!30286))

(declare-fun b!911536 () Bool)

(declare-fun e!511280 () Bool)

(assert (=> b!911536 (= e!511280 tp_is_empty!19041)))

(declare-fun res!615076 () Bool)

(assert (=> start!78140 (=> (not res!615076) (not e!511279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78140 (= res!615076 (validMask!0 mask!1756))))

(assert (=> start!78140 e!511279))

(declare-fun e!511277 () Bool)

(declare-fun array_inv!20300 (array!54090) Bool)

(assert (=> start!78140 (and (array_inv!20300 _values!1152) e!511277)))

(assert (=> start!78140 tp!58143))

(assert (=> start!78140 true))

(assert (=> start!78140 tp_is_empty!19041))

(declare-fun array_inv!20301 (array!54092) Bool)

(assert (=> start!78140 (array_inv!20301 _keys!1386)))

(declare-fun b!911537 () Bool)

(declare-fun res!615077 () Bool)

(assert (=> b!911537 (=> (not res!615077) (not e!511279))))

(declare-datatypes ((List!18365 0))(
  ( (Nil!18362) (Cons!18361 (h!19507 (_ BitVec 64)) (t!25960 List!18365)) )
))
(declare-fun arrayNoDuplicates!0 (array!54092 (_ BitVec 32) List!18365) Bool)

(assert (=> b!911537 (= res!615077 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18362))))

(declare-fun b!911538 () Bool)

(assert (=> b!911538 (= e!511277 (and e!511278 mapRes!30286))))

(declare-fun condMapEmpty!30286 () Bool)

(declare-fun mapDefault!30286 () ValueCell!9039)

(assert (=> b!911538 (= condMapEmpty!30286 (= (arr!25996 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9039)) mapDefault!30286)))))

(declare-fun mapNonEmpty!30286 () Bool)

(declare-fun tp!58144 () Bool)

(assert (=> mapNonEmpty!30286 (= mapRes!30286 (and tp!58144 e!511280))))

(declare-fun mapRest!30286 () (Array (_ BitVec 32) ValueCell!9039))

(declare-fun mapValue!30286 () ValueCell!9039)

(declare-fun mapKey!30286 () (_ BitVec 32))

(assert (=> mapNonEmpty!30286 (= (arr!25996 _values!1152) (store mapRest!30286 mapKey!30286 mapValue!30286))))

(declare-fun b!911539 () Bool)

(declare-fun res!615078 () Bool)

(assert (=> b!911539 (=> (not res!615078) (not e!511279))))

(assert (=> b!911539 (= res!615078 (and (= (size!26456 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26457 _keys!1386) (size!26456 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!78140 res!615076) b!911539))

(assert (= (and b!911539 res!615078) b!911535))

(assert (= (and b!911535 res!615079) b!911537))

(assert (= (and b!911537 res!615077) b!911534))

(assert (= (and b!911538 condMapEmpty!30286) mapIsEmpty!30286))

(assert (= (and b!911538 (not condMapEmpty!30286)) mapNonEmpty!30286))

(get-info :version)

(assert (= (and mapNonEmpty!30286 ((_ is ValueCellFull!9039) mapValue!30286)) b!911536))

(assert (= (and b!911538 ((_ is ValueCellFull!9039) mapDefault!30286)) b!911533))

(assert (= start!78140 b!911538))

(declare-fun m!846331 () Bool)

(assert (=> b!911535 m!846331))

(declare-fun m!846333 () Bool)

(assert (=> b!911537 m!846333))

(declare-fun m!846335 () Bool)

(assert (=> b!911534 m!846335))

(assert (=> b!911534 m!846335))

(declare-fun m!846337 () Bool)

(assert (=> b!911534 m!846337))

(declare-fun m!846339 () Bool)

(assert (=> mapNonEmpty!30286 m!846339))

(declare-fun m!846341 () Bool)

(assert (=> start!78140 m!846341))

(declare-fun m!846343 () Bool)

(assert (=> start!78140 m!846343))

(declare-fun m!846345 () Bool)

(assert (=> start!78140 m!846345))

(check-sat (not b!911534) (not mapNonEmpty!30286) b_and!27215 (not b!911535) tp_is_empty!19041 (not b!911537) (not start!78140) (not b_next!16623))
(check-sat b_and!27215 (not b_next!16623))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78134 () Bool)

(assert start!78134)

(declare-fun b_free!16617 () Bool)

(declare-fun b_next!16617 () Bool)

(assert (=> start!78134 (= b_free!16617 (not b_next!16617))))

(declare-fun tp!58125 () Bool)

(declare-fun b_and!27209 () Bool)

(assert (=> start!78134 (= tp!58125 b_and!27209)))

(declare-fun b!911470 () Bool)

(declare-fun e!511233 () Bool)

(declare-fun tp_is_empty!19035 () Bool)

(assert (=> b!911470 (= e!511233 tp_is_empty!19035)))

(declare-fun mapNonEmpty!30277 () Bool)

(declare-fun mapRes!30277 () Bool)

(declare-fun tp!58126 () Bool)

(declare-fun e!511231 () Bool)

(assert (=> mapNonEmpty!30277 (= mapRes!30277 (and tp!58126 e!511231))))

(declare-datatypes ((V!30345 0))(
  ( (V!30346 (val!9568 Int)) )
))
(declare-datatypes ((ValueCell!9036 0))(
  ( (ValueCellFull!9036 (v!12078 V!30345)) (EmptyCell!9036) )
))
(declare-fun mapValue!30277 () ValueCell!9036)

(declare-fun mapKey!30277 () (_ BitVec 32))

(declare-fun mapRest!30277 () (Array (_ BitVec 32) ValueCell!9036))

(declare-datatypes ((array!54078 0))(
  ( (array!54079 (arr!25990 (Array (_ BitVec 32) ValueCell!9036)) (size!26450 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54078)

(assert (=> mapNonEmpty!30277 (= (arr!25990 _values!1152) (store mapRest!30277 mapKey!30277 mapValue!30277))))

(declare-fun b!911471 () Bool)

(declare-fun e!511232 () Bool)

(assert (=> b!911471 (= e!511232 (and e!511233 mapRes!30277))))

(declare-fun condMapEmpty!30277 () Bool)

(declare-fun mapDefault!30277 () ValueCell!9036)

(assert (=> b!911471 (= condMapEmpty!30277 (= (arr!25990 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9036)) mapDefault!30277)))))

(declare-fun b!911472 () Bool)

(declare-fun res!615043 () Bool)

(declare-fun e!511235 () Bool)

(assert (=> b!911472 (=> (not res!615043) (not e!511235))))

(declare-datatypes ((array!54080 0))(
  ( (array!54081 (arr!25991 (Array (_ BitVec 32) (_ BitVec 64))) (size!26451 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54080)

(declare-datatypes ((List!18360 0))(
  ( (Nil!18357) (Cons!18356 (h!19502 (_ BitVec 64)) (t!25955 List!18360)) )
))
(declare-fun arrayNoDuplicates!0 (array!54080 (_ BitVec 32) List!18360) Bool)

(assert (=> b!911472 (= res!615043 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18357))))

(declare-fun b!911473 () Bool)

(assert (=> b!911473 (= e!511231 tp_is_empty!19035)))

(declare-fun res!615041 () Bool)

(assert (=> start!78134 (=> (not res!615041) (not e!511235))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78134 (= res!615041 (validMask!0 mask!1756))))

(assert (=> start!78134 e!511235))

(declare-fun array_inv!20296 (array!54078) Bool)

(assert (=> start!78134 (and (array_inv!20296 _values!1152) e!511232)))

(assert (=> start!78134 tp!58125))

(assert (=> start!78134 true))

(assert (=> start!78134 tp_is_empty!19035))

(declare-fun array_inv!20297 (array!54080) Bool)

(assert (=> start!78134 (array_inv!20297 _keys!1386)))

(declare-fun mapIsEmpty!30277 () Bool)

(assert (=> mapIsEmpty!30277 mapRes!30277))

(declare-fun b!911474 () Bool)

(declare-fun res!615040 () Bool)

(assert (=> b!911474 (=> (not res!615040) (not e!511235))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!911474 (= res!615040 (and (= (size!26450 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26451 _keys!1386) (size!26450 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911475 () Bool)

(assert (=> b!911475 (= e!511235 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30345)

(declare-fun lt!410431 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30345)

(declare-datatypes ((tuple2!12516 0))(
  ( (tuple2!12517 (_1!6268 (_ BitVec 64)) (_2!6268 V!30345)) )
))
(declare-datatypes ((List!18361 0))(
  ( (Nil!18358) (Cons!18357 (h!19503 tuple2!12516) (t!25956 List!18361)) )
))
(declare-datatypes ((ListLongMap!11227 0))(
  ( (ListLongMap!11228 (toList!5629 List!18361)) )
))
(declare-fun contains!4639 (ListLongMap!11227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2859 (array!54080 array!54078 (_ BitVec 32) (_ BitVec 32) V!30345 V!30345 (_ BitVec 32) Int) ListLongMap!11227)

(assert (=> b!911475 (= lt!410431 (contains!4639 (getCurrentListMap!2859 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911476 () Bool)

(declare-fun res!615042 () Bool)

(assert (=> b!911476 (=> (not res!615042) (not e!511235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54080 (_ BitVec 32)) Bool)

(assert (=> b!911476 (= res!615042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!78134 res!615041) b!911474))

(assert (= (and b!911474 res!615040) b!911476))

(assert (= (and b!911476 res!615042) b!911472))

(assert (= (and b!911472 res!615043) b!911475))

(assert (= (and b!911471 condMapEmpty!30277) mapIsEmpty!30277))

(assert (= (and b!911471 (not condMapEmpty!30277)) mapNonEmpty!30277))

(get-info :version)

(assert (= (and mapNonEmpty!30277 ((_ is ValueCellFull!9036) mapValue!30277)) b!911473))

(assert (= (and b!911471 ((_ is ValueCellFull!9036) mapDefault!30277)) b!911470))

(assert (= start!78134 b!911471))

(declare-fun m!846283 () Bool)

(assert (=> b!911475 m!846283))

(assert (=> b!911475 m!846283))

(declare-fun m!846285 () Bool)

(assert (=> b!911475 m!846285))

(declare-fun m!846287 () Bool)

(assert (=> mapNonEmpty!30277 m!846287))

(declare-fun m!846289 () Bool)

(assert (=> b!911472 m!846289))

(declare-fun m!846291 () Bool)

(assert (=> start!78134 m!846291))

(declare-fun m!846293 () Bool)

(assert (=> start!78134 m!846293))

(declare-fun m!846295 () Bool)

(assert (=> start!78134 m!846295))

(declare-fun m!846297 () Bool)

(assert (=> b!911476 m!846297))

(check-sat (not b!911472) (not b!911475) (not b_next!16617) (not mapNonEmpty!30277) tp_is_empty!19035 (not b!911476) b_and!27209 (not start!78134))
(check-sat b_and!27209 (not b_next!16617))

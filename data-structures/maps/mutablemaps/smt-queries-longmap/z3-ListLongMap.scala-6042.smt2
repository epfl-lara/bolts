; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78182 () Bool)

(assert start!78182)

(declare-fun b_free!16665 () Bool)

(declare-fun b_next!16665 () Bool)

(assert (=> start!78182 (= b_free!16665 (not b_next!16665))))

(declare-fun tp!58269 () Bool)

(declare-fun b_and!27257 () Bool)

(assert (=> start!78182 (= tp!58269 b_and!27257)))

(declare-fun b!911974 () Bool)

(declare-fun e!511591 () Bool)

(declare-fun tp_is_empty!19083 () Bool)

(assert (=> b!911974 (= e!511591 tp_is_empty!19083)))

(declare-fun b!911975 () Bool)

(declare-fun res!615328 () Bool)

(declare-fun e!511595 () Bool)

(assert (=> b!911975 (=> (not res!615328) (not e!511595))))

(declare-datatypes ((array!54170 0))(
  ( (array!54171 (arr!26036 (Array (_ BitVec 32) (_ BitVec 64))) (size!26496 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54170)

(declare-datatypes ((List!18393 0))(
  ( (Nil!18390) (Cons!18389 (h!19535 (_ BitVec 64)) (t!25988 List!18393)) )
))
(declare-fun arrayNoDuplicates!0 (array!54170 (_ BitVec 32) List!18393) Bool)

(assert (=> b!911975 (= res!615328 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18390))))

(declare-fun mapIsEmpty!30349 () Bool)

(declare-fun mapRes!30349 () Bool)

(assert (=> mapIsEmpty!30349 mapRes!30349))

(declare-fun mapNonEmpty!30349 () Bool)

(declare-fun tp!58270 () Bool)

(assert (=> mapNonEmpty!30349 (= mapRes!30349 (and tp!58270 e!511591))))

(declare-datatypes ((V!30409 0))(
  ( (V!30410 (val!9592 Int)) )
))
(declare-datatypes ((ValueCell!9060 0))(
  ( (ValueCellFull!9060 (v!12102 V!30409)) (EmptyCell!9060) )
))
(declare-datatypes ((array!54172 0))(
  ( (array!54173 (arr!26037 (Array (_ BitVec 32) ValueCell!9060)) (size!26497 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54172)

(declare-fun mapKey!30349 () (_ BitVec 32))

(declare-fun mapValue!30349 () ValueCell!9060)

(declare-fun mapRest!30349 () (Array (_ BitVec 32) ValueCell!9060))

(assert (=> mapNonEmpty!30349 (= (arr!26037 _values!1152) (store mapRest!30349 mapKey!30349 mapValue!30349))))

(declare-fun b!911977 () Bool)

(declare-fun res!615329 () Bool)

(assert (=> b!911977 (=> (not res!615329) (not e!511595))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!911977 (= res!615329 (and (= (size!26497 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26496 _keys!1386) (size!26497 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911978 () Bool)

(assert (=> b!911978 (= e!511595 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30409)

(declare-fun lt!410503 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30409)

(declare-datatypes ((tuple2!12552 0))(
  ( (tuple2!12553 (_1!6286 (_ BitVec 64)) (_2!6286 V!30409)) )
))
(declare-datatypes ((List!18394 0))(
  ( (Nil!18391) (Cons!18390 (h!19536 tuple2!12552) (t!25989 List!18394)) )
))
(declare-datatypes ((ListLongMap!11263 0))(
  ( (ListLongMap!11264 (toList!5647 List!18394)) )
))
(declare-fun contains!4657 (ListLongMap!11263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2877 (array!54170 array!54172 (_ BitVec 32) (_ BitVec 32) V!30409 V!30409 (_ BitVec 32) Int) ListLongMap!11263)

(assert (=> b!911978 (= lt!410503 (contains!4657 (getCurrentListMap!2877 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!911979 () Bool)

(declare-fun e!511593 () Bool)

(declare-fun e!511592 () Bool)

(assert (=> b!911979 (= e!511593 (and e!511592 mapRes!30349))))

(declare-fun condMapEmpty!30349 () Bool)

(declare-fun mapDefault!30349 () ValueCell!9060)

(assert (=> b!911979 (= condMapEmpty!30349 (= (arr!26037 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9060)) mapDefault!30349)))))

(declare-fun b!911980 () Bool)

(assert (=> b!911980 (= e!511592 tp_is_empty!19083)))

(declare-fun res!615330 () Bool)

(assert (=> start!78182 (=> (not res!615330) (not e!511595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78182 (= res!615330 (validMask!0 mask!1756))))

(assert (=> start!78182 e!511595))

(declare-fun array_inv!20328 (array!54172) Bool)

(assert (=> start!78182 (and (array_inv!20328 _values!1152) e!511593)))

(assert (=> start!78182 tp!58269))

(assert (=> start!78182 true))

(assert (=> start!78182 tp_is_empty!19083))

(declare-fun array_inv!20329 (array!54170) Bool)

(assert (=> start!78182 (array_inv!20329 _keys!1386)))

(declare-fun b!911976 () Bool)

(declare-fun res!615331 () Bool)

(assert (=> b!911976 (=> (not res!615331) (not e!511595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54170 (_ BitVec 32)) Bool)

(assert (=> b!911976 (= res!615331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!78182 res!615330) b!911977))

(assert (= (and b!911977 res!615329) b!911976))

(assert (= (and b!911976 res!615331) b!911975))

(assert (= (and b!911975 res!615328) b!911978))

(assert (= (and b!911979 condMapEmpty!30349) mapIsEmpty!30349))

(assert (= (and b!911979 (not condMapEmpty!30349)) mapNonEmpty!30349))

(get-info :version)

(assert (= (and mapNonEmpty!30349 ((_ is ValueCellFull!9060) mapValue!30349)) b!911974))

(assert (= (and b!911979 ((_ is ValueCellFull!9060) mapDefault!30349)) b!911980))

(assert (= start!78182 b!911979))

(declare-fun m!846667 () Bool)

(assert (=> mapNonEmpty!30349 m!846667))

(declare-fun m!846669 () Bool)

(assert (=> b!911976 m!846669))

(declare-fun m!846671 () Bool)

(assert (=> b!911975 m!846671))

(declare-fun m!846673 () Bool)

(assert (=> b!911978 m!846673))

(assert (=> b!911978 m!846673))

(declare-fun m!846675 () Bool)

(assert (=> b!911978 m!846675))

(declare-fun m!846677 () Bool)

(assert (=> start!78182 m!846677))

(declare-fun m!846679 () Bool)

(assert (=> start!78182 m!846679))

(declare-fun m!846681 () Bool)

(assert (=> start!78182 m!846681))

(check-sat (not b!911975) (not b!911976) b_and!27257 (not start!78182) tp_is_empty!19083 (not mapNonEmpty!30349) (not b!911978) (not b_next!16665))
(check-sat b_and!27257 (not b_next!16665))

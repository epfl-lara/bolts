; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78172 () Bool)

(assert start!78172)

(declare-fun b_free!16655 () Bool)

(declare-fun b_next!16655 () Bool)

(assert (=> start!78172 (= b_free!16655 (not b_next!16655))))

(declare-fun tp!58240 () Bool)

(declare-fun b_and!27247 () Bool)

(assert (=> start!78172 (= tp!58240 b_and!27247)))

(declare-fun mapNonEmpty!30334 () Bool)

(declare-fun mapRes!30334 () Bool)

(declare-fun tp!58239 () Bool)

(declare-fun e!511519 () Bool)

(assert (=> mapNonEmpty!30334 (= mapRes!30334 (and tp!58239 e!511519))))

(declare-datatypes ((V!30395 0))(
  ( (V!30396 (val!9587 Int)) )
))
(declare-datatypes ((ValueCell!9055 0))(
  ( (ValueCellFull!9055 (v!12097 V!30395)) (EmptyCell!9055) )
))
(declare-datatypes ((array!54154 0))(
  ( (array!54155 (arr!26028 (Array (_ BitVec 32) ValueCell!9055)) (size!26488 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54154)

(declare-fun mapValue!30334 () ValueCell!9055)

(declare-fun mapKey!30334 () (_ BitVec 32))

(declare-fun mapRest!30334 () (Array (_ BitVec 32) ValueCell!9055))

(assert (=> mapNonEmpty!30334 (= (arr!26028 _values!1152) (store mapRest!30334 mapKey!30334 mapValue!30334))))

(declare-fun b!911869 () Bool)

(declare-fun e!511517 () Bool)

(assert (=> b!911869 (= e!511517 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30395)

(declare-datatypes ((array!54156 0))(
  ( (array!54157 (arr!26029 (Array (_ BitVec 32) (_ BitVec 64))) (size!26489 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54156)

(declare-fun lt!410488 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30395)

(declare-datatypes ((tuple2!12546 0))(
  ( (tuple2!12547 (_1!6283 (_ BitVec 64)) (_2!6283 V!30395)) )
))
(declare-datatypes ((List!18388 0))(
  ( (Nil!18385) (Cons!18384 (h!19530 tuple2!12546) (t!25983 List!18388)) )
))
(declare-datatypes ((ListLongMap!11257 0))(
  ( (ListLongMap!11258 (toList!5644 List!18388)) )
))
(declare-fun contains!4654 (ListLongMap!11257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2874 (array!54156 array!54154 (_ BitVec 32) (_ BitVec 32) V!30395 V!30395 (_ BitVec 32) Int) ListLongMap!11257)

(assert (=> b!911869 (= lt!410488 (contains!4654 (getCurrentListMap!2874 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911870 () Bool)

(declare-fun res!615268 () Bool)

(assert (=> b!911870 (=> (not res!615268) (not e!511517))))

(declare-datatypes ((List!18389 0))(
  ( (Nil!18386) (Cons!18385 (h!19531 (_ BitVec 64)) (t!25984 List!18389)) )
))
(declare-fun arrayNoDuplicates!0 (array!54156 (_ BitVec 32) List!18389) Bool)

(assert (=> b!911870 (= res!615268 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18386))))

(declare-fun mapIsEmpty!30334 () Bool)

(assert (=> mapIsEmpty!30334 mapRes!30334))

(declare-fun b!911871 () Bool)

(declare-fun e!511520 () Bool)

(declare-fun tp_is_empty!19073 () Bool)

(assert (=> b!911871 (= e!511520 tp_is_empty!19073)))

(declare-fun b!911872 () Bool)

(declare-fun res!615269 () Bool)

(assert (=> b!911872 (=> (not res!615269) (not e!511517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54156 (_ BitVec 32)) Bool)

(assert (=> b!911872 (= res!615269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911873 () Bool)

(declare-fun res!615271 () Bool)

(assert (=> b!911873 (=> (not res!615271) (not e!511517))))

(assert (=> b!911873 (= res!615271 (and (= (size!26488 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26489 _keys!1386) (size!26488 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!615270 () Bool)

(assert (=> start!78172 (=> (not res!615270) (not e!511517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78172 (= res!615270 (validMask!0 mask!1756))))

(assert (=> start!78172 e!511517))

(declare-fun e!511518 () Bool)

(declare-fun array_inv!20324 (array!54154) Bool)

(assert (=> start!78172 (and (array_inv!20324 _values!1152) e!511518)))

(assert (=> start!78172 tp!58240))

(assert (=> start!78172 true))

(assert (=> start!78172 tp_is_empty!19073))

(declare-fun array_inv!20325 (array!54156) Bool)

(assert (=> start!78172 (array_inv!20325 _keys!1386)))

(declare-fun b!911874 () Bool)

(assert (=> b!911874 (= e!511519 tp_is_empty!19073)))

(declare-fun b!911875 () Bool)

(assert (=> b!911875 (= e!511518 (and e!511520 mapRes!30334))))

(declare-fun condMapEmpty!30334 () Bool)

(declare-fun mapDefault!30334 () ValueCell!9055)


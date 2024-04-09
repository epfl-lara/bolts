; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78132 () Bool)

(assert start!78132)

(declare-fun b_free!16615 () Bool)

(declare-fun b_next!16615 () Bool)

(assert (=> start!78132 (= b_free!16615 (not b_next!16615))))

(declare-fun tp!58119 () Bool)

(declare-fun b_and!27207 () Bool)

(assert (=> start!78132 (= tp!58119 b_and!27207)))

(declare-fun mapIsEmpty!30274 () Bool)

(declare-fun mapRes!30274 () Bool)

(assert (=> mapIsEmpty!30274 mapRes!30274))

(declare-fun b!911449 () Bool)

(declare-fun e!511217 () Bool)

(assert (=> b!911449 (= e!511217 false)))

(declare-datatypes ((V!30343 0))(
  ( (V!30344 (val!9567 Int)) )
))
(declare-datatypes ((ValueCell!9035 0))(
  ( (ValueCellFull!9035 (v!12077 V!30343)) (EmptyCell!9035) )
))
(declare-datatypes ((array!54074 0))(
  ( (array!54075 (arr!25988 (Array (_ BitVec 32) ValueCell!9035)) (size!26448 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54074)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30343)

(declare-datatypes ((array!54076 0))(
  ( (array!54077 (arr!25989 (Array (_ BitVec 32) (_ BitVec 64))) (size!26449 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54076)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30343)

(declare-fun lt!410428 () Bool)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((tuple2!12514 0))(
  ( (tuple2!12515 (_1!6267 (_ BitVec 64)) (_2!6267 V!30343)) )
))
(declare-datatypes ((List!18359 0))(
  ( (Nil!18356) (Cons!18355 (h!19501 tuple2!12514) (t!25954 List!18359)) )
))
(declare-datatypes ((ListLongMap!11225 0))(
  ( (ListLongMap!11226 (toList!5628 List!18359)) )
))
(declare-fun contains!4638 (ListLongMap!11225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2858 (array!54076 array!54074 (_ BitVec 32) (_ BitVec 32) V!30343 V!30343 (_ BitVec 32) Int) ListLongMap!11225)

(assert (=> b!911449 (= lt!410428 (contains!4638 (getCurrentListMap!2858 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911450 () Bool)

(declare-fun e!511218 () Bool)

(declare-fun tp_is_empty!19033 () Bool)

(assert (=> b!911450 (= e!511218 tp_is_empty!19033)))

(declare-fun b!911451 () Bool)

(declare-fun e!511220 () Bool)

(assert (=> b!911451 (= e!511220 tp_is_empty!19033)))

(declare-fun mapNonEmpty!30274 () Bool)

(declare-fun tp!58120 () Bool)

(assert (=> mapNonEmpty!30274 (= mapRes!30274 (and tp!58120 e!511220))))

(declare-fun mapValue!30274 () ValueCell!9035)

(declare-fun mapRest!30274 () (Array (_ BitVec 32) ValueCell!9035))

(declare-fun mapKey!30274 () (_ BitVec 32))

(assert (=> mapNonEmpty!30274 (= (arr!25988 _values!1152) (store mapRest!30274 mapKey!30274 mapValue!30274))))

(declare-fun res!615031 () Bool)

(assert (=> start!78132 (=> (not res!615031) (not e!511217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78132 (= res!615031 (validMask!0 mask!1756))))

(assert (=> start!78132 e!511217))

(declare-fun e!511216 () Bool)

(declare-fun array_inv!20294 (array!54074) Bool)

(assert (=> start!78132 (and (array_inv!20294 _values!1152) e!511216)))

(assert (=> start!78132 tp!58119))

(assert (=> start!78132 true))

(assert (=> start!78132 tp_is_empty!19033))

(declare-fun array_inv!20295 (array!54076) Bool)

(assert (=> start!78132 (array_inv!20295 _keys!1386)))

(declare-fun b!911452 () Bool)

(assert (=> b!911452 (= e!511216 (and e!511218 mapRes!30274))))

(declare-fun condMapEmpty!30274 () Bool)

(declare-fun mapDefault!30274 () ValueCell!9035)


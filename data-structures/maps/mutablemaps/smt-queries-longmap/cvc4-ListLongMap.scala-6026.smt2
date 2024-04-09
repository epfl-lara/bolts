; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78072 () Bool)

(assert start!78072)

(declare-fun b_free!16571 () Bool)

(declare-fun b_next!16571 () Bool)

(assert (=> start!78072 (= b_free!16571 (not b_next!16571))))

(declare-fun tp!57985 () Bool)

(declare-fun b_and!27161 () Bool)

(assert (=> start!78072 (= tp!57985 b_and!27161)))

(declare-fun res!614704 () Bool)

(declare-fun e!510814 () Bool)

(assert (=> start!78072 (=> (not res!614704) (not e!510814))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78072 (= res!614704 (validMask!0 mask!1756))))

(assert (=> start!78072 e!510814))

(declare-datatypes ((V!30283 0))(
  ( (V!30284 (val!9545 Int)) )
))
(declare-datatypes ((ValueCell!9013 0))(
  ( (ValueCellFull!9013 (v!12054 V!30283)) (EmptyCell!9013) )
))
(declare-datatypes ((array!53988 0))(
  ( (array!53989 (arr!25946 (Array (_ BitVec 32) ValueCell!9013)) (size!26406 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53988)

(declare-fun e!510815 () Bool)

(declare-fun array_inv!20270 (array!53988) Bool)

(assert (=> start!78072 (and (array_inv!20270 _values!1152) e!510815)))

(assert (=> start!78072 tp!57985))

(assert (=> start!78072 true))

(declare-fun tp_is_empty!18989 () Bool)

(assert (=> start!78072 tp_is_empty!18989))

(declare-datatypes ((array!53990 0))(
  ( (array!53991 (arr!25947 (Array (_ BitVec 32) (_ BitVec 64))) (size!26407 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53990)

(declare-fun array_inv!20271 (array!53990) Bool)

(assert (=> start!78072 (array_inv!20271 _keys!1386)))

(declare-fun mapIsEmpty!30205 () Bool)

(declare-fun mapRes!30205 () Bool)

(assert (=> mapIsEmpty!30205 mapRes!30205))

(declare-fun b!910860 () Bool)

(declare-fun res!614701 () Bool)

(assert (=> b!910860 (=> (not res!614701) (not e!510814))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910860 (= res!614701 (and (= (size!26406 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26407 _keys!1386) (size!26406 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910861 () Bool)

(declare-fun res!614703 () Bool)

(assert (=> b!910861 (=> (not res!614703) (not e!510814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53990 (_ BitVec 32)) Bool)

(assert (=> b!910861 (= res!614703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30205 () Bool)

(declare-fun tp!57984 () Bool)

(declare-fun e!510818 () Bool)

(assert (=> mapNonEmpty!30205 (= mapRes!30205 (and tp!57984 e!510818))))

(declare-fun mapRest!30205 () (Array (_ BitVec 32) ValueCell!9013))

(declare-fun mapValue!30205 () ValueCell!9013)

(declare-fun mapKey!30205 () (_ BitVec 32))

(assert (=> mapNonEmpty!30205 (= (arr!25946 _values!1152) (store mapRest!30205 mapKey!30205 mapValue!30205))))

(declare-fun b!910862 () Bool)

(assert (=> b!910862 (= e!510814 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30283)

(declare-fun lt!410284 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30283)

(declare-datatypes ((tuple2!12480 0))(
  ( (tuple2!12481 (_1!6250 (_ BitVec 64)) (_2!6250 V!30283)) )
))
(declare-datatypes ((List!18331 0))(
  ( (Nil!18328) (Cons!18327 (h!19473 tuple2!12480) (t!25924 List!18331)) )
))
(declare-datatypes ((ListLongMap!11191 0))(
  ( (ListLongMap!11192 (toList!5611 List!18331)) )
))
(declare-fun contains!4620 (ListLongMap!11191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2841 (array!53990 array!53988 (_ BitVec 32) (_ BitVec 32) V!30283 V!30283 (_ BitVec 32) Int) ListLongMap!11191)

(assert (=> b!910862 (= lt!410284 (contains!4620 (getCurrentListMap!2841 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910863 () Bool)

(declare-fun e!510816 () Bool)

(assert (=> b!910863 (= e!510815 (and e!510816 mapRes!30205))))

(declare-fun condMapEmpty!30205 () Bool)

(declare-fun mapDefault!30205 () ValueCell!9013)


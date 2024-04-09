; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77956 () Bool)

(assert start!77956)

(declare-fun b_free!16471 () Bool)

(declare-fun b_next!16471 () Bool)

(assert (=> start!77956 (= b_free!16471 (not b_next!16471))))

(declare-fun tp!57681 () Bool)

(declare-fun b_and!27059 () Bool)

(assert (=> start!77956 (= tp!57681 b_and!27059)))

(declare-fun mapIsEmpty!30052 () Bool)

(declare-fun mapRes!30052 () Bool)

(assert (=> mapIsEmpty!30052 mapRes!30052))

(declare-fun b!909684 () Bool)

(declare-fun res!614038 () Bool)

(declare-fun e!509995 () Bool)

(assert (=> b!909684 (=> (not res!614038) (not e!509995))))

(declare-datatypes ((V!30151 0))(
  ( (V!30152 (val!9495 Int)) )
))
(declare-datatypes ((ValueCell!8963 0))(
  ( (ValueCellFull!8963 (v!12003 V!30151)) (EmptyCell!8963) )
))
(declare-datatypes ((array!53796 0))(
  ( (array!53797 (arr!25851 (Array (_ BitVec 32) ValueCell!8963)) (size!26311 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53796)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53798 0))(
  ( (array!53799 (arr!25852 (Array (_ BitVec 32) (_ BitVec 64))) (size!26312 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53798)

(assert (=> b!909684 (= res!614038 (and (= (size!26311 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26312 _keys!1386) (size!26311 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909685 () Bool)

(assert (=> b!909685 (= e!509995 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30151)

(declare-fun lt!410056 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30151)

(declare-datatypes ((tuple2!12404 0))(
  ( (tuple2!12405 (_1!6212 (_ BitVec 64)) (_2!6212 V!30151)) )
))
(declare-datatypes ((List!18260 0))(
  ( (Nil!18257) (Cons!18256 (h!19402 tuple2!12404) (t!25851 List!18260)) )
))
(declare-datatypes ((ListLongMap!11115 0))(
  ( (ListLongMap!11116 (toList!5573 List!18260)) )
))
(declare-fun contains!4581 (ListLongMap!11115 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2803 (array!53798 array!53796 (_ BitVec 32) (_ BitVec 32) V!30151 V!30151 (_ BitVec 32) Int) ListLongMap!11115)

(assert (=> b!909685 (= lt!410056 (contains!4581 (getCurrentListMap!2803 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909686 () Bool)

(declare-fun e!509992 () Bool)

(declare-fun tp_is_empty!18889 () Bool)

(assert (=> b!909686 (= e!509992 tp_is_empty!18889)))

(declare-fun b!909687 () Bool)

(declare-fun res!614039 () Bool)

(assert (=> b!909687 (=> (not res!614039) (not e!509995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53798 (_ BitVec 32)) Bool)

(assert (=> b!909687 (= res!614039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!30052 () Bool)

(declare-fun tp!57682 () Bool)

(declare-fun e!509996 () Bool)

(assert (=> mapNonEmpty!30052 (= mapRes!30052 (and tp!57682 e!509996))))

(declare-fun mapRest!30052 () (Array (_ BitVec 32) ValueCell!8963))

(declare-fun mapValue!30052 () ValueCell!8963)

(declare-fun mapKey!30052 () (_ BitVec 32))

(assert (=> mapNonEmpty!30052 (= (arr!25851 _values!1152) (store mapRest!30052 mapKey!30052 mapValue!30052))))

(declare-fun b!909683 () Bool)

(declare-fun e!509994 () Bool)

(assert (=> b!909683 (= e!509994 (and e!509992 mapRes!30052))))

(declare-fun condMapEmpty!30052 () Bool)

(declare-fun mapDefault!30052 () ValueCell!8963)


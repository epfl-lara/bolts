; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77872 () Bool)

(assert start!77872)

(declare-fun b_free!16403 () Bool)

(declare-fun b_next!16403 () Bool)

(assert (=> start!77872 (= b_free!16403 (not b_next!16403))))

(declare-fun tp!57474 () Bool)

(declare-fun b_and!26981 () Bool)

(assert (=> start!77872 (= tp!57474 b_and!26981)))

(declare-fun b!908774 () Bool)

(declare-fun e!509386 () Bool)

(declare-fun tp_is_empty!18821 () Bool)

(assert (=> b!908774 (= e!509386 tp_is_empty!18821)))

(declare-fun b!908775 () Bool)

(declare-fun e!509384 () Bool)

(declare-fun e!509380 () Bool)

(assert (=> b!908775 (= e!509384 e!509380)))

(declare-fun res!613514 () Bool)

(assert (=> b!908775 (=> res!613514 e!509380)))

(declare-datatypes ((V!30059 0))(
  ( (V!30060 (val!9461 Int)) )
))
(declare-datatypes ((tuple2!12360 0))(
  ( (tuple2!12361 (_1!6190 (_ BitVec 64)) (_2!6190 V!30059)) )
))
(declare-datatypes ((List!18214 0))(
  ( (Nil!18211) (Cons!18210 (h!19356 tuple2!12360) (t!25797 List!18214)) )
))
(declare-datatypes ((ListLongMap!11071 0))(
  ( (ListLongMap!11072 (toList!5551 List!18214)) )
))
(declare-fun lt!409838 () ListLongMap!11071)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4558 (ListLongMap!11071 (_ BitVec 64)) Bool)

(assert (=> b!908775 (= res!613514 (not (contains!4558 lt!409838 k!1033)))))

(declare-datatypes ((ValueCell!8929 0))(
  ( (ValueCellFull!8929 (v!11968 V!30059)) (EmptyCell!8929) )
))
(declare-datatypes ((array!53664 0))(
  ( (array!53665 (arr!25786 (Array (_ BitVec 32) ValueCell!8929)) (size!26246 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53664)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30059)

(declare-datatypes ((array!53666 0))(
  ( (array!53667 (arr!25787 (Array (_ BitVec 32) (_ BitVec 64))) (size!26247 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53666)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30059)

(declare-fun getCurrentListMap!2781 (array!53666 array!53664 (_ BitVec 32) (_ BitVec 32) V!30059 V!30059 (_ BitVec 32) Int) ListLongMap!11071)

(assert (=> b!908775 (= lt!409838 (getCurrentListMap!2781 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908776 () Bool)

(declare-fun res!613516 () Bool)

(declare-fun e!509387 () Bool)

(assert (=> b!908776 (=> (not res!613516) (not e!509387))))

(declare-datatypes ((List!18215 0))(
  ( (Nil!18212) (Cons!18211 (h!19357 (_ BitVec 64)) (t!25798 List!18215)) )
))
(declare-fun arrayNoDuplicates!0 (array!53666 (_ BitVec 32) List!18215) Bool)

(assert (=> b!908776 (= res!613516 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18212))))

(declare-fun b!908777 () Bool)

(declare-fun e!509383 () Bool)

(assert (=> b!908777 (= e!509387 e!509383)))

(declare-fun res!613510 () Bool)

(assert (=> b!908777 (=> (not res!613510) (not e!509383))))

(declare-fun lt!409840 () ListLongMap!11071)

(assert (=> b!908777 (= res!613510 (contains!4558 lt!409840 k!1033))))

(assert (=> b!908777 (= lt!409840 (getCurrentListMap!2781 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908778 () Bool)

(declare-fun res!613508 () Bool)

(assert (=> b!908778 (=> (not res!613508) (not e!509387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53666 (_ BitVec 32)) Bool)

(assert (=> b!908778 (= res!613508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908779 () Bool)

(declare-fun e!509382 () Bool)

(declare-fun e!509381 () Bool)

(declare-fun mapRes!29947 () Bool)

(assert (=> b!908779 (= e!509382 (and e!509381 mapRes!29947))))

(declare-fun condMapEmpty!29947 () Bool)

(declare-fun mapDefault!29947 () ValueCell!8929)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78096 () Bool)

(assert start!78096)

(declare-fun b_free!16595 () Bool)

(declare-fun b_next!16595 () Bool)

(assert (=> start!78096 (= b_free!16595 (not b_next!16595))))

(declare-fun tp!58056 () Bool)

(declare-fun b_and!27185 () Bool)

(assert (=> start!78096 (= tp!58056 b_and!27185)))

(declare-fun mapIsEmpty!30241 () Bool)

(declare-fun mapRes!30241 () Bool)

(assert (=> mapIsEmpty!30241 mapRes!30241))

(declare-fun b!911112 () Bool)

(declare-fun e!510998 () Bool)

(assert (=> b!911112 (= e!510998 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((V!30315 0))(
  ( (V!30316 (val!9557 Int)) )
))
(declare-fun zeroValue!1094 () V!30315)

(declare-datatypes ((array!54034 0))(
  ( (array!54035 (arr!25969 (Array (_ BitVec 32) (_ BitVec 64))) (size!26429 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54034)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((ValueCell!9025 0))(
  ( (ValueCellFull!9025 (v!12066 V!30315)) (EmptyCell!9025) )
))
(declare-datatypes ((array!54036 0))(
  ( (array!54037 (arr!25970 (Array (_ BitVec 32) ValueCell!9025)) (size!26430 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54036)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30315)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410320 () Bool)

(declare-datatypes ((tuple2!12500 0))(
  ( (tuple2!12501 (_1!6260 (_ BitVec 64)) (_2!6260 V!30315)) )
))
(declare-datatypes ((List!18348 0))(
  ( (Nil!18345) (Cons!18344 (h!19490 tuple2!12500) (t!25941 List!18348)) )
))
(declare-datatypes ((ListLongMap!11211 0))(
  ( (ListLongMap!11212 (toList!5621 List!18348)) )
))
(declare-fun contains!4630 (ListLongMap!11211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2851 (array!54034 array!54036 (_ BitVec 32) (_ BitVec 32) V!30315 V!30315 (_ BitVec 32) Int) ListLongMap!11211)

(assert (=> b!911112 (= lt!410320 (contains!4630 (getCurrentListMap!2851 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911113 () Bool)

(declare-fun res!614846 () Bool)

(assert (=> b!911113 (=> (not res!614846) (not e!510998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54034 (_ BitVec 32)) Bool)

(assert (=> b!911113 (= res!614846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911114 () Bool)

(declare-fun res!614847 () Bool)

(assert (=> b!911114 (=> (not res!614847) (not e!510998))))

(assert (=> b!911114 (= res!614847 (and (= (size!26430 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26429 _keys!1386) (size!26430 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911115 () Bool)

(declare-fun e!510995 () Bool)

(declare-fun e!510996 () Bool)

(assert (=> b!911115 (= e!510995 (and e!510996 mapRes!30241))))

(declare-fun condMapEmpty!30241 () Bool)

(declare-fun mapDefault!30241 () ValueCell!9025)


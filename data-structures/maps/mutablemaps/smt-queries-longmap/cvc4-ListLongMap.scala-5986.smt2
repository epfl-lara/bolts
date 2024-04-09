; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77774 () Bool)

(assert start!77774)

(declare-fun b_free!16331 () Bool)

(declare-fun b_next!16331 () Bool)

(assert (=> start!77774 (= b_free!16331 (not b_next!16331))))

(declare-fun tp!57255 () Bool)

(declare-fun b_and!26833 () Bool)

(assert (=> start!77774 (= tp!57255 b_and!26833)))

(declare-fun b!907146 () Bool)

(declare-fun res!612366 () Bool)

(declare-fun e!508421 () Bool)

(assert (=> b!907146 (=> (not res!612366) (not e!508421))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53524 0))(
  ( (array!53525 (arr!25717 (Array (_ BitVec 32) (_ BitVec 64))) (size!26177 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53524)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!907146 (= res!612366 (and (= (select (arr!25717 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907148 () Bool)

(declare-fun e!508414 () Bool)

(assert (=> b!907148 (= e!508414 true)))

(declare-datatypes ((V!29963 0))(
  ( (V!29964 (val!9425 Int)) )
))
(declare-datatypes ((tuple2!12294 0))(
  ( (tuple2!12295 (_1!6157 (_ BitVec 64)) (_2!6157 V!29963)) )
))
(declare-datatypes ((List!18155 0))(
  ( (Nil!18152) (Cons!18151 (h!19297 tuple2!12294) (t!25666 List!18155)) )
))
(declare-datatypes ((ListLongMap!11005 0))(
  ( (ListLongMap!11006 (toList!5518 List!18155)) )
))
(declare-fun lt!409180 () ListLongMap!11005)

(declare-fun lt!409181 () V!29963)

(declare-fun apply!494 (ListLongMap!11005 (_ BitVec 64)) V!29963)

(assert (=> b!907148 (= (apply!494 lt!409180 k!1033) lt!409181)))

(declare-datatypes ((ValueCell!8893 0))(
  ( (ValueCellFull!8893 (v!11930 V!29963)) (EmptyCell!8893) )
))
(declare-datatypes ((array!53526 0))(
  ( (array!53527 (arr!25718 (Array (_ BitVec 32) ValueCell!8893)) (size!26178 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53526)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29963)

(declare-datatypes ((Unit!30763 0))(
  ( (Unit!30764) )
))
(declare-fun lt!409179 () Unit!30763)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29963)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lemmaListMapApplyFromThenApplyFromZero!40 (array!53524 array!53526 (_ BitVec 32) (_ BitVec 32) V!29963 V!29963 (_ BitVec 64) V!29963 (_ BitVec 32) Int) Unit!30763)

(assert (=> b!907148 (= lt!409179 (lemmaListMapApplyFromThenApplyFromZero!40 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409181 i!717 defaultEntry!1160))))

(declare-fun b!907149 () Bool)

(declare-fun e!508419 () Bool)

(declare-fun e!508416 () Bool)

(declare-fun mapRes!29836 () Bool)

(assert (=> b!907149 (= e!508419 (and e!508416 mapRes!29836))))

(declare-fun condMapEmpty!29836 () Bool)

(declare-fun mapDefault!29836 () ValueCell!8893)


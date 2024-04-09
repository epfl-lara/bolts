; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77836 () Bool)

(assert start!77836)

(declare-fun b_free!16367 () Bool)

(declare-fun b_next!16367 () Bool)

(assert (=> start!77836 (= b_free!16367 (not b_next!16367))))

(declare-fun tp!57366 () Bool)

(declare-fun b_and!26909 () Bool)

(assert (=> start!77836 (= tp!57366 b_and!26909)))

(declare-fun b!908036 () Bool)

(declare-fun e!508954 () Bool)

(declare-fun e!508953 () Bool)

(assert (=> b!908036 (= e!508954 e!508953)))

(declare-fun res!612975 () Bool)

(assert (=> b!908036 (=> res!612975 e!508953)))

(declare-datatypes ((V!30011 0))(
  ( (V!30012 (val!9443 Int)) )
))
(declare-datatypes ((tuple2!12328 0))(
  ( (tuple2!12329 (_1!6174 (_ BitVec 64)) (_2!6174 V!30011)) )
))
(declare-datatypes ((List!18185 0))(
  ( (Nil!18182) (Cons!18181 (h!19327 tuple2!12328) (t!25732 List!18185)) )
))
(declare-datatypes ((ListLongMap!11039 0))(
  ( (ListLongMap!11040 (toList!5535 List!18185)) )
))
(declare-fun lt!409568 () ListLongMap!11039)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4544 (ListLongMap!11039 (_ BitVec 64)) Bool)

(assert (=> b!908036 (= res!612975 (not (contains!4544 lt!409568 k!1033)))))

(declare-datatypes ((ValueCell!8911 0))(
  ( (ValueCellFull!8911 (v!11950 V!30011)) (EmptyCell!8911) )
))
(declare-datatypes ((array!53596 0))(
  ( (array!53597 (arr!25752 (Array (_ BitVec 32) ValueCell!8911)) (size!26212 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53596)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30011)

(declare-datatypes ((array!53598 0))(
  ( (array!53599 (arr!25753 (Array (_ BitVec 32) (_ BitVec 64))) (size!26213 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53598)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30011)

(declare-fun getCurrentListMap!2767 (array!53598 array!53596 (_ BitVec 32) (_ BitVec 32) V!30011 V!30011 (_ BitVec 32) Int) ListLongMap!11039)

(assert (=> b!908036 (= lt!409568 (getCurrentListMap!2767 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908037 () Bool)

(declare-fun e!508950 () Bool)

(declare-fun e!508952 () Bool)

(declare-fun mapRes!29893 () Bool)

(assert (=> b!908037 (= e!508950 (and e!508952 mapRes!29893))))

(declare-fun condMapEmpty!29893 () Bool)

(declare-fun mapDefault!29893 () ValueCell!8911)


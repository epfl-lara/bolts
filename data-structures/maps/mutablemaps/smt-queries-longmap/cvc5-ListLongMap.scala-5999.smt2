; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77874 () Bool)

(assert start!77874)

(declare-fun b_free!16405 () Bool)

(declare-fun b_next!16405 () Bool)

(assert (=> start!77874 (= b_free!16405 (not b_next!16405))))

(declare-fun tp!57480 () Bool)

(declare-fun b_and!26985 () Bool)

(assert (=> start!77874 (= tp!57480 b_and!26985)))

(declare-fun b!908815 () Bool)

(declare-fun res!613542 () Bool)

(declare-fun e!509406 () Bool)

(assert (=> b!908815 (=> (not res!613542) (not e!509406))))

(declare-datatypes ((V!30063 0))(
  ( (V!30064 (val!9462 Int)) )
))
(declare-datatypes ((ValueCell!8930 0))(
  ( (ValueCellFull!8930 (v!11969 V!30063)) (EmptyCell!8930) )
))
(declare-datatypes ((array!53668 0))(
  ( (array!53669 (arr!25788 (Array (_ BitVec 32) ValueCell!8930)) (size!26248 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53668)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53670 0))(
  ( (array!53671 (arr!25789 (Array (_ BitVec 32) (_ BitVec 64))) (size!26249 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53670)

(assert (=> b!908815 (= res!613542 (and (= (size!26248 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26249 _keys!1386) (size!26248 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908816 () Bool)

(declare-fun e!509405 () Bool)

(declare-fun e!509407 () Bool)

(declare-fun mapRes!29950 () Bool)

(assert (=> b!908816 (= e!509405 (and e!509407 mapRes!29950))))

(declare-fun condMapEmpty!29950 () Bool)

(declare-fun mapDefault!29950 () ValueCell!8930)


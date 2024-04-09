; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77756 () Bool)

(assert start!77756)

(declare-fun b_free!16313 () Bool)

(declare-fun b_next!16313 () Bool)

(assert (=> start!77756 (= b_free!16313 (not b_next!16313))))

(declare-fun tp!57201 () Bool)

(declare-fun b_and!26797 () Bool)

(assert (=> start!77756 (= tp!57201 b_and!26797)))

(declare-fun b!906777 () Bool)

(declare-fun res!612096 () Bool)

(declare-fun e!508199 () Bool)

(assert (=> b!906777 (=> (not res!612096) (not e!508199))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906777 (= res!612096 (inRange!0 i!717 mask!1756))))

(declare-fun b!906778 () Bool)

(declare-fun res!612097 () Bool)

(assert (=> b!906778 (=> (not res!612097) (not e!508199))))

(declare-datatypes ((array!53488 0))(
  ( (array!53489 (arr!25699 (Array (_ BitVec 32) (_ BitVec 64))) (size!26159 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53488)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!906778 (= res!612097 (and (= (select (arr!25699 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906779 () Bool)

(declare-fun e!508202 () Bool)

(declare-fun e!508203 () Bool)

(declare-fun mapRes!29809 () Bool)

(assert (=> b!906779 (= e!508202 (and e!508203 mapRes!29809))))

(declare-fun condMapEmpty!29809 () Bool)

(declare-datatypes ((V!29939 0))(
  ( (V!29940 (val!9416 Int)) )
))
(declare-datatypes ((ValueCell!8884 0))(
  ( (ValueCellFull!8884 (v!11921 V!29939)) (EmptyCell!8884) )
))
(declare-datatypes ((array!53490 0))(
  ( (array!53491 (arr!25700 (Array (_ BitVec 32) ValueCell!8884)) (size!26160 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53490)

(declare-fun mapDefault!29809 () ValueCell!8884)


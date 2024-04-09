; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78136 () Bool)

(assert start!78136)

(declare-fun b_free!16619 () Bool)

(declare-fun b_next!16619 () Bool)

(assert (=> start!78136 (= b_free!16619 (not b_next!16619))))

(declare-fun tp!58132 () Bool)

(declare-fun b_and!27211 () Bool)

(assert (=> start!78136 (= tp!58132 b_and!27211)))

(declare-fun b!911491 () Bool)

(declare-fun res!615052 () Bool)

(declare-fun e!511247 () Bool)

(assert (=> b!911491 (=> (not res!615052) (not e!511247))))

(declare-datatypes ((array!54082 0))(
  ( (array!54083 (arr!25992 (Array (_ BitVec 32) (_ BitVec 64))) (size!26452 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54082)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54082 (_ BitVec 32)) Bool)

(assert (=> b!911491 (= res!615052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911492 () Bool)

(declare-fun e!511246 () Bool)

(declare-fun e!511250 () Bool)

(declare-fun mapRes!30280 () Bool)

(assert (=> b!911492 (= e!511246 (and e!511250 mapRes!30280))))

(declare-fun condMapEmpty!30280 () Bool)

(declare-datatypes ((V!30347 0))(
  ( (V!30348 (val!9569 Int)) )
))
(declare-datatypes ((ValueCell!9037 0))(
  ( (ValueCellFull!9037 (v!12079 V!30347)) (EmptyCell!9037) )
))
(declare-datatypes ((array!54084 0))(
  ( (array!54085 (arr!25993 (Array (_ BitVec 32) ValueCell!9037)) (size!26453 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54084)

(declare-fun mapDefault!30280 () ValueCell!9037)


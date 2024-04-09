; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78536 () Bool)

(assert start!78536)

(declare-fun res!617135 () Bool)

(declare-fun e!513579 () Bool)

(assert (=> start!78536 (=> (not res!617135) (not e!513579))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78536 (= res!617135 (validMask!0 mask!1881))))

(assert (=> start!78536 e!513579))

(assert (=> start!78536 true))

(declare-datatypes ((V!30603 0))(
  ( (V!30604 (val!9665 Int)) )
))
(declare-datatypes ((ValueCell!9133 0))(
  ( (ValueCellFull!9133 (v!12183 V!30603)) (EmptyCell!9133) )
))
(declare-datatypes ((array!54470 0))(
  ( (array!54471 (arr!26176 (Array (_ BitVec 32) ValueCell!9133)) (size!26636 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54470)

(declare-fun e!513576 () Bool)

(declare-fun array_inv!20422 (array!54470) Bool)

(assert (=> start!78536 (and (array_inv!20422 _values!1231) e!513576)))

(declare-datatypes ((array!54472 0))(
  ( (array!54473 (arr!26177 (Array (_ BitVec 32) (_ BitVec 64))) (size!26637 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54472)

(declare-fun array_inv!20423 (array!54472) Bool)

(assert (=> start!78536 (array_inv!20423 _keys!1487)))

(declare-fun mapIsEmpty!30600 () Bool)

(declare-fun mapRes!30600 () Bool)

(assert (=> mapIsEmpty!30600 mapRes!30600))

(declare-fun b!915114 () Bool)

(declare-fun e!513578 () Bool)

(assert (=> b!915114 (= e!513576 (and e!513578 mapRes!30600))))

(declare-fun condMapEmpty!30600 () Bool)

(declare-fun mapDefault!30600 () ValueCell!9133)


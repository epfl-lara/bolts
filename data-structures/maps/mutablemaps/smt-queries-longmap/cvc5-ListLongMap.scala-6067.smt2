; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78538 () Bool)

(assert start!78538)

(declare-fun b!915132 () Bool)

(declare-fun e!513593 () Bool)

(declare-fun tp_is_empty!19231 () Bool)

(assert (=> b!915132 (= e!513593 tp_is_empty!19231)))

(declare-fun b!915133 () Bool)

(declare-fun e!513590 () Bool)

(assert (=> b!915133 (= e!513590 false)))

(declare-fun lt!411591 () Bool)

(declare-datatypes ((array!54474 0))(
  ( (array!54475 (arr!26178 (Array (_ BitVec 32) (_ BitVec 64))) (size!26638 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54474)

(declare-datatypes ((List!18477 0))(
  ( (Nil!18474) (Cons!18473 (h!19619 (_ BitVec 64)) (t!26098 List!18477)) )
))
(declare-fun arrayNoDuplicates!0 (array!54474 (_ BitVec 32) List!18477) Bool)

(assert (=> b!915133 (= lt!411591 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18474))))

(declare-fun b!915134 () Bool)

(declare-fun res!617144 () Bool)

(assert (=> b!915134 (=> (not res!617144) (not e!513590))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54474 (_ BitVec 32)) Bool)

(assert (=> b!915134 (= res!617144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915135 () Bool)

(declare-fun e!513592 () Bool)

(declare-fun e!513591 () Bool)

(declare-fun mapRes!30603 () Bool)

(assert (=> b!915135 (= e!513592 (and e!513591 mapRes!30603))))

(declare-fun condMapEmpty!30603 () Bool)

(declare-datatypes ((V!30607 0))(
  ( (V!30608 (val!9666 Int)) )
))
(declare-datatypes ((ValueCell!9134 0))(
  ( (ValueCellFull!9134 (v!12184 V!30607)) (EmptyCell!9134) )
))
(declare-datatypes ((array!54476 0))(
  ( (array!54477 (arr!26179 (Array (_ BitVec 32) ValueCell!9134)) (size!26639 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54476)

(declare-fun mapDefault!30603 () ValueCell!9134)


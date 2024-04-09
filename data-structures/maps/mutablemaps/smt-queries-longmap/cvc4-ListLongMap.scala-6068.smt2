; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78548 () Bool)

(assert start!78548)

(declare-fun b!915222 () Bool)

(declare-fun e!513665 () Bool)

(declare-fun tp_is_empty!19241 () Bool)

(assert (=> b!915222 (= e!513665 tp_is_empty!19241)))

(declare-fun b!915223 () Bool)

(declare-fun e!513669 () Bool)

(assert (=> b!915223 (= e!513669 false)))

(declare-fun lt!411606 () Bool)

(declare-datatypes ((array!54490 0))(
  ( (array!54491 (arr!26186 (Array (_ BitVec 32) (_ BitVec 64))) (size!26646 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54490)

(declare-datatypes ((List!18480 0))(
  ( (Nil!18477) (Cons!18476 (h!19622 (_ BitVec 64)) (t!26101 List!18480)) )
))
(declare-fun arrayNoDuplicates!0 (array!54490 (_ BitVec 32) List!18480) Bool)

(assert (=> b!915223 (= lt!411606 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18477))))

(declare-fun b!915224 () Bool)

(declare-fun e!513667 () Bool)

(declare-fun e!513666 () Bool)

(declare-fun mapRes!30618 () Bool)

(assert (=> b!915224 (= e!513667 (and e!513666 mapRes!30618))))

(declare-fun condMapEmpty!30618 () Bool)

(declare-datatypes ((V!30619 0))(
  ( (V!30620 (val!9671 Int)) )
))
(declare-datatypes ((ValueCell!9139 0))(
  ( (ValueCellFull!9139 (v!12189 V!30619)) (EmptyCell!9139) )
))
(declare-datatypes ((array!54492 0))(
  ( (array!54493 (arr!26187 (Array (_ BitVec 32) ValueCell!9139)) (size!26647 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54492)

(declare-fun mapDefault!30618 () ValueCell!9139)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131748 () Bool)

(assert start!131748)

(declare-fun b!1542272 () Bool)

(declare-fun e!858048 () Bool)

(declare-fun tp_is_empty!37705 () Bool)

(assert (=> b!1542272 (= e!858048 tp_is_empty!37705)))

(declare-fun res!1058486 () Bool)

(declare-fun e!858052 () Bool)

(assert (=> start!131748 (=> (not res!1058486) (not e!858052))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131748 (= res!1058486 (validMask!0 mask!926))))

(assert (=> start!131748 e!858052))

(assert (=> start!131748 true))

(declare-datatypes ((V!58717 0))(
  ( (V!58718 (val!18930 Int)) )
))
(declare-datatypes ((ValueCell!17942 0))(
  ( (ValueCellFull!17942 (v!21728 V!58717)) (EmptyCell!17942) )
))
(declare-datatypes ((array!102605 0))(
  ( (array!102606 (arr!49500 (Array (_ BitVec 32) ValueCell!17942)) (size!50051 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102605)

(declare-fun e!858049 () Bool)

(declare-fun array_inv!38435 (array!102605) Bool)

(assert (=> start!131748 (and (array_inv!38435 _values!470) e!858049)))

(declare-datatypes ((array!102607 0))(
  ( (array!102608 (arr!49501 (Array (_ BitVec 32) (_ BitVec 64))) (size!50052 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102607)

(declare-fun array_inv!38436 (array!102607) Bool)

(assert (=> start!131748 (array_inv!38436 _keys!618)))

(declare-fun b!1542273 () Bool)

(declare-fun mapRes!58261 () Bool)

(assert (=> b!1542273 (= e!858049 (and e!858048 mapRes!58261))))

(declare-fun condMapEmpty!58261 () Bool)

(declare-fun mapDefault!58261 () ValueCell!17942)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131836 () Bool)

(assert start!131836)

(declare-fun b!1543064 () Bool)

(declare-fun e!858710 () Bool)

(declare-fun tp_is_empty!37793 () Bool)

(assert (=> b!1543064 (= e!858710 tp_is_empty!37793)))

(declare-fun b!1543065 () Bool)

(declare-fun e!858712 () Bool)

(declare-fun mapRes!58393 () Bool)

(assert (=> b!1543065 (= e!858712 (and e!858710 mapRes!58393))))

(declare-fun condMapEmpty!58393 () Bool)

(declare-datatypes ((V!58833 0))(
  ( (V!58834 (val!18974 Int)) )
))
(declare-datatypes ((ValueCell!17986 0))(
  ( (ValueCellFull!17986 (v!21772 V!58833)) (EmptyCell!17986) )
))
(declare-datatypes ((array!102771 0))(
  ( (array!102772 (arr!49583 (Array (_ BitVec 32) ValueCell!17986)) (size!50134 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102771)

(declare-fun mapDefault!58393 () ValueCell!17986)


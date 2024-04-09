; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131794 () Bool)

(assert start!131794)

(declare-fun b!1542686 () Bool)

(declare-fun e!858396 () Bool)

(declare-fun e!858395 () Bool)

(declare-fun mapRes!58330 () Bool)

(assert (=> b!1542686 (= e!858396 (and e!858395 mapRes!58330))))

(declare-fun condMapEmpty!58330 () Bool)

(declare-datatypes ((V!58777 0))(
  ( (V!58778 (val!18953 Int)) )
))
(declare-datatypes ((ValueCell!17965 0))(
  ( (ValueCellFull!17965 (v!21751 V!58777)) (EmptyCell!17965) )
))
(declare-datatypes ((array!102695 0))(
  ( (array!102696 (arr!49545 (Array (_ BitVec 32) ValueCell!17965)) (size!50096 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102695)

(declare-fun mapDefault!58330 () ValueCell!17965)


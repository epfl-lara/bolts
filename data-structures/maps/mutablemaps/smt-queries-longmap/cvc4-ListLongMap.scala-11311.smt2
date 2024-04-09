; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131806 () Bool)

(assert start!131806)

(declare-fun b!1542794 () Bool)

(declare-fun e!858484 () Bool)

(declare-fun e!858487 () Bool)

(declare-fun mapRes!58348 () Bool)

(assert (=> b!1542794 (= e!858484 (and e!858487 mapRes!58348))))

(declare-fun condMapEmpty!58348 () Bool)

(declare-datatypes ((V!58793 0))(
  ( (V!58794 (val!18959 Int)) )
))
(declare-datatypes ((ValueCell!17971 0))(
  ( (ValueCellFull!17971 (v!21757 V!58793)) (EmptyCell!17971) )
))
(declare-datatypes ((array!102715 0))(
  ( (array!102716 (arr!49555 (Array (_ BitVec 32) ValueCell!17971)) (size!50106 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102715)

(declare-fun mapDefault!58348 () ValueCell!17971)


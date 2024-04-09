; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131842 () Bool)

(assert start!131842)

(declare-fun b!1543118 () Bool)

(declare-fun e!858757 () Bool)

(declare-fun e!858755 () Bool)

(declare-fun mapRes!58402 () Bool)

(assert (=> b!1543118 (= e!858757 (and e!858755 mapRes!58402))))

(declare-fun condMapEmpty!58402 () Bool)

(declare-datatypes ((V!58841 0))(
  ( (V!58842 (val!18977 Int)) )
))
(declare-datatypes ((ValueCell!17989 0))(
  ( (ValueCellFull!17989 (v!21775 V!58841)) (EmptyCell!17989) )
))
(declare-datatypes ((array!102781 0))(
  ( (array!102782 (arr!49588 (Array (_ BitVec 32) ValueCell!17989)) (size!50139 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102781)

(declare-fun mapDefault!58402 () ValueCell!17989)


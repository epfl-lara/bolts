; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131712 () Bool)

(assert start!131712)

(declare-fun b!1541948 () Bool)

(declare-fun e!857781 () Bool)

(declare-fun e!857779 () Bool)

(declare-fun mapRes!58207 () Bool)

(assert (=> b!1541948 (= e!857781 (and e!857779 mapRes!58207))))

(declare-fun condMapEmpty!58207 () Bool)

(declare-datatypes ((V!58669 0))(
  ( (V!58670 (val!18912 Int)) )
))
(declare-datatypes ((ValueCell!17924 0))(
  ( (ValueCellFull!17924 (v!21710 V!58669)) (EmptyCell!17924) )
))
(declare-datatypes ((array!102537 0))(
  ( (array!102538 (arr!49466 (Array (_ BitVec 32) ValueCell!17924)) (size!50017 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102537)

(declare-fun mapDefault!58207 () ValueCell!17924)


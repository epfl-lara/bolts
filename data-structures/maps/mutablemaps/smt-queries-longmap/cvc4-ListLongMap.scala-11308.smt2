; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131788 () Bool)

(assert start!131788)

(declare-fun b!1542632 () Bool)

(declare-fun e!858352 () Bool)

(declare-fun e!858348 () Bool)

(declare-fun mapRes!58321 () Bool)

(assert (=> b!1542632 (= e!858352 (and e!858348 mapRes!58321))))

(declare-fun condMapEmpty!58321 () Bool)

(declare-datatypes ((V!58769 0))(
  ( (V!58770 (val!18950 Int)) )
))
(declare-datatypes ((ValueCell!17962 0))(
  ( (ValueCellFull!17962 (v!21748 V!58769)) (EmptyCell!17962) )
))
(declare-datatypes ((array!102685 0))(
  ( (array!102686 (arr!49540 (Array (_ BitVec 32) ValueCell!17962)) (size!50091 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102685)

(declare-fun mapDefault!58321 () ValueCell!17962)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37660 () Bool)

(assert start!37660)

(declare-fun b!385299 () Bool)

(declare-fun e!233873 () Bool)

(declare-fun e!233870 () Bool)

(declare-fun mapRes!15705 () Bool)

(assert (=> b!385299 (= e!233873 (and e!233870 mapRes!15705))))

(declare-fun condMapEmpty!15705 () Bool)

(declare-datatypes ((V!13675 0))(
  ( (V!13676 (val!4758 Int)) )
))
(declare-datatypes ((ValueCell!4370 0))(
  ( (ValueCellFull!4370 (v!6951 V!13675)) (EmptyCell!4370) )
))
(declare-datatypes ((array!22733 0))(
  ( (array!22734 (arr!10832 (Array (_ BitVec 32) ValueCell!4370)) (size!11184 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22733)

(declare-fun mapDefault!15705 () ValueCell!4370)


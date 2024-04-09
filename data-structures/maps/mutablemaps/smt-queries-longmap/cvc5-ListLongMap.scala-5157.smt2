; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69930 () Bool)

(assert start!69930)

(declare-fun b!812559 () Bool)

(declare-fun e!450168 () Bool)

(declare-fun e!450167 () Bool)

(declare-fun mapRes!22663 () Bool)

(assert (=> b!812559 (= e!450168 (and e!450167 mapRes!22663))))

(declare-fun condMapEmpty!22663 () Bool)

(declare-datatypes ((V!23747 0))(
  ( (V!23748 (val!7077 Int)) )
))
(declare-datatypes ((ValueCell!6614 0))(
  ( (ValueCellFull!6614 (v!9500 V!23747)) (EmptyCell!6614) )
))
(declare-datatypes ((array!44310 0))(
  ( (array!44311 (arr!21213 (Array (_ BitVec 32) ValueCell!6614)) (size!21634 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44310)

(declare-fun mapDefault!22663 () ValueCell!6614)


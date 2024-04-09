; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69962 () Bool)

(assert start!69962)

(declare-fun b_free!12371 () Bool)

(declare-fun b_next!12371 () Bool)

(assert (=> start!69962 (= b_free!12371 (not b_next!12371))))

(declare-fun tp!43824 () Bool)

(declare-fun b_and!21157 () Bool)

(assert (=> start!69962 (= tp!43824 b_and!21157)))

(declare-fun b!812818 () Bool)

(declare-fun e!450359 () Bool)

(declare-fun e!450362 () Bool)

(declare-fun mapRes!22699 () Bool)

(assert (=> b!812818 (= e!450359 (and e!450362 mapRes!22699))))

(declare-fun condMapEmpty!22699 () Bool)

(declare-datatypes ((V!23775 0))(
  ( (V!23776 (val!7088 Int)) )
))
(declare-datatypes ((ValueCell!6625 0))(
  ( (ValueCellFull!6625 (v!9511 V!23775)) (EmptyCell!6625) )
))
(declare-datatypes ((array!44354 0))(
  ( (array!44355 (arr!21234 (Array (_ BitVec 32) ValueCell!6625)) (size!21655 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44354)

(declare-fun mapDefault!22699 () ValueCell!6625)


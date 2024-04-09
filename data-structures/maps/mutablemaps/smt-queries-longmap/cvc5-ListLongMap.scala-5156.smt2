; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69924 () Bool)

(assert start!69924)

(declare-fun b!812505 () Bool)

(declare-fun e!450122 () Bool)

(declare-fun e!450125 () Bool)

(declare-fun mapRes!22654 () Bool)

(assert (=> b!812505 (= e!450122 (and e!450125 mapRes!22654))))

(declare-fun condMapEmpty!22654 () Bool)

(declare-datatypes ((V!23739 0))(
  ( (V!23740 (val!7074 Int)) )
))
(declare-datatypes ((ValueCell!6611 0))(
  ( (ValueCellFull!6611 (v!9497 V!23739)) (EmptyCell!6611) )
))
(declare-datatypes ((array!44300 0))(
  ( (array!44301 (arr!21208 (Array (_ BitVec 32) ValueCell!6611)) (size!21629 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44300)

(declare-fun mapDefault!22654 () ValueCell!6611)


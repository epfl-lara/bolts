; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95368 () Bool)

(assert start!95368)

(declare-fun mapIsEmpty!40855 () Bool)

(declare-fun mapRes!40855 () Bool)

(assert (=> mapIsEmpty!40855 mapRes!40855))

(declare-fun b!1077002 () Bool)

(declare-fun e!615781 () Bool)

(declare-fun e!615782 () Bool)

(assert (=> b!1077002 (= e!615781 (and e!615782 mapRes!40855))))

(declare-fun condMapEmpty!40855 () Bool)

(declare-datatypes ((V!39905 0))(
  ( (V!39906 (val!13098 Int)) )
))
(declare-datatypes ((ValueCell!12332 0))(
  ( (ValueCellFull!12332 (v!15718 V!39905)) (EmptyCell!12332) )
))
(declare-datatypes ((array!69080 0))(
  ( (array!69081 (arr!33218 (Array (_ BitVec 32) ValueCell!12332)) (size!33755 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69080)

(declare-fun mapDefault!40855 () ValueCell!12332)


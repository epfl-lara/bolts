; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78184 () Bool)

(assert start!78184)

(declare-fun b_free!16667 () Bool)

(declare-fun b_next!16667 () Bool)

(assert (=> start!78184 (= b_free!16667 (not b_next!16667))))

(declare-fun tp!58276 () Bool)

(declare-fun b_and!27259 () Bool)

(assert (=> start!78184 (= tp!58276 b_and!27259)))

(declare-fun res!615340 () Bool)

(declare-fun e!511609 () Bool)

(assert (=> start!78184 (=> (not res!615340) (not e!511609))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78184 (= res!615340 (validMask!0 mask!1756))))

(assert (=> start!78184 e!511609))

(declare-datatypes ((V!30411 0))(
  ( (V!30412 (val!9593 Int)) )
))
(declare-datatypes ((ValueCell!9061 0))(
  ( (ValueCellFull!9061 (v!12103 V!30411)) (EmptyCell!9061) )
))
(declare-datatypes ((array!54174 0))(
  ( (array!54175 (arr!26038 (Array (_ BitVec 32) ValueCell!9061)) (size!26498 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54174)

(declare-fun e!511608 () Bool)

(declare-fun array_inv!20330 (array!54174) Bool)

(assert (=> start!78184 (and (array_inv!20330 _values!1152) e!511608)))

(assert (=> start!78184 tp!58276))

(assert (=> start!78184 true))

(declare-fun tp_is_empty!19085 () Bool)

(assert (=> start!78184 tp_is_empty!19085))

(declare-datatypes ((array!54176 0))(
  ( (array!54177 (arr!26039 (Array (_ BitVec 32) (_ BitVec 64))) (size!26499 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54176)

(declare-fun array_inv!20331 (array!54176) Bool)

(assert (=> start!78184 (array_inv!20331 _keys!1386)))

(declare-fun b!911995 () Bool)

(declare-fun e!511606 () Bool)

(declare-fun mapRes!30352 () Bool)

(assert (=> b!911995 (= e!511608 (and e!511606 mapRes!30352))))

(declare-fun condMapEmpty!30352 () Bool)

(declare-fun mapDefault!30352 () ValueCell!9061)


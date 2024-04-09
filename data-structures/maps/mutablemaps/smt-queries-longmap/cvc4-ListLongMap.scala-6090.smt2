; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78680 () Bool)

(assert start!78680)

(declare-fun b_free!16865 () Bool)

(declare-fun b_next!16865 () Bool)

(assert (=> start!78680 (= b_free!16865 (not b_next!16865))))

(declare-fun tp!59036 () Bool)

(declare-fun b_and!27505 () Bool)

(assert (=> start!78680 (= tp!59036 b_and!27505)))

(declare-fun b!916794 () Bool)

(declare-fun e!514718 () Bool)

(declare-fun e!514719 () Bool)

(declare-fun mapRes!30816 () Bool)

(assert (=> b!916794 (= e!514718 (and e!514719 mapRes!30816))))

(declare-fun condMapEmpty!30816 () Bool)

(declare-datatypes ((V!30795 0))(
  ( (V!30796 (val!9737 Int)) )
))
(declare-datatypes ((ValueCell!9205 0))(
  ( (ValueCellFull!9205 (v!12255 V!30795)) (EmptyCell!9205) )
))
(declare-datatypes ((array!54744 0))(
  ( (array!54745 (arr!26313 (Array (_ BitVec 32) ValueCell!9205)) (size!26773 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54744)

(declare-fun mapDefault!30816 () ValueCell!9205)


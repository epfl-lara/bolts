; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78174 () Bool)

(assert start!78174)

(declare-fun b_free!16657 () Bool)

(declare-fun b_next!16657 () Bool)

(assert (=> start!78174 (= b_free!16657 (not b_next!16657))))

(declare-fun tp!58246 () Bool)

(declare-fun b_and!27249 () Bool)

(assert (=> start!78174 (= tp!58246 b_and!27249)))

(declare-fun b!911890 () Bool)

(declare-fun e!511533 () Bool)

(declare-fun e!511535 () Bool)

(declare-fun mapRes!30337 () Bool)

(assert (=> b!911890 (= e!511533 (and e!511535 mapRes!30337))))

(declare-fun condMapEmpty!30337 () Bool)

(declare-datatypes ((V!30399 0))(
  ( (V!30400 (val!9588 Int)) )
))
(declare-datatypes ((ValueCell!9056 0))(
  ( (ValueCellFull!9056 (v!12098 V!30399)) (EmptyCell!9056) )
))
(declare-datatypes ((array!54158 0))(
  ( (array!54159 (arr!26030 (Array (_ BitVec 32) ValueCell!9056)) (size!26490 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54158)

(declare-fun mapDefault!30337 () ValueCell!9056)


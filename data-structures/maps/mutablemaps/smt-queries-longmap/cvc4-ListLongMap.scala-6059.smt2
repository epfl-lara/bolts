; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78450 () Bool)

(assert start!78450)

(declare-datatypes ((array!54382 0))(
  ( (array!54383 (arr!26137 (Array (_ BitVec 32) (_ BitVec 64))) (size!26597 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54382)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun e!513169 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30547 0))(
  ( (V!30548 (val!9644 Int)) )
))
(declare-datatypes ((ValueCell!9112 0))(
  ( (ValueCellFull!9112 (v!12161 V!30547)) (EmptyCell!9112) )
))
(declare-datatypes ((array!54384 0))(
  ( (array!54385 (arr!26138 (Array (_ BitVec 32) ValueCell!9112)) (size!26598 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54384)

(declare-fun b!914612 () Bool)

(assert (=> b!914612 (= e!513169 (and (= (size!26598 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26597 _keys!1487) (size!26598 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011) (not (= (size!26597 _keys!1487) (bvadd #b00000000000000000000000000000001 mask!1881)))))))

(declare-fun b!914613 () Bool)

(declare-fun e!513166 () Bool)

(declare-fun tp_is_empty!19187 () Bool)

(assert (=> b!914613 (= e!513166 tp_is_empty!19187)))

(declare-fun b!914614 () Bool)

(declare-fun e!513165 () Bool)

(assert (=> b!914614 (= e!513165 tp_is_empty!19187)))

(declare-fun b!914615 () Bool)

(declare-fun e!513167 () Bool)

(declare-fun mapRes!30522 () Bool)

(assert (=> b!914615 (= e!513167 (and e!513166 mapRes!30522))))

(declare-fun condMapEmpty!30522 () Bool)

(declare-fun mapDefault!30522 () ValueCell!9112)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41506 () Bool)

(assert start!41506)

(declare-fun b_free!11165 () Bool)

(declare-fun b_next!11165 () Bool)

(assert (=> start!41506 (= b_free!11165 (not b_next!11165))))

(declare-fun tp!39493 () Bool)

(declare-fun b_and!19523 () Bool)

(assert (=> start!41506 (= tp!39493 b_and!19523)))

(declare-fun b!463384 () Bool)

(declare-fun res!277137 () Bool)

(declare-fun e!270577 () Bool)

(assert (=> b!463384 (=> (not res!277137) (not e!270577))))

(declare-datatypes ((array!28945 0))(
  ( (array!28946 (arr!13901 (Array (_ BitVec 32) (_ BitVec 64))) (size!14253 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28945)

(declare-datatypes ((List!8408 0))(
  ( (Nil!8405) (Cons!8404 (h!9260 (_ BitVec 64)) (t!14362 List!8408)) )
))
(declare-fun arrayNoDuplicates!0 (array!28945 (_ BitVec 32) List!8408) Bool)

(assert (=> b!463384 (= res!277137 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8405))))

(declare-fun b!463385 () Bool)

(declare-fun e!270576 () Bool)

(declare-fun tp_is_empty!12593 () Bool)

(assert (=> b!463385 (= e!270576 tp_is_empty!12593)))

(declare-fun b!463387 () Bool)

(declare-fun e!270579 () Bool)

(declare-fun e!270580 () Bool)

(declare-fun mapRes!20566 () Bool)

(assert (=> b!463387 (= e!270579 (and e!270580 mapRes!20566))))

(declare-fun condMapEmpty!20566 () Bool)

(declare-datatypes ((V!17895 0))(
  ( (V!17896 (val!6341 Int)) )
))
(declare-datatypes ((ValueCell!5953 0))(
  ( (ValueCellFull!5953 (v!8624 V!17895)) (EmptyCell!5953) )
))
(declare-datatypes ((array!28947 0))(
  ( (array!28948 (arr!13902 (Array (_ BitVec 32) ValueCell!5953)) (size!14254 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28947)

(declare-fun mapDefault!20566 () ValueCell!5953)


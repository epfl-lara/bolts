; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83994 () Bool)

(assert start!83994)

(declare-fun b!981055 () Bool)

(declare-fun e!553105 () Bool)

(declare-fun tp_is_empty!22769 () Bool)

(assert (=> b!981055 (= e!553105 tp_is_empty!22769)))

(declare-fun b!981056 () Bool)

(declare-fun e!553104 () Bool)

(declare-fun e!553103 () Bool)

(declare-fun mapRes!36182 () Bool)

(assert (=> b!981056 (= e!553104 (and e!553103 mapRes!36182))))

(declare-fun condMapEmpty!36182 () Bool)

(declare-datatypes ((V!35341 0))(
  ( (V!35342 (val!11435 Int)) )
))
(declare-datatypes ((ValueCell!10903 0))(
  ( (ValueCellFull!10903 (v!13997 V!35341)) (EmptyCell!10903) )
))
(declare-datatypes ((array!61535 0))(
  ( (array!61536 (arr!29621 (Array (_ BitVec 32) ValueCell!10903)) (size!30101 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61535)

(declare-fun mapDefault!36182 () ValueCell!10903)


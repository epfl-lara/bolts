; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!910 () Bool)

(assert start!910)

(declare-fun b_free!283 () Bool)

(declare-fun b_next!283 () Bool)

(assert (=> start!910 (= b_free!283 (not b_next!283))))

(declare-fun tp!1081 () Bool)

(declare-fun b_and!431 () Bool)

(assert (=> start!910 (= tp!1081 b_and!431)))

(declare-fun b!7617 () Bool)

(declare-fun e!4259 () Bool)

(declare-fun e!4258 () Bool)

(declare-fun mapRes!515 () Bool)

(assert (=> b!7617 (= e!4259 (and e!4258 mapRes!515))))

(declare-fun condMapEmpty!515 () Bool)

(declare-datatypes ((V!659 0))(
  ( (V!660 (val!186 Int)) )
))
(declare-datatypes ((ValueCell!164 0))(
  ( (ValueCellFull!164 (v!1278 V!659)) (EmptyCell!164) )
))
(declare-datatypes ((array!657 0))(
  ( (array!658 (arr!316 (Array (_ BitVec 32) ValueCell!164)) (size!378 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!657)

(declare-fun mapDefault!515 () ValueCell!164)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72272 () Bool)

(assert start!72272)

(declare-fun b!837076 () Bool)

(declare-fun e!467182 () Bool)

(declare-fun e!467178 () Bool)

(declare-fun mapRes!24569 () Bool)

(assert (=> b!837076 (= e!467182 (and e!467178 mapRes!24569))))

(declare-fun condMapEmpty!24569 () Bool)

(declare-datatypes ((V!25469 0))(
  ( (V!25470 (val!7706 Int)) )
))
(declare-datatypes ((ValueCell!7219 0))(
  ( (ValueCellFull!7219 (v!10126 V!25469)) (EmptyCell!7219) )
))
(declare-datatypes ((array!46900 0))(
  ( (array!46901 (arr!22479 (Array (_ BitVec 32) ValueCell!7219)) (size!22920 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46900)

(declare-fun mapDefault!24569 () ValueCell!7219)


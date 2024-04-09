; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7428 () Bool)

(assert start!7428)

(declare-fun b!47708 () Bool)

(declare-fun e!30578 () Bool)

(declare-fun e!30577 () Bool)

(declare-fun mapRes!2123 () Bool)

(assert (=> b!47708 (= e!30578 (and e!30577 mapRes!2123))))

(declare-fun condMapEmpty!2123 () Bool)

(declare-datatypes ((V!2471 0))(
  ( (V!2472 (val!1065 Int)) )
))
(declare-datatypes ((ValueCell!737 0))(
  ( (ValueCellFull!737 (v!2125 V!2471)) (EmptyCell!737) )
))
(declare-datatypes ((array!3168 0))(
  ( (array!3169 (arr!1518 (Array (_ BitVec 32) ValueCell!737)) (size!1740 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3168)

(declare-fun mapDefault!2123 () ValueCell!737)


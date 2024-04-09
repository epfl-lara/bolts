; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72362 () Bool)

(assert start!72362)

(declare-fun b!837878 () Bool)

(declare-fun e!467748 () Bool)

(declare-fun e!467749 () Bool)

(declare-fun mapRes!24677 () Bool)

(assert (=> b!837878 (= e!467748 (and e!467749 mapRes!24677))))

(declare-fun condMapEmpty!24677 () Bool)

(declare-datatypes ((V!25561 0))(
  ( (V!25562 (val!7740 Int)) )
))
(declare-datatypes ((ValueCell!7253 0))(
  ( (ValueCellFull!7253 (v!10161 V!25561)) (EmptyCell!7253) )
))
(declare-datatypes ((array!47028 0))(
  ( (array!47029 (arr!22541 (Array (_ BitVec 32) ValueCell!7253)) (size!22982 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47028)

(declare-fun mapDefault!24677 () ValueCell!7253)


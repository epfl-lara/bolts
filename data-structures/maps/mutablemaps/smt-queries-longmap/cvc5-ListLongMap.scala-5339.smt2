; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71366 () Bool)

(assert start!71366)

(declare-fun b_free!13441 () Bool)

(declare-fun b_next!13441 () Bool)

(assert (=> start!71366 (= b_free!13441 (not b_next!13441))))

(declare-fun tp!47094 () Bool)

(declare-fun b_and!22429 () Bool)

(assert (=> start!71366 (= tp!47094 b_and!22429)))

(declare-fun b!828388 () Bool)

(declare-fun e!461645 () Bool)

(declare-fun e!461651 () Bool)

(declare-fun mapRes!24364 () Bool)

(assert (=> b!828388 (= e!461645 (and e!461651 mapRes!24364))))

(declare-fun condMapEmpty!24364 () Bool)

(declare-datatypes ((V!25203 0))(
  ( (V!25204 (val!7623 Int)) )
))
(declare-datatypes ((ValueCell!7160 0))(
  ( (ValueCellFull!7160 (v!10056 V!25203)) (EmptyCell!7160) )
))
(declare-datatypes ((array!46442 0))(
  ( (array!46443 (arr!22258 (Array (_ BitVec 32) ValueCell!7160)) (size!22679 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46442)

(declare-fun mapDefault!24364 () ValueCell!7160)


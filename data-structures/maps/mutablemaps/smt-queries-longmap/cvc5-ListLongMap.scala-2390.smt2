; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37810 () Bool)

(assert start!37810)

(declare-fun b_free!8905 () Bool)

(declare-fun b_next!8905 () Bool)

(assert (=> start!37810 (= b_free!8905 (not b_next!8905))))

(declare-fun tp!31467 () Bool)

(declare-fun b_and!16165 () Bool)

(assert (=> start!37810 (= tp!31467 b_and!16165)))

(declare-fun b!388159 () Bool)

(declare-fun e!235209 () Bool)

(declare-fun e!235208 () Bool)

(declare-fun mapRes!15930 () Bool)

(assert (=> b!388159 (= e!235209 (and e!235208 mapRes!15930))))

(declare-fun condMapEmpty!15930 () Bool)

(declare-datatypes ((V!13875 0))(
  ( (V!13876 (val!4833 Int)) )
))
(declare-datatypes ((ValueCell!4445 0))(
  ( (ValueCellFull!4445 (v!7026 V!13875)) (EmptyCell!4445) )
))
(declare-datatypes ((array!23023 0))(
  ( (array!23024 (arr!10977 (Array (_ BitVec 32) ValueCell!4445)) (size!11329 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23023)

(declare-fun mapDefault!15930 () ValueCell!4445)


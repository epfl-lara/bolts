; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38048 () Bool)

(assert start!38048)

(declare-fun b_free!8987 () Bool)

(declare-fun b_next!8987 () Bool)

(assert (=> start!38048 (= b_free!8987 (not b_next!8987))))

(declare-fun tp!31733 () Bool)

(declare-fun b_and!16331 () Bool)

(assert (=> start!38048 (= tp!31733 b_and!16331)))

(declare-fun b!391422 () Bool)

(declare-fun e!237077 () Bool)

(declare-fun e!237081 () Bool)

(declare-fun mapRes!16074 () Bool)

(assert (=> b!391422 (= e!237077 (and e!237081 mapRes!16074))))

(declare-fun condMapEmpty!16074 () Bool)

(declare-datatypes ((V!13983 0))(
  ( (V!13984 (val!4874 Int)) )
))
(declare-datatypes ((ValueCell!4486 0))(
  ( (ValueCellFull!4486 (v!7095 V!13983)) (EmptyCell!4486) )
))
(declare-datatypes ((array!23197 0))(
  ( (array!23198 (arr!11057 (Array (_ BitVec 32) ValueCell!4486)) (size!11409 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23197)

(declare-fun mapDefault!16074 () ValueCell!4486)


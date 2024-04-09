; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37976 () Bool)

(assert start!37976)

(declare-fun b_free!8959 () Bool)

(declare-fun b_next!8959 () Bool)

(assert (=> start!37976 (= b_free!8959 (not b_next!8959))))

(declare-fun tp!31643 () Bool)

(declare-fun b_and!16279 () Bool)

(assert (=> start!37976 (= tp!31643 b_and!16279)))

(declare-fun b!390382 () Bool)

(declare-fun e!236488 () Bool)

(declare-fun e!236483 () Bool)

(declare-fun mapRes!16026 () Bool)

(assert (=> b!390382 (= e!236488 (and e!236483 mapRes!16026))))

(declare-fun condMapEmpty!16026 () Bool)

(declare-datatypes ((V!13947 0))(
  ( (V!13948 (val!4860 Int)) )
))
(declare-datatypes ((ValueCell!4472 0))(
  ( (ValueCellFull!4472 (v!7073 V!13947)) (EmptyCell!4472) )
))
(declare-datatypes ((array!23139 0))(
  ( (array!23140 (arr!11030 (Array (_ BitVec 32) ValueCell!4472)) (size!11382 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23139)

(declare-fun mapDefault!16026 () ValueCell!4472)


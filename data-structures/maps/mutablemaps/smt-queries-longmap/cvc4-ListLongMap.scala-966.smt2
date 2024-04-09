; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20968 () Bool)

(assert start!20968)

(declare-fun b_free!5549 () Bool)

(declare-fun b_next!5549 () Bool)

(assert (=> start!20968 (= b_free!5549 (not b_next!5549))))

(declare-fun tp!19697 () Bool)

(declare-fun b_and!12349 () Bool)

(assert (=> start!20968 (= tp!19697 b_and!12349)))

(declare-fun b!210503 () Bool)

(declare-fun e!137081 () Bool)

(declare-fun tp_is_empty!5411 () Bool)

(assert (=> b!210503 (= e!137081 tp_is_empty!5411)))

(declare-fun b!210504 () Bool)

(declare-fun e!137080 () Bool)

(declare-fun e!137079 () Bool)

(declare-fun mapRes!9194 () Bool)

(assert (=> b!210504 (= e!137080 (and e!137079 mapRes!9194))))

(declare-fun condMapEmpty!9194 () Bool)

(declare-datatypes ((V!6861 0))(
  ( (V!6862 (val!2750 Int)) )
))
(declare-datatypes ((ValueCell!2362 0))(
  ( (ValueCellFull!2362 (v!4728 V!6861)) (EmptyCell!2362) )
))
(declare-datatypes ((array!10022 0))(
  ( (array!10023 (arr!4758 (Array (_ BitVec 32) ValueCell!2362)) (size!5083 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10022)

(declare-fun mapDefault!9194 () ValueCell!2362)


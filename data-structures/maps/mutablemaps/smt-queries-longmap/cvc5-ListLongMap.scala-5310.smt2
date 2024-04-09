; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71104 () Bool)

(assert start!71104)

(declare-fun b_free!13267 () Bool)

(declare-fun b_next!13267 () Bool)

(assert (=> start!71104 (= b_free!13267 (not b_next!13267))))

(declare-fun tp!46557 () Bool)

(declare-fun b_and!22199 () Bool)

(assert (=> start!71104 (= tp!46557 b_and!22199)))

(declare-fun b!825309 () Bool)

(declare-fun e!459404 () Bool)

(declare-fun e!459405 () Bool)

(declare-fun mapRes!24088 () Bool)

(assert (=> b!825309 (= e!459404 (and e!459405 mapRes!24088))))

(declare-fun condMapEmpty!24088 () Bool)

(declare-datatypes ((V!24971 0))(
  ( (V!24972 (val!7536 Int)) )
))
(declare-datatypes ((ValueCell!7073 0))(
  ( (ValueCellFull!7073 (v!9965 V!24971)) (EmptyCell!7073) )
))
(declare-datatypes ((array!46098 0))(
  ( (array!46099 (arr!22091 (Array (_ BitVec 32) ValueCell!7073)) (size!22512 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46098)

(declare-fun mapDefault!24088 () ValueCell!7073)


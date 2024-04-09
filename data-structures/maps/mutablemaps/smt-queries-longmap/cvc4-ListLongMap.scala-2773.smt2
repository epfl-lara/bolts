; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40502 () Bool)

(assert start!40502)

(declare-fun b_free!10565 () Bool)

(declare-fun b_next!10565 () Bool)

(assert (=> start!40502 (= b_free!10565 (not b_next!10565))))

(declare-fun tp!37473 () Bool)

(declare-fun b_and!18567 () Bool)

(assert (=> start!40502 (= tp!37473 b_and!18567)))

(declare-fun b!445969 () Bool)

(declare-fun e!262023 () Bool)

(declare-fun e!262026 () Bool)

(declare-fun mapRes!19446 () Bool)

(assert (=> b!445969 (= e!262023 (and e!262026 mapRes!19446))))

(declare-fun condMapEmpty!19446 () Bool)

(declare-datatypes ((V!16943 0))(
  ( (V!16944 (val!5984 Int)) )
))
(declare-datatypes ((ValueCell!5596 0))(
  ( (ValueCellFull!5596 (v!8231 V!16943)) (EmptyCell!5596) )
))
(declare-datatypes ((array!27525 0))(
  ( (array!27526 (arr!13207 (Array (_ BitVec 32) ValueCell!5596)) (size!13559 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27525)

(declare-fun mapDefault!19446 () ValueCell!5596)


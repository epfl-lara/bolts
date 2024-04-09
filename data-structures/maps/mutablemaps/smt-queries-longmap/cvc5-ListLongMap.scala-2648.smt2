; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39714 () Bool)

(assert start!39714)

(declare-fun b_free!9973 () Bool)

(declare-fun b_next!9973 () Bool)

(assert (=> start!39714 (= b_free!9973 (not b_next!9973))))

(declare-fun tp!35447 () Bool)

(declare-fun b_and!17647 () Bool)

(assert (=> start!39714 (= tp!35447 b_and!17647)))

(declare-fun b!426572 () Bool)

(declare-fun e!253037 () Bool)

(declare-fun e!253042 () Bool)

(declare-fun mapRes!18309 () Bool)

(assert (=> b!426572 (= e!253037 (and e!253042 mapRes!18309))))

(declare-fun condMapEmpty!18309 () Bool)

(declare-datatypes ((V!15939 0))(
  ( (V!15940 (val!5607 Int)) )
))
(declare-datatypes ((ValueCell!5219 0))(
  ( (ValueCellFull!5219 (v!7850 V!15939)) (EmptyCell!5219) )
))
(declare-datatypes ((array!26075 0))(
  ( (array!26076 (arr!12484 (Array (_ BitVec 32) ValueCell!5219)) (size!12836 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26075)

(declare-fun mapDefault!18309 () ValueCell!5219)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39456 () Bool)

(assert start!39456)

(declare-fun b_free!9715 () Bool)

(declare-fun b_next!9715 () Bool)

(assert (=> start!39456 (= b_free!9715 (not b_next!9715))))

(declare-fun tp!34674 () Bool)

(declare-fun b_and!17323 () Bool)

(assert (=> start!39456 (= tp!34674 b_and!17323)))

(declare-fun b!420185 () Bool)

(declare-fun e!250295 () Bool)

(declare-fun e!250303 () Bool)

(declare-fun mapRes!17922 () Bool)

(assert (=> b!420185 (= e!250295 (and e!250303 mapRes!17922))))

(declare-fun condMapEmpty!17922 () Bool)

(declare-datatypes ((V!15595 0))(
  ( (V!15596 (val!5478 Int)) )
))
(declare-datatypes ((ValueCell!5090 0))(
  ( (ValueCellFull!5090 (v!7721 V!15595)) (EmptyCell!5090) )
))
(declare-datatypes ((array!25563 0))(
  ( (array!25564 (arr!12228 (Array (_ BitVec 32) ValueCell!5090)) (size!12580 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25563)

(declare-fun mapDefault!17922 () ValueCell!5090)


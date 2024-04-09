; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72470 () Bool)

(assert start!72470)

(declare-fun b_free!13627 () Bool)

(declare-fun b_next!13627 () Bool)

(assert (=> start!72470 (= b_free!13627 (not b_next!13627))))

(declare-fun tp!47980 () Bool)

(declare-fun b_and!22731 () Bool)

(assert (=> start!72470 (= tp!47980 b_and!22731)))

(declare-fun mapIsEmpty!24839 () Bool)

(declare-fun mapRes!24839 () Bool)

(assert (=> mapIsEmpty!24839 mapRes!24839))

(declare-fun b!839888 () Bool)

(declare-fun e!468707 () Bool)

(declare-fun e!468706 () Bool)

(assert (=> b!839888 (= e!468707 (and e!468706 mapRes!24839))))

(declare-fun condMapEmpty!24839 () Bool)

(declare-datatypes ((V!25705 0))(
  ( (V!25706 (val!7794 Int)) )
))
(declare-datatypes ((ValueCell!7307 0))(
  ( (ValueCellFull!7307 (v!10215 V!25705)) (EmptyCell!7307) )
))
(declare-datatypes ((array!47238 0))(
  ( (array!47239 (arr!22646 (Array (_ BitVec 32) ValueCell!7307)) (size!23087 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47238)

(declare-fun mapDefault!24839 () ValueCell!7307)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70298 () Bool)

(assert start!70298)

(declare-fun b_free!12649 () Bool)

(declare-fun b_next!12649 () Bool)

(assert (=> start!70298 (= b_free!12649 (not b_next!12649))))

(declare-fun tp!44671 () Bool)

(declare-fun b_and!21467 () Bool)

(assert (=> start!70298 (= tp!44671 b_and!21467)))

(declare-fun b!816257 () Bool)

(declare-fun e!452803 () Bool)

(declare-fun e!452806 () Bool)

(declare-fun mapRes!23128 () Bool)

(assert (=> b!816257 (= e!452803 (and e!452806 mapRes!23128))))

(declare-fun condMapEmpty!23128 () Bool)

(declare-datatypes ((V!24147 0))(
  ( (V!24148 (val!7227 Int)) )
))
(declare-datatypes ((ValueCell!6764 0))(
  ( (ValueCellFull!6764 (v!9651 V!24147)) (EmptyCell!6764) )
))
(declare-datatypes ((array!44900 0))(
  ( (array!44901 (arr!21503 (Array (_ BitVec 32) ValueCell!6764)) (size!21924 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44900)

(declare-fun mapDefault!23128 () ValueCell!6764)


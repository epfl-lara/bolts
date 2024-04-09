; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72312 () Bool)

(assert start!72312)

(declare-fun b!837353 () Bool)

(declare-fun e!467374 () Bool)

(declare-fun e!467373 () Bool)

(declare-fun mapRes!24602 () Bool)

(assert (=> b!837353 (= e!467374 (and e!467373 mapRes!24602))))

(declare-fun condMapEmpty!24602 () Bool)

(declare-datatypes ((V!25493 0))(
  ( (V!25494 (val!7715 Int)) )
))
(declare-datatypes ((ValueCell!7228 0))(
  ( (ValueCellFull!7228 (v!10136 V!25493)) (EmptyCell!7228) )
))
(declare-datatypes ((array!46932 0))(
  ( (array!46933 (arr!22493 (Array (_ BitVec 32) ValueCell!7228)) (size!22934 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46932)

(declare-fun mapDefault!24602 () ValueCell!7228)


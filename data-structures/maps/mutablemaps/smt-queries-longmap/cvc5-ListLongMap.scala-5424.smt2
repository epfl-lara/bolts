; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72356 () Bool)

(assert start!72356)

(declare-fun b!837815 () Bool)

(declare-fun e!467706 () Bool)

(declare-fun tp_is_empty!15379 () Bool)

(assert (=> b!837815 (= e!467706 tp_is_empty!15379)))

(declare-fun b!837816 () Bool)

(declare-fun e!467705 () Bool)

(declare-fun mapRes!24668 () Bool)

(assert (=> b!837816 (= e!467705 (and e!467706 mapRes!24668))))

(declare-fun condMapEmpty!24668 () Bool)

(declare-datatypes ((V!25553 0))(
  ( (V!25554 (val!7737 Int)) )
))
(declare-datatypes ((ValueCell!7250 0))(
  ( (ValueCellFull!7250 (v!10158 V!25553)) (EmptyCell!7250) )
))
(declare-datatypes ((array!47018 0))(
  ( (array!47019 (arr!22536 (Array (_ BitVec 32) ValueCell!7250)) (size!22977 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47018)

(declare-fun mapDefault!24668 () ValueCell!7250)


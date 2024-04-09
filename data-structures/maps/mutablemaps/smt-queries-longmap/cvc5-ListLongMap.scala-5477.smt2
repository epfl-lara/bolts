; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72674 () Bool)

(assert start!72674)

(declare-fun b!843098 () Bool)

(declare-fun e!470415 () Bool)

(declare-fun e!470413 () Bool)

(declare-fun mapRes!25145 () Bool)

(assert (=> b!843098 (= e!470415 (and e!470413 mapRes!25145))))

(declare-fun condMapEmpty!25145 () Bool)

(declare-datatypes ((V!25977 0))(
  ( (V!25978 (val!7896 Int)) )
))
(declare-datatypes ((ValueCell!7409 0))(
  ( (ValueCellFull!7409 (v!10317 V!25977)) (EmptyCell!7409) )
))
(declare-datatypes ((array!47632 0))(
  ( (array!47633 (arr!22843 (Array (_ BitVec 32) ValueCell!7409)) (size!23284 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47632)

(declare-fun mapDefault!25145 () ValueCell!7409)


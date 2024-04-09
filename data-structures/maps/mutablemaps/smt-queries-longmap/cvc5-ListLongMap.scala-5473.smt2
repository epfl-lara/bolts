; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72650 () Bool)

(assert start!72650)

(declare-fun b!842846 () Bool)

(declare-fun e!470231 () Bool)

(declare-fun e!470235 () Bool)

(declare-fun mapRes!25109 () Bool)

(assert (=> b!842846 (= e!470231 (and e!470235 mapRes!25109))))

(declare-fun condMapEmpty!25109 () Bool)

(declare-datatypes ((V!25945 0))(
  ( (V!25946 (val!7884 Int)) )
))
(declare-datatypes ((ValueCell!7397 0))(
  ( (ValueCellFull!7397 (v!10305 V!25945)) (EmptyCell!7397) )
))
(declare-datatypes ((array!47588 0))(
  ( (array!47589 (arr!22821 (Array (_ BitVec 32) ValueCell!7397)) (size!23262 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47588)

(declare-fun mapDefault!25109 () ValueCell!7397)


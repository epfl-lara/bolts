; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72480 () Bool)

(assert start!72480)

(declare-fun b_free!13637 () Bool)

(declare-fun b_next!13637 () Bool)

(assert (=> start!72480 (= b_free!13637 (not b_next!13637))))

(declare-fun tp!48011 () Bool)

(declare-fun b_and!22741 () Bool)

(assert (=> start!72480 (= tp!48011 b_and!22741)))

(declare-fun b!840083 () Bool)

(declare-fun e!468797 () Bool)

(declare-fun e!468795 () Bool)

(declare-fun mapRes!24854 () Bool)

(assert (=> b!840083 (= e!468797 (and e!468795 mapRes!24854))))

(declare-fun condMapEmpty!24854 () Bool)

(declare-datatypes ((V!25717 0))(
  ( (V!25718 (val!7799 Int)) )
))
(declare-datatypes ((ValueCell!7312 0))(
  ( (ValueCellFull!7312 (v!10220 V!25717)) (EmptyCell!7312) )
))
(declare-datatypes ((array!47256 0))(
  ( (array!47257 (arr!22655 (Array (_ BitVec 32) ValueCell!7312)) (size!23096 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47256)

(declare-fun mapDefault!24854 () ValueCell!7312)


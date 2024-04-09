; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72774 () Bool)

(assert start!72774)

(declare-fun b!844148 () Bool)

(declare-fun e!471164 () Bool)

(declare-fun e!471163 () Bool)

(declare-fun mapRes!25295 () Bool)

(assert (=> b!844148 (= e!471164 (and e!471163 mapRes!25295))))

(declare-fun condMapEmpty!25295 () Bool)

(declare-datatypes ((V!26109 0))(
  ( (V!26110 (val!7946 Int)) )
))
(declare-datatypes ((ValueCell!7459 0))(
  ( (ValueCellFull!7459 (v!10367 V!26109)) (EmptyCell!7459) )
))
(declare-datatypes ((array!47812 0))(
  ( (array!47813 (arr!22933 (Array (_ BitVec 32) ValueCell!7459)) (size!23374 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47812)

(declare-fun mapDefault!25295 () ValueCell!7459)


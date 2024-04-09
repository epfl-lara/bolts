; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72710 () Bool)

(assert start!72710)

(declare-fun mapIsEmpty!25199 () Bool)

(declare-fun mapRes!25199 () Bool)

(assert (=> mapIsEmpty!25199 mapRes!25199))

(declare-fun b!843476 () Bool)

(declare-fun e!470683 () Bool)

(declare-fun e!470684 () Bool)

(assert (=> b!843476 (= e!470683 (and e!470684 mapRes!25199))))

(declare-fun condMapEmpty!25199 () Bool)

(declare-datatypes ((V!26025 0))(
  ( (V!26026 (val!7914 Int)) )
))
(declare-datatypes ((ValueCell!7427 0))(
  ( (ValueCellFull!7427 (v!10335 V!26025)) (EmptyCell!7427) )
))
(declare-datatypes ((array!47696 0))(
  ( (array!47697 (arr!22875 (Array (_ BitVec 32) ValueCell!7427)) (size!23316 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47696)

(declare-fun mapDefault!25199 () ValueCell!7427)


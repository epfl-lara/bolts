; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72258 () Bool)

(assert start!72258)

(declare-fun b!836985 () Bool)

(declare-fun e!467122 () Bool)

(declare-fun tp_is_empty!15311 () Bool)

(assert (=> b!836985 (= e!467122 tp_is_empty!15311)))

(declare-fun b!836986 () Bool)

(declare-fun e!467118 () Bool)

(declare-fun e!467121 () Bool)

(declare-fun mapRes!24557 () Bool)

(assert (=> b!836986 (= e!467118 (and e!467121 mapRes!24557))))

(declare-fun condMapEmpty!24557 () Bool)

(declare-datatypes ((V!25461 0))(
  ( (V!25462 (val!7703 Int)) )
))
(declare-datatypes ((ValueCell!7216 0))(
  ( (ValueCellFull!7216 (v!10123 V!25461)) (EmptyCell!7216) )
))
(declare-datatypes ((array!46888 0))(
  ( (array!46889 (arr!22474 (Array (_ BitVec 32) ValueCell!7216)) (size!22915 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46888)

(declare-fun mapDefault!24557 () ValueCell!7216)


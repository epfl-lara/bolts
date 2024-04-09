; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72848 () Bool)

(assert start!72848)

(declare-fun b!844925 () Bool)

(declare-fun e!471718 () Bool)

(declare-fun e!471717 () Bool)

(declare-fun mapRes!25406 () Bool)

(assert (=> b!844925 (= e!471718 (and e!471717 mapRes!25406))))

(declare-fun condMapEmpty!25406 () Bool)

(declare-datatypes ((V!26209 0))(
  ( (V!26210 (val!7983 Int)) )
))
(declare-datatypes ((ValueCell!7496 0))(
  ( (ValueCellFull!7496 (v!10404 V!26209)) (EmptyCell!7496) )
))
(declare-datatypes ((array!47948 0))(
  ( (array!47949 (arr!23001 (Array (_ BitVec 32) ValueCell!7496)) (size!23442 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47948)

(declare-fun mapDefault!25406 () ValueCell!7496)


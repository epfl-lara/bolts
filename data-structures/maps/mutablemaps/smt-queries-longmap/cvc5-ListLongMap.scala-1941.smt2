; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34348 () Bool)

(assert start!34348)

(declare-fun b_free!7315 () Bool)

(declare-fun b_next!7315 () Bool)

(assert (=> start!34348 (= b_free!7315 (not b_next!7315))))

(declare-fun tp!25484 () Bool)

(declare-fun b_and!14537 () Bool)

(assert (=> start!34348 (= tp!25484 b_and!14537)))

(declare-fun b!342708 () Bool)

(declare-fun e!210159 () Bool)

(declare-fun e!210162 () Bool)

(declare-fun mapRes!12333 () Bool)

(assert (=> b!342708 (= e!210159 (and e!210162 mapRes!12333))))

(declare-fun condMapEmpty!12333 () Bool)

(declare-datatypes ((V!10667 0))(
  ( (V!10668 (val!3678 Int)) )
))
(declare-datatypes ((ValueCell!3290 0))(
  ( (ValueCellFull!3290 (v!5848 V!10667)) (EmptyCell!3290) )
))
(declare-datatypes ((array!18101 0))(
  ( (array!18102 (arr!8566 (Array (_ BitVec 32) ValueCell!3290)) (size!8918 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18101)

(declare-fun mapDefault!12333 () ValueCell!3290)


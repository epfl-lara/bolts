; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39838 () Bool)

(assert start!39838)

(declare-fun b_free!10097 () Bool)

(declare-fun b_next!10097 () Bool)

(assert (=> start!39838 (= b_free!10097 (not b_next!10097))))

(declare-fun tp!35819 () Bool)

(declare-fun b_and!17871 () Bool)

(assert (=> start!39838 (= tp!35819 b_and!17871)))

(declare-fun b!430013 () Bool)

(declare-fun e!254607 () Bool)

(declare-fun e!254613 () Bool)

(declare-fun mapRes!18495 () Bool)

(assert (=> b!430013 (= e!254607 (and e!254613 mapRes!18495))))

(declare-fun condMapEmpty!18495 () Bool)

(declare-datatypes ((V!16103 0))(
  ( (V!16104 (val!5669 Int)) )
))
(declare-datatypes ((ValueCell!5281 0))(
  ( (ValueCellFull!5281 (v!7912 V!16103)) (EmptyCell!5281) )
))
(declare-datatypes ((array!26315 0))(
  ( (array!26316 (arr!12604 (Array (_ BitVec 32) ValueCell!5281)) (size!12956 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26315)

(declare-fun mapDefault!18495 () ValueCell!5281)


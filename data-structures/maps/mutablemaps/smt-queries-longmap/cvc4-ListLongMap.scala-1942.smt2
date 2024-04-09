; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34358 () Bool)

(assert start!34358)

(declare-fun b_free!7325 () Bool)

(declare-fun b_next!7325 () Bool)

(assert (=> start!34358 (= b_free!7325 (not b_next!7325))))

(declare-fun tp!25514 () Bool)

(declare-fun b_and!14547 () Bool)

(assert (=> start!34358 (= tp!25514 b_and!14547)))

(declare-fun b!342904 () Bool)

(declare-fun e!210274 () Bool)

(declare-fun e!210272 () Bool)

(declare-fun mapRes!12348 () Bool)

(assert (=> b!342904 (= e!210274 (and e!210272 mapRes!12348))))

(declare-fun condMapEmpty!12348 () Bool)

(declare-datatypes ((V!10679 0))(
  ( (V!10680 (val!3683 Int)) )
))
(declare-datatypes ((ValueCell!3295 0))(
  ( (ValueCellFull!3295 (v!5853 V!10679)) (EmptyCell!3295) )
))
(declare-datatypes ((array!18119 0))(
  ( (array!18120 (arr!8575 (Array (_ BitVec 32) ValueCell!3295)) (size!8927 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18119)

(declare-fun mapDefault!12348 () ValueCell!3295)


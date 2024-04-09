; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42652 () Bool)

(assert start!42652)

(declare-fun b_free!12049 () Bool)

(declare-fun b_next!12049 () Bool)

(assert (=> start!42652 (= b_free!12049 (not b_next!12049))))

(declare-fun tp!42193 () Bool)

(declare-fun b_and!20567 () Bool)

(assert (=> start!42652 (= tp!42193 b_and!20567)))

(declare-fun b!475479 () Bool)

(declare-fun e!279219 () Bool)

(declare-fun e!279218 () Bool)

(declare-fun mapRes!21940 () Bool)

(assert (=> b!475479 (= e!279219 (and e!279218 mapRes!21940))))

(declare-fun condMapEmpty!21940 () Bool)

(declare-datatypes ((V!19075 0))(
  ( (V!19076 (val!6783 Int)) )
))
(declare-datatypes ((ValueCell!6395 0))(
  ( (ValueCellFull!6395 (v!9073 V!19075)) (EmptyCell!6395) )
))
(declare-datatypes ((array!30667 0))(
  ( (array!30668 (arr!14746 (Array (_ BitVec 32) ValueCell!6395)) (size!15098 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30667)

(declare-fun mapDefault!21940 () ValueCell!6395)


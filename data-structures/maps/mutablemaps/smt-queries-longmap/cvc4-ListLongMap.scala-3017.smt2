; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42448 () Bool)

(assert start!42448)

(declare-fun b_free!11915 () Bool)

(declare-fun b_next!11915 () Bool)

(assert (=> start!42448 (= b_free!11915 (not b_next!11915))))

(declare-fun tp!41778 () Bool)

(declare-fun b_and!20389 () Bool)

(assert (=> start!42448 (= tp!41778 b_and!20389)))

(declare-fun b!473357 () Bool)

(declare-fun e!277730 () Bool)

(declare-fun e!277734 () Bool)

(declare-fun mapRes!21727 () Bool)

(assert (=> b!473357 (= e!277730 (and e!277734 mapRes!21727))))

(declare-fun condMapEmpty!21727 () Bool)

(declare-datatypes ((V!18895 0))(
  ( (V!18896 (val!6716 Int)) )
))
(declare-datatypes ((ValueCell!6328 0))(
  ( (ValueCellFull!6328 (v!9003 V!18895)) (EmptyCell!6328) )
))
(declare-datatypes ((array!30405 0))(
  ( (array!30406 (arr!14619 (Array (_ BitVec 32) ValueCell!6328)) (size!14971 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30405)

(declare-fun mapDefault!21727 () ValueCell!6328)


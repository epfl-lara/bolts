; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42590 () Bool)

(assert start!42590)

(declare-fun b_free!12017 () Bool)

(declare-fun b_next!12017 () Bool)

(assert (=> start!42590 (= b_free!12017 (not b_next!12017))))

(declare-fun tp!42090 () Bool)

(declare-fun b_and!20515 () Bool)

(assert (=> start!42590 (= tp!42090 b_and!20515)))

(declare-fun b!474872 () Bool)

(declare-fun e!278804 () Bool)

(declare-fun e!278806 () Bool)

(declare-fun mapRes!21886 () Bool)

(assert (=> b!474872 (= e!278804 (and e!278806 mapRes!21886))))

(declare-fun condMapEmpty!21886 () Bool)

(declare-datatypes ((V!19031 0))(
  ( (V!19032 (val!6767 Int)) )
))
(declare-datatypes ((ValueCell!6379 0))(
  ( (ValueCellFull!6379 (v!9056 V!19031)) (EmptyCell!6379) )
))
(declare-datatypes ((array!30607 0))(
  ( (array!30608 (arr!14718 (Array (_ BitVec 32) ValueCell!6379)) (size!15070 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30607)

(declare-fun mapDefault!21886 () ValueCell!6379)


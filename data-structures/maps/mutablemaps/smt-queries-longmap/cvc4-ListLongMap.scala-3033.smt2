; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42584 () Bool)

(assert start!42584)

(declare-fun b_free!12011 () Bool)

(declare-fun b_next!12011 () Bool)

(assert (=> start!42584 (= b_free!12011 (not b_next!12011))))

(declare-fun tp!42072 () Bool)

(declare-fun b_and!20509 () Bool)

(assert (=> start!42584 (= tp!42072 b_and!20509)))

(declare-fun b!474809 () Bool)

(declare-fun e!278760 () Bool)

(declare-fun e!278758 () Bool)

(declare-fun mapRes!21877 () Bool)

(assert (=> b!474809 (= e!278760 (and e!278758 mapRes!21877))))

(declare-fun condMapEmpty!21877 () Bool)

(declare-datatypes ((V!19023 0))(
  ( (V!19024 (val!6764 Int)) )
))
(declare-datatypes ((ValueCell!6376 0))(
  ( (ValueCellFull!6376 (v!9053 V!19023)) (EmptyCell!6376) )
))
(declare-datatypes ((array!30597 0))(
  ( (array!30598 (arr!14713 (Array (_ BitVec 32) ValueCell!6376)) (size!15065 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30597)

(declare-fun mapDefault!21877 () ValueCell!6376)


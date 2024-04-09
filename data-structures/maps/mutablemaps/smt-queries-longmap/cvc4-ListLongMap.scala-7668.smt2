; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96368 () Bool)

(assert start!96368)

(declare-fun b!1094762 () Bool)

(declare-fun e!625068 () Bool)

(declare-fun tp_is_empty!26987 () Bool)

(assert (=> b!1094762 (= e!625068 tp_is_empty!26987)))

(declare-fun mapIsEmpty!42235 () Bool)

(declare-fun mapRes!42235 () Bool)

(assert (=> mapIsEmpty!42235 mapRes!42235))

(declare-fun b!1094763 () Bool)

(declare-fun e!625065 () Bool)

(assert (=> b!1094763 (= e!625065 (and e!625068 mapRes!42235))))

(declare-fun condMapEmpty!42235 () Bool)

(declare-datatypes ((V!41109 0))(
  ( (V!41110 (val!13550 Int)) )
))
(declare-datatypes ((ValueCell!12784 0))(
  ( (ValueCellFull!12784 (v!16172 V!41109)) (EmptyCell!12784) )
))
(declare-datatypes ((array!70842 0))(
  ( (array!70843 (arr!34091 (Array (_ BitVec 32) ValueCell!12784)) (size!34628 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70842)

(declare-fun mapDefault!42235 () ValueCell!12784)


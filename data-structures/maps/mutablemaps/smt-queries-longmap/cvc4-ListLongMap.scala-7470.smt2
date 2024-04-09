; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94784 () Bool)

(assert start!94784)

(declare-fun b_free!22001 () Bool)

(declare-fun b_next!22001 () Bool)

(assert (=> start!94784 (= b_free!22001 (not b_next!22001))))

(declare-fun tp!77463 () Bool)

(declare-fun b_and!34849 () Bool)

(assert (=> start!94784 (= tp!77463 b_and!34849)))

(declare-fun b!1071268 () Bool)

(declare-fun e!611716 () Bool)

(declare-fun e!611717 () Bool)

(declare-fun mapRes!40423 () Bool)

(assert (=> b!1071268 (= e!611716 (and e!611717 mapRes!40423))))

(declare-fun condMapEmpty!40423 () Bool)

(declare-datatypes ((V!39549 0))(
  ( (V!39550 (val!12956 Int)) )
))
(declare-datatypes ((ValueCell!12202 0))(
  ( (ValueCellFull!12202 (v!15573 V!39549)) (EmptyCell!12202) )
))
(declare-datatypes ((array!68556 0))(
  ( (array!68557 (arr!32970 (Array (_ BitVec 32) ValueCell!12202)) (size!33507 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68556)

(declare-fun mapDefault!40423 () ValueCell!12202)


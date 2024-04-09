; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95776 () Bool)

(assert start!95776)

(declare-fun b_free!22393 () Bool)

(declare-fun b_next!22393 () Bool)

(assert (=> start!95776 (= b_free!22393 (not b_next!22393))))

(declare-fun tp!79029 () Bool)

(declare-fun b_and!35479 () Bool)

(assert (=> start!95776 (= tp!79029 b_and!35479)))

(declare-fun b!1082629 () Bool)

(declare-fun e!618729 () Bool)

(declare-fun e!618728 () Bool)

(declare-fun mapRes!41347 () Bool)

(assert (=> b!1082629 (= e!618729 (and e!618728 mapRes!41347))))

(declare-fun condMapEmpty!41347 () Bool)

(declare-datatypes ((V!40321 0))(
  ( (V!40322 (val!13254 Int)) )
))
(declare-datatypes ((ValueCell!12488 0))(
  ( (ValueCellFull!12488 (v!15876 V!40321)) (EmptyCell!12488) )
))
(declare-datatypes ((array!69694 0))(
  ( (array!69695 (arr!33517 (Array (_ BitVec 32) ValueCell!12488)) (size!34054 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69694)

(declare-fun mapDefault!41347 () ValueCell!12488)


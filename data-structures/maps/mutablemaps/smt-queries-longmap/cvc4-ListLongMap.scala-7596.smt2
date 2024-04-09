; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95936 () Bool)

(assert start!95936)

(declare-fun b_free!22553 () Bool)

(declare-fun b_next!22553 () Bool)

(assert (=> start!95936 (= b_free!22553 (not b_next!22553))))

(declare-fun tp!79509 () Bool)

(declare-fun b_and!35799 () Bool)

(assert (=> start!95936 (= tp!79509 b_and!35799)))

(declare-fun b!1085847 () Bool)

(declare-fun e!620337 () Bool)

(declare-fun e!620342 () Bool)

(declare-fun mapRes!41587 () Bool)

(assert (=> b!1085847 (= e!620337 (and e!620342 mapRes!41587))))

(declare-fun condMapEmpty!41587 () Bool)

(declare-datatypes ((V!40533 0))(
  ( (V!40534 (val!13334 Int)) )
))
(declare-datatypes ((ValueCell!12568 0))(
  ( (ValueCellFull!12568 (v!15956 V!40533)) (EmptyCell!12568) )
))
(declare-datatypes ((array!70008 0))(
  ( (array!70009 (arr!33674 (Array (_ BitVec 32) ValueCell!12568)) (size!34211 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70008)

(declare-fun mapDefault!41587 () ValueCell!12568)


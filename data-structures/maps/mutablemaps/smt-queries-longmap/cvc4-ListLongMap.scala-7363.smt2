; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93936 () Bool)

(assert start!93936)

(declare-fun b_free!21359 () Bool)

(declare-fun b_next!21359 () Bool)

(assert (=> start!93936 (= b_free!21359 (not b_next!21359))))

(declare-fun tp!75503 () Bool)

(declare-fun b_and!34099 () Bool)

(assert (=> start!93936 (= tp!75503 b_and!34099)))

(declare-fun b!1061874 () Bool)

(declare-fun e!604801 () Bool)

(declare-fun e!604805 () Bool)

(declare-fun mapRes!39427 () Bool)

(assert (=> b!1061874 (= e!604801 (and e!604805 mapRes!39427))))

(declare-fun condMapEmpty!39427 () Bool)

(declare-datatypes ((V!38693 0))(
  ( (V!38694 (val!12635 Int)) )
))
(declare-datatypes ((ValueCell!11881 0))(
  ( (ValueCellFull!11881 (v!15246 V!38693)) (EmptyCell!11881) )
))
(declare-datatypes ((array!67320 0))(
  ( (array!67321 (arr!32363 (Array (_ BitVec 32) ValueCell!11881)) (size!32900 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67320)

(declare-fun mapDefault!39427 () ValueCell!11881)


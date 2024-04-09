; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93960 () Bool)

(assert start!93960)

(declare-fun b_free!21383 () Bool)

(declare-fun b_next!21383 () Bool)

(assert (=> start!93960 (= b_free!21383 (not b_next!21383))))

(declare-fun tp!75575 () Bool)

(declare-fun b_and!34123 () Bool)

(assert (=> start!93960 (= tp!75575 b_and!34123)))

(declare-fun b!1062197 () Bool)

(declare-fun e!605053 () Bool)

(declare-fun e!605058 () Bool)

(declare-fun mapRes!39463 () Bool)

(assert (=> b!1062197 (= e!605053 (and e!605058 mapRes!39463))))

(declare-fun condMapEmpty!39463 () Bool)

(declare-datatypes ((V!38725 0))(
  ( (V!38726 (val!12647 Int)) )
))
(declare-datatypes ((ValueCell!11893 0))(
  ( (ValueCellFull!11893 (v!15258 V!38725)) (EmptyCell!11893) )
))
(declare-datatypes ((array!67364 0))(
  ( (array!67365 (arr!32385 (Array (_ BitVec 32) ValueCell!11893)) (size!32922 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67364)

(declare-fun mapDefault!39463 () ValueCell!11893)


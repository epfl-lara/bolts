; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93932 () Bool)

(assert start!93932)

(declare-fun b_free!21355 () Bool)

(declare-fun b_next!21355 () Bool)

(assert (=> start!93932 (= b_free!21355 (not b_next!21355))))

(declare-fun tp!75492 () Bool)

(declare-fun b_and!34095 () Bool)

(assert (=> start!93932 (= tp!75492 b_and!34095)))

(declare-fun b!1061826 () Bool)

(declare-fun e!604765 () Bool)

(declare-fun tp_is_empty!25165 () Bool)

(assert (=> b!1061826 (= e!604765 tp_is_empty!25165)))

(declare-fun res!709115 () Bool)

(declare-fun e!604770 () Bool)

(assert (=> start!93932 (=> (not res!709115) (not e!604770))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93932 (= res!709115 (validMask!0 mask!1515))))

(assert (=> start!93932 e!604770))

(assert (=> start!93932 true))

(assert (=> start!93932 tp_is_empty!25165))

(declare-datatypes ((V!38689 0))(
  ( (V!38690 (val!12633 Int)) )
))
(declare-datatypes ((ValueCell!11879 0))(
  ( (ValueCellFull!11879 (v!15244 V!38689)) (EmptyCell!11879) )
))
(declare-datatypes ((array!67312 0))(
  ( (array!67313 (arr!32359 (Array (_ BitVec 32) ValueCell!11879)) (size!32896 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67312)

(declare-fun e!604767 () Bool)

(declare-fun array_inv!24908 (array!67312) Bool)

(assert (=> start!93932 (and (array_inv!24908 _values!955) e!604767)))

(assert (=> start!93932 tp!75492))

(declare-datatypes ((array!67314 0))(
  ( (array!67315 (arr!32360 (Array (_ BitVec 32) (_ BitVec 64))) (size!32897 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67314)

(declare-fun array_inv!24909 (array!67314) Bool)

(assert (=> start!93932 (array_inv!24909 _keys!1163)))

(declare-fun b!1061827 () Bool)

(declare-fun mapRes!39421 () Bool)

(assert (=> b!1061827 (= e!604767 (and e!604765 mapRes!39421))))

(declare-fun condMapEmpty!39421 () Bool)

(declare-fun mapDefault!39421 () ValueCell!11879)


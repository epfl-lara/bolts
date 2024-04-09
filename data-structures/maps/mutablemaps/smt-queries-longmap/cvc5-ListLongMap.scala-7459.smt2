; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94698 () Bool)

(assert start!94698)

(declare-fun b_free!21931 () Bool)

(declare-fun b_next!21931 () Bool)

(assert (=> start!94698 (= b_free!21931 (not b_next!21931))))

(declare-fun tp!77250 () Bool)

(declare-fun b_and!34769 () Bool)

(assert (=> start!94698 (= tp!77250 b_and!34769)))

(declare-fun b!1070227 () Bool)

(declare-fun e!610939 () Bool)

(declare-fun e!610937 () Bool)

(declare-fun mapRes!40315 () Bool)

(assert (=> b!1070227 (= e!610939 (and e!610937 mapRes!40315))))

(declare-fun condMapEmpty!40315 () Bool)

(declare-datatypes ((V!39457 0))(
  ( (V!39458 (val!12921 Int)) )
))
(declare-datatypes ((ValueCell!12167 0))(
  ( (ValueCellFull!12167 (v!15538 V!39457)) (EmptyCell!12167) )
))
(declare-datatypes ((array!68428 0))(
  ( (array!68429 (arr!32907 (Array (_ BitVec 32) ValueCell!12167)) (size!33444 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68428)

(declare-fun mapDefault!40315 () ValueCell!12167)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94686 () Bool)

(assert start!94686)

(declare-fun b_free!21919 () Bool)

(declare-fun b_next!21919 () Bool)

(assert (=> start!94686 (= b_free!21919 (not b_next!21919))))

(declare-fun tp!77214 () Bool)

(declare-fun b_and!34757 () Bool)

(assert (=> start!94686 (= tp!77214 b_and!34757)))

(declare-fun b!1070083 () Bool)

(declare-fun e!610831 () Bool)

(declare-fun tp_is_empty!25729 () Bool)

(assert (=> b!1070083 (= e!610831 tp_is_empty!25729)))

(declare-fun b!1070084 () Bool)

(declare-fun e!610833 () Bool)

(declare-fun mapRes!40297 () Bool)

(assert (=> b!1070084 (= e!610833 (and e!610831 mapRes!40297))))

(declare-fun condMapEmpty!40297 () Bool)

(declare-datatypes ((V!39441 0))(
  ( (V!39442 (val!12915 Int)) )
))
(declare-datatypes ((ValueCell!12161 0))(
  ( (ValueCellFull!12161 (v!15532 V!39441)) (EmptyCell!12161) )
))
(declare-datatypes ((array!68406 0))(
  ( (array!68407 (arr!32896 (Array (_ BitVec 32) ValueCell!12161)) (size!33433 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68406)

(declare-fun mapDefault!40297 () ValueCell!12161)


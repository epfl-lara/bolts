; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94564 () Bool)

(assert start!94564)

(declare-fun b_free!21833 () Bool)

(declare-fun b_next!21833 () Bool)

(assert (=> start!94564 (= b_free!21833 (not b_next!21833))))

(declare-fun tp!76949 () Bool)

(declare-fun b_and!34653 () Bool)

(assert (=> start!94564 (= tp!76949 b_and!34653)))

(declare-fun b!1068853 () Bool)

(declare-fun res!713301 () Bool)

(declare-fun e!609943 () Bool)

(assert (=> b!1068853 (=> (not res!713301) (not e!609943))))

(declare-datatypes ((array!68236 0))(
  ( (array!68237 (arr!32813 (Array (_ BitVec 32) (_ BitVec 64))) (size!33350 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68236)

(declare-datatypes ((List!23016 0))(
  ( (Nil!23013) (Cons!23012 (h!24221 (_ BitVec 64)) (t!32350 List!23016)) )
))
(declare-fun arrayNoDuplicates!0 (array!68236 (_ BitVec 32) List!23016) Bool)

(assert (=> b!1068853 (= res!713301 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23013))))

(declare-fun b!1068854 () Bool)

(declare-fun e!609949 () Bool)

(declare-fun e!609948 () Bool)

(declare-fun mapRes!40162 () Bool)

(assert (=> b!1068854 (= e!609949 (and e!609948 mapRes!40162))))

(declare-fun condMapEmpty!40162 () Bool)

(declare-datatypes ((V!39325 0))(
  ( (V!39326 (val!12872 Int)) )
))
(declare-datatypes ((ValueCell!12118 0))(
  ( (ValueCellFull!12118 (v!15488 V!39325)) (EmptyCell!12118) )
))
(declare-datatypes ((array!68238 0))(
  ( (array!68239 (arr!32814 (Array (_ BitVec 32) ValueCell!12118)) (size!33351 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68238)

(declare-fun mapDefault!40162 () ValueCell!12118)


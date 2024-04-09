; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96304 () Bool)

(assert start!96304)

(declare-fun b_free!22921 () Bool)

(declare-fun b_next!22921 () Bool)

(assert (=> start!96304 (= b_free!22921 (not b_next!22921))))

(declare-fun tp!80613 () Bool)

(declare-fun b_and!36535 () Bool)

(assert (=> start!96304 (= tp!80613 b_and!36535)))

(declare-fun b!1093723 () Bool)

(declare-fun e!624517 () Bool)

(declare-fun e!624518 () Bool)

(declare-fun mapRes!42139 () Bool)

(assert (=> b!1093723 (= e!624517 (and e!624518 mapRes!42139))))

(declare-fun condMapEmpty!42139 () Bool)

(declare-datatypes ((V!41025 0))(
  ( (V!41026 (val!13518 Int)) )
))
(declare-datatypes ((ValueCell!12752 0))(
  ( (ValueCellFull!12752 (v!16140 V!41025)) (EmptyCell!12752) )
))
(declare-datatypes ((array!70720 0))(
  ( (array!70721 (arr!34030 (Array (_ BitVec 32) ValueCell!12752)) (size!34567 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70720)

(declare-fun mapDefault!42139 () ValueCell!12752)


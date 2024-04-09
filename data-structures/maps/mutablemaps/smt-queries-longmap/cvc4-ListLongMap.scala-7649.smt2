; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96254 () Bool)

(assert start!96254)

(declare-fun b_free!22871 () Bool)

(declare-fun b_next!22871 () Bool)

(assert (=> start!96254 (= b_free!22871 (not b_next!22871))))

(declare-fun tp!80463 () Bool)

(declare-fun b_and!36435 () Bool)

(assert (=> start!96254 (= tp!80463 b_and!36435)))

(declare-fun b!1092773 () Bool)

(declare-fun e!624065 () Bool)

(declare-fun e!624068 () Bool)

(declare-fun mapRes!42064 () Bool)

(assert (=> b!1092773 (= e!624065 (and e!624068 mapRes!42064))))

(declare-fun condMapEmpty!42064 () Bool)

(declare-datatypes ((V!40957 0))(
  ( (V!40958 (val!13493 Int)) )
))
(declare-datatypes ((ValueCell!12727 0))(
  ( (ValueCellFull!12727 (v!16115 V!40957)) (EmptyCell!12727) )
))
(declare-datatypes ((array!70622 0))(
  ( (array!70623 (arr!33981 (Array (_ BitVec 32) ValueCell!12727)) (size!34518 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70622)

(declare-fun mapDefault!42064 () ValueCell!12727)


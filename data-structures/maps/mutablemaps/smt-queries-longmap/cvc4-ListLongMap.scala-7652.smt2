; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96272 () Bool)

(assert start!96272)

(declare-fun b_free!22889 () Bool)

(declare-fun b_next!22889 () Bool)

(assert (=> start!96272 (= b_free!22889 (not b_next!22889))))

(declare-fun tp!80517 () Bool)

(declare-fun b_and!36471 () Bool)

(assert (=> start!96272 (= tp!80517 b_and!36471)))

(declare-fun b!1093115 () Bool)

(declare-fun res!729523 () Bool)

(declare-fun e!624229 () Bool)

(assert (=> b!1093115 (=> (not res!729523) (not e!624229))))

(declare-datatypes ((array!70656 0))(
  ( (array!70657 (arr!33998 (Array (_ BitVec 32) (_ BitVec 64))) (size!34535 (_ BitVec 32))) )
))
(declare-fun lt!488772 () array!70656)

(declare-datatypes ((List!23889 0))(
  ( (Nil!23886) (Cons!23885 (h!25094 (_ BitVec 64)) (t!33843 List!23889)) )
))
(declare-fun arrayNoDuplicates!0 (array!70656 (_ BitVec 32) List!23889) Bool)

(assert (=> b!1093115 (= res!729523 (arrayNoDuplicates!0 lt!488772 #b00000000000000000000000000000000 Nil!23886))))

(declare-fun mapIsEmpty!42091 () Bool)

(declare-fun mapRes!42091 () Bool)

(assert (=> mapIsEmpty!42091 mapRes!42091))

(declare-fun b!1093116 () Bool)

(declare-fun e!624228 () Bool)

(declare-fun e!624232 () Bool)

(assert (=> b!1093116 (= e!624228 (and e!624232 mapRes!42091))))

(declare-fun condMapEmpty!42091 () Bool)

(declare-datatypes ((V!40981 0))(
  ( (V!40982 (val!13502 Int)) )
))
(declare-datatypes ((ValueCell!12736 0))(
  ( (ValueCellFull!12736 (v!16124 V!40981)) (EmptyCell!12736) )
))
(declare-datatypes ((array!70658 0))(
  ( (array!70659 (arr!33999 (Array (_ BitVec 32) ValueCell!12736)) (size!34536 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70658)

(declare-fun mapDefault!42091 () ValueCell!12736)


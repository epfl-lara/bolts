; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96328 () Bool)

(assert start!96328)

(declare-fun b_free!22945 () Bool)

(declare-fun b_next!22945 () Bool)

(assert (=> start!96328 (= b_free!22945 (not b_next!22945))))

(declare-fun tp!80685 () Bool)

(declare-fun b_and!36583 () Bool)

(assert (=> start!96328 (= tp!80685 b_and!36583)))

(declare-fun b!1094179 () Bool)

(declare-fun res!730283 () Bool)

(declare-fun e!624732 () Bool)

(assert (=> b!1094179 (=> (not res!730283) (not e!624732))))

(declare-datatypes ((array!70766 0))(
  ( (array!70767 (arr!34053 (Array (_ BitVec 32) (_ BitVec 64))) (size!34590 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70766)

(declare-datatypes ((List!23930 0))(
  ( (Nil!23927) (Cons!23926 (h!25135 (_ BitVec 64)) (t!33940 List!23930)) )
))
(declare-fun arrayNoDuplicates!0 (array!70766 (_ BitVec 32) List!23930) Bool)

(assert (=> b!1094179 (= res!730283 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23927))))

(declare-fun b!1094180 () Bool)

(declare-fun res!730279 () Bool)

(assert (=> b!1094180 (=> (not res!730279) (not e!624732))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094180 (= res!730279 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34590 _keys!1070))))))

(declare-fun b!1094181 () Bool)

(declare-fun e!624733 () Bool)

(assert (=> b!1094181 (= e!624732 e!624733)))

(declare-fun res!730280 () Bool)

(assert (=> b!1094181 (=> (not res!730280) (not e!624733))))

(declare-fun lt!489540 () array!70766)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70766 (_ BitVec 32)) Bool)

(assert (=> b!1094181 (= res!730280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489540 mask!1414))))

(assert (=> b!1094181 (= lt!489540 (array!70767 (store (arr!34053 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34590 _keys!1070)))))

(declare-fun b!1094182 () Bool)

(declare-fun res!730281 () Bool)

(assert (=> b!1094182 (=> (not res!730281) (not e!624732))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41057 0))(
  ( (V!41058 (val!13530 Int)) )
))
(declare-datatypes ((ValueCell!12764 0))(
  ( (ValueCellFull!12764 (v!16152 V!41057)) (EmptyCell!12764) )
))
(declare-datatypes ((array!70768 0))(
  ( (array!70769 (arr!34054 (Array (_ BitVec 32) ValueCell!12764)) (size!34591 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70768)

(assert (=> b!1094182 (= res!730281 (and (= (size!34591 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34590 _keys!1070) (size!34591 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094183 () Bool)

(declare-fun res!730277 () Bool)

(assert (=> b!1094183 (=> (not res!730277) (not e!624732))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094183 (= res!730277 (validKeyInArray!0 k!904))))

(declare-fun b!1094184 () Bool)

(declare-fun e!624734 () Bool)

(declare-fun e!624736 () Bool)

(declare-fun mapRes!42175 () Bool)

(assert (=> b!1094184 (= e!624734 (and e!624736 mapRes!42175))))

(declare-fun condMapEmpty!42175 () Bool)

(declare-fun mapDefault!42175 () ValueCell!12764)


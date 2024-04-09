; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96356 () Bool)

(assert start!96356)

(declare-fun b!1094565 () Bool)

(declare-fun res!730529 () Bool)

(declare-fun e!624959 () Bool)

(assert (=> b!1094565 (=> (not res!730529) (not e!624959))))

(declare-datatypes ((array!70818 0))(
  ( (array!70819 (arr!34079 (Array (_ BitVec 32) (_ BitVec 64))) (size!34616 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70818)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094565 (= res!730529 (= (select (arr!34079 _keys!1070) i!650) k!904))))

(declare-fun b!1094566 () Bool)

(declare-fun res!730534 () Bool)

(assert (=> b!1094566 (=> (not res!730534) (not e!624959))))

(declare-datatypes ((List!23941 0))(
  ( (Nil!23938) (Cons!23937 (h!25146 (_ BitVec 64)) (t!33955 List!23941)) )
))
(declare-fun arrayNoDuplicates!0 (array!70818 (_ BitVec 32) List!23941) Bool)

(assert (=> b!1094566 (= res!730534 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23938))))

(declare-fun b!1094567 () Bool)

(declare-fun res!730530 () Bool)

(assert (=> b!1094567 (=> (not res!730530) (not e!624959))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41093 0))(
  ( (V!41094 (val!13544 Int)) )
))
(declare-datatypes ((ValueCell!12778 0))(
  ( (ValueCellFull!12778 (v!16166 V!41093)) (EmptyCell!12778) )
))
(declare-datatypes ((array!70820 0))(
  ( (array!70821 (arr!34080 (Array (_ BitVec 32) ValueCell!12778)) (size!34617 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70820)

(assert (=> b!1094567 (= res!730530 (and (= (size!34617 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34616 _keys!1070) (size!34617 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094568 () Bool)

(declare-fun e!624961 () Bool)

(declare-fun e!624957 () Bool)

(declare-fun mapRes!42217 () Bool)

(assert (=> b!1094568 (= e!624961 (and e!624957 mapRes!42217))))

(declare-fun condMapEmpty!42217 () Bool)

(declare-fun mapDefault!42217 () ValueCell!12778)


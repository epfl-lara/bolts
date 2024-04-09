; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96314 () Bool)

(assert start!96314)

(declare-fun b_free!22931 () Bool)

(declare-fun b_next!22931 () Bool)

(assert (=> start!96314 (= b_free!22931 (not b_next!22931))))

(declare-fun tp!80642 () Bool)

(declare-fun b_and!36555 () Bool)

(assert (=> start!96314 (= tp!80642 b_and!36555)))

(declare-fun b!1093913 () Bool)

(declare-fun e!624605 () Bool)

(declare-fun tp_is_empty!26933 () Bool)

(assert (=> b!1093913 (= e!624605 tp_is_empty!26933)))

(declare-fun b!1093914 () Bool)

(declare-fun res!730088 () Bool)

(declare-fun e!624610 () Bool)

(assert (=> b!1093914 (=> (not res!730088) (not e!624610))))

(declare-datatypes ((array!70738 0))(
  ( (array!70739 (arr!34039 (Array (_ BitVec 32) (_ BitVec 64))) (size!34576 (_ BitVec 32))) )
))
(declare-fun lt!489347 () array!70738)

(declare-datatypes ((List!23921 0))(
  ( (Nil!23918) (Cons!23917 (h!25126 (_ BitVec 64)) (t!33917 List!23921)) )
))
(declare-fun arrayNoDuplicates!0 (array!70738 (_ BitVec 32) List!23921) Bool)

(assert (=> b!1093914 (= res!730088 (arrayNoDuplicates!0 lt!489347 #b00000000000000000000000000000000 Nil!23918))))

(declare-fun b!1093916 () Bool)

(declare-fun res!730094 () Bool)

(declare-fun e!624609 () Bool)

(assert (=> b!1093916 (=> (not res!730094) (not e!624609))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093916 (= res!730094 (validKeyInArray!0 k!904))))

(declare-fun b!1093917 () Bool)

(declare-fun res!730086 () Bool)

(assert (=> b!1093917 (=> (not res!730086) (not e!624609))))

(declare-fun _keys!1070 () array!70738)

(assert (=> b!1093917 (= res!730086 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23918))))

(declare-fun mapIsEmpty!42154 () Bool)

(declare-fun mapRes!42154 () Bool)

(assert (=> mapIsEmpty!42154 mapRes!42154))

(declare-fun b!1093918 () Bool)

(declare-fun e!624607 () Bool)

(assert (=> b!1093918 (= e!624607 tp_is_empty!26933)))

(declare-fun b!1093919 () Bool)

(declare-fun res!730092 () Bool)

(assert (=> b!1093919 (=> (not res!730092) (not e!624609))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093919 (= res!730092 (= (select (arr!34039 _keys!1070) i!650) k!904))))

(declare-fun b!1093920 () Bool)

(declare-fun res!730089 () Bool)

(assert (=> b!1093920 (=> (not res!730089) (not e!624609))))

(assert (=> b!1093920 (= res!730089 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34576 _keys!1070))))))

(declare-fun b!1093921 () Bool)

(declare-fun res!730093 () Bool)

(assert (=> b!1093921 (=> (not res!730093) (not e!624609))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70738 (_ BitVec 32)) Bool)

(assert (=> b!1093921 (= res!730093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093922 () Bool)

(assert (=> b!1093922 (= e!624609 e!624610)))

(declare-fun res!730091 () Bool)

(assert (=> b!1093922 (=> (not res!730091) (not e!624610))))

(assert (=> b!1093922 (= res!730091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489347 mask!1414))))

(assert (=> b!1093922 (= lt!489347 (array!70739 (store (arr!34039 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34576 _keys!1070)))))

(declare-fun b!1093923 () Bool)

(declare-fun e!624606 () Bool)

(assert (=> b!1093923 (= e!624606 (and e!624607 mapRes!42154))))

(declare-fun condMapEmpty!42154 () Bool)

(declare-datatypes ((V!41037 0))(
  ( (V!41038 (val!13523 Int)) )
))
(declare-datatypes ((ValueCell!12757 0))(
  ( (ValueCellFull!12757 (v!16145 V!41037)) (EmptyCell!12757) )
))
(declare-datatypes ((array!70740 0))(
  ( (array!70741 (arr!34040 (Array (_ BitVec 32) ValueCell!12757)) (size!34577 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70740)

(declare-fun mapDefault!42154 () ValueCell!12757)


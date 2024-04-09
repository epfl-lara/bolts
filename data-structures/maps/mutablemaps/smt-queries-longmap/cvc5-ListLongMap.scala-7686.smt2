; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96498 () Bool)

(assert start!96498)

(declare-fun b_free!23041 () Bool)

(declare-fun b_next!23041 () Bool)

(assert (=> start!96498 (= b_free!23041 (not b_next!23041))))

(declare-fun tp!81050 () Bool)

(declare-fun b_and!36763 () Bool)

(assert (=> start!96498 (= tp!81050 b_and!36763)))

(declare-fun b!1096814 () Bool)

(declare-fun res!732135 () Bool)

(declare-fun e!626075 () Bool)

(assert (=> b!1096814 (=> (not res!732135) (not e!626075))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096814 (= res!732135 (validKeyInArray!0 k!904))))

(declare-fun b!1096815 () Bool)

(declare-fun e!626079 () Bool)

(assert (=> b!1096815 (= e!626075 e!626079)))

(declare-fun res!732133 () Bool)

(assert (=> b!1096815 (=> (not res!732133) (not e!626079))))

(declare-datatypes ((array!71042 0))(
  ( (array!71043 (arr!34189 (Array (_ BitVec 32) (_ BitVec 64))) (size!34726 (_ BitVec 32))) )
))
(declare-fun lt!490261 () array!71042)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71042 (_ BitVec 32)) Bool)

(assert (=> b!1096815 (= res!732133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490261 mask!1414))))

(declare-fun _keys!1070 () array!71042)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096815 (= lt!490261 (array!71043 (store (arr!34189 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34726 _keys!1070)))))

(declare-fun b!1096816 () Bool)

(declare-fun e!626076 () Bool)

(declare-fun e!626074 () Bool)

(declare-fun mapRes!42397 () Bool)

(assert (=> b!1096816 (= e!626076 (and e!626074 mapRes!42397))))

(declare-fun condMapEmpty!42397 () Bool)

(declare-datatypes ((V!41249 0))(
  ( (V!41250 (val!13602 Int)) )
))
(declare-datatypes ((ValueCell!12836 0))(
  ( (ValueCellFull!12836 (v!16224 V!41249)) (EmptyCell!12836) )
))
(declare-datatypes ((array!71044 0))(
  ( (array!71045 (arr!34190 (Array (_ BitVec 32) ValueCell!12836)) (size!34727 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71044)

(declare-fun mapDefault!42397 () ValueCell!12836)


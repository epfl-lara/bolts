; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96274 () Bool)

(assert start!96274)

(declare-fun b_free!22891 () Bool)

(declare-fun b_next!22891 () Bool)

(assert (=> start!96274 (= b_free!22891 (not b_next!22891))))

(declare-fun tp!80522 () Bool)

(declare-fun b_and!36475 () Bool)

(assert (=> start!96274 (= tp!80522 b_and!36475)))

(declare-fun b!1093153 () Bool)

(declare-fun e!624247 () Bool)

(declare-fun tp_is_empty!26893 () Bool)

(assert (=> b!1093153 (= e!624247 tp_is_empty!26893)))

(declare-fun mapIsEmpty!42094 () Bool)

(declare-fun mapRes!42094 () Bool)

(assert (=> mapIsEmpty!42094 mapRes!42094))

(declare-fun b!1093154 () Bool)

(declare-fun res!729554 () Bool)

(declare-fun e!624245 () Bool)

(assert (=> b!1093154 (=> (not res!729554) (not e!624245))))

(declare-datatypes ((array!70660 0))(
  ( (array!70661 (arr!34000 (Array (_ BitVec 32) (_ BitVec 64))) (size!34537 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70660)

(declare-datatypes ((List!23890 0))(
  ( (Nil!23887) (Cons!23886 (h!25095 (_ BitVec 64)) (t!33846 List!23890)) )
))
(declare-fun arrayNoDuplicates!0 (array!70660 (_ BitVec 32) List!23890) Bool)

(assert (=> b!1093154 (= res!729554 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23887))))

(declare-fun res!729547 () Bool)

(assert (=> start!96274 (=> (not res!729547) (not e!624245))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96274 (= res!729547 (validMask!0 mask!1414))))

(assert (=> start!96274 e!624245))

(assert (=> start!96274 tp!80522))

(assert (=> start!96274 true))

(assert (=> start!96274 tp_is_empty!26893))

(declare-fun array_inv!26058 (array!70660) Bool)

(assert (=> start!96274 (array_inv!26058 _keys!1070)))

(declare-datatypes ((V!40985 0))(
  ( (V!40986 (val!13503 Int)) )
))
(declare-datatypes ((ValueCell!12737 0))(
  ( (ValueCellFull!12737 (v!16125 V!40985)) (EmptyCell!12737) )
))
(declare-datatypes ((array!70662 0))(
  ( (array!70663 (arr!34001 (Array (_ BitVec 32) ValueCell!12737)) (size!34538 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70662)

(declare-fun e!624250 () Bool)

(declare-fun array_inv!26059 (array!70662) Bool)

(assert (=> start!96274 (and (array_inv!26059 _values!874) e!624250)))

(declare-fun b!1093155 () Bool)

(declare-fun res!729552 () Bool)

(assert (=> b!1093155 (=> (not res!729552) (not e!624245))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093155 (= res!729552 (validKeyInArray!0 k!904))))

(declare-fun b!1093156 () Bool)

(declare-fun e!624246 () Bool)

(assert (=> b!1093156 (= e!624246 tp_is_empty!26893)))

(declare-fun b!1093157 () Bool)

(assert (=> b!1093157 (= e!624250 (and e!624246 mapRes!42094))))

(declare-fun condMapEmpty!42094 () Bool)

(declare-fun mapDefault!42094 () ValueCell!12737)


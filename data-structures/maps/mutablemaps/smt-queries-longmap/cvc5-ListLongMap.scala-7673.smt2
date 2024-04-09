; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96420 () Bool)

(assert start!96420)

(declare-fun b_free!22963 () Bool)

(declare-fun b_next!22963 () Bool)

(assert (=> start!96420 (= b_free!22963 (not b_next!22963))))

(declare-fun tp!80817 () Bool)

(declare-fun b_and!36607 () Bool)

(assert (=> start!96420 (= tp!80817 b_and!36607)))

(declare-fun b!1095332 () Bool)

(declare-fun e!625372 () Bool)

(declare-fun tp_is_empty!27013 () Bool)

(assert (=> b!1095332 (= e!625372 tp_is_empty!27013)))

(declare-fun mapIsEmpty!42280 () Bool)

(declare-fun mapRes!42280 () Bool)

(assert (=> mapIsEmpty!42280 mapRes!42280))

(declare-fun b!1095333 () Bool)

(declare-fun res!731077 () Bool)

(declare-fun e!625377 () Bool)

(assert (=> b!1095333 (=> (not res!731077) (not e!625377))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095333 (= res!731077 (validKeyInArray!0 k!904))))

(declare-fun b!1095334 () Bool)

(declare-fun res!731084 () Bool)

(assert (=> b!1095334 (=> (not res!731084) (not e!625377))))

(declare-datatypes ((array!70894 0))(
  ( (array!70895 (arr!34115 (Array (_ BitVec 32) (_ BitVec 64))) (size!34652 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70894)

(declare-datatypes ((List!23961 0))(
  ( (Nil!23958) (Cons!23957 (h!25166 (_ BitVec 64)) (t!33977 List!23961)) )
))
(declare-fun arrayNoDuplicates!0 (array!70894 (_ BitVec 32) List!23961) Bool)

(assert (=> b!1095334 (= res!731084 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23958))))

(declare-fun b!1095335 () Bool)

(declare-fun e!625376 () Bool)

(assert (=> b!1095335 (= e!625377 e!625376)))

(declare-fun res!731078 () Bool)

(assert (=> b!1095335 (=> (not res!731078) (not e!625376))))

(declare-fun lt!489793 () array!70894)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70894 (_ BitVec 32)) Bool)

(assert (=> b!1095335 (= res!731078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489793 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095335 (= lt!489793 (array!70895 (store (arr!34115 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34652 _keys!1070)))))

(declare-fun res!731079 () Bool)

(assert (=> start!96420 (=> (not res!731079) (not e!625377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96420 (= res!731079 (validMask!0 mask!1414))))

(assert (=> start!96420 e!625377))

(assert (=> start!96420 tp!80817))

(assert (=> start!96420 true))

(assert (=> start!96420 tp_is_empty!27013))

(declare-fun array_inv!26142 (array!70894) Bool)

(assert (=> start!96420 (array_inv!26142 _keys!1070)))

(declare-datatypes ((V!41145 0))(
  ( (V!41146 (val!13563 Int)) )
))
(declare-datatypes ((ValueCell!12797 0))(
  ( (ValueCellFull!12797 (v!16185 V!41145)) (EmptyCell!12797) )
))
(declare-datatypes ((array!70896 0))(
  ( (array!70897 (arr!34116 (Array (_ BitVec 32) ValueCell!12797)) (size!34653 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70896)

(declare-fun e!625375 () Bool)

(declare-fun array_inv!26143 (array!70896) Bool)

(assert (=> start!96420 (and (array_inv!26143 _values!874) e!625375)))

(declare-fun b!1095336 () Bool)

(declare-fun res!731085 () Bool)

(assert (=> b!1095336 (=> (not res!731085) (not e!625376))))

(assert (=> b!1095336 (= res!731085 (arrayNoDuplicates!0 lt!489793 #b00000000000000000000000000000000 Nil!23958))))

(declare-fun b!1095337 () Bool)

(declare-fun res!731081 () Bool)

(assert (=> b!1095337 (=> (not res!731081) (not e!625377))))

(assert (=> b!1095337 (= res!731081 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34652 _keys!1070))))))

(declare-fun b!1095338 () Bool)

(declare-fun res!731080 () Bool)

(assert (=> b!1095338 (=> (not res!731080) (not e!625377))))

(assert (=> b!1095338 (= res!731080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42280 () Bool)

(declare-fun tp!80816 () Bool)

(assert (=> mapNonEmpty!42280 (= mapRes!42280 (and tp!80816 e!625372))))

(declare-fun mapKey!42280 () (_ BitVec 32))

(declare-fun mapValue!42280 () ValueCell!12797)

(declare-fun mapRest!42280 () (Array (_ BitVec 32) ValueCell!12797))

(assert (=> mapNonEmpty!42280 (= (arr!34116 _values!874) (store mapRest!42280 mapKey!42280 mapValue!42280))))

(declare-fun b!1095339 () Bool)

(declare-fun e!625373 () Bool)

(assert (=> b!1095339 (= e!625373 tp_is_empty!27013)))

(declare-fun b!1095340 () Bool)

(assert (=> b!1095340 (= e!625375 (and e!625373 mapRes!42280))))

(declare-fun condMapEmpty!42280 () Bool)

(declare-fun mapDefault!42280 () ValueCell!12797)


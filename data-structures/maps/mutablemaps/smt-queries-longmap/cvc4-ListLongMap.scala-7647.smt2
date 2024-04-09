; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96242 () Bool)

(assert start!96242)

(declare-fun b_free!22859 () Bool)

(declare-fun b_next!22859 () Bool)

(assert (=> start!96242 (= b_free!22859 (not b_next!22859))))

(declare-fun tp!80426 () Bool)

(declare-fun b_and!36411 () Bool)

(assert (=> start!96242 (= tp!80426 b_and!36411)))

(declare-fun b!1092545 () Bool)

(declare-fun e!623959 () Bool)

(declare-fun e!623958 () Bool)

(assert (=> b!1092545 (= e!623959 e!623958)))

(declare-fun res!729117 () Bool)

(assert (=> b!1092545 (=> (not res!729117) (not e!623958))))

(declare-datatypes ((array!70600 0))(
  ( (array!70601 (arr!33970 (Array (_ BitVec 32) (_ BitVec 64))) (size!34507 (_ BitVec 32))) )
))
(declare-fun lt!488366 () array!70600)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70600 (_ BitVec 32)) Bool)

(assert (=> b!1092545 (= res!729117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488366 mask!1414))))

(declare-fun _keys!1070 () array!70600)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092545 (= lt!488366 (array!70601 (store (arr!33970 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34507 _keys!1070)))))

(declare-fun mapNonEmpty!42046 () Bool)

(declare-fun mapRes!42046 () Bool)

(declare-fun tp!80427 () Bool)

(declare-fun e!623960 () Bool)

(assert (=> mapNonEmpty!42046 (= mapRes!42046 (and tp!80427 e!623960))))

(declare-datatypes ((V!40941 0))(
  ( (V!40942 (val!13487 Int)) )
))
(declare-datatypes ((ValueCell!12721 0))(
  ( (ValueCellFull!12721 (v!16109 V!40941)) (EmptyCell!12721) )
))
(declare-fun mapRest!42046 () (Array (_ BitVec 32) ValueCell!12721))

(declare-datatypes ((array!70602 0))(
  ( (array!70603 (arr!33971 (Array (_ BitVec 32) ValueCell!12721)) (size!34508 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70602)

(declare-fun mapKey!42046 () (_ BitVec 32))

(declare-fun mapValue!42046 () ValueCell!12721)

(assert (=> mapNonEmpty!42046 (= (arr!33971 _values!874) (store mapRest!42046 mapKey!42046 mapValue!42046))))

(declare-fun b!1092547 () Bool)

(declare-fun tp_is_empty!26861 () Bool)

(assert (=> b!1092547 (= e!623960 tp_is_empty!26861)))

(declare-fun mapIsEmpty!42046 () Bool)

(assert (=> mapIsEmpty!42046 mapRes!42046))

(declare-fun b!1092548 () Bool)

(declare-fun res!729121 () Bool)

(assert (=> b!1092548 (=> (not res!729121) (not e!623959))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1092548 (= res!729121 (= (select (arr!33970 _keys!1070) i!650) k!904))))

(declare-fun b!1092549 () Bool)

(declare-fun res!729115 () Bool)

(assert (=> b!1092549 (=> (not res!729115) (not e!623959))))

(declare-datatypes ((List!23869 0))(
  ( (Nil!23866) (Cons!23865 (h!25074 (_ BitVec 64)) (t!33793 List!23869)) )
))
(declare-fun arrayNoDuplicates!0 (array!70600 (_ BitVec 32) List!23869) Bool)

(assert (=> b!1092549 (= res!729115 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23866))))

(declare-fun b!1092550 () Bool)

(declare-fun res!729119 () Bool)

(assert (=> b!1092550 (=> (not res!729119) (not e!623959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092550 (= res!729119 (validKeyInArray!0 k!904))))

(declare-fun b!1092551 () Bool)

(declare-fun e!623962 () Bool)

(declare-fun e!623961 () Bool)

(assert (=> b!1092551 (= e!623962 (and e!623961 mapRes!42046))))

(declare-fun condMapEmpty!42046 () Bool)

(declare-fun mapDefault!42046 () ValueCell!12721)


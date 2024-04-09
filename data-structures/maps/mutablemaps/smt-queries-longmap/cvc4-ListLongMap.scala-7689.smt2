; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96520 () Bool)

(assert start!96520)

(declare-fun b_free!23063 () Bool)

(declare-fun b_next!23063 () Bool)

(assert (=> start!96520 (= b_free!23063 (not b_next!23063))))

(declare-fun tp!81116 () Bool)

(declare-fun b_and!36807 () Bool)

(assert (=> start!96520 (= tp!81116 b_and!36807)))

(declare-fun res!732430 () Bool)

(declare-fun e!626275 () Bool)

(assert (=> start!96520 (=> (not res!732430) (not e!626275))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96520 (= res!732430 (validMask!0 mask!1414))))

(assert (=> start!96520 e!626275))

(assert (=> start!96520 tp!81116))

(assert (=> start!96520 true))

(declare-fun tp_is_empty!27113 () Bool)

(assert (=> start!96520 tp_is_empty!27113))

(declare-datatypes ((array!71086 0))(
  ( (array!71087 (arr!34211 (Array (_ BitVec 32) (_ BitVec 64))) (size!34748 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71086)

(declare-fun array_inv!26212 (array!71086) Bool)

(assert (=> start!96520 (array_inv!26212 _keys!1070)))

(declare-datatypes ((V!41277 0))(
  ( (V!41278 (val!13613 Int)) )
))
(declare-datatypes ((ValueCell!12847 0))(
  ( (ValueCellFull!12847 (v!16235 V!41277)) (EmptyCell!12847) )
))
(declare-datatypes ((array!71088 0))(
  ( (array!71089 (arr!34212 (Array (_ BitVec 32) ValueCell!12847)) (size!34749 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71088)

(declare-fun e!626272 () Bool)

(declare-fun array_inv!26213 (array!71088) Bool)

(assert (=> start!96520 (and (array_inv!26213 _values!874) e!626272)))

(declare-fun b!1097232 () Bool)

(declare-fun res!732428 () Bool)

(assert (=> b!1097232 (=> (not res!732428) (not e!626275))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097232 (= res!732428 (validKeyInArray!0 k!904))))

(declare-fun b!1097233 () Bool)

(declare-fun res!732427 () Bool)

(assert (=> b!1097233 (=> (not res!732427) (not e!626275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71086 (_ BitVec 32)) Bool)

(assert (=> b!1097233 (= res!732427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097234 () Bool)

(declare-fun res!732432 () Bool)

(assert (=> b!1097234 (=> (not res!732432) (not e!626275))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1097234 (= res!732432 (and (= (size!34749 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34748 _keys!1070) (size!34749 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097235 () Bool)

(declare-fun e!626276 () Bool)

(assert (=> b!1097235 (= e!626275 e!626276)))

(declare-fun res!732429 () Bool)

(assert (=> b!1097235 (=> (not res!732429) (not e!626276))))

(declare-fun lt!490448 () array!71086)

(assert (=> b!1097235 (= res!732429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490448 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097235 (= lt!490448 (array!71087 (store (arr!34211 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34748 _keys!1070)))))

(declare-fun b!1097236 () Bool)

(declare-fun res!732433 () Bool)

(assert (=> b!1097236 (=> (not res!732433) (not e!626275))))

(assert (=> b!1097236 (= res!732433 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34748 _keys!1070))))))

(declare-fun b!1097237 () Bool)

(declare-fun e!626273 () Bool)

(assert (=> b!1097237 (= e!626273 tp_is_empty!27113)))

(declare-fun b!1097238 () Bool)

(declare-fun res!732434 () Bool)

(assert (=> b!1097238 (=> (not res!732434) (not e!626275))))

(assert (=> b!1097238 (= res!732434 (= (select (arr!34211 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!42430 () Bool)

(declare-fun mapRes!42430 () Bool)

(assert (=> mapIsEmpty!42430 mapRes!42430))

(declare-fun b!1097239 () Bool)

(declare-fun res!732431 () Bool)

(assert (=> b!1097239 (=> (not res!732431) (not e!626276))))

(declare-datatypes ((List!24030 0))(
  ( (Nil!24027) (Cons!24026 (h!25235 (_ BitVec 64)) (t!34146 List!24030)) )
))
(declare-fun arrayNoDuplicates!0 (array!71086 (_ BitVec 32) List!24030) Bool)

(assert (=> b!1097239 (= res!732431 (arrayNoDuplicates!0 lt!490448 #b00000000000000000000000000000000 Nil!24027))))

(declare-fun b!1097240 () Bool)

(declare-fun res!732435 () Bool)

(assert (=> b!1097240 (=> (not res!732435) (not e!626275))))

(assert (=> b!1097240 (= res!732435 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24027))))

(declare-fun mapNonEmpty!42430 () Bool)

(declare-fun tp!81117 () Bool)

(assert (=> mapNonEmpty!42430 (= mapRes!42430 (and tp!81117 e!626273))))

(declare-fun mapRest!42430 () (Array (_ BitVec 32) ValueCell!12847))

(declare-fun mapKey!42430 () (_ BitVec 32))

(declare-fun mapValue!42430 () ValueCell!12847)

(assert (=> mapNonEmpty!42430 (= (arr!34212 _values!874) (store mapRest!42430 mapKey!42430 mapValue!42430))))

(declare-fun b!1097241 () Bool)

(declare-fun e!626274 () Bool)

(assert (=> b!1097241 (= e!626272 (and e!626274 mapRes!42430))))

(declare-fun condMapEmpty!42430 () Bool)

(declare-fun mapDefault!42430 () ValueCell!12847)


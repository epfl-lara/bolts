; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96418 () Bool)

(assert start!96418)

(declare-fun b_free!22961 () Bool)

(declare-fun b_next!22961 () Bool)

(assert (=> start!96418 (= b_free!22961 (not b_next!22961))))

(declare-fun tp!80811 () Bool)

(declare-fun b_and!36605 () Bool)

(assert (=> start!96418 (= tp!80811 b_and!36605)))

(declare-fun b!1095296 () Bool)

(declare-fun res!731053 () Bool)

(declare-fun e!625358 () Bool)

(assert (=> b!1095296 (=> (not res!731053) (not e!625358))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70890 0))(
  ( (array!70891 (arr!34113 (Array (_ BitVec 32) (_ BitVec 64))) (size!34650 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70890)

(assert (=> b!1095296 (= res!731053 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34650 _keys!1070))))))

(declare-fun b!1095297 () Bool)

(declare-fun res!731054 () Bool)

(assert (=> b!1095297 (=> (not res!731054) (not e!625358))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41141 0))(
  ( (V!41142 (val!13562 Int)) )
))
(declare-datatypes ((ValueCell!12796 0))(
  ( (ValueCellFull!12796 (v!16184 V!41141)) (EmptyCell!12796) )
))
(declare-datatypes ((array!70892 0))(
  ( (array!70893 (arr!34114 (Array (_ BitVec 32) ValueCell!12796)) (size!34651 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70892)

(assert (=> b!1095297 (= res!731054 (and (= (size!34651 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34650 _keys!1070) (size!34651 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095299 () Bool)

(declare-fun res!731051 () Bool)

(declare-fun e!625355 () Bool)

(assert (=> b!1095299 (=> (not res!731051) (not e!625355))))

(declare-fun lt!489780 () array!70890)

(declare-datatypes ((List!23959 0))(
  ( (Nil!23956) (Cons!23955 (h!25164 (_ BitVec 64)) (t!33973 List!23959)) )
))
(declare-fun arrayNoDuplicates!0 (array!70890 (_ BitVec 32) List!23959) Bool)

(assert (=> b!1095299 (= res!731051 (arrayNoDuplicates!0 lt!489780 #b00000000000000000000000000000000 Nil!23956))))

(declare-fun mapIsEmpty!42277 () Bool)

(declare-fun mapRes!42277 () Bool)

(assert (=> mapIsEmpty!42277 mapRes!42277))

(declare-fun b!1095300 () Bool)

(declare-fun res!731058 () Bool)

(assert (=> b!1095300 (=> (not res!731058) (not e!625358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70890 (_ BitVec 32)) Bool)

(assert (=> b!1095300 (= res!731058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095301 () Bool)

(declare-fun res!731057 () Bool)

(assert (=> b!1095301 (=> (not res!731057) (not e!625358))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1095301 (= res!731057 (= (select (arr!34113 _keys!1070) i!650) k!904))))

(declare-fun b!1095302 () Bool)

(declare-fun res!731050 () Bool)

(assert (=> b!1095302 (=> (not res!731050) (not e!625358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095302 (= res!731050 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42277 () Bool)

(declare-fun tp!80810 () Bool)

(declare-fun e!625354 () Bool)

(assert (=> mapNonEmpty!42277 (= mapRes!42277 (and tp!80810 e!625354))))

(declare-fun mapRest!42277 () (Array (_ BitVec 32) ValueCell!12796))

(declare-fun mapKey!42277 () (_ BitVec 32))

(declare-fun mapValue!42277 () ValueCell!12796)

(assert (=> mapNonEmpty!42277 (= (arr!34114 _values!874) (store mapRest!42277 mapKey!42277 mapValue!42277))))

(declare-fun b!1095303 () Bool)

(assert (=> b!1095303 (= e!625355 (not (bvslt i!650 (size!34651 _values!874))))))

(declare-datatypes ((tuple2!17290 0))(
  ( (tuple2!17291 (_1!8655 (_ BitVec 64)) (_2!8655 V!41141)) )
))
(declare-datatypes ((List!23960 0))(
  ( (Nil!23957) (Cons!23956 (h!25165 tuple2!17290) (t!33974 List!23960)) )
))
(declare-datatypes ((ListLongMap!15271 0))(
  ( (ListLongMap!15272 (toList!7651 List!23960)) )
))
(declare-fun lt!489782 () ListLongMap!15271)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41141)

(declare-fun zeroValue!831 () V!41141)

(declare-fun getCurrentListMapNoExtraKeys!4138 (array!70890 array!70892 (_ BitVec 32) (_ BitVec 32) V!41141 V!41141 (_ BitVec 32) Int) ListLongMap!15271)

(assert (=> b!1095303 (= lt!489782 (getCurrentListMapNoExtraKeys!4138 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095303 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35975 0))(
  ( (Unit!35976) )
))
(declare-fun lt!489781 () Unit!35975)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70890 (_ BitVec 64) (_ BitVec 32)) Unit!35975)

(assert (=> b!1095303 (= lt!489781 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!731056 () Bool)

(assert (=> start!96418 (=> (not res!731056) (not e!625358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96418 (= res!731056 (validMask!0 mask!1414))))

(assert (=> start!96418 e!625358))

(assert (=> start!96418 tp!80811))

(assert (=> start!96418 true))

(declare-fun tp_is_empty!27011 () Bool)

(assert (=> start!96418 tp_is_empty!27011))

(declare-fun array_inv!26140 (array!70890) Bool)

(assert (=> start!96418 (array_inv!26140 _keys!1070)))

(declare-fun e!625356 () Bool)

(declare-fun array_inv!26141 (array!70892) Bool)

(assert (=> start!96418 (and (array_inv!26141 _values!874) e!625356)))

(declare-fun b!1095298 () Bool)

(assert (=> b!1095298 (= e!625358 e!625355)))

(declare-fun res!731052 () Bool)

(assert (=> b!1095298 (=> (not res!731052) (not e!625355))))

(assert (=> b!1095298 (= res!731052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489780 mask!1414))))

(assert (=> b!1095298 (= lt!489780 (array!70891 (store (arr!34113 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34650 _keys!1070)))))

(declare-fun b!1095304 () Bool)

(declare-fun res!731055 () Bool)

(assert (=> b!1095304 (=> (not res!731055) (not e!625358))))

(assert (=> b!1095304 (= res!731055 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23956))))

(declare-fun b!1095305 () Bool)

(assert (=> b!1095305 (= e!625354 tp_is_empty!27011)))

(declare-fun b!1095306 () Bool)

(declare-fun e!625357 () Bool)

(assert (=> b!1095306 (= e!625356 (and e!625357 mapRes!42277))))

(declare-fun condMapEmpty!42277 () Bool)

(declare-fun mapDefault!42277 () ValueCell!12796)


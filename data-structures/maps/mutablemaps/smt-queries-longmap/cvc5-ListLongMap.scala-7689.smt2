; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96516 () Bool)

(assert start!96516)

(declare-fun b_free!23059 () Bool)

(declare-fun b_next!23059 () Bool)

(assert (=> start!96516 (= b_free!23059 (not b_next!23059))))

(declare-fun tp!81105 () Bool)

(declare-fun b_and!36799 () Bool)

(assert (=> start!96516 (= tp!81105 b_and!36799)))

(declare-fun b!1097156 () Bool)

(declare-fun e!626236 () Bool)

(declare-fun tp_is_empty!27109 () Bool)

(assert (=> b!1097156 (= e!626236 tp_is_empty!27109)))

(declare-fun b!1097157 () Bool)

(declare-fun res!732376 () Bool)

(declare-fun e!626238 () Bool)

(assert (=> b!1097157 (=> (not res!732376) (not e!626238))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71078 0))(
  ( (array!71079 (arr!34207 (Array (_ BitVec 32) (_ BitVec 64))) (size!34744 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71078)

(assert (=> b!1097157 (= res!732376 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34744 _keys!1070))))))

(declare-fun b!1097158 () Bool)

(declare-fun res!732379 () Bool)

(assert (=> b!1097158 (=> (not res!732379) (not e!626238))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097158 (= res!732379 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42424 () Bool)

(declare-fun mapRes!42424 () Bool)

(assert (=> mapIsEmpty!42424 mapRes!42424))

(declare-fun b!1097159 () Bool)

(declare-fun res!732380 () Bool)

(assert (=> b!1097159 (=> (not res!732380) (not e!626238))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71078 (_ BitVec 32)) Bool)

(assert (=> b!1097159 (= res!732380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097160 () Bool)

(declare-fun e!626237 () Bool)

(declare-datatypes ((V!41273 0))(
  ( (V!41274 (val!13611 Int)) )
))
(declare-datatypes ((ValueCell!12845 0))(
  ( (ValueCellFull!12845 (v!16233 V!41273)) (EmptyCell!12845) )
))
(declare-datatypes ((array!71080 0))(
  ( (array!71081 (arr!34208 (Array (_ BitVec 32) ValueCell!12845)) (size!34745 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71080)

(assert (=> b!1097160 (= e!626237 (not (bvslt i!650 (size!34745 _values!874))))))

(declare-datatypes ((tuple2!17348 0))(
  ( (tuple2!17349 (_1!8684 (_ BitVec 64)) (_2!8684 V!41273)) )
))
(declare-datatypes ((List!24026 0))(
  ( (Nil!24023) (Cons!24022 (h!25231 tuple2!17348) (t!34138 List!24026)) )
))
(declare-datatypes ((ListLongMap!15329 0))(
  ( (ListLongMap!15330 (toList!7680 List!24026)) )
))
(declare-fun lt!490411 () ListLongMap!15329)

(declare-fun lt!490412 () ListLongMap!15329)

(assert (=> b!1097160 (and (= lt!490411 lt!490412) (= lt!490412 lt!490411))))

(declare-fun lt!490407 () ListLongMap!15329)

(declare-fun -!927 (ListLongMap!15329 (_ BitVec 64)) ListLongMap!15329)

(assert (=> b!1097160 (= lt!490412 (-!927 lt!490407 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41273)

(declare-datatypes ((Unit!36033 0))(
  ( (Unit!36034) )
))
(declare-fun lt!490410 () Unit!36033)

(declare-fun minValue!831 () V!41273)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!192 (array!71078 array!71080 (_ BitVec 32) (_ BitVec 32) V!41273 V!41273 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36033)

(assert (=> b!1097160 (= lt!490410 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!192 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490408 () array!71078)

(declare-fun getCurrentListMapNoExtraKeys!4167 (array!71078 array!71080 (_ BitVec 32) (_ BitVec 32) V!41273 V!41273 (_ BitVec 32) Int) ListLongMap!15329)

(declare-fun dynLambda!2298 (Int (_ BitVec 64)) V!41273)

(assert (=> b!1097160 (= lt!490411 (getCurrentListMapNoExtraKeys!4167 lt!490408 (array!71081 (store (arr!34208 _values!874) i!650 (ValueCellFull!12845 (dynLambda!2298 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34745 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1097160 (= lt!490407 (getCurrentListMapNoExtraKeys!4167 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097160 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!490409 () Unit!36033)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71078 (_ BitVec 64) (_ BitVec 32)) Unit!36033)

(assert (=> b!1097160 (= lt!490409 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1097161 () Bool)

(declare-fun res!732375 () Bool)

(assert (=> b!1097161 (=> (not res!732375) (not e!626238))))

(assert (=> b!1097161 (= res!732375 (= (select (arr!34207 _keys!1070) i!650) k!904))))

(declare-fun b!1097162 () Bool)

(declare-fun res!732377 () Bool)

(assert (=> b!1097162 (=> (not res!732377) (not e!626237))))

(declare-datatypes ((List!24027 0))(
  ( (Nil!24024) (Cons!24023 (h!25232 (_ BitVec 64)) (t!34139 List!24027)) )
))
(declare-fun arrayNoDuplicates!0 (array!71078 (_ BitVec 32) List!24027) Bool)

(assert (=> b!1097162 (= res!732377 (arrayNoDuplicates!0 lt!490408 #b00000000000000000000000000000000 Nil!24024))))

(declare-fun b!1097163 () Bool)

(declare-fun res!732381 () Bool)

(assert (=> b!1097163 (=> (not res!732381) (not e!626238))))

(assert (=> b!1097163 (= res!732381 (and (= (size!34745 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34744 _keys!1070) (size!34745 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!732374 () Bool)

(assert (=> start!96516 (=> (not res!732374) (not e!626238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96516 (= res!732374 (validMask!0 mask!1414))))

(assert (=> start!96516 e!626238))

(assert (=> start!96516 tp!81105))

(assert (=> start!96516 true))

(assert (=> start!96516 tp_is_empty!27109))

(declare-fun array_inv!26208 (array!71078) Bool)

(assert (=> start!96516 (array_inv!26208 _keys!1070)))

(declare-fun e!626239 () Bool)

(declare-fun array_inv!26209 (array!71080) Bool)

(assert (=> start!96516 (and (array_inv!26209 _values!874) e!626239)))

(declare-fun b!1097164 () Bool)

(declare-fun res!732373 () Bool)

(assert (=> b!1097164 (=> (not res!732373) (not e!626238))))

(assert (=> b!1097164 (= res!732373 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24024))))

(declare-fun b!1097165 () Bool)

(declare-fun e!626241 () Bool)

(assert (=> b!1097165 (= e!626241 tp_is_empty!27109)))

(declare-fun mapNonEmpty!42424 () Bool)

(declare-fun tp!81104 () Bool)

(assert (=> mapNonEmpty!42424 (= mapRes!42424 (and tp!81104 e!626241))))

(declare-fun mapRest!42424 () (Array (_ BitVec 32) ValueCell!12845))

(declare-fun mapKey!42424 () (_ BitVec 32))

(declare-fun mapValue!42424 () ValueCell!12845)

(assert (=> mapNonEmpty!42424 (= (arr!34208 _values!874) (store mapRest!42424 mapKey!42424 mapValue!42424))))

(declare-fun b!1097166 () Bool)

(assert (=> b!1097166 (= e!626238 e!626237)))

(declare-fun res!732378 () Bool)

(assert (=> b!1097166 (=> (not res!732378) (not e!626237))))

(assert (=> b!1097166 (= res!732378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490408 mask!1414))))

(assert (=> b!1097166 (= lt!490408 (array!71079 (store (arr!34207 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34744 _keys!1070)))))

(declare-fun b!1097167 () Bool)

(assert (=> b!1097167 (= e!626239 (and e!626236 mapRes!42424))))

(declare-fun condMapEmpty!42424 () Bool)

(declare-fun mapDefault!42424 () ValueCell!12845)


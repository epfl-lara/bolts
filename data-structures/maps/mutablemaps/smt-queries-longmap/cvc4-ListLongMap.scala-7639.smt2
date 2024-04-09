; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96194 () Bool)

(assert start!96194)

(declare-fun b_free!22811 () Bool)

(declare-fun b_next!22811 () Bool)

(assert (=> start!96194 (= b_free!22811 (not b_next!22811))))

(declare-fun tp!80283 () Bool)

(declare-fun b_and!36315 () Bool)

(assert (=> start!96194 (= tp!80283 b_and!36315)))

(declare-fun b!1091541 () Bool)

(declare-fun e!623436 () Bool)

(declare-fun e!623437 () Bool)

(assert (=> b!1091541 (= e!623436 (not e!623437))))

(declare-fun res!728375 () Bool)

(assert (=> b!1091541 (=> res!728375 e!623437)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091541 (= res!728375 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40877 0))(
  ( (V!40878 (val!13463 Int)) )
))
(declare-fun minValue!831 () V!40877)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17196 0))(
  ( (tuple2!17197 (_1!8608 (_ BitVec 64)) (_2!8608 V!40877)) )
))
(declare-datatypes ((List!23836 0))(
  ( (Nil!23833) (Cons!23832 (h!25041 tuple2!17196) (t!33712 List!23836)) )
))
(declare-datatypes ((ListLongMap!15177 0))(
  ( (ListLongMap!15178 (toList!7604 List!23836)) )
))
(declare-fun lt!487532 () ListLongMap!15177)

(declare-fun zeroValue!831 () V!40877)

(declare-datatypes ((array!70510 0))(
  ( (array!70511 (arr!33925 (Array (_ BitVec 32) (_ BitVec 64))) (size!34462 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70510)

(declare-datatypes ((ValueCell!12697 0))(
  ( (ValueCellFull!12697 (v!16085 V!40877)) (EmptyCell!12697) )
))
(declare-datatypes ((array!70512 0))(
  ( (array!70513 (arr!33926 (Array (_ BitVec 32) ValueCell!12697)) (size!34463 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70512)

(declare-fun getCurrentListMap!4340 (array!70510 array!70512 (_ BitVec 32) (_ BitVec 32) V!40877 V!40877 (_ BitVec 32) Int) ListLongMap!15177)

(assert (=> b!1091541 (= lt!487532 (getCurrentListMap!4340 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487541 () array!70512)

(declare-fun lt!487542 () array!70510)

(declare-fun lt!487535 () ListLongMap!15177)

(assert (=> b!1091541 (= lt!487535 (getCurrentListMap!4340 lt!487542 lt!487541 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487534 () ListLongMap!15177)

(declare-fun lt!487538 () ListLongMap!15177)

(assert (=> b!1091541 (and (= lt!487534 lt!487538) (= lt!487538 lt!487534))))

(declare-fun lt!487540 () ListLongMap!15177)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!881 (ListLongMap!15177 (_ BitVec 64)) ListLongMap!15177)

(assert (=> b!1091541 (= lt!487538 (-!881 lt!487540 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35877 0))(
  ( (Unit!35878) )
))
(declare-fun lt!487533 () Unit!35877)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!146 (array!70510 array!70512 (_ BitVec 32) (_ BitVec 32) V!40877 V!40877 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35877)

(assert (=> b!1091541 (= lt!487533 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!146 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4092 (array!70510 array!70512 (_ BitVec 32) (_ BitVec 32) V!40877 V!40877 (_ BitVec 32) Int) ListLongMap!15177)

(assert (=> b!1091541 (= lt!487534 (getCurrentListMapNoExtraKeys!4092 lt!487542 lt!487541 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2228 (Int (_ BitVec 64)) V!40877)

(assert (=> b!1091541 (= lt!487541 (array!70513 (store (arr!33926 _values!874) i!650 (ValueCellFull!12697 (dynLambda!2228 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34463 _values!874)))))

(assert (=> b!1091541 (= lt!487540 (getCurrentListMapNoExtraKeys!4092 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091541 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487536 () Unit!35877)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70510 (_ BitVec 64) (_ BitVec 32)) Unit!35877)

(assert (=> b!1091541 (= lt!487536 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1091542 () Bool)

(declare-fun res!728383 () Bool)

(declare-fun e!623440 () Bool)

(assert (=> b!1091542 (=> (not res!728383) (not e!623440))))

(assert (=> b!1091542 (= res!728383 (and (= (size!34463 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34462 _keys!1070) (size!34463 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091543 () Bool)

(declare-fun res!728382 () Bool)

(assert (=> b!1091543 (=> (not res!728382) (not e!623436))))

(declare-datatypes ((List!23837 0))(
  ( (Nil!23834) (Cons!23833 (h!25042 (_ BitVec 64)) (t!33713 List!23837)) )
))
(declare-fun arrayNoDuplicates!0 (array!70510 (_ BitVec 32) List!23837) Bool)

(assert (=> b!1091543 (= res!728382 (arrayNoDuplicates!0 lt!487542 #b00000000000000000000000000000000 Nil!23834))))

(declare-fun res!728380 () Bool)

(assert (=> start!96194 (=> (not res!728380) (not e!623440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96194 (= res!728380 (validMask!0 mask!1414))))

(assert (=> start!96194 e!623440))

(assert (=> start!96194 tp!80283))

(assert (=> start!96194 true))

(declare-fun tp_is_empty!26813 () Bool)

(assert (=> start!96194 tp_is_empty!26813))

(declare-fun array_inv!26014 (array!70510) Bool)

(assert (=> start!96194 (array_inv!26014 _keys!1070)))

(declare-fun e!623434 () Bool)

(declare-fun array_inv!26015 (array!70512) Bool)

(assert (=> start!96194 (and (array_inv!26015 _values!874) e!623434)))

(declare-fun b!1091544 () Bool)

(declare-fun e!623438 () Bool)

(assert (=> b!1091544 (= e!623438 true)))

(declare-fun lt!487537 () ListLongMap!15177)

(declare-fun lt!487544 () ListLongMap!15177)

(assert (=> b!1091544 (= (-!881 lt!487537 k!904) lt!487544)))

(declare-fun lt!487539 () Unit!35877)

(declare-fun addRemoveCommutativeForDiffKeys!109 (ListLongMap!15177 (_ BitVec 64) V!40877 (_ BitVec 64)) Unit!35877)

(assert (=> b!1091544 (= lt!487539 (addRemoveCommutativeForDiffKeys!109 lt!487540 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1091545 () Bool)

(declare-fun e!623435 () Bool)

(assert (=> b!1091545 (= e!623435 tp_is_empty!26813)))

(declare-fun b!1091546 () Bool)

(declare-fun e!623433 () Bool)

(declare-fun mapRes!41974 () Bool)

(assert (=> b!1091546 (= e!623434 (and e!623433 mapRes!41974))))

(declare-fun condMapEmpty!41974 () Bool)

(declare-fun mapDefault!41974 () ValueCell!12697)


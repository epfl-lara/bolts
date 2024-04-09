; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96904 () Bool)

(assert start!96904)

(declare-fun b_free!23185 () Bool)

(declare-fun b_next!23185 () Bool)

(assert (=> start!96904 (= b_free!23185 (not b_next!23185))))

(declare-fun tp!81513 () Bool)

(declare-fun b_and!37191 () Bool)

(assert (=> start!96904 (= tp!81513 b_and!37191)))

(declare-fun res!735322 () Bool)

(declare-fun e!628985 () Bool)

(assert (=> start!96904 (=> (not res!735322) (not e!628985))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96904 (= res!735322 (validMask!0 mask!1414))))

(assert (=> start!96904 e!628985))

(assert (=> start!96904 tp!81513))

(assert (=> start!96904 true))

(declare-fun tp_is_empty!27235 () Bool)

(assert (=> start!96904 tp_is_empty!27235))

(declare-datatypes ((array!71344 0))(
  ( (array!71345 (arr!34330 (Array (_ BitVec 32) (_ BitVec 64))) (size!34867 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71344)

(declare-fun array_inv!26298 (array!71344) Bool)

(assert (=> start!96904 (array_inv!26298 _keys!1070)))

(declare-datatypes ((V!41441 0))(
  ( (V!41442 (val!13674 Int)) )
))
(declare-datatypes ((ValueCell!12908 0))(
  ( (ValueCellFull!12908 (v!16306 V!41441)) (EmptyCell!12908) )
))
(declare-datatypes ((array!71346 0))(
  ( (array!71347 (arr!34331 (Array (_ BitVec 32) ValueCell!12908)) (size!34868 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71346)

(declare-fun e!628989 () Bool)

(declare-fun array_inv!26299 (array!71346) Bool)

(assert (=> start!96904 (and (array_inv!26299 _values!874) e!628989)))

(declare-fun b!1101890 () Bool)

(declare-fun res!735320 () Bool)

(assert (=> b!1101890 (=> (not res!735320) (not e!628985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71344 (_ BitVec 32)) Bool)

(assert (=> b!1101890 (= res!735320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101891 () Bool)

(declare-fun res!735316 () Bool)

(declare-fun e!628986 () Bool)

(assert (=> b!1101891 (=> (not res!735316) (not e!628986))))

(declare-fun lt!494194 () array!71344)

(declare-datatypes ((List!24129 0))(
  ( (Nil!24126) (Cons!24125 (h!25334 (_ BitVec 64)) (t!34367 List!24129)) )
))
(declare-fun arrayNoDuplicates!0 (array!71344 (_ BitVec 32) List!24129) Bool)

(assert (=> b!1101891 (= res!735316 (arrayNoDuplicates!0 lt!494194 #b00000000000000000000000000000000 Nil!24126))))

(declare-fun b!1101892 () Bool)

(declare-fun e!628988 () Bool)

(assert (=> b!1101892 (= e!628988 tp_is_empty!27235)))

(declare-fun b!1101893 () Bool)

(assert (=> b!1101893 (= e!628985 e!628986)))

(declare-fun res!735323 () Bool)

(assert (=> b!1101893 (=> (not res!735323) (not e!628986))))

(assert (=> b!1101893 (= res!735323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494194 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101893 (= lt!494194 (array!71345 (store (arr!34330 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34867 _keys!1070)))))

(declare-fun b!1101894 () Bool)

(declare-fun res!735317 () Bool)

(assert (=> b!1101894 (=> (not res!735317) (not e!628985))))

(assert (=> b!1101894 (= res!735317 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24126))))

(declare-fun b!1101895 () Bool)

(declare-fun res!735324 () Bool)

(assert (=> b!1101895 (=> (not res!735324) (not e!628985))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101895 (= res!735324 (and (= (size!34868 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34867 _keys!1070) (size!34868 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101896 () Bool)

(declare-fun res!735321 () Bool)

(assert (=> b!1101896 (=> (not res!735321) (not e!628985))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101896 (= res!735321 (validKeyInArray!0 k!904))))

(declare-fun b!1101897 () Bool)

(declare-fun e!628987 () Bool)

(assert (=> b!1101897 (= e!628987 tp_is_empty!27235)))

(declare-fun b!1101898 () Bool)

(declare-fun e!628983 () Bool)

(assert (=> b!1101898 (= e!628983 (bvslt i!650 (size!34868 _values!874)))))

(declare-datatypes ((tuple2!17458 0))(
  ( (tuple2!17459 (_1!8739 (_ BitVec 64)) (_2!8739 V!41441)) )
))
(declare-datatypes ((List!24130 0))(
  ( (Nil!24127) (Cons!24126 (h!25335 tuple2!17458) (t!34368 List!24130)) )
))
(declare-datatypes ((ListLongMap!15439 0))(
  ( (ListLongMap!15440 (toList!7735 List!24130)) )
))
(declare-fun lt!494196 () ListLongMap!15439)

(declare-fun lt!494186 () ListLongMap!15439)

(declare-fun -!972 (ListLongMap!15439 (_ BitVec 64)) ListLongMap!15439)

(assert (=> b!1101898 (= (-!972 lt!494196 k!904) lt!494186)))

(declare-fun minValue!831 () V!41441)

(declare-datatypes ((Unit!36143 0))(
  ( (Unit!36144) )
))
(declare-fun lt!494188 () Unit!36143)

(declare-fun lt!494195 () ListLongMap!15439)

(declare-fun addRemoveCommutativeForDiffKeys!139 (ListLongMap!15439 (_ BitVec 64) V!41441 (_ BitVec 64)) Unit!36143)

(assert (=> b!1101898 (= lt!494188 (addRemoveCommutativeForDiffKeys!139 lt!494195 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1101899 () Bool)

(declare-fun res!735318 () Bool)

(assert (=> b!1101899 (=> (not res!735318) (not e!628985))))

(assert (=> b!1101899 (= res!735318 (= (select (arr!34330 _keys!1070) i!650) k!904))))

(declare-fun b!1101900 () Bool)

(declare-fun res!735319 () Bool)

(assert (=> b!1101900 (=> (not res!735319) (not e!628985))))

(assert (=> b!1101900 (= res!735319 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34867 _keys!1070))))))

(declare-fun b!1101901 () Bool)

(declare-fun e!628982 () Bool)

(assert (=> b!1101901 (= e!628986 (not e!628982))))

(declare-fun res!735314 () Bool)

(assert (=> b!1101901 (=> res!735314 e!628982)))

(assert (=> b!1101901 (= res!735314 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!494197 () ListLongMap!15439)

(declare-fun zeroValue!831 () V!41441)

(declare-fun getCurrentListMap!4419 (array!71344 array!71346 (_ BitVec 32) (_ BitVec 32) V!41441 V!41441 (_ BitVec 32) Int) ListLongMap!15439)

(assert (=> b!1101901 (= lt!494197 (getCurrentListMap!4419 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494187 () array!71346)

(declare-fun lt!494189 () ListLongMap!15439)

(assert (=> b!1101901 (= lt!494189 (getCurrentListMap!4419 lt!494194 lt!494187 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494191 () ListLongMap!15439)

(declare-fun lt!494198 () ListLongMap!15439)

(assert (=> b!1101901 (and (= lt!494191 lt!494198) (= lt!494198 lt!494191))))

(assert (=> b!1101901 (= lt!494198 (-!972 lt!494195 k!904))))

(declare-fun lt!494193 () Unit!36143)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!231 (array!71344 array!71346 (_ BitVec 32) (_ BitVec 32) V!41441 V!41441 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36143)

(assert (=> b!1101901 (= lt!494193 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!231 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4206 (array!71344 array!71346 (_ BitVec 32) (_ BitVec 32) V!41441 V!41441 (_ BitVec 32) Int) ListLongMap!15439)

(assert (=> b!1101901 (= lt!494191 (getCurrentListMapNoExtraKeys!4206 lt!494194 lt!494187 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2337 (Int (_ BitVec 64)) V!41441)

(assert (=> b!1101901 (= lt!494187 (array!71347 (store (arr!34331 _values!874) i!650 (ValueCellFull!12908 (dynLambda!2337 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34868 _values!874)))))

(assert (=> b!1101901 (= lt!494195 (getCurrentListMapNoExtraKeys!4206 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101901 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494192 () Unit!36143)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71344 (_ BitVec 64) (_ BitVec 32)) Unit!36143)

(assert (=> b!1101901 (= lt!494192 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1101902 () Bool)

(declare-fun mapRes!42643 () Bool)

(assert (=> b!1101902 (= e!628989 (and e!628988 mapRes!42643))))

(declare-fun condMapEmpty!42643 () Bool)

(declare-fun mapDefault!42643 () ValueCell!12908)


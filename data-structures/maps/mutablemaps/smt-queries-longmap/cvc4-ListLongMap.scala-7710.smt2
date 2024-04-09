; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96908 () Bool)

(assert start!96908)

(declare-fun b_free!23189 () Bool)

(declare-fun b_next!23189 () Bool)

(assert (=> start!96908 (= b_free!23189 (not b_next!23189))))

(declare-fun tp!81524 () Bool)

(declare-fun b_and!37199 () Bool)

(assert (=> start!96908 (= tp!81524 b_and!37199)))

(declare-fun b!1101978 () Bool)

(declare-fun e!629037 () Bool)

(declare-fun tp_is_empty!27239 () Bool)

(assert (=> b!1101978 (= e!629037 tp_is_empty!27239)))

(declare-fun b!1101979 () Bool)

(declare-fun res!735383 () Bool)

(declare-fun e!629034 () Bool)

(assert (=> b!1101979 (=> (not res!735383) (not e!629034))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101979 (= res!735383 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42649 () Bool)

(declare-fun mapRes!42649 () Bool)

(assert (=> mapIsEmpty!42649 mapRes!42649))

(declare-fun b!1101980 () Bool)

(declare-fun res!735389 () Bool)

(assert (=> b!1101980 (=> (not res!735389) (not e!629034))))

(declare-datatypes ((array!71352 0))(
  ( (array!71353 (arr!34334 (Array (_ BitVec 32) (_ BitVec 64))) (size!34871 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71352)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71352 (_ BitVec 32)) Bool)

(assert (=> b!1101980 (= res!735389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101981 () Bool)

(declare-fun res!735387 () Bool)

(assert (=> b!1101981 (=> (not res!735387) (not e!629034))))

(declare-datatypes ((List!24133 0))(
  ( (Nil!24130) (Cons!24129 (h!25338 (_ BitVec 64)) (t!34375 List!24133)) )
))
(declare-fun arrayNoDuplicates!0 (array!71352 (_ BitVec 32) List!24133) Bool)

(assert (=> b!1101981 (= res!735387 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24130))))

(declare-fun res!735385 () Bool)

(assert (=> start!96908 (=> (not res!735385) (not e!629034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96908 (= res!735385 (validMask!0 mask!1414))))

(assert (=> start!96908 e!629034))

(assert (=> start!96908 tp!81524))

(assert (=> start!96908 true))

(assert (=> start!96908 tp_is_empty!27239))

(declare-fun array_inv!26302 (array!71352) Bool)

(assert (=> start!96908 (array_inv!26302 _keys!1070)))

(declare-datatypes ((V!41445 0))(
  ( (V!41446 (val!13676 Int)) )
))
(declare-datatypes ((ValueCell!12910 0))(
  ( (ValueCellFull!12910 (v!16308 V!41445)) (EmptyCell!12910) )
))
(declare-datatypes ((array!71354 0))(
  ( (array!71355 (arr!34335 (Array (_ BitVec 32) ValueCell!12910)) (size!34872 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71354)

(declare-fun e!629032 () Bool)

(declare-fun array_inv!26303 (array!71354) Bool)

(assert (=> start!96908 (and (array_inv!26303 _values!874) e!629032)))

(declare-fun b!1101982 () Bool)

(declare-fun e!629035 () Bool)

(assert (=> b!1101982 (= e!629034 e!629035)))

(declare-fun res!735384 () Bool)

(assert (=> b!1101982 (=> (not res!735384) (not e!629035))))

(declare-fun lt!494272 () array!71352)

(assert (=> b!1101982 (= res!735384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494272 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101982 (= lt!494272 (array!71353 (store (arr!34334 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34871 _keys!1070)))))

(declare-fun b!1101983 () Bool)

(declare-fun e!629033 () Bool)

(assert (=> b!1101983 (= e!629035 (not e!629033))))

(declare-fun res!735388 () Bool)

(assert (=> b!1101983 (=> res!735388 e!629033)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101983 (= res!735388 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17462 0))(
  ( (tuple2!17463 (_1!8741 (_ BitVec 64)) (_2!8741 V!41445)) )
))
(declare-datatypes ((List!24134 0))(
  ( (Nil!24131) (Cons!24130 (h!25339 tuple2!17462) (t!34376 List!24134)) )
))
(declare-datatypes ((ListLongMap!15443 0))(
  ( (ListLongMap!15444 (toList!7737 List!24134)) )
))
(declare-fun lt!494276 () ListLongMap!15443)

(declare-fun minValue!831 () V!41445)

(declare-fun zeroValue!831 () V!41445)

(declare-fun getCurrentListMap!4421 (array!71352 array!71354 (_ BitVec 32) (_ BitVec 32) V!41445 V!41445 (_ BitVec 32) Int) ListLongMap!15443)

(assert (=> b!1101983 (= lt!494276 (getCurrentListMap!4421 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494268 () ListLongMap!15443)

(declare-fun lt!494264 () array!71354)

(assert (=> b!1101983 (= lt!494268 (getCurrentListMap!4421 lt!494272 lt!494264 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494269 () ListLongMap!15443)

(declare-fun lt!494267 () ListLongMap!15443)

(assert (=> b!1101983 (and (= lt!494269 lt!494267) (= lt!494267 lt!494269))))

(declare-fun lt!494275 () ListLongMap!15443)

(declare-fun -!974 (ListLongMap!15443 (_ BitVec 64)) ListLongMap!15443)

(assert (=> b!1101983 (= lt!494267 (-!974 lt!494275 k!904))))

(declare-datatypes ((Unit!36147 0))(
  ( (Unit!36148) )
))
(declare-fun lt!494266 () Unit!36147)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!233 (array!71352 array!71354 (_ BitVec 32) (_ BitVec 32) V!41445 V!41445 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36147)

(assert (=> b!1101983 (= lt!494266 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!233 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4208 (array!71352 array!71354 (_ BitVec 32) (_ BitVec 32) V!41445 V!41445 (_ BitVec 32) Int) ListLongMap!15443)

(assert (=> b!1101983 (= lt!494269 (getCurrentListMapNoExtraKeys!4208 lt!494272 lt!494264 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2339 (Int (_ BitVec 64)) V!41445)

(assert (=> b!1101983 (= lt!494264 (array!71355 (store (arr!34335 _values!874) i!650 (ValueCellFull!12910 (dynLambda!2339 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34872 _values!874)))))

(assert (=> b!1101983 (= lt!494275 (getCurrentListMapNoExtraKeys!4208 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101983 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494274 () Unit!36147)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71352 (_ BitVec 64) (_ BitVec 32)) Unit!36147)

(assert (=> b!1101983 (= lt!494274 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1101984 () Bool)

(declare-fun res!735380 () Bool)

(assert (=> b!1101984 (=> (not res!735380) (not e!629034))))

(assert (=> b!1101984 (= res!735380 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34871 _keys!1070))))))

(declare-fun mapNonEmpty!42649 () Bool)

(declare-fun tp!81525 () Bool)

(assert (=> mapNonEmpty!42649 (= mapRes!42649 (and tp!81525 e!629037))))

(declare-fun mapKey!42649 () (_ BitVec 32))

(declare-fun mapRest!42649 () (Array (_ BitVec 32) ValueCell!12910))

(declare-fun mapValue!42649 () ValueCell!12910)

(assert (=> mapNonEmpty!42649 (= (arr!34335 _values!874) (store mapRest!42649 mapKey!42649 mapValue!42649))))

(declare-fun b!1101985 () Bool)

(declare-fun e!629036 () Bool)

(assert (=> b!1101985 (= e!629036 tp_is_empty!27239)))

(declare-fun b!1101986 () Bool)

(declare-fun res!735386 () Bool)

(assert (=> b!1101986 (=> (not res!735386) (not e!629034))))

(assert (=> b!1101986 (= res!735386 (and (= (size!34872 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34871 _keys!1070) (size!34872 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101987 () Bool)

(declare-fun e!629030 () Bool)

(assert (=> b!1101987 (= e!629030 (bvslt i!650 (size!34872 _values!874)))))

(declare-fun lt!494270 () ListLongMap!15443)

(declare-fun lt!494265 () ListLongMap!15443)

(assert (=> b!1101987 (= (-!974 lt!494270 k!904) lt!494265)))

(declare-fun lt!494273 () Unit!36147)

(declare-fun addRemoveCommutativeForDiffKeys!141 (ListLongMap!15443 (_ BitVec 64) V!41445 (_ BitVec 64)) Unit!36147)

(assert (=> b!1101987 (= lt!494273 (addRemoveCommutativeForDiffKeys!141 lt!494275 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1101988 () Bool)

(assert (=> b!1101988 (= e!629033 e!629030)))

(declare-fun res!735382 () Bool)

(assert (=> b!1101988 (=> res!735382 e!629030)))

(assert (=> b!1101988 (= res!735382 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(assert (=> b!1101988 (= lt!494276 lt!494270)))

(declare-fun lt!494271 () tuple2!17462)

(declare-fun +!3367 (ListLongMap!15443 tuple2!17462) ListLongMap!15443)

(assert (=> b!1101988 (= lt!494270 (+!3367 lt!494275 lt!494271))))

(assert (=> b!1101988 (= lt!494268 lt!494265)))

(assert (=> b!1101988 (= lt!494265 (+!3367 lt!494267 lt!494271))))

(assert (=> b!1101988 (= lt!494268 (+!3367 lt!494269 lt!494271))))

(assert (=> b!1101988 (= lt!494271 (tuple2!17463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101989 () Bool)

(declare-fun res!735381 () Bool)

(assert (=> b!1101989 (=> (not res!735381) (not e!629035))))

(assert (=> b!1101989 (= res!735381 (arrayNoDuplicates!0 lt!494272 #b00000000000000000000000000000000 Nil!24130))))

(declare-fun b!1101990 () Bool)

(declare-fun res!735390 () Bool)

(assert (=> b!1101990 (=> (not res!735390) (not e!629034))))

(assert (=> b!1101990 (= res!735390 (= (select (arr!34334 _keys!1070) i!650) k!904))))

(declare-fun b!1101991 () Bool)

(assert (=> b!1101991 (= e!629032 (and e!629036 mapRes!42649))))

(declare-fun condMapEmpty!42649 () Bool)

(declare-fun mapDefault!42649 () ValueCell!12910)


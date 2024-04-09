; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96788 () Bool)

(assert start!96788)

(declare-fun b_free!23147 () Bool)

(declare-fun b_next!23147 () Bool)

(assert (=> start!96788 (= b_free!23147 (not b_next!23147))))

(declare-fun tp!81390 () Bool)

(declare-fun b_and!37073 () Bool)

(assert (=> start!96788 (= tp!81390 b_and!37073)))

(declare-fun b!1100464 () Bool)

(declare-fun e!628154 () Bool)

(declare-fun e!628160 () Bool)

(assert (=> b!1100464 (= e!628154 e!628160)))

(declare-fun res!734430 () Bool)

(assert (=> b!1100464 (=> res!734430 e!628160)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1100464 (= res!734430 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!41389 0))(
  ( (V!41390 (val!13655 Int)) )
))
(declare-datatypes ((tuple2!17424 0))(
  ( (tuple2!17425 (_1!8722 (_ BitVec 64)) (_2!8722 V!41389)) )
))
(declare-datatypes ((List!24096 0))(
  ( (Nil!24093) (Cons!24092 (h!25301 tuple2!17424) (t!34296 List!24096)) )
))
(declare-datatypes ((ListLongMap!15405 0))(
  ( (ListLongMap!15406 (toList!7718 List!24096)) )
))
(declare-fun lt!493102 () ListLongMap!15405)

(declare-fun lt!493104 () ListLongMap!15405)

(assert (=> b!1100464 (= lt!493102 lt!493104)))

(declare-fun lt!493109 () ListLongMap!15405)

(declare-fun lt!493100 () tuple2!17424)

(declare-fun +!3351 (ListLongMap!15405 tuple2!17424) ListLongMap!15405)

(assert (=> b!1100464 (= lt!493104 (+!3351 lt!493109 lt!493100))))

(declare-fun lt!493107 () ListLongMap!15405)

(declare-fun lt!493105 () ListLongMap!15405)

(assert (=> b!1100464 (= lt!493107 lt!493105)))

(declare-fun lt!493110 () ListLongMap!15405)

(assert (=> b!1100464 (= lt!493105 (+!3351 lt!493110 lt!493100))))

(declare-fun lt!493111 () ListLongMap!15405)

(assert (=> b!1100464 (= lt!493102 (+!3351 lt!493111 lt!493100))))

(declare-fun zeroValue!831 () V!41389)

(assert (=> b!1100464 (= lt!493100 (tuple2!17425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapIsEmpty!42577 () Bool)

(declare-fun mapRes!42577 () Bool)

(assert (=> mapIsEmpty!42577 mapRes!42577))

(declare-fun b!1100465 () Bool)

(declare-fun res!734428 () Bool)

(declare-fun e!628159 () Bool)

(assert (=> b!1100465 (=> (not res!734428) (not e!628159))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71262 0))(
  ( (array!71263 (arr!34292 (Array (_ BitVec 32) (_ BitVec 64))) (size!34829 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71262)

(assert (=> b!1100465 (= res!734428 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34829 _keys!1070))))))

(declare-fun b!1100466 () Bool)

(declare-fun res!734427 () Bool)

(assert (=> b!1100466 (=> (not res!734427) (not e!628159))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71262 (_ BitVec 32)) Bool)

(assert (=> b!1100466 (= res!734427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1100467 () Bool)

(declare-fun e!628157 () Bool)

(declare-fun tp_is_empty!27197 () Bool)

(assert (=> b!1100467 (= e!628157 tp_is_empty!27197)))

(declare-fun b!1100468 () Bool)

(declare-fun e!628153 () Bool)

(assert (=> b!1100468 (= e!628153 tp_is_empty!27197)))

(declare-fun b!1100469 () Bool)

(declare-fun e!628155 () Bool)

(assert (=> b!1100469 (= e!628159 e!628155)))

(declare-fun res!734434 () Bool)

(assert (=> b!1100469 (=> (not res!734434) (not e!628155))))

(declare-fun lt!493099 () array!71262)

(assert (=> b!1100469 (= res!734434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493099 mask!1414))))

(assert (=> b!1100469 (= lt!493099 (array!71263 (store (arr!34292 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34829 _keys!1070)))))

(declare-fun b!1100470 () Bool)

(declare-fun res!734431 () Bool)

(assert (=> b!1100470 (=> (not res!734431) (not e!628159))))

(declare-datatypes ((ValueCell!12889 0))(
  ( (ValueCellFull!12889 (v!16284 V!41389)) (EmptyCell!12889) )
))
(declare-datatypes ((array!71264 0))(
  ( (array!71265 (arr!34293 (Array (_ BitVec 32) ValueCell!12889)) (size!34830 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71264)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100470 (= res!734431 (and (= (size!34830 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34829 _keys!1070) (size!34830 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100471 () Bool)

(declare-fun res!734436 () Bool)

(assert (=> b!1100471 (=> (not res!734436) (not e!628159))))

(declare-datatypes ((List!24097 0))(
  ( (Nil!24094) (Cons!24093 (h!25302 (_ BitVec 64)) (t!34297 List!24097)) )
))
(declare-fun arrayNoDuplicates!0 (array!71262 (_ BitVec 32) List!24097) Bool)

(assert (=> b!1100471 (= res!734436 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24094))))

(declare-fun b!1100472 () Bool)

(assert (=> b!1100472 (= e!628155 (not e!628154))))

(declare-fun res!734429 () Bool)

(assert (=> b!1100472 (=> res!734429 e!628154)))

(assert (=> b!1100472 (= res!734429 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41389)

(declare-fun getCurrentListMap!4406 (array!71262 array!71264 (_ BitVec 32) (_ BitVec 32) V!41389 V!41389 (_ BitVec 32) Int) ListLongMap!15405)

(assert (=> b!1100472 (= lt!493107 (getCurrentListMap!4406 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493108 () array!71264)

(assert (=> b!1100472 (= lt!493102 (getCurrentListMap!4406 lt!493099 lt!493108 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1100472 (and (= lt!493111 lt!493109) (= lt!493109 lt!493111))))

(declare-fun -!958 (ListLongMap!15405 (_ BitVec 64)) ListLongMap!15405)

(assert (=> b!1100472 (= lt!493109 (-!958 lt!493110 k!904))))

(declare-datatypes ((Unit!36109 0))(
  ( (Unit!36110) )
))
(declare-fun lt!493106 () Unit!36109)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!218 (array!71262 array!71264 (_ BitVec 32) (_ BitVec 32) V!41389 V!41389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36109)

(assert (=> b!1100472 (= lt!493106 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!218 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4193 (array!71262 array!71264 (_ BitVec 32) (_ BitVec 32) V!41389 V!41389 (_ BitVec 32) Int) ListLongMap!15405)

(assert (=> b!1100472 (= lt!493111 (getCurrentListMapNoExtraKeys!4193 lt!493099 lt!493108 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2324 (Int (_ BitVec 64)) V!41389)

(assert (=> b!1100472 (= lt!493108 (array!71265 (store (arr!34293 _values!874) i!650 (ValueCellFull!12889 (dynLambda!2324 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34830 _values!874)))))

(assert (=> b!1100472 (= lt!493110 (getCurrentListMapNoExtraKeys!4193 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100472 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493101 () Unit!36109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71262 (_ BitVec 64) (_ BitVec 32)) Unit!36109)

(assert (=> b!1100472 (= lt!493101 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!734437 () Bool)

(assert (=> start!96788 (=> (not res!734437) (not e!628159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96788 (= res!734437 (validMask!0 mask!1414))))

(assert (=> start!96788 e!628159))

(assert (=> start!96788 tp!81390))

(assert (=> start!96788 true))

(assert (=> start!96788 tp_is_empty!27197))

(declare-fun array_inv!26272 (array!71262) Bool)

(assert (=> start!96788 (array_inv!26272 _keys!1070)))

(declare-fun e!628156 () Bool)

(declare-fun array_inv!26273 (array!71264) Bool)

(assert (=> start!96788 (and (array_inv!26273 _values!874) e!628156)))

(declare-fun mapNonEmpty!42577 () Bool)

(declare-fun tp!81389 () Bool)

(assert (=> mapNonEmpty!42577 (= mapRes!42577 (and tp!81389 e!628153))))

(declare-fun mapKey!42577 () (_ BitVec 32))

(declare-fun mapRest!42577 () (Array (_ BitVec 32) ValueCell!12889))

(declare-fun mapValue!42577 () ValueCell!12889)

(assert (=> mapNonEmpty!42577 (= (arr!34293 _values!874) (store mapRest!42577 mapKey!42577 mapValue!42577))))

(declare-fun b!1100473 () Bool)

(declare-fun res!734435 () Bool)

(assert (=> b!1100473 (=> (not res!734435) (not e!628155))))

(assert (=> b!1100473 (= res!734435 (arrayNoDuplicates!0 lt!493099 #b00000000000000000000000000000000 Nil!24094))))

(declare-fun b!1100474 () Bool)

(declare-fun res!734432 () Bool)

(assert (=> b!1100474 (=> (not res!734432) (not e!628159))))

(assert (=> b!1100474 (= res!734432 (= (select (arr!34292 _keys!1070) i!650) k!904))))

(declare-fun b!1100475 () Bool)

(declare-fun res!734433 () Bool)

(assert (=> b!1100475 (=> (not res!734433) (not e!628159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100475 (= res!734433 (validKeyInArray!0 k!904))))

(declare-fun b!1100476 () Bool)

(assert (=> b!1100476 (= e!628160 (bvslt i!650 (size!34830 _values!874)))))

(assert (=> b!1100476 (= (-!958 lt!493105 k!904) lt!493104)))

(declare-fun lt!493103 () Unit!36109)

(declare-fun addRemoveCommutativeForDiffKeys!134 (ListLongMap!15405 (_ BitVec 64) V!41389 (_ BitVec 64)) Unit!36109)

(assert (=> b!1100476 (= lt!493103 (addRemoveCommutativeForDiffKeys!134 lt!493110 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1100477 () Bool)

(assert (=> b!1100477 (= e!628156 (and e!628157 mapRes!42577))))

(declare-fun condMapEmpty!42577 () Bool)

(declare-fun mapDefault!42577 () ValueCell!12889)


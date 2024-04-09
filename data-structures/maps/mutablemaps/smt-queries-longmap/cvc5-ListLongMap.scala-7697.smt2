; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96670 () Bool)

(assert start!96670)

(declare-fun b_free!23107 () Bool)

(declare-fun b_next!23107 () Bool)

(assert (=> start!96670 (= b_free!23107 (not b_next!23107))))

(declare-fun tp!81260 () Bool)

(declare-fun b_and!36951 () Bool)

(assert (=> start!96670 (= tp!81260 b_and!36951)))

(declare-fun b!1098996 () Bool)

(declare-fun res!733514 () Bool)

(declare-fun e!627305 () Bool)

(assert (=> b!1098996 (=> (not res!733514) (not e!627305))))

(declare-datatypes ((array!71182 0))(
  ( (array!71183 (arr!34255 (Array (_ BitVec 32) (_ BitVec 64))) (size!34792 (_ BitVec 32))) )
))
(declare-fun lt!491951 () array!71182)

(declare-datatypes ((List!24065 0))(
  ( (Nil!24062) (Cons!24061 (h!25270 (_ BitVec 64)) (t!34225 List!24065)) )
))
(declare-fun arrayNoDuplicates!0 (array!71182 (_ BitVec 32) List!24065) Bool)

(assert (=> b!1098996 (= res!733514 (arrayNoDuplicates!0 lt!491951 #b00000000000000000000000000000000 Nil!24062))))

(declare-fun b!1098997 () Bool)

(declare-fun res!733515 () Bool)

(declare-fun e!627307 () Bool)

(assert (=> b!1098997 (=> (not res!733515) (not e!627307))))

(declare-fun _keys!1070 () array!71182)

(assert (=> b!1098997 (= res!733515 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24062))))

(declare-fun res!733519 () Bool)

(assert (=> start!96670 (=> (not res!733519) (not e!627307))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96670 (= res!733519 (validMask!0 mask!1414))))

(assert (=> start!96670 e!627307))

(assert (=> start!96670 tp!81260))

(assert (=> start!96670 true))

(declare-fun tp_is_empty!27157 () Bool)

(assert (=> start!96670 tp_is_empty!27157))

(declare-fun array_inv!26248 (array!71182) Bool)

(assert (=> start!96670 (array_inv!26248 _keys!1070)))

(declare-datatypes ((V!41337 0))(
  ( (V!41338 (val!13635 Int)) )
))
(declare-datatypes ((ValueCell!12869 0))(
  ( (ValueCellFull!12869 (v!16261 V!41337)) (EmptyCell!12869) )
))
(declare-datatypes ((array!71184 0))(
  ( (array!71185 (arr!34256 (Array (_ BitVec 32) ValueCell!12869)) (size!34793 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71184)

(declare-fun e!627303 () Bool)

(declare-fun array_inv!26249 (array!71184) Bool)

(assert (=> start!96670 (and (array_inv!26249 _values!874) e!627303)))

(declare-fun mapNonEmpty!42508 () Bool)

(declare-fun mapRes!42508 () Bool)

(declare-fun tp!81261 () Bool)

(declare-fun e!627301 () Bool)

(assert (=> mapNonEmpty!42508 (= mapRes!42508 (and tp!81261 e!627301))))

(declare-fun mapKey!42508 () (_ BitVec 32))

(declare-fun mapValue!42508 () ValueCell!12869)

(declare-fun mapRest!42508 () (Array (_ BitVec 32) ValueCell!12869))

(assert (=> mapNonEmpty!42508 (= (arr!34256 _values!874) (store mapRest!42508 mapKey!42508 mapValue!42508))))

(declare-fun b!1098998 () Bool)

(declare-fun res!733518 () Bool)

(assert (=> b!1098998 (=> (not res!733518) (not e!627307))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1098998 (= res!733518 (= (select (arr!34255 _keys!1070) i!650) k!904))))

(declare-fun b!1098999 () Bool)

(declare-fun e!627306 () Bool)

(assert (=> b!1098999 (= e!627306 tp_is_empty!27157)))

(declare-fun b!1099000 () Bool)

(declare-fun e!627308 () Bool)

(assert (=> b!1099000 (= e!627305 (not e!627308))))

(declare-fun res!733516 () Bool)

(assert (=> b!1099000 (=> res!733516 e!627308)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1099000 (= res!733516 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41337)

(declare-datatypes ((tuple2!17390 0))(
  ( (tuple2!17391 (_1!8705 (_ BitVec 64)) (_2!8705 V!41337)) )
))
(declare-datatypes ((List!24066 0))(
  ( (Nil!24063) (Cons!24062 (h!25271 tuple2!17390) (t!34226 List!24066)) )
))
(declare-datatypes ((ListLongMap!15371 0))(
  ( (ListLongMap!15372 (toList!7701 List!24066)) )
))
(declare-fun lt!491964 () ListLongMap!15371)

(declare-fun zeroValue!831 () V!41337)

(declare-fun getCurrentListMap!4395 (array!71182 array!71184 (_ BitVec 32) (_ BitVec 32) V!41337 V!41337 (_ BitVec 32) Int) ListLongMap!15371)

(assert (=> b!1099000 (= lt!491964 (getCurrentListMap!4395 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491963 () ListLongMap!15371)

(declare-fun lt!491952 () array!71184)

(assert (=> b!1099000 (= lt!491963 (getCurrentListMap!4395 lt!491951 lt!491952 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491954 () ListLongMap!15371)

(declare-fun lt!491950 () ListLongMap!15371)

(assert (=> b!1099000 (and (= lt!491954 lt!491950) (= lt!491950 lt!491954))))

(declare-fun lt!491953 () ListLongMap!15371)

(declare-fun -!946 (ListLongMap!15371 (_ BitVec 64)) ListLongMap!15371)

(assert (=> b!1099000 (= lt!491950 (-!946 lt!491953 k!904))))

(declare-datatypes ((Unit!36079 0))(
  ( (Unit!36080) )
))
(declare-fun lt!491958 () Unit!36079)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!207 (array!71182 array!71184 (_ BitVec 32) (_ BitVec 32) V!41337 V!41337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36079)

(assert (=> b!1099000 (= lt!491958 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!207 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4182 (array!71182 array!71184 (_ BitVec 32) (_ BitVec 32) V!41337 V!41337 (_ BitVec 32) Int) ListLongMap!15371)

(assert (=> b!1099000 (= lt!491954 (getCurrentListMapNoExtraKeys!4182 lt!491951 lt!491952 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2313 (Int (_ BitVec 64)) V!41337)

(assert (=> b!1099000 (= lt!491952 (array!71185 (store (arr!34256 _values!874) i!650 (ValueCellFull!12869 (dynLambda!2313 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34793 _values!874)))))

(assert (=> b!1099000 (= lt!491953 (getCurrentListMapNoExtraKeys!4182 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099000 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!491960 () Unit!36079)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71182 (_ BitVec 64) (_ BitVec 32)) Unit!36079)

(assert (=> b!1099000 (= lt!491960 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1099001 () Bool)

(declare-fun e!627304 () Bool)

(assert (=> b!1099001 (= e!627308 e!627304)))

(declare-fun res!733512 () Bool)

(assert (=> b!1099001 (=> res!733512 e!627304)))

(assert (=> b!1099001 (= res!733512 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!491959 () ListLongMap!15371)

(declare-fun lt!491962 () ListLongMap!15371)

(assert (=> b!1099001 (= lt!491959 lt!491962)))

(declare-fun lt!491957 () ListLongMap!15371)

(assert (=> b!1099001 (= lt!491959 (-!946 lt!491957 k!904))))

(declare-fun lt!491961 () Unit!36079)

(declare-fun addRemoveCommutativeForDiffKeys!127 (ListLongMap!15371 (_ BitVec 64) V!41337 (_ BitVec 64)) Unit!36079)

(assert (=> b!1099001 (= lt!491961 (addRemoveCommutativeForDiffKeys!127 lt!491953 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!491965 () tuple2!17390)

(declare-fun +!3336 (ListLongMap!15371 tuple2!17390) ListLongMap!15371)

(assert (=> b!1099001 (= lt!491963 (+!3336 lt!491962 lt!491965))))

(declare-fun lt!491956 () tuple2!17390)

(assert (=> b!1099001 (= lt!491962 (+!3336 lt!491950 lt!491956))))

(declare-fun lt!491949 () ListLongMap!15371)

(assert (=> b!1099001 (= lt!491964 lt!491949)))

(assert (=> b!1099001 (= lt!491949 (+!3336 lt!491957 lt!491965))))

(assert (=> b!1099001 (= lt!491957 (+!3336 lt!491953 lt!491956))))

(assert (=> b!1099001 (= lt!491963 (+!3336 (+!3336 lt!491954 lt!491956) lt!491965))))

(assert (=> b!1099001 (= lt!491965 (tuple2!17391 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1099001 (= lt!491956 (tuple2!17391 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099002 () Bool)

(assert (=> b!1099002 (= e!627303 (and e!627306 mapRes!42508))))

(declare-fun condMapEmpty!42508 () Bool)

(declare-fun mapDefault!42508 () ValueCell!12869)


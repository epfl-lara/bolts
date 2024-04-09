; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96916 () Bool)

(assert start!96916)

(declare-fun b_free!23197 () Bool)

(declare-fun b_next!23197 () Bool)

(assert (=> start!96916 (= b_free!23197 (not b_next!23197))))

(declare-fun tp!81549 () Bool)

(declare-fun b_and!37215 () Bool)

(assert (=> start!96916 (= tp!81549 b_and!37215)))

(declare-fun b!1102150 () Bool)

(declare-fun res!735511 () Bool)

(declare-fun e!629122 () Bool)

(assert (=> b!1102150 (=> (not res!735511) (not e!629122))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71368 0))(
  ( (array!71369 (arr!34342 (Array (_ BitVec 32) (_ BitVec 64))) (size!34879 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71368)

(assert (=> b!1102150 (= res!735511 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34879 _keys!1070))))))

(declare-fun mapNonEmpty!42661 () Bool)

(declare-fun mapRes!42661 () Bool)

(declare-fun tp!81548 () Bool)

(declare-fun e!629126 () Bool)

(assert (=> mapNonEmpty!42661 (= mapRes!42661 (and tp!81548 e!629126))))

(declare-datatypes ((V!41457 0))(
  ( (V!41458 (val!13680 Int)) )
))
(declare-datatypes ((ValueCell!12914 0))(
  ( (ValueCellFull!12914 (v!16312 V!41457)) (EmptyCell!12914) )
))
(declare-datatypes ((array!71370 0))(
  ( (array!71371 (arr!34343 (Array (_ BitVec 32) ValueCell!12914)) (size!34880 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71370)

(declare-fun mapKey!42661 () (_ BitVec 32))

(declare-fun mapValue!42661 () ValueCell!12914)

(declare-fun mapRest!42661 () (Array (_ BitVec 32) ValueCell!12914))

(assert (=> mapNonEmpty!42661 (= (arr!34343 _values!874) (store mapRest!42661 mapKey!42661 mapValue!42661))))

(declare-fun b!1102151 () Bool)

(declare-fun e!629124 () Bool)

(assert (=> b!1102151 (= e!629122 e!629124)))

(declare-fun res!735516 () Bool)

(assert (=> b!1102151 (=> (not res!735516) (not e!629124))))

(declare-fun lt!494418 () array!71368)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71368 (_ BitVec 32)) Bool)

(assert (=> b!1102151 (= res!735516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494418 mask!1414))))

(assert (=> b!1102151 (= lt!494418 (array!71369 (store (arr!34342 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34879 _keys!1070)))))

(declare-fun res!735512 () Bool)

(assert (=> start!96916 (=> (not res!735512) (not e!629122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96916 (= res!735512 (validMask!0 mask!1414))))

(assert (=> start!96916 e!629122))

(assert (=> start!96916 tp!81549))

(assert (=> start!96916 true))

(declare-fun tp_is_empty!27247 () Bool)

(assert (=> start!96916 tp_is_empty!27247))

(declare-fun array_inv!26308 (array!71368) Bool)

(assert (=> start!96916 (array_inv!26308 _keys!1070)))

(declare-fun e!629123 () Bool)

(declare-fun array_inv!26309 (array!71370) Bool)

(assert (=> start!96916 (and (array_inv!26309 _values!874) e!629123)))

(declare-fun b!1102152 () Bool)

(declare-fun res!735513 () Bool)

(assert (=> b!1102152 (=> (not res!735513) (not e!629124))))

(declare-datatypes ((List!24141 0))(
  ( (Nil!24138) (Cons!24137 (h!25346 (_ BitVec 64)) (t!34391 List!24141)) )
))
(declare-fun arrayNoDuplicates!0 (array!71368 (_ BitVec 32) List!24141) Bool)

(assert (=> b!1102152 (= res!735513 (arrayNoDuplicates!0 lt!494418 #b00000000000000000000000000000000 Nil!24138))))

(declare-fun b!1102153 () Bool)

(assert (=> b!1102153 (= e!629126 tp_is_empty!27247)))

(declare-fun b!1102154 () Bool)

(declare-fun res!735510 () Bool)

(assert (=> b!1102154 (=> (not res!735510) (not e!629122))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1102154 (= res!735510 (= (select (arr!34342 _keys!1070) i!650) k!904))))

(declare-fun b!1102155 () Bool)

(declare-fun e!629127 () Bool)

(assert (=> b!1102155 (= e!629127 tp_is_empty!27247)))

(declare-fun lt!494417 () Bool)

(declare-datatypes ((tuple2!17470 0))(
  ( (tuple2!17471 (_1!8745 (_ BitVec 64)) (_2!8745 V!41457)) )
))
(declare-datatypes ((List!24142 0))(
  ( (Nil!24139) (Cons!24138 (h!25347 tuple2!17470) (t!34392 List!24142)) )
))
(declare-datatypes ((ListLongMap!15451 0))(
  ( (ListLongMap!15452 (toList!7741 List!24142)) )
))
(declare-fun lt!494414 () ListLongMap!15451)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun b!1102156 () Bool)

(declare-fun lt!494420 () ListLongMap!15451)

(assert (=> b!1102156 (= e!629124 (not (or (and (not lt!494417) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!494417) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!494417) (= lt!494420 lt!494414))))))

(assert (=> b!1102156 (= lt!494417 (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41457)

(declare-fun lt!494419 () ListLongMap!15451)

(declare-fun zeroValue!831 () V!41457)

(declare-fun getCurrentListMap!4424 (array!71368 array!71370 (_ BitVec 32) (_ BitVec 32) V!41457 V!41457 (_ BitVec 32) Int) ListLongMap!15451)

(assert (=> b!1102156 (= lt!494419 (getCurrentListMap!4424 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494421 () array!71370)

(assert (=> b!1102156 (= lt!494420 (getCurrentListMap!4424 lt!494418 lt!494421 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494422 () ListLongMap!15451)

(assert (=> b!1102156 (and (= lt!494414 lt!494422) (= lt!494422 lt!494414))))

(declare-fun lt!494415 () ListLongMap!15451)

(declare-fun -!978 (ListLongMap!15451 (_ BitVec 64)) ListLongMap!15451)

(assert (=> b!1102156 (= lt!494422 (-!978 lt!494415 k!904))))

(declare-datatypes ((Unit!36155 0))(
  ( (Unit!36156) )
))
(declare-fun lt!494416 () Unit!36155)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!236 (array!71368 array!71370 (_ BitVec 32) (_ BitVec 32) V!41457 V!41457 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36155)

(assert (=> b!1102156 (= lt!494416 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!236 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4211 (array!71368 array!71370 (_ BitVec 32) (_ BitVec 32) V!41457 V!41457 (_ BitVec 32) Int) ListLongMap!15451)

(assert (=> b!1102156 (= lt!494414 (getCurrentListMapNoExtraKeys!4211 lt!494418 lt!494421 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2342 (Int (_ BitVec 64)) V!41457)

(assert (=> b!1102156 (= lt!494421 (array!71371 (store (arr!34343 _values!874) i!650 (ValueCellFull!12914 (dynLambda!2342 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34880 _values!874)))))

(assert (=> b!1102156 (= lt!494415 (getCurrentListMapNoExtraKeys!4211 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102156 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494423 () Unit!36155)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71368 (_ BitVec 64) (_ BitVec 32)) Unit!36155)

(assert (=> b!1102156 (= lt!494423 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1102157 () Bool)

(assert (=> b!1102157 (= e!629123 (and e!629127 mapRes!42661))))

(declare-fun condMapEmpty!42661 () Bool)

(declare-fun mapDefault!42661 () ValueCell!12914)


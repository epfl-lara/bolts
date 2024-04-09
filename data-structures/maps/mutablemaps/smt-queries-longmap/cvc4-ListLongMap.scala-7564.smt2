; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95744 () Bool)

(assert start!95744)

(declare-fun b_free!22361 () Bool)

(declare-fun b_next!22361 () Bool)

(assert (=> start!95744 (= b_free!22361 (not b_next!22361))))

(declare-fun tp!78932 () Bool)

(declare-fun b_and!35415 () Bool)

(assert (=> start!95744 (= tp!78932 b_and!35415)))

(declare-fun b!1082021 () Bool)

(declare-fun res!721335 () Bool)

(declare-fun e!618441 () Bool)

(assert (=> b!1082021 (=> (not res!721335) (not e!618441))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69630 0))(
  ( (array!69631 (arr!33485 (Array (_ BitVec 32) (_ BitVec 64))) (size!34022 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69630)

(declare-datatypes ((V!40277 0))(
  ( (V!40278 (val!13238 Int)) )
))
(declare-datatypes ((ValueCell!12472 0))(
  ( (ValueCellFull!12472 (v!15860 V!40277)) (EmptyCell!12472) )
))
(declare-datatypes ((array!69632 0))(
  ( (array!69633 (arr!33486 (Array (_ BitVec 32) ValueCell!12472)) (size!34023 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69632)

(assert (=> b!1082021 (= res!721335 (and (= (size!34023 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34022 _keys!1070) (size!34023 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082022 () Bool)

(declare-fun res!721329 () Bool)

(assert (=> b!1082022 (=> (not res!721329) (not e!618441))))

(declare-datatypes ((List!23472 0))(
  ( (Nil!23469) (Cons!23468 (h!24677 (_ BitVec 64)) (t!32898 List!23472)) )
))
(declare-fun arrayNoDuplicates!0 (array!69630 (_ BitVec 32) List!23472) Bool)

(assert (=> b!1082022 (= res!721329 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23469))))

(declare-fun b!1082023 () Bool)

(declare-fun e!618440 () Bool)

(declare-fun tp_is_empty!26363 () Bool)

(assert (=> b!1082023 (= e!618440 tp_is_empty!26363)))

(declare-fun b!1082024 () Bool)

(declare-fun res!721332 () Bool)

(declare-fun e!618442 () Bool)

(assert (=> b!1082024 (=> (not res!721332) (not e!618442))))

(declare-fun lt!479480 () array!69630)

(assert (=> b!1082024 (= res!721332 (arrayNoDuplicates!0 lt!479480 #b00000000000000000000000000000000 Nil!23469))))

(declare-fun res!721337 () Bool)

(assert (=> start!95744 (=> (not res!721337) (not e!618441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95744 (= res!721337 (validMask!0 mask!1414))))

(assert (=> start!95744 e!618441))

(assert (=> start!95744 tp!78932))

(assert (=> start!95744 true))

(assert (=> start!95744 tp_is_empty!26363))

(declare-fun array_inv!25710 (array!69630) Bool)

(assert (=> start!95744 (array_inv!25710 _keys!1070)))

(declare-fun e!618444 () Bool)

(declare-fun array_inv!25711 (array!69632) Bool)

(assert (=> start!95744 (and (array_inv!25711 _values!874) e!618444)))

(declare-fun b!1082025 () Bool)

(declare-fun e!618443 () Bool)

(assert (=> b!1082025 (= e!618443 tp_is_empty!26363)))

(declare-fun b!1082026 () Bool)

(declare-fun res!721330 () Bool)

(assert (=> b!1082026 (=> (not res!721330) (not e!618441))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082026 (= res!721330 (= (select (arr!33485 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41299 () Bool)

(declare-fun mapRes!41299 () Bool)

(assert (=> mapIsEmpty!41299 mapRes!41299))

(declare-fun b!1082027 () Bool)

(declare-fun res!721331 () Bool)

(assert (=> b!1082027 (=> (not res!721331) (not e!618441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082027 (= res!721331 (validKeyInArray!0 k!904))))

(declare-fun b!1082028 () Bool)

(declare-fun res!721334 () Bool)

(assert (=> b!1082028 (=> (not res!721334) (not e!618441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69630 (_ BitVec 32)) Bool)

(assert (=> b!1082028 (= res!721334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41299 () Bool)

(declare-fun tp!78933 () Bool)

(assert (=> mapNonEmpty!41299 (= mapRes!41299 (and tp!78933 e!618440))))

(declare-fun mapRest!41299 () (Array (_ BitVec 32) ValueCell!12472))

(declare-fun mapKey!41299 () (_ BitVec 32))

(declare-fun mapValue!41299 () ValueCell!12472)

(assert (=> mapNonEmpty!41299 (= (arr!33486 _values!874) (store mapRest!41299 mapKey!41299 mapValue!41299))))

(declare-fun b!1082029 () Bool)

(assert (=> b!1082029 (= e!618441 e!618442)))

(declare-fun res!721333 () Bool)

(assert (=> b!1082029 (=> (not res!721333) (not e!618442))))

(assert (=> b!1082029 (= res!721333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479480 mask!1414))))

(assert (=> b!1082029 (= lt!479480 (array!69631 (store (arr!33485 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34022 _keys!1070)))))

(declare-fun b!1082030 () Bool)

(assert (=> b!1082030 (= e!618442 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16840 0))(
  ( (tuple2!16841 (_1!8430 (_ BitVec 64)) (_2!8430 V!40277)) )
))
(declare-datatypes ((List!23473 0))(
  ( (Nil!23470) (Cons!23469 (h!24678 tuple2!16840) (t!32899 List!23473)) )
))
(declare-datatypes ((ListLongMap!14821 0))(
  ( (ListLongMap!14822 (toList!7426 List!23473)) )
))
(declare-fun lt!479477 () ListLongMap!14821)

(declare-fun minValue!831 () V!40277)

(declare-fun zeroValue!831 () V!40277)

(declare-fun getCurrentListMapNoExtraKeys!3937 (array!69630 array!69632 (_ BitVec 32) (_ BitVec 32) V!40277 V!40277 (_ BitVec 32) Int) ListLongMap!14821)

(declare-fun dynLambda!2073 (Int (_ BitVec 64)) V!40277)

(assert (=> b!1082030 (= lt!479477 (getCurrentListMapNoExtraKeys!3937 lt!479480 (array!69633 (store (arr!33486 _values!874) i!650 (ValueCellFull!12472 (dynLambda!2073 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34023 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479478 () ListLongMap!14821)

(assert (=> b!1082030 (= lt!479478 (getCurrentListMapNoExtraKeys!3937 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082030 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35531 0))(
  ( (Unit!35532) )
))
(declare-fun lt!479479 () Unit!35531)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69630 (_ BitVec 64) (_ BitVec 32)) Unit!35531)

(assert (=> b!1082030 (= lt!479479 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082031 () Bool)

(declare-fun res!721336 () Bool)

(assert (=> b!1082031 (=> (not res!721336) (not e!618441))))

(assert (=> b!1082031 (= res!721336 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34022 _keys!1070))))))

(declare-fun b!1082032 () Bool)

(assert (=> b!1082032 (= e!618444 (and e!618443 mapRes!41299))))

(declare-fun condMapEmpty!41299 () Bool)

(declare-fun mapDefault!41299 () ValueCell!12472)


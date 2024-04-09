; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96526 () Bool)

(assert start!96526)

(declare-fun b_free!23069 () Bool)

(declare-fun b_next!23069 () Bool)

(assert (=> start!96526 (= b_free!23069 (not b_next!23069))))

(declare-fun tp!81134 () Bool)

(declare-fun b_and!36819 () Bool)

(assert (=> start!96526 (= tp!81134 b_and!36819)))

(declare-fun b!1097354 () Bool)

(declare-fun res!732520 () Bool)

(declare-fun e!626335 () Bool)

(assert (=> b!1097354 (=> (not res!732520) (not e!626335))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!71098 0))(
  ( (array!71099 (arr!34217 (Array (_ BitVec 32) (_ BitVec 64))) (size!34754 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71098)

(declare-datatypes ((V!41285 0))(
  ( (V!41286 (val!13616 Int)) )
))
(declare-datatypes ((ValueCell!12850 0))(
  ( (ValueCellFull!12850 (v!16238 V!41285)) (EmptyCell!12850) )
))
(declare-datatypes ((array!71100 0))(
  ( (array!71101 (arr!34218 (Array (_ BitVec 32) ValueCell!12850)) (size!34755 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71100)

(declare-fun mask!1414 () (_ BitVec 32))

(assert (=> b!1097354 (= res!732520 (and (= (size!34755 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34754 _keys!1070) (size!34755 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097355 () Bool)

(declare-fun res!732516 () Bool)

(assert (=> b!1097355 (=> (not res!732516) (not e!626335))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097355 (= res!732516 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34754 _keys!1070))))))

(declare-fun b!1097356 () Bool)

(declare-fun e!626334 () Bool)

(declare-fun e!626340 () Bool)

(assert (=> b!1097356 (= e!626334 (not e!626340))))

(declare-fun res!732519 () Bool)

(assert (=> b!1097356 (=> res!732519 e!626340)))

(assert (=> b!1097356 (= res!732519 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41285)

(declare-datatypes ((tuple2!17354 0))(
  ( (tuple2!17355 (_1!8687 (_ BitVec 64)) (_2!8687 V!41285)) )
))
(declare-datatypes ((List!24033 0))(
  ( (Nil!24030) (Cons!24029 (h!25238 tuple2!17354) (t!34155 List!24033)) )
))
(declare-datatypes ((ListLongMap!15335 0))(
  ( (ListLongMap!15336 (toList!7683 List!24033)) )
))
(declare-fun lt!490521 () ListLongMap!15335)

(declare-fun zeroValue!831 () V!41285)

(declare-fun getCurrentListMap!4383 (array!71098 array!71100 (_ BitVec 32) (_ BitVec 32) V!41285 V!41285 (_ BitVec 32) Int) ListLongMap!15335)

(assert (=> b!1097356 (= lt!490521 (getCurrentListMap!4383 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490528 () array!71100)

(declare-fun lt!490529 () array!71098)

(declare-fun lt!490527 () ListLongMap!15335)

(assert (=> b!1097356 (= lt!490527 (getCurrentListMap!4383 lt!490529 lt!490528 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490524 () ListLongMap!15335)

(declare-fun lt!490526 () ListLongMap!15335)

(assert (=> b!1097356 (and (= lt!490524 lt!490526) (= lt!490526 lt!490524))))

(declare-fun lt!490522 () ListLongMap!15335)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!930 (ListLongMap!15335 (_ BitVec 64)) ListLongMap!15335)

(assert (=> b!1097356 (= lt!490526 (-!930 lt!490522 k!904))))

(declare-datatypes ((Unit!36039 0))(
  ( (Unit!36040) )
))
(declare-fun lt!490525 () Unit!36039)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!195 (array!71098 array!71100 (_ BitVec 32) (_ BitVec 32) V!41285 V!41285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36039)

(assert (=> b!1097356 (= lt!490525 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!195 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4170 (array!71098 array!71100 (_ BitVec 32) (_ BitVec 32) V!41285 V!41285 (_ BitVec 32) Int) ListLongMap!15335)

(assert (=> b!1097356 (= lt!490524 (getCurrentListMapNoExtraKeys!4170 lt!490529 lt!490528 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2301 (Int (_ BitVec 64)) V!41285)

(assert (=> b!1097356 (= lt!490528 (array!71101 (store (arr!34218 _values!874) i!650 (ValueCellFull!12850 (dynLambda!2301 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34755 _values!874)))))

(assert (=> b!1097356 (= lt!490522 (getCurrentListMapNoExtraKeys!4170 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097356 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!490523 () Unit!36039)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71098 (_ BitVec 64) (_ BitVec 32)) Unit!36039)

(assert (=> b!1097356 (= lt!490523 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1097357 () Bool)

(declare-fun +!3318 (ListLongMap!15335 tuple2!17354) ListLongMap!15335)

(assert (=> b!1097357 (= e!626340 (= lt!490527 (+!3318 (+!3318 lt!490524 (tuple2!17355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (tuple2!17355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1097358 () Bool)

(declare-fun res!732522 () Bool)

(assert (=> b!1097358 (=> (not res!732522) (not e!626334))))

(declare-datatypes ((List!24034 0))(
  ( (Nil!24031) (Cons!24030 (h!25239 (_ BitVec 64)) (t!34156 List!24034)) )
))
(declare-fun arrayNoDuplicates!0 (array!71098 (_ BitVec 32) List!24034) Bool)

(assert (=> b!1097358 (= res!732522 (arrayNoDuplicates!0 lt!490529 #b00000000000000000000000000000000 Nil!24031))))

(declare-fun mapNonEmpty!42439 () Bool)

(declare-fun mapRes!42439 () Bool)

(declare-fun tp!81135 () Bool)

(declare-fun e!626338 () Bool)

(assert (=> mapNonEmpty!42439 (= mapRes!42439 (and tp!81135 e!626338))))

(declare-fun mapValue!42439 () ValueCell!12850)

(declare-fun mapKey!42439 () (_ BitVec 32))

(declare-fun mapRest!42439 () (Array (_ BitVec 32) ValueCell!12850))

(assert (=> mapNonEmpty!42439 (= (arr!34218 _values!874) (store mapRest!42439 mapKey!42439 mapValue!42439))))

(declare-fun b!1097359 () Bool)

(declare-fun res!732521 () Bool)

(assert (=> b!1097359 (=> (not res!732521) (not e!626335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097359 (= res!732521 (validKeyInArray!0 k!904))))

(declare-fun b!1097360 () Bool)

(declare-fun tp_is_empty!27119 () Bool)

(assert (=> b!1097360 (= e!626338 tp_is_empty!27119)))

(declare-fun b!1097362 () Bool)

(assert (=> b!1097362 (= e!626335 e!626334)))

(declare-fun res!732524 () Bool)

(assert (=> b!1097362 (=> (not res!732524) (not e!626334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71098 (_ BitVec 32)) Bool)

(assert (=> b!1097362 (= res!732524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490529 mask!1414))))

(assert (=> b!1097362 (= lt!490529 (array!71099 (store (arr!34217 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34754 _keys!1070)))))

(declare-fun b!1097363 () Bool)

(declare-fun res!732518 () Bool)

(assert (=> b!1097363 (=> (not res!732518) (not e!626335))))

(assert (=> b!1097363 (= res!732518 (= (select (arr!34217 _keys!1070) i!650) k!904))))

(declare-fun b!1097364 () Bool)

(declare-fun res!732525 () Bool)

(assert (=> b!1097364 (=> (not res!732525) (not e!626335))))

(assert (=> b!1097364 (= res!732525 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24031))))

(declare-fun b!1097365 () Bool)

(declare-fun e!626337 () Bool)

(assert (=> b!1097365 (= e!626337 tp_is_empty!27119)))

(declare-fun mapIsEmpty!42439 () Bool)

(assert (=> mapIsEmpty!42439 mapRes!42439))

(declare-fun b!1097366 () Bool)

(declare-fun res!732517 () Bool)

(assert (=> b!1097366 (=> (not res!732517) (not e!626335))))

(assert (=> b!1097366 (= res!732517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!732523 () Bool)

(assert (=> start!96526 (=> (not res!732523) (not e!626335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96526 (= res!732523 (validMask!0 mask!1414))))

(assert (=> start!96526 e!626335))

(assert (=> start!96526 tp!81134))

(assert (=> start!96526 true))

(assert (=> start!96526 tp_is_empty!27119))

(declare-fun array_inv!26218 (array!71098) Bool)

(assert (=> start!96526 (array_inv!26218 _keys!1070)))

(declare-fun e!626339 () Bool)

(declare-fun array_inv!26219 (array!71100) Bool)

(assert (=> start!96526 (and (array_inv!26219 _values!874) e!626339)))

(declare-fun b!1097361 () Bool)

(assert (=> b!1097361 (= e!626339 (and e!626337 mapRes!42439))))

(declare-fun condMapEmpty!42439 () Bool)

(declare-fun mapDefault!42439 () ValueCell!12850)


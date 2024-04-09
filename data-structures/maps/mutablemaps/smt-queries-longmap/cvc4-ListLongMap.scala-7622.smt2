; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96092 () Bool)

(assert start!96092)

(declare-fun b_free!22709 () Bool)

(declare-fun b_next!22709 () Bool)

(assert (=> start!96092 (= b_free!22709 (not b_next!22709))))

(declare-fun tp!79976 () Bool)

(declare-fun b_and!36111 () Bool)

(assert (=> start!96092 (= tp!79976 b_and!36111)))

(declare-fun b!1089288 () Bool)

(declare-fun res!726689 () Bool)

(declare-fun e!622212 () Bool)

(assert (=> b!1089288 (=> (not res!726689) (not e!622212))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70312 0))(
  ( (array!70313 (arr!33826 (Array (_ BitVec 32) (_ BitVec 64))) (size!34363 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70312)

(declare-datatypes ((V!40741 0))(
  ( (V!40742 (val!13412 Int)) )
))
(declare-datatypes ((ValueCell!12646 0))(
  ( (ValueCellFull!12646 (v!16034 V!40741)) (EmptyCell!12646) )
))
(declare-datatypes ((array!70314 0))(
  ( (array!70315 (arr!33827 (Array (_ BitVec 32) ValueCell!12646)) (size!34364 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70314)

(assert (=> b!1089288 (= res!726689 (and (= (size!34364 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34363 _keys!1070) (size!34364 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089289 () Bool)

(declare-fun e!622214 () Bool)

(declare-fun tp_is_empty!26711 () Bool)

(assert (=> b!1089289 (= e!622214 tp_is_empty!26711)))

(declare-fun mapNonEmpty!41821 () Bool)

(declare-fun mapRes!41821 () Bool)

(declare-fun tp!79977 () Bool)

(declare-fun e!622213 () Bool)

(assert (=> mapNonEmpty!41821 (= mapRes!41821 (and tp!79977 e!622213))))

(declare-fun mapRest!41821 () (Array (_ BitVec 32) ValueCell!12646))

(declare-fun mapValue!41821 () ValueCell!12646)

(declare-fun mapKey!41821 () (_ BitVec 32))

(assert (=> mapNonEmpty!41821 (= (arr!33827 _values!874) (store mapRest!41821 mapKey!41821 mapValue!41821))))

(declare-fun b!1089290 () Bool)

(assert (=> b!1089290 (= e!622213 tp_is_empty!26711)))

(declare-fun b!1089291 () Bool)

(declare-fun res!726688 () Bool)

(declare-fun e!622215 () Bool)

(assert (=> b!1089291 (=> (not res!726688) (not e!622215))))

(declare-fun lt!485571 () array!70312)

(declare-datatypes ((List!23751 0))(
  ( (Nil!23748) (Cons!23747 (h!24956 (_ BitVec 64)) (t!33525 List!23751)) )
))
(declare-fun arrayNoDuplicates!0 (array!70312 (_ BitVec 32) List!23751) Bool)

(assert (=> b!1089291 (= res!726688 (arrayNoDuplicates!0 lt!485571 #b00000000000000000000000000000000 Nil!23748))))

(declare-fun b!1089292 () Bool)

(declare-fun res!726690 () Bool)

(assert (=> b!1089292 (=> (not res!726690) (not e!622212))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089292 (= res!726690 (validKeyInArray!0 k!904))))

(declare-fun b!1089293 () Bool)

(assert (=> b!1089293 (= e!622212 e!622215)))

(declare-fun res!726692 () Bool)

(assert (=> b!1089293 (=> (not res!726692) (not e!622215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70312 (_ BitVec 32)) Bool)

(assert (=> b!1089293 (= res!726692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485571 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089293 (= lt!485571 (array!70313 (store (arr!33826 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34363 _keys!1070)))))

(declare-fun b!1089294 () Bool)

(declare-fun e!622210 () Bool)

(declare-fun e!622216 () Bool)

(assert (=> b!1089294 (= e!622210 e!622216)))

(declare-fun res!726686 () Bool)

(assert (=> b!1089294 (=> res!726686 e!622216)))

(assert (=> b!1089294 (= res!726686 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17112 0))(
  ( (tuple2!17113 (_1!8566 (_ BitVec 64)) (_2!8566 V!40741)) )
))
(declare-datatypes ((List!23752 0))(
  ( (Nil!23749) (Cons!23748 (h!24957 tuple2!17112) (t!33526 List!23752)) )
))
(declare-datatypes ((ListLongMap!15093 0))(
  ( (ListLongMap!15094 (toList!7562 List!23752)) )
))
(declare-fun lt!485582 () ListLongMap!15093)

(declare-fun lt!485577 () ListLongMap!15093)

(assert (=> b!1089294 (= lt!485582 lt!485577)))

(declare-fun lt!485573 () ListLongMap!15093)

(declare-fun lt!485578 () tuple2!17112)

(declare-fun +!3277 (ListLongMap!15093 tuple2!17112) ListLongMap!15093)

(assert (=> b!1089294 (= lt!485577 (+!3277 lt!485573 lt!485578))))

(declare-fun lt!485579 () ListLongMap!15093)

(declare-fun lt!485570 () ListLongMap!15093)

(assert (=> b!1089294 (= lt!485579 lt!485570)))

(declare-fun lt!485576 () ListLongMap!15093)

(assert (=> b!1089294 (= lt!485570 (+!3277 lt!485576 lt!485578))))

(declare-fun lt!485572 () ListLongMap!15093)

(assert (=> b!1089294 (= lt!485582 (+!3277 lt!485572 lt!485578))))

(declare-fun zeroValue!831 () V!40741)

(assert (=> b!1089294 (= lt!485578 (tuple2!17113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089295 () Bool)

(assert (=> b!1089295 (= e!622215 (not e!622210))))

(declare-fun res!726683 () Bool)

(assert (=> b!1089295 (=> res!726683 e!622210)))

(assert (=> b!1089295 (= res!726683 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40741)

(declare-fun getCurrentListMap!4306 (array!70312 array!70314 (_ BitVec 32) (_ BitVec 32) V!40741 V!40741 (_ BitVec 32) Int) ListLongMap!15093)

(assert (=> b!1089295 (= lt!485579 (getCurrentListMap!4306 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485574 () array!70314)

(assert (=> b!1089295 (= lt!485582 (getCurrentListMap!4306 lt!485571 lt!485574 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089295 (and (= lt!485572 lt!485573) (= lt!485573 lt!485572))))

(declare-fun -!840 (ListLongMap!15093 (_ BitVec 64)) ListLongMap!15093)

(assert (=> b!1089295 (= lt!485573 (-!840 lt!485576 k!904))))

(declare-datatypes ((Unit!35795 0))(
  ( (Unit!35796) )
))
(declare-fun lt!485581 () Unit!35795)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!112 (array!70312 array!70314 (_ BitVec 32) (_ BitVec 32) V!40741 V!40741 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35795)

(assert (=> b!1089295 (= lt!485581 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!112 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4058 (array!70312 array!70314 (_ BitVec 32) (_ BitVec 32) V!40741 V!40741 (_ BitVec 32) Int) ListLongMap!15093)

(assert (=> b!1089295 (= lt!485572 (getCurrentListMapNoExtraKeys!4058 lt!485571 lt!485574 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2194 (Int (_ BitVec 64)) V!40741)

(assert (=> b!1089295 (= lt!485574 (array!70315 (store (arr!33827 _values!874) i!650 (ValueCellFull!12646 (dynLambda!2194 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34364 _values!874)))))

(assert (=> b!1089295 (= lt!485576 (getCurrentListMapNoExtraKeys!4058 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089295 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485580 () Unit!35795)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70312 (_ BitVec 64) (_ BitVec 32)) Unit!35795)

(assert (=> b!1089295 (= lt!485580 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1089296 () Bool)

(declare-fun res!726685 () Bool)

(assert (=> b!1089296 (=> (not res!726685) (not e!622212))))

(assert (=> b!1089296 (= res!726685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089297 () Bool)

(declare-fun res!726682 () Bool)

(assert (=> b!1089297 (=> (not res!726682) (not e!622212))))

(assert (=> b!1089297 (= res!726682 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34363 _keys!1070))))))

(declare-fun mapIsEmpty!41821 () Bool)

(assert (=> mapIsEmpty!41821 mapRes!41821))

(declare-fun b!1089298 () Bool)

(declare-fun res!726687 () Bool)

(assert (=> b!1089298 (=> (not res!726687) (not e!622212))))

(assert (=> b!1089298 (= res!726687 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23748))))

(declare-fun b!1089299 () Bool)

(declare-fun e!622211 () Bool)

(assert (=> b!1089299 (= e!622211 (and e!622214 mapRes!41821))))

(declare-fun condMapEmpty!41821 () Bool)

(declare-fun mapDefault!41821 () ValueCell!12646)


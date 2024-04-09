; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95902 () Bool)

(assert start!95902)

(declare-fun b_free!22519 () Bool)

(declare-fun b_next!22519 () Bool)

(assert (=> start!95902 (= b_free!22519 (not b_next!22519))))

(declare-fun tp!79407 () Bool)

(declare-fun b_and!35731 () Bool)

(assert (=> start!95902 (= tp!79407 b_and!35731)))

(declare-fun b!1085099 () Bool)

(declare-fun e!619933 () Bool)

(declare-fun e!619932 () Bool)

(assert (=> b!1085099 (= e!619933 (not e!619932))))

(declare-fun res!723538 () Bool)

(assert (=> b!1085099 (=> res!723538 e!619932)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085099 (= res!723538 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40489 0))(
  ( (V!40490 (val!13317 Int)) )
))
(declare-fun minValue!831 () V!40489)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!16950 0))(
  ( (tuple2!16951 (_1!8485 (_ BitVec 64)) (_2!8485 V!40489)) )
))
(declare-datatypes ((List!23592 0))(
  ( (Nil!23589) (Cons!23588 (h!24797 tuple2!16950) (t!33176 List!23592)) )
))
(declare-datatypes ((ListLongMap!14931 0))(
  ( (ListLongMap!14932 (toList!7481 List!23592)) )
))
(declare-fun lt!481328 () ListLongMap!14931)

(declare-fun zeroValue!831 () V!40489)

(declare-datatypes ((array!69944 0))(
  ( (array!69945 (arr!33642 (Array (_ BitVec 32) (_ BitVec 64))) (size!34179 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69944)

(declare-datatypes ((ValueCell!12551 0))(
  ( (ValueCellFull!12551 (v!15939 V!40489)) (EmptyCell!12551) )
))
(declare-datatypes ((array!69946 0))(
  ( (array!69947 (arr!33643 (Array (_ BitVec 32) ValueCell!12551)) (size!34180 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69946)

(declare-fun getCurrentListMap!4237 (array!69944 array!69946 (_ BitVec 32) (_ BitVec 32) V!40489 V!40489 (_ BitVec 32) Int) ListLongMap!14931)

(assert (=> b!1085099 (= lt!481328 (getCurrentListMap!4237 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481340 () array!69944)

(declare-fun lt!481327 () ListLongMap!14931)

(declare-fun lt!481335 () array!69946)

(assert (=> b!1085099 (= lt!481327 (getCurrentListMap!4237 lt!481340 lt!481335 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481339 () ListLongMap!14931)

(declare-fun lt!481324 () ListLongMap!14931)

(assert (=> b!1085099 (and (= lt!481339 lt!481324) (= lt!481324 lt!481339))))

(declare-fun lt!481334 () ListLongMap!14931)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!762 (ListLongMap!14931 (_ BitVec 64)) ListLongMap!14931)

(assert (=> b!1085099 (= lt!481324 (-!762 lt!481334 k!904))))

(declare-datatypes ((Unit!35639 0))(
  ( (Unit!35640) )
))
(declare-fun lt!481338 () Unit!35639)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!43 (array!69944 array!69946 (_ BitVec 32) (_ BitVec 32) V!40489 V!40489 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35639)

(assert (=> b!1085099 (= lt!481338 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!43 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3989 (array!69944 array!69946 (_ BitVec 32) (_ BitVec 32) V!40489 V!40489 (_ BitVec 32) Int) ListLongMap!14931)

(assert (=> b!1085099 (= lt!481339 (getCurrentListMapNoExtraKeys!3989 lt!481340 lt!481335 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2125 (Int (_ BitVec 64)) V!40489)

(assert (=> b!1085099 (= lt!481335 (array!69947 (store (arr!33643 _values!874) i!650 (ValueCellFull!12551 (dynLambda!2125 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34180 _values!874)))))

(assert (=> b!1085099 (= lt!481334 (getCurrentListMapNoExtraKeys!3989 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085099 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481331 () Unit!35639)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69944 (_ BitVec 64) (_ BitVec 32)) Unit!35639)

(assert (=> b!1085099 (= lt!481331 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41536 () Bool)

(declare-fun mapRes!41536 () Bool)

(declare-fun tp!79406 () Bool)

(declare-fun e!619931 () Bool)

(assert (=> mapNonEmpty!41536 (= mapRes!41536 (and tp!79406 e!619931))))

(declare-fun mapRest!41536 () (Array (_ BitVec 32) ValueCell!12551))

(declare-fun mapKey!41536 () (_ BitVec 32))

(declare-fun mapValue!41536 () ValueCell!12551)

(assert (=> mapNonEmpty!41536 (= (arr!33643 _values!874) (store mapRest!41536 mapKey!41536 mapValue!41536))))

(declare-fun b!1085100 () Bool)

(declare-fun res!723542 () Bool)

(declare-fun e!619934 () Bool)

(assert (=> b!1085100 (=> (not res!723542) (not e!619934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69944 (_ BitVec 32)) Bool)

(assert (=> b!1085100 (= res!723542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085101 () Bool)

(declare-fun res!723544 () Bool)

(assert (=> b!1085101 (=> (not res!723544) (not e!619934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085101 (= res!723544 (validKeyInArray!0 k!904))))

(declare-fun b!1085102 () Bool)

(declare-fun res!723540 () Bool)

(assert (=> b!1085102 (=> (not res!723540) (not e!619933))))

(declare-datatypes ((List!23593 0))(
  ( (Nil!23590) (Cons!23589 (h!24798 (_ BitVec 64)) (t!33177 List!23593)) )
))
(declare-fun arrayNoDuplicates!0 (array!69944 (_ BitVec 32) List!23593) Bool)

(assert (=> b!1085102 (= res!723540 (arrayNoDuplicates!0 lt!481340 #b00000000000000000000000000000000 Nil!23590))))

(declare-fun b!1085103 () Bool)

(declare-fun e!619929 () Bool)

(declare-fun e!619936 () Bool)

(assert (=> b!1085103 (= e!619929 (and e!619936 mapRes!41536))))

(declare-fun condMapEmpty!41536 () Bool)

(declare-fun mapDefault!41536 () ValueCell!12551)


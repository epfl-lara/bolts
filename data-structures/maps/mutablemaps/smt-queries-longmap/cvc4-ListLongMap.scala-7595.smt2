; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95930 () Bool)

(assert start!95930)

(declare-fun b_free!22547 () Bool)

(declare-fun b_next!22547 () Bool)

(assert (=> start!95930 (= b_free!22547 (not b_next!22547))))

(declare-fun tp!79490 () Bool)

(declare-fun b_and!35787 () Bool)

(assert (=> start!95930 (= tp!79490 b_and!35787)))

(declare-fun b!1085715 () Bool)

(declare-fun res!724010 () Bool)

(declare-fun e!620266 () Bool)

(assert (=> b!1085715 (=> (not res!724010) (not e!620266))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69998 0))(
  ( (array!69999 (arr!33669 (Array (_ BitVec 32) (_ BitVec 64))) (size!34206 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69998)

(declare-datatypes ((V!40525 0))(
  ( (V!40526 (val!13331 Int)) )
))
(declare-datatypes ((ValueCell!12565 0))(
  ( (ValueCellFull!12565 (v!15953 V!40525)) (EmptyCell!12565) )
))
(declare-datatypes ((array!70000 0))(
  ( (array!70001 (arr!33670 (Array (_ BitVec 32) ValueCell!12565)) (size!34207 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70000)

(assert (=> b!1085715 (= res!724010 (and (= (size!34207 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34206 _keys!1070) (size!34207 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085716 () Bool)

(declare-fun e!620268 () Bool)

(declare-fun tp_is_empty!26549 () Bool)

(assert (=> b!1085716 (= e!620268 tp_is_empty!26549)))

(declare-fun b!1085717 () Bool)

(declare-fun res!724001 () Bool)

(assert (=> b!1085717 (=> (not res!724001) (not e!620266))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085717 (= res!724001 (= (select (arr!33669 _keys!1070) i!650) k!904))))

(declare-fun b!1085718 () Bool)

(declare-fun e!620272 () Bool)

(declare-fun e!620265 () Bool)

(assert (=> b!1085718 (= e!620272 (not e!620265))))

(declare-fun res!724007 () Bool)

(assert (=> b!1085718 (=> res!724007 e!620265)))

(assert (=> b!1085718 (= res!724007 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16976 0))(
  ( (tuple2!16977 (_1!8498 (_ BitVec 64)) (_2!8498 V!40525)) )
))
(declare-datatypes ((List!23616 0))(
  ( (Nil!23613) (Cons!23612 (h!24821 tuple2!16976) (t!33228 List!23616)) )
))
(declare-datatypes ((ListLongMap!14957 0))(
  ( (ListLongMap!14958 (toList!7494 List!23616)) )
))
(declare-fun lt!482048 () ListLongMap!14957)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40525)

(declare-fun zeroValue!831 () V!40525)

(declare-fun getCurrentListMap!4249 (array!69998 array!70000 (_ BitVec 32) (_ BitVec 32) V!40525 V!40525 (_ BitVec 32) Int) ListLongMap!14957)

(assert (=> b!1085718 (= lt!482048 (getCurrentListMap!4249 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482053 () ListLongMap!14957)

(declare-fun lt!482042 () array!70000)

(declare-fun lt!482046 () array!69998)

(assert (=> b!1085718 (= lt!482053 (getCurrentListMap!4249 lt!482046 lt!482042 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482047 () ListLongMap!14957)

(declare-fun lt!482043 () ListLongMap!14957)

(assert (=> b!1085718 (and (= lt!482047 lt!482043) (= lt!482043 lt!482047))))

(declare-fun lt!482045 () ListLongMap!14957)

(declare-fun -!775 (ListLongMap!14957 (_ BitVec 64)) ListLongMap!14957)

(assert (=> b!1085718 (= lt!482043 (-!775 lt!482045 k!904))))

(declare-datatypes ((Unit!35665 0))(
  ( (Unit!35666) )
))
(declare-fun lt!482054 () Unit!35665)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!55 (array!69998 array!70000 (_ BitVec 32) (_ BitVec 32) V!40525 V!40525 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35665)

(assert (=> b!1085718 (= lt!482054 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!55 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4001 (array!69998 array!70000 (_ BitVec 32) (_ BitVec 32) V!40525 V!40525 (_ BitVec 32) Int) ListLongMap!14957)

(assert (=> b!1085718 (= lt!482047 (getCurrentListMapNoExtraKeys!4001 lt!482046 lt!482042 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2137 (Int (_ BitVec 64)) V!40525)

(assert (=> b!1085718 (= lt!482042 (array!70001 (store (arr!33670 _values!874) i!650 (ValueCellFull!12565 (dynLambda!2137 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34207 _values!874)))))

(assert (=> b!1085718 (= lt!482045 (getCurrentListMapNoExtraKeys!4001 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085718 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!482051 () Unit!35665)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69998 (_ BitVec 64) (_ BitVec 32)) Unit!35665)

(assert (=> b!1085718 (= lt!482051 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1085719 () Bool)

(declare-fun e!620271 () Bool)

(declare-fun mapRes!41578 () Bool)

(assert (=> b!1085719 (= e!620271 (and e!620268 mapRes!41578))))

(declare-fun condMapEmpty!41578 () Bool)

(declare-fun mapDefault!41578 () ValueCell!12565)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96112 () Bool)

(assert start!96112)

(declare-fun b_free!22729 () Bool)

(declare-fun b_next!22729 () Bool)

(assert (=> start!96112 (= b_free!22729 (not b_next!22729))))

(declare-fun tp!80037 () Bool)

(declare-fun b_and!36151 () Bool)

(assert (=> start!96112 (= tp!80037 b_and!36151)))

(declare-fun b!1089730 () Bool)

(declare-fun res!727019 () Bool)

(declare-fun e!622456 () Bool)

(assert (=> b!1089730 (=> (not res!727019) (not e!622456))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70350 0))(
  ( (array!70351 (arr!33845 (Array (_ BitVec 32) (_ BitVec 64))) (size!34382 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70350)

(declare-datatypes ((V!40769 0))(
  ( (V!40770 (val!13422 Int)) )
))
(declare-datatypes ((ValueCell!12656 0))(
  ( (ValueCellFull!12656 (v!16044 V!40769)) (EmptyCell!12656) )
))
(declare-datatypes ((array!70352 0))(
  ( (array!70353 (arr!33846 (Array (_ BitVec 32) ValueCell!12656)) (size!34383 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70352)

(assert (=> b!1089730 (= res!727019 (and (= (size!34383 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34382 _keys!1070) (size!34383 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41851 () Bool)

(declare-fun mapRes!41851 () Bool)

(assert (=> mapIsEmpty!41851 mapRes!41851))

(declare-fun b!1089731 () Bool)

(declare-fun res!727021 () Bool)

(assert (=> b!1089731 (=> (not res!727021) (not e!622456))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089731 (= res!727021 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34382 _keys!1070))))))

(declare-fun b!1089732 () Bool)

(declare-fun e!622451 () Bool)

(declare-fun tp_is_empty!26731 () Bool)

(assert (=> b!1089732 (= e!622451 tp_is_empty!26731)))

(declare-fun b!1089733 () Bool)

(declare-fun res!727025 () Bool)

(assert (=> b!1089733 (=> (not res!727025) (not e!622456))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1089733 (= res!727025 (= (select (arr!33845 _keys!1070) i!650) k!904))))

(declare-fun b!1089734 () Bool)

(declare-fun res!727023 () Bool)

(declare-fun e!622449 () Bool)

(assert (=> b!1089734 (=> (not res!727023) (not e!622449))))

(declare-datatypes ((tuple2!17130 0))(
  ( (tuple2!17131 (_1!8575 (_ BitVec 64)) (_2!8575 V!40769)) )
))
(declare-datatypes ((List!23768 0))(
  ( (Nil!23765) (Cons!23764 (h!24973 tuple2!17130) (t!33562 List!23768)) )
))
(declare-datatypes ((ListLongMap!15111 0))(
  ( (ListLongMap!15112 (toList!7571 List!23768)) )
))
(declare-fun lt!485960 () ListLongMap!15111)

(declare-fun lt!485955 () tuple2!17130)

(declare-fun lt!485962 () ListLongMap!15111)

(declare-fun +!3283 (ListLongMap!15111 tuple2!17130) ListLongMap!15111)

(assert (=> b!1089734 (= res!727023 (= lt!485960 (+!3283 lt!485962 lt!485955)))))

(declare-fun b!1089735 () Bool)

(declare-fun e!622450 () Bool)

(declare-fun e!622455 () Bool)

(assert (=> b!1089735 (= e!622450 (not e!622455))))

(declare-fun res!727022 () Bool)

(assert (=> b!1089735 (=> res!727022 e!622455)))

(assert (=> b!1089735 (= res!727022 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!485954 () ListLongMap!15111)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40769)

(declare-fun zeroValue!831 () V!40769)

(declare-fun getCurrentListMap!4312 (array!70350 array!70352 (_ BitVec 32) (_ BitVec 32) V!40769 V!40769 (_ BitVec 32) Int) ListLongMap!15111)

(assert (=> b!1089735 (= lt!485954 (getCurrentListMap!4312 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485963 () array!70352)

(declare-fun lt!485961 () array!70350)

(assert (=> b!1089735 (= lt!485960 (getCurrentListMap!4312 lt!485961 lt!485963 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485959 () ListLongMap!15111)

(assert (=> b!1089735 (and (= lt!485959 lt!485962) (= lt!485962 lt!485959))))

(declare-fun lt!485958 () ListLongMap!15111)

(declare-fun -!849 (ListLongMap!15111 (_ BitVec 64)) ListLongMap!15111)

(assert (=> b!1089735 (= lt!485962 (-!849 lt!485958 k!904))))

(declare-datatypes ((Unit!35813 0))(
  ( (Unit!35814) )
))
(declare-fun lt!485957 () Unit!35813)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!118 (array!70350 array!70352 (_ BitVec 32) (_ BitVec 32) V!40769 V!40769 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35813)

(assert (=> b!1089735 (= lt!485957 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!118 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4064 (array!70350 array!70352 (_ BitVec 32) (_ BitVec 32) V!40769 V!40769 (_ BitVec 32) Int) ListLongMap!15111)

(assert (=> b!1089735 (= lt!485959 (getCurrentListMapNoExtraKeys!4064 lt!485961 lt!485963 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2200 (Int (_ BitVec 64)) V!40769)

(assert (=> b!1089735 (= lt!485963 (array!70353 (store (arr!33846 _values!874) i!650 (ValueCellFull!12656 (dynLambda!2200 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34383 _values!874)))))

(assert (=> b!1089735 (= lt!485958 (getCurrentListMapNoExtraKeys!4064 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089735 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485956 () Unit!35813)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70350 (_ BitVec 64) (_ BitVec 32)) Unit!35813)

(assert (=> b!1089735 (= lt!485956 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1089737 () Bool)

(declare-fun res!727014 () Bool)

(assert (=> b!1089737 (=> (not res!727014) (not e!622450))))

(declare-datatypes ((List!23769 0))(
  ( (Nil!23766) (Cons!23765 (h!24974 (_ BitVec 64)) (t!33563 List!23769)) )
))
(declare-fun arrayNoDuplicates!0 (array!70350 (_ BitVec 32) List!23769) Bool)

(assert (=> b!1089737 (= res!727014 (arrayNoDuplicates!0 lt!485961 #b00000000000000000000000000000000 Nil!23766))))

(declare-fun b!1089738 () Bool)

(assert (=> b!1089738 (= e!622456 e!622450)))

(declare-fun res!727018 () Bool)

(assert (=> b!1089738 (=> (not res!727018) (not e!622450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70350 (_ BitVec 32)) Bool)

(assert (=> b!1089738 (= res!727018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485961 mask!1414))))

(assert (=> b!1089738 (= lt!485961 (array!70351 (store (arr!33845 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34382 _keys!1070)))))

(declare-fun b!1089739 () Bool)

(declare-fun e!622454 () Bool)

(declare-fun e!622452 () Bool)

(assert (=> b!1089739 (= e!622454 (and e!622452 mapRes!41851))))

(declare-fun condMapEmpty!41851 () Bool)

(declare-fun mapDefault!41851 () ValueCell!12656)


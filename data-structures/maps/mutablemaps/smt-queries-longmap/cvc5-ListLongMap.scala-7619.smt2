; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96070 () Bool)

(assert start!96070)

(declare-fun b_free!22687 () Bool)

(declare-fun b_next!22687 () Bool)

(assert (=> start!96070 (= b_free!22687 (not b_next!22687))))

(declare-fun tp!79910 () Bool)

(declare-fun b_and!36067 () Bool)

(assert (=> start!96070 (= tp!79910 b_and!36067)))

(declare-fun res!726320 () Bool)

(declare-fun e!621947 () Bool)

(assert (=> start!96070 (=> (not res!726320) (not e!621947))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96070 (= res!726320 (validMask!0 mask!1414))))

(assert (=> start!96070 e!621947))

(assert (=> start!96070 tp!79910))

(assert (=> start!96070 true))

(declare-fun tp_is_empty!26689 () Bool)

(assert (=> start!96070 tp_is_empty!26689))

(declare-datatypes ((array!70270 0))(
  ( (array!70271 (arr!33805 (Array (_ BitVec 32) (_ BitVec 64))) (size!34342 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70270)

(declare-fun array_inv!25938 (array!70270) Bool)

(assert (=> start!96070 (array_inv!25938 _keys!1070)))

(declare-datatypes ((V!40713 0))(
  ( (V!40714 (val!13401 Int)) )
))
(declare-datatypes ((ValueCell!12635 0))(
  ( (ValueCellFull!12635 (v!16023 V!40713)) (EmptyCell!12635) )
))
(declare-datatypes ((array!70272 0))(
  ( (array!70273 (arr!33806 (Array (_ BitVec 32) ValueCell!12635)) (size!34343 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70272)

(declare-fun e!621950 () Bool)

(declare-fun array_inv!25939 (array!70272) Bool)

(assert (=> start!96070 (and (array_inv!25939 _values!874) e!621950)))

(declare-fun b!1088804 () Bool)

(declare-fun res!726322 () Bool)

(assert (=> b!1088804 (=> (not res!726322) (not e!621947))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088804 (= res!726322 (and (= (size!34343 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34342 _keys!1070) (size!34343 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088805 () Bool)

(declare-fun e!621952 () Bool)

(assert (=> b!1088805 (= e!621952 true)))

(declare-datatypes ((tuple2!17092 0))(
  ( (tuple2!17093 (_1!8556 (_ BitVec 64)) (_2!8556 V!40713)) )
))
(declare-datatypes ((List!23731 0))(
  ( (Nil!23728) (Cons!23727 (h!24936 tuple2!17092) (t!33483 List!23731)) )
))
(declare-datatypes ((ListLongMap!15073 0))(
  ( (ListLongMap!15074 (toList!7552 List!23731)) )
))
(declare-fun lt!485153 () ListLongMap!15073)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485147 () ListLongMap!15073)

(declare-fun -!832 (ListLongMap!15073 (_ BitVec 64)) ListLongMap!15073)

(assert (=> b!1088805 (= (-!832 lt!485153 k!904) lt!485147)))

(declare-fun lt!485151 () ListLongMap!15073)

(declare-fun zeroValue!831 () V!40713)

(declare-datatypes ((Unit!35779 0))(
  ( (Unit!35780) )
))
(declare-fun lt!485150 () Unit!35779)

(declare-fun addRemoveCommutativeForDiffKeys!67 (ListLongMap!15073 (_ BitVec 64) V!40713 (_ BitVec 64)) Unit!35779)

(assert (=> b!1088805 (= lt!485150 (addRemoveCommutativeForDiffKeys!67 lt!485151 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088806 () Bool)

(declare-fun res!726324 () Bool)

(assert (=> b!1088806 (=> (not res!726324) (not e!621947))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088806 (= res!726324 (= (select (arr!33805 _keys!1070) i!650) k!904))))

(declare-fun b!1088807 () Bool)

(declare-fun e!621945 () Bool)

(assert (=> b!1088807 (= e!621947 e!621945)))

(declare-fun res!726321 () Bool)

(assert (=> b!1088807 (=> (not res!726321) (not e!621945))))

(declare-fun lt!485144 () array!70270)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70270 (_ BitVec 32)) Bool)

(assert (=> b!1088807 (= res!726321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485144 mask!1414))))

(assert (=> b!1088807 (= lt!485144 (array!70271 (store (arr!33805 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34342 _keys!1070)))))

(declare-fun b!1088808 () Bool)

(declare-fun e!621948 () Bool)

(assert (=> b!1088808 (= e!621948 tp_is_empty!26689)))

(declare-fun b!1088809 () Bool)

(declare-fun e!621946 () Bool)

(assert (=> b!1088809 (= e!621945 (not e!621946))))

(declare-fun res!726319 () Bool)

(assert (=> b!1088809 (=> res!726319 e!621946)))

(assert (=> b!1088809 (= res!726319 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!485145 () ListLongMap!15073)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40713)

(declare-fun getCurrentListMap!4299 (array!70270 array!70272 (_ BitVec 32) (_ BitVec 32) V!40713 V!40713 (_ BitVec 32) Int) ListLongMap!15073)

(assert (=> b!1088809 (= lt!485145 (getCurrentListMap!4299 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485142 () array!70272)

(declare-fun lt!485148 () ListLongMap!15073)

(assert (=> b!1088809 (= lt!485148 (getCurrentListMap!4299 lt!485144 lt!485142 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485141 () ListLongMap!15073)

(declare-fun lt!485146 () ListLongMap!15073)

(assert (=> b!1088809 (and (= lt!485141 lt!485146) (= lt!485146 lt!485141))))

(assert (=> b!1088809 (= lt!485146 (-!832 lt!485151 k!904))))

(declare-fun lt!485149 () Unit!35779)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!105 (array!70270 array!70272 (_ BitVec 32) (_ BitVec 32) V!40713 V!40713 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35779)

(assert (=> b!1088809 (= lt!485149 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!105 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4051 (array!70270 array!70272 (_ BitVec 32) (_ BitVec 32) V!40713 V!40713 (_ BitVec 32) Int) ListLongMap!15073)

(assert (=> b!1088809 (= lt!485141 (getCurrentListMapNoExtraKeys!4051 lt!485144 lt!485142 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2187 (Int (_ BitVec 64)) V!40713)

(assert (=> b!1088809 (= lt!485142 (array!70273 (store (arr!33806 _values!874) i!650 (ValueCellFull!12635 (dynLambda!2187 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34343 _values!874)))))

(assert (=> b!1088809 (= lt!485151 (getCurrentListMapNoExtraKeys!4051 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088809 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485152 () Unit!35779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70270 (_ BitVec 64) (_ BitVec 32)) Unit!35779)

(assert (=> b!1088809 (= lt!485152 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088810 () Bool)

(declare-fun res!726325 () Bool)

(assert (=> b!1088810 (=> (not res!726325) (not e!621945))))

(declare-datatypes ((List!23732 0))(
  ( (Nil!23729) (Cons!23728 (h!24937 (_ BitVec 64)) (t!33484 List!23732)) )
))
(declare-fun arrayNoDuplicates!0 (array!70270 (_ BitVec 32) List!23732) Bool)

(assert (=> b!1088810 (= res!726325 (arrayNoDuplicates!0 lt!485144 #b00000000000000000000000000000000 Nil!23729))))

(declare-fun b!1088811 () Bool)

(declare-fun res!726326 () Bool)

(assert (=> b!1088811 (=> (not res!726326) (not e!621947))))

(assert (=> b!1088811 (= res!726326 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23729))))

(declare-fun b!1088812 () Bool)

(declare-fun mapRes!41788 () Bool)

(assert (=> b!1088812 (= e!621950 (and e!621948 mapRes!41788))))

(declare-fun condMapEmpty!41788 () Bool)

(declare-fun mapDefault!41788 () ValueCell!12635)


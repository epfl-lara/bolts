; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96052 () Bool)

(assert start!96052)

(declare-fun b_free!22669 () Bool)

(declare-fun b_next!22669 () Bool)

(assert (=> start!96052 (= b_free!22669 (not b_next!22669))))

(declare-fun tp!79857 () Bool)

(declare-fun b_and!36031 () Bool)

(assert (=> start!96052 (= tp!79857 b_and!36031)))

(declare-fun b!1088408 () Bool)

(declare-fun e!621734 () Bool)

(declare-fun e!621735 () Bool)

(assert (=> b!1088408 (= e!621734 e!621735)))

(declare-fun res!726029 () Bool)

(assert (=> b!1088408 (=> res!726029 e!621735)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1088408 (= res!726029 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40689 0))(
  ( (V!40690 (val!13392 Int)) )
))
(declare-datatypes ((tuple2!17074 0))(
  ( (tuple2!17075 (_1!8547 (_ BitVec 64)) (_2!8547 V!40689)) )
))
(declare-datatypes ((List!23715 0))(
  ( (Nil!23712) (Cons!23711 (h!24920 tuple2!17074) (t!33449 List!23715)) )
))
(declare-datatypes ((ListLongMap!15055 0))(
  ( (ListLongMap!15056 (toList!7543 List!23715)) )
))
(declare-fun lt!484801 () ListLongMap!15055)

(declare-fun lt!484794 () ListLongMap!15055)

(assert (=> b!1088408 (= lt!484801 lt!484794)))

(declare-fun lt!484796 () ListLongMap!15055)

(declare-fun lt!484791 () tuple2!17074)

(declare-fun +!3263 (ListLongMap!15055 tuple2!17074) ListLongMap!15055)

(assert (=> b!1088408 (= lt!484794 (+!3263 lt!484796 lt!484791))))

(declare-fun lt!484795 () ListLongMap!15055)

(declare-fun lt!484792 () ListLongMap!15055)

(assert (=> b!1088408 (= lt!484795 lt!484792)))

(declare-fun lt!484797 () ListLongMap!15055)

(assert (=> b!1088408 (= lt!484792 (+!3263 lt!484797 lt!484791))))

(declare-fun lt!484800 () ListLongMap!15055)

(assert (=> b!1088408 (= lt!484801 (+!3263 lt!484800 lt!484791))))

(declare-fun zeroValue!831 () V!40689)

(assert (=> b!1088408 (= lt!484791 (tuple2!17075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088409 () Bool)

(declare-fun e!621731 () Bool)

(declare-fun tp_is_empty!26671 () Bool)

(assert (=> b!1088409 (= e!621731 tp_is_empty!26671)))

(declare-fun b!1088410 () Bool)

(declare-fun res!726025 () Bool)

(declare-fun e!621732 () Bool)

(assert (=> b!1088410 (=> (not res!726025) (not e!621732))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70234 0))(
  ( (array!70235 (arr!33787 (Array (_ BitVec 32) (_ BitVec 64))) (size!34324 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70234)

(assert (=> b!1088410 (= res!726025 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34324 _keys!1070))))))

(declare-fun b!1088411 () Bool)

(declare-fun res!726022 () Bool)

(assert (=> b!1088411 (=> (not res!726022) (not e!621732))))

(assert (=> b!1088411 (= res!726022 (= (select (arr!33787 _keys!1070) i!650) k!904))))

(declare-fun res!726026 () Bool)

(assert (=> start!96052 (=> (not res!726026) (not e!621732))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96052 (= res!726026 (validMask!0 mask!1414))))

(assert (=> start!96052 e!621732))

(assert (=> start!96052 tp!79857))

(assert (=> start!96052 true))

(assert (=> start!96052 tp_is_empty!26671))

(declare-fun array_inv!25924 (array!70234) Bool)

(assert (=> start!96052 (array_inv!25924 _keys!1070)))

(declare-datatypes ((ValueCell!12626 0))(
  ( (ValueCellFull!12626 (v!16014 V!40689)) (EmptyCell!12626) )
))
(declare-datatypes ((array!70236 0))(
  ( (array!70237 (arr!33788 (Array (_ BitVec 32) ValueCell!12626)) (size!34325 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70236)

(declare-fun e!621736 () Bool)

(declare-fun array_inv!25925 (array!70236) Bool)

(assert (=> start!96052 (and (array_inv!25925 _values!874) e!621736)))

(declare-fun b!1088412 () Bool)

(declare-fun e!621730 () Bool)

(assert (=> b!1088412 (= e!621730 (not e!621734))))

(declare-fun res!726027 () Bool)

(assert (=> b!1088412 (=> res!726027 e!621734)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088412 (= res!726027 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40689)

(declare-fun getCurrentListMap!4293 (array!70234 array!70236 (_ BitVec 32) (_ BitVec 32) V!40689 V!40689 (_ BitVec 32) Int) ListLongMap!15055)

(assert (=> b!1088412 (= lt!484795 (getCurrentListMap!4293 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484802 () array!70234)

(declare-fun lt!484790 () array!70236)

(assert (=> b!1088412 (= lt!484801 (getCurrentListMap!4293 lt!484802 lt!484790 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088412 (and (= lt!484800 lt!484796) (= lt!484796 lt!484800))))

(declare-fun -!823 (ListLongMap!15055 (_ BitVec 64)) ListLongMap!15055)

(assert (=> b!1088412 (= lt!484796 (-!823 lt!484797 k!904))))

(declare-datatypes ((Unit!35761 0))(
  ( (Unit!35762) )
))
(declare-fun lt!484793 () Unit!35761)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!99 (array!70234 array!70236 (_ BitVec 32) (_ BitVec 32) V!40689 V!40689 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35761)

(assert (=> b!1088412 (= lt!484793 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!99 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4045 (array!70234 array!70236 (_ BitVec 32) (_ BitVec 32) V!40689 V!40689 (_ BitVec 32) Int) ListLongMap!15055)

(assert (=> b!1088412 (= lt!484800 (getCurrentListMapNoExtraKeys!4045 lt!484802 lt!484790 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2181 (Int (_ BitVec 64)) V!40689)

(assert (=> b!1088412 (= lt!484790 (array!70237 (store (arr!33788 _values!874) i!650 (ValueCellFull!12626 (dynLambda!2181 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34325 _values!874)))))

(assert (=> b!1088412 (= lt!484797 (getCurrentListMapNoExtraKeys!4045 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088412 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484799 () Unit!35761)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70234 (_ BitVec 64) (_ BitVec 32)) Unit!35761)

(assert (=> b!1088412 (= lt!484799 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088413 () Bool)

(declare-fun res!726024 () Bool)

(assert (=> b!1088413 (=> (not res!726024) (not e!621732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70234 (_ BitVec 32)) Bool)

(assert (=> b!1088413 (= res!726024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088414 () Bool)

(declare-fun e!621729 () Bool)

(assert (=> b!1088414 (= e!621729 tp_is_empty!26671)))

(declare-fun b!1088415 () Bool)

(assert (=> b!1088415 (= e!621735 (bvsle #b00000000000000000000000000000000 (size!34324 _keys!1070)))))

(assert (=> b!1088415 (= (-!823 lt!484792 k!904) lt!484794)))

(declare-fun lt!484798 () Unit!35761)

(declare-fun addRemoveCommutativeForDiffKeys!60 (ListLongMap!15055 (_ BitVec 64) V!40689 (_ BitVec 64)) Unit!35761)

(assert (=> b!1088415 (= lt!484798 (addRemoveCommutativeForDiffKeys!60 lt!484797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088416 () Bool)

(declare-fun mapRes!41761 () Bool)

(assert (=> b!1088416 (= e!621736 (and e!621729 mapRes!41761))))

(declare-fun condMapEmpty!41761 () Bool)

(declare-fun mapDefault!41761 () ValueCell!12626)


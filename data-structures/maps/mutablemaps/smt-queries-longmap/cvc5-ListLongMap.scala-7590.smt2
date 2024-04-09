; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95896 () Bool)

(assert start!95896)

(declare-fun b_free!22513 () Bool)

(declare-fun b_next!22513 () Bool)

(assert (=> start!95896 (= b_free!22513 (not b_next!22513))))

(declare-fun tp!79389 () Bool)

(declare-fun b_and!35719 () Bool)

(assert (=> start!95896 (= tp!79389 b_and!35719)))

(declare-fun b!1084967 () Bool)

(declare-fun e!619859 () Bool)

(declare-fun e!619864 () Bool)

(assert (=> b!1084967 (= e!619859 e!619864)))

(declare-fun res!723444 () Bool)

(assert (=> b!1084967 (=> res!723444 e!619864)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1084967 (= res!723444 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40481 0))(
  ( (V!40482 (val!13314 Int)) )
))
(declare-datatypes ((tuple2!16944 0))(
  ( (tuple2!16945 (_1!8482 (_ BitVec 64)) (_2!8482 V!40481)) )
))
(declare-datatypes ((List!23586 0))(
  ( (Nil!23583) (Cons!23582 (h!24791 tuple2!16944) (t!33164 List!23586)) )
))
(declare-datatypes ((ListLongMap!14925 0))(
  ( (ListLongMap!14926 (toList!7478 List!23586)) )
))
(declare-fun lt!481185 () ListLongMap!14925)

(declare-fun lt!481172 () ListLongMap!14925)

(assert (=> b!1084967 (= lt!481185 lt!481172)))

(declare-fun lt!481173 () ListLongMap!14925)

(declare-fun -!759 (ListLongMap!14925 (_ BitVec 64)) ListLongMap!14925)

(assert (=> b!1084967 (= lt!481185 (-!759 lt!481173 k!904))))

(declare-fun lt!481175 () ListLongMap!14925)

(declare-datatypes ((Unit!35633 0))(
  ( (Unit!35634) )
))
(declare-fun lt!481179 () Unit!35633)

(declare-fun zeroValue!831 () V!40481)

(declare-fun addRemoveCommutativeForDiffKeys!6 (ListLongMap!14925 (_ BitVec 64) V!40481 (_ BitVec 64)) Unit!35633)

(assert (=> b!1084967 (= lt!481179 (addRemoveCommutativeForDiffKeys!6 lt!481175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!481180 () ListLongMap!14925)

(declare-fun lt!481176 () tuple2!16944)

(declare-fun +!3210 (ListLongMap!14925 tuple2!16944) ListLongMap!14925)

(assert (=> b!1084967 (= lt!481180 (+!3210 lt!481172 lt!481176))))

(declare-fun lt!481183 () ListLongMap!14925)

(declare-fun lt!481174 () tuple2!16944)

(assert (=> b!1084967 (= lt!481172 (+!3210 lt!481183 lt!481174))))

(declare-fun lt!481187 () ListLongMap!14925)

(declare-fun lt!481177 () ListLongMap!14925)

(assert (=> b!1084967 (= lt!481187 lt!481177)))

(assert (=> b!1084967 (= lt!481177 (+!3210 lt!481173 lt!481176))))

(assert (=> b!1084967 (= lt!481173 (+!3210 lt!481175 lt!481174))))

(declare-fun lt!481186 () ListLongMap!14925)

(assert (=> b!1084967 (= lt!481180 (+!3210 (+!3210 lt!481186 lt!481174) lt!481176))))

(declare-fun minValue!831 () V!40481)

(assert (=> b!1084967 (= lt!481176 (tuple2!16945 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1084967 (= lt!481174 (tuple2!16945 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1084968 () Bool)

(declare-fun res!723442 () Bool)

(declare-fun e!619862 () Bool)

(assert (=> b!1084968 (=> (not res!723442) (not e!619862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084968 (= res!723442 (validKeyInArray!0 k!904))))

(declare-fun b!1084969 () Bool)

(declare-fun e!619861 () Bool)

(declare-fun tp_is_empty!26515 () Bool)

(assert (=> b!1084969 (= e!619861 tp_is_empty!26515)))

(declare-fun res!723440 () Bool)

(assert (=> start!95896 (=> (not res!723440) (not e!619862))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95896 (= res!723440 (validMask!0 mask!1414))))

(assert (=> start!95896 e!619862))

(assert (=> start!95896 tp!79389))

(assert (=> start!95896 true))

(assert (=> start!95896 tp_is_empty!26515))

(declare-datatypes ((array!69932 0))(
  ( (array!69933 (arr!33636 (Array (_ BitVec 32) (_ BitVec 64))) (size!34173 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69932)

(declare-fun array_inv!25810 (array!69932) Bool)

(assert (=> start!95896 (array_inv!25810 _keys!1070)))

(declare-datatypes ((ValueCell!12548 0))(
  ( (ValueCellFull!12548 (v!15936 V!40481)) (EmptyCell!12548) )
))
(declare-datatypes ((array!69934 0))(
  ( (array!69935 (arr!33637 (Array (_ BitVec 32) ValueCell!12548)) (size!34174 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69934)

(declare-fun e!619858 () Bool)

(declare-fun array_inv!25811 (array!69934) Bool)

(assert (=> start!95896 (and (array_inv!25811 _values!874) e!619858)))

(declare-fun b!1084970 () Bool)

(declare-fun res!723448 () Bool)

(declare-fun e!619863 () Bool)

(assert (=> b!1084970 (=> (not res!723448) (not e!619863))))

(declare-fun lt!481181 () array!69932)

(declare-datatypes ((List!23587 0))(
  ( (Nil!23584) (Cons!23583 (h!24792 (_ BitVec 64)) (t!33165 List!23587)) )
))
(declare-fun arrayNoDuplicates!0 (array!69932 (_ BitVec 32) List!23587) Bool)

(assert (=> b!1084970 (= res!723448 (arrayNoDuplicates!0 lt!481181 #b00000000000000000000000000000000 Nil!23584))))

(declare-fun b!1084971 () Bool)

(declare-fun res!723441 () Bool)

(assert (=> b!1084971 (=> (not res!723441) (not e!619862))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084971 (= res!723441 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34173 _keys!1070))))))

(declare-fun b!1084972 () Bool)

(assert (=> b!1084972 (= e!619863 (not e!619859))))

(declare-fun res!723449 () Bool)

(assert (=> b!1084972 (=> res!723449 e!619859)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084972 (= res!723449 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4235 (array!69932 array!69934 (_ BitVec 32) (_ BitVec 32) V!40481 V!40481 (_ BitVec 32) Int) ListLongMap!14925)

(assert (=> b!1084972 (= lt!481187 (getCurrentListMap!4235 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481171 () array!69934)

(assert (=> b!1084972 (= lt!481180 (getCurrentListMap!4235 lt!481181 lt!481171 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1084972 (and (= lt!481186 lt!481183) (= lt!481183 lt!481186))))

(assert (=> b!1084972 (= lt!481183 (-!759 lt!481175 k!904))))

(declare-fun lt!481182 () Unit!35633)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!41 (array!69932 array!69934 (_ BitVec 32) (_ BitVec 32) V!40481 V!40481 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35633)

(assert (=> b!1084972 (= lt!481182 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!41 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3987 (array!69932 array!69934 (_ BitVec 32) (_ BitVec 32) V!40481 V!40481 (_ BitVec 32) Int) ListLongMap!14925)

(assert (=> b!1084972 (= lt!481186 (getCurrentListMapNoExtraKeys!3987 lt!481181 lt!481171 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2123 (Int (_ BitVec 64)) V!40481)

(assert (=> b!1084972 (= lt!481171 (array!69935 (store (arr!33637 _values!874) i!650 (ValueCellFull!12548 (dynLambda!2123 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34174 _values!874)))))

(assert (=> b!1084972 (= lt!481175 (getCurrentListMapNoExtraKeys!3987 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084972 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481178 () Unit!35633)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69932 (_ BitVec 64) (_ BitVec 32)) Unit!35633)

(assert (=> b!1084972 (= lt!481178 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084973 () Bool)

(assert (=> b!1084973 (= e!619864 true)))

(assert (=> b!1084973 (= (-!759 lt!481177 k!904) (+!3210 lt!481185 lt!481176))))

(declare-fun lt!481184 () Unit!35633)

(assert (=> b!1084973 (= lt!481184 (addRemoveCommutativeForDiffKeys!6 lt!481173 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun mapIsEmpty!41527 () Bool)

(declare-fun mapRes!41527 () Bool)

(assert (=> mapIsEmpty!41527 mapRes!41527))

(declare-fun b!1084974 () Bool)

(declare-fun res!723445 () Bool)

(assert (=> b!1084974 (=> (not res!723445) (not e!619862))))

(assert (=> b!1084974 (= res!723445 (and (= (size!34174 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34173 _keys!1070) (size!34174 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084975 () Bool)

(assert (=> b!1084975 (= e!619862 e!619863)))

(declare-fun res!723443 () Bool)

(assert (=> b!1084975 (=> (not res!723443) (not e!619863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69932 (_ BitVec 32)) Bool)

(assert (=> b!1084975 (= res!723443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481181 mask!1414))))

(assert (=> b!1084975 (= lt!481181 (array!69933 (store (arr!33636 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34173 _keys!1070)))))

(declare-fun b!1084976 () Bool)

(declare-fun res!723447 () Bool)

(assert (=> b!1084976 (=> (not res!723447) (not e!619862))))

(assert (=> b!1084976 (= res!723447 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23584))))

(declare-fun b!1084977 () Bool)

(declare-fun e!619860 () Bool)

(assert (=> b!1084977 (= e!619858 (and e!619860 mapRes!41527))))

(declare-fun condMapEmpty!41527 () Bool)

(declare-fun mapDefault!41527 () ValueCell!12548)


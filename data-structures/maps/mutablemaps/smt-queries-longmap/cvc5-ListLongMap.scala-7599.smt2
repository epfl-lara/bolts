; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95950 () Bool)

(assert start!95950)

(declare-fun b_free!22567 () Bool)

(declare-fun b_next!22567 () Bool)

(assert (=> start!95950 (= b_free!22567 (not b_next!22567))))

(declare-fun tp!79551 () Bool)

(declare-fun b_and!35827 () Bool)

(assert (=> start!95950 (= tp!79551 b_and!35827)))

(declare-fun b!1086155 () Bool)

(declare-fun res!724338 () Bool)

(declare-fun e!620505 () Bool)

(assert (=> b!1086155 (=> (not res!724338) (not e!620505))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086155 (= res!724338 (validKeyInArray!0 k!904))))

(declare-fun b!1086156 () Bool)

(declare-fun res!724337 () Bool)

(declare-fun e!620506 () Bool)

(assert (=> b!1086156 (=> (not res!724337) (not e!620506))))

(declare-datatypes ((array!70034 0))(
  ( (array!70035 (arr!33687 (Array (_ BitVec 32) (_ BitVec 64))) (size!34224 (_ BitVec 32))) )
))
(declare-fun lt!482559 () array!70034)

(declare-datatypes ((List!23626 0))(
  ( (Nil!23623) (Cons!23622 (h!24831 (_ BitVec 64)) (t!33258 List!23626)) )
))
(declare-fun arrayNoDuplicates!0 (array!70034 (_ BitVec 32) List!23626) Bool)

(assert (=> b!1086156 (= res!724337 (arrayNoDuplicates!0 lt!482559 #b00000000000000000000000000000000 Nil!23623))))

(declare-fun b!1086157 () Bool)

(declare-fun res!724334 () Bool)

(assert (=> b!1086157 (=> (not res!724334) (not e!620505))))

(declare-fun _keys!1070 () array!70034)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086157 (= res!724334 (= (select (arr!33687 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41608 () Bool)

(declare-fun mapRes!41608 () Bool)

(assert (=> mapIsEmpty!41608 mapRes!41608))

(declare-fun b!1086158 () Bool)

(declare-fun res!724331 () Bool)

(assert (=> b!1086158 (=> (not res!724331) (not e!620505))))

(assert (=> b!1086158 (= res!724331 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34224 _keys!1070))))))

(declare-fun b!1086159 () Bool)

(declare-fun e!620510 () Bool)

(declare-fun e!620509 () Bool)

(assert (=> b!1086159 (= e!620510 e!620509)))

(declare-fun res!724332 () Bool)

(assert (=> b!1086159 (=> res!724332 e!620509)))

(assert (=> b!1086159 (= res!724332 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40553 0))(
  ( (V!40554 (val!13341 Int)) )
))
(declare-datatypes ((tuple2!16986 0))(
  ( (tuple2!16987 (_1!8503 (_ BitVec 64)) (_2!8503 V!40553)) )
))
(declare-datatypes ((List!23627 0))(
  ( (Nil!23624) (Cons!23623 (h!24832 tuple2!16986) (t!33259 List!23627)) )
))
(declare-datatypes ((ListLongMap!14967 0))(
  ( (ListLongMap!14968 (toList!7499 List!23627)) )
))
(declare-fun lt!482561 () ListLongMap!14967)

(declare-fun lt!482563 () ListLongMap!14967)

(assert (=> b!1086159 (= lt!482561 lt!482563)))

(declare-fun lt!482558 () ListLongMap!14967)

(declare-fun -!780 (ListLongMap!14967 (_ BitVec 64)) ListLongMap!14967)

(assert (=> b!1086159 (= lt!482561 (-!780 lt!482558 k!904))))

(declare-fun lt!482557 () ListLongMap!14967)

(declare-datatypes ((Unit!35675 0))(
  ( (Unit!35676) )
))
(declare-fun lt!482553 () Unit!35675)

(declare-fun zeroValue!831 () V!40553)

(declare-fun addRemoveCommutativeForDiffKeys!24 (ListLongMap!14967 (_ BitVec 64) V!40553 (_ BitVec 64)) Unit!35675)

(assert (=> b!1086159 (= lt!482553 (addRemoveCommutativeForDiffKeys!24 lt!482557 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!482564 () ListLongMap!14967)

(declare-fun lt!482555 () tuple2!16986)

(declare-fun +!3228 (ListLongMap!14967 tuple2!16986) ListLongMap!14967)

(assert (=> b!1086159 (= lt!482564 (+!3228 lt!482563 lt!482555))))

(declare-fun lt!482554 () ListLongMap!14967)

(declare-fun lt!482560 () tuple2!16986)

(assert (=> b!1086159 (= lt!482563 (+!3228 lt!482554 lt!482560))))

(declare-fun lt!482550 () ListLongMap!14967)

(declare-fun lt!482552 () ListLongMap!14967)

(assert (=> b!1086159 (= lt!482550 lt!482552)))

(assert (=> b!1086159 (= lt!482552 (+!3228 lt!482558 lt!482555))))

(assert (=> b!1086159 (= lt!482558 (+!3228 lt!482557 lt!482560))))

(declare-fun lt!482551 () ListLongMap!14967)

(assert (=> b!1086159 (= lt!482564 (+!3228 (+!3228 lt!482551 lt!482560) lt!482555))))

(declare-fun minValue!831 () V!40553)

(assert (=> b!1086159 (= lt!482555 (tuple2!16987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086159 (= lt!482560 (tuple2!16987 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086160 () Bool)

(declare-fun res!724330 () Bool)

(assert (=> b!1086160 (=> (not res!724330) (not e!620505))))

(assert (=> b!1086160 (= res!724330 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23623))))

(declare-fun res!724339 () Bool)

(assert (=> start!95950 (=> (not res!724339) (not e!620505))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95950 (= res!724339 (validMask!0 mask!1414))))

(assert (=> start!95950 e!620505))

(assert (=> start!95950 tp!79551))

(assert (=> start!95950 true))

(declare-fun tp_is_empty!26569 () Bool)

(assert (=> start!95950 tp_is_empty!26569))

(declare-fun array_inv!25846 (array!70034) Bool)

(assert (=> start!95950 (array_inv!25846 _keys!1070)))

(declare-datatypes ((ValueCell!12575 0))(
  ( (ValueCellFull!12575 (v!15963 V!40553)) (EmptyCell!12575) )
))
(declare-datatypes ((array!70036 0))(
  ( (array!70037 (arr!33688 (Array (_ BitVec 32) ValueCell!12575)) (size!34225 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70036)

(declare-fun e!620511 () Bool)

(declare-fun array_inv!25847 (array!70036) Bool)

(assert (=> start!95950 (and (array_inv!25847 _values!874) e!620511)))

(declare-fun b!1086161 () Bool)

(declare-fun e!620512 () Bool)

(assert (=> b!1086161 (= e!620512 tp_is_empty!26569)))

(declare-fun b!1086162 () Bool)

(declare-fun res!724336 () Bool)

(assert (=> b!1086162 (=> (not res!724336) (not e!620505))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086162 (= res!724336 (and (= (size!34225 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34224 _keys!1070) (size!34225 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086163 () Bool)

(assert (=> b!1086163 (= e!620509 true)))

(assert (=> b!1086163 (= (-!780 lt!482552 k!904) (+!3228 lt!482561 lt!482555))))

(declare-fun lt!482549 () Unit!35675)

(assert (=> b!1086163 (= lt!482549 (addRemoveCommutativeForDiffKeys!24 lt!482558 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086164 () Bool)

(assert (=> b!1086164 (= e!620506 (not e!620510))))

(declare-fun res!724333 () Bool)

(assert (=> b!1086164 (=> res!724333 e!620510)))

(assert (=> b!1086164 (= res!724333 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4254 (array!70034 array!70036 (_ BitVec 32) (_ BitVec 32) V!40553 V!40553 (_ BitVec 32) Int) ListLongMap!14967)

(assert (=> b!1086164 (= lt!482550 (getCurrentListMap!4254 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482562 () array!70036)

(assert (=> b!1086164 (= lt!482564 (getCurrentListMap!4254 lt!482559 lt!482562 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086164 (and (= lt!482551 lt!482554) (= lt!482554 lt!482551))))

(assert (=> b!1086164 (= lt!482554 (-!780 lt!482557 k!904))))

(declare-fun lt!482548 () Unit!35675)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!60 (array!70034 array!70036 (_ BitVec 32) (_ BitVec 32) V!40553 V!40553 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35675)

(assert (=> b!1086164 (= lt!482548 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!60 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4006 (array!70034 array!70036 (_ BitVec 32) (_ BitVec 32) V!40553 V!40553 (_ BitVec 32) Int) ListLongMap!14967)

(assert (=> b!1086164 (= lt!482551 (getCurrentListMapNoExtraKeys!4006 lt!482559 lt!482562 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2142 (Int (_ BitVec 64)) V!40553)

(assert (=> b!1086164 (= lt!482562 (array!70037 (store (arr!33688 _values!874) i!650 (ValueCellFull!12575 (dynLambda!2142 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34225 _values!874)))))

(assert (=> b!1086164 (= lt!482557 (getCurrentListMapNoExtraKeys!4006 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086164 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!482556 () Unit!35675)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70034 (_ BitVec 64) (_ BitVec 32)) Unit!35675)

(assert (=> b!1086164 (= lt!482556 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086165 () Bool)

(declare-fun res!724340 () Bool)

(assert (=> b!1086165 (=> (not res!724340) (not e!620505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70034 (_ BitVec 32)) Bool)

(assert (=> b!1086165 (= res!724340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086166 () Bool)

(declare-fun e!620507 () Bool)

(assert (=> b!1086166 (= e!620507 tp_is_empty!26569)))

(declare-fun b!1086167 () Bool)

(assert (=> b!1086167 (= e!620511 (and e!620512 mapRes!41608))))

(declare-fun condMapEmpty!41608 () Bool)

(declare-fun mapDefault!41608 () ValueCell!12575)


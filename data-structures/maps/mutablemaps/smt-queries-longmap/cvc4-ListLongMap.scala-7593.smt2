; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95918 () Bool)

(assert start!95918)

(declare-fun b_free!22535 () Bool)

(declare-fun b_next!22535 () Bool)

(assert (=> start!95918 (= b_free!22535 (not b_next!22535))))

(declare-fun tp!79454 () Bool)

(declare-fun b_and!35763 () Bool)

(assert (=> start!95918 (= tp!79454 b_and!35763)))

(declare-fun b!1085451 () Bool)

(declare-fun res!723811 () Bool)

(declare-fun e!620122 () Bool)

(assert (=> b!1085451 (=> (not res!723811) (not e!620122))))

(declare-datatypes ((array!69974 0))(
  ( (array!69975 (arr!33657 (Array (_ BitVec 32) (_ BitVec 64))) (size!34194 (_ BitVec 32))) )
))
(declare-fun lt!481744 () array!69974)

(declare-datatypes ((List!23605 0))(
  ( (Nil!23602) (Cons!23601 (h!24810 (_ BitVec 64)) (t!33205 List!23605)) )
))
(declare-fun arrayNoDuplicates!0 (array!69974 (_ BitVec 32) List!23605) Bool)

(assert (=> b!1085451 (= res!723811 (arrayNoDuplicates!0 lt!481744 #b00000000000000000000000000000000 Nil!23602))))

(declare-fun b!1085452 () Bool)

(declare-fun e!620126 () Bool)

(assert (=> b!1085452 (= e!620122 (not e!620126))))

(declare-fun res!723802 () Bool)

(assert (=> b!1085452 (=> res!723802 e!620126)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085452 (= res!723802 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69974)

(declare-datatypes ((V!40509 0))(
  ( (V!40510 (val!13325 Int)) )
))
(declare-datatypes ((ValueCell!12559 0))(
  ( (ValueCellFull!12559 (v!15947 V!40509)) (EmptyCell!12559) )
))
(declare-datatypes ((array!69976 0))(
  ( (array!69977 (arr!33658 (Array (_ BitVec 32) ValueCell!12559)) (size!34195 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69976)

(declare-fun minValue!831 () V!40509)

(declare-datatypes ((tuple2!16964 0))(
  ( (tuple2!16965 (_1!8492 (_ BitVec 64)) (_2!8492 V!40509)) )
))
(declare-datatypes ((List!23606 0))(
  ( (Nil!23603) (Cons!23602 (h!24811 tuple2!16964) (t!33206 List!23606)) )
))
(declare-datatypes ((ListLongMap!14945 0))(
  ( (ListLongMap!14946 (toList!7488 List!23606)) )
))
(declare-fun lt!481740 () ListLongMap!14945)

(declare-fun zeroValue!831 () V!40509)

(declare-fun getCurrentListMap!4243 (array!69974 array!69976 (_ BitVec 32) (_ BitVec 32) V!40509 V!40509 (_ BitVec 32) Int) ListLongMap!14945)

(assert (=> b!1085452 (= lt!481740 (getCurrentListMap!4243 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481735 () array!69976)

(declare-fun lt!481746 () ListLongMap!14945)

(assert (=> b!1085452 (= lt!481746 (getCurrentListMap!4243 lt!481744 lt!481735 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481733 () ListLongMap!14945)

(declare-fun lt!481737 () ListLongMap!14945)

(assert (=> b!1085452 (and (= lt!481733 lt!481737) (= lt!481737 lt!481733))))

(declare-fun lt!481732 () ListLongMap!14945)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!769 (ListLongMap!14945 (_ BitVec 64)) ListLongMap!14945)

(assert (=> b!1085452 (= lt!481737 (-!769 lt!481732 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35653 0))(
  ( (Unit!35654) )
))
(declare-fun lt!481738 () Unit!35653)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!49 (array!69974 array!69976 (_ BitVec 32) (_ BitVec 32) V!40509 V!40509 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35653)

(assert (=> b!1085452 (= lt!481738 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!49 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3995 (array!69974 array!69976 (_ BitVec 32) (_ BitVec 32) V!40509 V!40509 (_ BitVec 32) Int) ListLongMap!14945)

(assert (=> b!1085452 (= lt!481733 (getCurrentListMapNoExtraKeys!3995 lt!481744 lt!481735 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2131 (Int (_ BitVec 64)) V!40509)

(assert (=> b!1085452 (= lt!481735 (array!69977 (store (arr!33658 _values!874) i!650 (ValueCellFull!12559 (dynLambda!2131 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34195 _values!874)))))

(assert (=> b!1085452 (= lt!481732 (getCurrentListMapNoExtraKeys!3995 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085452 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481741 () Unit!35653)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69974 (_ BitVec 64) (_ BitVec 32)) Unit!35653)

(assert (=> b!1085452 (= lt!481741 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1085453 () Bool)

(declare-fun res!723804 () Bool)

(declare-fun e!620127 () Bool)

(assert (=> b!1085453 (=> (not res!723804) (not e!620127))))

(assert (=> b!1085453 (= res!723804 (and (= (size!34195 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34194 _keys!1070) (size!34195 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085454 () Bool)

(assert (=> b!1085454 (= e!620127 e!620122)))

(declare-fun res!723803 () Bool)

(assert (=> b!1085454 (=> (not res!723803) (not e!620122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69974 (_ BitVec 32)) Bool)

(assert (=> b!1085454 (= res!723803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481744 mask!1414))))

(assert (=> b!1085454 (= lt!481744 (array!69975 (store (arr!33657 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34194 _keys!1070)))))

(declare-fun b!1085455 () Bool)

(declare-fun e!620128 () Bool)

(assert (=> b!1085455 (= e!620128 true)))

(declare-fun lt!481736 () tuple2!16964)

(declare-fun lt!481739 () ListLongMap!14945)

(declare-fun lt!481748 () ListLongMap!14945)

(declare-fun +!3219 (ListLongMap!14945 tuple2!16964) ListLongMap!14945)

(assert (=> b!1085455 (= (-!769 lt!481748 k!904) (+!3219 lt!481739 lt!481736))))

(declare-fun lt!481734 () Unit!35653)

(declare-fun lt!481747 () ListLongMap!14945)

(declare-fun addRemoveCommutativeForDiffKeys!15 (ListLongMap!14945 (_ BitVec 64) V!40509 (_ BitVec 64)) Unit!35653)

(assert (=> b!1085455 (= lt!481734 (addRemoveCommutativeForDiffKeys!15 lt!481747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1085456 () Bool)

(declare-fun res!723810 () Bool)

(assert (=> b!1085456 (=> (not res!723810) (not e!620127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085456 (= res!723810 (validKeyInArray!0 k!904))))

(declare-fun b!1085457 () Bool)

(declare-fun res!723812 () Bool)

(assert (=> b!1085457 (=> (not res!723812) (not e!620127))))

(assert (=> b!1085457 (= res!723812 (= (select (arr!33657 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41560 () Bool)

(declare-fun mapRes!41560 () Bool)

(assert (=> mapIsEmpty!41560 mapRes!41560))

(declare-fun b!1085459 () Bool)

(declare-fun e!620123 () Bool)

(declare-fun e!620121 () Bool)

(assert (=> b!1085459 (= e!620123 (and e!620121 mapRes!41560))))

(declare-fun condMapEmpty!41560 () Bool)

(declare-fun mapDefault!41560 () ValueCell!12559)


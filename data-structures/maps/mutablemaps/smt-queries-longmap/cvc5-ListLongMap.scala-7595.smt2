; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95926 () Bool)

(assert start!95926)

(declare-fun b_free!22543 () Bool)

(declare-fun b_next!22543 () Bool)

(assert (=> start!95926 (= b_free!22543 (not b_next!22543))))

(declare-fun tp!79478 () Bool)

(declare-fun b_and!35779 () Bool)

(assert (=> start!95926 (= tp!79478 b_and!35779)))

(declare-fun b!1085627 () Bool)

(declare-fun res!723941 () Bool)

(declare-fun e!620220 () Bool)

(assert (=> b!1085627 (=> (not res!723941) (not e!620220))))

(declare-datatypes ((array!69990 0))(
  ( (array!69991 (arr!33665 (Array (_ BitVec 32) (_ BitVec 64))) (size!34202 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69990)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085627 (= res!723941 (= (select (arr!33665 _keys!1070) i!650) k!904))))

(declare-fun res!723944 () Bool)

(assert (=> start!95926 (=> (not res!723944) (not e!620220))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95926 (= res!723944 (validMask!0 mask!1414))))

(assert (=> start!95926 e!620220))

(assert (=> start!95926 tp!79478))

(assert (=> start!95926 true))

(declare-fun tp_is_empty!26545 () Bool)

(assert (=> start!95926 tp_is_empty!26545))

(declare-fun array_inv!25830 (array!69990) Bool)

(assert (=> start!95926 (array_inv!25830 _keys!1070)))

(declare-datatypes ((V!40521 0))(
  ( (V!40522 (val!13329 Int)) )
))
(declare-datatypes ((ValueCell!12563 0))(
  ( (ValueCellFull!12563 (v!15951 V!40521)) (EmptyCell!12563) )
))
(declare-datatypes ((array!69992 0))(
  ( (array!69993 (arr!33666 (Array (_ BitVec 32) ValueCell!12563)) (size!34203 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69992)

(declare-fun e!620217 () Bool)

(declare-fun array_inv!25831 (array!69992) Bool)

(assert (=> start!95926 (and (array_inv!25831 _values!874) e!620217)))

(declare-fun b!1085628 () Bool)

(declare-fun e!620221 () Bool)

(assert (=> b!1085628 (= e!620221 tp_is_empty!26545)))

(declare-fun b!1085629 () Bool)

(declare-fun res!723935 () Bool)

(assert (=> b!1085629 (=> (not res!723935) (not e!620220))))

(declare-datatypes ((List!23612 0))(
  ( (Nil!23609) (Cons!23608 (h!24817 (_ BitVec 64)) (t!33220 List!23612)) )
))
(declare-fun arrayNoDuplicates!0 (array!69990 (_ BitVec 32) List!23612) Bool)

(assert (=> b!1085629 (= res!723935 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23609))))

(declare-fun b!1085630 () Bool)

(declare-fun res!723934 () Bool)

(assert (=> b!1085630 (=> (not res!723934) (not e!620220))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085630 (= res!723934 (and (= (size!34203 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34202 _keys!1070) (size!34203 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085631 () Bool)

(declare-fun res!723942 () Bool)

(assert (=> b!1085631 (=> (not res!723942) (not e!620220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69990 (_ BitVec 32)) Bool)

(assert (=> b!1085631 (= res!723942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085632 () Bool)

(declare-fun res!723940 () Bool)

(assert (=> b!1085632 (=> (not res!723940) (not e!620220))))

(assert (=> b!1085632 (= res!723940 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34202 _keys!1070))))))

(declare-fun b!1085633 () Bool)

(declare-fun e!620218 () Bool)

(declare-fun e!620223 () Bool)

(assert (=> b!1085633 (= e!620218 (not e!620223))))

(declare-fun res!723937 () Bool)

(assert (=> b!1085633 (=> res!723937 e!620223)))

(assert (=> b!1085633 (= res!723937 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun minValue!831 () V!40521)

(declare-datatypes ((tuple2!16972 0))(
  ( (tuple2!16973 (_1!8496 (_ BitVec 64)) (_2!8496 V!40521)) )
))
(declare-datatypes ((List!23613 0))(
  ( (Nil!23610) (Cons!23609 (h!24818 tuple2!16972) (t!33221 List!23613)) )
))
(declare-datatypes ((ListLongMap!14953 0))(
  ( (ListLongMap!14954 (toList!7492 List!23613)) )
))
(declare-fun lt!481951 () ListLongMap!14953)

(declare-fun zeroValue!831 () V!40521)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4247 (array!69990 array!69992 (_ BitVec 32) (_ BitVec 32) V!40521 V!40521 (_ BitVec 32) Int) ListLongMap!14953)

(assert (=> b!1085633 (= lt!481951 (getCurrentListMap!4247 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481949 () array!69992)

(declare-fun lt!481952 () ListLongMap!14953)

(declare-fun lt!481939 () array!69990)

(assert (=> b!1085633 (= lt!481952 (getCurrentListMap!4247 lt!481939 lt!481949 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481944 () ListLongMap!14953)

(declare-fun lt!481946 () ListLongMap!14953)

(assert (=> b!1085633 (and (= lt!481944 lt!481946) (= lt!481946 lt!481944))))

(declare-fun lt!481943 () ListLongMap!14953)

(declare-fun -!773 (ListLongMap!14953 (_ BitVec 64)) ListLongMap!14953)

(assert (=> b!1085633 (= lt!481946 (-!773 lt!481943 k!904))))

(declare-datatypes ((Unit!35661 0))(
  ( (Unit!35662) )
))
(declare-fun lt!481937 () Unit!35661)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!53 (array!69990 array!69992 (_ BitVec 32) (_ BitVec 32) V!40521 V!40521 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35661)

(assert (=> b!1085633 (= lt!481937 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!53 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3999 (array!69990 array!69992 (_ BitVec 32) (_ BitVec 32) V!40521 V!40521 (_ BitVec 32) Int) ListLongMap!14953)

(assert (=> b!1085633 (= lt!481944 (getCurrentListMapNoExtraKeys!3999 lt!481939 lt!481949 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2135 (Int (_ BitVec 64)) V!40521)

(assert (=> b!1085633 (= lt!481949 (array!69993 (store (arr!33666 _values!874) i!650 (ValueCellFull!12563 (dynLambda!2135 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34203 _values!874)))))

(assert (=> b!1085633 (= lt!481943 (getCurrentListMapNoExtraKeys!3999 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085633 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481940 () Unit!35661)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69990 (_ BitVec 64) (_ BitVec 32)) Unit!35661)

(assert (=> b!1085633 (= lt!481940 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapIsEmpty!41572 () Bool)

(declare-fun mapRes!41572 () Bool)

(assert (=> mapIsEmpty!41572 mapRes!41572))

(declare-fun b!1085634 () Bool)

(declare-fun e!620222 () Bool)

(assert (=> b!1085634 (= e!620222 tp_is_empty!26545)))

(declare-fun b!1085635 () Bool)

(assert (=> b!1085635 (= e!620220 e!620218)))

(declare-fun res!723938 () Bool)

(assert (=> b!1085635 (=> (not res!723938) (not e!620218))))

(assert (=> b!1085635 (= res!723938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481939 mask!1414))))

(assert (=> b!1085635 (= lt!481939 (array!69991 (store (arr!33665 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34202 _keys!1070)))))

(declare-fun b!1085636 () Bool)

(assert (=> b!1085636 (= e!620217 (and e!620222 mapRes!41572))))

(declare-fun condMapEmpty!41572 () Bool)

(declare-fun mapDefault!41572 () ValueCell!12563)


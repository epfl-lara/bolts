; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95978 () Bool)

(assert start!95978)

(declare-fun b_free!22595 () Bool)

(declare-fun b_next!22595 () Bool)

(assert (=> start!95978 (= b_free!22595 (not b_next!22595))))

(declare-fun tp!79635 () Bool)

(declare-fun b_and!35883 () Bool)

(assert (=> start!95978 (= tp!79635 b_and!35883)))

(declare-fun b!1086771 () Bool)

(declare-fun res!724800 () Bool)

(declare-fun e!620846 () Bool)

(assert (=> b!1086771 (=> (not res!724800) (not e!620846))))

(declare-datatypes ((array!70090 0))(
  ( (array!70091 (arr!33715 (Array (_ BitVec 32) (_ BitVec 64))) (size!34252 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70090)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70090 (_ BitVec 32)) Bool)

(assert (=> b!1086771 (= res!724800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086772 () Bool)

(declare-fun e!620844 () Bool)

(declare-fun e!620847 () Bool)

(assert (=> b!1086772 (= e!620844 (not e!620847))))

(declare-fun res!724793 () Bool)

(assert (=> b!1086772 (=> res!724793 e!620847)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086772 (= res!724793 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!40589 0))(
  ( (V!40590 (val!13355 Int)) )
))
(declare-datatypes ((tuple2!17010 0))(
  ( (tuple2!17011 (_1!8515 (_ BitVec 64)) (_2!8515 V!40589)) )
))
(declare-datatypes ((List!23650 0))(
  ( (Nil!23647) (Cons!23646 (h!24855 tuple2!17010) (t!33310 List!23650)) )
))
(declare-datatypes ((ListLongMap!14991 0))(
  ( (ListLongMap!14992 (toList!7511 List!23650)) )
))
(declare-fun lt!483271 () ListLongMap!14991)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40589)

(declare-fun zeroValue!831 () V!40589)

(declare-datatypes ((ValueCell!12589 0))(
  ( (ValueCellFull!12589 (v!15977 V!40589)) (EmptyCell!12589) )
))
(declare-datatypes ((array!70092 0))(
  ( (array!70093 (arr!33716 (Array (_ BitVec 32) ValueCell!12589)) (size!34253 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70092)

(declare-fun getCurrentListMap!4265 (array!70090 array!70092 (_ BitVec 32) (_ BitVec 32) V!40589 V!40589 (_ BitVec 32) Int) ListLongMap!14991)

(assert (=> b!1086772 (= lt!483271 (getCurrentListMap!4265 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483274 () ListLongMap!14991)

(declare-fun lt!483265 () array!70090)

(declare-fun lt!483277 () array!70092)

(assert (=> b!1086772 (= lt!483274 (getCurrentListMap!4265 lt!483265 lt!483277 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483272 () ListLongMap!14991)

(declare-fun lt!483268 () ListLongMap!14991)

(assert (=> b!1086772 (and (= lt!483272 lt!483268) (= lt!483268 lt!483272))))

(declare-fun lt!483275 () ListLongMap!14991)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!792 (ListLongMap!14991 (_ BitVec 64)) ListLongMap!14991)

(assert (=> b!1086772 (= lt!483268 (-!792 lt!483275 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35699 0))(
  ( (Unit!35700) )
))
(declare-fun lt!483263 () Unit!35699)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!71 (array!70090 array!70092 (_ BitVec 32) (_ BitVec 32) V!40589 V!40589 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35699)

(assert (=> b!1086772 (= lt!483263 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!71 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4017 (array!70090 array!70092 (_ BitVec 32) (_ BitVec 32) V!40589 V!40589 (_ BitVec 32) Int) ListLongMap!14991)

(assert (=> b!1086772 (= lt!483272 (getCurrentListMapNoExtraKeys!4017 lt!483265 lt!483277 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2153 (Int (_ BitVec 64)) V!40589)

(assert (=> b!1086772 (= lt!483277 (array!70093 (store (arr!33716 _values!874) i!650 (ValueCellFull!12589 (dynLambda!2153 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34253 _values!874)))))

(assert (=> b!1086772 (= lt!483275 (getCurrentListMapNoExtraKeys!4017 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086772 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483264 () Unit!35699)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70090 (_ BitVec 64) (_ BitVec 32)) Unit!35699)

(assert (=> b!1086772 (= lt!483264 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086773 () Bool)

(declare-fun res!724799 () Bool)

(assert (=> b!1086773 (=> (not res!724799) (not e!620846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086773 (= res!724799 (validKeyInArray!0 k!904))))

(declare-fun b!1086774 () Bool)

(declare-fun res!724802 () Bool)

(assert (=> b!1086774 (=> (not res!724802) (not e!620846))))

(assert (=> b!1086774 (= res!724802 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34252 _keys!1070))))))

(declare-fun res!724796 () Bool)

(assert (=> start!95978 (=> (not res!724796) (not e!620846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95978 (= res!724796 (validMask!0 mask!1414))))

(assert (=> start!95978 e!620846))

(assert (=> start!95978 tp!79635))

(assert (=> start!95978 true))

(declare-fun tp_is_empty!26597 () Bool)

(assert (=> start!95978 tp_is_empty!26597))

(declare-fun array_inv!25864 (array!70090) Bool)

(assert (=> start!95978 (array_inv!25864 _keys!1070)))

(declare-fun e!620842 () Bool)

(declare-fun array_inv!25865 (array!70092) Bool)

(assert (=> start!95978 (and (array_inv!25865 _values!874) e!620842)))

(declare-fun b!1086775 () Bool)

(assert (=> b!1086775 (= e!620846 e!620844)))

(declare-fun res!724792 () Bool)

(assert (=> b!1086775 (=> (not res!724792) (not e!620844))))

(assert (=> b!1086775 (= res!724792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483265 mask!1414))))

(assert (=> b!1086775 (= lt!483265 (array!70091 (store (arr!33715 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34252 _keys!1070)))))

(declare-fun b!1086776 () Bool)

(declare-fun e!620843 () Bool)

(assert (=> b!1086776 (= e!620843 tp_is_empty!26597)))

(declare-fun b!1086777 () Bool)

(declare-fun e!620841 () Bool)

(assert (=> b!1086777 (= e!620841 tp_is_empty!26597)))

(declare-fun b!1086778 () Bool)

(declare-fun res!724794 () Bool)

(assert (=> b!1086778 (=> (not res!724794) (not e!620846))))

(assert (=> b!1086778 (= res!724794 (and (= (size!34253 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34252 _keys!1070) (size!34253 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086779 () Bool)

(declare-fun e!620848 () Bool)

(assert (=> b!1086779 (= e!620848 true)))

(declare-fun lt!483269 () ListLongMap!14991)

(declare-fun lt!483278 () ListLongMap!14991)

(declare-fun lt!483273 () tuple2!17010)

(declare-fun +!3239 (ListLongMap!14991 tuple2!17010) ListLongMap!14991)

(assert (=> b!1086779 (= (-!792 lt!483278 k!904) (+!3239 lt!483269 lt!483273))))

(declare-fun lt!483270 () ListLongMap!14991)

(declare-fun lt!483276 () Unit!35699)

(declare-fun addRemoveCommutativeForDiffKeys!35 (ListLongMap!14991 (_ BitVec 64) V!40589 (_ BitVec 64)) Unit!35699)

(assert (=> b!1086779 (= lt!483276 (addRemoveCommutativeForDiffKeys!35 lt!483270 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086780 () Bool)

(declare-fun res!724797 () Bool)

(assert (=> b!1086780 (=> (not res!724797) (not e!620844))))

(declare-datatypes ((List!23651 0))(
  ( (Nil!23648) (Cons!23647 (h!24856 (_ BitVec 64)) (t!33311 List!23651)) )
))
(declare-fun arrayNoDuplicates!0 (array!70090 (_ BitVec 32) List!23651) Bool)

(assert (=> b!1086780 (= res!724797 (arrayNoDuplicates!0 lt!483265 #b00000000000000000000000000000000 Nil!23648))))

(declare-fun b!1086781 () Bool)

(declare-fun mapRes!41650 () Bool)

(assert (=> b!1086781 (= e!620842 (and e!620841 mapRes!41650))))

(declare-fun condMapEmpty!41650 () Bool)

(declare-fun mapDefault!41650 () ValueCell!12589)


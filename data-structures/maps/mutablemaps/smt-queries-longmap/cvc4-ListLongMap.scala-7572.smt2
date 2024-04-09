; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95792 () Bool)

(assert start!95792)

(declare-fun b_free!22409 () Bool)

(declare-fun b_next!22409 () Bool)

(assert (=> start!95792 (= b_free!22409 (not b_next!22409))))

(declare-fun tp!79076 () Bool)

(declare-fun b_and!35511 () Bool)

(assert (=> start!95792 (= tp!79076 b_and!35511)))

(declare-fun b!1082933 () Bool)

(declare-fun e!618877 () Bool)

(declare-fun tp_is_empty!26411 () Bool)

(assert (=> b!1082933 (= e!618877 tp_is_empty!26411)))

(declare-fun b!1082934 () Bool)

(declare-fun e!618872 () Bool)

(assert (=> b!1082934 (= e!618872 tp_is_empty!26411)))

(declare-fun b!1082935 () Bool)

(declare-fun res!721978 () Bool)

(declare-fun e!618873 () Bool)

(assert (=> b!1082935 (=> (not res!721978) (not e!618873))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69724 0))(
  ( (array!69725 (arr!33532 (Array (_ BitVec 32) (_ BitVec 64))) (size!34069 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69724)

(assert (=> b!1082935 (= res!721978 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34069 _keys!1070))))))

(declare-fun b!1082936 () Bool)

(declare-fun e!618875 () Bool)

(assert (=> b!1082936 (= e!618875 (not true))))

(declare-datatypes ((V!40341 0))(
  ( (V!40342 (val!13262 Int)) )
))
(declare-datatypes ((tuple2!16872 0))(
  ( (tuple2!16873 (_1!8446 (_ BitVec 64)) (_2!8446 V!40341)) )
))
(declare-datatypes ((List!23507 0))(
  ( (Nil!23504) (Cons!23503 (h!24712 tuple2!16872) (t!32981 List!23507)) )
))
(declare-datatypes ((ListLongMap!14853 0))(
  ( (ListLongMap!14854 (toList!7442 List!23507)) )
))
(declare-fun lt!479836 () ListLongMap!14853)

(declare-fun lt!479839 () ListLongMap!14853)

(assert (=> b!1082936 (and (= lt!479836 lt!479839) (= lt!479839 lt!479836))))

(declare-fun lt!479838 () ListLongMap!14853)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!724 (ListLongMap!14853 (_ BitVec 64)) ListLongMap!14853)

(assert (=> b!1082936 (= lt!479839 (-!724 lt!479838 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40341)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((Unit!35563 0))(
  ( (Unit!35564) )
))
(declare-fun lt!479835 () Unit!35563)

(declare-fun zeroValue!831 () V!40341)

(declare-datatypes ((ValueCell!12496 0))(
  ( (ValueCellFull!12496 (v!15884 V!40341)) (EmptyCell!12496) )
))
(declare-datatypes ((array!69726 0))(
  ( (array!69727 (arr!33533 (Array (_ BitVec 32) ValueCell!12496)) (size!34070 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69726)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!7 (array!69724 array!69726 (_ BitVec 32) (_ BitVec 32) V!40341 V!40341 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35563)

(assert (=> b!1082936 (= lt!479835 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!7 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479837 () array!69724)

(declare-fun getCurrentListMapNoExtraKeys!3953 (array!69724 array!69726 (_ BitVec 32) (_ BitVec 32) V!40341 V!40341 (_ BitVec 32) Int) ListLongMap!14853)

(declare-fun dynLambda!2089 (Int (_ BitVec 64)) V!40341)

(assert (=> b!1082936 (= lt!479836 (getCurrentListMapNoExtraKeys!3953 lt!479837 (array!69727 (store (arr!33533 _values!874) i!650 (ValueCellFull!12496 (dynLambda!2089 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34070 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082936 (= lt!479838 (getCurrentListMapNoExtraKeys!3953 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082936 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!479840 () Unit!35563)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69724 (_ BitVec 64) (_ BitVec 32)) Unit!35563)

(assert (=> b!1082936 (= lt!479840 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!721980 () Bool)

(assert (=> start!95792 (=> (not res!721980) (not e!618873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95792 (= res!721980 (validMask!0 mask!1414))))

(assert (=> start!95792 e!618873))

(assert (=> start!95792 tp!79076))

(assert (=> start!95792 true))

(assert (=> start!95792 tp_is_empty!26411))

(declare-fun array_inv!25740 (array!69724) Bool)

(assert (=> start!95792 (array_inv!25740 _keys!1070)))

(declare-fun e!618874 () Bool)

(declare-fun array_inv!25741 (array!69726) Bool)

(assert (=> start!95792 (and (array_inv!25741 _values!874) e!618874)))

(declare-fun mapNonEmpty!41371 () Bool)

(declare-fun mapRes!41371 () Bool)

(declare-fun tp!79077 () Bool)

(assert (=> mapNonEmpty!41371 (= mapRes!41371 (and tp!79077 e!618872))))

(declare-fun mapRest!41371 () (Array (_ BitVec 32) ValueCell!12496))

(declare-fun mapValue!41371 () ValueCell!12496)

(declare-fun mapKey!41371 () (_ BitVec 32))

(assert (=> mapNonEmpty!41371 (= (arr!33533 _values!874) (store mapRest!41371 mapKey!41371 mapValue!41371))))

(declare-fun b!1082937 () Bool)

(declare-fun res!721982 () Bool)

(assert (=> b!1082937 (=> (not res!721982) (not e!618875))))

(declare-datatypes ((List!23508 0))(
  ( (Nil!23505) (Cons!23504 (h!24713 (_ BitVec 64)) (t!32982 List!23508)) )
))
(declare-fun arrayNoDuplicates!0 (array!69724 (_ BitVec 32) List!23508) Bool)

(assert (=> b!1082937 (= res!721982 (arrayNoDuplicates!0 lt!479837 #b00000000000000000000000000000000 Nil!23505))))

(declare-fun b!1082938 () Bool)

(assert (=> b!1082938 (= e!618874 (and e!618877 mapRes!41371))))

(declare-fun condMapEmpty!41371 () Bool)

(declare-fun mapDefault!41371 () ValueCell!12496)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95924 () Bool)

(assert start!95924)

(declare-fun b_free!22541 () Bool)

(declare-fun b_next!22541 () Bool)

(assert (=> start!95924 (= b_free!22541 (not b_next!22541))))

(declare-fun tp!79472 () Bool)

(declare-fun b_and!35775 () Bool)

(assert (=> start!95924 (= tp!79472 b_and!35775)))

(declare-fun b!1085583 () Bool)

(declare-fun res!723908 () Bool)

(declare-fun e!620197 () Bool)

(assert (=> b!1085583 (=> (not res!723908) (not e!620197))))

(declare-datatypes ((array!69986 0))(
  ( (array!69987 (arr!33663 (Array (_ BitVec 32) (_ BitVec 64))) (size!34200 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69986)

(declare-datatypes ((List!23610 0))(
  ( (Nil!23607) (Cons!23606 (h!24815 (_ BitVec 64)) (t!33216 List!23610)) )
))
(declare-fun arrayNoDuplicates!0 (array!69986 (_ BitVec 32) List!23610) Bool)

(assert (=> b!1085583 (= res!723908 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23607))))

(declare-fun b!1085584 () Bool)

(declare-fun res!723901 () Bool)

(assert (=> b!1085584 (=> (not res!723901) (not e!620197))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085584 (= res!723901 (= (select (arr!33663 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!41569 () Bool)

(declare-fun mapRes!41569 () Bool)

(declare-fun tp!79473 () Bool)

(declare-fun e!620200 () Bool)

(assert (=> mapNonEmpty!41569 (= mapRes!41569 (and tp!79473 e!620200))))

(declare-datatypes ((V!40517 0))(
  ( (V!40518 (val!13328 Int)) )
))
(declare-datatypes ((ValueCell!12562 0))(
  ( (ValueCellFull!12562 (v!15950 V!40517)) (EmptyCell!12562) )
))
(declare-datatypes ((array!69988 0))(
  ( (array!69989 (arr!33664 (Array (_ BitVec 32) ValueCell!12562)) (size!34201 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69988)

(declare-fun mapRest!41569 () (Array (_ BitVec 32) ValueCell!12562))

(declare-fun mapValue!41569 () ValueCell!12562)

(declare-fun mapKey!41569 () (_ BitVec 32))

(assert (=> mapNonEmpty!41569 (= (arr!33664 _values!874) (store mapRest!41569 mapKey!41569 mapValue!41569))))

(declare-fun b!1085585 () Bool)

(declare-fun res!723902 () Bool)

(assert (=> b!1085585 (=> (not res!723902) (not e!620197))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085585 (= res!723902 (and (= (size!34201 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34200 _keys!1070) (size!34201 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085586 () Bool)

(declare-fun res!723910 () Bool)

(assert (=> b!1085586 (=> (not res!723910) (not e!620197))))

(assert (=> b!1085586 (= res!723910 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34200 _keys!1070))))))

(declare-fun b!1085588 () Bool)

(declare-fun e!620193 () Bool)

(declare-fun e!620198 () Bool)

(assert (=> b!1085588 (= e!620193 (not e!620198))))

(declare-fun res!723905 () Bool)

(assert (=> b!1085588 (=> res!723905 e!620198)))

(assert (=> b!1085588 (= res!723905 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40517)

(declare-fun zeroValue!831 () V!40517)

(declare-datatypes ((tuple2!16970 0))(
  ( (tuple2!16971 (_1!8495 (_ BitVec 64)) (_2!8495 V!40517)) )
))
(declare-datatypes ((List!23611 0))(
  ( (Nil!23608) (Cons!23607 (h!24816 tuple2!16970) (t!33217 List!23611)) )
))
(declare-datatypes ((ListLongMap!14951 0))(
  ( (ListLongMap!14952 (toList!7491 List!23611)) )
))
(declare-fun lt!481897 () ListLongMap!14951)

(declare-fun getCurrentListMap!4246 (array!69986 array!69988 (_ BitVec 32) (_ BitVec 32) V!40517 V!40517 (_ BitVec 32) Int) ListLongMap!14951)

(assert (=> b!1085588 (= lt!481897 (getCurrentListMap!4246 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481891 () array!69986)

(declare-fun lt!481895 () ListLongMap!14951)

(declare-fun lt!481886 () array!69988)

(assert (=> b!1085588 (= lt!481895 (getCurrentListMap!4246 lt!481891 lt!481886 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481894 () ListLongMap!14951)

(declare-fun lt!481889 () ListLongMap!14951)

(assert (=> b!1085588 (and (= lt!481894 lt!481889) (= lt!481889 lt!481894))))

(declare-fun lt!481900 () ListLongMap!14951)

(declare-fun -!772 (ListLongMap!14951 (_ BitVec 64)) ListLongMap!14951)

(assert (=> b!1085588 (= lt!481889 (-!772 lt!481900 k!904))))

(declare-datatypes ((Unit!35659 0))(
  ( (Unit!35660) )
))
(declare-fun lt!481890 () Unit!35659)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!52 (array!69986 array!69988 (_ BitVec 32) (_ BitVec 32) V!40517 V!40517 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35659)

(assert (=> b!1085588 (= lt!481890 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!52 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3998 (array!69986 array!69988 (_ BitVec 32) (_ BitVec 32) V!40517 V!40517 (_ BitVec 32) Int) ListLongMap!14951)

(assert (=> b!1085588 (= lt!481894 (getCurrentListMapNoExtraKeys!3998 lt!481891 lt!481886 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2134 (Int (_ BitVec 64)) V!40517)

(assert (=> b!1085588 (= lt!481886 (array!69989 (store (arr!33664 _values!874) i!650 (ValueCellFull!12562 (dynLambda!2134 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34201 _values!874)))))

(assert (=> b!1085588 (= lt!481900 (getCurrentListMapNoExtraKeys!3998 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085588 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481898 () Unit!35659)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69986 (_ BitVec 64) (_ BitVec 32)) Unit!35659)

(assert (=> b!1085588 (= lt!481898 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1085589 () Bool)

(declare-fun e!620195 () Bool)

(assert (=> b!1085589 (= e!620195 true)))

(declare-fun lt!481893 () tuple2!16970)

(declare-fun lt!481892 () ListLongMap!14951)

(declare-fun lt!481887 () ListLongMap!14951)

(declare-fun +!3222 (ListLongMap!14951 tuple2!16970) ListLongMap!14951)

(assert (=> b!1085589 (= (-!772 lt!481887 k!904) (+!3222 lt!481892 lt!481893))))

(declare-fun lt!481888 () ListLongMap!14951)

(declare-fun lt!481901 () Unit!35659)

(declare-fun addRemoveCommutativeForDiffKeys!18 (ListLongMap!14951 (_ BitVec 64) V!40517 (_ BitVec 64)) Unit!35659)

(assert (=> b!1085589 (= lt!481901 (addRemoveCommutativeForDiffKeys!18 lt!481888 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1085590 () Bool)

(declare-fun res!723909 () Bool)

(assert (=> b!1085590 (=> (not res!723909) (not e!620197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085590 (= res!723909 (validKeyInArray!0 k!904))))

(declare-fun b!1085591 () Bool)

(declare-fun res!723906 () Bool)

(assert (=> b!1085591 (=> (not res!723906) (not e!620193))))

(assert (=> b!1085591 (= res!723906 (arrayNoDuplicates!0 lt!481891 #b00000000000000000000000000000000 Nil!23607))))

(declare-fun b!1085592 () Bool)

(declare-fun e!620199 () Bool)

(declare-fun e!620196 () Bool)

(assert (=> b!1085592 (= e!620199 (and e!620196 mapRes!41569))))

(declare-fun condMapEmpty!41569 () Bool)

(declare-fun mapDefault!41569 () ValueCell!12562)


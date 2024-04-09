; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95908 () Bool)

(assert start!95908)

(declare-fun b_free!22525 () Bool)

(declare-fun b_next!22525 () Bool)

(assert (=> start!95908 (= b_free!22525 (not b_next!22525))))

(declare-fun tp!79424 () Bool)

(declare-fun b_and!35743 () Bool)

(assert (=> start!95908 (= tp!79424 b_and!35743)))

(declare-fun b!1085231 () Bool)

(declare-fun res!723642 () Bool)

(declare-fun e!620006 () Bool)

(assert (=> b!1085231 (=> (not res!723642) (not e!620006))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085231 (= res!723642 (validKeyInArray!0 k!904))))

(declare-fun b!1085232 () Bool)

(declare-fun e!620005 () Bool)

(declare-fun tp_is_empty!26527 () Bool)

(assert (=> b!1085232 (= e!620005 tp_is_empty!26527)))

(declare-fun res!723645 () Bool)

(assert (=> start!95908 (=> (not res!723645) (not e!620006))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95908 (= res!723645 (validMask!0 mask!1414))))

(assert (=> start!95908 e!620006))

(assert (=> start!95908 tp!79424))

(assert (=> start!95908 true))

(assert (=> start!95908 tp_is_empty!26527))

(declare-datatypes ((array!69956 0))(
  ( (array!69957 (arr!33648 (Array (_ BitVec 32) (_ BitVec 64))) (size!34185 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69956)

(declare-fun array_inv!25820 (array!69956) Bool)

(assert (=> start!95908 (array_inv!25820 _keys!1070)))

(declare-datatypes ((V!40497 0))(
  ( (V!40498 (val!13320 Int)) )
))
(declare-datatypes ((ValueCell!12554 0))(
  ( (ValueCellFull!12554 (v!15942 V!40497)) (EmptyCell!12554) )
))
(declare-datatypes ((array!69958 0))(
  ( (array!69959 (arr!33649 (Array (_ BitVec 32) ValueCell!12554)) (size!34186 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69958)

(declare-fun e!620008 () Bool)

(declare-fun array_inv!25821 (array!69958) Bool)

(assert (=> start!95908 (and (array_inv!25821 _values!874) e!620008)))

(declare-fun b!1085233 () Bool)

(declare-fun e!620004 () Bool)

(assert (=> b!1085233 (= e!620004 true)))

(declare-datatypes ((tuple2!16956 0))(
  ( (tuple2!16957 (_1!8488 (_ BitVec 64)) (_2!8488 V!40497)) )
))
(declare-fun lt!481486 () tuple2!16956)

(declare-datatypes ((List!23598 0))(
  ( (Nil!23595) (Cons!23594 (h!24803 tuple2!16956) (t!33188 List!23598)) )
))
(declare-datatypes ((ListLongMap!14937 0))(
  ( (ListLongMap!14938 (toList!7484 List!23598)) )
))
(declare-fun lt!481483 () ListLongMap!14937)

(declare-fun lt!481477 () ListLongMap!14937)

(declare-fun -!765 (ListLongMap!14937 (_ BitVec 64)) ListLongMap!14937)

(declare-fun +!3215 (ListLongMap!14937 tuple2!16956) ListLongMap!14937)

(assert (=> b!1085233 (= (-!765 lt!481477 k!904) (+!3215 lt!481483 lt!481486))))

(declare-fun lt!481480 () ListLongMap!14937)

(declare-fun minValue!831 () V!40497)

(declare-datatypes ((Unit!35645 0))(
  ( (Unit!35646) )
))
(declare-fun lt!481481 () Unit!35645)

(declare-fun addRemoveCommutativeForDiffKeys!11 (ListLongMap!14937 (_ BitVec 64) V!40497 (_ BitVec 64)) Unit!35645)

(assert (=> b!1085233 (= lt!481481 (addRemoveCommutativeForDiffKeys!11 lt!481480 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1085234 () Bool)

(declare-fun e!620007 () Bool)

(assert (=> b!1085234 (= e!620006 e!620007)))

(declare-fun res!723640 () Bool)

(assert (=> b!1085234 (=> (not res!723640) (not e!620007))))

(declare-fun lt!481484 () array!69956)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69956 (_ BitVec 32)) Bool)

(assert (=> b!1085234 (= res!723640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481484 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085234 (= lt!481484 (array!69957 (store (arr!33648 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34185 _keys!1070)))))

(declare-fun b!1085235 () Bool)

(declare-fun e!620003 () Bool)

(assert (=> b!1085235 (= e!620007 (not e!620003))))

(declare-fun res!723646 () Bool)

(assert (=> b!1085235 (=> res!723646 e!620003)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085235 (= res!723646 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!481482 () ListLongMap!14937)

(declare-fun zeroValue!831 () V!40497)

(declare-fun getCurrentListMap!4240 (array!69956 array!69958 (_ BitVec 32) (_ BitVec 32) V!40497 V!40497 (_ BitVec 32) Int) ListLongMap!14937)

(assert (=> b!1085235 (= lt!481482 (getCurrentListMap!4240 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481491 () ListLongMap!14937)

(declare-fun lt!481492 () array!69958)

(assert (=> b!1085235 (= lt!481491 (getCurrentListMap!4240 lt!481484 lt!481492 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481488 () ListLongMap!14937)

(declare-fun lt!481479 () ListLongMap!14937)

(assert (=> b!1085235 (and (= lt!481488 lt!481479) (= lt!481479 lt!481488))))

(declare-fun lt!481489 () ListLongMap!14937)

(assert (=> b!1085235 (= lt!481479 (-!765 lt!481489 k!904))))

(declare-fun lt!481485 () Unit!35645)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!46 (array!69956 array!69958 (_ BitVec 32) (_ BitVec 32) V!40497 V!40497 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35645)

(assert (=> b!1085235 (= lt!481485 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!46 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3992 (array!69956 array!69958 (_ BitVec 32) (_ BitVec 32) V!40497 V!40497 (_ BitVec 32) Int) ListLongMap!14937)

(assert (=> b!1085235 (= lt!481488 (getCurrentListMapNoExtraKeys!3992 lt!481484 lt!481492 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2128 (Int (_ BitVec 64)) V!40497)

(assert (=> b!1085235 (= lt!481492 (array!69959 (store (arr!33649 _values!874) i!650 (ValueCellFull!12554 (dynLambda!2128 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34186 _values!874)))))

(assert (=> b!1085235 (= lt!481489 (getCurrentListMapNoExtraKeys!3992 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085235 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481478 () Unit!35645)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69956 (_ BitVec 64) (_ BitVec 32)) Unit!35645)

(assert (=> b!1085235 (= lt!481478 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1085236 () Bool)

(assert (=> b!1085236 (= e!620003 e!620004)))

(declare-fun res!723637 () Bool)

(assert (=> b!1085236 (=> res!723637 e!620004)))

(assert (=> b!1085236 (= res!723637 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!481493 () ListLongMap!14937)

(assert (=> b!1085236 (= lt!481483 lt!481493)))

(assert (=> b!1085236 (= lt!481483 (-!765 lt!481480 k!904))))

(declare-fun lt!481490 () Unit!35645)

(assert (=> b!1085236 (= lt!481490 (addRemoveCommutativeForDiffKeys!11 lt!481489 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(assert (=> b!1085236 (= lt!481491 (+!3215 lt!481493 lt!481486))))

(declare-fun lt!481487 () tuple2!16956)

(assert (=> b!1085236 (= lt!481493 (+!3215 lt!481479 lt!481487))))

(assert (=> b!1085236 (= lt!481482 lt!481477)))

(assert (=> b!1085236 (= lt!481477 (+!3215 lt!481480 lt!481486))))

(assert (=> b!1085236 (= lt!481480 (+!3215 lt!481489 lt!481487))))

(assert (=> b!1085236 (= lt!481491 (+!3215 (+!3215 lt!481488 lt!481487) lt!481486))))

(assert (=> b!1085236 (= lt!481486 (tuple2!16957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085236 (= lt!481487 (tuple2!16957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085237 () Bool)

(declare-fun res!723638 () Bool)

(assert (=> b!1085237 (=> (not res!723638) (not e!620006))))

(assert (=> b!1085237 (= res!723638 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34185 _keys!1070))))))

(declare-fun b!1085238 () Bool)

(declare-fun res!723647 () Bool)

(assert (=> b!1085238 (=> (not res!723647) (not e!620006))))

(declare-datatypes ((List!23599 0))(
  ( (Nil!23596) (Cons!23595 (h!24804 (_ BitVec 64)) (t!33189 List!23599)) )
))
(declare-fun arrayNoDuplicates!0 (array!69956 (_ BitVec 32) List!23599) Bool)

(assert (=> b!1085238 (= res!723647 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23596))))

(declare-fun b!1085239 () Bool)

(declare-fun e!620002 () Bool)

(assert (=> b!1085239 (= e!620002 tp_is_empty!26527)))

(declare-fun mapNonEmpty!41545 () Bool)

(declare-fun mapRes!41545 () Bool)

(declare-fun tp!79425 () Bool)

(assert (=> mapNonEmpty!41545 (= mapRes!41545 (and tp!79425 e!620005))))

(declare-fun mapValue!41545 () ValueCell!12554)

(declare-fun mapKey!41545 () (_ BitVec 32))

(declare-fun mapRest!41545 () (Array (_ BitVec 32) ValueCell!12554))

(assert (=> mapNonEmpty!41545 (= (arr!33649 _values!874) (store mapRest!41545 mapKey!41545 mapValue!41545))))

(declare-fun b!1085240 () Bool)

(assert (=> b!1085240 (= e!620008 (and e!620002 mapRes!41545))))

(declare-fun condMapEmpty!41545 () Bool)

(declare-fun mapDefault!41545 () ValueCell!12554)


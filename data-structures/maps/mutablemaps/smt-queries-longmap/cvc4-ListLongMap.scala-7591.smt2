; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95906 () Bool)

(assert start!95906)

(declare-fun b_free!22523 () Bool)

(declare-fun b_next!22523 () Bool)

(assert (=> start!95906 (= b_free!22523 (not b_next!22523))))

(declare-fun tp!79418 () Bool)

(declare-fun b_and!35739 () Bool)

(assert (=> start!95906 (= tp!79418 b_and!35739)))

(declare-fun b!1085187 () Bool)

(declare-fun res!723610 () Bool)

(declare-fun e!619982 () Bool)

(assert (=> b!1085187 (=> (not res!723610) (not e!619982))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085187 (= res!723610 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41542 () Bool)

(declare-fun mapRes!41542 () Bool)

(assert (=> mapIsEmpty!41542 mapRes!41542))

(declare-fun b!1085188 () Bool)

(declare-fun res!723609 () Bool)

(assert (=> b!1085188 (=> (not res!723609) (not e!619982))))

(declare-datatypes ((array!69952 0))(
  ( (array!69953 (arr!33646 (Array (_ BitVec 32) (_ BitVec 64))) (size!34183 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69952)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69952 (_ BitVec 32)) Bool)

(assert (=> b!1085188 (= res!723609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085189 () Bool)

(declare-fun e!619978 () Bool)

(assert (=> b!1085189 (= e!619978 true)))

(declare-datatypes ((V!40493 0))(
  ( (V!40494 (val!13319 Int)) )
))
(declare-datatypes ((tuple2!16954 0))(
  ( (tuple2!16955 (_1!8487 (_ BitVec 64)) (_2!8487 V!40493)) )
))
(declare-fun lt!481431 () tuple2!16954)

(declare-datatypes ((List!23596 0))(
  ( (Nil!23593) (Cons!23592 (h!24801 tuple2!16954) (t!33184 List!23596)) )
))
(declare-datatypes ((ListLongMap!14935 0))(
  ( (ListLongMap!14936 (toList!7483 List!23596)) )
))
(declare-fun lt!481437 () ListLongMap!14935)

(declare-fun lt!481432 () ListLongMap!14935)

(declare-fun -!764 (ListLongMap!14935 (_ BitVec 64)) ListLongMap!14935)

(declare-fun +!3214 (ListLongMap!14935 tuple2!16954) ListLongMap!14935)

(assert (=> b!1085189 (= (-!764 lt!481432 k!904) (+!3214 lt!481437 lt!481431))))

(declare-fun minValue!831 () V!40493)

(declare-fun lt!481426 () ListLongMap!14935)

(declare-datatypes ((Unit!35643 0))(
  ( (Unit!35644) )
))
(declare-fun lt!481434 () Unit!35643)

(declare-fun addRemoveCommutativeForDiffKeys!10 (ListLongMap!14935 (_ BitVec 64) V!40493 (_ BitVec 64)) Unit!35643)

(assert (=> b!1085189 (= lt!481434 (addRemoveCommutativeForDiffKeys!10 lt!481426 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun res!723612 () Bool)

(assert (=> start!95906 (=> (not res!723612) (not e!619982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95906 (= res!723612 (validMask!0 mask!1414))))

(assert (=> start!95906 e!619982))

(assert (=> start!95906 tp!79418))

(assert (=> start!95906 true))

(declare-fun tp_is_empty!26525 () Bool)

(assert (=> start!95906 tp_is_empty!26525))

(declare-fun array_inv!25818 (array!69952) Bool)

(assert (=> start!95906 (array_inv!25818 _keys!1070)))

(declare-datatypes ((ValueCell!12553 0))(
  ( (ValueCellFull!12553 (v!15941 V!40493)) (EmptyCell!12553) )
))
(declare-datatypes ((array!69954 0))(
  ( (array!69955 (arr!33647 (Array (_ BitVec 32) ValueCell!12553)) (size!34184 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69954)

(declare-fun e!619980 () Bool)

(declare-fun array_inv!25819 (array!69954) Bool)

(assert (=> start!95906 (and (array_inv!25819 _values!874) e!619980)))

(declare-fun b!1085190 () Bool)

(declare-fun e!619981 () Bool)

(declare-fun e!619983 () Bool)

(assert (=> b!1085190 (= e!619981 (not e!619983))))

(declare-fun res!723613 () Bool)

(assert (=> b!1085190 (=> res!723613 e!619983)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085190 (= res!723613 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!481433 () ListLongMap!14935)

(declare-fun zeroValue!831 () V!40493)

(declare-fun getCurrentListMap!4239 (array!69952 array!69954 (_ BitVec 32) (_ BitVec 32) V!40493 V!40493 (_ BitVec 32) Int) ListLongMap!14935)

(assert (=> b!1085190 (= lt!481433 (getCurrentListMap!4239 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481429 () ListLongMap!14935)

(declare-fun lt!481436 () array!69952)

(declare-fun lt!481442 () array!69954)

(assert (=> b!1085190 (= lt!481429 (getCurrentListMap!4239 lt!481436 lt!481442 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481440 () ListLongMap!14935)

(declare-fun lt!481428 () ListLongMap!14935)

(assert (=> b!1085190 (and (= lt!481440 lt!481428) (= lt!481428 lt!481440))))

(declare-fun lt!481438 () ListLongMap!14935)

(assert (=> b!1085190 (= lt!481428 (-!764 lt!481438 k!904))))

(declare-fun lt!481427 () Unit!35643)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!45 (array!69952 array!69954 (_ BitVec 32) (_ BitVec 32) V!40493 V!40493 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35643)

(assert (=> b!1085190 (= lt!481427 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!45 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3991 (array!69952 array!69954 (_ BitVec 32) (_ BitVec 32) V!40493 V!40493 (_ BitVec 32) Int) ListLongMap!14935)

(assert (=> b!1085190 (= lt!481440 (getCurrentListMapNoExtraKeys!3991 lt!481436 lt!481442 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2127 (Int (_ BitVec 64)) V!40493)

(assert (=> b!1085190 (= lt!481442 (array!69955 (store (arr!33647 _values!874) i!650 (ValueCellFull!12553 (dynLambda!2127 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34184 _values!874)))))

(assert (=> b!1085190 (= lt!481438 (getCurrentListMapNoExtraKeys!3991 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085190 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481430 () Unit!35643)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69952 (_ BitVec 64) (_ BitVec 32)) Unit!35643)

(assert (=> b!1085190 (= lt!481430 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1085191 () Bool)

(declare-fun e!619979 () Bool)

(assert (=> b!1085191 (= e!619979 tp_is_empty!26525)))

(declare-fun b!1085192 () Bool)

(declare-fun res!723614 () Bool)

(assert (=> b!1085192 (=> (not res!723614) (not e!619982))))

(assert (=> b!1085192 (= res!723614 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34183 _keys!1070))))))

(declare-fun b!1085193 () Bool)

(declare-fun res!723606 () Bool)

(assert (=> b!1085193 (=> (not res!723606) (not e!619982))))

(declare-datatypes ((List!23597 0))(
  ( (Nil!23594) (Cons!23593 (h!24802 (_ BitVec 64)) (t!33185 List!23597)) )
))
(declare-fun arrayNoDuplicates!0 (array!69952 (_ BitVec 32) List!23597) Bool)

(assert (=> b!1085193 (= res!723606 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23594))))

(declare-fun b!1085194 () Bool)

(declare-fun res!723608 () Bool)

(assert (=> b!1085194 (=> (not res!723608) (not e!619982))))

(assert (=> b!1085194 (= res!723608 (and (= (size!34184 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34183 _keys!1070) (size!34184 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085195 () Bool)

(declare-fun e!619977 () Bool)

(assert (=> b!1085195 (= e!619977 tp_is_empty!26525)))

(declare-fun mapNonEmpty!41542 () Bool)

(declare-fun tp!79419 () Bool)

(assert (=> mapNonEmpty!41542 (= mapRes!41542 (and tp!79419 e!619979))))

(declare-fun mapKey!41542 () (_ BitVec 32))

(declare-fun mapRest!41542 () (Array (_ BitVec 32) ValueCell!12553))

(declare-fun mapValue!41542 () ValueCell!12553)

(assert (=> mapNonEmpty!41542 (= (arr!33647 _values!874) (store mapRest!41542 mapKey!41542 mapValue!41542))))

(declare-fun b!1085196 () Bool)

(declare-fun res!723611 () Bool)

(assert (=> b!1085196 (=> (not res!723611) (not e!619981))))

(assert (=> b!1085196 (= res!723611 (arrayNoDuplicates!0 lt!481436 #b00000000000000000000000000000000 Nil!23594))))

(declare-fun b!1085197 () Bool)

(assert (=> b!1085197 (= e!619982 e!619981)))

(declare-fun res!723604 () Bool)

(assert (=> b!1085197 (=> (not res!723604) (not e!619981))))

(assert (=> b!1085197 (= res!723604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481436 mask!1414))))

(assert (=> b!1085197 (= lt!481436 (array!69953 (store (arr!33646 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34183 _keys!1070)))))

(declare-fun b!1085198 () Bool)

(assert (=> b!1085198 (= e!619980 (and e!619977 mapRes!41542))))

(declare-fun condMapEmpty!41542 () Bool)

(declare-fun mapDefault!41542 () ValueCell!12553)


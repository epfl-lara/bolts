; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95890 () Bool)

(assert start!95890)

(declare-fun b_free!22507 () Bool)

(declare-fun b_next!22507 () Bool)

(assert (=> start!95890 (= b_free!22507 (not b_next!22507))))

(declare-fun tp!79371 () Bool)

(declare-fun b_and!35707 () Bool)

(assert (=> start!95890 (= tp!79371 b_and!35707)))

(declare-fun b!1084835 () Bool)

(declare-fun e!619790 () Bool)

(declare-fun tp_is_empty!26509 () Bool)

(assert (=> b!1084835 (= e!619790 tp_is_empty!26509)))

(declare-fun b!1084836 () Bool)

(declare-fun res!723342 () Bool)

(declare-fun e!619792 () Bool)

(assert (=> b!1084836 (=> (not res!723342) (not e!619792))))

(declare-datatypes ((array!69920 0))(
  ( (array!69921 (arr!33630 (Array (_ BitVec 32) (_ BitVec 64))) (size!34167 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69920)

(declare-datatypes ((List!23580 0))(
  ( (Nil!23577) (Cons!23576 (h!24785 (_ BitVec 64)) (t!33152 List!23580)) )
))
(declare-fun arrayNoDuplicates!0 (array!69920 (_ BitVec 32) List!23580) Bool)

(assert (=> b!1084836 (= res!723342 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23577))))

(declare-fun b!1084837 () Bool)

(declare-fun res!723348 () Bool)

(assert (=> b!1084837 (=> (not res!723348) (not e!619792))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084837 (= res!723348 (= (select (arr!33630 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41518 () Bool)

(declare-fun mapRes!41518 () Bool)

(assert (=> mapIsEmpty!41518 mapRes!41518))

(declare-fun b!1084838 () Bool)

(declare-fun e!619789 () Bool)

(declare-fun e!619787 () Bool)

(assert (=> b!1084838 (= e!619789 (not e!619787))))

(declare-fun res!723349 () Bool)

(assert (=> b!1084838 (=> res!723349 e!619787)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084838 (= res!723349 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((V!40473 0))(
  ( (V!40474 (val!13311 Int)) )
))
(declare-fun zeroValue!831 () V!40473)

(declare-datatypes ((ValueCell!12545 0))(
  ( (ValueCellFull!12545 (v!15933 V!40473)) (EmptyCell!12545) )
))
(declare-datatypes ((array!69922 0))(
  ( (array!69923 (arr!33631 (Array (_ BitVec 32) ValueCell!12545)) (size!34168 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69922)

(declare-datatypes ((tuple2!16938 0))(
  ( (tuple2!16939 (_1!8479 (_ BitVec 64)) (_2!8479 V!40473)) )
))
(declare-datatypes ((List!23581 0))(
  ( (Nil!23578) (Cons!23577 (h!24786 tuple2!16938) (t!33153 List!23581)) )
))
(declare-datatypes ((ListLongMap!14919 0))(
  ( (ListLongMap!14920 (toList!7475 List!23581)) )
))
(declare-fun lt!481019 () ListLongMap!14919)

(declare-fun minValue!831 () V!40473)

(declare-fun getCurrentListMap!4232 (array!69920 array!69922 (_ BitVec 32) (_ BitVec 32) V!40473 V!40473 (_ BitVec 32) Int) ListLongMap!14919)

(assert (=> b!1084838 (= lt!481019 (getCurrentListMap!4232 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481029 () array!69922)

(declare-fun lt!481024 () array!69920)

(declare-fun lt!481032 () ListLongMap!14919)

(assert (=> b!1084838 (= lt!481032 (getCurrentListMap!4232 lt!481024 lt!481029 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481022 () ListLongMap!14919)

(declare-fun lt!481021 () ListLongMap!14919)

(assert (=> b!1084838 (and (= lt!481022 lt!481021) (= lt!481021 lt!481022))))

(declare-fun lt!481025 () ListLongMap!14919)

(declare-fun -!756 (ListLongMap!14919 (_ BitVec 64)) ListLongMap!14919)

(assert (=> b!1084838 (= lt!481021 (-!756 lt!481025 k!904))))

(declare-datatypes ((Unit!35627 0))(
  ( (Unit!35628) )
))
(declare-fun lt!481033 () Unit!35627)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!38 (array!69920 array!69922 (_ BitVec 32) (_ BitVec 32) V!40473 V!40473 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35627)

(assert (=> b!1084838 (= lt!481033 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!38 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3984 (array!69920 array!69922 (_ BitVec 32) (_ BitVec 32) V!40473 V!40473 (_ BitVec 32) Int) ListLongMap!14919)

(assert (=> b!1084838 (= lt!481022 (getCurrentListMapNoExtraKeys!3984 lt!481024 lt!481029 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2120 (Int (_ BitVec 64)) V!40473)

(assert (=> b!1084838 (= lt!481029 (array!69923 (store (arr!33631 _values!874) i!650 (ValueCellFull!12545 (dynLambda!2120 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34168 _values!874)))))

(assert (=> b!1084838 (= lt!481025 (getCurrentListMapNoExtraKeys!3984 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084838 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481031 () Unit!35627)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69920 (_ BitVec 64) (_ BitVec 32)) Unit!35627)

(assert (=> b!1084838 (= lt!481031 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084839 () Bool)

(declare-fun e!619786 () Bool)

(assert (=> b!1084839 (= e!619786 true)))

(declare-fun lt!481030 () ListLongMap!14919)

(declare-fun lt!481027 () ListLongMap!14919)

(declare-fun lt!481023 () tuple2!16938)

(declare-fun +!3207 (ListLongMap!14919 tuple2!16938) ListLongMap!14919)

(assert (=> b!1084839 (= (-!756 lt!481027 k!904) (+!3207 lt!481030 lt!481023))))

(declare-fun lt!481034 () Unit!35627)

(declare-fun lt!481026 () ListLongMap!14919)

(declare-fun addRemoveCommutativeForDiffKeys!3 (ListLongMap!14919 (_ BitVec 64) V!40473 (_ BitVec 64)) Unit!35627)

(assert (=> b!1084839 (= lt!481034 (addRemoveCommutativeForDiffKeys!3 lt!481026 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1084840 () Bool)

(declare-fun res!723343 () Bool)

(assert (=> b!1084840 (=> (not res!723343) (not e!619792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69920 (_ BitVec 32)) Bool)

(assert (=> b!1084840 (= res!723343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!723341 () Bool)

(assert (=> start!95890 (=> (not res!723341) (not e!619792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95890 (= res!723341 (validMask!0 mask!1414))))

(assert (=> start!95890 e!619792))

(assert (=> start!95890 tp!79371))

(assert (=> start!95890 true))

(assert (=> start!95890 tp_is_empty!26509))

(declare-fun array_inv!25806 (array!69920) Bool)

(assert (=> start!95890 (array_inv!25806 _keys!1070)))

(declare-fun e!619788 () Bool)

(declare-fun array_inv!25807 (array!69922) Bool)

(assert (=> start!95890 (and (array_inv!25807 _values!874) e!619788)))

(declare-fun b!1084841 () Bool)

(declare-fun e!619791 () Bool)

(assert (=> b!1084841 (= e!619791 tp_is_empty!26509)))

(declare-fun mapNonEmpty!41518 () Bool)

(declare-fun tp!79370 () Bool)

(assert (=> mapNonEmpty!41518 (= mapRes!41518 (and tp!79370 e!619791))))

(declare-fun mapRest!41518 () (Array (_ BitVec 32) ValueCell!12545))

(declare-fun mapKey!41518 () (_ BitVec 32))

(declare-fun mapValue!41518 () ValueCell!12545)

(assert (=> mapNonEmpty!41518 (= (arr!33631 _values!874) (store mapRest!41518 mapKey!41518 mapValue!41518))))

(declare-fun b!1084842 () Bool)

(assert (=> b!1084842 (= e!619788 (and e!619790 mapRes!41518))))

(declare-fun condMapEmpty!41518 () Bool)

(declare-fun mapDefault!41518 () ValueCell!12545)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95788 () Bool)

(assert start!95788)

(declare-fun b_free!22405 () Bool)

(declare-fun b_next!22405 () Bool)

(assert (=> start!95788 (= b_free!22405 (not b_next!22405))))

(declare-fun tp!79065 () Bool)

(declare-fun b_and!35503 () Bool)

(assert (=> start!95788 (= tp!79065 b_and!35503)))

(declare-fun b!1082857 () Bool)

(declare-fun e!618838 () Bool)

(assert (=> b!1082857 (= e!618838 (not true))))

(declare-datatypes ((V!40337 0))(
  ( (V!40338 (val!13260 Int)) )
))
(declare-datatypes ((tuple2!16868 0))(
  ( (tuple2!16869 (_1!8444 (_ BitVec 64)) (_2!8444 V!40337)) )
))
(declare-datatypes ((List!23503 0))(
  ( (Nil!23500) (Cons!23499 (h!24708 tuple2!16868) (t!32973 List!23503)) )
))
(declare-datatypes ((ListLongMap!14849 0))(
  ( (ListLongMap!14850 (toList!7440 List!23503)) )
))
(declare-fun lt!479801 () ListLongMap!14849)

(declare-fun lt!479802 () ListLongMap!14849)

(assert (=> b!1082857 (and (= lt!479801 lt!479802) (= lt!479802 lt!479801))))

(declare-fun lt!479804 () ListLongMap!14849)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!722 (ListLongMap!14849 (_ BitVec 64)) ListLongMap!14849)

(assert (=> b!1082857 (= lt!479802 (-!722 lt!479804 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40337)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40337)

(declare-datatypes ((array!69716 0))(
  ( (array!69717 (arr!33528 (Array (_ BitVec 32) (_ BitVec 64))) (size!34065 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69716)

(declare-datatypes ((ValueCell!12494 0))(
  ( (ValueCellFull!12494 (v!15882 V!40337)) (EmptyCell!12494) )
))
(declare-datatypes ((array!69718 0))(
  ( (array!69719 (arr!33529 (Array (_ BitVec 32) ValueCell!12494)) (size!34066 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69718)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((Unit!35559 0))(
  ( (Unit!35560) )
))
(declare-fun lt!479803 () Unit!35559)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!5 (array!69716 array!69718 (_ BitVec 32) (_ BitVec 32) V!40337 V!40337 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35559)

(assert (=> b!1082857 (= lt!479803 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!5 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479799 () array!69716)

(declare-fun getCurrentListMapNoExtraKeys!3951 (array!69716 array!69718 (_ BitVec 32) (_ BitVec 32) V!40337 V!40337 (_ BitVec 32) Int) ListLongMap!14849)

(declare-fun dynLambda!2087 (Int (_ BitVec 64)) V!40337)

(assert (=> b!1082857 (= lt!479801 (getCurrentListMapNoExtraKeys!3951 lt!479799 (array!69719 (store (arr!33529 _values!874) i!650 (ValueCellFull!12494 (dynLambda!2087 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34066 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082857 (= lt!479804 (getCurrentListMapNoExtraKeys!3951 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082857 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!479800 () Unit!35559)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69716 (_ BitVec 64) (_ BitVec 32)) Unit!35559)

(assert (=> b!1082857 (= lt!479800 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082858 () Bool)

(declare-fun res!721926 () Bool)

(declare-fun e!618836 () Bool)

(assert (=> b!1082858 (=> (not res!721926) (not e!618836))))

(assert (=> b!1082858 (= res!721926 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34065 _keys!1070))))))

(declare-fun mapIsEmpty!41365 () Bool)

(declare-fun mapRes!41365 () Bool)

(assert (=> mapIsEmpty!41365 mapRes!41365))

(declare-fun b!1082859 () Bool)

(declare-fun res!721925 () Bool)

(assert (=> b!1082859 (=> (not res!721925) (not e!618836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082859 (= res!721925 (validKeyInArray!0 k!904))))

(declare-fun b!1082860 () Bool)

(declare-fun res!721927 () Bool)

(assert (=> b!1082860 (=> (not res!721927) (not e!618836))))

(declare-datatypes ((List!23504 0))(
  ( (Nil!23501) (Cons!23500 (h!24709 (_ BitVec 64)) (t!32974 List!23504)) )
))
(declare-fun arrayNoDuplicates!0 (array!69716 (_ BitVec 32) List!23504) Bool)

(assert (=> b!1082860 (= res!721927 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23501))))

(declare-fun b!1082861 () Bool)

(declare-fun res!721924 () Bool)

(assert (=> b!1082861 (=> (not res!721924) (not e!618836))))

(assert (=> b!1082861 (= res!721924 (= (select (arr!33528 _keys!1070) i!650) k!904))))

(declare-fun b!1082862 () Bool)

(declare-fun res!721930 () Bool)

(assert (=> b!1082862 (=> (not res!721930) (not e!618836))))

(assert (=> b!1082862 (= res!721930 (and (= (size!34066 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34065 _keys!1070) (size!34066 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082863 () Bool)

(declare-fun res!721931 () Bool)

(assert (=> b!1082863 (=> (not res!721931) (not e!618836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69716 (_ BitVec 32)) Bool)

(assert (=> b!1082863 (= res!721931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082864 () Bool)

(declare-fun e!618840 () Bool)

(declare-fun tp_is_empty!26407 () Bool)

(assert (=> b!1082864 (= e!618840 tp_is_empty!26407)))

(declare-fun b!1082865 () Bool)

(declare-fun res!721928 () Bool)

(assert (=> b!1082865 (=> (not res!721928) (not e!618838))))

(assert (=> b!1082865 (= res!721928 (arrayNoDuplicates!0 lt!479799 #b00000000000000000000000000000000 Nil!23501))))

(declare-fun b!1082866 () Bool)

(declare-fun e!618841 () Bool)

(declare-fun e!618837 () Bool)

(assert (=> b!1082866 (= e!618841 (and e!618837 mapRes!41365))))

(declare-fun condMapEmpty!41365 () Bool)

(declare-fun mapDefault!41365 () ValueCell!12494)


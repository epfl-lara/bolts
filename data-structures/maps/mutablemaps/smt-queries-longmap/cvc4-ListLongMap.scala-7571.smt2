; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95786 () Bool)

(assert start!95786)

(declare-fun b_free!22403 () Bool)

(declare-fun b_next!22403 () Bool)

(assert (=> start!95786 (= b_free!22403 (not b_next!22403))))

(declare-fun tp!79058 () Bool)

(declare-fun b_and!35499 () Bool)

(assert (=> start!95786 (= tp!79058 b_and!35499)))

(declare-fun b!1082819 () Bool)

(declare-fun res!721904 () Bool)

(declare-fun e!618821 () Bool)

(assert (=> b!1082819 (=> (not res!721904) (not e!618821))))

(declare-datatypes ((array!69712 0))(
  ( (array!69713 (arr!33526 (Array (_ BitVec 32) (_ BitVec 64))) (size!34063 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69712)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082819 (= res!721904 (= (select (arr!33526 _keys!1070) i!650) k!904))))

(declare-fun b!1082820 () Bool)

(declare-fun res!721900 () Bool)

(assert (=> b!1082820 (=> (not res!721900) (not e!618821))))

(declare-datatypes ((List!23501 0))(
  ( (Nil!23498) (Cons!23497 (h!24706 (_ BitVec 64)) (t!32969 List!23501)) )
))
(declare-fun arrayNoDuplicates!0 (array!69712 (_ BitVec 32) List!23501) Bool)

(assert (=> b!1082820 (= res!721900 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23498))))

(declare-fun b!1082821 () Bool)

(declare-fun e!618819 () Bool)

(assert (=> b!1082821 (= e!618819 (not true))))

(declare-datatypes ((V!40333 0))(
  ( (V!40334 (val!13259 Int)) )
))
(declare-datatypes ((tuple2!16866 0))(
  ( (tuple2!16867 (_1!8443 (_ BitVec 64)) (_2!8443 V!40333)) )
))
(declare-datatypes ((List!23502 0))(
  ( (Nil!23499) (Cons!23498 (h!24707 tuple2!16866) (t!32970 List!23502)) )
))
(declare-datatypes ((ListLongMap!14847 0))(
  ( (ListLongMap!14848 (toList!7439 List!23502)) )
))
(declare-fun lt!479781 () ListLongMap!14847)

(declare-fun lt!479783 () ListLongMap!14847)

(assert (=> b!1082821 (and (= lt!479781 lt!479783) (= lt!479783 lt!479781))))

(declare-fun lt!479782 () ListLongMap!14847)

(declare-fun -!721 (ListLongMap!14847 (_ BitVec 64)) ListLongMap!14847)

(assert (=> b!1082821 (= lt!479783 (-!721 lt!479782 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40333)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((Unit!35557 0))(
  ( (Unit!35558) )
))
(declare-fun lt!479786 () Unit!35557)

(declare-fun zeroValue!831 () V!40333)

(declare-datatypes ((ValueCell!12493 0))(
  ( (ValueCellFull!12493 (v!15881 V!40333)) (EmptyCell!12493) )
))
(declare-datatypes ((array!69714 0))(
  ( (array!69715 (arr!33527 (Array (_ BitVec 32) ValueCell!12493)) (size!34064 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69714)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!4 (array!69712 array!69714 (_ BitVec 32) (_ BitVec 32) V!40333 V!40333 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35557)

(assert (=> b!1082821 (= lt!479786 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!4 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479785 () array!69712)

(declare-fun getCurrentListMapNoExtraKeys!3950 (array!69712 array!69714 (_ BitVec 32) (_ BitVec 32) V!40333 V!40333 (_ BitVec 32) Int) ListLongMap!14847)

(declare-fun dynLambda!2086 (Int (_ BitVec 64)) V!40333)

(assert (=> b!1082821 (= lt!479781 (getCurrentListMapNoExtraKeys!3950 lt!479785 (array!69715 (store (arr!33527 _values!874) i!650 (ValueCellFull!12493 (dynLambda!2086 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34064 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082821 (= lt!479782 (getCurrentListMapNoExtraKeys!3950 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082821 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!479784 () Unit!35557)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69712 (_ BitVec 64) (_ BitVec 32)) Unit!35557)

(assert (=> b!1082821 (= lt!479784 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082822 () Bool)

(declare-fun e!618818 () Bool)

(declare-fun tp_is_empty!26405 () Bool)

(assert (=> b!1082822 (= e!618818 tp_is_empty!26405)))

(declare-fun b!1082823 () Bool)

(assert (=> b!1082823 (= e!618821 e!618819)))

(declare-fun res!721902 () Bool)

(assert (=> b!1082823 (=> (not res!721902) (not e!618819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69712 (_ BitVec 32)) Bool)

(assert (=> b!1082823 (= res!721902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479785 mask!1414))))

(assert (=> b!1082823 (= lt!479785 (array!69713 (store (arr!33526 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34063 _keys!1070)))))

(declare-fun b!1082824 () Bool)

(declare-fun res!721901 () Bool)

(assert (=> b!1082824 (=> (not res!721901) (not e!618821))))

(assert (=> b!1082824 (= res!721901 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34063 _keys!1070))))))

(declare-fun b!1082825 () Bool)

(declare-fun res!721897 () Bool)

(assert (=> b!1082825 (=> (not res!721897) (not e!618821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082825 (= res!721897 (validKeyInArray!0 k!904))))

(declare-fun b!1082827 () Bool)

(declare-fun res!721898 () Bool)

(assert (=> b!1082827 (=> (not res!721898) (not e!618819))))

(assert (=> b!1082827 (= res!721898 (arrayNoDuplicates!0 lt!479785 #b00000000000000000000000000000000 Nil!23498))))

(declare-fun b!1082828 () Bool)

(declare-fun e!618820 () Bool)

(assert (=> b!1082828 (= e!618820 tp_is_empty!26405)))

(declare-fun mapIsEmpty!41362 () Bool)

(declare-fun mapRes!41362 () Bool)

(assert (=> mapIsEmpty!41362 mapRes!41362))

(declare-fun b!1082829 () Bool)

(declare-fun e!618823 () Bool)

(assert (=> b!1082829 (= e!618823 (and e!618818 mapRes!41362))))

(declare-fun condMapEmpty!41362 () Bool)

(declare-fun mapDefault!41362 () ValueCell!12493)


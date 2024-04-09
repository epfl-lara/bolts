; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95800 () Bool)

(assert start!95800)

(declare-fun b_free!22417 () Bool)

(declare-fun b_next!22417 () Bool)

(assert (=> start!95800 (= b_free!22417 (not b_next!22417))))

(declare-fun tp!79101 () Bool)

(declare-fun b_and!35527 () Bool)

(assert (=> start!95800 (= tp!79101 b_and!35527)))

(declare-fun b!1083085 () Bool)

(declare-fun e!618944 () Bool)

(assert (=> b!1083085 (= e!618944 (not true))))

(declare-datatypes ((V!40353 0))(
  ( (V!40354 (val!13266 Int)) )
))
(declare-datatypes ((tuple2!16878 0))(
  ( (tuple2!16879 (_1!8449 (_ BitVec 64)) (_2!8449 V!40353)) )
))
(declare-datatypes ((List!23514 0))(
  ( (Nil!23511) (Cons!23510 (h!24719 tuple2!16878) (t!32996 List!23514)) )
))
(declare-datatypes ((ListLongMap!14859 0))(
  ( (ListLongMap!14860 (toList!7445 List!23514)) )
))
(declare-fun lt!479907 () ListLongMap!14859)

(declare-fun lt!479908 () ListLongMap!14859)

(assert (=> b!1083085 (and (= lt!479907 lt!479908) (= lt!479908 lt!479907))))

(declare-fun lt!479912 () ListLongMap!14859)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!727 (ListLongMap!14859 (_ BitVec 64)) ListLongMap!14859)

(assert (=> b!1083085 (= lt!479908 (-!727 lt!479912 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40353)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((Unit!35569 0))(
  ( (Unit!35570) )
))
(declare-fun lt!479909 () Unit!35569)

(declare-fun zeroValue!831 () V!40353)

(declare-datatypes ((array!69740 0))(
  ( (array!69741 (arr!33540 (Array (_ BitVec 32) (_ BitVec 64))) (size!34077 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69740)

(declare-datatypes ((ValueCell!12500 0))(
  ( (ValueCellFull!12500 (v!15888 V!40353)) (EmptyCell!12500) )
))
(declare-datatypes ((array!69742 0))(
  ( (array!69743 (arr!33541 (Array (_ BitVec 32) ValueCell!12500)) (size!34078 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69742)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!10 (array!69740 array!69742 (_ BitVec 32) (_ BitVec 32) V!40353 V!40353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35569)

(assert (=> b!1083085 (= lt!479909 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!10 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479910 () array!69740)

(declare-fun getCurrentListMapNoExtraKeys!3956 (array!69740 array!69742 (_ BitVec 32) (_ BitVec 32) V!40353 V!40353 (_ BitVec 32) Int) ListLongMap!14859)

(declare-fun dynLambda!2092 (Int (_ BitVec 64)) V!40353)

(assert (=> b!1083085 (= lt!479907 (getCurrentListMapNoExtraKeys!3956 lt!479910 (array!69743 (store (arr!33541 _values!874) i!650 (ValueCellFull!12500 (dynLambda!2092 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34078 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083085 (= lt!479912 (getCurrentListMapNoExtraKeys!3956 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083085 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!479911 () Unit!35569)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69740 (_ BitVec 64) (_ BitVec 32)) Unit!35569)

(assert (=> b!1083085 (= lt!479911 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1083086 () Bool)

(declare-fun res!722086 () Bool)

(declare-fun e!618947 () Bool)

(assert (=> b!1083086 (=> (not res!722086) (not e!618947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69740 (_ BitVec 32)) Bool)

(assert (=> b!1083086 (= res!722086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083087 () Bool)

(declare-fun e!618949 () Bool)

(declare-fun e!618948 () Bool)

(declare-fun mapRes!41383 () Bool)

(assert (=> b!1083087 (= e!618949 (and e!618948 mapRes!41383))))

(declare-fun condMapEmpty!41383 () Bool)

(declare-fun mapDefault!41383 () ValueCell!12500)


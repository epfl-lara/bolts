; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95798 () Bool)

(assert start!95798)

(declare-fun b_free!22415 () Bool)

(declare-fun b_next!22415 () Bool)

(assert (=> start!95798 (= b_free!22415 (not b_next!22415))))

(declare-fun tp!79094 () Bool)

(declare-fun b_and!35523 () Bool)

(assert (=> start!95798 (= tp!79094 b_and!35523)))

(declare-fun b!1083047 () Bool)

(declare-fun e!618928 () Bool)

(declare-fun tp_is_empty!26417 () Bool)

(assert (=> b!1083047 (= e!618928 tp_is_empty!26417)))

(declare-fun b!1083048 () Bool)

(declare-fun res!722060 () Bool)

(declare-fun e!618930 () Bool)

(assert (=> b!1083048 (=> (not res!722060) (not e!618930))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083048 (= res!722060 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41380 () Bool)

(declare-fun mapRes!41380 () Bool)

(declare-fun tp!79095 () Bool)

(declare-fun e!618927 () Bool)

(assert (=> mapNonEmpty!41380 (= mapRes!41380 (and tp!79095 e!618927))))

(declare-datatypes ((V!40349 0))(
  ( (V!40350 (val!13265 Int)) )
))
(declare-datatypes ((ValueCell!12499 0))(
  ( (ValueCellFull!12499 (v!15887 V!40349)) (EmptyCell!12499) )
))
(declare-datatypes ((array!69736 0))(
  ( (array!69737 (arr!33538 (Array (_ BitVec 32) ValueCell!12499)) (size!34075 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69736)

(declare-fun mapRest!41380 () (Array (_ BitVec 32) ValueCell!12499))

(declare-fun mapValue!41380 () ValueCell!12499)

(declare-fun mapKey!41380 () (_ BitVec 32))

(assert (=> mapNonEmpty!41380 (= (arr!33538 _values!874) (store mapRest!41380 mapKey!41380 mapValue!41380))))

(declare-fun mapIsEmpty!41380 () Bool)

(assert (=> mapIsEmpty!41380 mapRes!41380))

(declare-fun b!1083049 () Bool)

(declare-fun res!722061 () Bool)

(assert (=> b!1083049 (=> (not res!722061) (not e!618930))))

(declare-datatypes ((array!69738 0))(
  ( (array!69739 (arr!33539 (Array (_ BitVec 32) (_ BitVec 64))) (size!34076 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69738)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69738 (_ BitVec 32)) Bool)

(assert (=> b!1083049 (= res!722061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083050 () Bool)

(declare-fun e!618929 () Bool)

(assert (=> b!1083050 (= e!618929 (not true))))

(declare-datatypes ((tuple2!16876 0))(
  ( (tuple2!16877 (_1!8448 (_ BitVec 64)) (_2!8448 V!40349)) )
))
(declare-datatypes ((List!23512 0))(
  ( (Nil!23509) (Cons!23508 (h!24717 tuple2!16876) (t!32992 List!23512)) )
))
(declare-datatypes ((ListLongMap!14857 0))(
  ( (ListLongMap!14858 (toList!7444 List!23512)) )
))
(declare-fun lt!479894 () ListLongMap!14857)

(declare-fun lt!479889 () ListLongMap!14857)

(assert (=> b!1083050 (and (= lt!479894 lt!479889) (= lt!479889 lt!479894))))

(declare-fun lt!479892 () ListLongMap!14857)

(declare-fun -!726 (ListLongMap!14857 (_ BitVec 64)) ListLongMap!14857)

(assert (=> b!1083050 (= lt!479889 (-!726 lt!479892 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40349)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40349)

(declare-datatypes ((Unit!35567 0))(
  ( (Unit!35568) )
))
(declare-fun lt!479893 () Unit!35567)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!9 (array!69738 array!69736 (_ BitVec 32) (_ BitVec 32) V!40349 V!40349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35567)

(assert (=> b!1083050 (= lt!479893 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!9 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479890 () array!69738)

(declare-fun getCurrentListMapNoExtraKeys!3955 (array!69738 array!69736 (_ BitVec 32) (_ BitVec 32) V!40349 V!40349 (_ BitVec 32) Int) ListLongMap!14857)

(declare-fun dynLambda!2091 (Int (_ BitVec 64)) V!40349)

(assert (=> b!1083050 (= lt!479894 (getCurrentListMapNoExtraKeys!3955 lt!479890 (array!69737 (store (arr!33538 _values!874) i!650 (ValueCellFull!12499 (dynLambda!2091 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34075 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083050 (= lt!479892 (getCurrentListMapNoExtraKeys!3955 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083050 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!479891 () Unit!35567)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69738 (_ BitVec 64) (_ BitVec 32)) Unit!35567)

(assert (=> b!1083050 (= lt!479891 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1083051 () Bool)

(declare-fun res!722064 () Bool)

(assert (=> b!1083051 (=> (not res!722064) (not e!618929))))

(declare-datatypes ((List!23513 0))(
  ( (Nil!23510) (Cons!23509 (h!24718 (_ BitVec 64)) (t!32993 List!23513)) )
))
(declare-fun arrayNoDuplicates!0 (array!69738 (_ BitVec 32) List!23513) Bool)

(assert (=> b!1083051 (= res!722064 (arrayNoDuplicates!0 lt!479890 #b00000000000000000000000000000000 Nil!23510))))

(declare-fun b!1083053 () Bool)

(declare-fun res!722062 () Bool)

(assert (=> b!1083053 (=> (not res!722062) (not e!618930))))

(assert (=> b!1083053 (= res!722062 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34076 _keys!1070))))))

(declare-fun b!1083054 () Bool)

(declare-fun e!618926 () Bool)

(assert (=> b!1083054 (= e!618926 (and e!618928 mapRes!41380))))

(declare-fun condMapEmpty!41380 () Bool)

(declare-fun mapDefault!41380 () ValueCell!12499)


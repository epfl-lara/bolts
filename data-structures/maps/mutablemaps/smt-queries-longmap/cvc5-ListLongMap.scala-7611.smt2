; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96022 () Bool)

(assert start!96022)

(declare-fun b_free!22639 () Bool)

(declare-fun b_next!22639 () Bool)

(assert (=> start!96022 (= b_free!22639 (not b_next!22639))))

(declare-fun tp!79767 () Bool)

(declare-fun b_and!35971 () Bool)

(assert (=> start!96022 (= tp!79767 b_and!35971)))

(declare-fun b!1087748 () Bool)

(declare-fun e!621376 () Bool)

(assert (=> b!1087748 (= e!621376 true)))

(declare-datatypes ((V!40649 0))(
  ( (V!40650 (val!13377 Int)) )
))
(declare-datatypes ((tuple2!17046 0))(
  ( (tuple2!17047 (_1!8533 (_ BitVec 64)) (_2!8533 V!40649)) )
))
(declare-datatypes ((List!23687 0))(
  ( (Nil!23684) (Cons!23683 (h!24892 tuple2!17046) (t!33391 List!23687)) )
))
(declare-datatypes ((ListLongMap!15027 0))(
  ( (ListLongMap!15028 (toList!7529 List!23687)) )
))
(declare-fun lt!484209 () ListLongMap!15027)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!484216 () ListLongMap!15027)

(declare-fun -!809 (ListLongMap!15027 (_ BitVec 64)) ListLongMap!15027)

(assert (=> b!1087748 (= (-!809 lt!484209 k!904) lt!484216)))

(declare-datatypes ((Unit!35733 0))(
  ( (Unit!35734) )
))
(declare-fun lt!484217 () Unit!35733)

(declare-fun lt!484214 () ListLongMap!15027)

(declare-fun zeroValue!831 () V!40649)

(declare-fun addRemoveCommutativeForDiffKeys!48 (ListLongMap!15027 (_ BitVec 64) V!40649 (_ BitVec 64)) Unit!35733)

(assert (=> b!1087748 (= lt!484217 (addRemoveCommutativeForDiffKeys!48 lt!484214 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun res!725529 () Bool)

(declare-fun e!621373 () Bool)

(assert (=> start!96022 (=> (not res!725529) (not e!621373))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96022 (= res!725529 (validMask!0 mask!1414))))

(assert (=> start!96022 e!621373))

(assert (=> start!96022 tp!79767))

(assert (=> start!96022 true))

(declare-fun tp_is_empty!26641 () Bool)

(assert (=> start!96022 tp_is_empty!26641))

(declare-datatypes ((array!70174 0))(
  ( (array!70175 (arr!33757 (Array (_ BitVec 32) (_ BitVec 64))) (size!34294 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70174)

(declare-fun array_inv!25900 (array!70174) Bool)

(assert (=> start!96022 (array_inv!25900 _keys!1070)))

(declare-datatypes ((ValueCell!12611 0))(
  ( (ValueCellFull!12611 (v!15999 V!40649)) (EmptyCell!12611) )
))
(declare-datatypes ((array!70176 0))(
  ( (array!70177 (arr!33758 (Array (_ BitVec 32) ValueCell!12611)) (size!34295 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70176)

(declare-fun e!621370 () Bool)

(declare-fun array_inv!25901 (array!70176) Bool)

(assert (=> start!96022 (and (array_inv!25901 _values!874) e!621370)))

(declare-fun mapNonEmpty!41716 () Bool)

(declare-fun mapRes!41716 () Bool)

(declare-fun tp!79766 () Bool)

(declare-fun e!621375 () Bool)

(assert (=> mapNonEmpty!41716 (= mapRes!41716 (and tp!79766 e!621375))))

(declare-fun mapKey!41716 () (_ BitVec 32))

(declare-fun mapValue!41716 () ValueCell!12611)

(declare-fun mapRest!41716 () (Array (_ BitVec 32) ValueCell!12611))

(assert (=> mapNonEmpty!41716 (= (arr!33758 _values!874) (store mapRest!41716 mapKey!41716 mapValue!41716))))

(declare-fun mapIsEmpty!41716 () Bool)

(assert (=> mapIsEmpty!41716 mapRes!41716))

(declare-fun b!1087749 () Bool)

(declare-fun res!725537 () Bool)

(assert (=> b!1087749 (=> (not res!725537) (not e!621373))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087749 (= res!725537 (and (= (size!34295 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34294 _keys!1070) (size!34295 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087750 () Bool)

(declare-fun e!621372 () Bool)

(declare-fun e!621374 () Bool)

(assert (=> b!1087750 (= e!621372 (not e!621374))))

(declare-fun res!725534 () Bool)

(assert (=> b!1087750 (=> res!725534 e!621374)))

(assert (=> b!1087750 (= res!725534 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40649)

(declare-fun lt!484206 () ListLongMap!15027)

(declare-fun getCurrentListMap!4281 (array!70174 array!70176 (_ BitVec 32) (_ BitVec 32) V!40649 V!40649 (_ BitVec 32) Int) ListLongMap!15027)

(assert (=> b!1087750 (= lt!484206 (getCurrentListMap!4281 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484211 () array!70174)

(declare-fun lt!484210 () array!70176)

(declare-fun lt!484212 () ListLongMap!15027)

(assert (=> b!1087750 (= lt!484212 (getCurrentListMap!4281 lt!484211 lt!484210 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484213 () ListLongMap!15027)

(declare-fun lt!484207 () ListLongMap!15027)

(assert (=> b!1087750 (and (= lt!484213 lt!484207) (= lt!484207 lt!484213))))

(assert (=> b!1087750 (= lt!484207 (-!809 lt!484214 k!904))))

(declare-fun lt!484215 () Unit!35733)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!87 (array!70174 array!70176 (_ BitVec 32) (_ BitVec 32) V!40649 V!40649 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35733)

(assert (=> b!1087750 (= lt!484215 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!87 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4033 (array!70174 array!70176 (_ BitVec 32) (_ BitVec 32) V!40649 V!40649 (_ BitVec 32) Int) ListLongMap!15027)

(assert (=> b!1087750 (= lt!484213 (getCurrentListMapNoExtraKeys!4033 lt!484211 lt!484210 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2169 (Int (_ BitVec 64)) V!40649)

(assert (=> b!1087750 (= lt!484210 (array!70177 (store (arr!33758 _values!874) i!650 (ValueCellFull!12611 (dynLambda!2169 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34295 _values!874)))))

(assert (=> b!1087750 (= lt!484214 (getCurrentListMapNoExtraKeys!4033 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087750 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484208 () Unit!35733)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70174 (_ BitVec 64) (_ BitVec 32)) Unit!35733)

(assert (=> b!1087750 (= lt!484208 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1087751 () Bool)

(declare-fun e!621371 () Bool)

(assert (=> b!1087751 (= e!621371 tp_is_empty!26641)))

(declare-fun b!1087752 () Bool)

(declare-fun res!725535 () Bool)

(assert (=> b!1087752 (=> (not res!725535) (not e!621373))))

(declare-datatypes ((List!23688 0))(
  ( (Nil!23685) (Cons!23684 (h!24893 (_ BitVec 64)) (t!33392 List!23688)) )
))
(declare-fun arrayNoDuplicates!0 (array!70174 (_ BitVec 32) List!23688) Bool)

(assert (=> b!1087752 (= res!725535 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23685))))

(declare-fun b!1087753 () Bool)

(declare-fun res!725533 () Bool)

(assert (=> b!1087753 (=> (not res!725533) (not e!621373))))

(assert (=> b!1087753 (= res!725533 (= (select (arr!33757 _keys!1070) i!650) k!904))))

(declare-fun b!1087754 () Bool)

(assert (=> b!1087754 (= e!621370 (and e!621371 mapRes!41716))))

(declare-fun condMapEmpty!41716 () Bool)

(declare-fun mapDefault!41716 () ValueCell!12611)


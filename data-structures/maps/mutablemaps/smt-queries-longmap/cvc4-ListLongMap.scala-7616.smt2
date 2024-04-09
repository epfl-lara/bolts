; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96056 () Bool)

(assert start!96056)

(declare-fun b_free!22673 () Bool)

(declare-fun b_next!22673 () Bool)

(assert (=> start!96056 (= b_free!22673 (not b_next!22673))))

(declare-fun tp!79868 () Bool)

(declare-fun b_and!36039 () Bool)

(assert (=> start!96056 (= tp!79868 b_and!36039)))

(declare-fun mapNonEmpty!41767 () Bool)

(declare-fun mapRes!41767 () Bool)

(declare-fun tp!79869 () Bool)

(declare-fun e!621779 () Bool)

(assert (=> mapNonEmpty!41767 (= mapRes!41767 (and tp!79869 e!621779))))

(declare-datatypes ((V!40693 0))(
  ( (V!40694 (val!13394 Int)) )
))
(declare-datatypes ((ValueCell!12628 0))(
  ( (ValueCellFull!12628 (v!16016 V!40693)) (EmptyCell!12628) )
))
(declare-datatypes ((array!70242 0))(
  ( (array!70243 (arr!33791 (Array (_ BitVec 32) ValueCell!12628)) (size!34328 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70242)

(declare-fun mapRest!41767 () (Array (_ BitVec 32) ValueCell!12628))

(declare-fun mapValue!41767 () ValueCell!12628)

(declare-fun mapKey!41767 () (_ BitVec 32))

(assert (=> mapNonEmpty!41767 (= (arr!33791 _values!874) (store mapRest!41767 mapKey!41767 mapValue!41767))))

(declare-fun b!1088496 () Bool)

(declare-fun e!621781 () Bool)

(declare-fun e!621777 () Bool)

(assert (=> b!1088496 (= e!621781 (not e!621777))))

(declare-fun res!726094 () Bool)

(assert (=> b!1088496 (=> res!726094 e!621777)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088496 (= res!726094 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17078 0))(
  ( (tuple2!17079 (_1!8549 (_ BitVec 64)) (_2!8549 V!40693)) )
))
(declare-datatypes ((List!23718 0))(
  ( (Nil!23715) (Cons!23714 (h!24923 tuple2!17078) (t!33456 List!23718)) )
))
(declare-datatypes ((ListLongMap!15059 0))(
  ( (ListLongMap!15060 (toList!7545 List!23718)) )
))
(declare-fun lt!484874 () ListLongMap!15059)

(declare-fun zeroValue!831 () V!40693)

(declare-datatypes ((array!70244 0))(
  ( (array!70245 (arr!33792 (Array (_ BitVec 32) (_ BitVec 64))) (size!34329 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70244)

(declare-fun minValue!831 () V!40693)

(declare-fun getCurrentListMap!4295 (array!70244 array!70242 (_ BitVec 32) (_ BitVec 32) V!40693 V!40693 (_ BitVec 32) Int) ListLongMap!15059)

(assert (=> b!1088496 (= lt!484874 (getCurrentListMap!4295 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484875 () ListLongMap!15059)

(declare-fun lt!484873 () array!70242)

(declare-fun lt!484878 () array!70244)

(assert (=> b!1088496 (= lt!484875 (getCurrentListMap!4295 lt!484878 lt!484873 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484879 () ListLongMap!15059)

(declare-fun lt!484870 () ListLongMap!15059)

(assert (=> b!1088496 (and (= lt!484879 lt!484870) (= lt!484870 lt!484879))))

(declare-fun lt!484872 () ListLongMap!15059)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!825 (ListLongMap!15059 (_ BitVec 64)) ListLongMap!15059)

(assert (=> b!1088496 (= lt!484870 (-!825 lt!484872 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35765 0))(
  ( (Unit!35766) )
))
(declare-fun lt!484877 () Unit!35765)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!101 (array!70244 array!70242 (_ BitVec 32) (_ BitVec 32) V!40693 V!40693 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35765)

(assert (=> b!1088496 (= lt!484877 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!101 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4047 (array!70244 array!70242 (_ BitVec 32) (_ BitVec 32) V!40693 V!40693 (_ BitVec 32) Int) ListLongMap!15059)

(assert (=> b!1088496 (= lt!484879 (getCurrentListMapNoExtraKeys!4047 lt!484878 lt!484873 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2183 (Int (_ BitVec 64)) V!40693)

(assert (=> b!1088496 (= lt!484873 (array!70243 (store (arr!33791 _values!874) i!650 (ValueCellFull!12628 (dynLambda!2183 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34328 _values!874)))))

(assert (=> b!1088496 (= lt!484872 (getCurrentListMapNoExtraKeys!4047 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088496 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484869 () Unit!35765)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70244 (_ BitVec 64) (_ BitVec 32)) Unit!35765)

(assert (=> b!1088496 (= lt!484869 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088497 () Bool)

(declare-fun tp_is_empty!26675 () Bool)

(assert (=> b!1088497 (= e!621779 tp_is_empty!26675)))

(declare-fun b!1088499 () Bool)

(declare-fun res!726089 () Bool)

(declare-fun e!621778 () Bool)

(assert (=> b!1088499 (=> (not res!726089) (not e!621778))))

(assert (=> b!1088499 (= res!726089 (= (select (arr!33792 _keys!1070) i!650) k!904))))

(declare-fun b!1088500 () Bool)

(assert (=> b!1088500 (= e!621778 e!621781)))

(declare-fun res!726090 () Bool)

(assert (=> b!1088500 (=> (not res!726090) (not e!621781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70244 (_ BitVec 32)) Bool)

(assert (=> b!1088500 (= res!726090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484878 mask!1414))))

(assert (=> b!1088500 (= lt!484878 (array!70245 (store (arr!33792 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34329 _keys!1070)))))

(declare-fun b!1088501 () Bool)

(declare-fun res!726097 () Bool)

(assert (=> b!1088501 (=> (not res!726097) (not e!621778))))

(assert (=> b!1088501 (= res!726097 (and (= (size!34328 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34329 _keys!1070) (size!34328 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088502 () Bool)

(declare-fun e!621782 () Bool)

(declare-fun e!621783 () Bool)

(assert (=> b!1088502 (= e!621782 (and e!621783 mapRes!41767))))

(declare-fun condMapEmpty!41767 () Bool)

(declare-fun mapDefault!41767 () ValueCell!12628)


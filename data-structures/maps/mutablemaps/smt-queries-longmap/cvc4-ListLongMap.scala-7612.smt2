; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96032 () Bool)

(assert start!96032)

(declare-fun b_free!22649 () Bool)

(declare-fun b_next!22649 () Bool)

(assert (=> start!96032 (= b_free!22649 (not b_next!22649))))

(declare-fun tp!79796 () Bool)

(declare-fun b_and!35991 () Bool)

(assert (=> start!96032 (= tp!79796 b_and!35991)))

(declare-fun b!1087968 () Bool)

(declare-fun res!725701 () Bool)

(declare-fun e!621494 () Bool)

(assert (=> b!1087968 (=> (not res!725701) (not e!621494))))

(declare-datatypes ((array!70194 0))(
  ( (array!70195 (arr!33767 (Array (_ BitVec 32) (_ BitVec 64))) (size!34304 (_ BitVec 32))) )
))
(declare-fun lt!484412 () array!70194)

(declare-datatypes ((List!23697 0))(
  ( (Nil!23694) (Cons!23693 (h!24902 (_ BitVec 64)) (t!33411 List!23697)) )
))
(declare-fun arrayNoDuplicates!0 (array!70194 (_ BitVec 32) List!23697) Bool)

(assert (=> b!1087968 (= res!725701 (arrayNoDuplicates!0 lt!484412 #b00000000000000000000000000000000 Nil!23694))))

(declare-fun b!1087969 () Bool)

(declare-fun e!621492 () Bool)

(declare-fun tp_is_empty!26651 () Bool)

(assert (=> b!1087969 (= e!621492 tp_is_empty!26651)))

(declare-fun b!1087970 () Bool)

(declare-fun e!621490 () Bool)

(declare-fun e!621495 () Bool)

(assert (=> b!1087970 (= e!621490 e!621495)))

(declare-fun res!725696 () Bool)

(assert (=> b!1087970 (=> res!725696 e!621495)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1087970 (= res!725696 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40661 0))(
  ( (V!40662 (val!13382 Int)) )
))
(declare-datatypes ((tuple2!17056 0))(
  ( (tuple2!17057 (_1!8538 (_ BitVec 64)) (_2!8538 V!40661)) )
))
(declare-datatypes ((List!23698 0))(
  ( (Nil!23695) (Cons!23694 (h!24903 tuple2!17056) (t!33412 List!23698)) )
))
(declare-datatypes ((ListLongMap!15037 0))(
  ( (ListLongMap!15038 (toList!7534 List!23698)) )
))
(declare-fun lt!484407 () ListLongMap!15037)

(declare-fun lt!484406 () ListLongMap!15037)

(assert (=> b!1087970 (= lt!484407 lt!484406)))

(declare-fun lt!484403 () ListLongMap!15037)

(declare-fun lt!484405 () tuple2!17056)

(declare-fun +!3256 (ListLongMap!15037 tuple2!17056) ListLongMap!15037)

(assert (=> b!1087970 (= lt!484406 (+!3256 lt!484403 lt!484405))))

(declare-fun lt!484404 () ListLongMap!15037)

(declare-fun lt!484408 () ListLongMap!15037)

(assert (=> b!1087970 (= lt!484404 lt!484408)))

(declare-fun lt!484401 () ListLongMap!15037)

(assert (=> b!1087970 (= lt!484408 (+!3256 lt!484401 lt!484405))))

(declare-fun lt!484402 () ListLongMap!15037)

(assert (=> b!1087970 (= lt!484407 (+!3256 lt!484402 lt!484405))))

(declare-fun zeroValue!831 () V!40661)

(assert (=> b!1087970 (= lt!484405 (tuple2!17057 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087971 () Bool)

(declare-fun e!621489 () Bool)

(assert (=> b!1087971 (= e!621489 e!621494)))

(declare-fun res!725692 () Bool)

(assert (=> b!1087971 (=> (not res!725692) (not e!621494))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70194 (_ BitVec 32)) Bool)

(assert (=> b!1087971 (= res!725692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484412 mask!1414))))

(declare-fun _keys!1070 () array!70194)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087971 (= lt!484412 (array!70195 (store (arr!33767 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34304 _keys!1070)))))

(declare-fun b!1087972 () Bool)

(declare-fun res!725702 () Bool)

(assert (=> b!1087972 (=> (not res!725702) (not e!621489))))

(assert (=> b!1087972 (= res!725702 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23694))))

(declare-fun b!1087973 () Bool)

(declare-fun e!621491 () Bool)

(assert (=> b!1087973 (= e!621491 tp_is_empty!26651)))

(declare-fun b!1087974 () Bool)

(declare-fun res!725697 () Bool)

(assert (=> b!1087974 (=> (not res!725697) (not e!621489))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12616 0))(
  ( (ValueCellFull!12616 (v!16004 V!40661)) (EmptyCell!12616) )
))
(declare-datatypes ((array!70196 0))(
  ( (array!70197 (arr!33768 (Array (_ BitVec 32) ValueCell!12616)) (size!34305 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70196)

(assert (=> b!1087974 (= res!725697 (and (= (size!34305 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34304 _keys!1070) (size!34305 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087975 () Bool)

(declare-fun res!725698 () Bool)

(assert (=> b!1087975 (=> (not res!725698) (not e!621489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087975 (= res!725698 (validKeyInArray!0 k!904))))

(declare-fun b!1087977 () Bool)

(declare-fun res!725699 () Bool)

(assert (=> b!1087977 (=> (not res!725699) (not e!621489))))

(assert (=> b!1087977 (= res!725699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087978 () Bool)

(assert (=> b!1087978 (= e!621494 (not e!621490))))

(declare-fun res!725693 () Bool)

(assert (=> b!1087978 (=> res!725693 e!621490)))

(assert (=> b!1087978 (= res!725693 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40661)

(declare-fun getCurrentListMap!4285 (array!70194 array!70196 (_ BitVec 32) (_ BitVec 32) V!40661 V!40661 (_ BitVec 32) Int) ListLongMap!15037)

(assert (=> b!1087978 (= lt!484404 (getCurrentListMap!4285 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484400 () array!70196)

(assert (=> b!1087978 (= lt!484407 (getCurrentListMap!4285 lt!484412 lt!484400 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1087978 (and (= lt!484402 lt!484403) (= lt!484403 lt!484402))))

(declare-fun -!814 (ListLongMap!15037 (_ BitVec 64)) ListLongMap!15037)

(assert (=> b!1087978 (= lt!484403 (-!814 lt!484401 k!904))))

(declare-datatypes ((Unit!35743 0))(
  ( (Unit!35744) )
))
(declare-fun lt!484409 () Unit!35743)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!91 (array!70194 array!70196 (_ BitVec 32) (_ BitVec 32) V!40661 V!40661 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35743)

(assert (=> b!1087978 (= lt!484409 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!91 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4037 (array!70194 array!70196 (_ BitVec 32) (_ BitVec 32) V!40661 V!40661 (_ BitVec 32) Int) ListLongMap!15037)

(assert (=> b!1087978 (= lt!484402 (getCurrentListMapNoExtraKeys!4037 lt!484412 lt!484400 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2173 (Int (_ BitVec 64)) V!40661)

(assert (=> b!1087978 (= lt!484400 (array!70197 (store (arr!33768 _values!874) i!650 (ValueCellFull!12616 (dynLambda!2173 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34305 _values!874)))))

(assert (=> b!1087978 (= lt!484401 (getCurrentListMapNoExtraKeys!4037 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087978 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484411 () Unit!35743)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70194 (_ BitVec 64) (_ BitVec 32)) Unit!35743)

(assert (=> b!1087978 (= lt!484411 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1087979 () Bool)

(declare-fun e!621493 () Bool)

(declare-fun mapRes!41731 () Bool)

(assert (=> b!1087979 (= e!621493 (and e!621492 mapRes!41731))))

(declare-fun condMapEmpty!41731 () Bool)

(declare-fun mapDefault!41731 () ValueCell!12616)


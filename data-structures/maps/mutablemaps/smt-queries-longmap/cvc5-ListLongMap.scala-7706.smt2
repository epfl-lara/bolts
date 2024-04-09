; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96828 () Bool)

(assert start!96828)

(declare-fun b_free!23161 () Bool)

(declare-fun b_next!23161 () Bool)

(assert (=> start!96828 (= b_free!23161 (not b_next!23161))))

(declare-fun tp!81434 () Bool)

(declare-fun b_and!37115 () Bool)

(assert (=> start!96828 (= tp!81434 b_and!37115)))

(declare-fun b!1100958 () Bool)

(declare-fun e!628441 () Bool)

(declare-fun e!628444 () Bool)

(assert (=> b!1100958 (= e!628441 e!628444)))

(declare-fun res!734735 () Bool)

(assert (=> b!1100958 (=> (not res!734735) (not e!628444))))

(declare-datatypes ((array!71292 0))(
  ( (array!71293 (arr!34306 (Array (_ BitVec 32) (_ BitVec 64))) (size!34843 (_ BitVec 32))) )
))
(declare-fun lt!493484 () array!71292)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71292 (_ BitVec 32)) Bool)

(assert (=> b!1100958 (= res!734735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493484 mask!1414))))

(declare-fun _keys!1070 () array!71292)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100958 (= lt!493484 (array!71293 (store (arr!34306 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34843 _keys!1070)))))

(declare-fun b!1100959 () Bool)

(declare-fun e!628439 () Bool)

(assert (=> b!1100959 (= e!628444 (not e!628439))))

(declare-fun res!734736 () Bool)

(assert (=> b!1100959 (=> res!734736 e!628439)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100959 (= res!734736 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41409 0))(
  ( (V!41410 (val!13662 Int)) )
))
(declare-datatypes ((tuple2!17436 0))(
  ( (tuple2!17437 (_1!8728 (_ BitVec 64)) (_2!8728 V!41409)) )
))
(declare-datatypes ((List!24108 0))(
  ( (Nil!24105) (Cons!24104 (h!25313 tuple2!17436) (t!34322 List!24108)) )
))
(declare-datatypes ((ListLongMap!15417 0))(
  ( (ListLongMap!15418 (toList!7724 List!24108)) )
))
(declare-fun lt!493486 () ListLongMap!15417)

(declare-fun minValue!831 () V!41409)

(declare-fun zeroValue!831 () V!41409)

(declare-datatypes ((ValueCell!12896 0))(
  ( (ValueCellFull!12896 (v!16292 V!41409)) (EmptyCell!12896) )
))
(declare-datatypes ((array!71294 0))(
  ( (array!71295 (arr!34307 (Array (_ BitVec 32) ValueCell!12896)) (size!34844 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71294)

(declare-fun getCurrentListMap!4411 (array!71292 array!71294 (_ BitVec 32) (_ BitVec 32) V!41409 V!41409 (_ BitVec 32) Int) ListLongMap!15417)

(assert (=> b!1100959 (= lt!493486 (getCurrentListMap!4411 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493479 () array!71294)

(declare-fun lt!493485 () ListLongMap!15417)

(assert (=> b!1100959 (= lt!493485 (getCurrentListMap!4411 lt!493484 lt!493479 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493480 () ListLongMap!15417)

(declare-fun lt!493481 () ListLongMap!15417)

(assert (=> b!1100959 (and (= lt!493480 lt!493481) (= lt!493481 lt!493480))))

(declare-fun lt!493483 () ListLongMap!15417)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!963 (ListLongMap!15417 (_ BitVec 64)) ListLongMap!15417)

(assert (=> b!1100959 (= lt!493481 (-!963 lt!493483 k!904))))

(declare-datatypes ((Unit!36121 0))(
  ( (Unit!36122) )
))
(declare-fun lt!493482 () Unit!36121)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!223 (array!71292 array!71294 (_ BitVec 32) (_ BitVec 32) V!41409 V!41409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36121)

(assert (=> b!1100959 (= lt!493482 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!223 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4198 (array!71292 array!71294 (_ BitVec 32) (_ BitVec 32) V!41409 V!41409 (_ BitVec 32) Int) ListLongMap!15417)

(assert (=> b!1100959 (= lt!493480 (getCurrentListMapNoExtraKeys!4198 lt!493484 lt!493479 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2329 (Int (_ BitVec 64)) V!41409)

(assert (=> b!1100959 (= lt!493479 (array!71295 (store (arr!34307 _values!874) i!650 (ValueCellFull!12896 (dynLambda!2329 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34844 _values!874)))))

(assert (=> b!1100959 (= lt!493483 (getCurrentListMapNoExtraKeys!4198 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100959 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493487 () Unit!36121)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71292 (_ BitVec 64) (_ BitVec 32)) Unit!36121)

(assert (=> b!1100959 (= lt!493487 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!42601 () Bool)

(declare-fun mapRes!42601 () Bool)

(declare-fun tp!81435 () Bool)

(declare-fun e!628442 () Bool)

(assert (=> mapNonEmpty!42601 (= mapRes!42601 (and tp!81435 e!628442))))

(declare-fun mapValue!42601 () ValueCell!12896)

(declare-fun mapRest!42601 () (Array (_ BitVec 32) ValueCell!12896))

(declare-fun mapKey!42601 () (_ BitVec 32))

(assert (=> mapNonEmpty!42601 (= (arr!34307 _values!874) (store mapRest!42601 mapKey!42601 mapValue!42601))))

(declare-fun b!1100960 () Bool)

(declare-fun res!734743 () Bool)

(assert (=> b!1100960 (=> (not res!734743) (not e!628441))))

(declare-datatypes ((List!24109 0))(
  ( (Nil!24106) (Cons!24105 (h!25314 (_ BitVec 64)) (t!34323 List!24109)) )
))
(declare-fun arrayNoDuplicates!0 (array!71292 (_ BitVec 32) List!24109) Bool)

(assert (=> b!1100960 (= res!734743 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24106))))

(declare-fun b!1100961 () Bool)

(declare-fun res!734740 () Bool)

(assert (=> b!1100961 (=> (not res!734740) (not e!628444))))

(assert (=> b!1100961 (= res!734740 (arrayNoDuplicates!0 lt!493484 #b00000000000000000000000000000000 Nil!24106))))

(declare-fun res!734739 () Bool)

(assert (=> start!96828 (=> (not res!734739) (not e!628441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96828 (= res!734739 (validMask!0 mask!1414))))

(assert (=> start!96828 e!628441))

(assert (=> start!96828 tp!81434))

(assert (=> start!96828 true))

(declare-fun tp_is_empty!27211 () Bool)

(assert (=> start!96828 tp_is_empty!27211))

(declare-fun array_inv!26282 (array!71292) Bool)

(assert (=> start!96828 (array_inv!26282 _keys!1070)))

(declare-fun e!628445 () Bool)

(declare-fun array_inv!26283 (array!71294) Bool)

(assert (=> start!96828 (and (array_inv!26283 _values!874) e!628445)))

(declare-fun b!1100962 () Bool)

(declare-fun e!628440 () Bool)

(assert (=> b!1100962 (= e!628440 tp_is_empty!27211)))

(declare-fun b!1100963 () Bool)

(declare-fun res!734742 () Bool)

(assert (=> b!1100963 (=> (not res!734742) (not e!628441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100963 (= res!734742 (validKeyInArray!0 k!904))))

(declare-fun b!1100964 () Bool)

(declare-fun res!734741 () Bool)

(assert (=> b!1100964 (=> (not res!734741) (not e!628441))))

(assert (=> b!1100964 (= res!734741 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34843 _keys!1070))))))

(declare-fun b!1100965 () Bool)

(declare-fun res!734738 () Bool)

(assert (=> b!1100965 (=> (not res!734738) (not e!628441))))

(assert (=> b!1100965 (= res!734738 (= (select (arr!34306 _keys!1070) i!650) k!904))))

(declare-fun b!1100966 () Bool)

(assert (=> b!1100966 (= e!628445 (and e!628440 mapRes!42601))))

(declare-fun condMapEmpty!42601 () Bool)

(declare-fun mapDefault!42601 () ValueCell!12896)


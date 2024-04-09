; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96140 () Bool)

(assert start!96140)

(declare-fun b_free!22757 () Bool)

(declare-fun b_next!22757 () Bool)

(assert (=> start!96140 (= b_free!22757 (not b_next!22757))))

(declare-fun tp!80120 () Bool)

(declare-fun b_and!36207 () Bool)

(assert (=> start!96140 (= tp!80120 b_and!36207)))

(declare-fun b!1090353 () Bool)

(declare-fun res!727488 () Bool)

(declare-fun e!622790 () Bool)

(assert (=> b!1090353 (=> (not res!727488) (not e!622790))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70406 0))(
  ( (array!70407 (arr!33873 (Array (_ BitVec 32) (_ BitVec 64))) (size!34410 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70406)

(declare-datatypes ((V!40805 0))(
  ( (V!40806 (val!13436 Int)) )
))
(declare-datatypes ((ValueCell!12670 0))(
  ( (ValueCellFull!12670 (v!16058 V!40805)) (EmptyCell!12670) )
))
(declare-datatypes ((array!70408 0))(
  ( (array!70409 (arr!33874 (Array (_ BitVec 32) ValueCell!12670)) (size!34411 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70408)

(assert (=> b!1090353 (= res!727488 (and (= (size!34411 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34410 _keys!1070) (size!34411 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090354 () Bool)

(declare-fun e!622788 () Bool)

(declare-fun tp_is_empty!26759 () Bool)

(assert (=> b!1090354 (= e!622788 tp_is_empty!26759)))

(declare-fun b!1090355 () Bool)

(declare-fun res!727489 () Bool)

(assert (=> b!1090355 (=> (not res!727489) (not e!622790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70406 (_ BitVec 32)) Bool)

(assert (=> b!1090355 (= res!727489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090356 () Bool)

(declare-fun res!727486 () Bool)

(assert (=> b!1090356 (=> (not res!727486) (not e!622790))))

(declare-datatypes ((List!23789 0))(
  ( (Nil!23786) (Cons!23785 (h!24994 (_ BitVec 64)) (t!33611 List!23789)) )
))
(declare-fun arrayNoDuplicates!0 (array!70406 (_ BitVec 32) List!23789) Bool)

(assert (=> b!1090356 (= res!727486 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23786))))

(declare-fun b!1090357 () Bool)

(declare-fun res!727484 () Bool)

(assert (=> b!1090357 (=> (not res!727484) (not e!622790))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090357 (= res!727484 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41893 () Bool)

(declare-fun mapRes!41893 () Bool)

(assert (=> mapIsEmpty!41893 mapRes!41893))

(declare-fun b!1090358 () Bool)

(declare-fun res!727491 () Bool)

(assert (=> b!1090358 (=> (not res!727491) (not e!622790))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090358 (= res!727491 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34410 _keys!1070))))))

(declare-fun b!1090359 () Bool)

(declare-fun e!622787 () Bool)

(declare-fun e!622791 () Bool)

(assert (=> b!1090359 (= e!622787 (not e!622791))))

(declare-fun res!727483 () Bool)

(assert (=> b!1090359 (=> res!727483 e!622791)))

(assert (=> b!1090359 (= res!727483 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17150 0))(
  ( (tuple2!17151 (_1!8585 (_ BitVec 64)) (_2!8585 V!40805)) )
))
(declare-datatypes ((List!23790 0))(
  ( (Nil!23787) (Cons!23786 (h!24995 tuple2!17150) (t!33612 List!23790)) )
))
(declare-datatypes ((ListLongMap!15131 0))(
  ( (ListLongMap!15132 (toList!7581 List!23790)) )
))
(declare-fun lt!486483 () ListLongMap!15131)

(declare-fun minValue!831 () V!40805)

(declare-fun zeroValue!831 () V!40805)

(declare-fun getCurrentListMap!4322 (array!70406 array!70408 (_ BitVec 32) (_ BitVec 32) V!40805 V!40805 (_ BitVec 32) Int) ListLongMap!15131)

(assert (=> b!1090359 (= lt!486483 (getCurrentListMap!4322 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486490 () array!70406)

(declare-fun lt!486484 () array!70408)

(declare-fun lt!486487 () ListLongMap!15131)

(assert (=> b!1090359 (= lt!486487 (getCurrentListMap!4322 lt!486490 lt!486484 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486486 () ListLongMap!15131)

(declare-fun lt!486482 () ListLongMap!15131)

(assert (=> b!1090359 (and (= lt!486486 lt!486482) (= lt!486482 lt!486486))))

(declare-fun lt!486488 () ListLongMap!15131)

(declare-fun -!859 (ListLongMap!15131 (_ BitVec 64)) ListLongMap!15131)

(assert (=> b!1090359 (= lt!486482 (-!859 lt!486488 k!904))))

(declare-datatypes ((Unit!35833 0))(
  ( (Unit!35834) )
))
(declare-fun lt!486481 () Unit!35833)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!128 (array!70406 array!70408 (_ BitVec 32) (_ BitVec 32) V!40805 V!40805 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35833)

(assert (=> b!1090359 (= lt!486481 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!128 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4074 (array!70406 array!70408 (_ BitVec 32) (_ BitVec 32) V!40805 V!40805 (_ BitVec 32) Int) ListLongMap!15131)

(assert (=> b!1090359 (= lt!486486 (getCurrentListMapNoExtraKeys!4074 lt!486490 lt!486484 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2210 (Int (_ BitVec 64)) V!40805)

(assert (=> b!1090359 (= lt!486484 (array!70409 (store (arr!33874 _values!874) i!650 (ValueCellFull!12670 (dynLambda!2210 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34411 _values!874)))))

(assert (=> b!1090359 (= lt!486488 (getCurrentListMapNoExtraKeys!4074 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090359 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486479 () Unit!35833)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70406 (_ BitVec 64) (_ BitVec 32)) Unit!35833)

(assert (=> b!1090359 (= lt!486479 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090360 () Bool)

(assert (=> b!1090360 (= e!622790 e!622787)))

(declare-fun res!727493 () Bool)

(assert (=> b!1090360 (=> (not res!727493) (not e!622787))))

(assert (=> b!1090360 (= res!727493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486490 mask!1414))))

(assert (=> b!1090360 (= lt!486490 (array!70407 (store (arr!33873 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34410 _keys!1070)))))

(declare-fun b!1090361 () Bool)

(declare-fun res!727487 () Bool)

(assert (=> b!1090361 (=> (not res!727487) (not e!622787))))

(assert (=> b!1090361 (= res!727487 (arrayNoDuplicates!0 lt!486490 #b00000000000000000000000000000000 Nil!23786))))

(declare-fun b!1090362 () Bool)

(declare-fun e!622786 () Bool)

(assert (=> b!1090362 (= e!622786 tp_is_empty!26759)))

(declare-fun b!1090363 () Bool)

(declare-fun e!622785 () Bool)

(assert (=> b!1090363 (= e!622785 (and e!622786 mapRes!41893))))

(declare-fun condMapEmpty!41893 () Bool)

(declare-fun mapDefault!41893 () ValueCell!12670)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96232 () Bool)

(assert start!96232)

(declare-fun b_free!22849 () Bool)

(declare-fun b_next!22849 () Bool)

(assert (=> start!96232 (= b_free!22849 (not b_next!22849))))

(declare-fun tp!80397 () Bool)

(declare-fun b_and!36391 () Bool)

(assert (=> start!96232 (= tp!80397 b_and!36391)))

(declare-fun b!1092355 () Bool)

(declare-fun res!728987 () Bool)

(declare-fun e!623870 () Bool)

(assert (=> b!1092355 (=> (not res!728987) (not e!623870))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70582 0))(
  ( (array!70583 (arr!33961 (Array (_ BitVec 32) (_ BitVec 64))) (size!34498 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70582)

(declare-datatypes ((V!40929 0))(
  ( (V!40930 (val!13482 Int)) )
))
(declare-datatypes ((ValueCell!12716 0))(
  ( (ValueCellFull!12716 (v!16104 V!40929)) (EmptyCell!12716) )
))
(declare-datatypes ((array!70584 0))(
  ( (array!70585 (arr!33962 (Array (_ BitVec 32) ValueCell!12716)) (size!34499 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70584)

(assert (=> b!1092355 (= res!728987 (and (= (size!34499 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34498 _keys!1070) (size!34499 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092356 () Bool)

(declare-fun res!728983 () Bool)

(assert (=> b!1092356 (=> (not res!728983) (not e!623870))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092356 (= res!728983 (= (select (arr!33961 _keys!1070) i!650) k!904))))

(declare-fun res!728986 () Bool)

(assert (=> start!96232 (=> (not res!728986) (not e!623870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96232 (= res!728986 (validMask!0 mask!1414))))

(assert (=> start!96232 e!623870))

(assert (=> start!96232 tp!80397))

(assert (=> start!96232 true))

(declare-fun tp_is_empty!26851 () Bool)

(assert (=> start!96232 tp_is_empty!26851))

(declare-fun array_inv!26036 (array!70582) Bool)

(assert (=> start!96232 (array_inv!26036 _keys!1070)))

(declare-fun e!623872 () Bool)

(declare-fun array_inv!26037 (array!70584) Bool)

(assert (=> start!96232 (and (array_inv!26037 _values!874) e!623872)))

(declare-fun b!1092357 () Bool)

(declare-fun res!728980 () Bool)

(assert (=> b!1092357 (=> (not res!728980) (not e!623870))))

(assert (=> b!1092357 (= res!728980 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34498 _keys!1070))))))

(declare-fun b!1092358 () Bool)

(declare-fun e!623871 () Bool)

(assert (=> b!1092358 (= e!623871 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40929)

(declare-fun zeroValue!831 () V!40929)

(declare-datatypes ((tuple2!17224 0))(
  ( (tuple2!17225 (_1!8622 (_ BitVec 64)) (_2!8622 V!40929)) )
))
(declare-datatypes ((List!23862 0))(
  ( (Nil!23859) (Cons!23858 (h!25067 tuple2!17224) (t!33776 List!23862)) )
))
(declare-datatypes ((ListLongMap!15205 0))(
  ( (ListLongMap!15206 (toList!7618 List!23862)) )
))
(declare-fun lt!488230 () ListLongMap!15205)

(declare-fun getCurrentListMap!4353 (array!70582 array!70584 (_ BitVec 32) (_ BitVec 32) V!40929 V!40929 (_ BitVec 32) Int) ListLongMap!15205)

(assert (=> b!1092358 (= lt!488230 (getCurrentListMap!4353 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488235 () ListLongMap!15205)

(declare-fun lt!488231 () array!70584)

(declare-fun lt!488232 () array!70582)

(assert (=> b!1092358 (= lt!488235 (getCurrentListMap!4353 lt!488232 lt!488231 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488236 () ListLongMap!15205)

(declare-fun lt!488234 () ListLongMap!15205)

(assert (=> b!1092358 (and (= lt!488236 lt!488234) (= lt!488234 lt!488236))))

(declare-fun lt!488229 () ListLongMap!15205)

(declare-fun -!894 (ListLongMap!15205 (_ BitVec 64)) ListLongMap!15205)

(assert (=> b!1092358 (= lt!488234 (-!894 lt!488229 k!904))))

(declare-datatypes ((Unit!35903 0))(
  ( (Unit!35904) )
))
(declare-fun lt!488237 () Unit!35903)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!159 (array!70582 array!70584 (_ BitVec 32) (_ BitVec 32) V!40929 V!40929 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35903)

(assert (=> b!1092358 (= lt!488237 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!159 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4105 (array!70582 array!70584 (_ BitVec 32) (_ BitVec 32) V!40929 V!40929 (_ BitVec 32) Int) ListLongMap!15205)

(assert (=> b!1092358 (= lt!488236 (getCurrentListMapNoExtraKeys!4105 lt!488232 lt!488231 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2241 (Int (_ BitVec 64)) V!40929)

(assert (=> b!1092358 (= lt!488231 (array!70585 (store (arr!33962 _values!874) i!650 (ValueCellFull!12716 (dynLambda!2241 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34499 _values!874)))))

(assert (=> b!1092358 (= lt!488229 (getCurrentListMapNoExtraKeys!4105 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092358 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488233 () Unit!35903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70582 (_ BitVec 64) (_ BitVec 32)) Unit!35903)

(assert (=> b!1092358 (= lt!488233 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1092359 () Bool)

(declare-fun e!623869 () Bool)

(assert (=> b!1092359 (= e!623869 tp_is_empty!26851)))

(declare-fun b!1092360 () Bool)

(declare-fun e!623867 () Bool)

(assert (=> b!1092360 (= e!623867 tp_is_empty!26851)))

(declare-fun b!1092361 () Bool)

(declare-fun res!728984 () Bool)

(assert (=> b!1092361 (=> (not res!728984) (not e!623870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70582 (_ BitVec 32)) Bool)

(assert (=> b!1092361 (= res!728984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092362 () Bool)

(assert (=> b!1092362 (= e!623870 e!623871)))

(declare-fun res!728981 () Bool)

(assert (=> b!1092362 (=> (not res!728981) (not e!623871))))

(assert (=> b!1092362 (= res!728981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488232 mask!1414))))

(assert (=> b!1092362 (= lt!488232 (array!70583 (store (arr!33961 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34498 _keys!1070)))))

(declare-fun b!1092363 () Bool)

(declare-fun res!728979 () Bool)

(assert (=> b!1092363 (=> (not res!728979) (not e!623870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092363 (= res!728979 (validKeyInArray!0 k!904))))

(declare-fun b!1092364 () Bool)

(declare-fun res!728985 () Bool)

(assert (=> b!1092364 (=> (not res!728985) (not e!623870))))

(declare-datatypes ((List!23863 0))(
  ( (Nil!23860) (Cons!23859 (h!25068 (_ BitVec 64)) (t!33777 List!23863)) )
))
(declare-fun arrayNoDuplicates!0 (array!70582 (_ BitVec 32) List!23863) Bool)

(assert (=> b!1092364 (= res!728985 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23860))))

(declare-fun b!1092365 () Bool)

(declare-fun res!728982 () Bool)

(assert (=> b!1092365 (=> (not res!728982) (not e!623871))))

(assert (=> b!1092365 (= res!728982 (arrayNoDuplicates!0 lt!488232 #b00000000000000000000000000000000 Nil!23860))))

(declare-fun mapIsEmpty!42031 () Bool)

(declare-fun mapRes!42031 () Bool)

(assert (=> mapIsEmpty!42031 mapRes!42031))

(declare-fun mapNonEmpty!42031 () Bool)

(declare-fun tp!80396 () Bool)

(assert (=> mapNonEmpty!42031 (= mapRes!42031 (and tp!80396 e!623869))))

(declare-fun mapKey!42031 () (_ BitVec 32))

(declare-fun mapRest!42031 () (Array (_ BitVec 32) ValueCell!12716))

(declare-fun mapValue!42031 () ValueCell!12716)

(assert (=> mapNonEmpty!42031 (= (arr!33962 _values!874) (store mapRest!42031 mapKey!42031 mapValue!42031))))

(declare-fun b!1092366 () Bool)

(assert (=> b!1092366 (= e!623872 (and e!623867 mapRes!42031))))

(declare-fun condMapEmpty!42031 () Bool)

(declare-fun mapDefault!42031 () ValueCell!12716)


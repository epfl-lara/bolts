; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96094 () Bool)

(assert start!96094)

(declare-fun b_free!22711 () Bool)

(declare-fun b_next!22711 () Bool)

(assert (=> start!96094 (= b_free!22711 (not b_next!22711))))

(declare-fun tp!79982 () Bool)

(declare-fun b_and!36115 () Bool)

(assert (=> start!96094 (= tp!79982 b_and!36115)))

(declare-fun b!1089332 () Bool)

(declare-fun res!726722 () Bool)

(declare-fun e!622236 () Bool)

(assert (=> b!1089332 (=> (not res!726722) (not e!622236))))

(declare-datatypes ((array!70316 0))(
  ( (array!70317 (arr!33828 (Array (_ BitVec 32) (_ BitVec 64))) (size!34365 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70316)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70316 (_ BitVec 32)) Bool)

(assert (=> b!1089332 (= res!726722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089333 () Bool)

(declare-fun e!622233 () Bool)

(assert (=> b!1089333 (= e!622233 true)))

(declare-datatypes ((V!40745 0))(
  ( (V!40746 (val!13413 Int)) )
))
(declare-datatypes ((tuple2!17114 0))(
  ( (tuple2!17115 (_1!8567 (_ BitVec 64)) (_2!8567 V!40745)) )
))
(declare-datatypes ((List!23753 0))(
  ( (Nil!23750) (Cons!23749 (h!24958 tuple2!17114) (t!33529 List!23753)) )
))
(declare-datatypes ((ListLongMap!15095 0))(
  ( (ListLongMap!15096 (toList!7563 List!23753)) )
))
(declare-fun lt!485619 () ListLongMap!15095)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485614 () ListLongMap!15095)

(declare-fun -!841 (ListLongMap!15095 (_ BitVec 64)) ListLongMap!15095)

(assert (=> b!1089333 (= (-!841 lt!485619 k!904) lt!485614)))

(declare-datatypes ((Unit!35797 0))(
  ( (Unit!35798) )
))
(declare-fun lt!485618 () Unit!35797)

(declare-fun lt!485615 () ListLongMap!15095)

(declare-fun zeroValue!831 () V!40745)

(declare-fun addRemoveCommutativeForDiffKeys!74 (ListLongMap!15095 (_ BitVec 64) V!40745 (_ BitVec 64)) Unit!35797)

(assert (=> b!1089333 (= lt!485618 (addRemoveCommutativeForDiffKeys!74 lt!485615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089334 () Bool)

(declare-fun res!726717 () Bool)

(declare-fun e!622237 () Bool)

(assert (=> b!1089334 (=> (not res!726717) (not e!622237))))

(declare-fun lt!485611 () array!70316)

(declare-datatypes ((List!23754 0))(
  ( (Nil!23751) (Cons!23750 (h!24959 (_ BitVec 64)) (t!33530 List!23754)) )
))
(declare-fun arrayNoDuplicates!0 (array!70316 (_ BitVec 32) List!23754) Bool)

(assert (=> b!1089334 (= res!726717 (arrayNoDuplicates!0 lt!485611 #b00000000000000000000000000000000 Nil!23751))))

(declare-fun b!1089335 () Bool)

(declare-fun e!622240 () Bool)

(assert (=> b!1089335 (= e!622237 (not e!622240))))

(declare-fun res!726719 () Bool)

(assert (=> b!1089335 (=> res!726719 e!622240)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089335 (= res!726719 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!485609 () ListLongMap!15095)

(declare-fun minValue!831 () V!40745)

(declare-datatypes ((ValueCell!12647 0))(
  ( (ValueCellFull!12647 (v!16035 V!40745)) (EmptyCell!12647) )
))
(declare-datatypes ((array!70318 0))(
  ( (array!70319 (arr!33829 (Array (_ BitVec 32) ValueCell!12647)) (size!34366 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70318)

(declare-fun getCurrentListMap!4307 (array!70316 array!70318 (_ BitVec 32) (_ BitVec 32) V!40745 V!40745 (_ BitVec 32) Int) ListLongMap!15095)

(assert (=> b!1089335 (= lt!485609 (getCurrentListMap!4307 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485616 () array!70318)

(declare-fun lt!485610 () ListLongMap!15095)

(assert (=> b!1089335 (= lt!485610 (getCurrentListMap!4307 lt!485611 lt!485616 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485613 () ListLongMap!15095)

(declare-fun lt!485617 () ListLongMap!15095)

(assert (=> b!1089335 (and (= lt!485613 lt!485617) (= lt!485617 lt!485613))))

(assert (=> b!1089335 (= lt!485617 (-!841 lt!485615 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lt!485621 () Unit!35797)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!113 (array!70316 array!70318 (_ BitVec 32) (_ BitVec 32) V!40745 V!40745 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35797)

(assert (=> b!1089335 (= lt!485621 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!113 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4059 (array!70316 array!70318 (_ BitVec 32) (_ BitVec 32) V!40745 V!40745 (_ BitVec 32) Int) ListLongMap!15095)

(assert (=> b!1089335 (= lt!485613 (getCurrentListMapNoExtraKeys!4059 lt!485611 lt!485616 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2195 (Int (_ BitVec 64)) V!40745)

(assert (=> b!1089335 (= lt!485616 (array!70319 (store (arr!33829 _values!874) i!650 (ValueCellFull!12647 (dynLambda!2195 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34366 _values!874)))))

(assert (=> b!1089335 (= lt!485615 (getCurrentListMapNoExtraKeys!4059 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089335 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485620 () Unit!35797)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70316 (_ BitVec 64) (_ BitVec 32)) Unit!35797)

(assert (=> b!1089335 (= lt!485620 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41824 () Bool)

(declare-fun mapRes!41824 () Bool)

(declare-fun tp!79983 () Bool)

(declare-fun e!622239 () Bool)

(assert (=> mapNonEmpty!41824 (= mapRes!41824 (and tp!79983 e!622239))))

(declare-fun mapRest!41824 () (Array (_ BitVec 32) ValueCell!12647))

(declare-fun mapKey!41824 () (_ BitVec 32))

(declare-fun mapValue!41824 () ValueCell!12647)

(assert (=> mapNonEmpty!41824 (= (arr!33829 _values!874) (store mapRest!41824 mapKey!41824 mapValue!41824))))

(declare-fun res!726716 () Bool)

(assert (=> start!96094 (=> (not res!726716) (not e!622236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96094 (= res!726716 (validMask!0 mask!1414))))

(assert (=> start!96094 e!622236))

(assert (=> start!96094 tp!79982))

(assert (=> start!96094 true))

(declare-fun tp_is_empty!26713 () Bool)

(assert (=> start!96094 tp_is_empty!26713))

(declare-fun array_inv!25952 (array!70316) Bool)

(assert (=> start!96094 (array_inv!25952 _keys!1070)))

(declare-fun e!622235 () Bool)

(declare-fun array_inv!25953 (array!70318) Bool)

(assert (=> start!96094 (and (array_inv!25953 _values!874) e!622235)))

(declare-fun mapIsEmpty!41824 () Bool)

(assert (=> mapIsEmpty!41824 mapRes!41824))

(declare-fun b!1089336 () Bool)

(assert (=> b!1089336 (= e!622240 e!622233)))

(declare-fun res!726723 () Bool)

(assert (=> b!1089336 (=> res!726723 e!622233)))

(assert (=> b!1089336 (= res!726723 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(assert (=> b!1089336 (= lt!485610 lt!485614)))

(declare-fun lt!485612 () tuple2!17114)

(declare-fun +!3278 (ListLongMap!15095 tuple2!17114) ListLongMap!15095)

(assert (=> b!1089336 (= lt!485614 (+!3278 lt!485617 lt!485612))))

(assert (=> b!1089336 (= lt!485609 lt!485619)))

(assert (=> b!1089336 (= lt!485619 (+!3278 lt!485615 lt!485612))))

(assert (=> b!1089336 (= lt!485610 (+!3278 lt!485613 lt!485612))))

(assert (=> b!1089336 (= lt!485612 (tuple2!17115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089337 () Bool)

(declare-fun res!726724 () Bool)

(assert (=> b!1089337 (=> (not res!726724) (not e!622236))))

(assert (=> b!1089337 (= res!726724 (and (= (size!34366 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34365 _keys!1070) (size!34366 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089338 () Bool)

(declare-fun res!726718 () Bool)

(assert (=> b!1089338 (=> (not res!726718) (not e!622236))))

(assert (=> b!1089338 (= res!726718 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34365 _keys!1070))))))

(declare-fun b!1089339 () Bool)

(declare-fun e!622234 () Bool)

(assert (=> b!1089339 (= e!622235 (and e!622234 mapRes!41824))))

(declare-fun condMapEmpty!41824 () Bool)

(declare-fun mapDefault!41824 () ValueCell!12647)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95752 () Bool)

(assert start!95752)

(declare-fun b_free!22369 () Bool)

(declare-fun b_next!22369 () Bool)

(assert (=> start!95752 (= b_free!22369 (not b_next!22369))))

(declare-fun tp!78956 () Bool)

(declare-fun b_and!35431 () Bool)

(assert (=> start!95752 (= tp!78956 b_and!35431)))

(declare-fun b!1082173 () Bool)

(declare-fun e!618512 () Bool)

(declare-fun e!618514 () Bool)

(assert (=> b!1082173 (= e!618512 e!618514)))

(declare-fun res!721442 () Bool)

(assert (=> b!1082173 (=> (not res!721442) (not e!618514))))

(declare-datatypes ((array!69646 0))(
  ( (array!69647 (arr!33493 (Array (_ BitVec 32) (_ BitVec 64))) (size!34030 (_ BitVec 32))) )
))
(declare-fun lt!479527 () array!69646)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69646 (_ BitVec 32)) Bool)

(assert (=> b!1082173 (= res!721442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479527 mask!1414))))

(declare-fun _keys!1070 () array!69646)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082173 (= lt!479527 (array!69647 (store (arr!33493 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34030 _keys!1070)))))

(declare-fun b!1082174 () Bool)

(declare-fun res!721437 () Bool)

(assert (=> b!1082174 (=> (not res!721437) (not e!618512))))

(declare-datatypes ((List!23478 0))(
  ( (Nil!23475) (Cons!23474 (h!24683 (_ BitVec 64)) (t!32912 List!23478)) )
))
(declare-fun arrayNoDuplicates!0 (array!69646 (_ BitVec 32) List!23478) Bool)

(assert (=> b!1082174 (= res!721437 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23475))))

(declare-fun b!1082175 () Bool)

(declare-fun e!618517 () Bool)

(declare-fun tp_is_empty!26371 () Bool)

(assert (=> b!1082175 (= e!618517 tp_is_empty!26371)))

(declare-fun mapNonEmpty!41311 () Bool)

(declare-fun mapRes!41311 () Bool)

(declare-fun tp!78957 () Bool)

(declare-fun e!618513 () Bool)

(assert (=> mapNonEmpty!41311 (= mapRes!41311 (and tp!78957 e!618513))))

(declare-fun mapKey!41311 () (_ BitVec 32))

(declare-datatypes ((V!40289 0))(
  ( (V!40290 (val!13242 Int)) )
))
(declare-datatypes ((ValueCell!12476 0))(
  ( (ValueCellFull!12476 (v!15864 V!40289)) (EmptyCell!12476) )
))
(declare-fun mapValue!41311 () ValueCell!12476)

(declare-fun mapRest!41311 () (Array (_ BitVec 32) ValueCell!12476))

(declare-datatypes ((array!69648 0))(
  ( (array!69649 (arr!33494 (Array (_ BitVec 32) ValueCell!12476)) (size!34031 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69648)

(assert (=> mapNonEmpty!41311 (= (arr!33494 _values!874) (store mapRest!41311 mapKey!41311 mapValue!41311))))

(declare-fun b!1082176 () Bool)

(declare-fun res!721445 () Bool)

(assert (=> b!1082176 (=> (not res!721445) (not e!618512))))

(assert (=> b!1082176 (= res!721445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082177 () Bool)

(declare-fun res!721444 () Bool)

(assert (=> b!1082177 (=> (not res!721444) (not e!618514))))

(assert (=> b!1082177 (= res!721444 (arrayNoDuplicates!0 lt!479527 #b00000000000000000000000000000000 Nil!23475))))

(declare-fun b!1082178 () Bool)

(declare-fun res!721439 () Bool)

(assert (=> b!1082178 (=> (not res!721439) (not e!618512))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082178 (= res!721439 (validKeyInArray!0 k!904))))

(declare-fun b!1082179 () Bool)

(declare-fun res!721438 () Bool)

(assert (=> b!1082179 (=> (not res!721438) (not e!618512))))

(assert (=> b!1082179 (= res!721438 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34030 _keys!1070))))))

(declare-fun b!1082180 () Bool)

(assert (=> b!1082180 (= e!618514 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40289)

(declare-datatypes ((tuple2!16846 0))(
  ( (tuple2!16847 (_1!8433 (_ BitVec 64)) (_2!8433 V!40289)) )
))
(declare-datatypes ((List!23479 0))(
  ( (Nil!23476) (Cons!23475 (h!24684 tuple2!16846) (t!32913 List!23479)) )
))
(declare-datatypes ((ListLongMap!14827 0))(
  ( (ListLongMap!14828 (toList!7429 List!23479)) )
))
(declare-fun lt!479528 () ListLongMap!14827)

(declare-fun minValue!831 () V!40289)

(declare-fun getCurrentListMapNoExtraKeys!3940 (array!69646 array!69648 (_ BitVec 32) (_ BitVec 32) V!40289 V!40289 (_ BitVec 32) Int) ListLongMap!14827)

(declare-fun dynLambda!2076 (Int (_ BitVec 64)) V!40289)

(assert (=> b!1082180 (= lt!479528 (getCurrentListMapNoExtraKeys!3940 lt!479527 (array!69649 (store (arr!33494 _values!874) i!650 (ValueCellFull!12476 (dynLambda!2076 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34031 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479525 () ListLongMap!14827)

(assert (=> b!1082180 (= lt!479525 (getCurrentListMapNoExtraKeys!3940 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082180 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35537 0))(
  ( (Unit!35538) )
))
(declare-fun lt!479526 () Unit!35537)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69646 (_ BitVec 64) (_ BitVec 32)) Unit!35537)

(assert (=> b!1082180 (= lt!479526 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082181 () Bool)

(declare-fun res!721440 () Bool)

(assert (=> b!1082181 (=> (not res!721440) (not e!618512))))

(assert (=> b!1082181 (= res!721440 (and (= (size!34031 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34030 _keys!1070) (size!34031 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082182 () Bool)

(assert (=> b!1082182 (= e!618513 tp_is_empty!26371)))

(declare-fun b!1082183 () Bool)

(declare-fun res!721443 () Bool)

(assert (=> b!1082183 (=> (not res!721443) (not e!618512))))

(assert (=> b!1082183 (= res!721443 (= (select (arr!33493 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41311 () Bool)

(assert (=> mapIsEmpty!41311 mapRes!41311))

(declare-fun res!721441 () Bool)

(assert (=> start!95752 (=> (not res!721441) (not e!618512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95752 (= res!721441 (validMask!0 mask!1414))))

(assert (=> start!95752 e!618512))

(assert (=> start!95752 tp!78956))

(assert (=> start!95752 true))

(assert (=> start!95752 tp_is_empty!26371))

(declare-fun array_inv!25716 (array!69646) Bool)

(assert (=> start!95752 (array_inv!25716 _keys!1070)))

(declare-fun e!618515 () Bool)

(declare-fun array_inv!25717 (array!69648) Bool)

(assert (=> start!95752 (and (array_inv!25717 _values!874) e!618515)))

(declare-fun b!1082184 () Bool)

(assert (=> b!1082184 (= e!618515 (and e!618517 mapRes!41311))))

(declare-fun condMapEmpty!41311 () Bool)

(declare-fun mapDefault!41311 () ValueCell!12476)


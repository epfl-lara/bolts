; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96146 () Bool)

(assert start!96146)

(declare-fun b_free!22763 () Bool)

(declare-fun b_next!22763 () Bool)

(assert (=> start!96146 (= b_free!22763 (not b_next!22763))))

(declare-fun tp!80139 () Bool)

(declare-fun b_and!36219 () Bool)

(assert (=> start!96146 (= tp!80139 b_and!36219)))

(declare-fun b!1090485 () Bool)

(declare-fun res!727588 () Bool)

(declare-fun e!622861 () Bool)

(assert (=> b!1090485 (=> (not res!727588) (not e!622861))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090485 (= res!727588 (validKeyInArray!0 k!904))))

(declare-fun b!1090486 () Bool)

(declare-fun e!622864 () Bool)

(assert (=> b!1090486 (= e!622864 true)))

(declare-datatypes ((V!40813 0))(
  ( (V!40814 (val!13439 Int)) )
))
(declare-datatypes ((tuple2!17154 0))(
  ( (tuple2!17155 (_1!8587 (_ BitVec 64)) (_2!8587 V!40813)) )
))
(declare-datatypes ((List!23793 0))(
  ( (Nil!23790) (Cons!23789 (h!24998 tuple2!17154) (t!33621 List!23793)) )
))
(declare-datatypes ((ListLongMap!15135 0))(
  ( (ListLongMap!15136 (toList!7583 List!23793)) )
))
(declare-fun lt!486599 () ListLongMap!15135)

(declare-fun lt!486604 () ListLongMap!15135)

(declare-fun -!861 (ListLongMap!15135 (_ BitVec 64)) ListLongMap!15135)

(assert (=> b!1090486 (= (-!861 lt!486599 k!904) lt!486604)))

(declare-fun minValue!831 () V!40813)

(declare-fun lt!486603 () ListLongMap!15135)

(declare-datatypes ((Unit!35837 0))(
  ( (Unit!35838) )
))
(declare-fun lt!486606 () Unit!35837)

(declare-fun addRemoveCommutativeForDiffKeys!89 (ListLongMap!15135 (_ BitVec 64) V!40813 (_ BitVec 64)) Unit!35837)

(assert (=> b!1090486 (= lt!486606 (addRemoveCommutativeForDiffKeys!89 lt!486603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090487 () Bool)

(declare-fun e!622863 () Bool)

(assert (=> b!1090487 (= e!622863 e!622864)))

(declare-fun res!727589 () Bool)

(assert (=> b!1090487 (=> res!727589 e!622864)))

(assert (=> b!1090487 (= res!727589 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!486600 () ListLongMap!15135)

(assert (=> b!1090487 (= lt!486600 lt!486599)))

(declare-fun lt!486607 () tuple2!17154)

(declare-fun +!3292 (ListLongMap!15135 tuple2!17154) ListLongMap!15135)

(assert (=> b!1090487 (= lt!486599 (+!3292 lt!486603 lt!486607))))

(declare-fun lt!486597 () ListLongMap!15135)

(assert (=> b!1090487 (= lt!486597 lt!486604)))

(declare-fun lt!486596 () ListLongMap!15135)

(assert (=> b!1090487 (= lt!486604 (+!3292 lt!486596 lt!486607))))

(declare-fun lt!486608 () ListLongMap!15135)

(assert (=> b!1090487 (= lt!486597 (+!3292 lt!486608 lt!486607))))

(assert (=> b!1090487 (= lt!486607 (tuple2!17155 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090488 () Bool)

(declare-fun res!727587 () Bool)

(assert (=> b!1090488 (=> (not res!727587) (not e!622861))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70418 0))(
  ( (array!70419 (arr!33879 (Array (_ BitVec 32) (_ BitVec 64))) (size!34416 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70418)

(assert (=> b!1090488 (= res!727587 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34416 _keys!1070))))))

(declare-fun mapNonEmpty!41902 () Bool)

(declare-fun mapRes!41902 () Bool)

(declare-fun tp!80138 () Bool)

(declare-fun e!622860 () Bool)

(assert (=> mapNonEmpty!41902 (= mapRes!41902 (and tp!80138 e!622860))))

(declare-datatypes ((ValueCell!12673 0))(
  ( (ValueCellFull!12673 (v!16061 V!40813)) (EmptyCell!12673) )
))
(declare-fun mapRest!41902 () (Array (_ BitVec 32) ValueCell!12673))

(declare-fun mapValue!41902 () ValueCell!12673)

(declare-fun mapKey!41902 () (_ BitVec 32))

(declare-datatypes ((array!70420 0))(
  ( (array!70421 (arr!33880 (Array (_ BitVec 32) ValueCell!12673)) (size!34417 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70420)

(assert (=> mapNonEmpty!41902 (= (arr!33880 _values!874) (store mapRest!41902 mapKey!41902 mapValue!41902))))

(declare-fun b!1090489 () Bool)

(declare-fun res!727592 () Bool)

(assert (=> b!1090489 (=> (not res!727592) (not e!622861))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70418 (_ BitVec 32)) Bool)

(assert (=> b!1090489 (= res!727592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090490 () Bool)

(declare-fun e!622857 () Bool)

(assert (=> b!1090490 (= e!622857 (not e!622863))))

(declare-fun res!727585 () Bool)

(assert (=> b!1090490 (=> res!727585 e!622863)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090490 (= res!727585 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40813)

(declare-fun getCurrentListMap!4324 (array!70418 array!70420 (_ BitVec 32) (_ BitVec 32) V!40813 V!40813 (_ BitVec 32) Int) ListLongMap!15135)

(assert (=> b!1090490 (= lt!486600 (getCurrentListMap!4324 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486601 () array!70420)

(declare-fun lt!486598 () array!70418)

(assert (=> b!1090490 (= lt!486597 (getCurrentListMap!4324 lt!486598 lt!486601 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090490 (and (= lt!486608 lt!486596) (= lt!486596 lt!486608))))

(assert (=> b!1090490 (= lt!486596 (-!861 lt!486603 k!904))))

(declare-fun lt!486602 () Unit!35837)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!130 (array!70418 array!70420 (_ BitVec 32) (_ BitVec 32) V!40813 V!40813 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35837)

(assert (=> b!1090490 (= lt!486602 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!130 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4076 (array!70418 array!70420 (_ BitVec 32) (_ BitVec 32) V!40813 V!40813 (_ BitVec 32) Int) ListLongMap!15135)

(assert (=> b!1090490 (= lt!486608 (getCurrentListMapNoExtraKeys!4076 lt!486598 lt!486601 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2212 (Int (_ BitVec 64)) V!40813)

(assert (=> b!1090490 (= lt!486601 (array!70421 (store (arr!33880 _values!874) i!650 (ValueCellFull!12673 (dynLambda!2212 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34417 _values!874)))))

(assert (=> b!1090490 (= lt!486603 (getCurrentListMapNoExtraKeys!4076 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090490 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486605 () Unit!35837)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70418 (_ BitVec 64) (_ BitVec 32)) Unit!35837)

(assert (=> b!1090490 (= lt!486605 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090491 () Bool)

(declare-fun res!727590 () Bool)

(assert (=> b!1090491 (=> (not res!727590) (not e!622861))))

(declare-datatypes ((List!23794 0))(
  ( (Nil!23791) (Cons!23790 (h!24999 (_ BitVec 64)) (t!33622 List!23794)) )
))
(declare-fun arrayNoDuplicates!0 (array!70418 (_ BitVec 32) List!23794) Bool)

(assert (=> b!1090491 (= res!727590 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23791))))

(declare-fun mapIsEmpty!41902 () Bool)

(assert (=> mapIsEmpty!41902 mapRes!41902))

(declare-fun b!1090492 () Bool)

(declare-fun res!727582 () Bool)

(assert (=> b!1090492 (=> (not res!727582) (not e!622861))))

(assert (=> b!1090492 (= res!727582 (= (select (arr!33879 _keys!1070) i!650) k!904))))

(declare-fun b!1090494 () Bool)

(declare-fun e!622858 () Bool)

(declare-fun tp_is_empty!26765 () Bool)

(assert (=> b!1090494 (= e!622858 tp_is_empty!26765)))

(declare-fun b!1090495 () Bool)

(declare-fun res!727586 () Bool)

(assert (=> b!1090495 (=> (not res!727586) (not e!622861))))

(assert (=> b!1090495 (= res!727586 (and (= (size!34417 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34416 _keys!1070) (size!34417 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090496 () Bool)

(assert (=> b!1090496 (= e!622861 e!622857)))

(declare-fun res!727583 () Bool)

(assert (=> b!1090496 (=> (not res!727583) (not e!622857))))

(assert (=> b!1090496 (= res!727583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486598 mask!1414))))

(assert (=> b!1090496 (= lt!486598 (array!70419 (store (arr!33879 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34416 _keys!1070)))))

(declare-fun b!1090497 () Bool)

(declare-fun res!727584 () Bool)

(assert (=> b!1090497 (=> (not res!727584) (not e!622857))))

(assert (=> b!1090497 (= res!727584 (arrayNoDuplicates!0 lt!486598 #b00000000000000000000000000000000 Nil!23791))))

(declare-fun b!1090498 () Bool)

(assert (=> b!1090498 (= e!622860 tp_is_empty!26765)))

(declare-fun res!727591 () Bool)

(assert (=> start!96146 (=> (not res!727591) (not e!622861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96146 (= res!727591 (validMask!0 mask!1414))))

(assert (=> start!96146 e!622861))

(assert (=> start!96146 tp!80139))

(assert (=> start!96146 true))

(assert (=> start!96146 tp_is_empty!26765))

(declare-fun array_inv!25980 (array!70418) Bool)

(assert (=> start!96146 (array_inv!25980 _keys!1070)))

(declare-fun e!622862 () Bool)

(declare-fun array_inv!25981 (array!70420) Bool)

(assert (=> start!96146 (and (array_inv!25981 _values!874) e!622862)))

(declare-fun b!1090493 () Bool)

(assert (=> b!1090493 (= e!622862 (and e!622858 mapRes!41902))))

(declare-fun condMapEmpty!41902 () Bool)

(declare-fun mapDefault!41902 () ValueCell!12673)


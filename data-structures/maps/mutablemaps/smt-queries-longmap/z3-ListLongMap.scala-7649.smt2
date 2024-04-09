; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96252 () Bool)

(assert start!96252)

(declare-fun b_free!22869 () Bool)

(declare-fun b_next!22869 () Bool)

(assert (=> start!96252 (= b_free!22869 (not b_next!22869))))

(declare-fun tp!80457 () Bool)

(declare-fun b_and!36431 () Bool)

(assert (=> start!96252 (= tp!80457 b_and!36431)))

(declare-fun b!1092736 () Bool)

(declare-fun res!729253 () Bool)

(declare-fun e!624050 () Bool)

(assert (=> b!1092736 (=> (not res!729253) (not e!624050))))

(declare-datatypes ((array!70618 0))(
  ( (array!70619 (arr!33979 (Array (_ BitVec 32) (_ BitVec 64))) (size!34516 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70618)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092736 (= res!729253 (= (select (arr!33979 _keys!1070) i!650) k0!904))))

(declare-fun b!1092737 () Bool)

(declare-fun e!624051 () Bool)

(declare-fun tp_is_empty!26871 () Bool)

(assert (=> b!1092737 (= e!624051 tp_is_empty!26871)))

(declare-fun mapNonEmpty!42061 () Bool)

(declare-fun mapRes!42061 () Bool)

(declare-fun tp!80456 () Bool)

(assert (=> mapNonEmpty!42061 (= mapRes!42061 (and tp!80456 e!624051))))

(declare-datatypes ((V!40955 0))(
  ( (V!40956 (val!13492 Int)) )
))
(declare-datatypes ((ValueCell!12726 0))(
  ( (ValueCellFull!12726 (v!16114 V!40955)) (EmptyCell!12726) )
))
(declare-datatypes ((array!70620 0))(
  ( (array!70621 (arr!33980 (Array (_ BitVec 32) ValueCell!12726)) (size!34517 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70620)

(declare-fun mapValue!42061 () ValueCell!12726)

(declare-fun mapKey!42061 () (_ BitVec 32))

(declare-fun mapRest!42061 () (Array (_ BitVec 32) ValueCell!12726))

(assert (=> mapNonEmpty!42061 (= (arr!33980 _values!874) (store mapRest!42061 mapKey!42061 mapValue!42061))))

(declare-fun b!1092738 () Bool)

(declare-fun res!729252 () Bool)

(assert (=> b!1092738 (=> (not res!729252) (not e!624050))))

(assert (=> b!1092738 (= res!729252 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34516 _keys!1070))))))

(declare-fun b!1092739 () Bool)

(declare-fun res!729249 () Bool)

(assert (=> b!1092739 (=> (not res!729249) (not e!624050))))

(declare-datatypes ((List!23873 0))(
  ( (Nil!23870) (Cons!23869 (h!25078 (_ BitVec 64)) (t!33807 List!23873)) )
))
(declare-fun arrayNoDuplicates!0 (array!70618 (_ BitVec 32) List!23873) Bool)

(assert (=> b!1092739 (= res!729249 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23870))))

(declare-fun b!1092740 () Bool)

(declare-fun res!729254 () Bool)

(declare-fun e!624049 () Bool)

(assert (=> b!1092740 (=> (not res!729254) (not e!624049))))

(declare-fun lt!488503 () array!70618)

(assert (=> b!1092740 (= res!729254 (arrayNoDuplicates!0 lt!488503 #b00000000000000000000000000000000 Nil!23870))))

(declare-fun b!1092741 () Bool)

(assert (=> b!1092741 (= e!624049 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40955)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17232 0))(
  ( (tuple2!17233 (_1!8626 (_ BitVec 64)) (_2!8626 V!40955)) )
))
(declare-datatypes ((List!23874 0))(
  ( (Nil!23871) (Cons!23870 (h!25079 tuple2!17232) (t!33808 List!23874)) )
))
(declare-datatypes ((ListLongMap!15213 0))(
  ( (ListLongMap!15214 (toList!7622 List!23874)) )
))
(declare-fun lt!488504 () ListLongMap!15213)

(declare-fun zeroValue!831 () V!40955)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun getCurrentListMap!4357 (array!70618 array!70620 (_ BitVec 32) (_ BitVec 32) V!40955 V!40955 (_ BitVec 32) Int) ListLongMap!15213)

(assert (=> b!1092741 (= lt!488504 (getCurrentListMap!4357 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488502 () ListLongMap!15213)

(declare-fun lt!488507 () array!70620)

(assert (=> b!1092741 (= lt!488502 (getCurrentListMap!4357 lt!488503 lt!488507 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488501 () ListLongMap!15213)

(declare-fun lt!488499 () ListLongMap!15213)

(assert (=> b!1092741 (and (= lt!488501 lt!488499) (= lt!488499 lt!488501))))

(declare-fun lt!488500 () ListLongMap!15213)

(declare-fun -!898 (ListLongMap!15213 (_ BitVec 64)) ListLongMap!15213)

(assert (=> b!1092741 (= lt!488499 (-!898 lt!488500 k0!904))))

(declare-datatypes ((Unit!35911 0))(
  ( (Unit!35912) )
))
(declare-fun lt!488506 () Unit!35911)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!163 (array!70618 array!70620 (_ BitVec 32) (_ BitVec 32) V!40955 V!40955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35911)

(assert (=> b!1092741 (= lt!488506 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!163 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4109 (array!70618 array!70620 (_ BitVec 32) (_ BitVec 32) V!40955 V!40955 (_ BitVec 32) Int) ListLongMap!15213)

(assert (=> b!1092741 (= lt!488501 (getCurrentListMapNoExtraKeys!4109 lt!488503 lt!488507 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2245 (Int (_ BitVec 64)) V!40955)

(assert (=> b!1092741 (= lt!488507 (array!70621 (store (arr!33980 _values!874) i!650 (ValueCellFull!12726 (dynLambda!2245 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34517 _values!874)))))

(assert (=> b!1092741 (= lt!488500 (getCurrentListMapNoExtraKeys!4109 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092741 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488505 () Unit!35911)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70618 (_ BitVec 64) (_ BitVec 32)) Unit!35911)

(assert (=> b!1092741 (= lt!488505 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092742 () Bool)

(declare-fun res!729257 () Bool)

(assert (=> b!1092742 (=> (not res!729257) (not e!624050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70618 (_ BitVec 32)) Bool)

(assert (=> b!1092742 (= res!729257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092743 () Bool)

(assert (=> b!1092743 (= e!624050 e!624049)))

(declare-fun res!729250 () Bool)

(assert (=> b!1092743 (=> (not res!729250) (not e!624049))))

(assert (=> b!1092743 (= res!729250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488503 mask!1414))))

(assert (=> b!1092743 (= lt!488503 (array!70619 (store (arr!33979 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34516 _keys!1070)))))

(declare-fun b!1092744 () Bool)

(declare-fun res!729251 () Bool)

(assert (=> b!1092744 (=> (not res!729251) (not e!624050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092744 (= res!729251 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42061 () Bool)

(assert (=> mapIsEmpty!42061 mapRes!42061))

(declare-fun res!729256 () Bool)

(assert (=> start!96252 (=> (not res!729256) (not e!624050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96252 (= res!729256 (validMask!0 mask!1414))))

(assert (=> start!96252 e!624050))

(assert (=> start!96252 tp!80457))

(assert (=> start!96252 true))

(assert (=> start!96252 tp_is_empty!26871))

(declare-fun array_inv!26046 (array!70618) Bool)

(assert (=> start!96252 (array_inv!26046 _keys!1070)))

(declare-fun e!624048 () Bool)

(declare-fun array_inv!26047 (array!70620) Bool)

(assert (=> start!96252 (and (array_inv!26047 _values!874) e!624048)))

(declare-fun b!1092735 () Bool)

(declare-fun res!729255 () Bool)

(assert (=> b!1092735 (=> (not res!729255) (not e!624050))))

(assert (=> b!1092735 (= res!729255 (and (= (size!34517 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34516 _keys!1070) (size!34517 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092745 () Bool)

(declare-fun e!624052 () Bool)

(assert (=> b!1092745 (= e!624052 tp_is_empty!26871)))

(declare-fun b!1092746 () Bool)

(assert (=> b!1092746 (= e!624048 (and e!624052 mapRes!42061))))

(declare-fun condMapEmpty!42061 () Bool)

(declare-fun mapDefault!42061 () ValueCell!12726)

(assert (=> b!1092746 (= condMapEmpty!42061 (= (arr!33980 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12726)) mapDefault!42061)))))

(assert (= (and start!96252 res!729256) b!1092735))

(assert (= (and b!1092735 res!729255) b!1092742))

(assert (= (and b!1092742 res!729257) b!1092739))

(assert (= (and b!1092739 res!729249) b!1092738))

(assert (= (and b!1092738 res!729252) b!1092744))

(assert (= (and b!1092744 res!729251) b!1092736))

(assert (= (and b!1092736 res!729253) b!1092743))

(assert (= (and b!1092743 res!729250) b!1092740))

(assert (= (and b!1092740 res!729254) b!1092741))

(assert (= (and b!1092746 condMapEmpty!42061) mapIsEmpty!42061))

(assert (= (and b!1092746 (not condMapEmpty!42061)) mapNonEmpty!42061))

(get-info :version)

(assert (= (and mapNonEmpty!42061 ((_ is ValueCellFull!12726) mapValue!42061)) b!1092737))

(assert (= (and b!1092746 ((_ is ValueCellFull!12726) mapDefault!42061)) b!1092745))

(assert (= start!96252 b!1092746))

(declare-fun b_lambda!17569 () Bool)

(assert (=> (not b_lambda!17569) (not b!1092741)))

(declare-fun t!33806 () Bool)

(declare-fun tb!7755 () Bool)

(assert (=> (and start!96252 (= defaultEntry!882 defaultEntry!882) t!33806) tb!7755))

(declare-fun result!16021 () Bool)

(assert (=> tb!7755 (= result!16021 tp_is_empty!26871)))

(assert (=> b!1092741 t!33806))

(declare-fun b_and!36433 () Bool)

(assert (= b_and!36431 (and (=> t!33806 result!16021) b_and!36433)))

(declare-fun m!1012671 () Bool)

(assert (=> b!1092744 m!1012671))

(declare-fun m!1012673 () Bool)

(assert (=> b!1092741 m!1012673))

(declare-fun m!1012675 () Bool)

(assert (=> b!1092741 m!1012675))

(declare-fun m!1012677 () Bool)

(assert (=> b!1092741 m!1012677))

(declare-fun m!1012679 () Bool)

(assert (=> b!1092741 m!1012679))

(declare-fun m!1012681 () Bool)

(assert (=> b!1092741 m!1012681))

(declare-fun m!1012683 () Bool)

(assert (=> b!1092741 m!1012683))

(declare-fun m!1012685 () Bool)

(assert (=> b!1092741 m!1012685))

(declare-fun m!1012687 () Bool)

(assert (=> b!1092741 m!1012687))

(declare-fun m!1012689 () Bool)

(assert (=> b!1092741 m!1012689))

(declare-fun m!1012691 () Bool)

(assert (=> b!1092741 m!1012691))

(declare-fun m!1012693 () Bool)

(assert (=> b!1092736 m!1012693))

(declare-fun m!1012695 () Bool)

(assert (=> b!1092743 m!1012695))

(declare-fun m!1012697 () Bool)

(assert (=> b!1092743 m!1012697))

(declare-fun m!1012699 () Bool)

(assert (=> mapNonEmpty!42061 m!1012699))

(declare-fun m!1012701 () Bool)

(assert (=> b!1092740 m!1012701))

(declare-fun m!1012703 () Bool)

(assert (=> b!1092742 m!1012703))

(declare-fun m!1012705 () Bool)

(assert (=> b!1092739 m!1012705))

(declare-fun m!1012707 () Bool)

(assert (=> start!96252 m!1012707))

(declare-fun m!1012709 () Bool)

(assert (=> start!96252 m!1012709))

(declare-fun m!1012711 () Bool)

(assert (=> start!96252 m!1012711))

(check-sat (not start!96252) (not mapNonEmpty!42061) (not b!1092744) (not b_lambda!17569) (not b!1092741) b_and!36433 tp_is_empty!26871 (not b!1092743) (not b!1092742) (not b_next!22869) (not b!1092740) (not b!1092739))
(check-sat b_and!36433 (not b_next!22869))

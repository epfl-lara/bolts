; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96300 () Bool)

(assert start!96300)

(declare-fun b_free!22917 () Bool)

(declare-fun b_next!22917 () Bool)

(assert (=> start!96300 (= b_free!22917 (not b_next!22917))))

(declare-fun tp!80600 () Bool)

(declare-fun b_and!36527 () Bool)

(assert (=> start!96300 (= tp!80600 b_and!36527)))

(declare-fun b!1093647 () Bool)

(declare-fun e!624484 () Bool)

(declare-fun tp_is_empty!26919 () Bool)

(assert (=> b!1093647 (= e!624484 tp_is_empty!26919)))

(declare-fun b!1093648 () Bool)

(declare-fun res!729901 () Bool)

(declare-fun e!624480 () Bool)

(assert (=> b!1093648 (=> (not res!729901) (not e!624480))))

(declare-datatypes ((array!70712 0))(
  ( (array!70713 (arr!34026 (Array (_ BitVec 32) (_ BitVec 64))) (size!34563 (_ BitVec 32))) )
))
(declare-fun lt!489159 () array!70712)

(declare-datatypes ((List!23910 0))(
  ( (Nil!23907) (Cons!23906 (h!25115 (_ BitVec 64)) (t!33892 List!23910)) )
))
(declare-fun arrayNoDuplicates!0 (array!70712 (_ BitVec 32) List!23910) Bool)

(assert (=> b!1093648 (= res!729901 (arrayNoDuplicates!0 lt!489159 #b00000000000000000000000000000000 Nil!23907))))

(declare-fun b!1093649 () Bool)

(declare-fun res!729899 () Bool)

(declare-fun e!624479 () Bool)

(assert (=> b!1093649 (=> (not res!729899) (not e!624479))))

(declare-fun _keys!1070 () array!70712)

(assert (=> b!1093649 (= res!729899 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23907))))

(declare-fun b!1093650 () Bool)

(declare-fun res!729904 () Bool)

(assert (=> b!1093650 (=> (not res!729904) (not e!624479))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093650 (= res!729904 (validKeyInArray!0 k0!904))))

(declare-fun b!1093652 () Bool)

(declare-fun res!729902 () Bool)

(assert (=> b!1093652 (=> (not res!729902) (not e!624479))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70712 (_ BitVec 32)) Bool)

(assert (=> b!1093652 (= res!729902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42133 () Bool)

(declare-fun mapRes!42133 () Bool)

(assert (=> mapIsEmpty!42133 mapRes!42133))

(declare-fun b!1093653 () Bool)

(declare-fun res!729897 () Bool)

(assert (=> b!1093653 (=> (not res!729897) (not e!624479))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41019 0))(
  ( (V!41020 (val!13516 Int)) )
))
(declare-datatypes ((ValueCell!12750 0))(
  ( (ValueCellFull!12750 (v!16138 V!41019)) (EmptyCell!12750) )
))
(declare-datatypes ((array!70714 0))(
  ( (array!70715 (arr!34027 (Array (_ BitVec 32) ValueCell!12750)) (size!34564 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70714)

(assert (=> b!1093653 (= res!729897 (and (= (size!34564 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34563 _keys!1070) (size!34564 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42133 () Bool)

(declare-fun tp!80601 () Bool)

(assert (=> mapNonEmpty!42133 (= mapRes!42133 (and tp!80601 e!624484))))

(declare-fun mapKey!42133 () (_ BitVec 32))

(declare-fun mapValue!42133 () ValueCell!12750)

(declare-fun mapRest!42133 () (Array (_ BitVec 32) ValueCell!12750))

(assert (=> mapNonEmpty!42133 (= (arr!34027 _values!874) (store mapRest!42133 mapKey!42133 mapValue!42133))))

(declare-fun b!1093654 () Bool)

(assert (=> b!1093654 (= e!624479 e!624480)))

(declare-fun res!729898 () Bool)

(assert (=> b!1093654 (=> (not res!729898) (not e!624480))))

(assert (=> b!1093654 (= res!729898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489159 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093654 (= lt!489159 (array!70713 (store (arr!34026 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34563 _keys!1070)))))

(declare-fun b!1093655 () Bool)

(assert (=> b!1093655 (= e!624480 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41019)

(declare-datatypes ((tuple2!17264 0))(
  ( (tuple2!17265 (_1!8642 (_ BitVec 64)) (_2!8642 V!41019)) )
))
(declare-datatypes ((List!23911 0))(
  ( (Nil!23908) (Cons!23907 (h!25116 tuple2!17264) (t!33893 List!23911)) )
))
(declare-datatypes ((ListLongMap!15245 0))(
  ( (ListLongMap!15246 (toList!7638 List!23911)) )
))
(declare-fun lt!489161 () ListLongMap!15245)

(declare-fun zeroValue!831 () V!41019)

(declare-fun getCurrentListMap!4373 (array!70712 array!70714 (_ BitVec 32) (_ BitVec 32) V!41019 V!41019 (_ BitVec 32) Int) ListLongMap!15245)

(assert (=> b!1093655 (= lt!489161 (getCurrentListMap!4373 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489164 () array!70714)

(declare-fun lt!489163 () ListLongMap!15245)

(assert (=> b!1093655 (= lt!489163 (getCurrentListMap!4373 lt!489159 lt!489164 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489160 () ListLongMap!15245)

(declare-fun lt!489156 () ListLongMap!15245)

(assert (=> b!1093655 (and (= lt!489160 lt!489156) (= lt!489156 lt!489160))))

(declare-fun lt!489162 () ListLongMap!15245)

(declare-fun -!914 (ListLongMap!15245 (_ BitVec 64)) ListLongMap!15245)

(assert (=> b!1093655 (= lt!489156 (-!914 lt!489162 k0!904))))

(declare-datatypes ((Unit!35943 0))(
  ( (Unit!35944) )
))
(declare-fun lt!489157 () Unit!35943)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!179 (array!70712 array!70714 (_ BitVec 32) (_ BitVec 32) V!41019 V!41019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35943)

(assert (=> b!1093655 (= lt!489157 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!179 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4125 (array!70712 array!70714 (_ BitVec 32) (_ BitVec 32) V!41019 V!41019 (_ BitVec 32) Int) ListLongMap!15245)

(assert (=> b!1093655 (= lt!489160 (getCurrentListMapNoExtraKeys!4125 lt!489159 lt!489164 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2261 (Int (_ BitVec 64)) V!41019)

(assert (=> b!1093655 (= lt!489164 (array!70715 (store (arr!34027 _values!874) i!650 (ValueCellFull!12750 (dynLambda!2261 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34564 _values!874)))))

(assert (=> b!1093655 (= lt!489162 (getCurrentListMapNoExtraKeys!4125 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093655 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489158 () Unit!35943)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70712 (_ BitVec 64) (_ BitVec 32)) Unit!35943)

(assert (=> b!1093655 (= lt!489158 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093656 () Bool)

(declare-fun e!624482 () Bool)

(declare-fun e!624481 () Bool)

(assert (=> b!1093656 (= e!624482 (and e!624481 mapRes!42133))))

(declare-fun condMapEmpty!42133 () Bool)

(declare-fun mapDefault!42133 () ValueCell!12750)

(assert (=> b!1093656 (= condMapEmpty!42133 (= (arr!34027 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12750)) mapDefault!42133)))))

(declare-fun b!1093657 () Bool)

(assert (=> b!1093657 (= e!624481 tp_is_empty!26919)))

(declare-fun b!1093658 () Bool)

(declare-fun res!729903 () Bool)

(assert (=> b!1093658 (=> (not res!729903) (not e!624479))))

(assert (=> b!1093658 (= res!729903 (= (select (arr!34026 _keys!1070) i!650) k0!904))))

(declare-fun b!1093651 () Bool)

(declare-fun res!729905 () Bool)

(assert (=> b!1093651 (=> (not res!729905) (not e!624479))))

(assert (=> b!1093651 (= res!729905 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34563 _keys!1070))))))

(declare-fun res!729900 () Bool)

(assert (=> start!96300 (=> (not res!729900) (not e!624479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96300 (= res!729900 (validMask!0 mask!1414))))

(assert (=> start!96300 e!624479))

(assert (=> start!96300 tp!80600))

(assert (=> start!96300 true))

(assert (=> start!96300 tp_is_empty!26919))

(declare-fun array_inv!26078 (array!70712) Bool)

(assert (=> start!96300 (array_inv!26078 _keys!1070)))

(declare-fun array_inv!26079 (array!70714) Bool)

(assert (=> start!96300 (and (array_inv!26079 _values!874) e!624482)))

(assert (= (and start!96300 res!729900) b!1093653))

(assert (= (and b!1093653 res!729897) b!1093652))

(assert (= (and b!1093652 res!729902) b!1093649))

(assert (= (and b!1093649 res!729899) b!1093651))

(assert (= (and b!1093651 res!729905) b!1093650))

(assert (= (and b!1093650 res!729904) b!1093658))

(assert (= (and b!1093658 res!729903) b!1093654))

(assert (= (and b!1093654 res!729898) b!1093648))

(assert (= (and b!1093648 res!729901) b!1093655))

(assert (= (and b!1093656 condMapEmpty!42133) mapIsEmpty!42133))

(assert (= (and b!1093656 (not condMapEmpty!42133)) mapNonEmpty!42133))

(get-info :version)

(assert (= (and mapNonEmpty!42133 ((_ is ValueCellFull!12750) mapValue!42133)) b!1093647))

(assert (= (and b!1093656 ((_ is ValueCellFull!12750) mapDefault!42133)) b!1093657))

(assert (= start!96300 b!1093656))

(declare-fun b_lambda!17617 () Bool)

(assert (=> (not b_lambda!17617) (not b!1093655)))

(declare-fun t!33891 () Bool)

(declare-fun tb!7803 () Bool)

(assert (=> (and start!96300 (= defaultEntry!882 defaultEntry!882) t!33891) tb!7803))

(declare-fun result!16117 () Bool)

(assert (=> tb!7803 (= result!16117 tp_is_empty!26919)))

(assert (=> b!1093655 t!33891))

(declare-fun b_and!36529 () Bool)

(assert (= b_and!36527 (and (=> t!33891 result!16117) b_and!36529)))

(declare-fun m!1013679 () Bool)

(assert (=> b!1093650 m!1013679))

(declare-fun m!1013681 () Bool)

(assert (=> b!1093654 m!1013681))

(declare-fun m!1013683 () Bool)

(assert (=> b!1093654 m!1013683))

(declare-fun m!1013685 () Bool)

(assert (=> mapNonEmpty!42133 m!1013685))

(declare-fun m!1013687 () Bool)

(assert (=> b!1093655 m!1013687))

(declare-fun m!1013689 () Bool)

(assert (=> b!1093655 m!1013689))

(declare-fun m!1013691 () Bool)

(assert (=> b!1093655 m!1013691))

(declare-fun m!1013693 () Bool)

(assert (=> b!1093655 m!1013693))

(declare-fun m!1013695 () Bool)

(assert (=> b!1093655 m!1013695))

(declare-fun m!1013697 () Bool)

(assert (=> b!1093655 m!1013697))

(declare-fun m!1013699 () Bool)

(assert (=> b!1093655 m!1013699))

(declare-fun m!1013701 () Bool)

(assert (=> b!1093655 m!1013701))

(declare-fun m!1013703 () Bool)

(assert (=> b!1093655 m!1013703))

(declare-fun m!1013705 () Bool)

(assert (=> b!1093655 m!1013705))

(declare-fun m!1013707 () Bool)

(assert (=> b!1093648 m!1013707))

(declare-fun m!1013709 () Bool)

(assert (=> b!1093652 m!1013709))

(declare-fun m!1013711 () Bool)

(assert (=> start!96300 m!1013711))

(declare-fun m!1013713 () Bool)

(assert (=> start!96300 m!1013713))

(declare-fun m!1013715 () Bool)

(assert (=> start!96300 m!1013715))

(declare-fun m!1013717 () Bool)

(assert (=> b!1093649 m!1013717))

(declare-fun m!1013719 () Bool)

(assert (=> b!1093658 m!1013719))

(check-sat b_and!36529 tp_is_empty!26919 (not b!1093655) (not b!1093648) (not mapNonEmpty!42133) (not b!1093652) (not start!96300) (not b!1093654) (not b_lambda!17617) (not b!1093650) (not b_next!22917) (not b!1093649))
(check-sat b_and!36529 (not b_next!22917))

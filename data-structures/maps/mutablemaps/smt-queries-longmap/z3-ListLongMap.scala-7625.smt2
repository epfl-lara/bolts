; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96108 () Bool)

(assert start!96108)

(declare-fun b_free!22725 () Bool)

(declare-fun b_next!22725 () Bool)

(assert (=> start!96108 (= b_free!22725 (not b_next!22725))))

(declare-fun tp!80025 () Bool)

(declare-fun b_and!36143 () Bool)

(assert (=> start!96108 (= tp!80025 b_and!36143)))

(declare-fun b!1089640 () Bool)

(declare-fun res!726947 () Bool)

(declare-fun e!622408 () Bool)

(assert (=> b!1089640 (=> (not res!726947) (not e!622408))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70342 0))(
  ( (array!70343 (arr!33841 (Array (_ BitVec 32) (_ BitVec 64))) (size!34378 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70342)

(assert (=> b!1089640 (= res!726947 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34378 _keys!1070))))))

(declare-fun res!726950 () Bool)

(assert (=> start!96108 (=> (not res!726950) (not e!622408))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96108 (= res!726950 (validMask!0 mask!1414))))

(assert (=> start!96108 e!622408))

(assert (=> start!96108 tp!80025))

(assert (=> start!96108 true))

(declare-fun tp_is_empty!26727 () Bool)

(assert (=> start!96108 tp_is_empty!26727))

(declare-fun array_inv!25960 (array!70342) Bool)

(assert (=> start!96108 (array_inv!25960 _keys!1070)))

(declare-datatypes ((V!40763 0))(
  ( (V!40764 (val!13420 Int)) )
))
(declare-datatypes ((ValueCell!12654 0))(
  ( (ValueCellFull!12654 (v!16042 V!40763)) (EmptyCell!12654) )
))
(declare-datatypes ((array!70344 0))(
  ( (array!70345 (arr!33842 (Array (_ BitVec 32) ValueCell!12654)) (size!34379 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70344)

(declare-fun e!622406 () Bool)

(declare-fun array_inv!25961 (array!70344) Bool)

(assert (=> start!96108 (and (array_inv!25961 _values!874) e!622406)))

(declare-fun b!1089641 () Bool)

(declare-fun res!726946 () Bool)

(assert (=> b!1089641 (=> (not res!726946) (not e!622408))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089641 (= res!726946 (validKeyInArray!0 k0!904))))

(declare-fun b!1089642 () Bool)

(declare-fun e!622402 () Bool)

(declare-fun e!622403 () Bool)

(assert (=> b!1089642 (= e!622402 e!622403)))

(declare-fun res!726955 () Bool)

(assert (=> b!1089642 (=> res!726955 e!622403)))

(assert (=> b!1089642 (= res!726955 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17128 0))(
  ( (tuple2!17129 (_1!8574 (_ BitVec 64)) (_2!8574 V!40763)) )
))
(declare-datatypes ((List!23765 0))(
  ( (Nil!23762) (Cons!23761 (h!24970 tuple2!17128) (t!33555 List!23765)) )
))
(declare-datatypes ((ListLongMap!15109 0))(
  ( (ListLongMap!15110 (toList!7570 List!23765)) )
))
(declare-fun lt!485884 () ListLongMap!15109)

(declare-fun lt!485886 () ListLongMap!15109)

(assert (=> b!1089642 (= lt!485884 lt!485886)))

(declare-fun lt!485893 () ListLongMap!15109)

(declare-fun lt!485887 () tuple2!17128)

(declare-fun +!3282 (ListLongMap!15109 tuple2!17128) ListLongMap!15109)

(assert (=> b!1089642 (= lt!485886 (+!3282 lt!485893 lt!485887))))

(declare-fun lt!485885 () ListLongMap!15109)

(declare-fun lt!485890 () ListLongMap!15109)

(assert (=> b!1089642 (= lt!485885 lt!485890)))

(declare-fun lt!485888 () ListLongMap!15109)

(assert (=> b!1089642 (= lt!485890 (+!3282 lt!485888 lt!485887))))

(declare-fun lt!485882 () ListLongMap!15109)

(assert (=> b!1089642 (= lt!485884 (+!3282 lt!485882 lt!485887))))

(declare-fun zeroValue!831 () V!40763)

(assert (=> b!1089642 (= lt!485887 (tuple2!17129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089643 () Bool)

(declare-fun res!726948 () Bool)

(declare-fun e!622407 () Bool)

(assert (=> b!1089643 (=> (not res!726948) (not e!622407))))

(declare-fun lt!485892 () array!70342)

(declare-datatypes ((List!23766 0))(
  ( (Nil!23763) (Cons!23762 (h!24971 (_ BitVec 64)) (t!33556 List!23766)) )
))
(declare-fun arrayNoDuplicates!0 (array!70342 (_ BitVec 32) List!23766) Bool)

(assert (=> b!1089643 (= res!726948 (arrayNoDuplicates!0 lt!485892 #b00000000000000000000000000000000 Nil!23763))))

(declare-fun b!1089644 () Bool)

(assert (=> b!1089644 (= e!622408 e!622407)))

(declare-fun res!726952 () Bool)

(assert (=> b!1089644 (=> (not res!726952) (not e!622407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70342 (_ BitVec 32)) Bool)

(assert (=> b!1089644 (= res!726952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485892 mask!1414))))

(assert (=> b!1089644 (= lt!485892 (array!70343 (store (arr!33841 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34378 _keys!1070)))))

(declare-fun b!1089645 () Bool)

(declare-fun res!726954 () Bool)

(assert (=> b!1089645 (=> (not res!726954) (not e!622408))))

(assert (=> b!1089645 (= res!726954 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23763))))

(declare-fun mapNonEmpty!41845 () Bool)

(declare-fun mapRes!41845 () Bool)

(declare-fun tp!80024 () Bool)

(declare-fun e!622404 () Bool)

(assert (=> mapNonEmpty!41845 (= mapRes!41845 (and tp!80024 e!622404))))

(declare-fun mapKey!41845 () (_ BitVec 32))

(declare-fun mapValue!41845 () ValueCell!12654)

(declare-fun mapRest!41845 () (Array (_ BitVec 32) ValueCell!12654))

(assert (=> mapNonEmpty!41845 (= (arr!33842 _values!874) (store mapRest!41845 mapKey!41845 mapValue!41845))))

(declare-fun b!1089646 () Bool)

(declare-fun res!726949 () Bool)

(assert (=> b!1089646 (=> (not res!726949) (not e!622408))))

(assert (=> b!1089646 (= res!726949 (= (select (arr!33841 _keys!1070) i!650) k0!904))))

(declare-fun b!1089647 () Bool)

(declare-fun res!726951 () Bool)

(assert (=> b!1089647 (=> (not res!726951) (not e!622408))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089647 (= res!726951 (and (= (size!34379 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34378 _keys!1070) (size!34379 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089648 () Bool)

(assert (=> b!1089648 (= e!622403 (bvsle #b00000000000000000000000000000000 (size!34378 _keys!1070)))))

(declare-fun -!848 (ListLongMap!15109 (_ BitVec 64)) ListLongMap!15109)

(assert (=> b!1089648 (= (-!848 lt!485890 k0!904) lt!485886)))

(declare-datatypes ((Unit!35811 0))(
  ( (Unit!35812) )
))
(declare-fun lt!485894 () Unit!35811)

(declare-fun addRemoveCommutativeForDiffKeys!81 (ListLongMap!15109 (_ BitVec 64) V!40763 (_ BitVec 64)) Unit!35811)

(assert (=> b!1089648 (= lt!485894 (addRemoveCommutativeForDiffKeys!81 lt!485888 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1089649 () Bool)

(declare-fun e!622401 () Bool)

(assert (=> b!1089649 (= e!622401 tp_is_empty!26727)))

(declare-fun b!1089650 () Bool)

(declare-fun res!726953 () Bool)

(assert (=> b!1089650 (=> (not res!726953) (not e!622408))))

(assert (=> b!1089650 (= res!726953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41845 () Bool)

(assert (=> mapIsEmpty!41845 mapRes!41845))

(declare-fun b!1089651 () Bool)

(assert (=> b!1089651 (= e!622407 (not e!622402))))

(declare-fun res!726956 () Bool)

(assert (=> b!1089651 (=> res!726956 e!622402)))

(assert (=> b!1089651 (= res!726956 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40763)

(declare-fun getCurrentListMap!4311 (array!70342 array!70344 (_ BitVec 32) (_ BitVec 32) V!40763 V!40763 (_ BitVec 32) Int) ListLongMap!15109)

(assert (=> b!1089651 (= lt!485885 (getCurrentListMap!4311 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485883 () array!70344)

(assert (=> b!1089651 (= lt!485884 (getCurrentListMap!4311 lt!485892 lt!485883 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089651 (and (= lt!485882 lt!485893) (= lt!485893 lt!485882))))

(assert (=> b!1089651 (= lt!485893 (-!848 lt!485888 k0!904))))

(declare-fun lt!485891 () Unit!35811)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!117 (array!70342 array!70344 (_ BitVec 32) (_ BitVec 32) V!40763 V!40763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35811)

(assert (=> b!1089651 (= lt!485891 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!117 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4063 (array!70342 array!70344 (_ BitVec 32) (_ BitVec 32) V!40763 V!40763 (_ BitVec 32) Int) ListLongMap!15109)

(assert (=> b!1089651 (= lt!485882 (getCurrentListMapNoExtraKeys!4063 lt!485892 lt!485883 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2199 (Int (_ BitVec 64)) V!40763)

(assert (=> b!1089651 (= lt!485883 (array!70345 (store (arr!33842 _values!874) i!650 (ValueCellFull!12654 (dynLambda!2199 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34379 _values!874)))))

(assert (=> b!1089651 (= lt!485888 (getCurrentListMapNoExtraKeys!4063 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089651 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485889 () Unit!35811)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70342 (_ BitVec 64) (_ BitVec 32)) Unit!35811)

(assert (=> b!1089651 (= lt!485889 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1089652 () Bool)

(assert (=> b!1089652 (= e!622404 tp_is_empty!26727)))

(declare-fun b!1089653 () Bool)

(assert (=> b!1089653 (= e!622406 (and e!622401 mapRes!41845))))

(declare-fun condMapEmpty!41845 () Bool)

(declare-fun mapDefault!41845 () ValueCell!12654)

(assert (=> b!1089653 (= condMapEmpty!41845 (= (arr!33842 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12654)) mapDefault!41845)))))

(assert (= (and start!96108 res!726950) b!1089647))

(assert (= (and b!1089647 res!726951) b!1089650))

(assert (= (and b!1089650 res!726953) b!1089645))

(assert (= (and b!1089645 res!726954) b!1089640))

(assert (= (and b!1089640 res!726947) b!1089641))

(assert (= (and b!1089641 res!726946) b!1089646))

(assert (= (and b!1089646 res!726949) b!1089644))

(assert (= (and b!1089644 res!726952) b!1089643))

(assert (= (and b!1089643 res!726948) b!1089651))

(assert (= (and b!1089651 (not res!726956)) b!1089642))

(assert (= (and b!1089642 (not res!726955)) b!1089648))

(assert (= (and b!1089653 condMapEmpty!41845) mapIsEmpty!41845))

(assert (= (and b!1089653 (not condMapEmpty!41845)) mapNonEmpty!41845))

(get-info :version)

(assert (= (and mapNonEmpty!41845 ((_ is ValueCellFull!12654) mapValue!41845)) b!1089652))

(assert (= (and b!1089653 ((_ is ValueCellFull!12654) mapDefault!41845)) b!1089649))

(assert (= start!96108 b!1089653))

(declare-fun b_lambda!17425 () Bool)

(assert (=> (not b_lambda!17425) (not b!1089651)))

(declare-fun t!33554 () Bool)

(declare-fun tb!7611 () Bool)

(assert (=> (and start!96108 (= defaultEntry!882 defaultEntry!882) t!33554) tb!7611))

(declare-fun result!15733 () Bool)

(assert (=> tb!7611 (= result!15733 tp_is_empty!26727)))

(assert (=> b!1089651 t!33554))

(declare-fun b_and!36145 () Bool)

(assert (= b_and!36143 (and (=> t!33554 result!15733) b_and!36145)))

(declare-fun m!1009069 () Bool)

(assert (=> start!96108 m!1009069))

(declare-fun m!1009071 () Bool)

(assert (=> start!96108 m!1009071))

(declare-fun m!1009073 () Bool)

(assert (=> start!96108 m!1009073))

(declare-fun m!1009075 () Bool)

(assert (=> b!1089645 m!1009075))

(declare-fun m!1009077 () Bool)

(assert (=> b!1089641 m!1009077))

(declare-fun m!1009079 () Bool)

(assert (=> b!1089644 m!1009079))

(declare-fun m!1009081 () Bool)

(assert (=> b!1089644 m!1009081))

(declare-fun m!1009083 () Bool)

(assert (=> b!1089643 m!1009083))

(declare-fun m!1009085 () Bool)

(assert (=> b!1089642 m!1009085))

(declare-fun m!1009087 () Bool)

(assert (=> b!1089642 m!1009087))

(declare-fun m!1009089 () Bool)

(assert (=> b!1089642 m!1009089))

(declare-fun m!1009091 () Bool)

(assert (=> b!1089648 m!1009091))

(declare-fun m!1009093 () Bool)

(assert (=> b!1089648 m!1009093))

(declare-fun m!1009095 () Bool)

(assert (=> b!1089646 m!1009095))

(declare-fun m!1009097 () Bool)

(assert (=> b!1089650 m!1009097))

(declare-fun m!1009099 () Bool)

(assert (=> b!1089651 m!1009099))

(declare-fun m!1009101 () Bool)

(assert (=> b!1089651 m!1009101))

(declare-fun m!1009103 () Bool)

(assert (=> b!1089651 m!1009103))

(declare-fun m!1009105 () Bool)

(assert (=> b!1089651 m!1009105))

(declare-fun m!1009107 () Bool)

(assert (=> b!1089651 m!1009107))

(declare-fun m!1009109 () Bool)

(assert (=> b!1089651 m!1009109))

(declare-fun m!1009111 () Bool)

(assert (=> b!1089651 m!1009111))

(declare-fun m!1009113 () Bool)

(assert (=> b!1089651 m!1009113))

(declare-fun m!1009115 () Bool)

(assert (=> b!1089651 m!1009115))

(declare-fun m!1009117 () Bool)

(assert (=> b!1089651 m!1009117))

(declare-fun m!1009119 () Bool)

(assert (=> mapNonEmpty!41845 m!1009119))

(check-sat (not b_lambda!17425) (not b!1089641) (not b!1089651) (not b!1089643) (not b!1089642) (not start!96108) (not b_next!22725) (not b!1089644) (not b!1089645) (not b!1089650) b_and!36145 (not mapNonEmpty!41845) (not b!1089648) tp_is_empty!26727)
(check-sat b_and!36145 (not b_next!22725))

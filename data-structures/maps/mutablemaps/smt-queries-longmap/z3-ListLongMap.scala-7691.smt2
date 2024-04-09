; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96556 () Bool)

(assert start!96556)

(declare-fun b_free!23073 () Bool)

(declare-fun b_next!23073 () Bool)

(assert (=> start!96556 (= b_free!23073 (not b_next!23073))))

(declare-fun tp!81149 () Bool)

(declare-fun b_and!36841 () Bool)

(assert (=> start!96556 (= tp!81149 b_and!36841)))

(declare-fun b!1097635 () Bool)

(declare-fun res!732665 () Bool)

(declare-fun e!626506 () Bool)

(assert (=> b!1097635 (=> (not res!732665) (not e!626506))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097635 (= res!732665 (validKeyInArray!0 k0!904))))

(declare-fun b!1097636 () Bool)

(declare-fun res!732671 () Bool)

(assert (=> b!1097636 (=> (not res!732671) (not e!626506))))

(declare-datatypes ((array!71108 0))(
  ( (array!71109 (arr!34221 (Array (_ BitVec 32) (_ BitVec 64))) (size!34758 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71108)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71108 (_ BitVec 32)) Bool)

(assert (=> b!1097636 (= res!732671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097637 () Bool)

(declare-fun e!626508 () Bool)

(declare-fun tp_is_empty!27123 () Bool)

(assert (=> b!1097637 (= e!626508 tp_is_empty!27123)))

(declare-fun b!1097638 () Bool)

(declare-fun res!732668 () Bool)

(declare-fun e!626507 () Bool)

(assert (=> b!1097638 (=> (not res!732668) (not e!626507))))

(declare-fun lt!490742 () array!71108)

(declare-datatypes ((List!24036 0))(
  ( (Nil!24033) (Cons!24032 (h!25241 (_ BitVec 64)) (t!34162 List!24036)) )
))
(declare-fun arrayNoDuplicates!0 (array!71108 (_ BitVec 32) List!24036) Bool)

(assert (=> b!1097638 (= res!732668 (arrayNoDuplicates!0 lt!490742 #b00000000000000000000000000000000 Nil!24033))))

(declare-fun b!1097639 () Bool)

(assert (=> b!1097639 (= e!626506 e!626507)))

(declare-fun res!732672 () Bool)

(assert (=> b!1097639 (=> (not res!732672) (not e!626507))))

(assert (=> b!1097639 (= res!732672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490742 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097639 (= lt!490742 (array!71109 (store (arr!34221 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34758 _keys!1070)))))

(declare-fun b!1097640 () Bool)

(declare-fun res!732666 () Bool)

(assert (=> b!1097640 (=> (not res!732666) (not e!626506))))

(assert (=> b!1097640 (= res!732666 (= (select (arr!34221 _keys!1070) i!650) k0!904))))

(declare-fun b!1097641 () Bool)

(declare-datatypes ((V!41291 0))(
  ( (V!41292 (val!13618 Int)) )
))
(declare-datatypes ((tuple2!17358 0))(
  ( (tuple2!17359 (_1!8689 (_ BitVec 64)) (_2!8689 V!41291)) )
))
(declare-fun lt!490739 () tuple2!17358)

(declare-datatypes ((List!24037 0))(
  ( (Nil!24034) (Cons!24033 (h!25242 tuple2!17358) (t!34163 List!24037)) )
))
(declare-datatypes ((ListLongMap!15339 0))(
  ( (ListLongMap!15340 (toList!7685 List!24037)) )
))
(declare-fun lt!490746 () ListLongMap!15339)

(declare-fun lt!490738 () tuple2!17358)

(declare-fun e!626509 () Bool)

(declare-fun lt!490748 () ListLongMap!15339)

(declare-fun +!3320 (ListLongMap!15339 tuple2!17358) ListLongMap!15339)

(assert (=> b!1097641 (= e!626509 (= lt!490746 (+!3320 (+!3320 lt!490748 lt!490739) lt!490738)))))

(declare-fun lt!490745 () ListLongMap!15339)

(declare-fun lt!490740 () ListLongMap!15339)

(assert (=> b!1097641 (= lt!490745 (+!3320 (+!3320 lt!490740 lt!490739) lt!490738))))

(declare-fun minValue!831 () V!41291)

(assert (=> b!1097641 (= lt!490738 (tuple2!17359 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun zeroValue!831 () V!41291)

(assert (=> b!1097641 (= lt!490739 (tuple2!17359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1097642 () Bool)

(assert (=> b!1097642 (= e!626507 (not e!626509))))

(declare-fun res!732673 () Bool)

(assert (=> b!1097642 (=> res!732673 e!626509)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1097642 (= res!732673 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((ValueCell!12852 0))(
  ( (ValueCellFull!12852 (v!16241 V!41291)) (EmptyCell!12852) )
))
(declare-datatypes ((array!71110 0))(
  ( (array!71111 (arr!34222 (Array (_ BitVec 32) ValueCell!12852)) (size!34759 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71110)

(declare-fun getCurrentListMap!4384 (array!71108 array!71110 (_ BitVec 32) (_ BitVec 32) V!41291 V!41291 (_ BitVec 32) Int) ListLongMap!15339)

(assert (=> b!1097642 (= lt!490746 (getCurrentListMap!4384 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490744 () array!71110)

(assert (=> b!1097642 (= lt!490745 (getCurrentListMap!4384 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490743 () ListLongMap!15339)

(assert (=> b!1097642 (and (= lt!490740 lt!490743) (= lt!490743 lt!490740))))

(declare-fun -!931 (ListLongMap!15339 (_ BitVec 64)) ListLongMap!15339)

(assert (=> b!1097642 (= lt!490743 (-!931 lt!490748 k0!904))))

(declare-datatypes ((Unit!36043 0))(
  ( (Unit!36044) )
))
(declare-fun lt!490747 () Unit!36043)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!196 (array!71108 array!71110 (_ BitVec 32) (_ BitVec 32) V!41291 V!41291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36043)

(assert (=> b!1097642 (= lt!490747 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!196 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4171 (array!71108 array!71110 (_ BitVec 32) (_ BitVec 32) V!41291 V!41291 (_ BitVec 32) Int) ListLongMap!15339)

(assert (=> b!1097642 (= lt!490740 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2302 (Int (_ BitVec 64)) V!41291)

(assert (=> b!1097642 (= lt!490744 (array!71111 (store (arr!34222 _values!874) i!650 (ValueCellFull!12852 (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34759 _values!874)))))

(assert (=> b!1097642 (= lt!490748 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097642 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490741 () Unit!36043)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71108 (_ BitVec 64) (_ BitVec 32)) Unit!36043)

(assert (=> b!1097642 (= lt!490741 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!732674 () Bool)

(assert (=> start!96556 (=> (not res!732674) (not e!626506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96556 (= res!732674 (validMask!0 mask!1414))))

(assert (=> start!96556 e!626506))

(assert (=> start!96556 tp!81149))

(assert (=> start!96556 true))

(assert (=> start!96556 tp_is_empty!27123))

(declare-fun array_inv!26220 (array!71108) Bool)

(assert (=> start!96556 (array_inv!26220 _keys!1070)))

(declare-fun e!626511 () Bool)

(declare-fun array_inv!26221 (array!71110) Bool)

(assert (=> start!96556 (and (array_inv!26221 _values!874) e!626511)))

(declare-fun mapIsEmpty!42448 () Bool)

(declare-fun mapRes!42448 () Bool)

(assert (=> mapIsEmpty!42448 mapRes!42448))

(declare-fun b!1097643 () Bool)

(declare-fun res!732670 () Bool)

(assert (=> b!1097643 (=> (not res!732670) (not e!626506))))

(assert (=> b!1097643 (= res!732670 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34758 _keys!1070))))))

(declare-fun mapNonEmpty!42448 () Bool)

(declare-fun tp!81150 () Bool)

(declare-fun e!626512 () Bool)

(assert (=> mapNonEmpty!42448 (= mapRes!42448 (and tp!81150 e!626512))))

(declare-fun mapRest!42448 () (Array (_ BitVec 32) ValueCell!12852))

(declare-fun mapKey!42448 () (_ BitVec 32))

(declare-fun mapValue!42448 () ValueCell!12852)

(assert (=> mapNonEmpty!42448 (= (arr!34222 _values!874) (store mapRest!42448 mapKey!42448 mapValue!42448))))

(declare-fun b!1097644 () Bool)

(declare-fun res!732669 () Bool)

(assert (=> b!1097644 (=> (not res!732669) (not e!626506))))

(assert (=> b!1097644 (= res!732669 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24033))))

(declare-fun b!1097645 () Bool)

(assert (=> b!1097645 (= e!626512 tp_is_empty!27123)))

(declare-fun b!1097646 () Bool)

(declare-fun res!732667 () Bool)

(assert (=> b!1097646 (=> (not res!732667) (not e!626506))))

(assert (=> b!1097646 (= res!732667 (and (= (size!34759 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34758 _keys!1070) (size!34759 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097647 () Bool)

(assert (=> b!1097647 (= e!626511 (and e!626508 mapRes!42448))))

(declare-fun condMapEmpty!42448 () Bool)

(declare-fun mapDefault!42448 () ValueCell!12852)

(assert (=> b!1097647 (= condMapEmpty!42448 (= (arr!34222 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12852)) mapDefault!42448)))))

(assert (= (and start!96556 res!732674) b!1097646))

(assert (= (and b!1097646 res!732667) b!1097636))

(assert (= (and b!1097636 res!732671) b!1097644))

(assert (= (and b!1097644 res!732669) b!1097643))

(assert (= (and b!1097643 res!732670) b!1097635))

(assert (= (and b!1097635 res!732665) b!1097640))

(assert (= (and b!1097640 res!732666) b!1097639))

(assert (= (and b!1097639 res!732672) b!1097638))

(assert (= (and b!1097638 res!732668) b!1097642))

(assert (= (and b!1097642 (not res!732673)) b!1097641))

(assert (= (and b!1097647 condMapEmpty!42448) mapIsEmpty!42448))

(assert (= (and b!1097647 (not condMapEmpty!42448)) mapNonEmpty!42448))

(get-info :version)

(assert (= (and mapNonEmpty!42448 ((_ is ValueCellFull!12852) mapValue!42448)) b!1097645))

(assert (= (and b!1097647 ((_ is ValueCellFull!12852) mapDefault!42448)) b!1097637))

(assert (= start!96556 b!1097647))

(declare-fun b_lambda!17791 () Bool)

(assert (=> (not b_lambda!17791) (not b!1097642)))

(declare-fun t!34161 () Bool)

(declare-fun tb!7947 () Bool)

(assert (=> (and start!96556 (= defaultEntry!882 defaultEntry!882) t!34161) tb!7947))

(declare-fun result!16411 () Bool)

(assert (=> tb!7947 (= result!16411 tp_is_empty!27123)))

(assert (=> b!1097642 t!34161))

(declare-fun b_and!36843 () Bool)

(assert (= b_and!36841 (and (=> t!34161 result!16411) b_and!36843)))

(declare-fun m!1017281 () Bool)

(assert (=> mapNonEmpty!42448 m!1017281))

(declare-fun m!1017283 () Bool)

(assert (=> b!1097641 m!1017283))

(assert (=> b!1097641 m!1017283))

(declare-fun m!1017285 () Bool)

(assert (=> b!1097641 m!1017285))

(declare-fun m!1017287 () Bool)

(assert (=> b!1097641 m!1017287))

(assert (=> b!1097641 m!1017287))

(declare-fun m!1017289 () Bool)

(assert (=> b!1097641 m!1017289))

(declare-fun m!1017291 () Bool)

(assert (=> b!1097642 m!1017291))

(declare-fun m!1017293 () Bool)

(assert (=> b!1097642 m!1017293))

(declare-fun m!1017295 () Bool)

(assert (=> b!1097642 m!1017295))

(declare-fun m!1017297 () Bool)

(assert (=> b!1097642 m!1017297))

(declare-fun m!1017299 () Bool)

(assert (=> b!1097642 m!1017299))

(declare-fun m!1017301 () Bool)

(assert (=> b!1097642 m!1017301))

(declare-fun m!1017303 () Bool)

(assert (=> b!1097642 m!1017303))

(declare-fun m!1017305 () Bool)

(assert (=> b!1097642 m!1017305))

(declare-fun m!1017307 () Bool)

(assert (=> b!1097642 m!1017307))

(declare-fun m!1017309 () Bool)

(assert (=> b!1097642 m!1017309))

(declare-fun m!1017311 () Bool)

(assert (=> b!1097639 m!1017311))

(declare-fun m!1017313 () Bool)

(assert (=> b!1097639 m!1017313))

(declare-fun m!1017315 () Bool)

(assert (=> b!1097640 m!1017315))

(declare-fun m!1017317 () Bool)

(assert (=> start!96556 m!1017317))

(declare-fun m!1017319 () Bool)

(assert (=> start!96556 m!1017319))

(declare-fun m!1017321 () Bool)

(assert (=> start!96556 m!1017321))

(declare-fun m!1017323 () Bool)

(assert (=> b!1097635 m!1017323))

(declare-fun m!1017325 () Bool)

(assert (=> b!1097638 m!1017325))

(declare-fun m!1017327 () Bool)

(assert (=> b!1097636 m!1017327))

(declare-fun m!1017329 () Bool)

(assert (=> b!1097644 m!1017329))

(check-sat (not b!1097639) (not b_next!23073) (not b!1097636) (not start!96556) (not b!1097641) (not b_lambda!17791) (not b!1097635) b_and!36843 (not b!1097638) (not mapNonEmpty!42448) tp_is_empty!27123 (not b!1097642) (not b!1097644))
(check-sat b_and!36843 (not b_next!23073))
(get-model)

(declare-fun b_lambda!17795 () Bool)

(assert (= b_lambda!17791 (or (and start!96556 b_free!23073) b_lambda!17795)))

(check-sat (not b!1097639) (not b_next!23073) (not start!96556) (not b!1097641) (not b!1097635) b_and!36843 (not b!1097638) (not mapNonEmpty!42448) tp_is_empty!27123 (not b_lambda!17795) (not b!1097636) (not b!1097642) (not b!1097644))
(check-sat b_and!36843 (not b_next!23073))
(get-model)

(declare-fun bm!45811 () Bool)

(declare-fun call!45814 () Bool)

(assert (=> bm!45811 (= call!45814 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!490742 mask!1414))))

(declare-fun d!130283 () Bool)

(declare-fun res!732710 () Bool)

(declare-fun e!626541 () Bool)

(assert (=> d!130283 (=> res!732710 e!626541)))

(assert (=> d!130283 (= res!732710 (bvsge #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(assert (=> d!130283 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490742 mask!1414) e!626541)))

(declare-fun b!1097699 () Bool)

(declare-fun e!626540 () Bool)

(declare-fun e!626542 () Bool)

(assert (=> b!1097699 (= e!626540 e!626542)))

(declare-fun lt!490789 () (_ BitVec 64))

(assert (=> b!1097699 (= lt!490789 (select (arr!34221 lt!490742) #b00000000000000000000000000000000))))

(declare-fun lt!490788 () Unit!36043)

(assert (=> b!1097699 (= lt!490788 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!490742 lt!490789 #b00000000000000000000000000000000))))

(assert (=> b!1097699 (arrayContainsKey!0 lt!490742 lt!490789 #b00000000000000000000000000000000)))

(declare-fun lt!490790 () Unit!36043)

(assert (=> b!1097699 (= lt!490790 lt!490788)))

(declare-fun res!732709 () Bool)

(declare-datatypes ((SeekEntryResult!9904 0))(
  ( (MissingZero!9904 (index!41986 (_ BitVec 32))) (Found!9904 (index!41987 (_ BitVec 32))) (Intermediate!9904 (undefined!10716 Bool) (index!41988 (_ BitVec 32)) (x!98728 (_ BitVec 32))) (Undefined!9904) (MissingVacant!9904 (index!41989 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71108 (_ BitVec 32)) SeekEntryResult!9904)

(assert (=> b!1097699 (= res!732709 (= (seekEntryOrOpen!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000) lt!490742 mask!1414) (Found!9904 #b00000000000000000000000000000000)))))

(assert (=> b!1097699 (=> (not res!732709) (not e!626542))))

(declare-fun b!1097700 () Bool)

(assert (=> b!1097700 (= e!626540 call!45814)))

(declare-fun b!1097701 () Bool)

(assert (=> b!1097701 (= e!626542 call!45814)))

(declare-fun b!1097702 () Bool)

(assert (=> b!1097702 (= e!626541 e!626540)))

(declare-fun c!108360 () Bool)

(assert (=> b!1097702 (= c!108360 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(assert (= (and d!130283 (not res!732710)) b!1097702))

(assert (= (and b!1097702 c!108360) b!1097699))

(assert (= (and b!1097702 (not c!108360)) b!1097700))

(assert (= (and b!1097699 res!732709) b!1097701))

(assert (= (or b!1097701 b!1097700) bm!45811))

(declare-fun m!1017381 () Bool)

(assert (=> bm!45811 m!1017381))

(declare-fun m!1017383 () Bool)

(assert (=> b!1097699 m!1017383))

(declare-fun m!1017385 () Bool)

(assert (=> b!1097699 m!1017385))

(declare-fun m!1017387 () Bool)

(assert (=> b!1097699 m!1017387))

(assert (=> b!1097699 m!1017383))

(declare-fun m!1017389 () Bool)

(assert (=> b!1097699 m!1017389))

(assert (=> b!1097702 m!1017383))

(assert (=> b!1097702 m!1017383))

(declare-fun m!1017391 () Bool)

(assert (=> b!1097702 m!1017391))

(assert (=> b!1097639 d!130283))

(declare-fun d!130285 () Bool)

(assert (=> d!130285 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96556 d!130285))

(declare-fun d!130287 () Bool)

(assert (=> d!130287 (= (array_inv!26220 _keys!1070) (bvsge (size!34758 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96556 d!130287))

(declare-fun d!130289 () Bool)

(assert (=> d!130289 (= (array_inv!26221 _values!874) (bvsge (size!34759 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96556 d!130289))

(declare-fun d!130291 () Bool)

(declare-fun res!732718 () Bool)

(declare-fun e!626552 () Bool)

(assert (=> d!130291 (=> res!732718 e!626552)))

(assert (=> d!130291 (= res!732718 (bvsge #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(assert (=> d!130291 (= (arrayNoDuplicates!0 lt!490742 #b00000000000000000000000000000000 Nil!24033) e!626552)))

(declare-fun b!1097713 () Bool)

(declare-fun e!626554 () Bool)

(declare-fun call!45817 () Bool)

(assert (=> b!1097713 (= e!626554 call!45817)))

(declare-fun b!1097714 () Bool)

(declare-fun e!626553 () Bool)

(declare-fun contains!6393 (List!24036 (_ BitVec 64)) Bool)

(assert (=> b!1097714 (= e!626553 (contains!6393 Nil!24033 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(declare-fun b!1097715 () Bool)

(declare-fun e!626551 () Bool)

(assert (=> b!1097715 (= e!626551 e!626554)))

(declare-fun c!108363 () Bool)

(assert (=> b!1097715 (= c!108363 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(declare-fun bm!45814 () Bool)

(assert (=> bm!45814 (= call!45817 (arrayNoDuplicates!0 lt!490742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108363 (Cons!24032 (select (arr!34221 lt!490742) #b00000000000000000000000000000000) Nil!24033) Nil!24033)))))

(declare-fun b!1097716 () Bool)

(assert (=> b!1097716 (= e!626552 e!626551)))

(declare-fun res!732719 () Bool)

(assert (=> b!1097716 (=> (not res!732719) (not e!626551))))

(assert (=> b!1097716 (= res!732719 (not e!626553))))

(declare-fun res!732717 () Bool)

(assert (=> b!1097716 (=> (not res!732717) (not e!626553))))

(assert (=> b!1097716 (= res!732717 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(declare-fun b!1097717 () Bool)

(assert (=> b!1097717 (= e!626554 call!45817)))

(assert (= (and d!130291 (not res!732718)) b!1097716))

(assert (= (and b!1097716 res!732717) b!1097714))

(assert (= (and b!1097716 res!732719) b!1097715))

(assert (= (and b!1097715 c!108363) b!1097713))

(assert (= (and b!1097715 (not c!108363)) b!1097717))

(assert (= (or b!1097713 b!1097717) bm!45814))

(assert (=> b!1097714 m!1017383))

(assert (=> b!1097714 m!1017383))

(declare-fun m!1017393 () Bool)

(assert (=> b!1097714 m!1017393))

(assert (=> b!1097715 m!1017383))

(assert (=> b!1097715 m!1017383))

(assert (=> b!1097715 m!1017391))

(assert (=> bm!45814 m!1017383))

(declare-fun m!1017395 () Bool)

(assert (=> bm!45814 m!1017395))

(assert (=> b!1097716 m!1017383))

(assert (=> b!1097716 m!1017383))

(assert (=> b!1097716 m!1017391))

(assert (=> b!1097638 d!130291))

(declare-fun d!130293 () Bool)

(declare-fun res!732724 () Bool)

(declare-fun e!626559 () Bool)

(assert (=> d!130293 (=> res!732724 e!626559)))

(assert (=> d!130293 (= res!732724 (= (select (arr!34221 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130293 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!626559)))

(declare-fun b!1097722 () Bool)

(declare-fun e!626560 () Bool)

(assert (=> b!1097722 (= e!626559 e!626560)))

(declare-fun res!732725 () Bool)

(assert (=> b!1097722 (=> (not res!732725) (not e!626560))))

(assert (=> b!1097722 (= res!732725 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34758 _keys!1070)))))

(declare-fun b!1097723 () Bool)

(assert (=> b!1097723 (= e!626560 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130293 (not res!732724)) b!1097722))

(assert (= (and b!1097722 res!732725) b!1097723))

(declare-fun m!1017397 () Bool)

(assert (=> d!130293 m!1017397))

(declare-fun m!1017399 () Bool)

(assert (=> b!1097723 m!1017399))

(assert (=> b!1097642 d!130293))

(declare-fun b!1097766 () Bool)

(declare-fun e!626592 () Bool)

(declare-fun call!45833 () Bool)

(assert (=> b!1097766 (= e!626592 (not call!45833))))

(declare-fun bm!45829 () Bool)

(declare-fun call!45838 () ListLongMap!15339)

(assert (=> bm!45829 (= call!45838 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun bm!45830 () Bool)

(declare-fun call!45834 () ListLongMap!15339)

(assert (=> bm!45830 (= call!45834 call!45838)))

(declare-fun b!1097767 () Bool)

(declare-fun e!626591 () Bool)

(assert (=> b!1097767 (= e!626592 e!626591)))

(declare-fun res!732744 () Bool)

(assert (=> b!1097767 (= res!732744 call!45833)))

(assert (=> b!1097767 (=> (not res!732744) (not e!626591))))

(declare-fun bm!45831 () Bool)

(declare-fun call!45832 () Bool)

(declare-fun lt!490850 () ListLongMap!15339)

(declare-fun contains!6394 (ListLongMap!15339 (_ BitVec 64)) Bool)

(assert (=> bm!45831 (= call!45832 (contains!6394 lt!490850 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!108377 () Bool)

(declare-fun call!45837 () ListLongMap!15339)

(declare-fun call!45836 () ListLongMap!15339)

(declare-fun c!108381 () Bool)

(declare-fun bm!45832 () Bool)

(assert (=> bm!45832 (= call!45836 (+!3320 (ite c!108377 call!45838 (ite c!108381 call!45834 call!45837)) (ite (or c!108377 c!108381) (tuple2!17359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17359 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1097768 () Bool)

(declare-fun e!626597 () Bool)

(declare-fun apply!979 (ListLongMap!15339 (_ BitVec 64)) V!41291)

(assert (=> b!1097768 (= e!626597 (= (apply!979 lt!490850 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1097769 () Bool)

(declare-fun e!626588 () ListLongMap!15339)

(declare-fun e!626599 () ListLongMap!15339)

(assert (=> b!1097769 (= e!626588 e!626599)))

(assert (=> b!1097769 (= c!108381 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097770 () Bool)

(declare-fun e!626587 () Bool)

(declare-fun e!626594 () Bool)

(assert (=> b!1097770 (= e!626587 e!626594)))

(declare-fun c!108376 () Bool)

(assert (=> b!1097770 (= c!108376 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097771 () Bool)

(assert (=> b!1097771 (= e!626594 e!626597)))

(declare-fun res!732745 () Bool)

(assert (=> b!1097771 (= res!732745 call!45832)))

(assert (=> b!1097771 (=> (not res!732745) (not e!626597))))

(declare-fun bm!45833 () Bool)

(assert (=> bm!45833 (= call!45833 (contains!6394 lt!490850 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45834 () Bool)

(assert (=> bm!45834 (= call!45837 call!45834)))

(declare-fun b!1097772 () Bool)

(declare-fun e!626596 () Bool)

(assert (=> b!1097772 (= e!626596 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130295 () Bool)

(assert (=> d!130295 e!626587))

(declare-fun res!732752 () Bool)

(assert (=> d!130295 (=> (not res!732752) (not e!626587))))

(assert (=> d!130295 (= res!732752 (or (bvsge #b00000000000000000000000000000000 (size!34758 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))))

(declare-fun lt!490840 () ListLongMap!15339)

(assert (=> d!130295 (= lt!490850 lt!490840)))

(declare-fun lt!490847 () Unit!36043)

(declare-fun e!626598 () Unit!36043)

(assert (=> d!130295 (= lt!490847 e!626598)))

(declare-fun c!108378 () Bool)

(declare-fun e!626589 () Bool)

(assert (=> d!130295 (= c!108378 e!626589)))

(declare-fun res!732748 () Bool)

(assert (=> d!130295 (=> (not res!732748) (not e!626589))))

(assert (=> d!130295 (= res!732748 (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(assert (=> d!130295 (= lt!490840 e!626588)))

(assert (=> d!130295 (= c!108377 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130295 (validMask!0 mask!1414)))

(assert (=> d!130295 (= (getCurrentListMap!4384 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490850)))

(declare-fun b!1097773 () Bool)

(assert (=> b!1097773 (= e!626589 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45835 () Bool)

(declare-fun call!45835 () ListLongMap!15339)

(assert (=> bm!45835 (= call!45835 call!45836)))

(declare-fun b!1097774 () Bool)

(declare-fun e!626593 () Bool)

(declare-fun e!626595 () Bool)

(assert (=> b!1097774 (= e!626593 e!626595)))

(declare-fun res!732751 () Bool)

(assert (=> b!1097774 (=> (not res!732751) (not e!626595))))

(assert (=> b!1097774 (= res!732751 (contains!6394 lt!490850 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1097774 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(declare-fun b!1097775 () Bool)

(declare-fun Unit!36047 () Unit!36043)

(assert (=> b!1097775 (= e!626598 Unit!36047)))

(declare-fun b!1097776 () Bool)

(declare-fun get!17625 (ValueCell!12852 V!41291) V!41291)

(assert (=> b!1097776 (= e!626595 (= (apply!979 lt!490850 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)) (get!17625 (select (arr!34222 _values!874) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1097776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34759 _values!874)))))

(assert (=> b!1097776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(declare-fun b!1097777 () Bool)

(assert (=> b!1097777 (= e!626591 (= (apply!979 lt!490850 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1097778 () Bool)

(declare-fun lt!490848 () Unit!36043)

(assert (=> b!1097778 (= e!626598 lt!490848)))

(declare-fun lt!490841 () ListLongMap!15339)

(assert (=> b!1097778 (= lt!490841 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490842 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490842 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490839 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490839 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490838 () Unit!36043)

(declare-fun addStillContains!661 (ListLongMap!15339 (_ BitVec 64) V!41291 (_ BitVec 64)) Unit!36043)

(assert (=> b!1097778 (= lt!490838 (addStillContains!661 lt!490841 lt!490842 zeroValue!831 lt!490839))))

(assert (=> b!1097778 (contains!6394 (+!3320 lt!490841 (tuple2!17359 lt!490842 zeroValue!831)) lt!490839)))

(declare-fun lt!490852 () Unit!36043)

(assert (=> b!1097778 (= lt!490852 lt!490838)))

(declare-fun lt!490849 () ListLongMap!15339)

(assert (=> b!1097778 (= lt!490849 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490835 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490835 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490855 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490855 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490856 () Unit!36043)

(declare-fun addApplyDifferent!513 (ListLongMap!15339 (_ BitVec 64) V!41291 (_ BitVec 64)) Unit!36043)

(assert (=> b!1097778 (= lt!490856 (addApplyDifferent!513 lt!490849 lt!490835 minValue!831 lt!490855))))

(assert (=> b!1097778 (= (apply!979 (+!3320 lt!490849 (tuple2!17359 lt!490835 minValue!831)) lt!490855) (apply!979 lt!490849 lt!490855))))

(declare-fun lt!490846 () Unit!36043)

(assert (=> b!1097778 (= lt!490846 lt!490856)))

(declare-fun lt!490854 () ListLongMap!15339)

(assert (=> b!1097778 (= lt!490854 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490843 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490843 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490837 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490837 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490836 () Unit!36043)

(assert (=> b!1097778 (= lt!490836 (addApplyDifferent!513 lt!490854 lt!490843 zeroValue!831 lt!490837))))

(assert (=> b!1097778 (= (apply!979 (+!3320 lt!490854 (tuple2!17359 lt!490843 zeroValue!831)) lt!490837) (apply!979 lt!490854 lt!490837))))

(declare-fun lt!490845 () Unit!36043)

(assert (=> b!1097778 (= lt!490845 lt!490836)))

(declare-fun lt!490844 () ListLongMap!15339)

(assert (=> b!1097778 (= lt!490844 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490851 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490851 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490853 () (_ BitVec 64))

(assert (=> b!1097778 (= lt!490853 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1097778 (= lt!490848 (addApplyDifferent!513 lt!490844 lt!490851 minValue!831 lt!490853))))

(assert (=> b!1097778 (= (apply!979 (+!3320 lt!490844 (tuple2!17359 lt!490851 minValue!831)) lt!490853) (apply!979 lt!490844 lt!490853))))

(declare-fun b!1097779 () Bool)

(declare-fun e!626590 () ListLongMap!15339)

(assert (=> b!1097779 (= e!626590 call!45835)))

(declare-fun b!1097780 () Bool)

(assert (=> b!1097780 (= e!626588 (+!3320 call!45836 (tuple2!17359 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1097781 () Bool)

(assert (=> b!1097781 (= e!626594 (not call!45832))))

(declare-fun b!1097782 () Bool)

(assert (=> b!1097782 (= e!626590 call!45837)))

(declare-fun b!1097783 () Bool)

(declare-fun res!732746 () Bool)

(assert (=> b!1097783 (=> (not res!732746) (not e!626587))))

(assert (=> b!1097783 (= res!732746 e!626593)))

(declare-fun res!732749 () Bool)

(assert (=> b!1097783 (=> res!732749 e!626593)))

(assert (=> b!1097783 (= res!732749 (not e!626596))))

(declare-fun res!732750 () Bool)

(assert (=> b!1097783 (=> (not res!732750) (not e!626596))))

(assert (=> b!1097783 (= res!732750 (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(declare-fun b!1097784 () Bool)

(declare-fun res!732747 () Bool)

(assert (=> b!1097784 (=> (not res!732747) (not e!626587))))

(assert (=> b!1097784 (= res!732747 e!626592)))

(declare-fun c!108379 () Bool)

(assert (=> b!1097784 (= c!108379 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1097785 () Bool)

(assert (=> b!1097785 (= e!626599 call!45835)))

(declare-fun b!1097786 () Bool)

(declare-fun c!108380 () Bool)

(assert (=> b!1097786 (= c!108380 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1097786 (= e!626599 e!626590)))

(assert (= (and d!130295 c!108377) b!1097780))

(assert (= (and d!130295 (not c!108377)) b!1097769))

(assert (= (and b!1097769 c!108381) b!1097785))

(assert (= (and b!1097769 (not c!108381)) b!1097786))

(assert (= (and b!1097786 c!108380) b!1097779))

(assert (= (and b!1097786 (not c!108380)) b!1097782))

(assert (= (or b!1097779 b!1097782) bm!45834))

(assert (= (or b!1097785 bm!45834) bm!45830))

(assert (= (or b!1097785 b!1097779) bm!45835))

(assert (= (or b!1097780 bm!45830) bm!45829))

(assert (= (or b!1097780 bm!45835) bm!45832))

(assert (= (and d!130295 res!732748) b!1097773))

(assert (= (and d!130295 c!108378) b!1097778))

(assert (= (and d!130295 (not c!108378)) b!1097775))

(assert (= (and d!130295 res!732752) b!1097783))

(assert (= (and b!1097783 res!732750) b!1097772))

(assert (= (and b!1097783 (not res!732749)) b!1097774))

(assert (= (and b!1097774 res!732751) b!1097776))

(assert (= (and b!1097783 res!732746) b!1097784))

(assert (= (and b!1097784 c!108379) b!1097767))

(assert (= (and b!1097784 (not c!108379)) b!1097766))

(assert (= (and b!1097767 res!732744) b!1097777))

(assert (= (or b!1097767 b!1097766) bm!45833))

(assert (= (and b!1097784 res!732747) b!1097770))

(assert (= (and b!1097770 c!108376) b!1097771))

(assert (= (and b!1097770 (not c!108376)) b!1097781))

(assert (= (and b!1097771 res!732745) b!1097768))

(assert (= (or b!1097771 b!1097781) bm!45831))

(declare-fun b_lambda!17797 () Bool)

(assert (=> (not b_lambda!17797) (not b!1097776)))

(assert (=> b!1097776 t!34161))

(declare-fun b_and!36849 () Bool)

(assert (= b_and!36843 (and (=> t!34161 result!16411) b_and!36849)))

(declare-fun m!1017401 () Bool)

(assert (=> b!1097776 m!1017401))

(assert (=> b!1097776 m!1017401))

(assert (=> b!1097776 m!1017303))

(declare-fun m!1017403 () Bool)

(assert (=> b!1097776 m!1017403))

(assert (=> b!1097776 m!1017397))

(assert (=> b!1097776 m!1017397))

(declare-fun m!1017405 () Bool)

(assert (=> b!1097776 m!1017405))

(assert (=> b!1097776 m!1017303))

(assert (=> b!1097772 m!1017397))

(assert (=> b!1097772 m!1017397))

(declare-fun m!1017407 () Bool)

(assert (=> b!1097772 m!1017407))

(declare-fun m!1017409 () Bool)

(assert (=> bm!45833 m!1017409))

(declare-fun m!1017411 () Bool)

(assert (=> b!1097768 m!1017411))

(assert (=> bm!45829 m!1017301))

(assert (=> b!1097773 m!1017397))

(assert (=> b!1097773 m!1017397))

(assert (=> b!1097773 m!1017407))

(declare-fun m!1017413 () Bool)

(assert (=> b!1097780 m!1017413))

(assert (=> d!130295 m!1017317))

(declare-fun m!1017415 () Bool)

(assert (=> b!1097777 m!1017415))

(declare-fun m!1017417 () Bool)

(assert (=> bm!45831 m!1017417))

(declare-fun m!1017419 () Bool)

(assert (=> b!1097778 m!1017419))

(declare-fun m!1017421 () Bool)

(assert (=> b!1097778 m!1017421))

(declare-fun m!1017423 () Bool)

(assert (=> b!1097778 m!1017423))

(declare-fun m!1017425 () Bool)

(assert (=> b!1097778 m!1017425))

(declare-fun m!1017427 () Bool)

(assert (=> b!1097778 m!1017427))

(assert (=> b!1097778 m!1017397))

(declare-fun m!1017429 () Bool)

(assert (=> b!1097778 m!1017429))

(assert (=> b!1097778 m!1017301))

(declare-fun m!1017431 () Bool)

(assert (=> b!1097778 m!1017431))

(declare-fun m!1017433 () Bool)

(assert (=> b!1097778 m!1017433))

(declare-fun m!1017435 () Bool)

(assert (=> b!1097778 m!1017435))

(declare-fun m!1017437 () Bool)

(assert (=> b!1097778 m!1017437))

(declare-fun m!1017439 () Bool)

(assert (=> b!1097778 m!1017439))

(declare-fun m!1017441 () Bool)

(assert (=> b!1097778 m!1017441))

(assert (=> b!1097778 m!1017441))

(declare-fun m!1017443 () Bool)

(assert (=> b!1097778 m!1017443))

(declare-fun m!1017445 () Bool)

(assert (=> b!1097778 m!1017445))

(assert (=> b!1097778 m!1017431))

(assert (=> b!1097778 m!1017437))

(assert (=> b!1097778 m!1017429))

(declare-fun m!1017447 () Bool)

(assert (=> b!1097778 m!1017447))

(declare-fun m!1017449 () Bool)

(assert (=> bm!45832 m!1017449))

(assert (=> b!1097774 m!1017397))

(assert (=> b!1097774 m!1017397))

(declare-fun m!1017451 () Bool)

(assert (=> b!1097774 m!1017451))

(assert (=> b!1097642 d!130295))

(declare-fun b!1097787 () Bool)

(declare-fun e!626605 () Bool)

(declare-fun call!45840 () Bool)

(assert (=> b!1097787 (= e!626605 (not call!45840))))

(declare-fun call!45845 () ListLongMap!15339)

(declare-fun bm!45836 () Bool)

(assert (=> bm!45836 (= call!45845 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun bm!45837 () Bool)

(declare-fun call!45841 () ListLongMap!15339)

(assert (=> bm!45837 (= call!45841 call!45845)))

(declare-fun b!1097788 () Bool)

(declare-fun e!626604 () Bool)

(assert (=> b!1097788 (= e!626605 e!626604)))

(declare-fun res!732753 () Bool)

(assert (=> b!1097788 (= res!732753 call!45840)))

(assert (=> b!1097788 (=> (not res!732753) (not e!626604))))

(declare-fun bm!45838 () Bool)

(declare-fun call!45839 () Bool)

(declare-fun lt!490872 () ListLongMap!15339)

(assert (=> bm!45838 (= call!45839 (contains!6394 lt!490872 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!108387 () Bool)

(declare-fun c!108383 () Bool)

(declare-fun call!45843 () ListLongMap!15339)

(declare-fun bm!45839 () Bool)

(declare-fun call!45844 () ListLongMap!15339)

(assert (=> bm!45839 (= call!45843 (+!3320 (ite c!108383 call!45845 (ite c!108387 call!45841 call!45844)) (ite (or c!108383 c!108387) (tuple2!17359 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17359 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1097789 () Bool)

(declare-fun e!626610 () Bool)

(assert (=> b!1097789 (= e!626610 (= (apply!979 lt!490872 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1097790 () Bool)

(declare-fun e!626601 () ListLongMap!15339)

(declare-fun e!626612 () ListLongMap!15339)

(assert (=> b!1097790 (= e!626601 e!626612)))

(assert (=> b!1097790 (= c!108387 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097791 () Bool)

(declare-fun e!626600 () Bool)

(declare-fun e!626607 () Bool)

(assert (=> b!1097791 (= e!626600 e!626607)))

(declare-fun c!108382 () Bool)

(assert (=> b!1097791 (= c!108382 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097792 () Bool)

(assert (=> b!1097792 (= e!626607 e!626610)))

(declare-fun res!732754 () Bool)

(assert (=> b!1097792 (= res!732754 call!45839)))

(assert (=> b!1097792 (=> (not res!732754) (not e!626610))))

(declare-fun bm!45840 () Bool)

(assert (=> bm!45840 (= call!45840 (contains!6394 lt!490872 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45841 () Bool)

(assert (=> bm!45841 (= call!45844 call!45841)))

(declare-fun b!1097793 () Bool)

(declare-fun e!626609 () Bool)

(assert (=> b!1097793 (= e!626609 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(declare-fun d!130297 () Bool)

(assert (=> d!130297 e!626600))

(declare-fun res!732761 () Bool)

(assert (=> d!130297 (=> (not res!732761) (not e!626600))))

(assert (=> d!130297 (= res!732761 (or (bvsge #b00000000000000000000000000000000 (size!34758 lt!490742)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))))

(declare-fun lt!490862 () ListLongMap!15339)

(assert (=> d!130297 (= lt!490872 lt!490862)))

(declare-fun lt!490869 () Unit!36043)

(declare-fun e!626611 () Unit!36043)

(assert (=> d!130297 (= lt!490869 e!626611)))

(declare-fun c!108384 () Bool)

(declare-fun e!626602 () Bool)

(assert (=> d!130297 (= c!108384 e!626602)))

(declare-fun res!732757 () Bool)

(assert (=> d!130297 (=> (not res!732757) (not e!626602))))

(assert (=> d!130297 (= res!732757 (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(assert (=> d!130297 (= lt!490862 e!626601)))

(assert (=> d!130297 (= c!108383 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130297 (validMask!0 mask!1414)))

(assert (=> d!130297 (= (getCurrentListMap!4384 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490872)))

(declare-fun b!1097794 () Bool)

(assert (=> b!1097794 (= e!626602 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(declare-fun bm!45842 () Bool)

(declare-fun call!45842 () ListLongMap!15339)

(assert (=> bm!45842 (= call!45842 call!45843)))

(declare-fun b!1097795 () Bool)

(declare-fun e!626606 () Bool)

(declare-fun e!626608 () Bool)

(assert (=> b!1097795 (= e!626606 e!626608)))

(declare-fun res!732760 () Bool)

(assert (=> b!1097795 (=> (not res!732760) (not e!626608))))

(assert (=> b!1097795 (= res!732760 (contains!6394 lt!490872 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(assert (=> b!1097795 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(declare-fun b!1097796 () Bool)

(declare-fun Unit!36048 () Unit!36043)

(assert (=> b!1097796 (= e!626611 Unit!36048)))

(declare-fun b!1097797 () Bool)

(assert (=> b!1097797 (= e!626608 (= (apply!979 lt!490872 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)) (get!17625 (select (arr!34222 lt!490744) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1097797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34759 lt!490744)))))

(assert (=> b!1097797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(declare-fun b!1097798 () Bool)

(assert (=> b!1097798 (= e!626604 (= (apply!979 lt!490872 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1097799 () Bool)

(declare-fun lt!490870 () Unit!36043)

(assert (=> b!1097799 (= e!626611 lt!490870)))

(declare-fun lt!490863 () ListLongMap!15339)

(assert (=> b!1097799 (= lt!490863 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490864 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490864 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490861 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490861 (select (arr!34221 lt!490742) #b00000000000000000000000000000000))))

(declare-fun lt!490860 () Unit!36043)

(assert (=> b!1097799 (= lt!490860 (addStillContains!661 lt!490863 lt!490864 zeroValue!831 lt!490861))))

(assert (=> b!1097799 (contains!6394 (+!3320 lt!490863 (tuple2!17359 lt!490864 zeroValue!831)) lt!490861)))

(declare-fun lt!490874 () Unit!36043)

(assert (=> b!1097799 (= lt!490874 lt!490860)))

(declare-fun lt!490871 () ListLongMap!15339)

(assert (=> b!1097799 (= lt!490871 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490857 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490857 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490877 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490877 (select (arr!34221 lt!490742) #b00000000000000000000000000000000))))

(declare-fun lt!490878 () Unit!36043)

(assert (=> b!1097799 (= lt!490878 (addApplyDifferent!513 lt!490871 lt!490857 minValue!831 lt!490877))))

(assert (=> b!1097799 (= (apply!979 (+!3320 lt!490871 (tuple2!17359 lt!490857 minValue!831)) lt!490877) (apply!979 lt!490871 lt!490877))))

(declare-fun lt!490868 () Unit!36043)

(assert (=> b!1097799 (= lt!490868 lt!490878)))

(declare-fun lt!490876 () ListLongMap!15339)

(assert (=> b!1097799 (= lt!490876 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490865 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490865 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490859 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490859 (select (arr!34221 lt!490742) #b00000000000000000000000000000000))))

(declare-fun lt!490858 () Unit!36043)

(assert (=> b!1097799 (= lt!490858 (addApplyDifferent!513 lt!490876 lt!490865 zeroValue!831 lt!490859))))

(assert (=> b!1097799 (= (apply!979 (+!3320 lt!490876 (tuple2!17359 lt!490865 zeroValue!831)) lt!490859) (apply!979 lt!490876 lt!490859))))

(declare-fun lt!490867 () Unit!36043)

(assert (=> b!1097799 (= lt!490867 lt!490858)))

(declare-fun lt!490866 () ListLongMap!15339)

(assert (=> b!1097799 (= lt!490866 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490873 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490873 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490875 () (_ BitVec 64))

(assert (=> b!1097799 (= lt!490875 (select (arr!34221 lt!490742) #b00000000000000000000000000000000))))

(assert (=> b!1097799 (= lt!490870 (addApplyDifferent!513 lt!490866 lt!490873 minValue!831 lt!490875))))

(assert (=> b!1097799 (= (apply!979 (+!3320 lt!490866 (tuple2!17359 lt!490873 minValue!831)) lt!490875) (apply!979 lt!490866 lt!490875))))

(declare-fun b!1097800 () Bool)

(declare-fun e!626603 () ListLongMap!15339)

(assert (=> b!1097800 (= e!626603 call!45842)))

(declare-fun b!1097801 () Bool)

(assert (=> b!1097801 (= e!626601 (+!3320 call!45843 (tuple2!17359 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1097802 () Bool)

(assert (=> b!1097802 (= e!626607 (not call!45839))))

(declare-fun b!1097803 () Bool)

(assert (=> b!1097803 (= e!626603 call!45844)))

(declare-fun b!1097804 () Bool)

(declare-fun res!732755 () Bool)

(assert (=> b!1097804 (=> (not res!732755) (not e!626600))))

(assert (=> b!1097804 (= res!732755 e!626606)))

(declare-fun res!732758 () Bool)

(assert (=> b!1097804 (=> res!732758 e!626606)))

(assert (=> b!1097804 (= res!732758 (not e!626609))))

(declare-fun res!732759 () Bool)

(assert (=> b!1097804 (=> (not res!732759) (not e!626609))))

(assert (=> b!1097804 (= res!732759 (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(declare-fun b!1097805 () Bool)

(declare-fun res!732756 () Bool)

(assert (=> b!1097805 (=> (not res!732756) (not e!626600))))

(assert (=> b!1097805 (= res!732756 e!626605)))

(declare-fun c!108385 () Bool)

(assert (=> b!1097805 (= c!108385 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1097806 () Bool)

(assert (=> b!1097806 (= e!626612 call!45842)))

(declare-fun b!1097807 () Bool)

(declare-fun c!108386 () Bool)

(assert (=> b!1097807 (= c!108386 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1097807 (= e!626612 e!626603)))

(assert (= (and d!130297 c!108383) b!1097801))

(assert (= (and d!130297 (not c!108383)) b!1097790))

(assert (= (and b!1097790 c!108387) b!1097806))

(assert (= (and b!1097790 (not c!108387)) b!1097807))

(assert (= (and b!1097807 c!108386) b!1097800))

(assert (= (and b!1097807 (not c!108386)) b!1097803))

(assert (= (or b!1097800 b!1097803) bm!45841))

(assert (= (or b!1097806 bm!45841) bm!45837))

(assert (= (or b!1097806 b!1097800) bm!45842))

(assert (= (or b!1097801 bm!45837) bm!45836))

(assert (= (or b!1097801 bm!45842) bm!45839))

(assert (= (and d!130297 res!732757) b!1097794))

(assert (= (and d!130297 c!108384) b!1097799))

(assert (= (and d!130297 (not c!108384)) b!1097796))

(assert (= (and d!130297 res!732761) b!1097804))

(assert (= (and b!1097804 res!732759) b!1097793))

(assert (= (and b!1097804 (not res!732758)) b!1097795))

(assert (= (and b!1097795 res!732760) b!1097797))

(assert (= (and b!1097804 res!732755) b!1097805))

(assert (= (and b!1097805 c!108385) b!1097788))

(assert (= (and b!1097805 (not c!108385)) b!1097787))

(assert (= (and b!1097788 res!732753) b!1097798))

(assert (= (or b!1097788 b!1097787) bm!45840))

(assert (= (and b!1097805 res!732756) b!1097791))

(assert (= (and b!1097791 c!108382) b!1097792))

(assert (= (and b!1097791 (not c!108382)) b!1097802))

(assert (= (and b!1097792 res!732754) b!1097789))

(assert (= (or b!1097792 b!1097802) bm!45838))

(declare-fun b_lambda!17799 () Bool)

(assert (=> (not b_lambda!17799) (not b!1097797)))

(assert (=> b!1097797 t!34161))

(declare-fun b_and!36851 () Bool)

(assert (= b_and!36849 (and (=> t!34161 result!16411) b_and!36851)))

(declare-fun m!1017453 () Bool)

(assert (=> b!1097797 m!1017453))

(assert (=> b!1097797 m!1017453))

(assert (=> b!1097797 m!1017303))

(declare-fun m!1017455 () Bool)

(assert (=> b!1097797 m!1017455))

(assert (=> b!1097797 m!1017383))

(assert (=> b!1097797 m!1017383))

(declare-fun m!1017457 () Bool)

(assert (=> b!1097797 m!1017457))

(assert (=> b!1097797 m!1017303))

(assert (=> b!1097793 m!1017383))

(assert (=> b!1097793 m!1017383))

(assert (=> b!1097793 m!1017391))

(declare-fun m!1017459 () Bool)

(assert (=> bm!45840 m!1017459))

(declare-fun m!1017461 () Bool)

(assert (=> b!1097789 m!1017461))

(assert (=> bm!45836 m!1017305))

(assert (=> b!1097794 m!1017383))

(assert (=> b!1097794 m!1017383))

(assert (=> b!1097794 m!1017391))

(declare-fun m!1017463 () Bool)

(assert (=> b!1097801 m!1017463))

(assert (=> d!130297 m!1017317))

(declare-fun m!1017465 () Bool)

(assert (=> b!1097798 m!1017465))

(declare-fun m!1017467 () Bool)

(assert (=> bm!45838 m!1017467))

(declare-fun m!1017469 () Bool)

(assert (=> b!1097799 m!1017469))

(declare-fun m!1017471 () Bool)

(assert (=> b!1097799 m!1017471))

(declare-fun m!1017473 () Bool)

(assert (=> b!1097799 m!1017473))

(declare-fun m!1017475 () Bool)

(assert (=> b!1097799 m!1017475))

(declare-fun m!1017477 () Bool)

(assert (=> b!1097799 m!1017477))

(assert (=> b!1097799 m!1017383))

(declare-fun m!1017479 () Bool)

(assert (=> b!1097799 m!1017479))

(assert (=> b!1097799 m!1017305))

(declare-fun m!1017481 () Bool)

(assert (=> b!1097799 m!1017481))

(declare-fun m!1017483 () Bool)

(assert (=> b!1097799 m!1017483))

(declare-fun m!1017485 () Bool)

(assert (=> b!1097799 m!1017485))

(declare-fun m!1017487 () Bool)

(assert (=> b!1097799 m!1017487))

(declare-fun m!1017489 () Bool)

(assert (=> b!1097799 m!1017489))

(declare-fun m!1017491 () Bool)

(assert (=> b!1097799 m!1017491))

(assert (=> b!1097799 m!1017491))

(declare-fun m!1017493 () Bool)

(assert (=> b!1097799 m!1017493))

(declare-fun m!1017495 () Bool)

(assert (=> b!1097799 m!1017495))

(assert (=> b!1097799 m!1017481))

(assert (=> b!1097799 m!1017487))

(assert (=> b!1097799 m!1017479))

(declare-fun m!1017497 () Bool)

(assert (=> b!1097799 m!1017497))

(declare-fun m!1017499 () Bool)

(assert (=> bm!45839 m!1017499))

(assert (=> b!1097795 m!1017383))

(assert (=> b!1097795 m!1017383))

(declare-fun m!1017501 () Bool)

(assert (=> b!1097795 m!1017501))

(assert (=> b!1097642 d!130297))

(declare-fun d!130299 () Bool)

(declare-fun lt!490881 () ListLongMap!15339)

(assert (=> d!130299 (not (contains!6394 lt!490881 k0!904))))

(declare-fun removeStrictlySorted!79 (List!24037 (_ BitVec 64)) List!24037)

(assert (=> d!130299 (= lt!490881 (ListLongMap!15340 (removeStrictlySorted!79 (toList!7685 lt!490748) k0!904)))))

(assert (=> d!130299 (= (-!931 lt!490748 k0!904) lt!490881)))

(declare-fun bs!32255 () Bool)

(assert (= bs!32255 d!130299))

(declare-fun m!1017503 () Bool)

(assert (=> bs!32255 m!1017503))

(declare-fun m!1017505 () Bool)

(assert (=> bs!32255 m!1017505))

(assert (=> b!1097642 d!130299))

(declare-fun b!1097832 () Bool)

(declare-fun e!626628 () Bool)

(declare-fun e!626630 () Bool)

(assert (=> b!1097832 (= e!626628 e!626630)))

(declare-fun c!108399 () Bool)

(declare-fun e!626631 () Bool)

(assert (=> b!1097832 (= c!108399 e!626631)))

(declare-fun res!732770 () Bool)

(assert (=> b!1097832 (=> (not res!732770) (not e!626631))))

(assert (=> b!1097832 (= res!732770 (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(declare-fun b!1097833 () Bool)

(declare-fun lt!490899 () ListLongMap!15339)

(declare-fun e!626633 () Bool)

(assert (=> b!1097833 (= e!626633 (= lt!490899 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1097834 () Bool)

(assert (=> b!1097834 (= e!626630 e!626633)))

(declare-fun c!108398 () Bool)

(assert (=> b!1097834 (= c!108398 (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(declare-fun b!1097835 () Bool)

(declare-fun lt!490896 () Unit!36043)

(declare-fun lt!490898 () Unit!36043)

(assert (=> b!1097835 (= lt!490896 lt!490898)))

(declare-fun lt!490901 () ListLongMap!15339)

(declare-fun lt!490900 () V!41291)

(declare-fun lt!490897 () (_ BitVec 64))

(declare-fun lt!490902 () (_ BitVec 64))

(assert (=> b!1097835 (not (contains!6394 (+!3320 lt!490901 (tuple2!17359 lt!490902 lt!490900)) lt!490897))))

(declare-fun addStillNotContains!274 (ListLongMap!15339 (_ BitVec 64) V!41291 (_ BitVec 64)) Unit!36043)

(assert (=> b!1097835 (= lt!490898 (addStillNotContains!274 lt!490901 lt!490902 lt!490900 lt!490897))))

(assert (=> b!1097835 (= lt!490897 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1097835 (= lt!490900 (get!17625 (select (arr!34222 _values!874) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1097835 (= lt!490902 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!45848 () ListLongMap!15339)

(assert (=> b!1097835 (= lt!490901 call!45848)))

(declare-fun e!626629 () ListLongMap!15339)

(assert (=> b!1097835 (= e!626629 (+!3320 call!45848 (tuple2!17359 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000) (get!17625 (select (arr!34222 _values!874) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1097836 () Bool)

(assert (=> b!1097836 (= e!626631 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1097836 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1097837 () Bool)

(declare-fun e!626627 () ListLongMap!15339)

(assert (=> b!1097837 (= e!626627 (ListLongMap!15340 Nil!24034))))

(declare-fun b!1097838 () Bool)

(assert (=> b!1097838 (= e!626627 e!626629)))

(declare-fun c!108397 () Bool)

(assert (=> b!1097838 (= c!108397 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097839 () Bool)

(declare-fun e!626632 () Bool)

(assert (=> b!1097839 (= e!626630 e!626632)))

(assert (=> b!1097839 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(declare-fun res!732771 () Bool)

(assert (=> b!1097839 (= res!732771 (contains!6394 lt!490899 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1097839 (=> (not res!732771) (not e!626632))))

(declare-fun b!1097840 () Bool)

(declare-fun isEmpty!965 (ListLongMap!15339) Bool)

(assert (=> b!1097840 (= e!626633 (isEmpty!965 lt!490899))))

(declare-fun d!130301 () Bool)

(assert (=> d!130301 e!626628))

(declare-fun res!732772 () Bool)

(assert (=> d!130301 (=> (not res!732772) (not e!626628))))

(assert (=> d!130301 (= res!732772 (not (contains!6394 lt!490899 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130301 (= lt!490899 e!626627)))

(declare-fun c!108396 () Bool)

(assert (=> d!130301 (= c!108396 (bvsge #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(assert (=> d!130301 (validMask!0 mask!1414)))

(assert (=> d!130301 (= (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490899)))

(declare-fun b!1097841 () Bool)

(assert (=> b!1097841 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(assert (=> b!1097841 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34759 _values!874)))))

(assert (=> b!1097841 (= e!626632 (= (apply!979 lt!490899 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)) (get!17625 (select (arr!34222 _values!874) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1097842 () Bool)

(declare-fun res!732773 () Bool)

(assert (=> b!1097842 (=> (not res!732773) (not e!626628))))

(assert (=> b!1097842 (= res!732773 (not (contains!6394 lt!490899 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1097843 () Bool)

(assert (=> b!1097843 (= e!626629 call!45848)))

(declare-fun bm!45845 () Bool)

(assert (=> bm!45845 (= call!45848 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(assert (= (and d!130301 c!108396) b!1097837))

(assert (= (and d!130301 (not c!108396)) b!1097838))

(assert (= (and b!1097838 c!108397) b!1097835))

(assert (= (and b!1097838 (not c!108397)) b!1097843))

(assert (= (or b!1097835 b!1097843) bm!45845))

(assert (= (and d!130301 res!732772) b!1097842))

(assert (= (and b!1097842 res!732773) b!1097832))

(assert (= (and b!1097832 res!732770) b!1097836))

(assert (= (and b!1097832 c!108399) b!1097839))

(assert (= (and b!1097832 (not c!108399)) b!1097834))

(assert (= (and b!1097839 res!732771) b!1097841))

(assert (= (and b!1097834 c!108398) b!1097833))

(assert (= (and b!1097834 (not c!108398)) b!1097840))

(declare-fun b_lambda!17801 () Bool)

(assert (=> (not b_lambda!17801) (not b!1097835)))

(assert (=> b!1097835 t!34161))

(declare-fun b_and!36853 () Bool)

(assert (= b_and!36851 (and (=> t!34161 result!16411) b_and!36853)))

(declare-fun b_lambda!17803 () Bool)

(assert (=> (not b_lambda!17803) (not b!1097841)))

(assert (=> b!1097841 t!34161))

(declare-fun b_and!36855 () Bool)

(assert (= b_and!36853 (and (=> t!34161 result!16411) b_and!36855)))

(assert (=> b!1097838 m!1017397))

(assert (=> b!1097838 m!1017397))

(assert (=> b!1097838 m!1017407))

(declare-fun m!1017507 () Bool)

(assert (=> b!1097835 m!1017507))

(assert (=> b!1097835 m!1017397))

(assert (=> b!1097835 m!1017401))

(declare-fun m!1017509 () Bool)

(assert (=> b!1097835 m!1017509))

(declare-fun m!1017511 () Bool)

(assert (=> b!1097835 m!1017511))

(declare-fun m!1017513 () Bool)

(assert (=> b!1097835 m!1017513))

(assert (=> b!1097835 m!1017401))

(assert (=> b!1097835 m!1017303))

(assert (=> b!1097835 m!1017403))

(assert (=> b!1097835 m!1017511))

(assert (=> b!1097835 m!1017303))

(assert (=> b!1097841 m!1017397))

(assert (=> b!1097841 m!1017401))

(assert (=> b!1097841 m!1017401))

(assert (=> b!1097841 m!1017303))

(assert (=> b!1097841 m!1017403))

(assert (=> b!1097841 m!1017397))

(declare-fun m!1017515 () Bool)

(assert (=> b!1097841 m!1017515))

(assert (=> b!1097841 m!1017303))

(declare-fun m!1017517 () Bool)

(assert (=> b!1097842 m!1017517))

(declare-fun m!1017519 () Bool)

(assert (=> b!1097840 m!1017519))

(assert (=> b!1097839 m!1017397))

(assert (=> b!1097839 m!1017397))

(declare-fun m!1017521 () Bool)

(assert (=> b!1097839 m!1017521))

(declare-fun m!1017523 () Bool)

(assert (=> d!130301 m!1017523))

(assert (=> d!130301 m!1017317))

(declare-fun m!1017525 () Bool)

(assert (=> b!1097833 m!1017525))

(assert (=> bm!45845 m!1017525))

(assert (=> b!1097836 m!1017397))

(assert (=> b!1097836 m!1017397))

(assert (=> b!1097836 m!1017407))

(assert (=> b!1097642 d!130301))

(declare-fun d!130303 () Bool)

(assert (=> d!130303 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490905 () Unit!36043)

(declare-fun choose!13 (array!71108 (_ BitVec 64) (_ BitVec 32)) Unit!36043)

(assert (=> d!130303 (= lt!490905 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130303 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130303 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!490905)))

(declare-fun bs!32256 () Bool)

(assert (= bs!32256 d!130303))

(assert (=> bs!32256 m!1017297))

(declare-fun m!1017527 () Bool)

(assert (=> bs!32256 m!1017527))

(assert (=> b!1097642 d!130303))

(declare-fun b!1097850 () Bool)

(declare-fun e!626638 () Bool)

(declare-fun e!626639 () Bool)

(assert (=> b!1097850 (= e!626638 e!626639)))

(declare-fun c!108402 () Bool)

(assert (=> b!1097850 (= c!108402 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun d!130305 () Bool)

(assert (=> d!130305 e!626638))

(declare-fun res!732776 () Bool)

(assert (=> d!130305 (=> (not res!732776) (not e!626638))))

(assert (=> d!130305 (= res!732776 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34758 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34758 _keys!1070))))))))

(declare-fun lt!490908 () Unit!36043)

(declare-fun choose!1769 (array!71108 array!71110 (_ BitVec 32) (_ BitVec 32) V!41291 V!41291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36043)

(assert (=> d!130305 (= lt!490908 (choose!1769 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(assert (=> d!130305 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!196 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!490908)))

(declare-fun call!45853 () ListLongMap!15339)

(declare-fun call!45854 () ListLongMap!15339)

(declare-fun b!1097851 () Bool)

(assert (=> b!1097851 (= e!626639 (= call!45854 (-!931 call!45853 k0!904)))))

(assert (=> b!1097851 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34759 _values!874)))))

(declare-fun bm!45850 () Bool)

(assert (=> bm!45850 (= call!45853 (getCurrentListMapNoExtraKeys!4171 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1097852 () Bool)

(assert (=> b!1097852 (= e!626639 (= call!45854 call!45853))))

(assert (=> b!1097852 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34759 _values!874)))))

(declare-fun bm!45851 () Bool)

(assert (=> bm!45851 (= call!45854 (getCurrentListMapNoExtraKeys!4171 (array!71109 (store (arr!34221 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34758 _keys!1070)) (array!71111 (store (arr!34222 _values!874) i!650 (ValueCellFull!12852 (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34759 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130305 res!732776) b!1097850))

(assert (= (and b!1097850 c!108402) b!1097851))

(assert (= (and b!1097850 (not c!108402)) b!1097852))

(assert (= (or b!1097851 b!1097852) bm!45850))

(assert (= (or b!1097851 b!1097852) bm!45851))

(declare-fun b_lambda!17805 () Bool)

(assert (=> (not b_lambda!17805) (not bm!45851)))

(assert (=> bm!45851 t!34161))

(declare-fun b_and!36857 () Bool)

(assert (= b_and!36855 (and (=> t!34161 result!16411) b_and!36857)))

(declare-fun m!1017529 () Bool)

(assert (=> d!130305 m!1017529))

(declare-fun m!1017531 () Bool)

(assert (=> b!1097851 m!1017531))

(assert (=> bm!45850 m!1017301))

(assert (=> bm!45851 m!1017313))

(assert (=> bm!45851 m!1017303))

(assert (=> bm!45851 m!1017295))

(declare-fun m!1017533 () Bool)

(assert (=> bm!45851 m!1017533))

(assert (=> b!1097642 d!130305))

(declare-fun b!1097853 () Bool)

(declare-fun e!626641 () Bool)

(declare-fun e!626643 () Bool)

(assert (=> b!1097853 (= e!626641 e!626643)))

(declare-fun c!108406 () Bool)

(declare-fun e!626644 () Bool)

(assert (=> b!1097853 (= c!108406 e!626644)))

(declare-fun res!732777 () Bool)

(assert (=> b!1097853 (=> (not res!732777) (not e!626644))))

(assert (=> b!1097853 (= res!732777 (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(declare-fun lt!490912 () ListLongMap!15339)

(declare-fun b!1097854 () Bool)

(declare-fun e!626646 () Bool)

(assert (=> b!1097854 (= e!626646 (= lt!490912 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1097855 () Bool)

(assert (=> b!1097855 (= e!626643 e!626646)))

(declare-fun c!108405 () Bool)

(assert (=> b!1097855 (= c!108405 (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(declare-fun b!1097856 () Bool)

(declare-fun lt!490909 () Unit!36043)

(declare-fun lt!490911 () Unit!36043)

(assert (=> b!1097856 (= lt!490909 lt!490911)))

(declare-fun lt!490910 () (_ BitVec 64))

(declare-fun lt!490914 () ListLongMap!15339)

(declare-fun lt!490913 () V!41291)

(declare-fun lt!490915 () (_ BitVec 64))

(assert (=> b!1097856 (not (contains!6394 (+!3320 lt!490914 (tuple2!17359 lt!490915 lt!490913)) lt!490910))))

(assert (=> b!1097856 (= lt!490911 (addStillNotContains!274 lt!490914 lt!490915 lt!490913 lt!490910))))

(assert (=> b!1097856 (= lt!490910 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1097856 (= lt!490913 (get!17625 (select (arr!34222 lt!490744) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1097856 (= lt!490915 (select (arr!34221 lt!490742) #b00000000000000000000000000000000))))

(declare-fun call!45855 () ListLongMap!15339)

(assert (=> b!1097856 (= lt!490914 call!45855)))

(declare-fun e!626642 () ListLongMap!15339)

(assert (=> b!1097856 (= e!626642 (+!3320 call!45855 (tuple2!17359 (select (arr!34221 lt!490742) #b00000000000000000000000000000000) (get!17625 (select (arr!34222 lt!490744) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1097857 () Bool)

(assert (=> b!1097857 (= e!626644 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(assert (=> b!1097857 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1097858 () Bool)

(declare-fun e!626640 () ListLongMap!15339)

(assert (=> b!1097858 (= e!626640 (ListLongMap!15340 Nil!24034))))

(declare-fun b!1097859 () Bool)

(assert (=> b!1097859 (= e!626640 e!626642)))

(declare-fun c!108404 () Bool)

(assert (=> b!1097859 (= c!108404 (validKeyInArray!0 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(declare-fun b!1097860 () Bool)

(declare-fun e!626645 () Bool)

(assert (=> b!1097860 (= e!626643 e!626645)))

(assert (=> b!1097860 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(declare-fun res!732778 () Bool)

(assert (=> b!1097860 (= res!732778 (contains!6394 lt!490912 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)))))

(assert (=> b!1097860 (=> (not res!732778) (not e!626645))))

(declare-fun b!1097861 () Bool)

(assert (=> b!1097861 (= e!626646 (isEmpty!965 lt!490912))))

(declare-fun d!130307 () Bool)

(assert (=> d!130307 e!626641))

(declare-fun res!732779 () Bool)

(assert (=> d!130307 (=> (not res!732779) (not e!626641))))

(assert (=> d!130307 (= res!732779 (not (contains!6394 lt!490912 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130307 (= lt!490912 e!626640)))

(declare-fun c!108403 () Bool)

(assert (=> d!130307 (= c!108403 (bvsge #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(assert (=> d!130307 (validMask!0 mask!1414)))

(assert (=> d!130307 (= (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490912)))

(declare-fun b!1097862 () Bool)

(assert (=> b!1097862 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34758 lt!490742)))))

(assert (=> b!1097862 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34759 lt!490744)))))

(assert (=> b!1097862 (= e!626645 (= (apply!979 lt!490912 (select (arr!34221 lt!490742) #b00000000000000000000000000000000)) (get!17625 (select (arr!34222 lt!490744) #b00000000000000000000000000000000) (dynLambda!2302 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1097863 () Bool)

(declare-fun res!732780 () Bool)

(assert (=> b!1097863 (=> (not res!732780) (not e!626641))))

(assert (=> b!1097863 (= res!732780 (not (contains!6394 lt!490912 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1097864 () Bool)

(assert (=> b!1097864 (= e!626642 call!45855)))

(declare-fun bm!45852 () Bool)

(assert (=> bm!45852 (= call!45855 (getCurrentListMapNoExtraKeys!4171 lt!490742 lt!490744 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(assert (= (and d!130307 c!108403) b!1097858))

(assert (= (and d!130307 (not c!108403)) b!1097859))

(assert (= (and b!1097859 c!108404) b!1097856))

(assert (= (and b!1097859 (not c!108404)) b!1097864))

(assert (= (or b!1097856 b!1097864) bm!45852))

(assert (= (and d!130307 res!732779) b!1097863))

(assert (= (and b!1097863 res!732780) b!1097853))

(assert (= (and b!1097853 res!732777) b!1097857))

(assert (= (and b!1097853 c!108406) b!1097860))

(assert (= (and b!1097853 (not c!108406)) b!1097855))

(assert (= (and b!1097860 res!732778) b!1097862))

(assert (= (and b!1097855 c!108405) b!1097854))

(assert (= (and b!1097855 (not c!108405)) b!1097861))

(declare-fun b_lambda!17807 () Bool)

(assert (=> (not b_lambda!17807) (not b!1097856)))

(assert (=> b!1097856 t!34161))

(declare-fun b_and!36859 () Bool)

(assert (= b_and!36857 (and (=> t!34161 result!16411) b_and!36859)))

(declare-fun b_lambda!17809 () Bool)

(assert (=> (not b_lambda!17809) (not b!1097862)))

(assert (=> b!1097862 t!34161))

(declare-fun b_and!36861 () Bool)

(assert (= b_and!36859 (and (=> t!34161 result!16411) b_and!36861)))

(assert (=> b!1097859 m!1017383))

(assert (=> b!1097859 m!1017383))

(assert (=> b!1097859 m!1017391))

(declare-fun m!1017535 () Bool)

(assert (=> b!1097856 m!1017535))

(assert (=> b!1097856 m!1017383))

(assert (=> b!1097856 m!1017453))

(declare-fun m!1017537 () Bool)

(assert (=> b!1097856 m!1017537))

(declare-fun m!1017539 () Bool)

(assert (=> b!1097856 m!1017539))

(declare-fun m!1017541 () Bool)

(assert (=> b!1097856 m!1017541))

(assert (=> b!1097856 m!1017453))

(assert (=> b!1097856 m!1017303))

(assert (=> b!1097856 m!1017455))

(assert (=> b!1097856 m!1017539))

(assert (=> b!1097856 m!1017303))

(assert (=> b!1097862 m!1017383))

(assert (=> b!1097862 m!1017453))

(assert (=> b!1097862 m!1017453))

(assert (=> b!1097862 m!1017303))

(assert (=> b!1097862 m!1017455))

(assert (=> b!1097862 m!1017383))

(declare-fun m!1017543 () Bool)

(assert (=> b!1097862 m!1017543))

(assert (=> b!1097862 m!1017303))

(declare-fun m!1017545 () Bool)

(assert (=> b!1097863 m!1017545))

(declare-fun m!1017547 () Bool)

(assert (=> b!1097861 m!1017547))

(assert (=> b!1097860 m!1017383))

(assert (=> b!1097860 m!1017383))

(declare-fun m!1017549 () Bool)

(assert (=> b!1097860 m!1017549))

(declare-fun m!1017551 () Bool)

(assert (=> d!130307 m!1017551))

(assert (=> d!130307 m!1017317))

(declare-fun m!1017553 () Bool)

(assert (=> b!1097854 m!1017553))

(assert (=> bm!45852 m!1017553))

(assert (=> b!1097857 m!1017383))

(assert (=> b!1097857 m!1017383))

(assert (=> b!1097857 m!1017391))

(assert (=> b!1097642 d!130307))

(declare-fun bm!45853 () Bool)

(declare-fun call!45856 () Bool)

(assert (=> bm!45853 (= call!45856 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!130309 () Bool)

(declare-fun res!732782 () Bool)

(declare-fun e!626648 () Bool)

(assert (=> d!130309 (=> res!732782 e!626648)))

(assert (=> d!130309 (= res!732782 (bvsge #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(assert (=> d!130309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!626648)))

(declare-fun b!1097865 () Bool)

(declare-fun e!626647 () Bool)

(declare-fun e!626649 () Bool)

(assert (=> b!1097865 (= e!626647 e!626649)))

(declare-fun lt!490917 () (_ BitVec 64))

(assert (=> b!1097865 (= lt!490917 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490916 () Unit!36043)

(assert (=> b!1097865 (= lt!490916 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!490917 #b00000000000000000000000000000000))))

(assert (=> b!1097865 (arrayContainsKey!0 _keys!1070 lt!490917 #b00000000000000000000000000000000)))

(declare-fun lt!490918 () Unit!36043)

(assert (=> b!1097865 (= lt!490918 lt!490916)))

(declare-fun res!732781 () Bool)

(assert (=> b!1097865 (= res!732781 (= (seekEntryOrOpen!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9904 #b00000000000000000000000000000000)))))

(assert (=> b!1097865 (=> (not res!732781) (not e!626649))))

(declare-fun b!1097866 () Bool)

(assert (=> b!1097866 (= e!626647 call!45856)))

(declare-fun b!1097867 () Bool)

(assert (=> b!1097867 (= e!626649 call!45856)))

(declare-fun b!1097868 () Bool)

(assert (=> b!1097868 (= e!626648 e!626647)))

(declare-fun c!108407 () Bool)

(assert (=> b!1097868 (= c!108407 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130309 (not res!732782)) b!1097868))

(assert (= (and b!1097868 c!108407) b!1097865))

(assert (= (and b!1097868 (not c!108407)) b!1097866))

(assert (= (and b!1097865 res!732781) b!1097867))

(assert (= (or b!1097867 b!1097866) bm!45853))

(declare-fun m!1017555 () Bool)

(assert (=> bm!45853 m!1017555))

(assert (=> b!1097865 m!1017397))

(declare-fun m!1017557 () Bool)

(assert (=> b!1097865 m!1017557))

(declare-fun m!1017559 () Bool)

(assert (=> b!1097865 m!1017559))

(assert (=> b!1097865 m!1017397))

(declare-fun m!1017561 () Bool)

(assert (=> b!1097865 m!1017561))

(assert (=> b!1097868 m!1017397))

(assert (=> b!1097868 m!1017397))

(assert (=> b!1097868 m!1017407))

(assert (=> b!1097636 d!130309))

(declare-fun d!130311 () Bool)

(declare-fun e!626652 () Bool)

(assert (=> d!130311 e!626652))

(declare-fun res!732787 () Bool)

(assert (=> d!130311 (=> (not res!732787) (not e!626652))))

(declare-fun lt!490927 () ListLongMap!15339)

(assert (=> d!130311 (= res!732787 (contains!6394 lt!490927 (_1!8689 lt!490738)))))

(declare-fun lt!490929 () List!24037)

(assert (=> d!130311 (= lt!490927 (ListLongMap!15340 lt!490929))))

(declare-fun lt!490930 () Unit!36043)

(declare-fun lt!490928 () Unit!36043)

(assert (=> d!130311 (= lt!490930 lt!490928)))

(declare-datatypes ((Option!673 0))(
  ( (Some!672 (v!16243 V!41291)) (None!671) )
))
(declare-fun getValueByKey!622 (List!24037 (_ BitVec 64)) Option!673)

(assert (=> d!130311 (= (getValueByKey!622 lt!490929 (_1!8689 lt!490738)) (Some!672 (_2!8689 lt!490738)))))

(declare-fun lemmaContainsTupThenGetReturnValue!297 (List!24037 (_ BitVec 64) V!41291) Unit!36043)

(assert (=> d!130311 (= lt!490928 (lemmaContainsTupThenGetReturnValue!297 lt!490929 (_1!8689 lt!490738) (_2!8689 lt!490738)))))

(declare-fun insertStrictlySorted!389 (List!24037 (_ BitVec 64) V!41291) List!24037)

(assert (=> d!130311 (= lt!490929 (insertStrictlySorted!389 (toList!7685 (+!3320 lt!490748 lt!490739)) (_1!8689 lt!490738) (_2!8689 lt!490738)))))

(assert (=> d!130311 (= (+!3320 (+!3320 lt!490748 lt!490739) lt!490738) lt!490927)))

(declare-fun b!1097873 () Bool)

(declare-fun res!732788 () Bool)

(assert (=> b!1097873 (=> (not res!732788) (not e!626652))))

(assert (=> b!1097873 (= res!732788 (= (getValueByKey!622 (toList!7685 lt!490927) (_1!8689 lt!490738)) (Some!672 (_2!8689 lt!490738))))))

(declare-fun b!1097874 () Bool)

(declare-fun contains!6395 (List!24037 tuple2!17358) Bool)

(assert (=> b!1097874 (= e!626652 (contains!6395 (toList!7685 lt!490927) lt!490738))))

(assert (= (and d!130311 res!732787) b!1097873))

(assert (= (and b!1097873 res!732788) b!1097874))

(declare-fun m!1017563 () Bool)

(assert (=> d!130311 m!1017563))

(declare-fun m!1017565 () Bool)

(assert (=> d!130311 m!1017565))

(declare-fun m!1017567 () Bool)

(assert (=> d!130311 m!1017567))

(declare-fun m!1017569 () Bool)

(assert (=> d!130311 m!1017569))

(declare-fun m!1017571 () Bool)

(assert (=> b!1097873 m!1017571))

(declare-fun m!1017573 () Bool)

(assert (=> b!1097874 m!1017573))

(assert (=> b!1097641 d!130311))

(declare-fun d!130313 () Bool)

(declare-fun e!626653 () Bool)

(assert (=> d!130313 e!626653))

(declare-fun res!732789 () Bool)

(assert (=> d!130313 (=> (not res!732789) (not e!626653))))

(declare-fun lt!490931 () ListLongMap!15339)

(assert (=> d!130313 (= res!732789 (contains!6394 lt!490931 (_1!8689 lt!490739)))))

(declare-fun lt!490933 () List!24037)

(assert (=> d!130313 (= lt!490931 (ListLongMap!15340 lt!490933))))

(declare-fun lt!490934 () Unit!36043)

(declare-fun lt!490932 () Unit!36043)

(assert (=> d!130313 (= lt!490934 lt!490932)))

(assert (=> d!130313 (= (getValueByKey!622 lt!490933 (_1!8689 lt!490739)) (Some!672 (_2!8689 lt!490739)))))

(assert (=> d!130313 (= lt!490932 (lemmaContainsTupThenGetReturnValue!297 lt!490933 (_1!8689 lt!490739) (_2!8689 lt!490739)))))

(assert (=> d!130313 (= lt!490933 (insertStrictlySorted!389 (toList!7685 lt!490748) (_1!8689 lt!490739) (_2!8689 lt!490739)))))

(assert (=> d!130313 (= (+!3320 lt!490748 lt!490739) lt!490931)))

(declare-fun b!1097875 () Bool)

(declare-fun res!732790 () Bool)

(assert (=> b!1097875 (=> (not res!732790) (not e!626653))))

(assert (=> b!1097875 (= res!732790 (= (getValueByKey!622 (toList!7685 lt!490931) (_1!8689 lt!490739)) (Some!672 (_2!8689 lt!490739))))))

(declare-fun b!1097876 () Bool)

(assert (=> b!1097876 (= e!626653 (contains!6395 (toList!7685 lt!490931) lt!490739))))

(assert (= (and d!130313 res!732789) b!1097875))

(assert (= (and b!1097875 res!732790) b!1097876))

(declare-fun m!1017575 () Bool)

(assert (=> d!130313 m!1017575))

(declare-fun m!1017577 () Bool)

(assert (=> d!130313 m!1017577))

(declare-fun m!1017579 () Bool)

(assert (=> d!130313 m!1017579))

(declare-fun m!1017581 () Bool)

(assert (=> d!130313 m!1017581))

(declare-fun m!1017583 () Bool)

(assert (=> b!1097875 m!1017583))

(declare-fun m!1017585 () Bool)

(assert (=> b!1097876 m!1017585))

(assert (=> b!1097641 d!130313))

(declare-fun d!130315 () Bool)

(declare-fun e!626654 () Bool)

(assert (=> d!130315 e!626654))

(declare-fun res!732791 () Bool)

(assert (=> d!130315 (=> (not res!732791) (not e!626654))))

(declare-fun lt!490935 () ListLongMap!15339)

(assert (=> d!130315 (= res!732791 (contains!6394 lt!490935 (_1!8689 lt!490738)))))

(declare-fun lt!490937 () List!24037)

(assert (=> d!130315 (= lt!490935 (ListLongMap!15340 lt!490937))))

(declare-fun lt!490938 () Unit!36043)

(declare-fun lt!490936 () Unit!36043)

(assert (=> d!130315 (= lt!490938 lt!490936)))

(assert (=> d!130315 (= (getValueByKey!622 lt!490937 (_1!8689 lt!490738)) (Some!672 (_2!8689 lt!490738)))))

(assert (=> d!130315 (= lt!490936 (lemmaContainsTupThenGetReturnValue!297 lt!490937 (_1!8689 lt!490738) (_2!8689 lt!490738)))))

(assert (=> d!130315 (= lt!490937 (insertStrictlySorted!389 (toList!7685 (+!3320 lt!490740 lt!490739)) (_1!8689 lt!490738) (_2!8689 lt!490738)))))

(assert (=> d!130315 (= (+!3320 (+!3320 lt!490740 lt!490739) lt!490738) lt!490935)))

(declare-fun b!1097877 () Bool)

(declare-fun res!732792 () Bool)

(assert (=> b!1097877 (=> (not res!732792) (not e!626654))))

(assert (=> b!1097877 (= res!732792 (= (getValueByKey!622 (toList!7685 lt!490935) (_1!8689 lt!490738)) (Some!672 (_2!8689 lt!490738))))))

(declare-fun b!1097878 () Bool)

(assert (=> b!1097878 (= e!626654 (contains!6395 (toList!7685 lt!490935) lt!490738))))

(assert (= (and d!130315 res!732791) b!1097877))

(assert (= (and b!1097877 res!732792) b!1097878))

(declare-fun m!1017587 () Bool)

(assert (=> d!130315 m!1017587))

(declare-fun m!1017589 () Bool)

(assert (=> d!130315 m!1017589))

(declare-fun m!1017591 () Bool)

(assert (=> d!130315 m!1017591))

(declare-fun m!1017593 () Bool)

(assert (=> d!130315 m!1017593))

(declare-fun m!1017595 () Bool)

(assert (=> b!1097877 m!1017595))

(declare-fun m!1017597 () Bool)

(assert (=> b!1097878 m!1017597))

(assert (=> b!1097641 d!130315))

(declare-fun d!130317 () Bool)

(declare-fun e!626655 () Bool)

(assert (=> d!130317 e!626655))

(declare-fun res!732793 () Bool)

(assert (=> d!130317 (=> (not res!732793) (not e!626655))))

(declare-fun lt!490939 () ListLongMap!15339)

(assert (=> d!130317 (= res!732793 (contains!6394 lt!490939 (_1!8689 lt!490739)))))

(declare-fun lt!490941 () List!24037)

(assert (=> d!130317 (= lt!490939 (ListLongMap!15340 lt!490941))))

(declare-fun lt!490942 () Unit!36043)

(declare-fun lt!490940 () Unit!36043)

(assert (=> d!130317 (= lt!490942 lt!490940)))

(assert (=> d!130317 (= (getValueByKey!622 lt!490941 (_1!8689 lt!490739)) (Some!672 (_2!8689 lt!490739)))))

(assert (=> d!130317 (= lt!490940 (lemmaContainsTupThenGetReturnValue!297 lt!490941 (_1!8689 lt!490739) (_2!8689 lt!490739)))))

(assert (=> d!130317 (= lt!490941 (insertStrictlySorted!389 (toList!7685 lt!490740) (_1!8689 lt!490739) (_2!8689 lt!490739)))))

(assert (=> d!130317 (= (+!3320 lt!490740 lt!490739) lt!490939)))

(declare-fun b!1097879 () Bool)

(declare-fun res!732794 () Bool)

(assert (=> b!1097879 (=> (not res!732794) (not e!626655))))

(assert (=> b!1097879 (= res!732794 (= (getValueByKey!622 (toList!7685 lt!490939) (_1!8689 lt!490739)) (Some!672 (_2!8689 lt!490739))))))

(declare-fun b!1097880 () Bool)

(assert (=> b!1097880 (= e!626655 (contains!6395 (toList!7685 lt!490939) lt!490739))))

(assert (= (and d!130317 res!732793) b!1097879))

(assert (= (and b!1097879 res!732794) b!1097880))

(declare-fun m!1017599 () Bool)

(assert (=> d!130317 m!1017599))

(declare-fun m!1017601 () Bool)

(assert (=> d!130317 m!1017601))

(declare-fun m!1017603 () Bool)

(assert (=> d!130317 m!1017603))

(declare-fun m!1017605 () Bool)

(assert (=> d!130317 m!1017605))

(declare-fun m!1017607 () Bool)

(assert (=> b!1097879 m!1017607))

(declare-fun m!1017609 () Bool)

(assert (=> b!1097880 m!1017609))

(assert (=> b!1097641 d!130317))

(declare-fun d!130319 () Bool)

(declare-fun res!732796 () Bool)

(declare-fun e!626657 () Bool)

(assert (=> d!130319 (=> res!732796 e!626657)))

(assert (=> d!130319 (= res!732796 (bvsge #b00000000000000000000000000000000 (size!34758 _keys!1070)))))

(assert (=> d!130319 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24033) e!626657)))

(declare-fun b!1097881 () Bool)

(declare-fun e!626659 () Bool)

(declare-fun call!45857 () Bool)

(assert (=> b!1097881 (= e!626659 call!45857)))

(declare-fun b!1097882 () Bool)

(declare-fun e!626658 () Bool)

(assert (=> b!1097882 (= e!626658 (contains!6393 Nil!24033 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097883 () Bool)

(declare-fun e!626656 () Bool)

(assert (=> b!1097883 (= e!626656 e!626659)))

(declare-fun c!108408 () Bool)

(assert (=> b!1097883 (= c!108408 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45854 () Bool)

(assert (=> bm!45854 (= call!45857 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108408 (Cons!24032 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000) Nil!24033) Nil!24033)))))

(declare-fun b!1097884 () Bool)

(assert (=> b!1097884 (= e!626657 e!626656)))

(declare-fun res!732797 () Bool)

(assert (=> b!1097884 (=> (not res!732797) (not e!626656))))

(assert (=> b!1097884 (= res!732797 (not e!626658))))

(declare-fun res!732795 () Bool)

(assert (=> b!1097884 (=> (not res!732795) (not e!626658))))

(assert (=> b!1097884 (= res!732795 (validKeyInArray!0 (select (arr!34221 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097885 () Bool)

(assert (=> b!1097885 (= e!626659 call!45857)))

(assert (= (and d!130319 (not res!732796)) b!1097884))

(assert (= (and b!1097884 res!732795) b!1097882))

(assert (= (and b!1097884 res!732797) b!1097883))

(assert (= (and b!1097883 c!108408) b!1097881))

(assert (= (and b!1097883 (not c!108408)) b!1097885))

(assert (= (or b!1097881 b!1097885) bm!45854))

(assert (=> b!1097882 m!1017397))

(assert (=> b!1097882 m!1017397))

(declare-fun m!1017611 () Bool)

(assert (=> b!1097882 m!1017611))

(assert (=> b!1097883 m!1017397))

(assert (=> b!1097883 m!1017397))

(assert (=> b!1097883 m!1017407))

(assert (=> bm!45854 m!1017397))

(declare-fun m!1017613 () Bool)

(assert (=> bm!45854 m!1017613))

(assert (=> b!1097884 m!1017397))

(assert (=> b!1097884 m!1017397))

(assert (=> b!1097884 m!1017407))

(assert (=> b!1097644 d!130319))

(declare-fun d!130321 () Bool)

(assert (=> d!130321 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1097635 d!130321))

(declare-fun b!1097893 () Bool)

(declare-fun e!626665 () Bool)

(assert (=> b!1097893 (= e!626665 tp_is_empty!27123)))

(declare-fun mapNonEmpty!42454 () Bool)

(declare-fun mapRes!42454 () Bool)

(declare-fun tp!81159 () Bool)

(declare-fun e!626664 () Bool)

(assert (=> mapNonEmpty!42454 (= mapRes!42454 (and tp!81159 e!626664))))

(declare-fun mapRest!42454 () (Array (_ BitVec 32) ValueCell!12852))

(declare-fun mapKey!42454 () (_ BitVec 32))

(declare-fun mapValue!42454 () ValueCell!12852)

(assert (=> mapNonEmpty!42454 (= mapRest!42448 (store mapRest!42454 mapKey!42454 mapValue!42454))))

(declare-fun condMapEmpty!42454 () Bool)

(declare-fun mapDefault!42454 () ValueCell!12852)

(assert (=> mapNonEmpty!42448 (= condMapEmpty!42454 (= mapRest!42448 ((as const (Array (_ BitVec 32) ValueCell!12852)) mapDefault!42454)))))

(assert (=> mapNonEmpty!42448 (= tp!81150 (and e!626665 mapRes!42454))))

(declare-fun mapIsEmpty!42454 () Bool)

(assert (=> mapIsEmpty!42454 mapRes!42454))

(declare-fun b!1097892 () Bool)

(assert (=> b!1097892 (= e!626664 tp_is_empty!27123)))

(assert (= (and mapNonEmpty!42448 condMapEmpty!42454) mapIsEmpty!42454))

(assert (= (and mapNonEmpty!42448 (not condMapEmpty!42454)) mapNonEmpty!42454))

(assert (= (and mapNonEmpty!42454 ((_ is ValueCellFull!12852) mapValue!42454)) b!1097892))

(assert (= (and mapNonEmpty!42448 ((_ is ValueCellFull!12852) mapDefault!42454)) b!1097893))

(declare-fun m!1017615 () Bool)

(assert (=> mapNonEmpty!42454 m!1017615))

(declare-fun b_lambda!17811 () Bool)

(assert (= b_lambda!17805 (or (and start!96556 b_free!23073) b_lambda!17811)))

(declare-fun b_lambda!17813 () Bool)

(assert (= b_lambda!17801 (or (and start!96556 b_free!23073) b_lambda!17813)))

(declare-fun b_lambda!17815 () Bool)

(assert (= b_lambda!17807 (or (and start!96556 b_free!23073) b_lambda!17815)))

(declare-fun b_lambda!17817 () Bool)

(assert (= b_lambda!17799 (or (and start!96556 b_free!23073) b_lambda!17817)))

(declare-fun b_lambda!17819 () Bool)

(assert (= b_lambda!17797 (or (and start!96556 b_free!23073) b_lambda!17819)))

(declare-fun b_lambda!17821 () Bool)

(assert (= b_lambda!17809 (or (and start!96556 b_free!23073) b_lambda!17821)))

(declare-fun b_lambda!17823 () Bool)

(assert (= b_lambda!17803 (or (and start!96556 b_free!23073) b_lambda!17823)))

(check-sat (not b!1097715) (not b!1097880) (not bm!45833) (not d!130303) (not bm!45814) (not b!1097723) (not b!1097856) (not b!1097876) (not b!1097716) (not b!1097861) (not b!1097780) tp_is_empty!27123 (not b!1097801) (not bm!45831) (not b_lambda!17815) (not bm!45829) (not b!1097877) (not b_next!23073) (not d!130295) (not b!1097879) (not bm!45832) (not b_lambda!17795) (not b!1097873) (not b!1097865) (not b!1097768) (not b!1097851) (not bm!45845) (not d!130299) (not b_lambda!17819) (not b!1097714) (not b_lambda!17821) (not d!130317) (not b!1097794) (not d!130305) (not b!1097878) (not b!1097859) (not d!130307) (not bm!45836) (not b!1097774) (not b!1097797) (not b!1097772) (not b!1097778) (not d!130311) (not b!1097795) (not b!1097840) (not bm!45811) (not b!1097773) (not b_lambda!17811) (not b!1097854) b_and!36861 (not b!1097882) (not b!1097835) (not mapNonEmpty!42454) (not d!130313) (not b!1097833) (not b!1097883) (not bm!45851) (not b!1097884) (not b!1097860) (not b!1097842) (not bm!45852) (not b!1097702) (not b!1097799) (not d!130297) (not b_lambda!17813) (not b!1097841) (not b!1097875) (not bm!45854) (not bm!45853) (not b!1097874) (not b!1097789) (not b!1097857) (not d!130301) (not b!1097793) (not b_lambda!17823) (not b!1097776) (not d!130315) (not b!1097798) (not b_lambda!17817) (not bm!45850) (not b!1097839) (not bm!45840) (not b!1097862) (not b!1097863) (not bm!45838) (not b!1097836) (not b!1097699) (not b!1097838) (not b!1097868) (not b!1097777) (not bm!45839))
(check-sat b_and!36861 (not b_next!23073))

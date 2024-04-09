; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96192 () Bool)

(assert start!96192)

(declare-fun b_free!22809 () Bool)

(declare-fun b_next!22809 () Bool)

(assert (=> start!96192 (= b_free!22809 (not b_next!22809))))

(declare-fun tp!80277 () Bool)

(declare-fun b_and!36311 () Bool)

(assert (=> start!96192 (= tp!80277 b_and!36311)))

(declare-fun mapNonEmpty!41971 () Bool)

(declare-fun mapRes!41971 () Bool)

(declare-fun tp!80276 () Bool)

(declare-fun e!623411 () Bool)

(assert (=> mapNonEmpty!41971 (= mapRes!41971 (and tp!80276 e!623411))))

(declare-fun mapKey!41971 () (_ BitVec 32))

(declare-datatypes ((V!40875 0))(
  ( (V!40876 (val!13462 Int)) )
))
(declare-datatypes ((ValueCell!12696 0))(
  ( (ValueCellFull!12696 (v!16084 V!40875)) (EmptyCell!12696) )
))
(declare-datatypes ((array!70506 0))(
  ( (array!70507 (arr!33923 (Array (_ BitVec 32) ValueCell!12696)) (size!34460 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70506)

(declare-fun mapValue!41971 () ValueCell!12696)

(declare-fun mapRest!41971 () (Array (_ BitVec 32) ValueCell!12696))

(assert (=> mapNonEmpty!41971 (= (arr!33923 _values!874) (store mapRest!41971 mapKey!41971 mapValue!41971))))

(declare-fun b!1091497 () Bool)

(declare-fun res!728347 () Bool)

(declare-fun e!623415 () Bool)

(assert (=> b!1091497 (=> (not res!728347) (not e!623415))))

(declare-datatypes ((array!70508 0))(
  ( (array!70509 (arr!33924 (Array (_ BitVec 32) (_ BitVec 64))) (size!34461 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70508)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70508 (_ BitVec 32)) Bool)

(assert (=> b!1091497 (= res!728347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091498 () Bool)

(declare-fun e!623412 () Bool)

(declare-fun tp_is_empty!26811 () Bool)

(assert (=> b!1091498 (= e!623412 tp_is_empty!26811)))

(declare-fun b!1091499 () Bool)

(declare-fun res!728351 () Bool)

(assert (=> b!1091499 (=> (not res!728351) (not e!623415))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091499 (= res!728351 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34461 _keys!1070))))))

(declare-fun res!728346 () Bool)

(assert (=> start!96192 (=> (not res!728346) (not e!623415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96192 (= res!728346 (validMask!0 mask!1414))))

(assert (=> start!96192 e!623415))

(assert (=> start!96192 tp!80277))

(assert (=> start!96192 true))

(assert (=> start!96192 tp_is_empty!26811))

(declare-fun array_inv!26012 (array!70508) Bool)

(assert (=> start!96192 (array_inv!26012 _keys!1070)))

(declare-fun e!623416 () Bool)

(declare-fun array_inv!26013 (array!70506) Bool)

(assert (=> start!96192 (and (array_inv!26013 _values!874) e!623416)))

(declare-fun b!1091500 () Bool)

(declare-fun res!728345 () Bool)

(assert (=> b!1091500 (=> (not res!728345) (not e!623415))))

(declare-datatypes ((List!23834 0))(
  ( (Nil!23831) (Cons!23830 (h!25039 (_ BitVec 64)) (t!33708 List!23834)) )
))
(declare-fun arrayNoDuplicates!0 (array!70508 (_ BitVec 32) List!23834) Bool)

(assert (=> b!1091500 (= res!728345 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23831))))

(declare-fun b!1091501 () Bool)

(declare-fun e!623410 () Bool)

(assert (=> b!1091501 (= e!623410 true)))

(declare-datatypes ((tuple2!17194 0))(
  ( (tuple2!17195 (_1!8607 (_ BitVec 64)) (_2!8607 V!40875)) )
))
(declare-datatypes ((List!23835 0))(
  ( (Nil!23832) (Cons!23831 (h!25040 tuple2!17194) (t!33709 List!23835)) )
))
(declare-datatypes ((ListLongMap!15175 0))(
  ( (ListLongMap!15176 (toList!7603 List!23835)) )
))
(declare-fun lt!487497 () ListLongMap!15175)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!487503 () ListLongMap!15175)

(declare-fun -!880 (ListLongMap!15175 (_ BitVec 64)) ListLongMap!15175)

(assert (=> b!1091501 (= (-!880 lt!487497 k0!904) lt!487503)))

(declare-fun minValue!831 () V!40875)

(declare-fun lt!487502 () ListLongMap!15175)

(declare-datatypes ((Unit!35875 0))(
  ( (Unit!35876) )
))
(declare-fun lt!487500 () Unit!35875)

(declare-fun addRemoveCommutativeForDiffKeys!108 (ListLongMap!15175 (_ BitVec 64) V!40875 (_ BitVec 64)) Unit!35875)

(assert (=> b!1091501 (= lt!487500 (addRemoveCommutativeForDiffKeys!108 lt!487502 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapIsEmpty!41971 () Bool)

(assert (=> mapIsEmpty!41971 mapRes!41971))

(declare-fun b!1091502 () Bool)

(declare-fun res!728350 () Bool)

(assert (=> b!1091502 (=> (not res!728350) (not e!623415))))

(assert (=> b!1091502 (= res!728350 (= (select (arr!33924 _keys!1070) i!650) k0!904))))

(declare-fun b!1091503 () Bool)

(declare-fun res!728348 () Bool)

(declare-fun e!623413 () Bool)

(assert (=> b!1091503 (=> (not res!728348) (not e!623413))))

(declare-fun lt!487501 () array!70508)

(assert (=> b!1091503 (= res!728348 (arrayNoDuplicates!0 lt!487501 #b00000000000000000000000000000000 Nil!23831))))

(declare-fun b!1091504 () Bool)

(assert (=> b!1091504 (= e!623416 (and e!623412 mapRes!41971))))

(declare-fun condMapEmpty!41971 () Bool)

(declare-fun mapDefault!41971 () ValueCell!12696)

(assert (=> b!1091504 (= condMapEmpty!41971 (= (arr!33923 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12696)) mapDefault!41971)))))

(declare-fun b!1091505 () Bool)

(declare-fun e!623414 () Bool)

(assert (=> b!1091505 (= e!623413 (not e!623414))))

(declare-fun res!728343 () Bool)

(assert (=> b!1091505 (=> res!728343 e!623414)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091505 (= res!728343 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!487504 () ListLongMap!15175)

(declare-fun zeroValue!831 () V!40875)

(declare-fun getCurrentListMap!4339 (array!70508 array!70506 (_ BitVec 32) (_ BitVec 32) V!40875 V!40875 (_ BitVec 32) Int) ListLongMap!15175)

(assert (=> b!1091505 (= lt!487504 (getCurrentListMap!4339 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487499 () ListLongMap!15175)

(declare-fun lt!487495 () array!70506)

(assert (=> b!1091505 (= lt!487499 (getCurrentListMap!4339 lt!487501 lt!487495 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487498 () ListLongMap!15175)

(declare-fun lt!487496 () ListLongMap!15175)

(assert (=> b!1091505 (and (= lt!487498 lt!487496) (= lt!487496 lt!487498))))

(assert (=> b!1091505 (= lt!487496 (-!880 lt!487502 k0!904))))

(declare-fun lt!487493 () Unit!35875)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!145 (array!70508 array!70506 (_ BitVec 32) (_ BitVec 32) V!40875 V!40875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35875)

(assert (=> b!1091505 (= lt!487493 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!145 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4091 (array!70508 array!70506 (_ BitVec 32) (_ BitVec 32) V!40875 V!40875 (_ BitVec 32) Int) ListLongMap!15175)

(assert (=> b!1091505 (= lt!487498 (getCurrentListMapNoExtraKeys!4091 lt!487501 lt!487495 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2227 (Int (_ BitVec 64)) V!40875)

(assert (=> b!1091505 (= lt!487495 (array!70507 (store (arr!33923 _values!874) i!650 (ValueCellFull!12696 (dynLambda!2227 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34460 _values!874)))))

(assert (=> b!1091505 (= lt!487502 (getCurrentListMapNoExtraKeys!4091 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091505 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487505 () Unit!35875)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70508 (_ BitVec 64) (_ BitVec 32)) Unit!35875)

(assert (=> b!1091505 (= lt!487505 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1091506 () Bool)

(declare-fun res!728341 () Bool)

(assert (=> b!1091506 (=> (not res!728341) (not e!623415))))

(assert (=> b!1091506 (= res!728341 (and (= (size!34460 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34461 _keys!1070) (size!34460 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091507 () Bool)

(assert (=> b!1091507 (= e!623414 e!623410)))

(declare-fun res!728342 () Bool)

(assert (=> b!1091507 (=> res!728342 e!623410)))

(assert (=> b!1091507 (= res!728342 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1091507 (= lt!487504 lt!487497)))

(declare-fun lt!487494 () tuple2!17194)

(declare-fun +!3308 (ListLongMap!15175 tuple2!17194) ListLongMap!15175)

(assert (=> b!1091507 (= lt!487497 (+!3308 lt!487502 lt!487494))))

(assert (=> b!1091507 (= lt!487499 lt!487503)))

(assert (=> b!1091507 (= lt!487503 (+!3308 lt!487496 lt!487494))))

(assert (=> b!1091507 (= lt!487499 (+!3308 lt!487498 lt!487494))))

(assert (=> b!1091507 (= lt!487494 (tuple2!17195 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091508 () Bool)

(assert (=> b!1091508 (= e!623411 tp_is_empty!26811)))

(declare-fun b!1091509 () Bool)

(declare-fun res!728344 () Bool)

(assert (=> b!1091509 (=> (not res!728344) (not e!623415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091509 (= res!728344 (validKeyInArray!0 k0!904))))

(declare-fun b!1091510 () Bool)

(assert (=> b!1091510 (= e!623415 e!623413)))

(declare-fun res!728349 () Bool)

(assert (=> b!1091510 (=> (not res!728349) (not e!623413))))

(assert (=> b!1091510 (= res!728349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487501 mask!1414))))

(assert (=> b!1091510 (= lt!487501 (array!70509 (store (arr!33924 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34461 _keys!1070)))))

(assert (= (and start!96192 res!728346) b!1091506))

(assert (= (and b!1091506 res!728341) b!1091497))

(assert (= (and b!1091497 res!728347) b!1091500))

(assert (= (and b!1091500 res!728345) b!1091499))

(assert (= (and b!1091499 res!728351) b!1091509))

(assert (= (and b!1091509 res!728344) b!1091502))

(assert (= (and b!1091502 res!728350) b!1091510))

(assert (= (and b!1091510 res!728349) b!1091503))

(assert (= (and b!1091503 res!728348) b!1091505))

(assert (= (and b!1091505 (not res!728343)) b!1091507))

(assert (= (and b!1091507 (not res!728342)) b!1091501))

(assert (= (and b!1091504 condMapEmpty!41971) mapIsEmpty!41971))

(assert (= (and b!1091504 (not condMapEmpty!41971)) mapNonEmpty!41971))

(get-info :version)

(assert (= (and mapNonEmpty!41971 ((_ is ValueCellFull!12696) mapValue!41971)) b!1091508))

(assert (= (and b!1091504 ((_ is ValueCellFull!12696) mapDefault!41971)) b!1091498))

(assert (= start!96192 b!1091504))

(declare-fun b_lambda!17509 () Bool)

(assert (=> (not b_lambda!17509) (not b!1091505)))

(declare-fun t!33707 () Bool)

(declare-fun tb!7695 () Bool)

(assert (=> (and start!96192 (= defaultEntry!882 defaultEntry!882) t!33707) tb!7695))

(declare-fun result!15901 () Bool)

(assert (=> tb!7695 (= result!15901 tp_is_empty!26811)))

(assert (=> b!1091505 t!33707))

(declare-fun b_and!36313 () Bool)

(assert (= b_and!36311 (and (=> t!33707 result!15901) b_and!36313)))

(declare-fun m!1011241 () Bool)

(assert (=> start!96192 m!1011241))

(declare-fun m!1011243 () Bool)

(assert (=> start!96192 m!1011243))

(declare-fun m!1011245 () Bool)

(assert (=> start!96192 m!1011245))

(declare-fun m!1011247 () Bool)

(assert (=> b!1091501 m!1011247))

(declare-fun m!1011249 () Bool)

(assert (=> b!1091501 m!1011249))

(declare-fun m!1011251 () Bool)

(assert (=> mapNonEmpty!41971 m!1011251))

(declare-fun m!1011253 () Bool)

(assert (=> b!1091509 m!1011253))

(declare-fun m!1011255 () Bool)

(assert (=> b!1091505 m!1011255))

(declare-fun m!1011257 () Bool)

(assert (=> b!1091505 m!1011257))

(declare-fun m!1011259 () Bool)

(assert (=> b!1091505 m!1011259))

(declare-fun m!1011261 () Bool)

(assert (=> b!1091505 m!1011261))

(declare-fun m!1011263 () Bool)

(assert (=> b!1091505 m!1011263))

(declare-fun m!1011265 () Bool)

(assert (=> b!1091505 m!1011265))

(declare-fun m!1011267 () Bool)

(assert (=> b!1091505 m!1011267))

(declare-fun m!1011269 () Bool)

(assert (=> b!1091505 m!1011269))

(declare-fun m!1011271 () Bool)

(assert (=> b!1091505 m!1011271))

(declare-fun m!1011273 () Bool)

(assert (=> b!1091505 m!1011273))

(declare-fun m!1011275 () Bool)

(assert (=> b!1091500 m!1011275))

(declare-fun m!1011277 () Bool)

(assert (=> b!1091503 m!1011277))

(declare-fun m!1011279 () Bool)

(assert (=> b!1091510 m!1011279))

(declare-fun m!1011281 () Bool)

(assert (=> b!1091510 m!1011281))

(declare-fun m!1011283 () Bool)

(assert (=> b!1091502 m!1011283))

(declare-fun m!1011285 () Bool)

(assert (=> b!1091507 m!1011285))

(declare-fun m!1011287 () Bool)

(assert (=> b!1091507 m!1011287))

(declare-fun m!1011289 () Bool)

(assert (=> b!1091507 m!1011289))

(declare-fun m!1011291 () Bool)

(assert (=> b!1091497 m!1011291))

(check-sat (not b!1091501) (not b!1091497) (not start!96192) b_and!36313 (not b!1091507) (not b!1091505) (not b!1091509) (not b!1091510) (not b!1091503) (not mapNonEmpty!41971) (not b_lambda!17509) (not b_next!22809) tp_is_empty!26811 (not b!1091500))
(check-sat b_and!36313 (not b_next!22809))

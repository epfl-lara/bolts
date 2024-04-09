; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95814 () Bool)

(assert start!95814)

(declare-fun b_free!22431 () Bool)

(declare-fun b_next!22431 () Bool)

(assert (=> start!95814 (= b_free!22431 (not b_next!22431))))

(declare-fun tp!79142 () Bool)

(declare-fun b_and!35555 () Bool)

(assert (=> start!95814 (= tp!79142 b_and!35555)))

(declare-fun b!1083351 () Bool)

(declare-fun res!722275 () Bool)

(declare-fun e!619075 () Bool)

(assert (=> b!1083351 (=> (not res!722275) (not e!619075))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083351 (= res!722275 (validKeyInArray!0 k0!904))))

(declare-fun b!1083352 () Bool)

(declare-fun e!619070 () Bool)

(declare-fun tp_is_empty!26433 () Bool)

(assert (=> b!1083352 (= e!619070 tp_is_empty!26433)))

(declare-fun b!1083353 () Bool)

(declare-fun res!722281 () Bool)

(assert (=> b!1083353 (=> (not res!722281) (not e!619075))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69768 0))(
  ( (array!69769 (arr!33554 (Array (_ BitVec 32) (_ BitVec 64))) (size!34091 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69768)

(declare-datatypes ((V!40371 0))(
  ( (V!40372 (val!13273 Int)) )
))
(declare-datatypes ((ValueCell!12507 0))(
  ( (ValueCellFull!12507 (v!15895 V!40371)) (EmptyCell!12507) )
))
(declare-datatypes ((array!69770 0))(
  ( (array!69771 (arr!33555 (Array (_ BitVec 32) ValueCell!12507)) (size!34092 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69770)

(assert (=> b!1083353 (= res!722281 (and (= (size!34092 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34091 _keys!1070) (size!34092 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083354 () Bool)

(declare-fun res!722274 () Bool)

(assert (=> b!1083354 (=> (not res!722274) (not e!619075))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083354 (= res!722274 (= (select (arr!33554 _keys!1070) i!650) k0!904))))

(declare-fun b!1083355 () Bool)

(declare-fun res!722279 () Bool)

(assert (=> b!1083355 (=> (not res!722279) (not e!619075))))

(declare-datatypes ((List!23523 0))(
  ( (Nil!23520) (Cons!23519 (h!24728 (_ BitVec 64)) (t!33019 List!23523)) )
))
(declare-fun arrayNoDuplicates!0 (array!69768 (_ BitVec 32) List!23523) Bool)

(assert (=> b!1083355 (= res!722279 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23520))))

(declare-fun mapIsEmpty!41404 () Bool)

(declare-fun mapRes!41404 () Bool)

(assert (=> mapIsEmpty!41404 mapRes!41404))

(declare-fun b!1083356 () Bool)

(declare-fun res!722277 () Bool)

(assert (=> b!1083356 (=> (not res!722277) (not e!619075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69768 (_ BitVec 32)) Bool)

(assert (=> b!1083356 (= res!722277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083357 () Bool)

(declare-fun res!722276 () Bool)

(declare-fun e!619074 () Bool)

(assert (=> b!1083357 (=> (not res!722276) (not e!619074))))

(declare-fun lt!480035 () array!69768)

(assert (=> b!1083357 (= res!722276 (arrayNoDuplicates!0 lt!480035 #b00000000000000000000000000000000 Nil!23520))))

(declare-fun res!722282 () Bool)

(assert (=> start!95814 (=> (not res!722282) (not e!619075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95814 (= res!722282 (validMask!0 mask!1414))))

(assert (=> start!95814 e!619075))

(assert (=> start!95814 tp!79142))

(assert (=> start!95814 true))

(assert (=> start!95814 tp_is_empty!26433))

(declare-fun array_inv!25752 (array!69768) Bool)

(assert (=> start!95814 (array_inv!25752 _keys!1070)))

(declare-fun e!619071 () Bool)

(declare-fun array_inv!25753 (array!69770) Bool)

(assert (=> start!95814 (and (array_inv!25753 _values!874) e!619071)))

(declare-fun b!1083358 () Bool)

(assert (=> b!1083358 (= e!619075 e!619074)))

(declare-fun res!722278 () Bool)

(assert (=> b!1083358 (=> (not res!722278) (not e!619074))))

(assert (=> b!1083358 (= res!722278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480035 mask!1414))))

(assert (=> b!1083358 (= lt!480035 (array!69769 (store (arr!33554 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34091 _keys!1070)))))

(declare-fun b!1083359 () Bool)

(declare-fun res!722280 () Bool)

(assert (=> b!1083359 (=> (not res!722280) (not e!619075))))

(assert (=> b!1083359 (= res!722280 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34091 _keys!1070))))))

(declare-fun b!1083360 () Bool)

(declare-fun e!619072 () Bool)

(assert (=> b!1083360 (= e!619072 tp_is_empty!26433)))

(declare-fun mapNonEmpty!41404 () Bool)

(declare-fun tp!79143 () Bool)

(assert (=> mapNonEmpty!41404 (= mapRes!41404 (and tp!79143 e!619072))))

(declare-fun mapRest!41404 () (Array (_ BitVec 32) ValueCell!12507))

(declare-fun mapKey!41404 () (_ BitVec 32))

(declare-fun mapValue!41404 () ValueCell!12507)

(assert (=> mapNonEmpty!41404 (= (arr!33555 _values!874) (store mapRest!41404 mapKey!41404 mapValue!41404))))

(declare-fun b!1083361 () Bool)

(assert (=> b!1083361 (= e!619071 (and e!619070 mapRes!41404))))

(declare-fun condMapEmpty!41404 () Bool)

(declare-fun mapDefault!41404 () ValueCell!12507)

(assert (=> b!1083361 (= condMapEmpty!41404 (= (arr!33555 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12507)) mapDefault!41404)))))

(declare-fun b!1083362 () Bool)

(assert (=> b!1083362 (= e!619074 (not true))))

(declare-datatypes ((tuple2!16886 0))(
  ( (tuple2!16887 (_1!8453 (_ BitVec 64)) (_2!8453 V!40371)) )
))
(declare-datatypes ((List!23524 0))(
  ( (Nil!23521) (Cons!23520 (h!24729 tuple2!16886) (t!33020 List!23524)) )
))
(declare-datatypes ((ListLongMap!14867 0))(
  ( (ListLongMap!14868 (toList!7449 List!23524)) )
))
(declare-fun lt!480036 () ListLongMap!14867)

(declare-fun lt!480038 () ListLongMap!14867)

(assert (=> b!1083362 (and (= lt!480036 lt!480038) (= lt!480038 lt!480036))))

(declare-fun lt!480034 () ListLongMap!14867)

(declare-fun -!731 (ListLongMap!14867 (_ BitVec 64)) ListLongMap!14867)

(assert (=> b!1083362 (= lt!480038 (-!731 lt!480034 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40371)

(declare-fun zeroValue!831 () V!40371)

(declare-datatypes ((Unit!35577 0))(
  ( (Unit!35578) )
))
(declare-fun lt!480033 () Unit!35577)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!14 (array!69768 array!69770 (_ BitVec 32) (_ BitVec 32) V!40371 V!40371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35577)

(assert (=> b!1083362 (= lt!480033 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!14 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3960 (array!69768 array!69770 (_ BitVec 32) (_ BitVec 32) V!40371 V!40371 (_ BitVec 32) Int) ListLongMap!14867)

(declare-fun dynLambda!2096 (Int (_ BitVec 64)) V!40371)

(assert (=> b!1083362 (= lt!480036 (getCurrentListMapNoExtraKeys!3960 lt!480035 (array!69771 (store (arr!33555 _values!874) i!650 (ValueCellFull!12507 (dynLambda!2096 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34092 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083362 (= lt!480034 (getCurrentListMapNoExtraKeys!3960 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083362 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480037 () Unit!35577)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69768 (_ BitVec 64) (_ BitVec 32)) Unit!35577)

(assert (=> b!1083362 (= lt!480037 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95814 res!722282) b!1083353))

(assert (= (and b!1083353 res!722281) b!1083356))

(assert (= (and b!1083356 res!722277) b!1083355))

(assert (= (and b!1083355 res!722279) b!1083359))

(assert (= (and b!1083359 res!722280) b!1083351))

(assert (= (and b!1083351 res!722275) b!1083354))

(assert (= (and b!1083354 res!722274) b!1083358))

(assert (= (and b!1083358 res!722278) b!1083357))

(assert (= (and b!1083357 res!722276) b!1083362))

(assert (= (and b!1083361 condMapEmpty!41404) mapIsEmpty!41404))

(assert (= (and b!1083361 (not condMapEmpty!41404)) mapNonEmpty!41404))

(get-info :version)

(assert (= (and mapNonEmpty!41404 ((_ is ValueCellFull!12507) mapValue!41404)) b!1083360))

(assert (= (and b!1083361 ((_ is ValueCellFull!12507) mapDefault!41404)) b!1083352))

(assert (= start!95814 b!1083361))

(declare-fun b_lambda!17131 () Bool)

(assert (=> (not b_lambda!17131) (not b!1083362)))

(declare-fun t!33018 () Bool)

(declare-fun tb!7317 () Bool)

(assert (=> (and start!95814 (= defaultEntry!882 defaultEntry!882) t!33018) tb!7317))

(declare-fun result!15145 () Bool)

(assert (=> tb!7317 (= result!15145 tp_is_empty!26433)))

(assert (=> b!1083362 t!33018))

(declare-fun b_and!35557 () Bool)

(assert (= b_and!35555 (and (=> t!33018 result!15145) b_and!35557)))

(declare-fun m!1001159 () Bool)

(assert (=> b!1083354 m!1001159))

(declare-fun m!1001161 () Bool)

(assert (=> b!1083351 m!1001161))

(declare-fun m!1001163 () Bool)

(assert (=> b!1083358 m!1001163))

(declare-fun m!1001165 () Bool)

(assert (=> b!1083358 m!1001165))

(declare-fun m!1001167 () Bool)

(assert (=> b!1083356 m!1001167))

(declare-fun m!1001169 () Bool)

(assert (=> b!1083362 m!1001169))

(declare-fun m!1001171 () Bool)

(assert (=> b!1083362 m!1001171))

(declare-fun m!1001173 () Bool)

(assert (=> b!1083362 m!1001173))

(declare-fun m!1001175 () Bool)

(assert (=> b!1083362 m!1001175))

(declare-fun m!1001177 () Bool)

(assert (=> b!1083362 m!1001177))

(declare-fun m!1001179 () Bool)

(assert (=> b!1083362 m!1001179))

(declare-fun m!1001181 () Bool)

(assert (=> b!1083362 m!1001181))

(declare-fun m!1001183 () Bool)

(assert (=> b!1083362 m!1001183))

(declare-fun m!1001185 () Bool)

(assert (=> mapNonEmpty!41404 m!1001185))

(declare-fun m!1001187 () Bool)

(assert (=> b!1083357 m!1001187))

(declare-fun m!1001189 () Bool)

(assert (=> b!1083355 m!1001189))

(declare-fun m!1001191 () Bool)

(assert (=> start!95814 m!1001191))

(declare-fun m!1001193 () Bool)

(assert (=> start!95814 m!1001193))

(declare-fun m!1001195 () Bool)

(assert (=> start!95814 m!1001195))

(check-sat b_and!35557 (not b_next!22431) (not b!1083351) (not start!95814) (not b!1083356) tp_is_empty!26433 (not b!1083357) (not b!1083358) (not b!1083355) (not b_lambda!17131) (not mapNonEmpty!41404) (not b!1083362))
(check-sat b_and!35557 (not b_next!22431))

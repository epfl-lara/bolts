; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96228 () Bool)

(assert start!96228)

(declare-fun b_free!22845 () Bool)

(declare-fun b_next!22845 () Bool)

(assert (=> start!96228 (= b_free!22845 (not b_next!22845))))

(declare-fun tp!80384 () Bool)

(declare-fun b_and!36383 () Bool)

(assert (=> start!96228 (= tp!80384 b_and!36383)))

(declare-fun b!1092279 () Bool)

(declare-fun res!728930 () Bool)

(declare-fun e!623833 () Bool)

(assert (=> b!1092279 (=> (not res!728930) (not e!623833))))

(declare-datatypes ((array!70574 0))(
  ( (array!70575 (arr!33957 (Array (_ BitVec 32) (_ BitVec 64))) (size!34494 (_ BitVec 32))) )
))
(declare-fun lt!488181 () array!70574)

(declare-datatypes ((List!23860 0))(
  ( (Nil!23857) (Cons!23856 (h!25065 (_ BitVec 64)) (t!33770 List!23860)) )
))
(declare-fun arrayNoDuplicates!0 (array!70574 (_ BitVec 32) List!23860) Bool)

(assert (=> b!1092279 (= res!728930 (arrayNoDuplicates!0 lt!488181 #b00000000000000000000000000000000 Nil!23857))))

(declare-fun b!1092280 () Bool)

(declare-fun res!728931 () Bool)

(declare-fun e!623834 () Bool)

(assert (=> b!1092280 (=> (not res!728931) (not e!623834))))

(declare-fun _keys!1070 () array!70574)

(assert (=> b!1092280 (= res!728931 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23857))))

(declare-fun b!1092281 () Bool)

(assert (=> b!1092281 (= e!623834 e!623833)))

(declare-fun res!728932 () Bool)

(assert (=> b!1092281 (=> (not res!728932) (not e!623833))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70574 (_ BitVec 32)) Bool)

(assert (=> b!1092281 (= res!728932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488181 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092281 (= lt!488181 (array!70575 (store (arr!33957 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34494 _keys!1070)))))

(declare-fun mapNonEmpty!42025 () Bool)

(declare-fun mapRes!42025 () Bool)

(declare-fun tp!80385 () Bool)

(declare-fun e!623835 () Bool)

(assert (=> mapNonEmpty!42025 (= mapRes!42025 (and tp!80385 e!623835))))

(declare-datatypes ((V!40923 0))(
  ( (V!40924 (val!13480 Int)) )
))
(declare-datatypes ((ValueCell!12714 0))(
  ( (ValueCellFull!12714 (v!16102 V!40923)) (EmptyCell!12714) )
))
(declare-datatypes ((array!70576 0))(
  ( (array!70577 (arr!33958 (Array (_ BitVec 32) ValueCell!12714)) (size!34495 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70576)

(declare-fun mapValue!42025 () ValueCell!12714)

(declare-fun mapKey!42025 () (_ BitVec 32))

(declare-fun mapRest!42025 () (Array (_ BitVec 32) ValueCell!12714))

(assert (=> mapNonEmpty!42025 (= (arr!33958 _values!874) (store mapRest!42025 mapKey!42025 mapValue!42025))))

(declare-fun b!1092282 () Bool)

(declare-fun res!728928 () Bool)

(assert (=> b!1092282 (=> (not res!728928) (not e!623834))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1092282 (= res!728928 (and (= (size!34495 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34494 _keys!1070) (size!34495 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092283 () Bool)

(assert (=> b!1092283 (= e!623833 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40923)

(declare-datatypes ((tuple2!17222 0))(
  ( (tuple2!17223 (_1!8621 (_ BitVec 64)) (_2!8621 V!40923)) )
))
(declare-datatypes ((List!23861 0))(
  ( (Nil!23858) (Cons!23857 (h!25066 tuple2!17222) (t!33771 List!23861)) )
))
(declare-datatypes ((ListLongMap!15203 0))(
  ( (ListLongMap!15204 (toList!7617 List!23861)) )
))
(declare-fun lt!488176 () ListLongMap!15203)

(declare-fun zeroValue!831 () V!40923)

(declare-fun getCurrentListMap!4352 (array!70574 array!70576 (_ BitVec 32) (_ BitVec 32) V!40923 V!40923 (_ BitVec 32) Int) ListLongMap!15203)

(assert (=> b!1092283 (= lt!488176 (getCurrentListMap!4352 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488180 () array!70576)

(declare-fun lt!488179 () ListLongMap!15203)

(assert (=> b!1092283 (= lt!488179 (getCurrentListMap!4352 lt!488181 lt!488180 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488178 () ListLongMap!15203)

(declare-fun lt!488182 () ListLongMap!15203)

(assert (=> b!1092283 (and (= lt!488178 lt!488182) (= lt!488182 lt!488178))))

(declare-fun lt!488175 () ListLongMap!15203)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!893 (ListLongMap!15203 (_ BitVec 64)) ListLongMap!15203)

(assert (=> b!1092283 (= lt!488182 (-!893 lt!488175 k0!904))))

(declare-datatypes ((Unit!35901 0))(
  ( (Unit!35902) )
))
(declare-fun lt!488183 () Unit!35901)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!158 (array!70574 array!70576 (_ BitVec 32) (_ BitVec 32) V!40923 V!40923 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35901)

(assert (=> b!1092283 (= lt!488183 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!158 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4104 (array!70574 array!70576 (_ BitVec 32) (_ BitVec 32) V!40923 V!40923 (_ BitVec 32) Int) ListLongMap!15203)

(assert (=> b!1092283 (= lt!488178 (getCurrentListMapNoExtraKeys!4104 lt!488181 lt!488180 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2240 (Int (_ BitVec 64)) V!40923)

(assert (=> b!1092283 (= lt!488180 (array!70577 (store (arr!33958 _values!874) i!650 (ValueCellFull!12714 (dynLambda!2240 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34495 _values!874)))))

(assert (=> b!1092283 (= lt!488175 (getCurrentListMapNoExtraKeys!4104 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092283 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488177 () Unit!35901)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70574 (_ BitVec 64) (_ BitVec 32)) Unit!35901)

(assert (=> b!1092283 (= lt!488177 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092284 () Bool)

(declare-fun res!728929 () Bool)

(assert (=> b!1092284 (=> (not res!728929) (not e!623834))))

(assert (=> b!1092284 (= res!728929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092285 () Bool)

(declare-fun res!728933 () Bool)

(assert (=> b!1092285 (=> (not res!728933) (not e!623834))))

(assert (=> b!1092285 (= res!728933 (= (select (arr!33957 _keys!1070) i!650) k0!904))))

(declare-fun b!1092286 () Bool)

(declare-fun e!623831 () Bool)

(declare-fun e!623832 () Bool)

(assert (=> b!1092286 (= e!623831 (and e!623832 mapRes!42025))))

(declare-fun condMapEmpty!42025 () Bool)

(declare-fun mapDefault!42025 () ValueCell!12714)

(assert (=> b!1092286 (= condMapEmpty!42025 (= (arr!33958 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12714)) mapDefault!42025)))))

(declare-fun b!1092287 () Bool)

(declare-fun tp_is_empty!26847 () Bool)

(assert (=> b!1092287 (= e!623835 tp_is_empty!26847)))

(declare-fun b!1092288 () Bool)

(assert (=> b!1092288 (= e!623832 tp_is_empty!26847)))

(declare-fun mapIsEmpty!42025 () Bool)

(assert (=> mapIsEmpty!42025 mapRes!42025))

(declare-fun res!728927 () Bool)

(assert (=> start!96228 (=> (not res!728927) (not e!623834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96228 (= res!728927 (validMask!0 mask!1414))))

(assert (=> start!96228 e!623834))

(assert (=> start!96228 tp!80384))

(assert (=> start!96228 true))

(assert (=> start!96228 tp_is_empty!26847))

(declare-fun array_inv!26034 (array!70574) Bool)

(assert (=> start!96228 (array_inv!26034 _keys!1070)))

(declare-fun array_inv!26035 (array!70576) Bool)

(assert (=> start!96228 (and (array_inv!26035 _values!874) e!623831)))

(declare-fun b!1092289 () Bool)

(declare-fun res!728926 () Bool)

(assert (=> b!1092289 (=> (not res!728926) (not e!623834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092289 (= res!728926 (validKeyInArray!0 k0!904))))

(declare-fun b!1092290 () Bool)

(declare-fun res!728925 () Bool)

(assert (=> b!1092290 (=> (not res!728925) (not e!623834))))

(assert (=> b!1092290 (= res!728925 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34494 _keys!1070))))))

(assert (= (and start!96228 res!728927) b!1092282))

(assert (= (and b!1092282 res!728928) b!1092284))

(assert (= (and b!1092284 res!728929) b!1092280))

(assert (= (and b!1092280 res!728931) b!1092290))

(assert (= (and b!1092290 res!728925) b!1092289))

(assert (= (and b!1092289 res!728926) b!1092285))

(assert (= (and b!1092285 res!728933) b!1092281))

(assert (= (and b!1092281 res!728932) b!1092279))

(assert (= (and b!1092279 res!728930) b!1092283))

(assert (= (and b!1092286 condMapEmpty!42025) mapIsEmpty!42025))

(assert (= (and b!1092286 (not condMapEmpty!42025)) mapNonEmpty!42025))

(get-info :version)

(assert (= (and mapNonEmpty!42025 ((_ is ValueCellFull!12714) mapValue!42025)) b!1092287))

(assert (= (and b!1092286 ((_ is ValueCellFull!12714) mapDefault!42025)) b!1092288))

(assert (= start!96228 b!1092286))

(declare-fun b_lambda!17545 () Bool)

(assert (=> (not b_lambda!17545) (not b!1092283)))

(declare-fun t!33769 () Bool)

(declare-fun tb!7731 () Bool)

(assert (=> (and start!96228 (= defaultEntry!882 defaultEntry!882) t!33769) tb!7731))

(declare-fun result!15973 () Bool)

(assert (=> tb!7731 (= result!15973 tp_is_empty!26847)))

(assert (=> b!1092283 t!33769))

(declare-fun b_and!36385 () Bool)

(assert (= b_and!36383 (and (=> t!33769 result!15973) b_and!36385)))

(declare-fun m!1012167 () Bool)

(assert (=> start!96228 m!1012167))

(declare-fun m!1012169 () Bool)

(assert (=> start!96228 m!1012169))

(declare-fun m!1012171 () Bool)

(assert (=> start!96228 m!1012171))

(declare-fun m!1012173 () Bool)

(assert (=> b!1092279 m!1012173))

(declare-fun m!1012175 () Bool)

(assert (=> b!1092284 m!1012175))

(declare-fun m!1012177 () Bool)

(assert (=> b!1092289 m!1012177))

(declare-fun m!1012179 () Bool)

(assert (=> b!1092283 m!1012179))

(declare-fun m!1012181 () Bool)

(assert (=> b!1092283 m!1012181))

(declare-fun m!1012183 () Bool)

(assert (=> b!1092283 m!1012183))

(declare-fun m!1012185 () Bool)

(assert (=> b!1092283 m!1012185))

(declare-fun m!1012187 () Bool)

(assert (=> b!1092283 m!1012187))

(declare-fun m!1012189 () Bool)

(assert (=> b!1092283 m!1012189))

(declare-fun m!1012191 () Bool)

(assert (=> b!1092283 m!1012191))

(declare-fun m!1012193 () Bool)

(assert (=> b!1092283 m!1012193))

(declare-fun m!1012195 () Bool)

(assert (=> b!1092283 m!1012195))

(declare-fun m!1012197 () Bool)

(assert (=> b!1092283 m!1012197))

(declare-fun m!1012199 () Bool)

(assert (=> mapNonEmpty!42025 m!1012199))

(declare-fun m!1012201 () Bool)

(assert (=> b!1092281 m!1012201))

(declare-fun m!1012203 () Bool)

(assert (=> b!1092281 m!1012203))

(declare-fun m!1012205 () Bool)

(assert (=> b!1092280 m!1012205))

(declare-fun m!1012207 () Bool)

(assert (=> b!1092285 m!1012207))

(check-sat (not mapNonEmpty!42025) b_and!36385 (not b_next!22845) (not b!1092284) (not b!1092281) tp_is_empty!26847 (not b!1092279) (not b!1092283) (not start!96228) (not b!1092289) (not b!1092280) (not b_lambda!17545))
(check-sat b_and!36385 (not b_next!22845))

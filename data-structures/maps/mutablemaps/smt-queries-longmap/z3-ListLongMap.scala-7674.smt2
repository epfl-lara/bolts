; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96428 () Bool)

(assert start!96428)

(declare-fun b_free!22971 () Bool)

(declare-fun b_next!22971 () Bool)

(assert (=> start!96428 (= b_free!22971 (not b_next!22971))))

(declare-fun tp!80841 () Bool)

(declare-fun b_and!36623 () Bool)

(assert (=> start!96428 (= tp!80841 b_and!36623)))

(declare-fun b!1095484 () Bool)

(declare-fun e!625449 () Bool)

(declare-fun e!625446 () Bool)

(declare-fun mapRes!42292 () Bool)

(assert (=> b!1095484 (= e!625449 (and e!625446 mapRes!42292))))

(declare-fun condMapEmpty!42292 () Bool)

(declare-datatypes ((V!41155 0))(
  ( (V!41156 (val!13567 Int)) )
))
(declare-datatypes ((ValueCell!12801 0))(
  ( (ValueCellFull!12801 (v!16189 V!41155)) (EmptyCell!12801) )
))
(declare-datatypes ((array!70908 0))(
  ( (array!70909 (arr!34122 (Array (_ BitVec 32) ValueCell!12801)) (size!34659 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70908)

(declare-fun mapDefault!42292 () ValueCell!12801)

(assert (=> b!1095484 (= condMapEmpty!42292 (= (arr!34122 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12801)) mapDefault!42292)))))

(declare-fun b!1095485 () Bool)

(declare-fun e!625447 () Bool)

(declare-fun e!625444 () Bool)

(assert (=> b!1095485 (= e!625447 e!625444)))

(declare-fun res!731192 () Bool)

(assert (=> b!1095485 (=> (not res!731192) (not e!625444))))

(declare-datatypes ((array!70910 0))(
  ( (array!70911 (arr!34123 (Array (_ BitVec 32) (_ BitVec 64))) (size!34660 (_ BitVec 32))) )
))
(declare-fun lt!489842 () array!70910)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70910 (_ BitVec 32)) Bool)

(assert (=> b!1095485 (= res!731192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489842 mask!1414))))

(declare-fun _keys!1070 () array!70910)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095485 (= lt!489842 (array!70911 (store (arr!34123 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34660 _keys!1070)))))

(declare-fun b!1095486 () Bool)

(declare-fun res!731189 () Bool)

(assert (=> b!1095486 (=> (not res!731189) (not e!625447))))

(declare-datatypes ((List!23964 0))(
  ( (Nil!23961) (Cons!23960 (h!25169 (_ BitVec 64)) (t!33988 List!23964)) )
))
(declare-fun arrayNoDuplicates!0 (array!70910 (_ BitVec 32) List!23964) Bool)

(assert (=> b!1095486 (= res!731189 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23961))))

(declare-fun b!1095487 () Bool)

(declare-fun tp_is_empty!27021 () Bool)

(assert (=> b!1095487 (= e!625446 tp_is_empty!27021)))

(declare-fun mapNonEmpty!42292 () Bool)

(declare-fun tp!80840 () Bool)

(declare-fun e!625445 () Bool)

(assert (=> mapNonEmpty!42292 (= mapRes!42292 (and tp!80840 e!625445))))

(declare-fun mapRest!42292 () (Array (_ BitVec 32) ValueCell!12801))

(declare-fun mapValue!42292 () ValueCell!12801)

(declare-fun mapKey!42292 () (_ BitVec 32))

(assert (=> mapNonEmpty!42292 (= (arr!34122 _values!874) (store mapRest!42292 mapKey!42292 mapValue!42292))))

(declare-fun b!1095488 () Bool)

(assert (=> b!1095488 (= e!625444 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17294 0))(
  ( (tuple2!17295 (_1!8657 (_ BitVec 64)) (_2!8657 V!41155)) )
))
(declare-datatypes ((List!23965 0))(
  ( (Nil!23962) (Cons!23961 (h!25170 tuple2!17294) (t!33989 List!23965)) )
))
(declare-datatypes ((ListLongMap!15275 0))(
  ( (ListLongMap!15276 (toList!7653 List!23965)) )
))
(declare-fun lt!489840 () ListLongMap!15275)

(declare-fun minValue!831 () V!41155)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41155)

(declare-fun getCurrentListMapNoExtraKeys!4140 (array!70910 array!70908 (_ BitVec 32) (_ BitVec 32) V!41155 V!41155 (_ BitVec 32) Int) ListLongMap!15275)

(declare-fun dynLambda!2271 (Int (_ BitVec 64)) V!41155)

(assert (=> b!1095488 (= lt!489840 (getCurrentListMapNoExtraKeys!4140 lt!489842 (array!70909 (store (arr!34122 _values!874) i!650 (ValueCellFull!12801 (dynLambda!2271 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34659 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489839 () ListLongMap!15275)

(assert (=> b!1095488 (= lt!489839 (getCurrentListMapNoExtraKeys!4140 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!70910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095488 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35979 0))(
  ( (Unit!35980) )
))
(declare-fun lt!489841 () Unit!35979)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70910 (_ BitVec 64) (_ BitVec 32)) Unit!35979)

(assert (=> b!1095488 (= lt!489841 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1095490 () Bool)

(declare-fun res!731193 () Bool)

(assert (=> b!1095490 (=> (not res!731193) (not e!625447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095490 (= res!731193 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42292 () Bool)

(assert (=> mapIsEmpty!42292 mapRes!42292))

(declare-fun b!1095491 () Bool)

(assert (=> b!1095491 (= e!625445 tp_is_empty!27021)))

(declare-fun b!1095492 () Bool)

(declare-fun res!731187 () Bool)

(assert (=> b!1095492 (=> (not res!731187) (not e!625447))))

(assert (=> b!1095492 (= res!731187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095493 () Bool)

(declare-fun res!731191 () Bool)

(assert (=> b!1095493 (=> (not res!731191) (not e!625444))))

(assert (=> b!1095493 (= res!731191 (arrayNoDuplicates!0 lt!489842 #b00000000000000000000000000000000 Nil!23961))))

(declare-fun b!1095489 () Bool)

(declare-fun res!731186 () Bool)

(assert (=> b!1095489 (=> (not res!731186) (not e!625447))))

(assert (=> b!1095489 (= res!731186 (and (= (size!34659 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34660 _keys!1070) (size!34659 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!731190 () Bool)

(assert (=> start!96428 (=> (not res!731190) (not e!625447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96428 (= res!731190 (validMask!0 mask!1414))))

(assert (=> start!96428 e!625447))

(assert (=> start!96428 tp!80841))

(assert (=> start!96428 true))

(assert (=> start!96428 tp_is_empty!27021))

(declare-fun array_inv!26148 (array!70910) Bool)

(assert (=> start!96428 (array_inv!26148 _keys!1070)))

(declare-fun array_inv!26149 (array!70908) Bool)

(assert (=> start!96428 (and (array_inv!26149 _values!874) e!625449)))

(declare-fun b!1095494 () Bool)

(declare-fun res!731188 () Bool)

(assert (=> b!1095494 (=> (not res!731188) (not e!625447))))

(assert (=> b!1095494 (= res!731188 (= (select (arr!34123 _keys!1070) i!650) k0!904))))

(declare-fun b!1095495 () Bool)

(declare-fun res!731185 () Bool)

(assert (=> b!1095495 (=> (not res!731185) (not e!625447))))

(assert (=> b!1095495 (= res!731185 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34660 _keys!1070))))))

(assert (= (and start!96428 res!731190) b!1095489))

(assert (= (and b!1095489 res!731186) b!1095492))

(assert (= (and b!1095492 res!731187) b!1095486))

(assert (= (and b!1095486 res!731189) b!1095495))

(assert (= (and b!1095495 res!731185) b!1095490))

(assert (= (and b!1095490 res!731193) b!1095494))

(assert (= (and b!1095494 res!731188) b!1095485))

(assert (= (and b!1095485 res!731192) b!1095493))

(assert (= (and b!1095493 res!731191) b!1095488))

(assert (= (and b!1095484 condMapEmpty!42292) mapIsEmpty!42292))

(assert (= (and b!1095484 (not condMapEmpty!42292)) mapNonEmpty!42292))

(get-info :version)

(assert (= (and mapNonEmpty!42292 ((_ is ValueCellFull!12801) mapValue!42292)) b!1095491))

(assert (= (and b!1095484 ((_ is ValueCellFull!12801) mapDefault!42292)) b!1095487))

(assert (= start!96428 b!1095484))

(declare-fun b_lambda!17659 () Bool)

(assert (=> (not b_lambda!17659) (not b!1095488)))

(declare-fun t!33987 () Bool)

(declare-fun tb!7845 () Bool)

(assert (=> (and start!96428 (= defaultEntry!882 defaultEntry!882) t!33987) tb!7845))

(declare-fun result!16205 () Bool)

(assert (=> tb!7845 (= result!16205 tp_is_empty!27021)))

(assert (=> b!1095488 t!33987))

(declare-fun b_and!36625 () Bool)

(assert (= b_and!36623 (and (=> t!33987 result!16205) b_and!36625)))

(declare-fun m!1015247 () Bool)

(assert (=> mapNonEmpty!42292 m!1015247))

(declare-fun m!1015249 () Bool)

(assert (=> b!1095488 m!1015249))

(declare-fun m!1015251 () Bool)

(assert (=> b!1095488 m!1015251))

(declare-fun m!1015253 () Bool)

(assert (=> b!1095488 m!1015253))

(declare-fun m!1015255 () Bool)

(assert (=> b!1095488 m!1015255))

(declare-fun m!1015257 () Bool)

(assert (=> b!1095488 m!1015257))

(declare-fun m!1015259 () Bool)

(assert (=> b!1095488 m!1015259))

(declare-fun m!1015261 () Bool)

(assert (=> b!1095486 m!1015261))

(declare-fun m!1015263 () Bool)

(assert (=> b!1095492 m!1015263))

(declare-fun m!1015265 () Bool)

(assert (=> b!1095493 m!1015265))

(declare-fun m!1015267 () Bool)

(assert (=> b!1095494 m!1015267))

(declare-fun m!1015269 () Bool)

(assert (=> b!1095485 m!1015269))

(declare-fun m!1015271 () Bool)

(assert (=> b!1095485 m!1015271))

(declare-fun m!1015273 () Bool)

(assert (=> b!1095490 m!1015273))

(declare-fun m!1015275 () Bool)

(assert (=> start!96428 m!1015275))

(declare-fun m!1015277 () Bool)

(assert (=> start!96428 m!1015277))

(declare-fun m!1015279 () Bool)

(assert (=> start!96428 m!1015279))

(check-sat (not b!1095493) (not b_lambda!17659) (not b!1095485) (not b!1095492) (not mapNonEmpty!42292) (not b!1095490) (not b!1095486) tp_is_empty!27021 (not start!96428) b_and!36625 (not b!1095488) (not b_next!22971))
(check-sat b_and!36625 (not b_next!22971))

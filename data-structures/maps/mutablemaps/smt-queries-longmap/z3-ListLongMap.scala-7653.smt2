; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96276 () Bool)

(assert start!96276)

(declare-fun b_free!22893 () Bool)

(declare-fun b_next!22893 () Bool)

(assert (=> start!96276 (= b_free!22893 (not b_next!22893))))

(declare-fun tp!80529 () Bool)

(declare-fun b_and!36479 () Bool)

(assert (=> start!96276 (= tp!80529 b_and!36479)))

(declare-fun b!1093191 () Bool)

(declare-fun res!729579 () Bool)

(declare-fun e!624264 () Bool)

(assert (=> b!1093191 (=> (not res!729579) (not e!624264))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093191 (= res!729579 (validKeyInArray!0 k0!904))))

(declare-fun b!1093192 () Bool)

(declare-fun e!624263 () Bool)

(declare-fun tp_is_empty!26895 () Bool)

(assert (=> b!1093192 (= e!624263 tp_is_empty!26895)))

(declare-fun b!1093193 () Bool)

(declare-fun res!729576 () Bool)

(assert (=> b!1093193 (=> (not res!729576) (not e!624264))))

(declare-datatypes ((array!70664 0))(
  ( (array!70665 (arr!34002 (Array (_ BitVec 32) (_ BitVec 64))) (size!34539 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70664)

(declare-datatypes ((List!23891 0))(
  ( (Nil!23888) (Cons!23887 (h!25096 (_ BitVec 64)) (t!33849 List!23891)) )
))
(declare-fun arrayNoDuplicates!0 (array!70664 (_ BitVec 32) List!23891) Bool)

(assert (=> b!1093193 (= res!729576 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23888))))

(declare-fun b!1093195 () Bool)

(declare-fun res!729573 () Bool)

(assert (=> b!1093195 (=> (not res!729573) (not e!624264))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40987 0))(
  ( (V!40988 (val!13504 Int)) )
))
(declare-datatypes ((ValueCell!12738 0))(
  ( (ValueCellFull!12738 (v!16126 V!40987)) (EmptyCell!12738) )
))
(declare-datatypes ((array!70666 0))(
  ( (array!70667 (arr!34003 (Array (_ BitVec 32) ValueCell!12738)) (size!34540 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70666)

(assert (=> b!1093195 (= res!729573 (and (= (size!34540 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34539 _keys!1070) (size!34540 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42097 () Bool)

(declare-fun mapRes!42097 () Bool)

(assert (=> mapIsEmpty!42097 mapRes!42097))

(declare-fun b!1093196 () Bool)

(declare-fun res!729574 () Bool)

(assert (=> b!1093196 (=> (not res!729574) (not e!624264))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093196 (= res!729574 (= (select (arr!34002 _keys!1070) i!650) k0!904))))

(declare-fun b!1093197 () Bool)

(declare-fun res!729581 () Bool)

(assert (=> b!1093197 (=> (not res!729581) (not e!624264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70664 (_ BitVec 32)) Bool)

(assert (=> b!1093197 (= res!729581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-datatypes ((tuple2!17246 0))(
  ( (tuple2!17247 (_1!8633 (_ BitVec 64)) (_2!8633 V!40987)) )
))
(declare-datatypes ((List!23892 0))(
  ( (Nil!23889) (Cons!23888 (h!25097 tuple2!17246) (t!33850 List!23892)) )
))
(declare-datatypes ((ListLongMap!15227 0))(
  ( (ListLongMap!15228 (toList!7629 List!23892)) )
))
(declare-fun lt!488830 () ListLongMap!15227)

(declare-fun lt!488828 () Bool)

(declare-fun e!624265 () Bool)

(declare-fun b!1093198 () Bool)

(declare-fun lt!488832 () ListLongMap!15227)

(assert (=> b!1093198 (= e!624265 (not (or (and (not lt!488828) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!488828) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!488828) (not (= lt!488830 lt!488832)) (bvsle #b00000000000000000000000000000000 (size!34539 _keys!1070)))))))

(assert (=> b!1093198 (= lt!488828 (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!488829 () ListLongMap!15227)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40987)

(declare-fun zeroValue!831 () V!40987)

(declare-fun getCurrentListMap!4364 (array!70664 array!70666 (_ BitVec 32) (_ BitVec 32) V!40987 V!40987 (_ BitVec 32) Int) ListLongMap!15227)

(assert (=> b!1093198 (= lt!488829 (getCurrentListMap!4364 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488835 () array!70666)

(declare-fun lt!488833 () array!70664)

(assert (=> b!1093198 (= lt!488830 (getCurrentListMap!4364 lt!488833 lt!488835 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488836 () ListLongMap!15227)

(assert (=> b!1093198 (and (= lt!488832 lt!488836) (= lt!488836 lt!488832))))

(declare-fun lt!488831 () ListLongMap!15227)

(declare-fun -!905 (ListLongMap!15227 (_ BitVec 64)) ListLongMap!15227)

(assert (=> b!1093198 (= lt!488836 (-!905 lt!488831 k0!904))))

(declare-datatypes ((Unit!35925 0))(
  ( (Unit!35926) )
))
(declare-fun lt!488837 () Unit!35925)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!170 (array!70664 array!70666 (_ BitVec 32) (_ BitVec 32) V!40987 V!40987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35925)

(assert (=> b!1093198 (= lt!488837 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!170 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4116 (array!70664 array!70666 (_ BitVec 32) (_ BitVec 32) V!40987 V!40987 (_ BitVec 32) Int) ListLongMap!15227)

(assert (=> b!1093198 (= lt!488832 (getCurrentListMapNoExtraKeys!4116 lt!488833 lt!488835 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2252 (Int (_ BitVec 64)) V!40987)

(assert (=> b!1093198 (= lt!488835 (array!70667 (store (arr!34003 _values!874) i!650 (ValueCellFull!12738 (dynLambda!2252 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34540 _values!874)))))

(assert (=> b!1093198 (= lt!488831 (getCurrentListMapNoExtraKeys!4116 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093198 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488834 () Unit!35925)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70664 (_ BitVec 64) (_ BitVec 32)) Unit!35925)

(assert (=> b!1093198 (= lt!488834 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093199 () Bool)

(declare-fun res!729577 () Bool)

(assert (=> b!1093199 (=> (not res!729577) (not e!624265))))

(assert (=> b!1093199 (= res!729577 (arrayNoDuplicates!0 lt!488833 #b00000000000000000000000000000000 Nil!23888))))

(declare-fun b!1093200 () Bool)

(declare-fun res!729578 () Bool)

(assert (=> b!1093200 (=> (not res!729578) (not e!624264))))

(assert (=> b!1093200 (= res!729578 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34539 _keys!1070))))))

(declare-fun b!1093201 () Bool)

(declare-fun e!624268 () Bool)

(assert (=> b!1093201 (= e!624268 (and e!624263 mapRes!42097))))

(declare-fun condMapEmpty!42097 () Bool)

(declare-fun mapDefault!42097 () ValueCell!12738)

(assert (=> b!1093201 (= condMapEmpty!42097 (= (arr!34003 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12738)) mapDefault!42097)))))

(declare-fun res!729575 () Bool)

(assert (=> start!96276 (=> (not res!729575) (not e!624264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96276 (= res!729575 (validMask!0 mask!1414))))

(assert (=> start!96276 e!624264))

(assert (=> start!96276 tp!80529))

(assert (=> start!96276 true))

(assert (=> start!96276 tp_is_empty!26895))

(declare-fun array_inv!26060 (array!70664) Bool)

(assert (=> start!96276 (array_inv!26060 _keys!1070)))

(declare-fun array_inv!26061 (array!70666) Bool)

(assert (=> start!96276 (and (array_inv!26061 _values!874) e!624268)))

(declare-fun b!1093194 () Bool)

(assert (=> b!1093194 (= e!624264 e!624265)))

(declare-fun res!729580 () Bool)

(assert (=> b!1093194 (=> (not res!729580) (not e!624265))))

(assert (=> b!1093194 (= res!729580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488833 mask!1414))))

(assert (=> b!1093194 (= lt!488833 (array!70665 (store (arr!34002 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34539 _keys!1070)))))

(declare-fun mapNonEmpty!42097 () Bool)

(declare-fun tp!80528 () Bool)

(declare-fun e!624266 () Bool)

(assert (=> mapNonEmpty!42097 (= mapRes!42097 (and tp!80528 e!624266))))

(declare-fun mapRest!42097 () (Array (_ BitVec 32) ValueCell!12738))

(declare-fun mapValue!42097 () ValueCell!12738)

(declare-fun mapKey!42097 () (_ BitVec 32))

(assert (=> mapNonEmpty!42097 (= (arr!34003 _values!874) (store mapRest!42097 mapKey!42097 mapValue!42097))))

(declare-fun b!1093202 () Bool)

(assert (=> b!1093202 (= e!624266 tp_is_empty!26895)))

(assert (= (and start!96276 res!729575) b!1093195))

(assert (= (and b!1093195 res!729573) b!1093197))

(assert (= (and b!1093197 res!729581) b!1093193))

(assert (= (and b!1093193 res!729576) b!1093200))

(assert (= (and b!1093200 res!729578) b!1093191))

(assert (= (and b!1093191 res!729579) b!1093196))

(assert (= (and b!1093196 res!729574) b!1093194))

(assert (= (and b!1093194 res!729580) b!1093199))

(assert (= (and b!1093199 res!729577) b!1093198))

(assert (= (and b!1093201 condMapEmpty!42097) mapIsEmpty!42097))

(assert (= (and b!1093201 (not condMapEmpty!42097)) mapNonEmpty!42097))

(get-info :version)

(assert (= (and mapNonEmpty!42097 ((_ is ValueCellFull!12738) mapValue!42097)) b!1093202))

(assert (= (and b!1093201 ((_ is ValueCellFull!12738) mapDefault!42097)) b!1093192))

(assert (= start!96276 b!1093201))

(declare-fun b_lambda!17593 () Bool)

(assert (=> (not b_lambda!17593) (not b!1093198)))

(declare-fun t!33848 () Bool)

(declare-fun tb!7779 () Bool)

(assert (=> (and start!96276 (= defaultEntry!882 defaultEntry!882) t!33848) tb!7779))

(declare-fun result!16069 () Bool)

(assert (=> tb!7779 (= result!16069 tp_is_empty!26895)))

(assert (=> b!1093198 t!33848))

(declare-fun b_and!36481 () Bool)

(assert (= b_and!36479 (and (=> t!33848 result!16069) b_and!36481)))

(declare-fun m!1013175 () Bool)

(assert (=> b!1093198 m!1013175))

(declare-fun m!1013177 () Bool)

(assert (=> b!1093198 m!1013177))

(declare-fun m!1013179 () Bool)

(assert (=> b!1093198 m!1013179))

(declare-fun m!1013181 () Bool)

(assert (=> b!1093198 m!1013181))

(declare-fun m!1013183 () Bool)

(assert (=> b!1093198 m!1013183))

(declare-fun m!1013185 () Bool)

(assert (=> b!1093198 m!1013185))

(declare-fun m!1013187 () Bool)

(assert (=> b!1093198 m!1013187))

(declare-fun m!1013189 () Bool)

(assert (=> b!1093198 m!1013189))

(declare-fun m!1013191 () Bool)

(assert (=> b!1093198 m!1013191))

(declare-fun m!1013193 () Bool)

(assert (=> b!1093198 m!1013193))

(declare-fun m!1013195 () Bool)

(assert (=> b!1093197 m!1013195))

(declare-fun m!1013197 () Bool)

(assert (=> mapNonEmpty!42097 m!1013197))

(declare-fun m!1013199 () Bool)

(assert (=> b!1093199 m!1013199))

(declare-fun m!1013201 () Bool)

(assert (=> start!96276 m!1013201))

(declare-fun m!1013203 () Bool)

(assert (=> start!96276 m!1013203))

(declare-fun m!1013205 () Bool)

(assert (=> start!96276 m!1013205))

(declare-fun m!1013207 () Bool)

(assert (=> b!1093193 m!1013207))

(declare-fun m!1013209 () Bool)

(assert (=> b!1093194 m!1013209))

(declare-fun m!1013211 () Bool)

(assert (=> b!1093194 m!1013211))

(declare-fun m!1013213 () Bool)

(assert (=> b!1093196 m!1013213))

(declare-fun m!1013215 () Bool)

(assert (=> b!1093191 m!1013215))

(check-sat (not b!1093199) b_and!36481 (not b!1093191) tp_is_empty!26895 (not b!1093197) (not b!1093193) (not mapNonEmpty!42097) (not b_lambda!17593) (not b!1093194) (not b_next!22893) (not start!96276) (not b!1093198))
(check-sat b_and!36481 (not b_next!22893))

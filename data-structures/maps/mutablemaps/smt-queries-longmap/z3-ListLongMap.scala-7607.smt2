; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96000 () Bool)

(assert start!96000)

(declare-fun b_free!22617 () Bool)

(declare-fun b_next!22617 () Bool)

(assert (=> start!96000 (= b_free!22617 (not b_next!22617))))

(declare-fun tp!79701 () Bool)

(declare-fun b_and!35927 () Bool)

(assert (=> start!96000 (= tp!79701 b_and!35927)))

(declare-fun b!1087260 () Bool)

(declare-fun e!621109 () Bool)

(declare-fun e!621105 () Bool)

(assert (=> b!1087260 (= e!621109 (not e!621105))))

(declare-fun res!725170 () Bool)

(assert (=> b!1087260 (=> res!725170 e!621105)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087260 (= res!725170 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40619 0))(
  ( (V!40620 (val!13366 Int)) )
))
(declare-fun minValue!831 () V!40619)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40619)

(declare-datatypes ((array!70132 0))(
  ( (array!70133 (arr!33736 (Array (_ BitVec 32) (_ BitVec 64))) (size!34273 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70132)

(declare-datatypes ((tuple2!17026 0))(
  ( (tuple2!17027 (_1!8523 (_ BitVec 64)) (_2!8523 V!40619)) )
))
(declare-datatypes ((List!23667 0))(
  ( (Nil!23664) (Cons!23663 (h!24872 tuple2!17026) (t!33349 List!23667)) )
))
(declare-datatypes ((ListLongMap!15007 0))(
  ( (ListLongMap!15008 (toList!7519 List!23667)) )
))
(declare-fun lt!483790 () ListLongMap!15007)

(declare-datatypes ((ValueCell!12600 0))(
  ( (ValueCellFull!12600 (v!15988 V!40619)) (EmptyCell!12600) )
))
(declare-datatypes ((array!70134 0))(
  ( (array!70135 (arr!33737 (Array (_ BitVec 32) ValueCell!12600)) (size!34274 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70134)

(declare-fun getCurrentListMap!4272 (array!70132 array!70134 (_ BitVec 32) (_ BitVec 32) V!40619 V!40619 (_ BitVec 32) Int) ListLongMap!15007)

(assert (=> b!1087260 (= lt!483790 (getCurrentListMap!4272 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483796 () array!70132)

(declare-fun lt!483792 () array!70134)

(declare-fun lt!483794 () ListLongMap!15007)

(assert (=> b!1087260 (= lt!483794 (getCurrentListMap!4272 lt!483796 lt!483792 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483793 () ListLongMap!15007)

(declare-fun lt!483789 () ListLongMap!15007)

(assert (=> b!1087260 (and (= lt!483793 lt!483789) (= lt!483789 lt!483793))))

(declare-fun lt!483791 () ListLongMap!15007)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!799 (ListLongMap!15007 (_ BitVec 64)) ListLongMap!15007)

(assert (=> b!1087260 (= lt!483789 (-!799 lt!483791 k0!904))))

(declare-datatypes ((Unit!35713 0))(
  ( (Unit!35714) )
))
(declare-fun lt!483795 () Unit!35713)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!78 (array!70132 array!70134 (_ BitVec 32) (_ BitVec 32) V!40619 V!40619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35713)

(assert (=> b!1087260 (= lt!483795 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!78 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4024 (array!70132 array!70134 (_ BitVec 32) (_ BitVec 32) V!40619 V!40619 (_ BitVec 32) Int) ListLongMap!15007)

(assert (=> b!1087260 (= lt!483793 (getCurrentListMapNoExtraKeys!4024 lt!483796 lt!483792 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2160 (Int (_ BitVec 64)) V!40619)

(assert (=> b!1087260 (= lt!483792 (array!70135 (store (arr!33737 _values!874) i!650 (ValueCellFull!12600 (dynLambda!2160 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34274 _values!874)))))

(assert (=> b!1087260 (= lt!483791 (getCurrentListMapNoExtraKeys!4024 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087260 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483797 () Unit!35713)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70132 (_ BitVec 64) (_ BitVec 32)) Unit!35713)

(assert (=> b!1087260 (= lt!483797 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1087261 () Bool)

(declare-fun res!725161 () Bool)

(declare-fun e!621110 () Bool)

(assert (=> b!1087261 (=> (not res!725161) (not e!621110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70132 (_ BitVec 32)) Bool)

(assert (=> b!1087261 (= res!725161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41683 () Bool)

(declare-fun mapRes!41683 () Bool)

(declare-fun tp!79700 () Bool)

(declare-fun e!621106 () Bool)

(assert (=> mapNonEmpty!41683 (= mapRes!41683 (and tp!79700 e!621106))))

(declare-fun mapValue!41683 () ValueCell!12600)

(declare-fun mapRest!41683 () (Array (_ BitVec 32) ValueCell!12600))

(declare-fun mapKey!41683 () (_ BitVec 32))

(assert (=> mapNonEmpty!41683 (= (arr!33737 _values!874) (store mapRest!41683 mapKey!41683 mapValue!41683))))

(declare-fun b!1087262 () Bool)

(declare-fun tp_is_empty!26619 () Bool)

(assert (=> b!1087262 (= e!621106 tp_is_empty!26619)))

(declare-fun b!1087263 () Bool)

(assert (=> b!1087263 (= e!621105 true)))

(declare-fun e!621111 () Bool)

(assert (=> b!1087263 e!621111))

(declare-fun res!725162 () Bool)

(assert (=> b!1087263 (=> (not res!725162) (not e!621111))))

(declare-fun lt!483788 () tuple2!17026)

(declare-fun +!3246 (ListLongMap!15007 tuple2!17026) ListLongMap!15007)

(assert (=> b!1087263 (= res!725162 (= lt!483794 (+!3246 lt!483793 lt!483788)))))

(assert (=> b!1087263 (= lt!483788 (tuple2!17027 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun res!725166 () Bool)

(assert (=> start!96000 (=> (not res!725166) (not e!621110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96000 (= res!725166 (validMask!0 mask!1414))))

(assert (=> start!96000 e!621110))

(assert (=> start!96000 tp!79701))

(assert (=> start!96000 true))

(assert (=> start!96000 tp_is_empty!26619))

(declare-fun array_inv!25882 (array!70132) Bool)

(assert (=> start!96000 (array_inv!25882 _keys!1070)))

(declare-fun e!621108 () Bool)

(declare-fun array_inv!25883 (array!70134) Bool)

(assert (=> start!96000 (and (array_inv!25883 _values!874) e!621108)))

(declare-fun b!1087264 () Bool)

(declare-fun res!725160 () Bool)

(assert (=> b!1087264 (=> (not res!725160) (not e!621110))))

(assert (=> b!1087264 (= res!725160 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34273 _keys!1070))))))

(declare-fun b!1087265 () Bool)

(declare-fun e!621112 () Bool)

(assert (=> b!1087265 (= e!621108 (and e!621112 mapRes!41683))))

(declare-fun condMapEmpty!41683 () Bool)

(declare-fun mapDefault!41683 () ValueCell!12600)

(assert (=> b!1087265 (= condMapEmpty!41683 (= (arr!33737 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12600)) mapDefault!41683)))))

(declare-fun b!1087266 () Bool)

(declare-fun res!725163 () Bool)

(assert (=> b!1087266 (=> (not res!725163) (not e!621111))))

(assert (=> b!1087266 (= res!725163 (= lt!483790 (+!3246 lt!483791 lt!483788)))))

(declare-fun b!1087267 () Bool)

(assert (=> b!1087267 (= e!621110 e!621109)))

(declare-fun res!725171 () Bool)

(assert (=> b!1087267 (=> (not res!725171) (not e!621109))))

(assert (=> b!1087267 (= res!725171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483796 mask!1414))))

(assert (=> b!1087267 (= lt!483796 (array!70133 (store (arr!33736 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34273 _keys!1070)))))

(declare-fun b!1087268 () Bool)

(declare-fun res!725164 () Bool)

(assert (=> b!1087268 (=> (not res!725164) (not e!621109))))

(declare-datatypes ((List!23668 0))(
  ( (Nil!23665) (Cons!23664 (h!24873 (_ BitVec 64)) (t!33350 List!23668)) )
))
(declare-fun arrayNoDuplicates!0 (array!70132 (_ BitVec 32) List!23668) Bool)

(assert (=> b!1087268 (= res!725164 (arrayNoDuplicates!0 lt!483796 #b00000000000000000000000000000000 Nil!23665))))

(declare-fun b!1087269 () Bool)

(declare-fun res!725169 () Bool)

(assert (=> b!1087269 (=> (not res!725169) (not e!621110))))

(assert (=> b!1087269 (= res!725169 (and (= (size!34274 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34273 _keys!1070) (size!34274 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41683 () Bool)

(assert (=> mapIsEmpty!41683 mapRes!41683))

(declare-fun b!1087270 () Bool)

(assert (=> b!1087270 (= e!621111 (= lt!483794 (+!3246 lt!483789 lt!483788)))))

(declare-fun b!1087271 () Bool)

(declare-fun res!725167 () Bool)

(assert (=> b!1087271 (=> (not res!725167) (not e!621110))))

(assert (=> b!1087271 (= res!725167 (= (select (arr!33736 _keys!1070) i!650) k0!904))))

(declare-fun b!1087272 () Bool)

(assert (=> b!1087272 (= e!621112 tp_is_empty!26619)))

(declare-fun b!1087273 () Bool)

(declare-fun res!725165 () Bool)

(assert (=> b!1087273 (=> (not res!725165) (not e!621110))))

(assert (=> b!1087273 (= res!725165 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23665))))

(declare-fun b!1087274 () Bool)

(declare-fun res!725168 () Bool)

(assert (=> b!1087274 (=> (not res!725168) (not e!621110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087274 (= res!725168 (validKeyInArray!0 k0!904))))

(assert (= (and start!96000 res!725166) b!1087269))

(assert (= (and b!1087269 res!725169) b!1087261))

(assert (= (and b!1087261 res!725161) b!1087273))

(assert (= (and b!1087273 res!725165) b!1087264))

(assert (= (and b!1087264 res!725160) b!1087274))

(assert (= (and b!1087274 res!725168) b!1087271))

(assert (= (and b!1087271 res!725167) b!1087267))

(assert (= (and b!1087267 res!725171) b!1087268))

(assert (= (and b!1087268 res!725164) b!1087260))

(assert (= (and b!1087260 (not res!725170)) b!1087263))

(assert (= (and b!1087263 res!725162) b!1087266))

(assert (= (and b!1087266 res!725163) b!1087270))

(assert (= (and b!1087265 condMapEmpty!41683) mapIsEmpty!41683))

(assert (= (and b!1087265 (not condMapEmpty!41683)) mapNonEmpty!41683))

(get-info :version)

(assert (= (and mapNonEmpty!41683 ((_ is ValueCellFull!12600) mapValue!41683)) b!1087262))

(assert (= (and b!1087265 ((_ is ValueCellFull!12600) mapDefault!41683)) b!1087272))

(assert (= start!96000 b!1087265))

(declare-fun b_lambda!17317 () Bool)

(assert (=> (not b_lambda!17317) (not b!1087260)))

(declare-fun t!33348 () Bool)

(declare-fun tb!7503 () Bool)

(assert (=> (and start!96000 (= defaultEntry!882 defaultEntry!882) t!33348) tb!7503))

(declare-fun result!15517 () Bool)

(assert (=> tb!7503 (= result!15517 tp_is_empty!26619)))

(assert (=> b!1087260 t!33348))

(declare-fun b_and!35929 () Bool)

(assert (= b_and!35927 (and (=> t!33348 result!15517) b_and!35929)))

(declare-fun m!1006269 () Bool)

(assert (=> b!1087268 m!1006269))

(declare-fun m!1006271 () Bool)

(assert (=> b!1087273 m!1006271))

(declare-fun m!1006273 () Bool)

(assert (=> start!96000 m!1006273))

(declare-fun m!1006275 () Bool)

(assert (=> start!96000 m!1006275))

(declare-fun m!1006277 () Bool)

(assert (=> start!96000 m!1006277))

(declare-fun m!1006279 () Bool)

(assert (=> b!1087261 m!1006279))

(declare-fun m!1006281 () Bool)

(assert (=> b!1087267 m!1006281))

(declare-fun m!1006283 () Bool)

(assert (=> b!1087267 m!1006283))

(declare-fun m!1006285 () Bool)

(assert (=> mapNonEmpty!41683 m!1006285))

(declare-fun m!1006287 () Bool)

(assert (=> b!1087263 m!1006287))

(declare-fun m!1006289 () Bool)

(assert (=> b!1087266 m!1006289))

(declare-fun m!1006291 () Bool)

(assert (=> b!1087260 m!1006291))

(declare-fun m!1006293 () Bool)

(assert (=> b!1087260 m!1006293))

(declare-fun m!1006295 () Bool)

(assert (=> b!1087260 m!1006295))

(declare-fun m!1006297 () Bool)

(assert (=> b!1087260 m!1006297))

(declare-fun m!1006299 () Bool)

(assert (=> b!1087260 m!1006299))

(declare-fun m!1006301 () Bool)

(assert (=> b!1087260 m!1006301))

(declare-fun m!1006303 () Bool)

(assert (=> b!1087260 m!1006303))

(declare-fun m!1006305 () Bool)

(assert (=> b!1087260 m!1006305))

(declare-fun m!1006307 () Bool)

(assert (=> b!1087260 m!1006307))

(declare-fun m!1006309 () Bool)

(assert (=> b!1087260 m!1006309))

(declare-fun m!1006311 () Bool)

(assert (=> b!1087271 m!1006311))

(declare-fun m!1006313 () Bool)

(assert (=> b!1087274 m!1006313))

(declare-fun m!1006315 () Bool)

(assert (=> b!1087270 m!1006315))

(check-sat (not b!1087273) (not start!96000) (not b_next!22617) (not b_lambda!17317) (not b!1087270) b_and!35929 (not mapNonEmpty!41683) (not b!1087261) (not b!1087274) (not b!1087267) (not b!1087260) tp_is_empty!26619 (not b!1087263) (not b!1087268) (not b!1087266))
(check-sat b_and!35929 (not b_next!22617))

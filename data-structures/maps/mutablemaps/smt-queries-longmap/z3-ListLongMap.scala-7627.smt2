; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96120 () Bool)

(assert start!96120)

(declare-fun b_free!22737 () Bool)

(declare-fun b_next!22737 () Bool)

(assert (=> start!96120 (= b_free!22737 (not b_next!22737))))

(declare-fun tp!80061 () Bool)

(declare-fun b_and!36167 () Bool)

(assert (=> start!96120 (= tp!80061 b_and!36167)))

(declare-fun res!727162 () Bool)

(declare-fun e!622549 () Bool)

(assert (=> start!96120 (=> (not res!727162) (not e!622549))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96120 (= res!727162 (validMask!0 mask!1414))))

(assert (=> start!96120 e!622549))

(assert (=> start!96120 tp!80061))

(assert (=> start!96120 true))

(declare-fun tp_is_empty!26739 () Bool)

(assert (=> start!96120 tp_is_empty!26739))

(declare-datatypes ((array!70366 0))(
  ( (array!70367 (arr!33853 (Array (_ BitVec 32) (_ BitVec 64))) (size!34390 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70366)

(declare-fun array_inv!25968 (array!70366) Bool)

(assert (=> start!96120 (array_inv!25968 _keys!1070)))

(declare-datatypes ((V!40779 0))(
  ( (V!40780 (val!13426 Int)) )
))
(declare-datatypes ((ValueCell!12660 0))(
  ( (ValueCellFull!12660 (v!16048 V!40779)) (EmptyCell!12660) )
))
(declare-datatypes ((array!70368 0))(
  ( (array!70369 (arr!33854 (Array (_ BitVec 32) ValueCell!12660)) (size!34391 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70368)

(declare-fun e!622546 () Bool)

(declare-fun array_inv!25969 (array!70368) Bool)

(assert (=> start!96120 (and (array_inv!25969 _values!874) e!622546)))

(declare-fun b!1089913 () Bool)

(declare-fun res!727157 () Bool)

(assert (=> b!1089913 (=> (not res!727157) (not e!622549))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089913 (= res!727157 (= (select (arr!33853 _keys!1070) i!650) k0!904))))

(declare-fun b!1089914 () Bool)

(declare-fun e!622552 () Bool)

(assert (=> b!1089914 (= e!622549 e!622552)))

(declare-fun res!727158 () Bool)

(assert (=> b!1089914 (=> (not res!727158) (not e!622552))))

(declare-fun lt!486093 () array!70366)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70366 (_ BitVec 32)) Bool)

(assert (=> b!1089914 (= res!727158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486093 mask!1414))))

(assert (=> b!1089914 (= lt!486093 (array!70367 (store (arr!33853 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34390 _keys!1070)))))

(declare-fun b!1089915 () Bool)

(declare-fun res!727163 () Bool)

(assert (=> b!1089915 (=> (not res!727163) (not e!622549))))

(assert (=> b!1089915 (= res!727163 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34390 _keys!1070))))))

(declare-fun b!1089916 () Bool)

(declare-fun res!727160 () Bool)

(assert (=> b!1089916 (=> (not res!727160) (not e!622549))))

(assert (=> b!1089916 (= res!727160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089917 () Bool)

(declare-fun res!727153 () Bool)

(assert (=> b!1089917 (=> (not res!727153) (not e!622549))))

(declare-datatypes ((List!23775 0))(
  ( (Nil!23772) (Cons!23771 (h!24980 (_ BitVec 64)) (t!33577 List!23775)) )
))
(declare-fun arrayNoDuplicates!0 (array!70366 (_ BitVec 32) List!23775) Bool)

(assert (=> b!1089917 (= res!727153 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23772))))

(declare-fun mapIsEmpty!41863 () Bool)

(declare-fun mapRes!41863 () Bool)

(assert (=> mapIsEmpty!41863 mapRes!41863))

(declare-fun b!1089918 () Bool)

(declare-fun res!727161 () Bool)

(assert (=> b!1089918 (=> (not res!727161) (not e!622552))))

(assert (=> b!1089918 (= res!727161 (arrayNoDuplicates!0 lt!486093 #b00000000000000000000000000000000 Nil!23772))))

(declare-fun b!1089919 () Bool)

(declare-fun e!622551 () Bool)

(declare-fun e!622548 () Bool)

(assert (=> b!1089919 (= e!622551 e!622548)))

(declare-fun res!727159 () Bool)

(assert (=> b!1089919 (=> res!727159 e!622548)))

(assert (=> b!1089919 (= res!727159 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17138 0))(
  ( (tuple2!17139 (_1!8579 (_ BitVec 64)) (_2!8579 V!40779)) )
))
(declare-datatypes ((List!23776 0))(
  ( (Nil!23773) (Cons!23772 (h!24981 tuple2!17138) (t!33578 List!23776)) )
))
(declare-datatypes ((ListLongMap!15119 0))(
  ( (ListLongMap!15120 (toList!7575 List!23776)) )
))
(declare-fun lt!486100 () ListLongMap!15119)

(declare-fun lt!486101 () ListLongMap!15119)

(assert (=> b!1089919 (= lt!486100 lt!486101)))

(declare-fun lt!486099 () ListLongMap!15119)

(declare-fun lt!486091 () tuple2!17138)

(declare-fun +!3286 (ListLongMap!15119 tuple2!17138) ListLongMap!15119)

(assert (=> b!1089919 (= lt!486101 (+!3286 lt!486099 lt!486091))))

(declare-fun lt!486092 () ListLongMap!15119)

(declare-fun lt!486089 () ListLongMap!15119)

(assert (=> b!1089919 (= lt!486092 lt!486089)))

(declare-fun lt!486094 () ListLongMap!15119)

(assert (=> b!1089919 (= lt!486089 (+!3286 lt!486094 lt!486091))))

(declare-fun lt!486095 () ListLongMap!15119)

(assert (=> b!1089919 (= lt!486092 (+!3286 lt!486095 lt!486091))))

(declare-fun minValue!831 () V!40779)

(assert (=> b!1089919 (= lt!486091 (tuple2!17139 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1089920 () Bool)

(declare-fun res!727155 () Bool)

(assert (=> b!1089920 (=> (not res!727155) (not e!622549))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089920 (= res!727155 (and (= (size!34391 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34390 _keys!1070) (size!34391 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089921 () Bool)

(declare-fun e!622545 () Bool)

(assert (=> b!1089921 (= e!622545 tp_is_empty!26739)))

(declare-fun b!1089922 () Bool)

(declare-fun e!622547 () Bool)

(assert (=> b!1089922 (= e!622546 (and e!622547 mapRes!41863))))

(declare-fun condMapEmpty!41863 () Bool)

(declare-fun mapDefault!41863 () ValueCell!12660)

(assert (=> b!1089922 (= condMapEmpty!41863 (= (arr!33854 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12660)) mapDefault!41863)))))

(declare-fun b!1089923 () Bool)

(declare-fun res!727156 () Bool)

(assert (=> b!1089923 (=> (not res!727156) (not e!622549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089923 (= res!727156 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!41863 () Bool)

(declare-fun tp!80060 () Bool)

(assert (=> mapNonEmpty!41863 (= mapRes!41863 (and tp!80060 e!622545))))

(declare-fun mapValue!41863 () ValueCell!12660)

(declare-fun mapKey!41863 () (_ BitVec 32))

(declare-fun mapRest!41863 () (Array (_ BitVec 32) ValueCell!12660))

(assert (=> mapNonEmpty!41863 (= (arr!33854 _values!874) (store mapRest!41863 mapKey!41863 mapValue!41863))))

(declare-fun b!1089924 () Bool)

(assert (=> b!1089924 (= e!622552 (not e!622551))))

(declare-fun res!727154 () Bool)

(assert (=> b!1089924 (=> res!727154 e!622551)))

(assert (=> b!1089924 (= res!727154 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40779)

(declare-fun getCurrentListMap!4316 (array!70366 array!70368 (_ BitVec 32) (_ BitVec 32) V!40779 V!40779 (_ BitVec 32) Int) ListLongMap!15119)

(assert (=> b!1089924 (= lt!486100 (getCurrentListMap!4316 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486098 () array!70368)

(assert (=> b!1089924 (= lt!486092 (getCurrentListMap!4316 lt!486093 lt!486098 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089924 (and (= lt!486095 lt!486094) (= lt!486094 lt!486095))))

(declare-fun -!853 (ListLongMap!15119 (_ BitVec 64)) ListLongMap!15119)

(assert (=> b!1089924 (= lt!486094 (-!853 lt!486099 k0!904))))

(declare-datatypes ((Unit!35821 0))(
  ( (Unit!35822) )
))
(declare-fun lt!486090 () Unit!35821)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!122 (array!70366 array!70368 (_ BitVec 32) (_ BitVec 32) V!40779 V!40779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35821)

(assert (=> b!1089924 (= lt!486090 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!122 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4068 (array!70366 array!70368 (_ BitVec 32) (_ BitVec 32) V!40779 V!40779 (_ BitVec 32) Int) ListLongMap!15119)

(assert (=> b!1089924 (= lt!486095 (getCurrentListMapNoExtraKeys!4068 lt!486093 lt!486098 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2204 (Int (_ BitVec 64)) V!40779)

(assert (=> b!1089924 (= lt!486098 (array!70369 (store (arr!33854 _values!874) i!650 (ValueCellFull!12660 (dynLambda!2204 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34391 _values!874)))))

(assert (=> b!1089924 (= lt!486099 (getCurrentListMapNoExtraKeys!4068 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089924 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486097 () Unit!35821)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70366 (_ BitVec 64) (_ BitVec 32)) Unit!35821)

(assert (=> b!1089924 (= lt!486097 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1089925 () Bool)

(assert (=> b!1089925 (= e!622548 true)))

(assert (=> b!1089925 (= (-!853 lt!486101 k0!904) lt!486089)))

(declare-fun lt!486096 () Unit!35821)

(declare-fun addRemoveCommutativeForDiffKeys!82 (ListLongMap!15119 (_ BitVec 64) V!40779 (_ BitVec 64)) Unit!35821)

(assert (=> b!1089925 (= lt!486096 (addRemoveCommutativeForDiffKeys!82 lt!486099 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1089926 () Bool)

(assert (=> b!1089926 (= e!622547 tp_is_empty!26739)))

(assert (= (and start!96120 res!727162) b!1089920))

(assert (= (and b!1089920 res!727155) b!1089916))

(assert (= (and b!1089916 res!727160) b!1089917))

(assert (= (and b!1089917 res!727153) b!1089915))

(assert (= (and b!1089915 res!727163) b!1089923))

(assert (= (and b!1089923 res!727156) b!1089913))

(assert (= (and b!1089913 res!727157) b!1089914))

(assert (= (and b!1089914 res!727158) b!1089918))

(assert (= (and b!1089918 res!727161) b!1089924))

(assert (= (and b!1089924 (not res!727154)) b!1089919))

(assert (= (and b!1089919 (not res!727159)) b!1089925))

(assert (= (and b!1089922 condMapEmpty!41863) mapIsEmpty!41863))

(assert (= (and b!1089922 (not condMapEmpty!41863)) mapNonEmpty!41863))

(get-info :version)

(assert (= (and mapNonEmpty!41863 ((_ is ValueCellFull!12660) mapValue!41863)) b!1089921))

(assert (= (and b!1089922 ((_ is ValueCellFull!12660) mapDefault!41863)) b!1089926))

(assert (= start!96120 b!1089922))

(declare-fun b_lambda!17437 () Bool)

(assert (=> (not b_lambda!17437) (not b!1089924)))

(declare-fun t!33576 () Bool)

(declare-fun tb!7623 () Bool)

(assert (=> (and start!96120 (= defaultEntry!882 defaultEntry!882) t!33576) tb!7623))

(declare-fun result!15757 () Bool)

(assert (=> tb!7623 (= result!15757 tp_is_empty!26739)))

(assert (=> b!1089924 t!33576))

(declare-fun b_and!36169 () Bool)

(assert (= b_and!36167 (and (=> t!33576 result!15757) b_and!36169)))

(declare-fun m!1009369 () Bool)

(assert (=> b!1089916 m!1009369))

(declare-fun m!1009371 () Bool)

(assert (=> b!1089914 m!1009371))

(declare-fun m!1009373 () Bool)

(assert (=> b!1089914 m!1009373))

(declare-fun m!1009375 () Bool)

(assert (=> mapNonEmpty!41863 m!1009375))

(declare-fun m!1009377 () Bool)

(assert (=> b!1089924 m!1009377))

(declare-fun m!1009379 () Bool)

(assert (=> b!1089924 m!1009379))

(declare-fun m!1009381 () Bool)

(assert (=> b!1089924 m!1009381))

(declare-fun m!1009383 () Bool)

(assert (=> b!1089924 m!1009383))

(declare-fun m!1009385 () Bool)

(assert (=> b!1089924 m!1009385))

(declare-fun m!1009387 () Bool)

(assert (=> b!1089924 m!1009387))

(declare-fun m!1009389 () Bool)

(assert (=> b!1089924 m!1009389))

(declare-fun m!1009391 () Bool)

(assert (=> b!1089924 m!1009391))

(declare-fun m!1009393 () Bool)

(assert (=> b!1089924 m!1009393))

(declare-fun m!1009395 () Bool)

(assert (=> b!1089924 m!1009395))

(declare-fun m!1009397 () Bool)

(assert (=> b!1089917 m!1009397))

(declare-fun m!1009399 () Bool)

(assert (=> start!96120 m!1009399))

(declare-fun m!1009401 () Bool)

(assert (=> start!96120 m!1009401))

(declare-fun m!1009403 () Bool)

(assert (=> start!96120 m!1009403))

(declare-fun m!1009405 () Bool)

(assert (=> b!1089919 m!1009405))

(declare-fun m!1009407 () Bool)

(assert (=> b!1089919 m!1009407))

(declare-fun m!1009409 () Bool)

(assert (=> b!1089919 m!1009409))

(declare-fun m!1009411 () Bool)

(assert (=> b!1089913 m!1009411))

(declare-fun m!1009413 () Bool)

(assert (=> b!1089925 m!1009413))

(declare-fun m!1009415 () Bool)

(assert (=> b!1089925 m!1009415))

(declare-fun m!1009417 () Bool)

(assert (=> b!1089918 m!1009417))

(declare-fun m!1009419 () Bool)

(assert (=> b!1089923 m!1009419))

(check-sat b_and!36169 (not b!1089923) (not b_lambda!17437) (not mapNonEmpty!41863) (not b_next!22737) (not b!1089916) (not b!1089917) (not b!1089914) (not b!1089918) (not b!1089919) (not b!1089924) (not b!1089925) (not start!96120) tp_is_empty!26739)
(check-sat b_and!36169 (not b_next!22737))

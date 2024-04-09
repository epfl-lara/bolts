; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105966 () Bool)

(assert start!105966)

(declare-fun b_free!27459 () Bool)

(declare-fun b_next!27459 () Bool)

(assert (=> start!105966 (= b_free!27459 (not b_next!27459))))

(declare-fun tp!95913 () Bool)

(declare-fun b_and!45385 () Bool)

(assert (=> start!105966 (= tp!95913 b_and!45385)))

(declare-fun mapIsEmpty!50347 () Bool)

(declare-fun mapRes!50347 () Bool)

(assert (=> mapIsEmpty!50347 mapRes!50347))

(declare-fun res!840704 () Bool)

(declare-fun e!718071 () Bool)

(assert (=> start!105966 (=> (not res!840704) (not e!718071))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105966 (= res!840704 (validMask!0 mask!1466))))

(assert (=> start!105966 e!718071))

(assert (=> start!105966 true))

(assert (=> start!105966 tp!95913))

(declare-fun tp_is_empty!32361 () Bool)

(assert (=> start!105966 tp_is_empty!32361))

(declare-datatypes ((array!82321 0))(
  ( (array!82322 (arr!39708 (Array (_ BitVec 32) (_ BitVec 64))) (size!40245 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82321)

(declare-fun array_inv!30179 (array!82321) Bool)

(assert (=> start!105966 (array_inv!30179 _keys!1118)))

(declare-datatypes ((V!48513 0))(
  ( (V!48514 (val!16243 Int)) )
))
(declare-datatypes ((ValueCell!15417 0))(
  ( (ValueCellFull!15417 (v!18947 V!48513)) (EmptyCell!15417) )
))
(declare-datatypes ((array!82323 0))(
  ( (array!82324 (arr!39709 (Array (_ BitVec 32) ValueCell!15417)) (size!40246 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82323)

(declare-fun e!718073 () Bool)

(declare-fun array_inv!30180 (array!82323) Bool)

(assert (=> start!105966 (and (array_inv!30180 _values!914) e!718073)))

(declare-fun b!1261559 () Bool)

(declare-fun e!718072 () Bool)

(assert (=> b!1261559 (= e!718072 tp_is_empty!32361)))

(declare-fun b!1261560 () Bool)

(declare-fun res!840705 () Bool)

(assert (=> b!1261560 (=> (not res!840705) (not e!718071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82321 (_ BitVec 32)) Bool)

(assert (=> b!1261560 (= res!840705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50347 () Bool)

(declare-fun tp!95912 () Bool)

(declare-fun e!718074 () Bool)

(assert (=> mapNonEmpty!50347 (= mapRes!50347 (and tp!95912 e!718074))))

(declare-fun mapKey!50347 () (_ BitVec 32))

(declare-fun mapValue!50347 () ValueCell!15417)

(declare-fun mapRest!50347 () (Array (_ BitVec 32) ValueCell!15417))

(assert (=> mapNonEmpty!50347 (= (arr!39709 _values!914) (store mapRest!50347 mapKey!50347 mapValue!50347))))

(declare-fun b!1261561 () Bool)

(declare-fun res!840703 () Bool)

(assert (=> b!1261561 (=> (not res!840703) (not e!718071))))

(declare-datatypes ((List!28387 0))(
  ( (Nil!28384) (Cons!28383 (h!29592 (_ BitVec 64)) (t!41895 List!28387)) )
))
(declare-fun arrayNoDuplicates!0 (array!82321 (_ BitVec 32) List!28387) Bool)

(assert (=> b!1261561 (= res!840703 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28384))))

(declare-fun b!1261562 () Bool)

(declare-fun res!840707 () Bool)

(assert (=> b!1261562 (=> (not res!840707) (not e!718071))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1261562 (= res!840707 (and (= (size!40246 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40245 _keys!1118) (size!40246 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261563 () Bool)

(declare-fun e!718075 () Bool)

(assert (=> b!1261563 (= e!718071 (not e!718075))))

(declare-fun res!840706 () Bool)

(assert (=> b!1261563 (=> res!840706 e!718075)))

(assert (=> b!1261563 (= res!840706 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!21166 0))(
  ( (tuple2!21167 (_1!10593 (_ BitVec 64)) (_2!10593 V!48513)) )
))
(declare-datatypes ((List!28388 0))(
  ( (Nil!28385) (Cons!28384 (h!29593 tuple2!21166) (t!41896 List!28388)) )
))
(declare-datatypes ((ListLongMap!19051 0))(
  ( (ListLongMap!19052 (toList!9541 List!28388)) )
))
(declare-fun lt!571644 () ListLongMap!19051)

(declare-fun lt!571643 () ListLongMap!19051)

(assert (=> b!1261563 (= lt!571644 lt!571643)))

(declare-fun minValueAfter!43 () V!48513)

(declare-fun zeroValue!871 () V!48513)

(declare-fun minValueBefore!43 () V!48513)

(declare-datatypes ((Unit!42009 0))(
  ( (Unit!42010) )
))
(declare-fun lt!571642 () Unit!42009)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1178 (array!82321 array!82323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48513 V!48513 V!48513 V!48513 (_ BitVec 32) Int) Unit!42009)

(assert (=> b!1261563 (= lt!571642 (lemmaNoChangeToArrayThenSameMapNoExtras!1178 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5882 (array!82321 array!82323 (_ BitVec 32) (_ BitVec 32) V!48513 V!48513 (_ BitVec 32) Int) ListLongMap!19051)

(assert (=> b!1261563 (= lt!571643 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1261563 (= lt!571644 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261564 () Bool)

(assert (=> b!1261564 (= e!718073 (and e!718072 mapRes!50347))))

(declare-fun condMapEmpty!50347 () Bool)

(declare-fun mapDefault!50347 () ValueCell!15417)

(assert (=> b!1261564 (= condMapEmpty!50347 (= (arr!39709 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15417)) mapDefault!50347)))))

(declare-fun b!1261565 () Bool)

(declare-fun contains!7605 (ListLongMap!19051 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4647 (array!82321 array!82323 (_ BitVec 32) (_ BitVec 32) V!48513 V!48513 (_ BitVec 32) Int) ListLongMap!19051)

(assert (=> b!1261565 (= e!718075 (not (contains!7605 (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261566 () Bool)

(assert (=> b!1261566 (= e!718074 tp_is_empty!32361)))

(assert (= (and start!105966 res!840704) b!1261562))

(assert (= (and b!1261562 res!840707) b!1261560))

(assert (= (and b!1261560 res!840705) b!1261561))

(assert (= (and b!1261561 res!840703) b!1261563))

(assert (= (and b!1261563 (not res!840706)) b!1261565))

(assert (= (and b!1261564 condMapEmpty!50347) mapIsEmpty!50347))

(assert (= (and b!1261564 (not condMapEmpty!50347)) mapNonEmpty!50347))

(get-info :version)

(assert (= (and mapNonEmpty!50347 ((_ is ValueCellFull!15417) mapValue!50347)) b!1261566))

(assert (= (and b!1261564 ((_ is ValueCellFull!15417) mapDefault!50347)) b!1261559))

(assert (= start!105966 b!1261564))

(declare-fun m!1162177 () Bool)

(assert (=> b!1261565 m!1162177))

(assert (=> b!1261565 m!1162177))

(declare-fun m!1162179 () Bool)

(assert (=> b!1261565 m!1162179))

(declare-fun m!1162181 () Bool)

(assert (=> b!1261560 m!1162181))

(declare-fun m!1162183 () Bool)

(assert (=> b!1261563 m!1162183))

(declare-fun m!1162185 () Bool)

(assert (=> b!1261563 m!1162185))

(declare-fun m!1162187 () Bool)

(assert (=> b!1261563 m!1162187))

(declare-fun m!1162189 () Bool)

(assert (=> start!105966 m!1162189))

(declare-fun m!1162191 () Bool)

(assert (=> start!105966 m!1162191))

(declare-fun m!1162193 () Bool)

(assert (=> start!105966 m!1162193))

(declare-fun m!1162195 () Bool)

(assert (=> b!1261561 m!1162195))

(declare-fun m!1162197 () Bool)

(assert (=> mapNonEmpty!50347 m!1162197))

(check-sat (not b_next!27459) (not start!105966) (not b!1261560) b_and!45385 (not mapNonEmpty!50347) (not b!1261561) (not b!1261563) (not b!1261565) tp_is_empty!32361)
(check-sat b_and!45385 (not b_next!27459))
(get-model)

(declare-fun d!138381 () Bool)

(declare-fun e!718099 () Bool)

(assert (=> d!138381 e!718099))

(declare-fun res!840725 () Bool)

(assert (=> d!138381 (=> res!840725 e!718099)))

(declare-fun lt!571663 () Bool)

(assert (=> d!138381 (= res!840725 (not lt!571663))))

(declare-fun lt!571665 () Bool)

(assert (=> d!138381 (= lt!571663 lt!571665)))

(declare-fun lt!571664 () Unit!42009)

(declare-fun e!718100 () Unit!42009)

(assert (=> d!138381 (= lt!571664 e!718100)))

(declare-fun c!122616 () Bool)

(assert (=> d!138381 (= c!122616 lt!571665)))

(declare-fun containsKey!621 (List!28388 (_ BitVec 64)) Bool)

(assert (=> d!138381 (= lt!571665 (containsKey!621 (toList!9541 (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138381 (= (contains!7605 (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000) lt!571663)))

(declare-fun b!1261597 () Bool)

(declare-fun lt!571662 () Unit!42009)

(assert (=> b!1261597 (= e!718100 lt!571662)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!431 (List!28388 (_ BitVec 64)) Unit!42009)

(assert (=> b!1261597 (= lt!571662 (lemmaContainsKeyImpliesGetValueByKeyDefined!431 (toList!9541 (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!714 0))(
  ( (Some!713 (v!18949 V!48513)) (None!712) )
))
(declare-fun isDefined!471 (Option!714) Bool)

(declare-fun getValueByKey!663 (List!28388 (_ BitVec 64)) Option!714)

(assert (=> b!1261597 (isDefined!471 (getValueByKey!663 (toList!9541 (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1261598 () Bool)

(declare-fun Unit!42011 () Unit!42009)

(assert (=> b!1261598 (= e!718100 Unit!42011)))

(declare-fun b!1261599 () Bool)

(assert (=> b!1261599 (= e!718099 (isDefined!471 (getValueByKey!663 (toList!9541 (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138381 c!122616) b!1261597))

(assert (= (and d!138381 (not c!122616)) b!1261598))

(assert (= (and d!138381 (not res!840725)) b!1261599))

(declare-fun m!1162221 () Bool)

(assert (=> d!138381 m!1162221))

(declare-fun m!1162223 () Bool)

(assert (=> b!1261597 m!1162223))

(declare-fun m!1162225 () Bool)

(assert (=> b!1261597 m!1162225))

(assert (=> b!1261597 m!1162225))

(declare-fun m!1162227 () Bool)

(assert (=> b!1261597 m!1162227))

(assert (=> b!1261599 m!1162225))

(assert (=> b!1261599 m!1162225))

(assert (=> b!1261599 m!1162227))

(assert (=> b!1261565 d!138381))

(declare-fun bm!61974 () Bool)

(declare-fun call!61979 () ListLongMap!19051)

(declare-fun call!61977 () ListLongMap!19051)

(assert (=> bm!61974 (= call!61979 call!61977)))

(declare-fun b!1261642 () Bool)

(declare-fun e!718130 () Bool)

(declare-fun call!61981 () Bool)

(assert (=> b!1261642 (= e!718130 (not call!61981))))

(declare-fun b!1261643 () Bool)

(declare-fun res!840746 () Bool)

(declare-fun e!718134 () Bool)

(assert (=> b!1261643 (=> (not res!840746) (not e!718134))))

(declare-fun e!718139 () Bool)

(assert (=> b!1261643 (= res!840746 e!718139)))

(declare-fun c!122629 () Bool)

(assert (=> b!1261643 (= c!122629 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1261644 () Bool)

(assert (=> b!1261644 (= e!718134 e!718130)))

(declare-fun c!122631 () Bool)

(assert (=> b!1261644 (= c!122631 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261645 () Bool)

(declare-fun e!718138 () Bool)

(declare-fun e!718132 () Bool)

(assert (=> b!1261645 (= e!718138 e!718132)))

(declare-fun res!840744 () Bool)

(assert (=> b!1261645 (=> (not res!840744) (not e!718132))))

(declare-fun lt!571720 () ListLongMap!19051)

(assert (=> b!1261645 (= res!840744 (contains!7605 lt!571720 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261645 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun b!1261646 () Bool)

(declare-fun e!718129 () Unit!42009)

(declare-fun Unit!42012 () Unit!42009)

(assert (=> b!1261646 (= e!718129 Unit!42012)))

(declare-fun bm!61975 () Bool)

(declare-fun call!61983 () ListLongMap!19051)

(declare-fun call!61982 () ListLongMap!19051)

(assert (=> bm!61975 (= call!61983 call!61982)))

(declare-fun b!1261647 () Bool)

(declare-fun e!718135 () Bool)

(declare-fun apply!1030 (ListLongMap!19051 (_ BitVec 64)) V!48513)

(assert (=> b!1261647 (= e!718135 (= (apply!1030 lt!571720 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1261649 () Bool)

(assert (=> b!1261649 (= e!718139 e!718135)))

(declare-fun res!840752 () Bool)

(declare-fun call!61980 () Bool)

(assert (=> b!1261649 (= res!840752 call!61980)))

(assert (=> b!1261649 (=> (not res!840752) (not e!718135))))

(declare-fun b!1261650 () Bool)

(declare-fun get!20306 (ValueCell!15417 V!48513) V!48513)

(declare-fun dynLambda!3475 (Int (_ BitVec 64)) V!48513)

(assert (=> b!1261650 (= e!718132 (= (apply!1030 lt!571720 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)) (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1261650 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40246 _values!914)))))

(assert (=> b!1261650 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun call!61978 () ListLongMap!19051)

(declare-fun c!122632 () Bool)

(declare-fun bm!61976 () Bool)

(declare-fun c!122630 () Bool)

(declare-fun +!4213 (ListLongMap!19051 tuple2!21166) ListLongMap!19051)

(assert (=> bm!61976 (= call!61982 (+!4213 (ite c!122632 call!61977 (ite c!122630 call!61979 call!61978)) (ite (or c!122632 c!122630) (tuple2!21167 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21167 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun bm!61977 () Bool)

(assert (=> bm!61977 (= call!61981 (contains!7605 lt!571720 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1261651 () Bool)

(declare-fun res!840750 () Bool)

(assert (=> b!1261651 (=> (not res!840750) (not e!718134))))

(assert (=> b!1261651 (= res!840750 e!718138)))

(declare-fun res!840748 () Bool)

(assert (=> b!1261651 (=> res!840748 e!718138)))

(declare-fun e!718131 () Bool)

(assert (=> b!1261651 (= res!840748 (not e!718131))))

(declare-fun res!840745 () Bool)

(assert (=> b!1261651 (=> (not res!840745) (not e!718131))))

(assert (=> b!1261651 (= res!840745 (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun b!1261652 () Bool)

(declare-fun e!718128 () ListLongMap!19051)

(assert (=> b!1261652 (= e!718128 (+!4213 call!61982 (tuple2!21167 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!61978 () Bool)

(assert (=> bm!61978 (= call!61977 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261653 () Bool)

(declare-fun c!122633 () Bool)

(assert (=> b!1261653 (= c!122633 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!718137 () ListLongMap!19051)

(declare-fun e!718136 () ListLongMap!19051)

(assert (=> b!1261653 (= e!718137 e!718136)))

(declare-fun b!1261654 () Bool)

(declare-fun e!718127 () Bool)

(assert (=> b!1261654 (= e!718130 e!718127)))

(declare-fun res!840751 () Bool)

(assert (=> b!1261654 (= res!840751 call!61981)))

(assert (=> b!1261654 (=> (not res!840751) (not e!718127))))

(declare-fun bm!61979 () Bool)

(assert (=> bm!61979 (= call!61978 call!61979)))

(declare-fun b!1261655 () Bool)

(assert (=> b!1261655 (= e!718127 (= (apply!1030 lt!571720 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun d!138383 () Bool)

(assert (=> d!138383 e!718134))

(declare-fun res!840749 () Bool)

(assert (=> d!138383 (=> (not res!840749) (not e!718134))))

(assert (=> d!138383 (= res!840749 (or (bvsge #b00000000000000000000000000000000 (size!40245 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))))

(declare-fun lt!571724 () ListLongMap!19051)

(assert (=> d!138383 (= lt!571720 lt!571724)))

(declare-fun lt!571719 () Unit!42009)

(assert (=> d!138383 (= lt!571719 e!718129)))

(declare-fun c!122634 () Bool)

(declare-fun e!718133 () Bool)

(assert (=> d!138383 (= c!122634 e!718133)))

(declare-fun res!840747 () Bool)

(assert (=> d!138383 (=> (not res!840747) (not e!718133))))

(assert (=> d!138383 (= res!840747 (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> d!138383 (= lt!571724 e!718128)))

(assert (=> d!138383 (= c!122632 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138383 (validMask!0 mask!1466)))

(assert (=> d!138383 (= (getCurrentListMap!4647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571720)))

(declare-fun b!1261648 () Bool)

(assert (=> b!1261648 (= e!718128 e!718137)))

(assert (=> b!1261648 (= c!122630 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261656 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1261656 (= e!718131 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61980 () Bool)

(assert (=> bm!61980 (= call!61980 (contains!7605 lt!571720 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1261657 () Bool)

(assert (=> b!1261657 (= e!718136 call!61983)))

(declare-fun b!1261658 () Bool)

(assert (=> b!1261658 (= e!718136 call!61978)))

(declare-fun b!1261659 () Bool)

(assert (=> b!1261659 (= e!718137 call!61983)))

(declare-fun b!1261660 () Bool)

(assert (=> b!1261660 (= e!718133 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261661 () Bool)

(assert (=> b!1261661 (= e!718139 (not call!61980))))

(declare-fun b!1261662 () Bool)

(declare-fun lt!571730 () Unit!42009)

(assert (=> b!1261662 (= e!718129 lt!571730)))

(declare-fun lt!571731 () ListLongMap!19051)

(assert (=> b!1261662 (= lt!571731 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571721 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571721 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571722 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571722 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571728 () Unit!42009)

(declare-fun addStillContains!1101 (ListLongMap!19051 (_ BitVec 64) V!48513 (_ BitVec 64)) Unit!42009)

(assert (=> b!1261662 (= lt!571728 (addStillContains!1101 lt!571731 lt!571721 zeroValue!871 lt!571722))))

(assert (=> b!1261662 (contains!7605 (+!4213 lt!571731 (tuple2!21167 lt!571721 zeroValue!871)) lt!571722)))

(declare-fun lt!571710 () Unit!42009)

(assert (=> b!1261662 (= lt!571710 lt!571728)))

(declare-fun lt!571713 () ListLongMap!19051)

(assert (=> b!1261662 (= lt!571713 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571718 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571718 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571714 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571714 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571726 () Unit!42009)

(declare-fun addApplyDifferent!535 (ListLongMap!19051 (_ BitVec 64) V!48513 (_ BitVec 64)) Unit!42009)

(assert (=> b!1261662 (= lt!571726 (addApplyDifferent!535 lt!571713 lt!571718 minValueBefore!43 lt!571714))))

(assert (=> b!1261662 (= (apply!1030 (+!4213 lt!571713 (tuple2!21167 lt!571718 minValueBefore!43)) lt!571714) (apply!1030 lt!571713 lt!571714))))

(declare-fun lt!571712 () Unit!42009)

(assert (=> b!1261662 (= lt!571712 lt!571726)))

(declare-fun lt!571723 () ListLongMap!19051)

(assert (=> b!1261662 (= lt!571723 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571716 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571716 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571729 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571729 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571711 () Unit!42009)

(assert (=> b!1261662 (= lt!571711 (addApplyDifferent!535 lt!571723 lt!571716 zeroValue!871 lt!571729))))

(assert (=> b!1261662 (= (apply!1030 (+!4213 lt!571723 (tuple2!21167 lt!571716 zeroValue!871)) lt!571729) (apply!1030 lt!571723 lt!571729))))

(declare-fun lt!571715 () Unit!42009)

(assert (=> b!1261662 (= lt!571715 lt!571711)))

(declare-fun lt!571725 () ListLongMap!19051)

(assert (=> b!1261662 (= lt!571725 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571727 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571727 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!571717 () (_ BitVec 64))

(assert (=> b!1261662 (= lt!571717 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1261662 (= lt!571730 (addApplyDifferent!535 lt!571725 lt!571727 minValueBefore!43 lt!571717))))

(assert (=> b!1261662 (= (apply!1030 (+!4213 lt!571725 (tuple2!21167 lt!571727 minValueBefore!43)) lt!571717) (apply!1030 lt!571725 lt!571717))))

(assert (= (and d!138383 c!122632) b!1261652))

(assert (= (and d!138383 (not c!122632)) b!1261648))

(assert (= (and b!1261648 c!122630) b!1261659))

(assert (= (and b!1261648 (not c!122630)) b!1261653))

(assert (= (and b!1261653 c!122633) b!1261657))

(assert (= (and b!1261653 (not c!122633)) b!1261658))

(assert (= (or b!1261657 b!1261658) bm!61979))

(assert (= (or b!1261659 bm!61979) bm!61974))

(assert (= (or b!1261659 b!1261657) bm!61975))

(assert (= (or b!1261652 bm!61974) bm!61978))

(assert (= (or b!1261652 bm!61975) bm!61976))

(assert (= (and d!138383 res!840747) b!1261660))

(assert (= (and d!138383 c!122634) b!1261662))

(assert (= (and d!138383 (not c!122634)) b!1261646))

(assert (= (and d!138383 res!840749) b!1261651))

(assert (= (and b!1261651 res!840745) b!1261656))

(assert (= (and b!1261651 (not res!840748)) b!1261645))

(assert (= (and b!1261645 res!840744) b!1261650))

(assert (= (and b!1261651 res!840750) b!1261643))

(assert (= (and b!1261643 c!122629) b!1261649))

(assert (= (and b!1261643 (not c!122629)) b!1261661))

(assert (= (and b!1261649 res!840752) b!1261647))

(assert (= (or b!1261649 b!1261661) bm!61980))

(assert (= (and b!1261643 res!840746) b!1261644))

(assert (= (and b!1261644 c!122631) b!1261654))

(assert (= (and b!1261644 (not c!122631)) b!1261642))

(assert (= (and b!1261654 res!840751) b!1261655))

(assert (= (or b!1261654 b!1261642) bm!61977))

(declare-fun b_lambda!22817 () Bool)

(assert (=> (not b_lambda!22817) (not b!1261650)))

(declare-fun t!41899 () Bool)

(declare-fun tb!11325 () Bool)

(assert (=> (and start!105966 (= defaultEntry!922 defaultEntry!922) t!41899) tb!11325))

(declare-fun result!23367 () Bool)

(assert (=> tb!11325 (= result!23367 tp_is_empty!32361)))

(assert (=> b!1261650 t!41899))

(declare-fun b_and!45389 () Bool)

(assert (= b_and!45385 (and (=> t!41899 result!23367) b_and!45389)))

(declare-fun m!1162229 () Bool)

(assert (=> b!1261647 m!1162229))

(declare-fun m!1162231 () Bool)

(assert (=> b!1261652 m!1162231))

(assert (=> bm!61978 m!1162187))

(declare-fun m!1162233 () Bool)

(assert (=> b!1261645 m!1162233))

(assert (=> b!1261645 m!1162233))

(declare-fun m!1162235 () Bool)

(assert (=> b!1261645 m!1162235))

(assert (=> d!138383 m!1162189))

(assert (=> b!1261660 m!1162233))

(assert (=> b!1261660 m!1162233))

(declare-fun m!1162237 () Bool)

(assert (=> b!1261660 m!1162237))

(declare-fun m!1162239 () Bool)

(assert (=> b!1261662 m!1162239))

(declare-fun m!1162241 () Bool)

(assert (=> b!1261662 m!1162241))

(assert (=> b!1261662 m!1162239))

(declare-fun m!1162243 () Bool)

(assert (=> b!1261662 m!1162243))

(declare-fun m!1162245 () Bool)

(assert (=> b!1261662 m!1162245))

(declare-fun m!1162247 () Bool)

(assert (=> b!1261662 m!1162247))

(declare-fun m!1162249 () Bool)

(assert (=> b!1261662 m!1162249))

(declare-fun m!1162251 () Bool)

(assert (=> b!1261662 m!1162251))

(declare-fun m!1162253 () Bool)

(assert (=> b!1261662 m!1162253))

(declare-fun m!1162255 () Bool)

(assert (=> b!1261662 m!1162255))

(assert (=> b!1261662 m!1162187))

(assert (=> b!1261662 m!1162251))

(declare-fun m!1162257 () Bool)

(assert (=> b!1261662 m!1162257))

(declare-fun m!1162259 () Bool)

(assert (=> b!1261662 m!1162259))

(assert (=> b!1261662 m!1162233))

(assert (=> b!1261662 m!1162247))

(declare-fun m!1162261 () Bool)

(assert (=> b!1261662 m!1162261))

(declare-fun m!1162263 () Bool)

(assert (=> b!1261662 m!1162263))

(declare-fun m!1162265 () Bool)

(assert (=> b!1261662 m!1162265))

(assert (=> b!1261662 m!1162263))

(declare-fun m!1162267 () Bool)

(assert (=> b!1261662 m!1162267))

(declare-fun m!1162269 () Bool)

(assert (=> bm!61977 m!1162269))

(assert (=> b!1261656 m!1162233))

(assert (=> b!1261656 m!1162233))

(assert (=> b!1261656 m!1162237))

(declare-fun m!1162271 () Bool)

(assert (=> b!1261650 m!1162271))

(declare-fun m!1162273 () Bool)

(assert (=> b!1261650 m!1162273))

(declare-fun m!1162275 () Bool)

(assert (=> b!1261650 m!1162275))

(assert (=> b!1261650 m!1162273))

(assert (=> b!1261650 m!1162233))

(declare-fun m!1162277 () Bool)

(assert (=> b!1261650 m!1162277))

(assert (=> b!1261650 m!1162271))

(assert (=> b!1261650 m!1162233))

(declare-fun m!1162279 () Bool)

(assert (=> bm!61976 m!1162279))

(declare-fun m!1162281 () Bool)

(assert (=> b!1261655 m!1162281))

(declare-fun m!1162283 () Bool)

(assert (=> bm!61980 m!1162283))

(assert (=> b!1261565 d!138383))

(declare-fun b!1261675 () Bool)

(declare-fun e!718149 () Bool)

(declare-fun e!718148 () Bool)

(assert (=> b!1261675 (= e!718149 e!718148)))

(declare-fun c!122637 () Bool)

(assert (=> b!1261675 (= c!122637 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261676 () Bool)

(declare-fun call!61986 () Bool)

(assert (=> b!1261676 (= e!718148 call!61986)))

(declare-fun b!1261677 () Bool)

(declare-fun e!718151 () Bool)

(assert (=> b!1261677 (= e!718151 e!718149)))

(declare-fun res!840760 () Bool)

(assert (=> b!1261677 (=> (not res!840760) (not e!718149))))

(declare-fun e!718150 () Bool)

(assert (=> b!1261677 (= res!840760 (not e!718150))))

(declare-fun res!840761 () Bool)

(assert (=> b!1261677 (=> (not res!840761) (not e!718150))))

(assert (=> b!1261677 (= res!840761 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138385 () Bool)

(declare-fun res!840759 () Bool)

(assert (=> d!138385 (=> res!840759 e!718151)))

(assert (=> d!138385 (= res!840759 (bvsge #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> d!138385 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28384) e!718151)))

(declare-fun b!1261678 () Bool)

(assert (=> b!1261678 (= e!718148 call!61986)))

(declare-fun bm!61983 () Bool)

(assert (=> bm!61983 (= call!61986 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122637 (Cons!28383 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000) Nil!28384) Nil!28384)))))

(declare-fun b!1261679 () Bool)

(declare-fun contains!7606 (List!28387 (_ BitVec 64)) Bool)

(assert (=> b!1261679 (= e!718150 (contains!7606 Nil!28384 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138385 (not res!840759)) b!1261677))

(assert (= (and b!1261677 res!840761) b!1261679))

(assert (= (and b!1261677 res!840760) b!1261675))

(assert (= (and b!1261675 c!122637) b!1261676))

(assert (= (and b!1261675 (not c!122637)) b!1261678))

(assert (= (or b!1261676 b!1261678) bm!61983))

(assert (=> b!1261675 m!1162233))

(assert (=> b!1261675 m!1162233))

(assert (=> b!1261675 m!1162237))

(assert (=> b!1261677 m!1162233))

(assert (=> b!1261677 m!1162233))

(assert (=> b!1261677 m!1162237))

(assert (=> bm!61983 m!1162233))

(declare-fun m!1162285 () Bool)

(assert (=> bm!61983 m!1162285))

(assert (=> b!1261679 m!1162233))

(assert (=> b!1261679 m!1162233))

(declare-fun m!1162287 () Bool)

(assert (=> b!1261679 m!1162287))

(assert (=> b!1261561 d!138385))

(declare-fun d!138387 () Bool)

(assert (=> d!138387 (= (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571734 () Unit!42009)

(declare-fun choose!1877 (array!82321 array!82323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48513 V!48513 V!48513 V!48513 (_ BitVec 32) Int) Unit!42009)

(assert (=> d!138387 (= lt!571734 (choose!1877 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138387 (validMask!0 mask!1466)))

(assert (=> d!138387 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1178 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571734)))

(declare-fun bs!35705 () Bool)

(assert (= bs!35705 d!138387))

(assert (=> bs!35705 m!1162187))

(assert (=> bs!35705 m!1162185))

(declare-fun m!1162289 () Bool)

(assert (=> bs!35705 m!1162289))

(assert (=> bs!35705 m!1162189))

(assert (=> b!1261563 d!138387))

(declare-fun b!1261704 () Bool)

(declare-fun e!718171 () ListLongMap!19051)

(declare-fun call!61989 () ListLongMap!19051)

(assert (=> b!1261704 (= e!718171 call!61989)))

(declare-fun d!138389 () Bool)

(declare-fun e!718166 () Bool)

(assert (=> d!138389 e!718166))

(declare-fun res!840772 () Bool)

(assert (=> d!138389 (=> (not res!840772) (not e!718166))))

(declare-fun lt!571753 () ListLongMap!19051)

(assert (=> d!138389 (= res!840772 (not (contains!7605 lt!571753 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!718170 () ListLongMap!19051)

(assert (=> d!138389 (= lt!571753 e!718170)))

(declare-fun c!122647 () Bool)

(assert (=> d!138389 (= c!122647 (bvsge #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> d!138389 (validMask!0 mask!1466)))

(assert (=> d!138389 (= (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571753)))

(declare-fun b!1261705 () Bool)

(declare-fun e!718168 () Bool)

(declare-fun e!718169 () Bool)

(assert (=> b!1261705 (= e!718168 e!718169)))

(declare-fun c!122646 () Bool)

(assert (=> b!1261705 (= c!122646 (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun bm!61986 () Bool)

(assert (=> bm!61986 (= call!61989 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1261706 () Bool)

(assert (=> b!1261706 (= e!718169 (= lt!571753 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1261707 () Bool)

(assert (=> b!1261707 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> b!1261707 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40246 _values!914)))))

(declare-fun e!718172 () Bool)

(assert (=> b!1261707 (= e!718172 (= (apply!1030 lt!571753 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)) (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1261708 () Bool)

(declare-fun e!718167 () Bool)

(assert (=> b!1261708 (= e!718167 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261708 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1261709 () Bool)

(assert (=> b!1261709 (= e!718170 (ListLongMap!19052 Nil!28385))))

(declare-fun b!1261710 () Bool)

(declare-fun res!840771 () Bool)

(assert (=> b!1261710 (=> (not res!840771) (not e!718166))))

(assert (=> b!1261710 (= res!840771 (not (contains!7605 lt!571753 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261711 () Bool)

(declare-fun lt!571749 () Unit!42009)

(declare-fun lt!571754 () Unit!42009)

(assert (=> b!1261711 (= lt!571749 lt!571754)))

(declare-fun lt!571751 () ListLongMap!19051)

(declare-fun lt!571755 () V!48513)

(declare-fun lt!571750 () (_ BitVec 64))

(declare-fun lt!571752 () (_ BitVec 64))

(assert (=> b!1261711 (not (contains!7605 (+!4213 lt!571751 (tuple2!21167 lt!571750 lt!571755)) lt!571752))))

(declare-fun addStillNotContains!325 (ListLongMap!19051 (_ BitVec 64) V!48513 (_ BitVec 64)) Unit!42009)

(assert (=> b!1261711 (= lt!571754 (addStillNotContains!325 lt!571751 lt!571750 lt!571755 lt!571752))))

(assert (=> b!1261711 (= lt!571752 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1261711 (= lt!571755 (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1261711 (= lt!571750 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1261711 (= lt!571751 call!61989)))

(assert (=> b!1261711 (= e!718171 (+!4213 call!61989 (tuple2!21167 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000) (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1261712 () Bool)

(assert (=> b!1261712 (= e!718168 e!718172)))

(assert (=> b!1261712 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun res!840773 () Bool)

(assert (=> b!1261712 (= res!840773 (contains!7605 lt!571753 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261712 (=> (not res!840773) (not e!718172))))

(declare-fun b!1261713 () Bool)

(assert (=> b!1261713 (= e!718170 e!718171)))

(declare-fun c!122648 () Bool)

(assert (=> b!1261713 (= c!122648 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261714 () Bool)

(assert (=> b!1261714 (= e!718166 e!718168)))

(declare-fun c!122649 () Bool)

(assert (=> b!1261714 (= c!122649 e!718167)))

(declare-fun res!840770 () Bool)

(assert (=> b!1261714 (=> (not res!840770) (not e!718167))))

(assert (=> b!1261714 (= res!840770 (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun b!1261715 () Bool)

(declare-fun isEmpty!1040 (ListLongMap!19051) Bool)

(assert (=> b!1261715 (= e!718169 (isEmpty!1040 lt!571753))))

(assert (= (and d!138389 c!122647) b!1261709))

(assert (= (and d!138389 (not c!122647)) b!1261713))

(assert (= (and b!1261713 c!122648) b!1261711))

(assert (= (and b!1261713 (not c!122648)) b!1261704))

(assert (= (or b!1261711 b!1261704) bm!61986))

(assert (= (and d!138389 res!840772) b!1261710))

(assert (= (and b!1261710 res!840771) b!1261714))

(assert (= (and b!1261714 res!840770) b!1261708))

(assert (= (and b!1261714 c!122649) b!1261712))

(assert (= (and b!1261714 (not c!122649)) b!1261705))

(assert (= (and b!1261712 res!840773) b!1261707))

(assert (= (and b!1261705 c!122646) b!1261706))

(assert (= (and b!1261705 (not c!122646)) b!1261715))

(declare-fun b_lambda!22819 () Bool)

(assert (=> (not b_lambda!22819) (not b!1261707)))

(assert (=> b!1261707 t!41899))

(declare-fun b_and!45391 () Bool)

(assert (= b_and!45389 (and (=> t!41899 result!23367) b_and!45391)))

(declare-fun b_lambda!22821 () Bool)

(assert (=> (not b_lambda!22821) (not b!1261711)))

(assert (=> b!1261711 t!41899))

(declare-fun b_and!45393 () Bool)

(assert (= b_and!45391 (and (=> t!41899 result!23367) b_and!45393)))

(declare-fun m!1162291 () Bool)

(assert (=> b!1261710 m!1162291))

(declare-fun m!1162293 () Bool)

(assert (=> b!1261715 m!1162293))

(declare-fun m!1162295 () Bool)

(assert (=> d!138389 m!1162295))

(assert (=> d!138389 m!1162189))

(assert (=> b!1261711 m!1162271))

(assert (=> b!1261711 m!1162271))

(assert (=> b!1261711 m!1162273))

(assert (=> b!1261711 m!1162275))

(declare-fun m!1162297 () Bool)

(assert (=> b!1261711 m!1162297))

(declare-fun m!1162299 () Bool)

(assert (=> b!1261711 m!1162299))

(declare-fun m!1162301 () Bool)

(assert (=> b!1261711 m!1162301))

(declare-fun m!1162303 () Bool)

(assert (=> b!1261711 m!1162303))

(assert (=> b!1261711 m!1162233))

(assert (=> b!1261711 m!1162297))

(assert (=> b!1261711 m!1162273))

(assert (=> b!1261708 m!1162233))

(assert (=> b!1261708 m!1162233))

(assert (=> b!1261708 m!1162237))

(declare-fun m!1162305 () Bool)

(assert (=> b!1261706 m!1162305))

(assert (=> b!1261712 m!1162233))

(assert (=> b!1261712 m!1162233))

(declare-fun m!1162307 () Bool)

(assert (=> b!1261712 m!1162307))

(assert (=> bm!61986 m!1162305))

(assert (=> b!1261713 m!1162233))

(assert (=> b!1261713 m!1162233))

(assert (=> b!1261713 m!1162237))

(assert (=> b!1261707 m!1162271))

(assert (=> b!1261707 m!1162271))

(assert (=> b!1261707 m!1162273))

(assert (=> b!1261707 m!1162275))

(assert (=> b!1261707 m!1162273))

(assert (=> b!1261707 m!1162233))

(assert (=> b!1261707 m!1162233))

(declare-fun m!1162309 () Bool)

(assert (=> b!1261707 m!1162309))

(assert (=> b!1261563 d!138389))

(declare-fun b!1261716 () Bool)

(declare-fun e!718178 () ListLongMap!19051)

(declare-fun call!61990 () ListLongMap!19051)

(assert (=> b!1261716 (= e!718178 call!61990)))

(declare-fun d!138391 () Bool)

(declare-fun e!718173 () Bool)

(assert (=> d!138391 e!718173))

(declare-fun res!840776 () Bool)

(assert (=> d!138391 (=> (not res!840776) (not e!718173))))

(declare-fun lt!571760 () ListLongMap!19051)

(assert (=> d!138391 (= res!840776 (not (contains!7605 lt!571760 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!718177 () ListLongMap!19051)

(assert (=> d!138391 (= lt!571760 e!718177)))

(declare-fun c!122651 () Bool)

(assert (=> d!138391 (= c!122651 (bvsge #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> d!138391 (validMask!0 mask!1466)))

(assert (=> d!138391 (= (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!571760)))

(declare-fun b!1261717 () Bool)

(declare-fun e!718175 () Bool)

(declare-fun e!718176 () Bool)

(assert (=> b!1261717 (= e!718175 e!718176)))

(declare-fun c!122650 () Bool)

(assert (=> b!1261717 (= c!122650 (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun bm!61987 () Bool)

(assert (=> bm!61987 (= call!61990 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1261718 () Bool)

(assert (=> b!1261718 (= e!718176 (= lt!571760 (getCurrentListMapNoExtraKeys!5882 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1261719 () Bool)

(assert (=> b!1261719 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> b!1261719 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40246 _values!914)))))

(declare-fun e!718179 () Bool)

(assert (=> b!1261719 (= e!718179 (= (apply!1030 lt!571760 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)) (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1261720 () Bool)

(declare-fun e!718174 () Bool)

(assert (=> b!1261720 (= e!718174 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261720 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1261721 () Bool)

(assert (=> b!1261721 (= e!718177 (ListLongMap!19052 Nil!28385))))

(declare-fun b!1261722 () Bool)

(declare-fun res!840775 () Bool)

(assert (=> b!1261722 (=> (not res!840775) (not e!718173))))

(assert (=> b!1261722 (= res!840775 (not (contains!7605 lt!571760 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1261723 () Bool)

(declare-fun lt!571756 () Unit!42009)

(declare-fun lt!571761 () Unit!42009)

(assert (=> b!1261723 (= lt!571756 lt!571761)))

(declare-fun lt!571759 () (_ BitVec 64))

(declare-fun lt!571758 () ListLongMap!19051)

(declare-fun lt!571757 () (_ BitVec 64))

(declare-fun lt!571762 () V!48513)

(assert (=> b!1261723 (not (contains!7605 (+!4213 lt!571758 (tuple2!21167 lt!571757 lt!571762)) lt!571759))))

(assert (=> b!1261723 (= lt!571761 (addStillNotContains!325 lt!571758 lt!571757 lt!571762 lt!571759))))

(assert (=> b!1261723 (= lt!571759 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1261723 (= lt!571762 (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1261723 (= lt!571757 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1261723 (= lt!571758 call!61990)))

(assert (=> b!1261723 (= e!718178 (+!4213 call!61990 (tuple2!21167 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000) (get!20306 (select (arr!39709 _values!914) #b00000000000000000000000000000000) (dynLambda!3475 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1261724 () Bool)

(assert (=> b!1261724 (= e!718175 e!718179)))

(assert (=> b!1261724 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun res!840777 () Bool)

(assert (=> b!1261724 (= res!840777 (contains!7605 lt!571760 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1261724 (=> (not res!840777) (not e!718179))))

(declare-fun b!1261725 () Bool)

(assert (=> b!1261725 (= e!718177 e!718178)))

(declare-fun c!122652 () Bool)

(assert (=> b!1261725 (= c!122652 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1261726 () Bool)

(assert (=> b!1261726 (= e!718173 e!718175)))

(declare-fun c!122653 () Bool)

(assert (=> b!1261726 (= c!122653 e!718174)))

(declare-fun res!840774 () Bool)

(assert (=> b!1261726 (=> (not res!840774) (not e!718174))))

(assert (=> b!1261726 (= res!840774 (bvslt #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(declare-fun b!1261727 () Bool)

(assert (=> b!1261727 (= e!718176 (isEmpty!1040 lt!571760))))

(assert (= (and d!138391 c!122651) b!1261721))

(assert (= (and d!138391 (not c!122651)) b!1261725))

(assert (= (and b!1261725 c!122652) b!1261723))

(assert (= (and b!1261725 (not c!122652)) b!1261716))

(assert (= (or b!1261723 b!1261716) bm!61987))

(assert (= (and d!138391 res!840776) b!1261722))

(assert (= (and b!1261722 res!840775) b!1261726))

(assert (= (and b!1261726 res!840774) b!1261720))

(assert (= (and b!1261726 c!122653) b!1261724))

(assert (= (and b!1261726 (not c!122653)) b!1261717))

(assert (= (and b!1261724 res!840777) b!1261719))

(assert (= (and b!1261717 c!122650) b!1261718))

(assert (= (and b!1261717 (not c!122650)) b!1261727))

(declare-fun b_lambda!22823 () Bool)

(assert (=> (not b_lambda!22823) (not b!1261719)))

(assert (=> b!1261719 t!41899))

(declare-fun b_and!45395 () Bool)

(assert (= b_and!45393 (and (=> t!41899 result!23367) b_and!45395)))

(declare-fun b_lambda!22825 () Bool)

(assert (=> (not b_lambda!22825) (not b!1261723)))

(assert (=> b!1261723 t!41899))

(declare-fun b_and!45397 () Bool)

(assert (= b_and!45395 (and (=> t!41899 result!23367) b_and!45397)))

(declare-fun m!1162311 () Bool)

(assert (=> b!1261722 m!1162311))

(declare-fun m!1162313 () Bool)

(assert (=> b!1261727 m!1162313))

(declare-fun m!1162315 () Bool)

(assert (=> d!138391 m!1162315))

(assert (=> d!138391 m!1162189))

(assert (=> b!1261723 m!1162271))

(assert (=> b!1261723 m!1162271))

(assert (=> b!1261723 m!1162273))

(assert (=> b!1261723 m!1162275))

(declare-fun m!1162317 () Bool)

(assert (=> b!1261723 m!1162317))

(declare-fun m!1162319 () Bool)

(assert (=> b!1261723 m!1162319))

(declare-fun m!1162321 () Bool)

(assert (=> b!1261723 m!1162321))

(declare-fun m!1162323 () Bool)

(assert (=> b!1261723 m!1162323))

(assert (=> b!1261723 m!1162233))

(assert (=> b!1261723 m!1162317))

(assert (=> b!1261723 m!1162273))

(assert (=> b!1261720 m!1162233))

(assert (=> b!1261720 m!1162233))

(assert (=> b!1261720 m!1162237))

(declare-fun m!1162325 () Bool)

(assert (=> b!1261718 m!1162325))

(assert (=> b!1261724 m!1162233))

(assert (=> b!1261724 m!1162233))

(declare-fun m!1162327 () Bool)

(assert (=> b!1261724 m!1162327))

(assert (=> bm!61987 m!1162325))

(assert (=> b!1261725 m!1162233))

(assert (=> b!1261725 m!1162233))

(assert (=> b!1261725 m!1162237))

(assert (=> b!1261719 m!1162271))

(assert (=> b!1261719 m!1162271))

(assert (=> b!1261719 m!1162273))

(assert (=> b!1261719 m!1162275))

(assert (=> b!1261719 m!1162273))

(assert (=> b!1261719 m!1162233))

(assert (=> b!1261719 m!1162233))

(declare-fun m!1162329 () Bool)

(assert (=> b!1261719 m!1162329))

(assert (=> b!1261563 d!138391))

(declare-fun d!138393 () Bool)

(assert (=> d!138393 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105966 d!138393))

(declare-fun d!138395 () Bool)

(assert (=> d!138395 (= (array_inv!30179 _keys!1118) (bvsge (size!40245 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105966 d!138395))

(declare-fun d!138397 () Bool)

(assert (=> d!138397 (= (array_inv!30180 _values!914) (bvsge (size!40246 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105966 d!138397))

(declare-fun b!1261736 () Bool)

(declare-fun e!718188 () Bool)

(declare-fun call!61993 () Bool)

(assert (=> b!1261736 (= e!718188 call!61993)))

(declare-fun d!138399 () Bool)

(declare-fun res!840783 () Bool)

(declare-fun e!718187 () Bool)

(assert (=> d!138399 (=> res!840783 e!718187)))

(assert (=> d!138399 (= res!840783 (bvsge #b00000000000000000000000000000000 (size!40245 _keys!1118)))))

(assert (=> d!138399 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!718187)))

(declare-fun b!1261737 () Bool)

(declare-fun e!718186 () Bool)

(assert (=> b!1261737 (= e!718186 call!61993)))

(declare-fun b!1261738 () Bool)

(assert (=> b!1261738 (= e!718188 e!718186)))

(declare-fun lt!571770 () (_ BitVec 64))

(assert (=> b!1261738 (= lt!571770 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!571769 () Unit!42009)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82321 (_ BitVec 64) (_ BitVec 32)) Unit!42009)

(assert (=> b!1261738 (= lt!571769 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!571770 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1261738 (arrayContainsKey!0 _keys!1118 lt!571770 #b00000000000000000000000000000000)))

(declare-fun lt!571771 () Unit!42009)

(assert (=> b!1261738 (= lt!571771 lt!571769)))

(declare-fun res!840782 () Bool)

(declare-datatypes ((SeekEntryResult!9970 0))(
  ( (MissingZero!9970 (index!42250 (_ BitVec 32))) (Found!9970 (index!42251 (_ BitVec 32))) (Intermediate!9970 (undefined!10782 Bool) (index!42252 (_ BitVec 32)) (x!111181 (_ BitVec 32))) (Undefined!9970) (MissingVacant!9970 (index!42253 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82321 (_ BitVec 32)) SeekEntryResult!9970)

(assert (=> b!1261738 (= res!840782 (= (seekEntryOrOpen!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9970 #b00000000000000000000000000000000)))))

(assert (=> b!1261738 (=> (not res!840782) (not e!718186))))

(declare-fun bm!61990 () Bool)

(assert (=> bm!61990 (= call!61993 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1261739 () Bool)

(assert (=> b!1261739 (= e!718187 e!718188)))

(declare-fun c!122656 () Bool)

(assert (=> b!1261739 (= c!122656 (validKeyInArray!0 (select (arr!39708 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138399 (not res!840783)) b!1261739))

(assert (= (and b!1261739 c!122656) b!1261738))

(assert (= (and b!1261739 (not c!122656)) b!1261736))

(assert (= (and b!1261738 res!840782) b!1261737))

(assert (= (or b!1261737 b!1261736) bm!61990))

(assert (=> b!1261738 m!1162233))

(declare-fun m!1162331 () Bool)

(assert (=> b!1261738 m!1162331))

(declare-fun m!1162333 () Bool)

(assert (=> b!1261738 m!1162333))

(assert (=> b!1261738 m!1162233))

(declare-fun m!1162335 () Bool)

(assert (=> b!1261738 m!1162335))

(declare-fun m!1162337 () Bool)

(assert (=> bm!61990 m!1162337))

(assert (=> b!1261739 m!1162233))

(assert (=> b!1261739 m!1162233))

(assert (=> b!1261739 m!1162237))

(assert (=> b!1261560 d!138399))

(declare-fun mapIsEmpty!50353 () Bool)

(declare-fun mapRes!50353 () Bool)

(assert (=> mapIsEmpty!50353 mapRes!50353))

(declare-fun b!1261747 () Bool)

(declare-fun e!718194 () Bool)

(assert (=> b!1261747 (= e!718194 tp_is_empty!32361)))

(declare-fun b!1261746 () Bool)

(declare-fun e!718193 () Bool)

(assert (=> b!1261746 (= e!718193 tp_is_empty!32361)))

(declare-fun mapNonEmpty!50353 () Bool)

(declare-fun tp!95922 () Bool)

(assert (=> mapNonEmpty!50353 (= mapRes!50353 (and tp!95922 e!718193))))

(declare-fun mapValue!50353 () ValueCell!15417)

(declare-fun mapKey!50353 () (_ BitVec 32))

(declare-fun mapRest!50353 () (Array (_ BitVec 32) ValueCell!15417))

(assert (=> mapNonEmpty!50353 (= mapRest!50347 (store mapRest!50353 mapKey!50353 mapValue!50353))))

(declare-fun condMapEmpty!50353 () Bool)

(declare-fun mapDefault!50353 () ValueCell!15417)

(assert (=> mapNonEmpty!50347 (= condMapEmpty!50353 (= mapRest!50347 ((as const (Array (_ BitVec 32) ValueCell!15417)) mapDefault!50353)))))

(assert (=> mapNonEmpty!50347 (= tp!95912 (and e!718194 mapRes!50353))))

(assert (= (and mapNonEmpty!50347 condMapEmpty!50353) mapIsEmpty!50353))

(assert (= (and mapNonEmpty!50347 (not condMapEmpty!50353)) mapNonEmpty!50353))

(assert (= (and mapNonEmpty!50353 ((_ is ValueCellFull!15417) mapValue!50353)) b!1261746))

(assert (= (and mapNonEmpty!50347 ((_ is ValueCellFull!15417) mapDefault!50353)) b!1261747))

(declare-fun m!1162339 () Bool)

(assert (=> mapNonEmpty!50353 m!1162339))

(declare-fun b_lambda!22827 () Bool)

(assert (= b_lambda!22817 (or (and start!105966 b_free!27459) b_lambda!22827)))

(declare-fun b_lambda!22829 () Bool)

(assert (= b_lambda!22825 (or (and start!105966 b_free!27459) b_lambda!22829)))

(declare-fun b_lambda!22831 () Bool)

(assert (= b_lambda!22823 (or (and start!105966 b_free!27459) b_lambda!22831)))

(declare-fun b_lambda!22833 () Bool)

(assert (= b_lambda!22819 (or (and start!105966 b_free!27459) b_lambda!22833)))

(declare-fun b_lambda!22835 () Bool)

(assert (= b_lambda!22821 (or (and start!105966 b_free!27459) b_lambda!22835)))

(check-sat (not b!1261739) (not b!1261652) (not d!138387) (not d!138383) (not b!1261662) (not b_lambda!22827) (not b!1261656) (not b!1261707) b_and!45397 (not b!1261599) (not bm!61978) (not b!1261597) (not b!1261713) (not bm!61983) (not b!1261718) (not b_next!27459) (not b!1261719) (not b!1261722) (not b!1261675) (not b!1261655) (not b!1261677) (not bm!61987) (not bm!61980) (not d!138389) (not b!1261708) (not b_lambda!22833) (not b!1261650) (not d!138391) (not b!1261710) (not b!1261727) (not b!1261660) (not b_lambda!22831) (not b!1261720) (not b!1261724) (not b!1261647) (not bm!61977) (not b!1261738) (not d!138381) (not bm!61976) (not b!1261706) (not b!1261711) (not b!1261712) (not b!1261723) (not b!1261679) (not b!1261645) (not bm!61990) (not b_lambda!22829) (not bm!61986) (not b!1261725) (not mapNonEmpty!50353) (not b!1261715) tp_is_empty!32361 (not b_lambda!22835))
(check-sat b_and!45397 (not b_next!27459))

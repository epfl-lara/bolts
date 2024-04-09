; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106104 () Bool)

(assert start!106104)

(declare-fun b_free!27501 () Bool)

(declare-fun b_next!27501 () Bool)

(assert (=> start!106104 (= b_free!27501 (not b_next!27501))))

(declare-fun tp!96053 () Bool)

(declare-fun b_and!45485 () Bool)

(assert (=> start!106104 (= tp!96053 b_and!45485)))

(declare-fun mapNonEmpty!50425 () Bool)

(declare-fun mapRes!50425 () Bool)

(declare-fun tp!96054 () Bool)

(declare-fun e!719034 () Bool)

(assert (=> mapNonEmpty!50425 (= mapRes!50425 (and tp!96054 e!719034))))

(declare-fun mapKey!50425 () (_ BitVec 32))

(declare-datatypes ((V!48569 0))(
  ( (V!48570 (val!16264 Int)) )
))
(declare-datatypes ((ValueCell!15438 0))(
  ( (ValueCellFull!15438 (v!18973 V!48569)) (EmptyCell!15438) )
))
(declare-datatypes ((array!82411 0))(
  ( (array!82412 (arr!39748 (Array (_ BitVec 32) ValueCell!15438)) (size!40285 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82411)

(declare-fun mapValue!50425 () ValueCell!15438)

(declare-fun mapRest!50425 () (Array (_ BitVec 32) ValueCell!15438))

(assert (=> mapNonEmpty!50425 (= (arr!39748 _values!914) (store mapRest!50425 mapKey!50425 mapValue!50425))))

(declare-fun defaultEntry!922 () Int)

(declare-fun e!719038 () Bool)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48569)

(declare-datatypes ((array!82413 0))(
  ( (array!82414 (arr!39749 (Array (_ BitVec 32) (_ BitVec 64))) (size!40286 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82413)

(declare-fun minValueBefore!43 () V!48569)

(declare-fun b!1262968 () Bool)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-datatypes ((tuple2!21198 0))(
  ( (tuple2!21199 (_1!10609 (_ BitVec 64)) (_2!10609 V!48569)) )
))
(declare-datatypes ((List!28418 0))(
  ( (Nil!28415) (Cons!28414 (h!29623 tuple2!21198) (t!41936 List!28418)) )
))
(declare-datatypes ((ListLongMap!19083 0))(
  ( (ListLongMap!19084 (toList!9557 List!28418)) )
))
(declare-fun contains!7620 (ListLongMap!19083 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4661 (array!82413 array!82411 (_ BitVec 32) (_ BitVec 32) V!48569 V!48569 (_ BitVec 32) Int) ListLongMap!19083)

(assert (=> b!1262968 (= e!719038 (not (contains!7620 (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1262969 () Bool)

(declare-fun res!841411 () Bool)

(declare-fun e!719037 () Bool)

(assert (=> b!1262969 (=> (not res!841411) (not e!719037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82413 (_ BitVec 32)) Bool)

(assert (=> b!1262969 (= res!841411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262970 () Bool)

(assert (=> b!1262970 (= e!719037 (not e!719038))))

(declare-fun res!841409 () Bool)

(assert (=> b!1262970 (=> res!841409 e!719038)))

(assert (=> b!1262970 (= res!841409 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!572664 () ListLongMap!19083)

(declare-fun lt!572663 () ListLongMap!19083)

(assert (=> b!1262970 (= lt!572664 lt!572663)))

(declare-datatypes ((Unit!42051 0))(
  ( (Unit!42052) )
))
(declare-fun lt!572662 () Unit!42051)

(declare-fun minValueAfter!43 () V!48569)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1193 (array!82413 array!82411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48569 V!48569 V!48569 V!48569 (_ BitVec 32) Int) Unit!42051)

(assert (=> b!1262970 (= lt!572662 (lemmaNoChangeToArrayThenSameMapNoExtras!1193 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5897 (array!82413 array!82411 (_ BitVec 32) (_ BitVec 32) V!48569 V!48569 (_ BitVec 32) Int) ListLongMap!19083)

(assert (=> b!1262970 (= lt!572663 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262970 (= lt!572664 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!841410 () Bool)

(assert (=> start!106104 (=> (not res!841410) (not e!719037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106104 (= res!841410 (validMask!0 mask!1466))))

(assert (=> start!106104 e!719037))

(assert (=> start!106104 true))

(assert (=> start!106104 tp!96053))

(declare-fun tp_is_empty!32403 () Bool)

(assert (=> start!106104 tp_is_empty!32403))

(declare-fun array_inv!30211 (array!82413) Bool)

(assert (=> start!106104 (array_inv!30211 _keys!1118)))

(declare-fun e!719036 () Bool)

(declare-fun array_inv!30212 (array!82411) Bool)

(assert (=> start!106104 (and (array_inv!30212 _values!914) e!719036)))

(declare-fun b!1262971 () Bool)

(assert (=> b!1262971 (= e!719034 tp_is_empty!32403)))

(declare-fun b!1262972 () Bool)

(declare-fun res!841408 () Bool)

(assert (=> b!1262972 (=> (not res!841408) (not e!719037))))

(declare-datatypes ((List!28419 0))(
  ( (Nil!28416) (Cons!28415 (h!29624 (_ BitVec 64)) (t!41937 List!28419)) )
))
(declare-fun arrayNoDuplicates!0 (array!82413 (_ BitVec 32) List!28419) Bool)

(assert (=> b!1262972 (= res!841408 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28416))))

(declare-fun b!1262973 () Bool)

(declare-fun e!719039 () Bool)

(assert (=> b!1262973 (= e!719039 tp_is_empty!32403)))

(declare-fun b!1262974 () Bool)

(assert (=> b!1262974 (= e!719036 (and e!719039 mapRes!50425))))

(declare-fun condMapEmpty!50425 () Bool)

(declare-fun mapDefault!50425 () ValueCell!15438)

(assert (=> b!1262974 (= condMapEmpty!50425 (= (arr!39748 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15438)) mapDefault!50425)))))

(declare-fun b!1262975 () Bool)

(declare-fun res!841407 () Bool)

(assert (=> b!1262975 (=> (not res!841407) (not e!719037))))

(assert (=> b!1262975 (= res!841407 (and (= (size!40285 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40286 _keys!1118) (size!40285 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50425 () Bool)

(assert (=> mapIsEmpty!50425 mapRes!50425))

(assert (= (and start!106104 res!841410) b!1262975))

(assert (= (and b!1262975 res!841407) b!1262969))

(assert (= (and b!1262969 res!841411) b!1262972))

(assert (= (and b!1262972 res!841408) b!1262970))

(assert (= (and b!1262970 (not res!841409)) b!1262968))

(assert (= (and b!1262974 condMapEmpty!50425) mapIsEmpty!50425))

(assert (= (and b!1262974 (not condMapEmpty!50425)) mapNonEmpty!50425))

(get-info :version)

(assert (= (and mapNonEmpty!50425 ((_ is ValueCellFull!15438) mapValue!50425)) b!1262971))

(assert (= (and b!1262974 ((_ is ValueCellFull!15438) mapDefault!50425)) b!1262973))

(assert (= start!106104 b!1262974))

(declare-fun m!1163539 () Bool)

(assert (=> start!106104 m!1163539))

(declare-fun m!1163541 () Bool)

(assert (=> start!106104 m!1163541))

(declare-fun m!1163543 () Bool)

(assert (=> start!106104 m!1163543))

(declare-fun m!1163545 () Bool)

(assert (=> b!1262970 m!1163545))

(declare-fun m!1163547 () Bool)

(assert (=> b!1262970 m!1163547))

(declare-fun m!1163549 () Bool)

(assert (=> b!1262970 m!1163549))

(declare-fun m!1163551 () Bool)

(assert (=> b!1262968 m!1163551))

(assert (=> b!1262968 m!1163551))

(declare-fun m!1163553 () Bool)

(assert (=> b!1262968 m!1163553))

(declare-fun m!1163555 () Bool)

(assert (=> b!1262969 m!1163555))

(declare-fun m!1163557 () Bool)

(assert (=> b!1262972 m!1163557))

(declare-fun m!1163559 () Bool)

(assert (=> mapNonEmpty!50425 m!1163559))

(check-sat (not b!1262972) (not start!106104) (not b!1262970) (not mapNonEmpty!50425) b_and!45485 (not b_next!27501) tp_is_empty!32403 (not b!1262968) (not b!1262969))
(check-sat b_and!45485 (not b_next!27501))
(get-model)

(declare-fun d!138509 () Bool)

(assert (=> d!138509 (= (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572676 () Unit!42051)

(declare-fun choose!1883 (array!82413 array!82411 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48569 V!48569 V!48569 V!48569 (_ BitVec 32) Int) Unit!42051)

(assert (=> d!138509 (= lt!572676 (choose!1883 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138509 (validMask!0 mask!1466)))

(assert (=> d!138509 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1193 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572676)))

(declare-fun bs!35733 () Bool)

(assert (= bs!35733 d!138509))

(assert (=> bs!35733 m!1163549))

(assert (=> bs!35733 m!1163547))

(declare-fun m!1163583 () Bool)

(assert (=> bs!35733 m!1163583))

(assert (=> bs!35733 m!1163539))

(assert (=> b!1262970 d!138509))

(declare-fun b!1263024 () Bool)

(declare-fun e!719073 () ListLongMap!19083)

(declare-fun call!62148 () ListLongMap!19083)

(assert (=> b!1263024 (= e!719073 call!62148)))

(declare-fun d!138511 () Bool)

(declare-fun e!719078 () Bool)

(assert (=> d!138511 e!719078))

(declare-fun res!841437 () Bool)

(assert (=> d!138511 (=> (not res!841437) (not e!719078))))

(declare-fun lt!572691 () ListLongMap!19083)

(assert (=> d!138511 (= res!841437 (not (contains!7620 lt!572691 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719072 () ListLongMap!19083)

(assert (=> d!138511 (= lt!572691 e!719072)))

(declare-fun c!122856 () Bool)

(assert (=> d!138511 (= c!122856 (bvsge #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(assert (=> d!138511 (validMask!0 mask!1466)))

(assert (=> d!138511 (= (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572691)))

(declare-fun b!1263025 () Bool)

(assert (=> b!1263025 (= e!719072 (ListLongMap!19084 Nil!28415))))

(declare-fun b!1263026 () Bool)

(declare-fun e!719076 () Bool)

(assert (=> b!1263026 (= e!719078 e!719076)))

(declare-fun c!122857 () Bool)

(declare-fun e!719077 () Bool)

(assert (=> b!1263026 (= c!122857 e!719077)))

(declare-fun res!841435 () Bool)

(assert (=> b!1263026 (=> (not res!841435) (not e!719077))))

(assert (=> b!1263026 (= res!841435 (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263027 () Bool)

(declare-fun e!719074 () Bool)

(declare-fun isEmpty!1045 (ListLongMap!19083) Bool)

(assert (=> b!1263027 (= e!719074 (isEmpty!1045 lt!572691))))

(declare-fun b!1263028 () Bool)

(declare-fun e!719075 () Bool)

(assert (=> b!1263028 (= e!719076 e!719075)))

(assert (=> b!1263028 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun res!841438 () Bool)

(assert (=> b!1263028 (= res!841438 (contains!7620 lt!572691 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263028 (=> (not res!841438) (not e!719075))))

(declare-fun b!1263029 () Bool)

(assert (=> b!1263029 (= e!719076 e!719074)))

(declare-fun c!122855 () Bool)

(assert (=> b!1263029 (= c!122855 (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263030 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1263030 (= e!719077 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263030 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263031 () Bool)

(declare-fun lt!572693 () Unit!42051)

(declare-fun lt!572696 () Unit!42051)

(assert (=> b!1263031 (= lt!572693 lt!572696)))

(declare-fun lt!572697 () (_ BitVec 64))

(declare-fun lt!572694 () ListLongMap!19083)

(declare-fun lt!572695 () V!48569)

(declare-fun lt!572692 () (_ BitVec 64))

(declare-fun +!4224 (ListLongMap!19083 tuple2!21198) ListLongMap!19083)

(assert (=> b!1263031 (not (contains!7620 (+!4224 lt!572694 (tuple2!21199 lt!572692 lt!572695)) lt!572697))))

(declare-fun addStillNotContains!330 (ListLongMap!19083 (_ BitVec 64) V!48569 (_ BitVec 64)) Unit!42051)

(assert (=> b!1263031 (= lt!572696 (addStillNotContains!330 lt!572694 lt!572692 lt!572695 lt!572697))))

(assert (=> b!1263031 (= lt!572697 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20325 (ValueCell!15438 V!48569) V!48569)

(declare-fun dynLambda!3480 (Int (_ BitVec 64)) V!48569)

(assert (=> b!1263031 (= lt!572695 (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263031 (= lt!572692 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263031 (= lt!572694 call!62148)))

(assert (=> b!1263031 (= e!719073 (+!4224 call!62148 (tuple2!21199 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000) (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!62145 () Bool)

(assert (=> bm!62145 (= call!62148 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263032 () Bool)

(assert (=> b!1263032 (= e!719074 (= lt!572691 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1263033 () Bool)

(assert (=> b!1263033 (= e!719072 e!719073)))

(declare-fun c!122858 () Bool)

(assert (=> b!1263033 (= c!122858 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263034 () Bool)

(declare-fun res!841436 () Bool)

(assert (=> b!1263034 (=> (not res!841436) (not e!719078))))

(assert (=> b!1263034 (= res!841436 (not (contains!7620 lt!572691 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1263035 () Bool)

(assert (=> b!1263035 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(assert (=> b!1263035 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40285 _values!914)))))

(declare-fun apply!1035 (ListLongMap!19083 (_ BitVec 64)) V!48569)

(assert (=> b!1263035 (= e!719075 (= (apply!1035 lt!572691 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)) (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!138511 c!122856) b!1263025))

(assert (= (and d!138511 (not c!122856)) b!1263033))

(assert (= (and b!1263033 c!122858) b!1263031))

(assert (= (and b!1263033 (not c!122858)) b!1263024))

(assert (= (or b!1263031 b!1263024) bm!62145))

(assert (= (and d!138511 res!841437) b!1263034))

(assert (= (and b!1263034 res!841436) b!1263026))

(assert (= (and b!1263026 res!841435) b!1263030))

(assert (= (and b!1263026 c!122857) b!1263028))

(assert (= (and b!1263026 (not c!122857)) b!1263029))

(assert (= (and b!1263028 res!841438) b!1263035))

(assert (= (and b!1263029 c!122855) b!1263032))

(assert (= (and b!1263029 (not c!122855)) b!1263027))

(declare-fun b_lambda!22933 () Bool)

(assert (=> (not b_lambda!22933) (not b!1263031)))

(declare-fun t!41941 () Bool)

(declare-fun tb!11335 () Bool)

(assert (=> (and start!106104 (= defaultEntry!922 defaultEntry!922) t!41941) tb!11335))

(declare-fun result!23397 () Bool)

(assert (=> tb!11335 (= result!23397 tp_is_empty!32403)))

(assert (=> b!1263031 t!41941))

(declare-fun b_and!45489 () Bool)

(assert (= b_and!45485 (and (=> t!41941 result!23397) b_and!45489)))

(declare-fun b_lambda!22935 () Bool)

(assert (=> (not b_lambda!22935) (not b!1263035)))

(assert (=> b!1263035 t!41941))

(declare-fun b_and!45491 () Bool)

(assert (= b_and!45489 (and (=> t!41941 result!23397) b_and!45491)))

(declare-fun m!1163585 () Bool)

(assert (=> b!1263032 m!1163585))

(declare-fun m!1163587 () Bool)

(assert (=> b!1263027 m!1163587))

(declare-fun m!1163589 () Bool)

(assert (=> b!1263028 m!1163589))

(assert (=> b!1263028 m!1163589))

(declare-fun m!1163591 () Bool)

(assert (=> b!1263028 m!1163591))

(assert (=> b!1263030 m!1163589))

(assert (=> b!1263030 m!1163589))

(declare-fun m!1163593 () Bool)

(assert (=> b!1263030 m!1163593))

(declare-fun m!1163595 () Bool)

(assert (=> b!1263035 m!1163595))

(declare-fun m!1163597 () Bool)

(assert (=> b!1263035 m!1163597))

(declare-fun m!1163599 () Bool)

(assert (=> b!1263035 m!1163599))

(assert (=> b!1263035 m!1163597))

(assert (=> b!1263035 m!1163589))

(declare-fun m!1163601 () Bool)

(assert (=> b!1263035 m!1163601))

(assert (=> b!1263035 m!1163589))

(assert (=> b!1263035 m!1163595))

(assert (=> bm!62145 m!1163585))

(assert (=> b!1263033 m!1163589))

(assert (=> b!1263033 m!1163589))

(assert (=> b!1263033 m!1163593))

(declare-fun m!1163603 () Bool)

(assert (=> b!1263034 m!1163603))

(assert (=> b!1263031 m!1163597))

(assert (=> b!1263031 m!1163589))

(assert (=> b!1263031 m!1163595))

(declare-fun m!1163605 () Bool)

(assert (=> b!1263031 m!1163605))

(declare-fun m!1163607 () Bool)

(assert (=> b!1263031 m!1163607))

(assert (=> b!1263031 m!1163605))

(declare-fun m!1163609 () Bool)

(assert (=> b!1263031 m!1163609))

(declare-fun m!1163611 () Bool)

(assert (=> b!1263031 m!1163611))

(assert (=> b!1263031 m!1163595))

(assert (=> b!1263031 m!1163597))

(assert (=> b!1263031 m!1163599))

(declare-fun m!1163613 () Bool)

(assert (=> d!138511 m!1163613))

(assert (=> d!138511 m!1163539))

(assert (=> b!1262970 d!138511))

(declare-fun b!1263038 () Bool)

(declare-fun e!719080 () ListLongMap!19083)

(declare-fun call!62149 () ListLongMap!19083)

(assert (=> b!1263038 (= e!719080 call!62149)))

(declare-fun d!138513 () Bool)

(declare-fun e!719085 () Bool)

(assert (=> d!138513 e!719085))

(declare-fun res!841441 () Bool)

(assert (=> d!138513 (=> (not res!841441) (not e!719085))))

(declare-fun lt!572698 () ListLongMap!19083)

(assert (=> d!138513 (= res!841441 (not (contains!7620 lt!572698 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!719079 () ListLongMap!19083)

(assert (=> d!138513 (= lt!572698 e!719079)))

(declare-fun c!122860 () Bool)

(assert (=> d!138513 (= c!122860 (bvsge #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(assert (=> d!138513 (validMask!0 mask!1466)))

(assert (=> d!138513 (= (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572698)))

(declare-fun b!1263039 () Bool)

(assert (=> b!1263039 (= e!719079 (ListLongMap!19084 Nil!28415))))

(declare-fun b!1263040 () Bool)

(declare-fun e!719083 () Bool)

(assert (=> b!1263040 (= e!719085 e!719083)))

(declare-fun c!122861 () Bool)

(declare-fun e!719084 () Bool)

(assert (=> b!1263040 (= c!122861 e!719084)))

(declare-fun res!841439 () Bool)

(assert (=> b!1263040 (=> (not res!841439) (not e!719084))))

(assert (=> b!1263040 (= res!841439 (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263041 () Bool)

(declare-fun e!719081 () Bool)

(assert (=> b!1263041 (= e!719081 (isEmpty!1045 lt!572698))))

(declare-fun b!1263042 () Bool)

(declare-fun e!719082 () Bool)

(assert (=> b!1263042 (= e!719083 e!719082)))

(assert (=> b!1263042 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun res!841442 () Bool)

(assert (=> b!1263042 (= res!841442 (contains!7620 lt!572698 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263042 (=> (not res!841442) (not e!719082))))

(declare-fun b!1263043 () Bool)

(assert (=> b!1263043 (= e!719083 e!719081)))

(declare-fun c!122859 () Bool)

(assert (=> b!1263043 (= c!122859 (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263044 () Bool)

(assert (=> b!1263044 (= e!719084 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263044 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1263045 () Bool)

(declare-fun lt!572700 () Unit!42051)

(declare-fun lt!572703 () Unit!42051)

(assert (=> b!1263045 (= lt!572700 lt!572703)))

(declare-fun lt!572701 () ListLongMap!19083)

(declare-fun lt!572702 () V!48569)

(declare-fun lt!572704 () (_ BitVec 64))

(declare-fun lt!572699 () (_ BitVec 64))

(assert (=> b!1263045 (not (contains!7620 (+!4224 lt!572701 (tuple2!21199 lt!572699 lt!572702)) lt!572704))))

(assert (=> b!1263045 (= lt!572703 (addStillNotContains!330 lt!572701 lt!572699 lt!572702 lt!572704))))

(assert (=> b!1263045 (= lt!572704 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1263045 (= lt!572702 (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263045 (= lt!572699 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263045 (= lt!572701 call!62149)))

(assert (=> b!1263045 (= e!719080 (+!4224 call!62149 (tuple2!21199 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000) (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!62146 () Bool)

(assert (=> bm!62146 (= call!62149 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1263046 () Bool)

(assert (=> b!1263046 (= e!719081 (= lt!572698 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1263047 () Bool)

(assert (=> b!1263047 (= e!719079 e!719080)))

(declare-fun c!122862 () Bool)

(assert (=> b!1263047 (= c!122862 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263048 () Bool)

(declare-fun res!841440 () Bool)

(assert (=> b!1263048 (=> (not res!841440) (not e!719085))))

(assert (=> b!1263048 (= res!841440 (not (contains!7620 lt!572698 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1263049 () Bool)

(assert (=> b!1263049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(assert (=> b!1263049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40285 _values!914)))))

(assert (=> b!1263049 (= e!719082 (= (apply!1035 lt!572698 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)) (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!138513 c!122860) b!1263039))

(assert (= (and d!138513 (not c!122860)) b!1263047))

(assert (= (and b!1263047 c!122862) b!1263045))

(assert (= (and b!1263047 (not c!122862)) b!1263038))

(assert (= (or b!1263045 b!1263038) bm!62146))

(assert (= (and d!138513 res!841441) b!1263048))

(assert (= (and b!1263048 res!841440) b!1263040))

(assert (= (and b!1263040 res!841439) b!1263044))

(assert (= (and b!1263040 c!122861) b!1263042))

(assert (= (and b!1263040 (not c!122861)) b!1263043))

(assert (= (and b!1263042 res!841442) b!1263049))

(assert (= (and b!1263043 c!122859) b!1263046))

(assert (= (and b!1263043 (not c!122859)) b!1263041))

(declare-fun b_lambda!22937 () Bool)

(assert (=> (not b_lambda!22937) (not b!1263045)))

(assert (=> b!1263045 t!41941))

(declare-fun b_and!45493 () Bool)

(assert (= b_and!45491 (and (=> t!41941 result!23397) b_and!45493)))

(declare-fun b_lambda!22939 () Bool)

(assert (=> (not b_lambda!22939) (not b!1263049)))

(assert (=> b!1263049 t!41941))

(declare-fun b_and!45495 () Bool)

(assert (= b_and!45493 (and (=> t!41941 result!23397) b_and!45495)))

(declare-fun m!1163615 () Bool)

(assert (=> b!1263046 m!1163615))

(declare-fun m!1163617 () Bool)

(assert (=> b!1263041 m!1163617))

(assert (=> b!1263042 m!1163589))

(assert (=> b!1263042 m!1163589))

(declare-fun m!1163619 () Bool)

(assert (=> b!1263042 m!1163619))

(assert (=> b!1263044 m!1163589))

(assert (=> b!1263044 m!1163589))

(assert (=> b!1263044 m!1163593))

(assert (=> b!1263049 m!1163595))

(assert (=> b!1263049 m!1163597))

(assert (=> b!1263049 m!1163599))

(assert (=> b!1263049 m!1163597))

(assert (=> b!1263049 m!1163589))

(declare-fun m!1163621 () Bool)

(assert (=> b!1263049 m!1163621))

(assert (=> b!1263049 m!1163589))

(assert (=> b!1263049 m!1163595))

(assert (=> bm!62146 m!1163615))

(assert (=> b!1263047 m!1163589))

(assert (=> b!1263047 m!1163589))

(assert (=> b!1263047 m!1163593))

(declare-fun m!1163623 () Bool)

(assert (=> b!1263048 m!1163623))

(assert (=> b!1263045 m!1163597))

(assert (=> b!1263045 m!1163589))

(assert (=> b!1263045 m!1163595))

(declare-fun m!1163625 () Bool)

(assert (=> b!1263045 m!1163625))

(declare-fun m!1163627 () Bool)

(assert (=> b!1263045 m!1163627))

(assert (=> b!1263045 m!1163625))

(declare-fun m!1163629 () Bool)

(assert (=> b!1263045 m!1163629))

(declare-fun m!1163631 () Bool)

(assert (=> b!1263045 m!1163631))

(assert (=> b!1263045 m!1163595))

(assert (=> b!1263045 m!1163597))

(assert (=> b!1263045 m!1163599))

(declare-fun m!1163633 () Bool)

(assert (=> d!138513 m!1163633))

(assert (=> d!138513 m!1163539))

(assert (=> b!1262970 d!138513))

(declare-fun d!138515 () Bool)

(declare-fun res!841450 () Bool)

(declare-fun e!719096 () Bool)

(assert (=> d!138515 (=> res!841450 e!719096)))

(assert (=> d!138515 (= res!841450 (bvsge #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(assert (=> d!138515 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28416) e!719096)))

(declare-fun bm!62149 () Bool)

(declare-fun call!62152 () Bool)

(declare-fun c!122865 () Bool)

(assert (=> bm!62149 (= call!62152 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122865 (Cons!28415 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000) Nil!28416) Nil!28416)))))

(declare-fun b!1263060 () Bool)

(declare-fun e!719097 () Bool)

(declare-fun e!719094 () Bool)

(assert (=> b!1263060 (= e!719097 e!719094)))

(assert (=> b!1263060 (= c!122865 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263061 () Bool)

(assert (=> b!1263061 (= e!719096 e!719097)))

(declare-fun res!841449 () Bool)

(assert (=> b!1263061 (=> (not res!841449) (not e!719097))))

(declare-fun e!719095 () Bool)

(assert (=> b!1263061 (= res!841449 (not e!719095))))

(declare-fun res!841451 () Bool)

(assert (=> b!1263061 (=> (not res!841451) (not e!719095))))

(assert (=> b!1263061 (= res!841451 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263062 () Bool)

(assert (=> b!1263062 (= e!719094 call!62152)))

(declare-fun b!1263063 () Bool)

(assert (=> b!1263063 (= e!719094 call!62152)))

(declare-fun b!1263064 () Bool)

(declare-fun contains!7621 (List!28419 (_ BitVec 64)) Bool)

(assert (=> b!1263064 (= e!719095 (contains!7621 Nil!28416 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138515 (not res!841450)) b!1263061))

(assert (= (and b!1263061 res!841451) b!1263064))

(assert (= (and b!1263061 res!841449) b!1263060))

(assert (= (and b!1263060 c!122865) b!1263063))

(assert (= (and b!1263060 (not c!122865)) b!1263062))

(assert (= (or b!1263063 b!1263062) bm!62149))

(assert (=> bm!62149 m!1163589))

(declare-fun m!1163635 () Bool)

(assert (=> bm!62149 m!1163635))

(assert (=> b!1263060 m!1163589))

(assert (=> b!1263060 m!1163589))

(assert (=> b!1263060 m!1163593))

(assert (=> b!1263061 m!1163589))

(assert (=> b!1263061 m!1163589))

(assert (=> b!1263061 m!1163593))

(assert (=> b!1263064 m!1163589))

(assert (=> b!1263064 m!1163589))

(declare-fun m!1163637 () Bool)

(assert (=> b!1263064 m!1163637))

(assert (=> b!1262972 d!138515))

(declare-fun d!138517 () Bool)

(declare-fun e!719102 () Bool)

(assert (=> d!138517 e!719102))

(declare-fun res!841454 () Bool)

(assert (=> d!138517 (=> res!841454 e!719102)))

(declare-fun lt!572713 () Bool)

(assert (=> d!138517 (= res!841454 (not lt!572713))))

(declare-fun lt!572715 () Bool)

(assert (=> d!138517 (= lt!572713 lt!572715)))

(declare-fun lt!572714 () Unit!42051)

(declare-fun e!719103 () Unit!42051)

(assert (=> d!138517 (= lt!572714 e!719103)))

(declare-fun c!122868 () Bool)

(assert (=> d!138517 (= c!122868 lt!572715)))

(declare-fun containsKey!624 (List!28418 (_ BitVec 64)) Bool)

(assert (=> d!138517 (= lt!572715 (containsKey!624 (toList!9557 (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138517 (= (contains!7620 (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000) lt!572713)))

(declare-fun b!1263071 () Bool)

(declare-fun lt!572716 () Unit!42051)

(assert (=> b!1263071 (= e!719103 lt!572716)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!434 (List!28418 (_ BitVec 64)) Unit!42051)

(assert (=> b!1263071 (= lt!572716 (lemmaContainsKeyImpliesGetValueByKeyDefined!434 (toList!9557 (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!719 0))(
  ( (Some!718 (v!18975 V!48569)) (None!717) )
))
(declare-fun isDefined!474 (Option!719) Bool)

(declare-fun getValueByKey!668 (List!28418 (_ BitVec 64)) Option!719)

(assert (=> b!1263071 (isDefined!474 (getValueByKey!668 (toList!9557 (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1263072 () Bool)

(declare-fun Unit!42055 () Unit!42051)

(assert (=> b!1263072 (= e!719103 Unit!42055)))

(declare-fun b!1263073 () Bool)

(assert (=> b!1263073 (= e!719102 (isDefined!474 (getValueByKey!668 (toList!9557 (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138517 c!122868) b!1263071))

(assert (= (and d!138517 (not c!122868)) b!1263072))

(assert (= (and d!138517 (not res!841454)) b!1263073))

(declare-fun m!1163639 () Bool)

(assert (=> d!138517 m!1163639))

(declare-fun m!1163641 () Bool)

(assert (=> b!1263071 m!1163641))

(declare-fun m!1163643 () Bool)

(assert (=> b!1263071 m!1163643))

(assert (=> b!1263071 m!1163643))

(declare-fun m!1163645 () Bool)

(assert (=> b!1263071 m!1163645))

(assert (=> b!1263073 m!1163643))

(assert (=> b!1263073 m!1163643))

(assert (=> b!1263073 m!1163645))

(assert (=> b!1262968 d!138517))

(declare-fun b!1263116 () Bool)

(declare-fun e!719137 () Bool)

(declare-fun e!719139 () Bool)

(assert (=> b!1263116 (= e!719137 e!719139)))

(declare-fun res!841474 () Bool)

(declare-fun call!62170 () Bool)

(assert (=> b!1263116 (= res!841474 call!62170)))

(assert (=> b!1263116 (=> (not res!841474) (not e!719139))))

(declare-fun b!1263117 () Bool)

(declare-fun e!719142 () ListLongMap!19083)

(declare-fun call!62169 () ListLongMap!19083)

(assert (=> b!1263117 (= e!719142 call!62169)))

(declare-fun d!138519 () Bool)

(declare-fun e!719130 () Bool)

(assert (=> d!138519 e!719130))

(declare-fun res!841477 () Bool)

(assert (=> d!138519 (=> (not res!841477) (not e!719130))))

(assert (=> d!138519 (= res!841477 (or (bvsge #b00000000000000000000000000000000 (size!40286 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))))

(declare-fun lt!572767 () ListLongMap!19083)

(declare-fun lt!572777 () ListLongMap!19083)

(assert (=> d!138519 (= lt!572767 lt!572777)))

(declare-fun lt!572769 () Unit!42051)

(declare-fun e!719131 () Unit!42051)

(assert (=> d!138519 (= lt!572769 e!719131)))

(declare-fun c!122882 () Bool)

(declare-fun e!719138 () Bool)

(assert (=> d!138519 (= c!122882 e!719138)))

(declare-fun res!841478 () Bool)

(assert (=> d!138519 (=> (not res!841478) (not e!719138))))

(assert (=> d!138519 (= res!841478 (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun e!719133 () ListLongMap!19083)

(assert (=> d!138519 (= lt!572777 e!719133)))

(declare-fun c!122885 () Bool)

(assert (=> d!138519 (= c!122885 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138519 (validMask!0 mask!1466)))

(assert (=> d!138519 (= (getCurrentListMap!4661 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572767)))

(declare-fun b!1263118 () Bool)

(declare-fun e!719136 () ListLongMap!19083)

(assert (=> b!1263118 (= e!719136 call!62169)))

(declare-fun b!1263119 () Bool)

(declare-fun e!719140 () Bool)

(declare-fun e!719134 () Bool)

(assert (=> b!1263119 (= e!719140 e!719134)))

(declare-fun res!841481 () Bool)

(declare-fun call!62168 () Bool)

(assert (=> b!1263119 (= res!841481 call!62168)))

(assert (=> b!1263119 (=> (not res!841481) (not e!719134))))

(declare-fun b!1263120 () Bool)

(assert (=> b!1263120 (= e!719134 (= (apply!1035 lt!572767 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!62164 () Bool)

(declare-fun call!62173 () ListLongMap!19083)

(declare-fun call!62167 () ListLongMap!19083)

(assert (=> bm!62164 (= call!62173 call!62167)))

(declare-fun b!1263121 () Bool)

(assert (=> b!1263121 (= e!719139 (= (apply!1035 lt!572767 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1263122 () Bool)

(assert (=> b!1263122 (= e!719137 (not call!62170))))

(declare-fun b!1263123 () Bool)

(declare-fun c!122881 () Bool)

(assert (=> b!1263123 (= c!122881 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1263123 (= e!719142 e!719136)))

(declare-fun bm!62165 () Bool)

(declare-fun call!62172 () ListLongMap!19083)

(assert (=> bm!62165 (= call!62167 call!62172)))

(declare-fun bm!62166 () Bool)

(declare-fun call!62171 () ListLongMap!19083)

(assert (=> bm!62166 (= call!62169 call!62171)))

(declare-fun e!719132 () Bool)

(declare-fun b!1263124 () Bool)

(assert (=> b!1263124 (= e!719132 (= (apply!1035 lt!572767 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)) (get!20325 (select (arr!39748 _values!914) #b00000000000000000000000000000000) (dynLambda!3480 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1263124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40285 _values!914)))))

(assert (=> b!1263124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263125 () Bool)

(declare-fun e!719135 () Bool)

(assert (=> b!1263125 (= e!719135 e!719132)))

(declare-fun res!841475 () Bool)

(assert (=> b!1263125 (=> (not res!841475) (not e!719132))))

(assert (=> b!1263125 (= res!841475 (contains!7620 lt!572767 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1263125 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263126 () Bool)

(declare-fun lt!572781 () Unit!42051)

(assert (=> b!1263126 (= e!719131 lt!572781)))

(declare-fun lt!572762 () ListLongMap!19083)

(assert (=> b!1263126 (= lt!572762 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572778 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572778 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572773 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572773 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572766 () Unit!42051)

(declare-fun addStillContains!1106 (ListLongMap!19083 (_ BitVec 64) V!48569 (_ BitVec 64)) Unit!42051)

(assert (=> b!1263126 (= lt!572766 (addStillContains!1106 lt!572762 lt!572778 zeroValue!871 lt!572773))))

(assert (=> b!1263126 (contains!7620 (+!4224 lt!572762 (tuple2!21199 lt!572778 zeroValue!871)) lt!572773)))

(declare-fun lt!572761 () Unit!42051)

(assert (=> b!1263126 (= lt!572761 lt!572766)))

(declare-fun lt!572771 () ListLongMap!19083)

(assert (=> b!1263126 (= lt!572771 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572765 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572765 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572775 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572775 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572779 () Unit!42051)

(declare-fun addApplyDifferent!540 (ListLongMap!19083 (_ BitVec 64) V!48569 (_ BitVec 64)) Unit!42051)

(assert (=> b!1263126 (= lt!572779 (addApplyDifferent!540 lt!572771 lt!572765 minValueBefore!43 lt!572775))))

(assert (=> b!1263126 (= (apply!1035 (+!4224 lt!572771 (tuple2!21199 lt!572765 minValueBefore!43)) lt!572775) (apply!1035 lt!572771 lt!572775))))

(declare-fun lt!572764 () Unit!42051)

(assert (=> b!1263126 (= lt!572764 lt!572779)))

(declare-fun lt!572772 () ListLongMap!19083)

(assert (=> b!1263126 (= lt!572772 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572774 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572774 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572770 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572770 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572768 () Unit!42051)

(assert (=> b!1263126 (= lt!572768 (addApplyDifferent!540 lt!572772 lt!572774 zeroValue!871 lt!572770))))

(assert (=> b!1263126 (= (apply!1035 (+!4224 lt!572772 (tuple2!21199 lt!572774 zeroValue!871)) lt!572770) (apply!1035 lt!572772 lt!572770))))

(declare-fun lt!572776 () Unit!42051)

(assert (=> b!1263126 (= lt!572776 lt!572768)))

(declare-fun lt!572782 () ListLongMap!19083)

(assert (=> b!1263126 (= lt!572782 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!572763 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572763 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!572780 () (_ BitVec 64))

(assert (=> b!1263126 (= lt!572780 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1263126 (= lt!572781 (addApplyDifferent!540 lt!572782 lt!572763 minValueBefore!43 lt!572780))))

(assert (=> b!1263126 (= (apply!1035 (+!4224 lt!572782 (tuple2!21199 lt!572763 minValueBefore!43)) lt!572780) (apply!1035 lt!572782 lt!572780))))

(declare-fun b!1263127 () Bool)

(assert (=> b!1263127 (= e!719133 (+!4224 call!62171 (tuple2!21199 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!62167 () Bool)

(assert (=> bm!62167 (= call!62168 (contains!7620 lt!572767 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62168 () Bool)

(assert (=> bm!62168 (= call!62170 (contains!7620 lt!572767 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62169 () Bool)

(assert (=> bm!62169 (= call!62172 (getCurrentListMapNoExtraKeys!5897 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263128 () Bool)

(assert (=> b!1263128 (= e!719133 e!719142)))

(declare-fun c!122883 () Bool)

(assert (=> b!1263128 (= c!122883 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!62170 () Bool)

(assert (=> bm!62170 (= call!62171 (+!4224 (ite c!122885 call!62172 (ite c!122883 call!62167 call!62173)) (ite (or c!122885 c!122883) (tuple2!21199 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21199 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1263129 () Bool)

(assert (=> b!1263129 (= e!719136 call!62173)))

(declare-fun b!1263130 () Bool)

(assert (=> b!1263130 (= e!719138 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263131 () Bool)

(declare-fun Unit!42056 () Unit!42051)

(assert (=> b!1263131 (= e!719131 Unit!42056)))

(declare-fun b!1263132 () Bool)

(assert (=> b!1263132 (= e!719140 (not call!62168))))

(declare-fun b!1263133 () Bool)

(declare-fun res!841479 () Bool)

(assert (=> b!1263133 (=> (not res!841479) (not e!719130))))

(assert (=> b!1263133 (= res!841479 e!719135)))

(declare-fun res!841473 () Bool)

(assert (=> b!1263133 (=> res!841473 e!719135)))

(declare-fun e!719141 () Bool)

(assert (=> b!1263133 (= res!841473 (not e!719141))))

(declare-fun res!841480 () Bool)

(assert (=> b!1263133 (=> (not res!841480) (not e!719141))))

(assert (=> b!1263133 (= res!841480 (bvslt #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(declare-fun b!1263134 () Bool)

(assert (=> b!1263134 (= e!719141 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1263135 () Bool)

(declare-fun res!841476 () Bool)

(assert (=> b!1263135 (=> (not res!841476) (not e!719130))))

(assert (=> b!1263135 (= res!841476 e!719140)))

(declare-fun c!122886 () Bool)

(assert (=> b!1263135 (= c!122886 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1263136 () Bool)

(assert (=> b!1263136 (= e!719130 e!719137)))

(declare-fun c!122884 () Bool)

(assert (=> b!1263136 (= c!122884 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!138519 c!122885) b!1263127))

(assert (= (and d!138519 (not c!122885)) b!1263128))

(assert (= (and b!1263128 c!122883) b!1263117))

(assert (= (and b!1263128 (not c!122883)) b!1263123))

(assert (= (and b!1263123 c!122881) b!1263118))

(assert (= (and b!1263123 (not c!122881)) b!1263129))

(assert (= (or b!1263118 b!1263129) bm!62164))

(assert (= (or b!1263117 bm!62164) bm!62165))

(assert (= (or b!1263117 b!1263118) bm!62166))

(assert (= (or b!1263127 bm!62165) bm!62169))

(assert (= (or b!1263127 bm!62166) bm!62170))

(assert (= (and d!138519 res!841478) b!1263130))

(assert (= (and d!138519 c!122882) b!1263126))

(assert (= (and d!138519 (not c!122882)) b!1263131))

(assert (= (and d!138519 res!841477) b!1263133))

(assert (= (and b!1263133 res!841480) b!1263134))

(assert (= (and b!1263133 (not res!841473)) b!1263125))

(assert (= (and b!1263125 res!841475) b!1263124))

(assert (= (and b!1263133 res!841479) b!1263135))

(assert (= (and b!1263135 c!122886) b!1263119))

(assert (= (and b!1263135 (not c!122886)) b!1263132))

(assert (= (and b!1263119 res!841481) b!1263120))

(assert (= (or b!1263119 b!1263132) bm!62167))

(assert (= (and b!1263135 res!841476) b!1263136))

(assert (= (and b!1263136 c!122884) b!1263116))

(assert (= (and b!1263136 (not c!122884)) b!1263122))

(assert (= (and b!1263116 res!841474) b!1263121))

(assert (= (or b!1263116 b!1263122) bm!62168))

(declare-fun b_lambda!22941 () Bool)

(assert (=> (not b_lambda!22941) (not b!1263124)))

(assert (=> b!1263124 t!41941))

(declare-fun b_and!45497 () Bool)

(assert (= b_and!45495 (and (=> t!41941 result!23397) b_and!45497)))

(assert (=> bm!62169 m!1163549))

(declare-fun m!1163647 () Bool)

(assert (=> b!1263120 m!1163647))

(assert (=> b!1263124 m!1163597))

(assert (=> b!1263124 m!1163589))

(declare-fun m!1163649 () Bool)

(assert (=> b!1263124 m!1163649))

(assert (=> b!1263124 m!1163595))

(assert (=> b!1263124 m!1163597))

(assert (=> b!1263124 m!1163599))

(assert (=> b!1263124 m!1163589))

(assert (=> b!1263124 m!1163595))

(assert (=> b!1263125 m!1163589))

(assert (=> b!1263125 m!1163589))

(declare-fun m!1163651 () Bool)

(assert (=> b!1263125 m!1163651))

(declare-fun m!1163653 () Bool)

(assert (=> bm!62170 m!1163653))

(declare-fun m!1163655 () Bool)

(assert (=> bm!62168 m!1163655))

(assert (=> b!1263126 m!1163589))

(declare-fun m!1163657 () Bool)

(assert (=> b!1263126 m!1163657))

(declare-fun m!1163659 () Bool)

(assert (=> b!1263126 m!1163659))

(declare-fun m!1163661 () Bool)

(assert (=> b!1263126 m!1163661))

(declare-fun m!1163663 () Bool)

(assert (=> b!1263126 m!1163663))

(declare-fun m!1163665 () Bool)

(assert (=> b!1263126 m!1163665))

(declare-fun m!1163667 () Bool)

(assert (=> b!1263126 m!1163667))

(assert (=> b!1263126 m!1163667))

(declare-fun m!1163669 () Bool)

(assert (=> b!1263126 m!1163669))

(declare-fun m!1163671 () Bool)

(assert (=> b!1263126 m!1163671))

(assert (=> b!1263126 m!1163549))

(declare-fun m!1163673 () Bool)

(assert (=> b!1263126 m!1163673))

(assert (=> b!1263126 m!1163659))

(declare-fun m!1163675 () Bool)

(assert (=> b!1263126 m!1163675))

(declare-fun m!1163677 () Bool)

(assert (=> b!1263126 m!1163677))

(declare-fun m!1163679 () Bool)

(assert (=> b!1263126 m!1163679))

(assert (=> b!1263126 m!1163663))

(declare-fun m!1163681 () Bool)

(assert (=> b!1263126 m!1163681))

(assert (=> b!1263126 m!1163675))

(declare-fun m!1163683 () Bool)

(assert (=> b!1263126 m!1163683))

(declare-fun m!1163685 () Bool)

(assert (=> b!1263126 m!1163685))

(assert (=> b!1263134 m!1163589))

(assert (=> b!1263134 m!1163589))

(assert (=> b!1263134 m!1163593))

(declare-fun m!1163687 () Bool)

(assert (=> b!1263121 m!1163687))

(declare-fun m!1163689 () Bool)

(assert (=> bm!62167 m!1163689))

(assert (=> b!1263130 m!1163589))

(assert (=> b!1263130 m!1163589))

(assert (=> b!1263130 m!1163593))

(declare-fun m!1163691 () Bool)

(assert (=> b!1263127 m!1163691))

(assert (=> d!138519 m!1163539))

(assert (=> b!1262968 d!138519))

(declare-fun d!138521 () Bool)

(assert (=> d!138521 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!106104 d!138521))

(declare-fun d!138523 () Bool)

(assert (=> d!138523 (= (array_inv!30211 _keys!1118) (bvsge (size!40286 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!106104 d!138523))

(declare-fun d!138525 () Bool)

(assert (=> d!138525 (= (array_inv!30212 _values!914) (bvsge (size!40285 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!106104 d!138525))

(declare-fun b!1263145 () Bool)

(declare-fun e!719149 () Bool)

(declare-fun call!62176 () Bool)

(assert (=> b!1263145 (= e!719149 call!62176)))

(declare-fun b!1263146 () Bool)

(declare-fun e!719151 () Bool)

(assert (=> b!1263146 (= e!719151 e!719149)))

(declare-fun c!122889 () Bool)

(assert (=> b!1263146 (= c!122889 (validKeyInArray!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138527 () Bool)

(declare-fun res!841486 () Bool)

(assert (=> d!138527 (=> res!841486 e!719151)))

(assert (=> d!138527 (= res!841486 (bvsge #b00000000000000000000000000000000 (size!40286 _keys!1118)))))

(assert (=> d!138527 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!719151)))

(declare-fun b!1263147 () Bool)

(declare-fun e!719150 () Bool)

(assert (=> b!1263147 (= e!719150 call!62176)))

(declare-fun bm!62173 () Bool)

(assert (=> bm!62173 (= call!62176 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1263148 () Bool)

(assert (=> b!1263148 (= e!719149 e!719150)))

(declare-fun lt!572789 () (_ BitVec 64))

(assert (=> b!1263148 (= lt!572789 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!572790 () Unit!42051)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82413 (_ BitVec 64) (_ BitVec 32)) Unit!42051)

(assert (=> b!1263148 (= lt!572790 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!572789 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1263148 (arrayContainsKey!0 _keys!1118 lt!572789 #b00000000000000000000000000000000)))

(declare-fun lt!572791 () Unit!42051)

(assert (=> b!1263148 (= lt!572791 lt!572790)))

(declare-fun res!841487 () Bool)

(declare-datatypes ((SeekEntryResult!9975 0))(
  ( (MissingZero!9975 (index!42270 (_ BitVec 32))) (Found!9975 (index!42271 (_ BitVec 32))) (Intermediate!9975 (undefined!10787 Bool) (index!42272 (_ BitVec 32)) (x!111297 (_ BitVec 32))) (Undefined!9975) (MissingVacant!9975 (index!42273 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82413 (_ BitVec 32)) SeekEntryResult!9975)

(assert (=> b!1263148 (= res!841487 (= (seekEntryOrOpen!0 (select (arr!39749 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9975 #b00000000000000000000000000000000)))))

(assert (=> b!1263148 (=> (not res!841487) (not e!719150))))

(assert (= (and d!138527 (not res!841486)) b!1263146))

(assert (= (and b!1263146 c!122889) b!1263148))

(assert (= (and b!1263146 (not c!122889)) b!1263145))

(assert (= (and b!1263148 res!841487) b!1263147))

(assert (= (or b!1263147 b!1263145) bm!62173))

(assert (=> b!1263146 m!1163589))

(assert (=> b!1263146 m!1163589))

(assert (=> b!1263146 m!1163593))

(declare-fun m!1163693 () Bool)

(assert (=> bm!62173 m!1163693))

(assert (=> b!1263148 m!1163589))

(declare-fun m!1163695 () Bool)

(assert (=> b!1263148 m!1163695))

(declare-fun m!1163697 () Bool)

(assert (=> b!1263148 m!1163697))

(assert (=> b!1263148 m!1163589))

(declare-fun m!1163699 () Bool)

(assert (=> b!1263148 m!1163699))

(assert (=> b!1262969 d!138527))

(declare-fun mapNonEmpty!50431 () Bool)

(declare-fun mapRes!50431 () Bool)

(declare-fun tp!96063 () Bool)

(declare-fun e!719157 () Bool)

(assert (=> mapNonEmpty!50431 (= mapRes!50431 (and tp!96063 e!719157))))

(declare-fun mapKey!50431 () (_ BitVec 32))

(declare-fun mapRest!50431 () (Array (_ BitVec 32) ValueCell!15438))

(declare-fun mapValue!50431 () ValueCell!15438)

(assert (=> mapNonEmpty!50431 (= mapRest!50425 (store mapRest!50431 mapKey!50431 mapValue!50431))))

(declare-fun mapIsEmpty!50431 () Bool)

(assert (=> mapIsEmpty!50431 mapRes!50431))

(declare-fun b!1263155 () Bool)

(assert (=> b!1263155 (= e!719157 tp_is_empty!32403)))

(declare-fun condMapEmpty!50431 () Bool)

(declare-fun mapDefault!50431 () ValueCell!15438)

(assert (=> mapNonEmpty!50425 (= condMapEmpty!50431 (= mapRest!50425 ((as const (Array (_ BitVec 32) ValueCell!15438)) mapDefault!50431)))))

(declare-fun e!719156 () Bool)

(assert (=> mapNonEmpty!50425 (= tp!96054 (and e!719156 mapRes!50431))))

(declare-fun b!1263156 () Bool)

(assert (=> b!1263156 (= e!719156 tp_is_empty!32403)))

(assert (= (and mapNonEmpty!50425 condMapEmpty!50431) mapIsEmpty!50431))

(assert (= (and mapNonEmpty!50425 (not condMapEmpty!50431)) mapNonEmpty!50431))

(assert (= (and mapNonEmpty!50431 ((_ is ValueCellFull!15438) mapValue!50431)) b!1263155))

(assert (= (and mapNonEmpty!50425 ((_ is ValueCellFull!15438) mapDefault!50431)) b!1263156))

(declare-fun m!1163701 () Bool)

(assert (=> mapNonEmpty!50431 m!1163701))

(declare-fun b_lambda!22943 () Bool)

(assert (= b_lambda!22941 (or (and start!106104 b_free!27501) b_lambda!22943)))

(declare-fun b_lambda!22945 () Bool)

(assert (= b_lambda!22939 (or (and start!106104 b_free!27501) b_lambda!22945)))

(declare-fun b_lambda!22947 () Bool)

(assert (= b_lambda!22935 (or (and start!106104 b_free!27501) b_lambda!22947)))

(declare-fun b_lambda!22949 () Bool)

(assert (= b_lambda!22937 (or (and start!106104 b_free!27501) b_lambda!22949)))

(declare-fun b_lambda!22951 () Bool)

(assert (= b_lambda!22933 (or (and start!106104 b_free!27501) b_lambda!22951)))

(check-sat (not bm!62149) (not b!1263060) (not b!1263042) (not b!1263048) (not b!1263027) (not b!1263049) (not b_lambda!22951) (not bm!62173) (not b_lambda!22947) (not bm!62169) (not bm!62170) (not b!1263127) (not bm!62146) (not b_next!27501) (not b!1263030) (not b!1263061) (not b!1263047) (not b!1263071) (not d!138513) (not b!1263148) (not b!1263031) (not b!1263146) (not b!1263120) tp_is_empty!32403 (not b!1263033) (not b!1263035) (not d!138517) (not b!1263044) (not b!1263134) (not b!1263045) (not b!1263046) (not b!1263126) (not b!1263124) (not b!1263041) (not b_lambda!22943) (not b_lambda!22949) (not d!138519) (not b_lambda!22945) (not b!1263064) (not bm!62168) (not b!1263028) (not b!1263073) (not b!1263032) (not b!1263034) (not b!1263121) (not b!1263125) (not d!138511) b_and!45497 (not b!1263130) (not mapNonEmpty!50431) (not bm!62167) (not bm!62145) (not d!138509))
(check-sat b_and!45497 (not b_next!27501))

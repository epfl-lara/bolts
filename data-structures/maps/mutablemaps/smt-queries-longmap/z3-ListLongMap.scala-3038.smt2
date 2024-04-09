; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42612 () Bool)

(assert start!42612)

(declare-fun b_free!12039 () Bool)

(declare-fun b_next!12039 () Bool)

(assert (=> start!42612 (= b_free!12039 (not b_next!12039))))

(declare-fun tp!42157 () Bool)

(declare-fun b_and!20537 () Bool)

(assert (=> start!42612 (= tp!42157 b_and!20537)))

(declare-fun b!475103 () Bool)

(declare-fun res!283809 () Bool)

(declare-fun e!278967 () Bool)

(assert (=> b!475103 (=> (not res!283809) (not e!278967))))

(declare-datatypes ((array!30643 0))(
  ( (array!30644 (arr!14736 (Array (_ BitVec 32) (_ BitVec 64))) (size!15088 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30643)

(declare-datatypes ((List!9047 0))(
  ( (Nil!9044) (Cons!9043 (h!9899 (_ BitVec 64)) (t!15029 List!9047)) )
))
(declare-fun arrayNoDuplicates!0 (array!30643 (_ BitVec 32) List!9047) Bool)

(assert (=> b!475103 (= res!283809 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9044))))

(declare-fun b!475104 () Bool)

(declare-fun e!278968 () Bool)

(declare-fun tp_is_empty!13467 () Bool)

(assert (=> b!475104 (= e!278968 tp_is_empty!13467)))

(declare-fun b!475105 () Bool)

(declare-fun res!283807 () Bool)

(assert (=> b!475105 (=> (not res!283807) (not e!278967))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!19061 0))(
  ( (V!19062 (val!6778 Int)) )
))
(declare-datatypes ((ValueCell!6390 0))(
  ( (ValueCellFull!6390 (v!9067 V!19061)) (EmptyCell!6390) )
))
(declare-datatypes ((array!30645 0))(
  ( (array!30646 (arr!14737 (Array (_ BitVec 32) ValueCell!6390)) (size!15089 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30645)

(assert (=> b!475105 (= res!283807 (and (= (size!15089 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15088 _keys!1025) (size!15089 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475106 () Bool)

(assert (=> b!475106 (= e!278967 (bvsgt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-datatypes ((tuple2!8936 0))(
  ( (tuple2!8937 (_1!4478 (_ BitVec 64)) (_2!4478 V!19061)) )
))
(declare-datatypes ((List!9048 0))(
  ( (Nil!9045) (Cons!9044 (h!9900 tuple2!8936) (t!15030 List!9048)) )
))
(declare-datatypes ((ListLongMap!7863 0))(
  ( (ListLongMap!7864 (toList!3947 List!9048)) )
))
(declare-fun lt!216398 () ListLongMap!7863)

(declare-fun zeroValue!794 () V!19061)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!19061)

(declare-fun getCurrentListMapNoExtraKeys!2101 (array!30643 array!30645 (_ BitVec 32) (_ BitVec 32) V!19061 V!19061 (_ BitVec 32) Int) ListLongMap!7863)

(assert (=> b!475106 (= lt!216398 (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216399 () ListLongMap!7863)

(declare-fun minValueBefore!38 () V!19061)

(assert (=> b!475106 (= lt!216399 (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21919 () Bool)

(declare-fun mapRes!21919 () Bool)

(declare-fun tp!42156 () Bool)

(declare-fun e!278969 () Bool)

(assert (=> mapNonEmpty!21919 (= mapRes!21919 (and tp!42156 e!278969))))

(declare-fun mapKey!21919 () (_ BitVec 32))

(declare-fun mapRest!21919 () (Array (_ BitVec 32) ValueCell!6390))

(declare-fun mapValue!21919 () ValueCell!6390)

(assert (=> mapNonEmpty!21919 (= (arr!14737 _values!833) (store mapRest!21919 mapKey!21919 mapValue!21919))))

(declare-fun b!475107 () Bool)

(declare-fun e!278971 () Bool)

(assert (=> b!475107 (= e!278971 (and e!278968 mapRes!21919))))

(declare-fun condMapEmpty!21919 () Bool)

(declare-fun mapDefault!21919 () ValueCell!6390)

(assert (=> b!475107 (= condMapEmpty!21919 (= (arr!14737 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6390)) mapDefault!21919)))))

(declare-fun res!283806 () Bool)

(assert (=> start!42612 (=> (not res!283806) (not e!278967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42612 (= res!283806 (validMask!0 mask!1365))))

(assert (=> start!42612 e!278967))

(assert (=> start!42612 tp_is_empty!13467))

(assert (=> start!42612 tp!42157))

(assert (=> start!42612 true))

(declare-fun array_inv!10620 (array!30643) Bool)

(assert (=> start!42612 (array_inv!10620 _keys!1025)))

(declare-fun array_inv!10621 (array!30645) Bool)

(assert (=> start!42612 (and (array_inv!10621 _values!833) e!278971)))

(declare-fun b!475108 () Bool)

(assert (=> b!475108 (= e!278969 tp_is_empty!13467)))

(declare-fun b!475109 () Bool)

(declare-fun res!283808 () Bool)

(assert (=> b!475109 (=> (not res!283808) (not e!278967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30643 (_ BitVec 32)) Bool)

(assert (=> b!475109 (= res!283808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21919 () Bool)

(assert (=> mapIsEmpty!21919 mapRes!21919))

(assert (= (and start!42612 res!283806) b!475105))

(assert (= (and b!475105 res!283807) b!475109))

(assert (= (and b!475109 res!283808) b!475103))

(assert (= (and b!475103 res!283809) b!475106))

(assert (= (and b!475107 condMapEmpty!21919) mapIsEmpty!21919))

(assert (= (and b!475107 (not condMapEmpty!21919)) mapNonEmpty!21919))

(get-info :version)

(assert (= (and mapNonEmpty!21919 ((_ is ValueCellFull!6390) mapValue!21919)) b!475108))

(assert (= (and b!475107 ((_ is ValueCellFull!6390) mapDefault!21919)) b!475104))

(assert (= start!42612 b!475107))

(declare-fun m!457351 () Bool)

(assert (=> b!475109 m!457351))

(declare-fun m!457353 () Bool)

(assert (=> start!42612 m!457353))

(declare-fun m!457355 () Bool)

(assert (=> start!42612 m!457355))

(declare-fun m!457357 () Bool)

(assert (=> start!42612 m!457357))

(declare-fun m!457359 () Bool)

(assert (=> b!475106 m!457359))

(declare-fun m!457361 () Bool)

(assert (=> b!475106 m!457361))

(declare-fun m!457363 () Bool)

(assert (=> b!475103 m!457363))

(declare-fun m!457365 () Bool)

(assert (=> mapNonEmpty!21919 m!457365))

(check-sat (not mapNonEmpty!21919) (not start!42612) (not b!475106) (not b_next!12039) tp_is_empty!13467 (not b!475109) b_and!20537 (not b!475103))
(check-sat b_and!20537 (not b_next!12039))
(get-model)

(declare-fun b!475141 () Bool)

(declare-fun e!278995 () Bool)

(declare-fun e!278996 () Bool)

(assert (=> b!475141 (= e!278995 e!278996)))

(declare-fun c!57068 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!475141 (= c!57068 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475142 () Bool)

(declare-fun e!278997 () Bool)

(assert (=> b!475142 (= e!278997 e!278995)))

(declare-fun res!283829 () Bool)

(assert (=> b!475142 (=> (not res!283829) (not e!278995))))

(declare-fun e!278998 () Bool)

(assert (=> b!475142 (= res!283829 (not e!278998))))

(declare-fun res!283830 () Bool)

(assert (=> b!475142 (=> (not res!283830) (not e!278998))))

(assert (=> b!475142 (= res!283830 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75477 () Bool)

(declare-fun res!283828 () Bool)

(assert (=> d!75477 (=> res!283828 e!278997)))

(assert (=> d!75477 (= res!283828 (bvsge #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(assert (=> d!75477 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9044) e!278997)))

(declare-fun bm!30565 () Bool)

(declare-fun call!30568 () Bool)

(assert (=> bm!30565 (= call!30568 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57068 (Cons!9043 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000) Nil!9044) Nil!9044)))))

(declare-fun b!475143 () Bool)

(assert (=> b!475143 (= e!278996 call!30568)))

(declare-fun b!475144 () Bool)

(declare-fun contains!2557 (List!9047 (_ BitVec 64)) Bool)

(assert (=> b!475144 (= e!278998 (contains!2557 Nil!9044 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475145 () Bool)

(assert (=> b!475145 (= e!278996 call!30568)))

(assert (= (and d!75477 (not res!283828)) b!475142))

(assert (= (and b!475142 res!283830) b!475144))

(assert (= (and b!475142 res!283829) b!475141))

(assert (= (and b!475141 c!57068) b!475145))

(assert (= (and b!475141 (not c!57068)) b!475143))

(assert (= (or b!475145 b!475143) bm!30565))

(declare-fun m!457383 () Bool)

(assert (=> b!475141 m!457383))

(assert (=> b!475141 m!457383))

(declare-fun m!457385 () Bool)

(assert (=> b!475141 m!457385))

(assert (=> b!475142 m!457383))

(assert (=> b!475142 m!457383))

(assert (=> b!475142 m!457385))

(assert (=> bm!30565 m!457383))

(declare-fun m!457387 () Bool)

(assert (=> bm!30565 m!457387))

(assert (=> b!475144 m!457383))

(assert (=> b!475144 m!457383))

(declare-fun m!457389 () Bool)

(assert (=> b!475144 m!457389))

(assert (=> b!475103 d!75477))

(declare-fun b!475154 () Bool)

(declare-fun e!279006 () Bool)

(declare-fun e!279007 () Bool)

(assert (=> b!475154 (= e!279006 e!279007)))

(declare-fun lt!216414 () (_ BitVec 64))

(assert (=> b!475154 (= lt!216414 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13975 0))(
  ( (Unit!13976) )
))
(declare-fun lt!216412 () Unit!13975)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30643 (_ BitVec 64) (_ BitVec 32)) Unit!13975)

(assert (=> b!475154 (= lt!216412 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!216414 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!475154 (arrayContainsKey!0 _keys!1025 lt!216414 #b00000000000000000000000000000000)))

(declare-fun lt!216413 () Unit!13975)

(assert (=> b!475154 (= lt!216413 lt!216412)))

(declare-fun res!283836 () Bool)

(declare-datatypes ((SeekEntryResult!3546 0))(
  ( (MissingZero!3546 (index!16363 (_ BitVec 32))) (Found!3546 (index!16364 (_ BitVec 32))) (Intermediate!3546 (undefined!4358 Bool) (index!16365 (_ BitVec 32)) (x!44599 (_ BitVec 32))) (Undefined!3546) (MissingVacant!3546 (index!16366 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30643 (_ BitVec 32)) SeekEntryResult!3546)

(assert (=> b!475154 (= res!283836 (= (seekEntryOrOpen!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3546 #b00000000000000000000000000000000)))))

(assert (=> b!475154 (=> (not res!283836) (not e!279007))))

(declare-fun b!475155 () Bool)

(declare-fun call!30571 () Bool)

(assert (=> b!475155 (= e!279006 call!30571)))

(declare-fun d!75479 () Bool)

(declare-fun res!283835 () Bool)

(declare-fun e!279005 () Bool)

(assert (=> d!75479 (=> res!283835 e!279005)))

(assert (=> d!75479 (= res!283835 (bvsge #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(assert (=> d!75479 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!279005)))

(declare-fun bm!30568 () Bool)

(assert (=> bm!30568 (= call!30571 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!475156 () Bool)

(assert (=> b!475156 (= e!279005 e!279006)))

(declare-fun c!57071 () Bool)

(assert (=> b!475156 (= c!57071 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475157 () Bool)

(assert (=> b!475157 (= e!279007 call!30571)))

(assert (= (and d!75479 (not res!283835)) b!475156))

(assert (= (and b!475156 c!57071) b!475154))

(assert (= (and b!475156 (not c!57071)) b!475155))

(assert (= (and b!475154 res!283836) b!475157))

(assert (= (or b!475157 b!475155) bm!30568))

(assert (=> b!475154 m!457383))

(declare-fun m!457391 () Bool)

(assert (=> b!475154 m!457391))

(declare-fun m!457393 () Bool)

(assert (=> b!475154 m!457393))

(assert (=> b!475154 m!457383))

(declare-fun m!457395 () Bool)

(assert (=> b!475154 m!457395))

(declare-fun m!457397 () Bool)

(assert (=> bm!30568 m!457397))

(assert (=> b!475156 m!457383))

(assert (=> b!475156 m!457383))

(assert (=> b!475156 m!457385))

(assert (=> b!475109 d!75479))

(declare-fun d!75481 () Bool)

(assert (=> d!75481 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42612 d!75481))

(declare-fun d!75483 () Bool)

(assert (=> d!75483 (= (array_inv!10620 _keys!1025) (bvsge (size!15088 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42612 d!75483))

(declare-fun d!75485 () Bool)

(assert (=> d!75485 (= (array_inv!10621 _values!833) (bvsge (size!15089 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42612 d!75485))

(declare-fun b!475182 () Bool)

(assert (=> b!475182 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(assert (=> b!475182 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15089 _values!833)))))

(declare-fun e!279024 () Bool)

(declare-fun lt!216429 () ListLongMap!7863)

(declare-fun apply!334 (ListLongMap!7863 (_ BitVec 64)) V!19061)

(declare-fun get!7164 (ValueCell!6390 V!19061) V!19061)

(declare-fun dynLambda!926 (Int (_ BitVec 64)) V!19061)

(assert (=> b!475182 (= e!279024 (= (apply!334 lt!216429 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)) (get!7164 (select (arr!14737 _values!833) #b00000000000000000000000000000000) (dynLambda!926 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!75487 () Bool)

(declare-fun e!279025 () Bool)

(assert (=> d!75487 e!279025))

(declare-fun res!283848 () Bool)

(assert (=> d!75487 (=> (not res!283848) (not e!279025))))

(declare-fun contains!2558 (ListLongMap!7863 (_ BitVec 64)) Bool)

(assert (=> d!75487 (= res!283848 (not (contains!2558 lt!216429 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!279027 () ListLongMap!7863)

(assert (=> d!75487 (= lt!216429 e!279027)))

(declare-fun c!57081 () Bool)

(assert (=> d!75487 (= c!57081 (bvsge #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(assert (=> d!75487 (validMask!0 mask!1365)))

(assert (=> d!75487 (= (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216429)))

(declare-fun b!475183 () Bool)

(declare-fun e!279023 () Bool)

(declare-fun isEmpty!586 (ListLongMap!7863) Bool)

(assert (=> b!475183 (= e!279023 (isEmpty!586 lt!216429))))

(declare-fun b!475184 () Bool)

(declare-fun lt!216430 () Unit!13975)

(declare-fun lt!216431 () Unit!13975)

(assert (=> b!475184 (= lt!216430 lt!216431)))

(declare-fun lt!216434 () (_ BitVec 64))

(declare-fun lt!216433 () ListLongMap!7863)

(declare-fun lt!216432 () (_ BitVec 64))

(declare-fun lt!216435 () V!19061)

(declare-fun +!1727 (ListLongMap!7863 tuple2!8936) ListLongMap!7863)

(assert (=> b!475184 (not (contains!2558 (+!1727 lt!216433 (tuple2!8937 lt!216434 lt!216435)) lt!216432))))

(declare-fun addStillNotContains!169 (ListLongMap!7863 (_ BitVec 64) V!19061 (_ BitVec 64)) Unit!13975)

(assert (=> b!475184 (= lt!216431 (addStillNotContains!169 lt!216433 lt!216434 lt!216435 lt!216432))))

(assert (=> b!475184 (= lt!216432 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475184 (= lt!216435 (get!7164 (select (arr!14737 _values!833) #b00000000000000000000000000000000) (dynLambda!926 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475184 (= lt!216434 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30574 () ListLongMap!7863)

(assert (=> b!475184 (= lt!216433 call!30574)))

(declare-fun e!279022 () ListLongMap!7863)

(assert (=> b!475184 (= e!279022 (+!1727 call!30574 (tuple2!8937 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000) (get!7164 (select (arr!14737 _values!833) #b00000000000000000000000000000000) (dynLambda!926 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!475185 () Bool)

(assert (=> b!475185 (= e!279027 e!279022)))

(declare-fun c!57080 () Bool)

(assert (=> b!475185 (= c!57080 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475186 () Bool)

(declare-fun e!279028 () Bool)

(assert (=> b!475186 (= e!279025 e!279028)))

(declare-fun c!57083 () Bool)

(declare-fun e!279026 () Bool)

(assert (=> b!475186 (= c!57083 e!279026)))

(declare-fun res!283847 () Bool)

(assert (=> b!475186 (=> (not res!283847) (not e!279026))))

(assert (=> b!475186 (= res!283847 (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-fun b!475187 () Bool)

(assert (=> b!475187 (= e!279028 e!279024)))

(assert (=> b!475187 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-fun res!283845 () Bool)

(assert (=> b!475187 (= res!283845 (contains!2558 lt!216429 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475187 (=> (not res!283845) (not e!279024))))

(declare-fun b!475188 () Bool)

(assert (=> b!475188 (= e!279027 (ListLongMap!7864 Nil!9045))))

(declare-fun b!475189 () Bool)

(declare-fun res!283846 () Bool)

(assert (=> b!475189 (=> (not res!283846) (not e!279025))))

(assert (=> b!475189 (= res!283846 (not (contains!2558 lt!216429 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475190 () Bool)

(assert (=> b!475190 (= e!279023 (= lt!216429 (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun bm!30571 () Bool)

(assert (=> bm!30571 (= call!30574 (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475191 () Bool)

(assert (=> b!475191 (= e!279022 call!30574)))

(declare-fun b!475192 () Bool)

(assert (=> b!475192 (= e!279028 e!279023)))

(declare-fun c!57082 () Bool)

(assert (=> b!475192 (= c!57082 (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-fun b!475193 () Bool)

(assert (=> b!475193 (= e!279026 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475193 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!75487 c!57081) b!475188))

(assert (= (and d!75487 (not c!57081)) b!475185))

(assert (= (and b!475185 c!57080) b!475184))

(assert (= (and b!475185 (not c!57080)) b!475191))

(assert (= (or b!475184 b!475191) bm!30571))

(assert (= (and d!75487 res!283848) b!475189))

(assert (= (and b!475189 res!283846) b!475186))

(assert (= (and b!475186 res!283847) b!475193))

(assert (= (and b!475186 c!57083) b!475187))

(assert (= (and b!475186 (not c!57083)) b!475192))

(assert (= (and b!475187 res!283845) b!475182))

(assert (= (and b!475192 c!57082) b!475190))

(assert (= (and b!475192 (not c!57082)) b!475183))

(declare-fun b_lambda!10283 () Bool)

(assert (=> (not b_lambda!10283) (not b!475182)))

(declare-fun t!15034 () Bool)

(declare-fun tb!3941 () Bool)

(assert (=> (and start!42612 (= defaultEntry!841 defaultEntry!841) t!15034) tb!3941))

(declare-fun result!7465 () Bool)

(assert (=> tb!3941 (= result!7465 tp_is_empty!13467)))

(assert (=> b!475182 t!15034))

(declare-fun b_and!20541 () Bool)

(assert (= b_and!20537 (and (=> t!15034 result!7465) b_and!20541)))

(declare-fun b_lambda!10285 () Bool)

(assert (=> (not b_lambda!10285) (not b!475184)))

(assert (=> b!475184 t!15034))

(declare-fun b_and!20543 () Bool)

(assert (= b_and!20541 (and (=> t!15034 result!7465) b_and!20543)))

(declare-fun m!457399 () Bool)

(assert (=> b!475190 m!457399))

(assert (=> bm!30571 m!457399))

(declare-fun m!457401 () Bool)

(assert (=> b!475189 m!457401))

(declare-fun m!457403 () Bool)

(assert (=> b!475183 m!457403))

(assert (=> b!475193 m!457383))

(assert (=> b!475193 m!457383))

(assert (=> b!475193 m!457385))

(declare-fun m!457405 () Bool)

(assert (=> d!75487 m!457405))

(assert (=> d!75487 m!457353))

(assert (=> b!475187 m!457383))

(assert (=> b!475187 m!457383))

(declare-fun m!457407 () Bool)

(assert (=> b!475187 m!457407))

(declare-fun m!457409 () Bool)

(assert (=> b!475184 m!457409))

(declare-fun m!457411 () Bool)

(assert (=> b!475184 m!457411))

(declare-fun m!457413 () Bool)

(assert (=> b!475184 m!457413))

(declare-fun m!457415 () Bool)

(assert (=> b!475184 m!457415))

(assert (=> b!475184 m!457413))

(declare-fun m!457417 () Bool)

(assert (=> b!475184 m!457417))

(assert (=> b!475184 m!457383))

(assert (=> b!475184 m!457409))

(assert (=> b!475184 m!457417))

(declare-fun m!457419 () Bool)

(assert (=> b!475184 m!457419))

(declare-fun m!457421 () Bool)

(assert (=> b!475184 m!457421))

(assert (=> b!475182 m!457409))

(assert (=> b!475182 m!457383))

(declare-fun m!457423 () Bool)

(assert (=> b!475182 m!457423))

(assert (=> b!475182 m!457417))

(assert (=> b!475182 m!457383))

(assert (=> b!475182 m!457409))

(assert (=> b!475182 m!457417))

(assert (=> b!475182 m!457419))

(assert (=> b!475185 m!457383))

(assert (=> b!475185 m!457383))

(assert (=> b!475185 m!457385))

(assert (=> b!475106 d!75487))

(declare-fun b!475196 () Bool)

(assert (=> b!475196 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(assert (=> b!475196 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15089 _values!833)))))

(declare-fun lt!216436 () ListLongMap!7863)

(declare-fun e!279031 () Bool)

(assert (=> b!475196 (= e!279031 (= (apply!334 lt!216436 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)) (get!7164 (select (arr!14737 _values!833) #b00000000000000000000000000000000) (dynLambda!926 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!75489 () Bool)

(declare-fun e!279032 () Bool)

(assert (=> d!75489 e!279032))

(declare-fun res!283852 () Bool)

(assert (=> d!75489 (=> (not res!283852) (not e!279032))))

(assert (=> d!75489 (= res!283852 (not (contains!2558 lt!216436 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!279034 () ListLongMap!7863)

(assert (=> d!75489 (= lt!216436 e!279034)))

(declare-fun c!57085 () Bool)

(assert (=> d!75489 (= c!57085 (bvsge #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(assert (=> d!75489 (validMask!0 mask!1365)))

(assert (=> d!75489 (= (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216436)))

(declare-fun b!475197 () Bool)

(declare-fun e!279030 () Bool)

(assert (=> b!475197 (= e!279030 (isEmpty!586 lt!216436))))

(declare-fun b!475198 () Bool)

(declare-fun lt!216437 () Unit!13975)

(declare-fun lt!216438 () Unit!13975)

(assert (=> b!475198 (= lt!216437 lt!216438)))

(declare-fun lt!216442 () V!19061)

(declare-fun lt!216439 () (_ BitVec 64))

(declare-fun lt!216441 () (_ BitVec 64))

(declare-fun lt!216440 () ListLongMap!7863)

(assert (=> b!475198 (not (contains!2558 (+!1727 lt!216440 (tuple2!8937 lt!216441 lt!216442)) lt!216439))))

(assert (=> b!475198 (= lt!216438 (addStillNotContains!169 lt!216440 lt!216441 lt!216442 lt!216439))))

(assert (=> b!475198 (= lt!216439 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475198 (= lt!216442 (get!7164 (select (arr!14737 _values!833) #b00000000000000000000000000000000) (dynLambda!926 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475198 (= lt!216441 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30575 () ListLongMap!7863)

(assert (=> b!475198 (= lt!216440 call!30575)))

(declare-fun e!279029 () ListLongMap!7863)

(assert (=> b!475198 (= e!279029 (+!1727 call!30575 (tuple2!8937 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000) (get!7164 (select (arr!14737 _values!833) #b00000000000000000000000000000000) (dynLambda!926 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!475199 () Bool)

(assert (=> b!475199 (= e!279034 e!279029)))

(declare-fun c!57084 () Bool)

(assert (=> b!475199 (= c!57084 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475200 () Bool)

(declare-fun e!279035 () Bool)

(assert (=> b!475200 (= e!279032 e!279035)))

(declare-fun c!57087 () Bool)

(declare-fun e!279033 () Bool)

(assert (=> b!475200 (= c!57087 e!279033)))

(declare-fun res!283851 () Bool)

(assert (=> b!475200 (=> (not res!283851) (not e!279033))))

(assert (=> b!475200 (= res!283851 (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-fun b!475201 () Bool)

(assert (=> b!475201 (= e!279035 e!279031)))

(assert (=> b!475201 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-fun res!283849 () Bool)

(assert (=> b!475201 (= res!283849 (contains!2558 lt!216436 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475201 (=> (not res!283849) (not e!279031))))

(declare-fun b!475202 () Bool)

(assert (=> b!475202 (= e!279034 (ListLongMap!7864 Nil!9045))))

(declare-fun b!475203 () Bool)

(declare-fun res!283850 () Bool)

(assert (=> b!475203 (=> (not res!283850) (not e!279032))))

(assert (=> b!475203 (= res!283850 (not (contains!2558 lt!216436 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475204 () Bool)

(assert (=> b!475204 (= e!279030 (= lt!216436 (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun bm!30572 () Bool)

(assert (=> bm!30572 (= call!30575 (getCurrentListMapNoExtraKeys!2101 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475205 () Bool)

(assert (=> b!475205 (= e!279029 call!30575)))

(declare-fun b!475206 () Bool)

(assert (=> b!475206 (= e!279035 e!279030)))

(declare-fun c!57086 () Bool)

(assert (=> b!475206 (= c!57086 (bvslt #b00000000000000000000000000000000 (size!15088 _keys!1025)))))

(declare-fun b!475207 () Bool)

(assert (=> b!475207 (= e!279033 (validKeyInArray!0 (select (arr!14736 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475207 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!75489 c!57085) b!475202))

(assert (= (and d!75489 (not c!57085)) b!475199))

(assert (= (and b!475199 c!57084) b!475198))

(assert (= (and b!475199 (not c!57084)) b!475205))

(assert (= (or b!475198 b!475205) bm!30572))

(assert (= (and d!75489 res!283852) b!475203))

(assert (= (and b!475203 res!283850) b!475200))

(assert (= (and b!475200 res!283851) b!475207))

(assert (= (and b!475200 c!57087) b!475201))

(assert (= (and b!475200 (not c!57087)) b!475206))

(assert (= (and b!475201 res!283849) b!475196))

(assert (= (and b!475206 c!57086) b!475204))

(assert (= (and b!475206 (not c!57086)) b!475197))

(declare-fun b_lambda!10287 () Bool)

(assert (=> (not b_lambda!10287) (not b!475196)))

(assert (=> b!475196 t!15034))

(declare-fun b_and!20545 () Bool)

(assert (= b_and!20543 (and (=> t!15034 result!7465) b_and!20545)))

(declare-fun b_lambda!10289 () Bool)

(assert (=> (not b_lambda!10289) (not b!475198)))

(assert (=> b!475198 t!15034))

(declare-fun b_and!20547 () Bool)

(assert (= b_and!20545 (and (=> t!15034 result!7465) b_and!20547)))

(declare-fun m!457425 () Bool)

(assert (=> b!475204 m!457425))

(assert (=> bm!30572 m!457425))

(declare-fun m!457427 () Bool)

(assert (=> b!475203 m!457427))

(declare-fun m!457429 () Bool)

(assert (=> b!475197 m!457429))

(assert (=> b!475207 m!457383))

(assert (=> b!475207 m!457383))

(assert (=> b!475207 m!457385))

(declare-fun m!457431 () Bool)

(assert (=> d!75489 m!457431))

(assert (=> d!75489 m!457353))

(assert (=> b!475201 m!457383))

(assert (=> b!475201 m!457383))

(declare-fun m!457433 () Bool)

(assert (=> b!475201 m!457433))

(assert (=> b!475198 m!457409))

(declare-fun m!457435 () Bool)

(assert (=> b!475198 m!457435))

(declare-fun m!457437 () Bool)

(assert (=> b!475198 m!457437))

(declare-fun m!457439 () Bool)

(assert (=> b!475198 m!457439))

(assert (=> b!475198 m!457437))

(assert (=> b!475198 m!457417))

(assert (=> b!475198 m!457383))

(assert (=> b!475198 m!457409))

(assert (=> b!475198 m!457417))

(assert (=> b!475198 m!457419))

(declare-fun m!457441 () Bool)

(assert (=> b!475198 m!457441))

(assert (=> b!475196 m!457409))

(assert (=> b!475196 m!457383))

(declare-fun m!457443 () Bool)

(assert (=> b!475196 m!457443))

(assert (=> b!475196 m!457417))

(assert (=> b!475196 m!457383))

(assert (=> b!475196 m!457409))

(assert (=> b!475196 m!457417))

(assert (=> b!475196 m!457419))

(assert (=> b!475199 m!457383))

(assert (=> b!475199 m!457383))

(assert (=> b!475199 m!457385))

(assert (=> b!475106 d!75489))

(declare-fun b!475215 () Bool)

(declare-fun e!279040 () Bool)

(assert (=> b!475215 (= e!279040 tp_is_empty!13467)))

(declare-fun mapNonEmpty!21925 () Bool)

(declare-fun mapRes!21925 () Bool)

(declare-fun tp!42166 () Bool)

(declare-fun e!279041 () Bool)

(assert (=> mapNonEmpty!21925 (= mapRes!21925 (and tp!42166 e!279041))))

(declare-fun mapKey!21925 () (_ BitVec 32))

(declare-fun mapRest!21925 () (Array (_ BitVec 32) ValueCell!6390))

(declare-fun mapValue!21925 () ValueCell!6390)

(assert (=> mapNonEmpty!21925 (= mapRest!21919 (store mapRest!21925 mapKey!21925 mapValue!21925))))

(declare-fun condMapEmpty!21925 () Bool)

(declare-fun mapDefault!21925 () ValueCell!6390)

(assert (=> mapNonEmpty!21919 (= condMapEmpty!21925 (= mapRest!21919 ((as const (Array (_ BitVec 32) ValueCell!6390)) mapDefault!21925)))))

(assert (=> mapNonEmpty!21919 (= tp!42156 (and e!279040 mapRes!21925))))

(declare-fun b!475214 () Bool)

(assert (=> b!475214 (= e!279041 tp_is_empty!13467)))

(declare-fun mapIsEmpty!21925 () Bool)

(assert (=> mapIsEmpty!21925 mapRes!21925))

(assert (= (and mapNonEmpty!21919 condMapEmpty!21925) mapIsEmpty!21925))

(assert (= (and mapNonEmpty!21919 (not condMapEmpty!21925)) mapNonEmpty!21925))

(assert (= (and mapNonEmpty!21925 ((_ is ValueCellFull!6390) mapValue!21925)) b!475214))

(assert (= (and mapNonEmpty!21919 ((_ is ValueCellFull!6390) mapDefault!21925)) b!475215))

(declare-fun m!457445 () Bool)

(assert (=> mapNonEmpty!21925 m!457445))

(declare-fun b_lambda!10291 () Bool)

(assert (= b_lambda!10283 (or (and start!42612 b_free!12039) b_lambda!10291)))

(declare-fun b_lambda!10293 () Bool)

(assert (= b_lambda!10289 (or (and start!42612 b_free!12039) b_lambda!10293)))

(declare-fun b_lambda!10295 () Bool)

(assert (= b_lambda!10285 (or (and start!42612 b_free!12039) b_lambda!10295)))

(declare-fun b_lambda!10297 () Bool)

(assert (= b_lambda!10287 (or (and start!42612 b_free!12039) b_lambda!10297)))

(check-sat (not b!475183) (not b!475182) (not b!475207) (not b!475185) (not b!475154) (not b!475198) (not b!475189) (not b_lambda!10295) (not bm!30565) (not b!475196) (not b!475197) (not b!475203) (not b!475193) (not b!475141) (not b!475199) (not d!75489) (not bm!30571) (not b_lambda!10291) (not b!475142) (not b!475184) (not b!475201) (not b_next!12039) (not b!475156) (not d!75487) (not bm!30568) b_and!20547 tp_is_empty!13467 (not b_lambda!10293) (not b!475187) (not mapNonEmpty!21925) (not b_lambda!10297) (not b!475144) (not bm!30572) (not b!475190) (not b!475204))
(check-sat b_and!20547 (not b_next!12039))

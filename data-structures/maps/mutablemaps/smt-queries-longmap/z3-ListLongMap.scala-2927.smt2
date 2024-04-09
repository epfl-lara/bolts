; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41742 () Bool)

(assert start!41742)

(declare-fun b_free!11373 () Bool)

(declare-fun b_next!11373 () Bool)

(assert (=> start!41742 (= b_free!11373 (not b_next!11373))))

(declare-fun tp!40122 () Bool)

(declare-fun b_and!19747 () Bool)

(assert (=> start!41742 (= tp!40122 b_and!19747)))

(declare-fun mapIsEmpty!20884 () Bool)

(declare-fun mapRes!20884 () Bool)

(assert (=> mapIsEmpty!20884 mapRes!20884))

(declare-fun b!465820 () Bool)

(declare-fun res!278531 () Bool)

(declare-fun e!272323 () Bool)

(assert (=> b!465820 (=> (not res!278531) (not e!272323))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29339 0))(
  ( (array!29340 (arr!14096 (Array (_ BitVec 32) (_ BitVec 64))) (size!14448 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29339)

(declare-datatypes ((V!18173 0))(
  ( (V!18174 (val!6445 Int)) )
))
(declare-datatypes ((ValueCell!6057 0))(
  ( (ValueCellFull!6057 (v!8728 V!18173)) (EmptyCell!6057) )
))
(declare-datatypes ((array!29341 0))(
  ( (array!29342 (arr!14097 (Array (_ BitVec 32) ValueCell!6057)) (size!14449 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29341)

(assert (=> b!465820 (= res!278531 (and (= (size!14449 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14448 _keys!1025) (size!14449 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465821 () Bool)

(declare-fun res!278533 () Bool)

(assert (=> b!465821 (=> (not res!278533) (not e!272323))))

(declare-datatypes ((List!8551 0))(
  ( (Nil!8548) (Cons!8547 (h!9403 (_ BitVec 64)) (t!14509 List!8551)) )
))
(declare-fun arrayNoDuplicates!0 (array!29339 (_ BitVec 32) List!8551) Bool)

(assert (=> b!465821 (= res!278533 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8548))))

(declare-fun res!278529 () Bool)

(assert (=> start!41742 (=> (not res!278529) (not e!272323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41742 (= res!278529 (validMask!0 mask!1365))))

(assert (=> start!41742 e!272323))

(declare-fun tp_is_empty!12801 () Bool)

(assert (=> start!41742 tp_is_empty!12801))

(assert (=> start!41742 tp!40122))

(assert (=> start!41742 true))

(declare-fun array_inv!10160 (array!29339) Bool)

(assert (=> start!41742 (array_inv!10160 _keys!1025)))

(declare-fun e!272328 () Bool)

(declare-fun array_inv!10161 (array!29341) Bool)

(assert (=> start!41742 (and (array_inv!10161 _values!833) e!272328)))

(declare-fun b!465822 () Bool)

(declare-fun e!272325 () Bool)

(assert (=> b!465822 (= e!272325 tp_is_empty!12801)))

(declare-fun b!465823 () Bool)

(declare-fun res!278528 () Bool)

(declare-fun e!272326 () Bool)

(assert (=> b!465823 (=> res!278528 e!272326)))

(declare-fun minValueBefore!38 () V!18173)

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!18173)

(declare-fun minValueAfter!38 () V!18173)

(declare-datatypes ((tuple2!8430 0))(
  ( (tuple2!8431 (_1!4225 (_ BitVec 64)) (_2!4225 V!18173)) )
))
(declare-datatypes ((List!8552 0))(
  ( (Nil!8549) (Cons!8548 (h!9404 tuple2!8430) (t!14510 List!8552)) )
))
(declare-datatypes ((ListLongMap!7357 0))(
  ( (ListLongMap!7358 (toList!3694 List!8552)) )
))
(declare-fun +!1627 (ListLongMap!7357 tuple2!8430) ListLongMap!7357)

(declare-fun getCurrentListMap!2136 (array!29339 array!29341 (_ BitVec 32) (_ BitVec 32) V!18173 V!18173 (_ BitVec 32) Int) ListLongMap!7357)

(assert (=> b!465823 (= res!278528 (not (= (+!1627 (getCurrentListMap!2136 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (getCurrentListMap!2136 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))))

(declare-fun b!465824 () Bool)

(assert (=> b!465824 (= e!272326 (bvsle #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465825 () Bool)

(declare-fun e!272327 () Bool)

(assert (=> b!465825 (= e!272327 tp_is_empty!12801)))

(declare-fun mapNonEmpty!20884 () Bool)

(declare-fun tp!40123 () Bool)

(assert (=> mapNonEmpty!20884 (= mapRes!20884 (and tp!40123 e!272327))))

(declare-fun mapValue!20884 () ValueCell!6057)

(declare-fun mapKey!20884 () (_ BitVec 32))

(declare-fun mapRest!20884 () (Array (_ BitVec 32) ValueCell!6057))

(assert (=> mapNonEmpty!20884 (= (arr!14097 _values!833) (store mapRest!20884 mapKey!20884 mapValue!20884))))

(declare-fun b!465826 () Bool)

(declare-fun res!278530 () Bool)

(assert (=> b!465826 (=> (not res!278530) (not e!272323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29339 (_ BitVec 32)) Bool)

(assert (=> b!465826 (= res!278530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465827 () Bool)

(assert (=> b!465827 (= e!272323 (not e!272326))))

(declare-fun res!278532 () Bool)

(assert (=> b!465827 (=> res!278532 e!272326)))

(assert (=> b!465827 (= res!278532 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210470 () ListLongMap!7357)

(declare-fun lt!210468 () ListLongMap!7357)

(assert (=> b!465827 (= lt!210470 lt!210468)))

(declare-datatypes ((Unit!13507 0))(
  ( (Unit!13508) )
))
(declare-fun lt!210469 () Unit!13507)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!56 (array!29339 array!29341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18173 V!18173 V!18173 V!18173 (_ BitVec 32) Int) Unit!13507)

(assert (=> b!465827 (= lt!210469 (lemmaNoChangeToArrayThenSameMapNoExtras!56 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1861 (array!29339 array!29341 (_ BitVec 32) (_ BitVec 32) V!18173 V!18173 (_ BitVec 32) Int) ListLongMap!7357)

(assert (=> b!465827 (= lt!210468 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465827 (= lt!210470 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465828 () Bool)

(assert (=> b!465828 (= e!272328 (and e!272325 mapRes!20884))))

(declare-fun condMapEmpty!20884 () Bool)

(declare-fun mapDefault!20884 () ValueCell!6057)

(assert (=> b!465828 (= condMapEmpty!20884 (= (arr!14097 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6057)) mapDefault!20884)))))

(assert (= (and start!41742 res!278529) b!465820))

(assert (= (and b!465820 res!278531) b!465826))

(assert (= (and b!465826 res!278530) b!465821))

(assert (= (and b!465821 res!278533) b!465827))

(assert (= (and b!465827 (not res!278532)) b!465823))

(assert (= (and b!465823 (not res!278528)) b!465824))

(assert (= (and b!465828 condMapEmpty!20884) mapIsEmpty!20884))

(assert (= (and b!465828 (not condMapEmpty!20884)) mapNonEmpty!20884))

(get-info :version)

(assert (= (and mapNonEmpty!20884 ((_ is ValueCellFull!6057) mapValue!20884)) b!465825))

(assert (= (and b!465828 ((_ is ValueCellFull!6057) mapDefault!20884)) b!465822))

(assert (= start!41742 b!465828))

(declare-fun m!448081 () Bool)

(assert (=> start!41742 m!448081))

(declare-fun m!448083 () Bool)

(assert (=> start!41742 m!448083))

(declare-fun m!448085 () Bool)

(assert (=> start!41742 m!448085))

(declare-fun m!448087 () Bool)

(assert (=> b!465821 m!448087))

(declare-fun m!448089 () Bool)

(assert (=> b!465826 m!448089))

(declare-fun m!448091 () Bool)

(assert (=> b!465823 m!448091))

(assert (=> b!465823 m!448091))

(declare-fun m!448093 () Bool)

(assert (=> b!465823 m!448093))

(declare-fun m!448095 () Bool)

(assert (=> b!465823 m!448095))

(declare-fun m!448097 () Bool)

(assert (=> b!465827 m!448097))

(declare-fun m!448099 () Bool)

(assert (=> b!465827 m!448099))

(declare-fun m!448101 () Bool)

(assert (=> b!465827 m!448101))

(declare-fun m!448103 () Bool)

(assert (=> mapNonEmpty!20884 m!448103))

(check-sat (not mapNonEmpty!20884) tp_is_empty!12801 (not b_next!11373) (not b!465821) (not b!465826) (not b!465823) (not start!41742) (not b!465827) b_and!19747)
(check-sat b_and!19747 (not b_next!11373))
(get-model)

(declare-fun d!74995 () Bool)

(declare-fun e!272349 () Bool)

(assert (=> d!74995 e!272349))

(declare-fun res!278556 () Bool)

(assert (=> d!74995 (=> (not res!278556) (not e!272349))))

(declare-fun lt!210491 () ListLongMap!7357)

(declare-fun contains!2527 (ListLongMap!7357 (_ BitVec 64)) Bool)

(assert (=> d!74995 (= res!278556 (contains!2527 lt!210491 (_1!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lt!210490 () List!8552)

(assert (=> d!74995 (= lt!210491 (ListLongMap!7358 lt!210490))))

(declare-fun lt!210488 () Unit!13507)

(declare-fun lt!210489 () Unit!13507)

(assert (=> d!74995 (= lt!210488 lt!210489)))

(declare-datatypes ((Option!381 0))(
  ( (Some!380 (v!8730 V!18173)) (None!379) )
))
(declare-fun getValueByKey!375 (List!8552 (_ BitVec 64)) Option!381)

(assert (=> d!74995 (= (getValueByKey!375 lt!210490 (_1!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!380 (_2!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun lemmaContainsTupThenGetReturnValue!199 (List!8552 (_ BitVec 64) V!18173) Unit!13507)

(assert (=> d!74995 (= lt!210489 (lemmaContainsTupThenGetReturnValue!199 lt!210490 (_1!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun insertStrictlySorted!201 (List!8552 (_ BitVec 64) V!18173) List!8552)

(assert (=> d!74995 (= lt!210490 (insertStrictlySorted!201 (toList!3694 (getCurrentListMap!2136 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841)) (_1!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (_2!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(assert (=> d!74995 (= (+!1627 (getCurrentListMap!2136 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) lt!210491)))

(declare-fun b!465860 () Bool)

(declare-fun res!278557 () Bool)

(assert (=> b!465860 (=> (not res!278557) (not e!272349))))

(assert (=> b!465860 (= res!278557 (= (getValueByKey!375 (toList!3694 lt!210491) (_1!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))) (Some!380 (_2!4225 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))))

(declare-fun b!465861 () Bool)

(declare-fun contains!2528 (List!8552 tuple2!8430) Bool)

(assert (=> b!465861 (= e!272349 (contains!2528 (toList!3694 lt!210491) (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(assert (= (and d!74995 res!278556) b!465860))

(assert (= (and b!465860 res!278557) b!465861))

(declare-fun m!448129 () Bool)

(assert (=> d!74995 m!448129))

(declare-fun m!448131 () Bool)

(assert (=> d!74995 m!448131))

(declare-fun m!448133 () Bool)

(assert (=> d!74995 m!448133))

(declare-fun m!448135 () Bool)

(assert (=> d!74995 m!448135))

(declare-fun m!448137 () Bool)

(assert (=> b!465860 m!448137))

(declare-fun m!448139 () Bool)

(assert (=> b!465861 m!448139))

(assert (=> b!465823 d!74995))

(declare-fun call!30253 () ListLongMap!7357)

(declare-fun bm!30247 () Bool)

(assert (=> bm!30247 (= call!30253 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465904 () Bool)

(declare-fun e!272376 () Bool)

(declare-fun e!272378 () Bool)

(assert (=> b!465904 (= e!272376 e!272378)))

(declare-fun res!278584 () Bool)

(declare-fun call!30254 () Bool)

(assert (=> b!465904 (= res!278584 call!30254)))

(assert (=> b!465904 (=> (not res!278584) (not e!272378))))

(declare-fun b!465905 () Bool)

(declare-fun e!272385 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!465905 (= e!272385 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!74997 () Bool)

(declare-fun e!272380 () Bool)

(assert (=> d!74997 e!272380))

(declare-fun res!278578 () Bool)

(assert (=> d!74997 (=> (not res!278578) (not e!272380))))

(assert (=> d!74997 (= res!278578 (or (bvsge #b00000000000000000000000000000000 (size!14448 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))))

(declare-fun lt!210542 () ListLongMap!7357)

(declare-fun lt!210550 () ListLongMap!7357)

(assert (=> d!74997 (= lt!210542 lt!210550)))

(declare-fun lt!210538 () Unit!13507)

(declare-fun e!272383 () Unit!13507)

(assert (=> d!74997 (= lt!210538 e!272383)))

(declare-fun c!56635 () Bool)

(declare-fun e!272386 () Bool)

(assert (=> d!74997 (= c!56635 e!272386)))

(declare-fun res!278583 () Bool)

(assert (=> d!74997 (=> (not res!278583) (not e!272386))))

(assert (=> d!74997 (= res!278583 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun e!272387 () ListLongMap!7357)

(assert (=> d!74997 (= lt!210550 e!272387)))

(declare-fun c!56634 () Bool)

(assert (=> d!74997 (= c!56634 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!74997 (validMask!0 mask!1365)))

(assert (=> d!74997 (= (getCurrentListMap!2136 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210542)))

(declare-fun bm!30248 () Bool)

(declare-fun call!30255 () ListLongMap!7357)

(declare-fun call!30252 () ListLongMap!7357)

(assert (=> bm!30248 (= call!30255 call!30252)))

(declare-fun b!465906 () Bool)

(assert (=> b!465906 (= e!272386 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465907 () Bool)

(declare-fun call!30256 () ListLongMap!7357)

(assert (=> b!465907 (= e!272387 (+!1627 call!30256 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!465908 () Bool)

(declare-fun e!272384 () ListLongMap!7357)

(declare-fun call!30251 () ListLongMap!7357)

(assert (=> b!465908 (= e!272384 call!30251)))

(declare-fun b!465909 () Bool)

(declare-fun apply!322 (ListLongMap!7357 (_ BitVec 64)) V!18173)

(assert (=> b!465909 (= e!272378 (= (apply!322 lt!210542 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!465910 () Bool)

(declare-fun e!272379 () Bool)

(declare-fun get!6930 (ValueCell!6057 V!18173) V!18173)

(declare-fun dynLambda!914 (Int (_ BitVec 64)) V!18173)

(assert (=> b!465910 (= e!272379 (= (apply!322 lt!210542 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)) (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!465910 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14449 _values!833)))))

(assert (=> b!465910 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465911 () Bool)

(declare-fun e!272377 () Bool)

(assert (=> b!465911 (= e!272377 e!272379)))

(declare-fun res!278581 () Bool)

(assert (=> b!465911 (=> (not res!278581) (not e!272379))))

(assert (=> b!465911 (= res!278581 (contains!2527 lt!210542 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465912 () Bool)

(declare-fun e!272382 () Bool)

(assert (=> b!465912 (= e!272382 (= (apply!322 lt!210542 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!465913 () Bool)

(assert (=> b!465913 (= e!272380 e!272376)))

(declare-fun c!56636 () Bool)

(assert (=> b!465913 (= c!56636 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30249 () Bool)

(declare-fun c!56638 () Bool)

(assert (=> bm!30249 (= call!30256 (+!1627 (ite c!56634 call!30253 (ite c!56638 call!30252 call!30255)) (ite (or c!56634 c!56638) (tuple2!8431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!465914 () Bool)

(declare-fun Unit!13509 () Unit!13507)

(assert (=> b!465914 (= e!272383 Unit!13509)))

(declare-fun b!465915 () Bool)

(assert (=> b!465915 (= e!272384 call!30255)))

(declare-fun b!465916 () Bool)

(declare-fun e!272388 () ListLongMap!7357)

(assert (=> b!465916 (= e!272387 e!272388)))

(assert (=> b!465916 (= c!56638 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!465917 () Bool)

(declare-fun res!278576 () Bool)

(assert (=> b!465917 (=> (not res!278576) (not e!272380))))

(declare-fun e!272381 () Bool)

(assert (=> b!465917 (= res!278576 e!272381)))

(declare-fun c!56637 () Bool)

(assert (=> b!465917 (= c!56637 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30250 () Bool)

(declare-fun call!30250 () Bool)

(assert (=> bm!30250 (= call!30250 (contains!2527 lt!210542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!465918 () Bool)

(assert (=> b!465918 (= e!272388 call!30251)))

(declare-fun bm!30251 () Bool)

(assert (=> bm!30251 (= call!30251 call!30256)))

(declare-fun b!465919 () Bool)

(assert (=> b!465919 (= e!272381 e!272382)))

(declare-fun res!278582 () Bool)

(assert (=> b!465919 (= res!278582 call!30250)))

(assert (=> b!465919 (=> (not res!278582) (not e!272382))))

(declare-fun b!465920 () Bool)

(declare-fun c!56639 () Bool)

(assert (=> b!465920 (= c!56639 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!465920 (= e!272388 e!272384)))

(declare-fun b!465921 () Bool)

(declare-fun res!278580 () Bool)

(assert (=> b!465921 (=> (not res!278580) (not e!272380))))

(assert (=> b!465921 (= res!278580 e!272377)))

(declare-fun res!278577 () Bool)

(assert (=> b!465921 (=> res!278577 e!272377)))

(assert (=> b!465921 (= res!278577 (not e!272385))))

(declare-fun res!278579 () Bool)

(assert (=> b!465921 (=> (not res!278579) (not e!272385))))

(assert (=> b!465921 (= res!278579 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465922 () Bool)

(assert (=> b!465922 (= e!272381 (not call!30250))))

(declare-fun bm!30252 () Bool)

(assert (=> bm!30252 (= call!30252 call!30253)))

(declare-fun bm!30253 () Bool)

(assert (=> bm!30253 (= call!30254 (contains!2527 lt!210542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!465923 () Bool)

(declare-fun lt!210544 () Unit!13507)

(assert (=> b!465923 (= e!272383 lt!210544)))

(declare-fun lt!210540 () ListLongMap!7357)

(assert (=> b!465923 (= lt!210540 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210548 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210548 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210536 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210536 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210555 () Unit!13507)

(declare-fun addStillContains!285 (ListLongMap!7357 (_ BitVec 64) V!18173 (_ BitVec 64)) Unit!13507)

(assert (=> b!465923 (= lt!210555 (addStillContains!285 lt!210540 lt!210548 zeroValue!794 lt!210536))))

(assert (=> b!465923 (contains!2527 (+!1627 lt!210540 (tuple2!8431 lt!210548 zeroValue!794)) lt!210536)))

(declare-fun lt!210551 () Unit!13507)

(assert (=> b!465923 (= lt!210551 lt!210555)))

(declare-fun lt!210549 () ListLongMap!7357)

(assert (=> b!465923 (= lt!210549 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210557 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210557 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210556 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210556 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210547 () Unit!13507)

(declare-fun addApplyDifferent!285 (ListLongMap!7357 (_ BitVec 64) V!18173 (_ BitVec 64)) Unit!13507)

(assert (=> b!465923 (= lt!210547 (addApplyDifferent!285 lt!210549 lt!210557 minValueBefore!38 lt!210556))))

(assert (=> b!465923 (= (apply!322 (+!1627 lt!210549 (tuple2!8431 lt!210557 minValueBefore!38)) lt!210556) (apply!322 lt!210549 lt!210556))))

(declare-fun lt!210543 () Unit!13507)

(assert (=> b!465923 (= lt!210543 lt!210547)))

(declare-fun lt!210554 () ListLongMap!7357)

(assert (=> b!465923 (= lt!210554 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210545 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210541 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210541 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210552 () Unit!13507)

(assert (=> b!465923 (= lt!210552 (addApplyDifferent!285 lt!210554 lt!210545 zeroValue!794 lt!210541))))

(assert (=> b!465923 (= (apply!322 (+!1627 lt!210554 (tuple2!8431 lt!210545 zeroValue!794)) lt!210541) (apply!322 lt!210554 lt!210541))))

(declare-fun lt!210553 () Unit!13507)

(assert (=> b!465923 (= lt!210553 lt!210552)))

(declare-fun lt!210537 () ListLongMap!7357)

(assert (=> b!465923 (= lt!210537 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210539 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210539 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210546 () (_ BitVec 64))

(assert (=> b!465923 (= lt!210546 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!465923 (= lt!210544 (addApplyDifferent!285 lt!210537 lt!210539 minValueBefore!38 lt!210546))))

(assert (=> b!465923 (= (apply!322 (+!1627 lt!210537 (tuple2!8431 lt!210539 minValueBefore!38)) lt!210546) (apply!322 lt!210537 lt!210546))))

(declare-fun b!465924 () Bool)

(assert (=> b!465924 (= e!272376 (not call!30254))))

(assert (= (and d!74997 c!56634) b!465907))

(assert (= (and d!74997 (not c!56634)) b!465916))

(assert (= (and b!465916 c!56638) b!465918))

(assert (= (and b!465916 (not c!56638)) b!465920))

(assert (= (and b!465920 c!56639) b!465908))

(assert (= (and b!465920 (not c!56639)) b!465915))

(assert (= (or b!465908 b!465915) bm!30248))

(assert (= (or b!465918 bm!30248) bm!30252))

(assert (= (or b!465918 b!465908) bm!30251))

(assert (= (or b!465907 bm!30252) bm!30247))

(assert (= (or b!465907 bm!30251) bm!30249))

(assert (= (and d!74997 res!278583) b!465906))

(assert (= (and d!74997 c!56635) b!465923))

(assert (= (and d!74997 (not c!56635)) b!465914))

(assert (= (and d!74997 res!278578) b!465921))

(assert (= (and b!465921 res!278579) b!465905))

(assert (= (and b!465921 (not res!278577)) b!465911))

(assert (= (and b!465911 res!278581) b!465910))

(assert (= (and b!465921 res!278580) b!465917))

(assert (= (and b!465917 c!56637) b!465919))

(assert (= (and b!465917 (not c!56637)) b!465922))

(assert (= (and b!465919 res!278582) b!465912))

(assert (= (or b!465919 b!465922) bm!30250))

(assert (= (and b!465917 res!278576) b!465913))

(assert (= (and b!465913 c!56636) b!465904))

(assert (= (and b!465913 (not c!56636)) b!465924))

(assert (= (and b!465904 res!278584) b!465909))

(assert (= (or b!465904 b!465924) bm!30253))

(declare-fun b_lambda!10035 () Bool)

(assert (=> (not b_lambda!10035) (not b!465910)))

(declare-fun t!14513 () Bool)

(declare-fun tb!3917 () Bool)

(assert (=> (and start!41742 (= defaultEntry!841 defaultEntry!841) t!14513) tb!3917))

(declare-fun result!7393 () Bool)

(assert (=> tb!3917 (= result!7393 tp_is_empty!12801)))

(assert (=> b!465910 t!14513))

(declare-fun b_and!19751 () Bool)

(assert (= b_and!19747 (and (=> t!14513 result!7393) b_and!19751)))

(declare-fun m!448141 () Bool)

(assert (=> b!465923 m!448141))

(declare-fun m!448143 () Bool)

(assert (=> b!465923 m!448143))

(declare-fun m!448145 () Bool)

(assert (=> b!465923 m!448145))

(declare-fun m!448147 () Bool)

(assert (=> b!465923 m!448147))

(declare-fun m!448149 () Bool)

(assert (=> b!465923 m!448149))

(declare-fun m!448151 () Bool)

(assert (=> b!465923 m!448151))

(assert (=> b!465923 m!448145))

(declare-fun m!448153 () Bool)

(assert (=> b!465923 m!448153))

(declare-fun m!448155 () Bool)

(assert (=> b!465923 m!448155))

(assert (=> b!465923 m!448141))

(declare-fun m!448157 () Bool)

(assert (=> b!465923 m!448157))

(declare-fun m!448159 () Bool)

(assert (=> b!465923 m!448159))

(declare-fun m!448161 () Bool)

(assert (=> b!465923 m!448161))

(declare-fun m!448163 () Bool)

(assert (=> b!465923 m!448163))

(declare-fun m!448165 () Bool)

(assert (=> b!465923 m!448165))

(assert (=> b!465923 m!448161))

(declare-fun m!448167 () Bool)

(assert (=> b!465923 m!448167))

(declare-fun m!448169 () Bool)

(assert (=> b!465923 m!448169))

(assert (=> b!465923 m!448153))

(declare-fun m!448171 () Bool)

(assert (=> b!465923 m!448171))

(assert (=> b!465923 m!448101))

(assert (=> b!465906 m!448151))

(assert (=> b!465906 m!448151))

(declare-fun m!448173 () Bool)

(assert (=> b!465906 m!448173))

(declare-fun m!448175 () Bool)

(assert (=> bm!30250 m!448175))

(declare-fun m!448177 () Bool)

(assert (=> b!465912 m!448177))

(declare-fun m!448179 () Bool)

(assert (=> bm!30253 m!448179))

(declare-fun m!448181 () Bool)

(assert (=> b!465909 m!448181))

(assert (=> d!74997 m!448081))

(declare-fun m!448183 () Bool)

(assert (=> bm!30249 m!448183))

(assert (=> bm!30247 m!448101))

(assert (=> b!465910 m!448151))

(declare-fun m!448185 () Bool)

(assert (=> b!465910 m!448185))

(assert (=> b!465910 m!448151))

(declare-fun m!448187 () Bool)

(assert (=> b!465910 m!448187))

(declare-fun m!448189 () Bool)

(assert (=> b!465910 m!448189))

(declare-fun m!448191 () Bool)

(assert (=> b!465910 m!448191))

(assert (=> b!465910 m!448189))

(assert (=> b!465910 m!448187))

(assert (=> b!465905 m!448151))

(assert (=> b!465905 m!448151))

(assert (=> b!465905 m!448173))

(declare-fun m!448193 () Bool)

(assert (=> b!465907 m!448193))

(assert (=> b!465911 m!448151))

(assert (=> b!465911 m!448151))

(declare-fun m!448195 () Bool)

(assert (=> b!465911 m!448195))

(assert (=> b!465823 d!74997))

(declare-fun bm!30254 () Bool)

(declare-fun call!30260 () ListLongMap!7357)

(assert (=> bm!30254 (= call!30260 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465927 () Bool)

(declare-fun e!272389 () Bool)

(declare-fun e!272391 () Bool)

(assert (=> b!465927 (= e!272389 e!272391)))

(declare-fun res!278593 () Bool)

(declare-fun call!30261 () Bool)

(assert (=> b!465927 (= res!278593 call!30261)))

(assert (=> b!465927 (=> (not res!278593) (not e!272391))))

(declare-fun b!465928 () Bool)

(declare-fun e!272398 () Bool)

(assert (=> b!465928 (= e!272398 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!74999 () Bool)

(declare-fun e!272393 () Bool)

(assert (=> d!74999 e!272393))

(declare-fun res!278587 () Bool)

(assert (=> d!74999 (=> (not res!278587) (not e!272393))))

(assert (=> d!74999 (= res!278587 (or (bvsge #b00000000000000000000000000000000 (size!14448 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))))

(declare-fun lt!210564 () ListLongMap!7357)

(declare-fun lt!210572 () ListLongMap!7357)

(assert (=> d!74999 (= lt!210564 lt!210572)))

(declare-fun lt!210560 () Unit!13507)

(declare-fun e!272396 () Unit!13507)

(assert (=> d!74999 (= lt!210560 e!272396)))

(declare-fun c!56641 () Bool)

(declare-fun e!272399 () Bool)

(assert (=> d!74999 (= c!56641 e!272399)))

(declare-fun res!278592 () Bool)

(assert (=> d!74999 (=> (not res!278592) (not e!272399))))

(assert (=> d!74999 (= res!278592 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun e!272400 () ListLongMap!7357)

(assert (=> d!74999 (= lt!210572 e!272400)))

(declare-fun c!56640 () Bool)

(assert (=> d!74999 (= c!56640 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!74999 (validMask!0 mask!1365)))

(assert (=> d!74999 (= (getCurrentListMap!2136 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210564)))

(declare-fun bm!30255 () Bool)

(declare-fun call!30262 () ListLongMap!7357)

(declare-fun call!30259 () ListLongMap!7357)

(assert (=> bm!30255 (= call!30262 call!30259)))

(declare-fun b!465929 () Bool)

(assert (=> b!465929 (= e!272399 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465930 () Bool)

(declare-fun call!30263 () ListLongMap!7357)

(assert (=> b!465930 (= e!272400 (+!1627 call!30263 (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465931 () Bool)

(declare-fun e!272397 () ListLongMap!7357)

(declare-fun call!30258 () ListLongMap!7357)

(assert (=> b!465931 (= e!272397 call!30258)))

(declare-fun b!465932 () Bool)

(assert (=> b!465932 (= e!272391 (= (apply!322 lt!210564 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!465933 () Bool)

(declare-fun e!272392 () Bool)

(assert (=> b!465933 (= e!272392 (= (apply!322 lt!210564 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)) (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!465933 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14449 _values!833)))))

(assert (=> b!465933 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465934 () Bool)

(declare-fun e!272390 () Bool)

(assert (=> b!465934 (= e!272390 e!272392)))

(declare-fun res!278590 () Bool)

(assert (=> b!465934 (=> (not res!278590) (not e!272392))))

(assert (=> b!465934 (= res!278590 (contains!2527 lt!210564 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465934 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465935 () Bool)

(declare-fun e!272395 () Bool)

(assert (=> b!465935 (= e!272395 (= (apply!322 lt!210564 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!465936 () Bool)

(assert (=> b!465936 (= e!272393 e!272389)))

(declare-fun c!56642 () Bool)

(assert (=> b!465936 (= c!56642 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30256 () Bool)

(declare-fun c!56644 () Bool)

(assert (=> bm!30256 (= call!30263 (+!1627 (ite c!56640 call!30260 (ite c!56644 call!30259 call!30262)) (ite (or c!56640 c!56644) (tuple2!8431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8431 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun b!465937 () Bool)

(declare-fun Unit!13510 () Unit!13507)

(assert (=> b!465937 (= e!272396 Unit!13510)))

(declare-fun b!465938 () Bool)

(assert (=> b!465938 (= e!272397 call!30262)))

(declare-fun b!465939 () Bool)

(declare-fun e!272401 () ListLongMap!7357)

(assert (=> b!465939 (= e!272400 e!272401)))

(assert (=> b!465939 (= c!56644 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!465940 () Bool)

(declare-fun res!278585 () Bool)

(assert (=> b!465940 (=> (not res!278585) (not e!272393))))

(declare-fun e!272394 () Bool)

(assert (=> b!465940 (= res!278585 e!272394)))

(declare-fun c!56643 () Bool)

(assert (=> b!465940 (= c!56643 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30257 () Bool)

(declare-fun call!30257 () Bool)

(assert (=> bm!30257 (= call!30257 (contains!2527 lt!210564 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!465941 () Bool)

(assert (=> b!465941 (= e!272401 call!30258)))

(declare-fun bm!30258 () Bool)

(assert (=> bm!30258 (= call!30258 call!30263)))

(declare-fun b!465942 () Bool)

(assert (=> b!465942 (= e!272394 e!272395)))

(declare-fun res!278591 () Bool)

(assert (=> b!465942 (= res!278591 call!30257)))

(assert (=> b!465942 (=> (not res!278591) (not e!272395))))

(declare-fun b!465943 () Bool)

(declare-fun c!56645 () Bool)

(assert (=> b!465943 (= c!56645 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!465943 (= e!272401 e!272397)))

(declare-fun b!465944 () Bool)

(declare-fun res!278589 () Bool)

(assert (=> b!465944 (=> (not res!278589) (not e!272393))))

(assert (=> b!465944 (= res!278589 e!272390)))

(declare-fun res!278586 () Bool)

(assert (=> b!465944 (=> res!278586 e!272390)))

(assert (=> b!465944 (= res!278586 (not e!272398))))

(declare-fun res!278588 () Bool)

(assert (=> b!465944 (=> (not res!278588) (not e!272398))))

(assert (=> b!465944 (= res!278588 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465945 () Bool)

(assert (=> b!465945 (= e!272394 (not call!30257))))

(declare-fun bm!30259 () Bool)

(assert (=> bm!30259 (= call!30259 call!30260)))

(declare-fun bm!30260 () Bool)

(assert (=> bm!30260 (= call!30261 (contains!2527 lt!210564 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!465946 () Bool)

(declare-fun lt!210566 () Unit!13507)

(assert (=> b!465946 (= e!272396 lt!210566)))

(declare-fun lt!210562 () ListLongMap!7357)

(assert (=> b!465946 (= lt!210562 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210570 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210570 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210558 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210558 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210577 () Unit!13507)

(assert (=> b!465946 (= lt!210577 (addStillContains!285 lt!210562 lt!210570 zeroValue!794 lt!210558))))

(assert (=> b!465946 (contains!2527 (+!1627 lt!210562 (tuple2!8431 lt!210570 zeroValue!794)) lt!210558)))

(declare-fun lt!210573 () Unit!13507)

(assert (=> b!465946 (= lt!210573 lt!210577)))

(declare-fun lt!210571 () ListLongMap!7357)

(assert (=> b!465946 (= lt!210571 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210579 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210579 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210578 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210578 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210569 () Unit!13507)

(assert (=> b!465946 (= lt!210569 (addApplyDifferent!285 lt!210571 lt!210579 minValueAfter!38 lt!210578))))

(assert (=> b!465946 (= (apply!322 (+!1627 lt!210571 (tuple2!8431 lt!210579 minValueAfter!38)) lt!210578) (apply!322 lt!210571 lt!210578))))

(declare-fun lt!210565 () Unit!13507)

(assert (=> b!465946 (= lt!210565 lt!210569)))

(declare-fun lt!210576 () ListLongMap!7357)

(assert (=> b!465946 (= lt!210576 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210567 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210567 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210563 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210563 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210574 () Unit!13507)

(assert (=> b!465946 (= lt!210574 (addApplyDifferent!285 lt!210576 lt!210567 zeroValue!794 lt!210563))))

(assert (=> b!465946 (= (apply!322 (+!1627 lt!210576 (tuple2!8431 lt!210567 zeroValue!794)) lt!210563) (apply!322 lt!210576 lt!210563))))

(declare-fun lt!210575 () Unit!13507)

(assert (=> b!465946 (= lt!210575 lt!210574)))

(declare-fun lt!210559 () ListLongMap!7357)

(assert (=> b!465946 (= lt!210559 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210561 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210561 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!210568 () (_ BitVec 64))

(assert (=> b!465946 (= lt!210568 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!465946 (= lt!210566 (addApplyDifferent!285 lt!210559 lt!210561 minValueAfter!38 lt!210568))))

(assert (=> b!465946 (= (apply!322 (+!1627 lt!210559 (tuple2!8431 lt!210561 minValueAfter!38)) lt!210568) (apply!322 lt!210559 lt!210568))))

(declare-fun b!465947 () Bool)

(assert (=> b!465947 (= e!272389 (not call!30261))))

(assert (= (and d!74999 c!56640) b!465930))

(assert (= (and d!74999 (not c!56640)) b!465939))

(assert (= (and b!465939 c!56644) b!465941))

(assert (= (and b!465939 (not c!56644)) b!465943))

(assert (= (and b!465943 c!56645) b!465931))

(assert (= (and b!465943 (not c!56645)) b!465938))

(assert (= (or b!465931 b!465938) bm!30255))

(assert (= (or b!465941 bm!30255) bm!30259))

(assert (= (or b!465941 b!465931) bm!30258))

(assert (= (or b!465930 bm!30259) bm!30254))

(assert (= (or b!465930 bm!30258) bm!30256))

(assert (= (and d!74999 res!278592) b!465929))

(assert (= (and d!74999 c!56641) b!465946))

(assert (= (and d!74999 (not c!56641)) b!465937))

(assert (= (and d!74999 res!278587) b!465944))

(assert (= (and b!465944 res!278588) b!465928))

(assert (= (and b!465944 (not res!278586)) b!465934))

(assert (= (and b!465934 res!278590) b!465933))

(assert (= (and b!465944 res!278589) b!465940))

(assert (= (and b!465940 c!56643) b!465942))

(assert (= (and b!465940 (not c!56643)) b!465945))

(assert (= (and b!465942 res!278591) b!465935))

(assert (= (or b!465942 b!465945) bm!30257))

(assert (= (and b!465940 res!278585) b!465936))

(assert (= (and b!465936 c!56642) b!465927))

(assert (= (and b!465936 (not c!56642)) b!465947))

(assert (= (and b!465927 res!278593) b!465932))

(assert (= (or b!465927 b!465947) bm!30260))

(declare-fun b_lambda!10037 () Bool)

(assert (=> (not b_lambda!10037) (not b!465933)))

(assert (=> b!465933 t!14513))

(declare-fun b_and!19753 () Bool)

(assert (= b_and!19751 (and (=> t!14513 result!7393) b_and!19753)))

(declare-fun m!448197 () Bool)

(assert (=> b!465946 m!448197))

(declare-fun m!448199 () Bool)

(assert (=> b!465946 m!448199))

(declare-fun m!448201 () Bool)

(assert (=> b!465946 m!448201))

(declare-fun m!448203 () Bool)

(assert (=> b!465946 m!448203))

(declare-fun m!448205 () Bool)

(assert (=> b!465946 m!448205))

(assert (=> b!465946 m!448151))

(assert (=> b!465946 m!448201))

(declare-fun m!448207 () Bool)

(assert (=> b!465946 m!448207))

(declare-fun m!448209 () Bool)

(assert (=> b!465946 m!448209))

(assert (=> b!465946 m!448197))

(declare-fun m!448211 () Bool)

(assert (=> b!465946 m!448211))

(declare-fun m!448213 () Bool)

(assert (=> b!465946 m!448213))

(declare-fun m!448215 () Bool)

(assert (=> b!465946 m!448215))

(declare-fun m!448217 () Bool)

(assert (=> b!465946 m!448217))

(declare-fun m!448219 () Bool)

(assert (=> b!465946 m!448219))

(assert (=> b!465946 m!448215))

(declare-fun m!448221 () Bool)

(assert (=> b!465946 m!448221))

(declare-fun m!448223 () Bool)

(assert (=> b!465946 m!448223))

(assert (=> b!465946 m!448207))

(declare-fun m!448225 () Bool)

(assert (=> b!465946 m!448225))

(assert (=> b!465946 m!448099))

(assert (=> b!465929 m!448151))

(assert (=> b!465929 m!448151))

(assert (=> b!465929 m!448173))

(declare-fun m!448227 () Bool)

(assert (=> bm!30257 m!448227))

(declare-fun m!448229 () Bool)

(assert (=> b!465935 m!448229))

(declare-fun m!448231 () Bool)

(assert (=> bm!30260 m!448231))

(declare-fun m!448233 () Bool)

(assert (=> b!465932 m!448233))

(assert (=> d!74999 m!448081))

(declare-fun m!448235 () Bool)

(assert (=> bm!30256 m!448235))

(assert (=> bm!30254 m!448099))

(assert (=> b!465933 m!448151))

(declare-fun m!448237 () Bool)

(assert (=> b!465933 m!448237))

(assert (=> b!465933 m!448151))

(assert (=> b!465933 m!448187))

(assert (=> b!465933 m!448189))

(assert (=> b!465933 m!448191))

(assert (=> b!465933 m!448189))

(assert (=> b!465933 m!448187))

(assert (=> b!465928 m!448151))

(assert (=> b!465928 m!448151))

(assert (=> b!465928 m!448173))

(declare-fun m!448239 () Bool)

(assert (=> b!465930 m!448239))

(assert (=> b!465934 m!448151))

(assert (=> b!465934 m!448151))

(declare-fun m!448241 () Bool)

(assert (=> b!465934 m!448241))

(assert (=> b!465823 d!74999))

(declare-fun b!465958 () Bool)

(declare-fun e!272410 () Bool)

(declare-fun call!30266 () Bool)

(assert (=> b!465958 (= e!272410 call!30266)))

(declare-fun d!75001 () Bool)

(declare-fun res!278600 () Bool)

(declare-fun e!272413 () Bool)

(assert (=> d!75001 (=> res!278600 e!272413)))

(assert (=> d!75001 (= res!278600 (bvsge #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(assert (=> d!75001 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8548) e!272413)))

(declare-fun b!465959 () Bool)

(declare-fun e!272412 () Bool)

(declare-fun contains!2529 (List!8551 (_ BitVec 64)) Bool)

(assert (=> b!465959 (= e!272412 (contains!2529 Nil!8548 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465960 () Bool)

(declare-fun e!272411 () Bool)

(assert (=> b!465960 (= e!272413 e!272411)))

(declare-fun res!278601 () Bool)

(assert (=> b!465960 (=> (not res!278601) (not e!272411))))

(assert (=> b!465960 (= res!278601 (not e!272412))))

(declare-fun res!278602 () Bool)

(assert (=> b!465960 (=> (not res!278602) (not e!272412))))

(assert (=> b!465960 (= res!278602 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!465961 () Bool)

(assert (=> b!465961 (= e!272410 call!30266)))

(declare-fun bm!30263 () Bool)

(declare-fun c!56648 () Bool)

(assert (=> bm!30263 (= call!30266 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56648 (Cons!8547 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000) Nil!8548) Nil!8548)))))

(declare-fun b!465962 () Bool)

(assert (=> b!465962 (= e!272411 e!272410)))

(assert (=> b!465962 (= c!56648 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75001 (not res!278600)) b!465960))

(assert (= (and b!465960 res!278602) b!465959))

(assert (= (and b!465960 res!278601) b!465962))

(assert (= (and b!465962 c!56648) b!465958))

(assert (= (and b!465962 (not c!56648)) b!465961))

(assert (= (or b!465958 b!465961) bm!30263))

(assert (=> b!465959 m!448151))

(assert (=> b!465959 m!448151))

(declare-fun m!448243 () Bool)

(assert (=> b!465959 m!448243))

(assert (=> b!465960 m!448151))

(assert (=> b!465960 m!448151))

(assert (=> b!465960 m!448173))

(assert (=> bm!30263 m!448151))

(declare-fun m!448245 () Bool)

(assert (=> bm!30263 m!448245))

(assert (=> b!465962 m!448151))

(assert (=> b!465962 m!448151))

(assert (=> b!465962 m!448173))

(assert (=> b!465821 d!75001))

(declare-fun d!75003 () Bool)

(assert (=> d!75003 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41742 d!75003))

(declare-fun d!75005 () Bool)

(assert (=> d!75005 (= (array_inv!10160 _keys!1025) (bvsge (size!14448 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41742 d!75005))

(declare-fun d!75007 () Bool)

(assert (=> d!75007 (= (array_inv!10161 _values!833) (bvsge (size!14449 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41742 d!75007))

(declare-fun d!75009 () Bool)

(assert (=> d!75009 (= (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210582 () Unit!13507)

(declare-fun choose!1347 (array!29339 array!29341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18173 V!18173 V!18173 V!18173 (_ BitVec 32) Int) Unit!13507)

(assert (=> d!75009 (= lt!210582 (choose!1347 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75009 (validMask!0 mask!1365)))

(assert (=> d!75009 (= (lemmaNoChangeToArrayThenSameMapNoExtras!56 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210582)))

(declare-fun bs!14746 () Bool)

(assert (= bs!14746 d!75009))

(assert (=> bs!14746 m!448101))

(assert (=> bs!14746 m!448099))

(declare-fun m!448247 () Bool)

(assert (=> bs!14746 m!448247))

(assert (=> bs!14746 m!448081))

(assert (=> b!465827 d!75009))

(declare-fun bm!30266 () Bool)

(declare-fun call!30269 () ListLongMap!7357)

(assert (=> bm!30266 (= call!30269 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!465987 () Bool)

(declare-fun e!272428 () Bool)

(declare-fun e!272434 () Bool)

(assert (=> b!465987 (= e!272428 e!272434)))

(declare-fun c!56659 () Bool)

(assert (=> b!465987 (= c!56659 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465989 () Bool)

(declare-fun e!272429 () Bool)

(assert (=> b!465989 (= e!272428 e!272429)))

(assert (=> b!465989 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun res!278611 () Bool)

(declare-fun lt!210602 () ListLongMap!7357)

(assert (=> b!465989 (= res!278611 (contains!2527 lt!210602 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465989 (=> (not res!278611) (not e!272429))))

(declare-fun b!465990 () Bool)

(declare-fun e!272431 () ListLongMap!7357)

(assert (=> b!465990 (= e!272431 call!30269)))

(declare-fun b!465991 () Bool)

(declare-fun e!272432 () ListLongMap!7357)

(assert (=> b!465991 (= e!272432 (ListLongMap!7358 Nil!8549))))

(declare-fun b!465992 () Bool)

(declare-fun e!272433 () Bool)

(assert (=> b!465992 (= e!272433 e!272428)))

(declare-fun c!56657 () Bool)

(declare-fun e!272430 () Bool)

(assert (=> b!465992 (= c!56657 e!272430)))

(declare-fun res!278614 () Bool)

(assert (=> b!465992 (=> (not res!278614) (not e!272430))))

(assert (=> b!465992 (= res!278614 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!465993 () Bool)

(assert (=> b!465993 (= e!272434 (= lt!210602 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!465994 () Bool)

(declare-fun lt!210597 () Unit!13507)

(declare-fun lt!210598 () Unit!13507)

(assert (=> b!465994 (= lt!210597 lt!210598)))

(declare-fun lt!210600 () (_ BitVec 64))

(declare-fun lt!210601 () ListLongMap!7357)

(declare-fun lt!210599 () (_ BitVec 64))

(declare-fun lt!210603 () V!18173)

(assert (=> b!465994 (not (contains!2527 (+!1627 lt!210601 (tuple2!8431 lt!210599 lt!210603)) lt!210600))))

(declare-fun addStillNotContains!157 (ListLongMap!7357 (_ BitVec 64) V!18173 (_ BitVec 64)) Unit!13507)

(assert (=> b!465994 (= lt!210598 (addStillNotContains!157 lt!210601 lt!210599 lt!210603 lt!210600))))

(assert (=> b!465994 (= lt!210600 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!465994 (= lt!210603 (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!465994 (= lt!210599 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!465994 (= lt!210601 call!30269)))

(assert (=> b!465994 (= e!272431 (+!1627 call!30269 (tuple2!8431 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000) (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!465995 () Bool)

(assert (=> b!465995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(assert (=> b!465995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14449 _values!833)))))

(assert (=> b!465995 (= e!272429 (= (apply!322 lt!210602 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)) (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!465996 () Bool)

(declare-fun isEmpty!574 (ListLongMap!7357) Bool)

(assert (=> b!465996 (= e!272434 (isEmpty!574 lt!210602))))

(declare-fun b!465988 () Bool)

(declare-fun res!278612 () Bool)

(assert (=> b!465988 (=> (not res!278612) (not e!272433))))

(assert (=> b!465988 (= res!278612 (not (contains!2527 lt!210602 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75011 () Bool)

(assert (=> d!75011 e!272433))

(declare-fun res!278613 () Bool)

(assert (=> d!75011 (=> (not res!278613) (not e!272433))))

(assert (=> d!75011 (= res!278613 (not (contains!2527 lt!210602 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75011 (= lt!210602 e!272432)))

(declare-fun c!56660 () Bool)

(assert (=> d!75011 (= c!56660 (bvsge #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(assert (=> d!75011 (validMask!0 mask!1365)))

(assert (=> d!75011 (= (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210602)))

(declare-fun b!465997 () Bool)

(assert (=> b!465997 (= e!272430 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!465997 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!465998 () Bool)

(assert (=> b!465998 (= e!272432 e!272431)))

(declare-fun c!56658 () Bool)

(assert (=> b!465998 (= c!56658 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75011 c!56660) b!465991))

(assert (= (and d!75011 (not c!56660)) b!465998))

(assert (= (and b!465998 c!56658) b!465994))

(assert (= (and b!465998 (not c!56658)) b!465990))

(assert (= (or b!465994 b!465990) bm!30266))

(assert (= (and d!75011 res!278613) b!465988))

(assert (= (and b!465988 res!278612) b!465992))

(assert (= (and b!465992 res!278614) b!465997))

(assert (= (and b!465992 c!56657) b!465989))

(assert (= (and b!465992 (not c!56657)) b!465987))

(assert (= (and b!465989 res!278611) b!465995))

(assert (= (and b!465987 c!56659) b!465993))

(assert (= (and b!465987 (not c!56659)) b!465996))

(declare-fun b_lambda!10039 () Bool)

(assert (=> (not b_lambda!10039) (not b!465994)))

(assert (=> b!465994 t!14513))

(declare-fun b_and!19755 () Bool)

(assert (= b_and!19753 (and (=> t!14513 result!7393) b_and!19755)))

(declare-fun b_lambda!10041 () Bool)

(assert (=> (not b_lambda!10041) (not b!465995)))

(assert (=> b!465995 t!14513))

(declare-fun b_and!19757 () Bool)

(assert (= b_and!19755 (and (=> t!14513 result!7393) b_and!19757)))

(assert (=> b!465989 m!448151))

(assert (=> b!465989 m!448151))

(declare-fun m!448249 () Bool)

(assert (=> b!465989 m!448249))

(declare-fun m!448251 () Bool)

(assert (=> b!465994 m!448251))

(assert (=> b!465994 m!448189))

(assert (=> b!465994 m!448187))

(assert (=> b!465994 m!448187))

(assert (=> b!465994 m!448189))

(assert (=> b!465994 m!448191))

(declare-fun m!448253 () Bool)

(assert (=> b!465994 m!448253))

(declare-fun m!448255 () Bool)

(assert (=> b!465994 m!448255))

(declare-fun m!448257 () Bool)

(assert (=> b!465994 m!448257))

(assert (=> b!465994 m!448255))

(assert (=> b!465994 m!448151))

(assert (=> b!465998 m!448151))

(assert (=> b!465998 m!448151))

(assert (=> b!465998 m!448173))

(declare-fun m!448259 () Bool)

(assert (=> d!75011 m!448259))

(assert (=> d!75011 m!448081))

(assert (=> b!465995 m!448189))

(assert (=> b!465995 m!448187))

(assert (=> b!465995 m!448187))

(assert (=> b!465995 m!448189))

(assert (=> b!465995 m!448191))

(assert (=> b!465995 m!448151))

(declare-fun m!448261 () Bool)

(assert (=> b!465995 m!448261))

(assert (=> b!465995 m!448151))

(assert (=> b!465997 m!448151))

(assert (=> b!465997 m!448151))

(assert (=> b!465997 m!448173))

(declare-fun m!448263 () Bool)

(assert (=> b!465996 m!448263))

(declare-fun m!448265 () Bool)

(assert (=> bm!30266 m!448265))

(declare-fun m!448267 () Bool)

(assert (=> b!465988 m!448267))

(assert (=> b!465993 m!448265))

(assert (=> b!465827 d!75011))

(declare-fun bm!30267 () Bool)

(declare-fun call!30270 () ListLongMap!7357)

(assert (=> bm!30267 (= call!30270 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!465999 () Bool)

(declare-fun e!272435 () Bool)

(declare-fun e!272441 () Bool)

(assert (=> b!465999 (= e!272435 e!272441)))

(declare-fun c!56663 () Bool)

(assert (=> b!465999 (= c!56663 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!466001 () Bool)

(declare-fun e!272436 () Bool)

(assert (=> b!466001 (= e!272435 e!272436)))

(assert (=> b!466001 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun res!278615 () Bool)

(declare-fun lt!210609 () ListLongMap!7357)

(assert (=> b!466001 (= res!278615 (contains!2527 lt!210609 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466001 (=> (not res!278615) (not e!272436))))

(declare-fun b!466002 () Bool)

(declare-fun e!272438 () ListLongMap!7357)

(assert (=> b!466002 (= e!272438 call!30270)))

(declare-fun b!466003 () Bool)

(declare-fun e!272439 () ListLongMap!7357)

(assert (=> b!466003 (= e!272439 (ListLongMap!7358 Nil!8549))))

(declare-fun b!466004 () Bool)

(declare-fun e!272440 () Bool)

(assert (=> b!466004 (= e!272440 e!272435)))

(declare-fun c!56661 () Bool)

(declare-fun e!272437 () Bool)

(assert (=> b!466004 (= c!56661 e!272437)))

(declare-fun res!278618 () Bool)

(assert (=> b!466004 (=> (not res!278618) (not e!272437))))

(assert (=> b!466004 (= res!278618 (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(declare-fun b!466005 () Bool)

(assert (=> b!466005 (= e!272441 (= lt!210609 (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!466006 () Bool)

(declare-fun lt!210604 () Unit!13507)

(declare-fun lt!210605 () Unit!13507)

(assert (=> b!466006 (= lt!210604 lt!210605)))

(declare-fun lt!210606 () (_ BitVec 64))

(declare-fun lt!210607 () (_ BitVec 64))

(declare-fun lt!210610 () V!18173)

(declare-fun lt!210608 () ListLongMap!7357)

(assert (=> b!466006 (not (contains!2527 (+!1627 lt!210608 (tuple2!8431 lt!210606 lt!210610)) lt!210607))))

(assert (=> b!466006 (= lt!210605 (addStillNotContains!157 lt!210608 lt!210606 lt!210610 lt!210607))))

(assert (=> b!466006 (= lt!210607 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!466006 (= lt!210610 (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!466006 (= lt!210606 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!466006 (= lt!210608 call!30270)))

(assert (=> b!466006 (= e!272438 (+!1627 call!30270 (tuple2!8431 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000) (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!466007 () Bool)

(assert (=> b!466007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(assert (=> b!466007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14449 _values!833)))))

(assert (=> b!466007 (= e!272436 (= (apply!322 lt!210609 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)) (get!6930 (select (arr!14097 _values!833) #b00000000000000000000000000000000) (dynLambda!914 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!466008 () Bool)

(assert (=> b!466008 (= e!272441 (isEmpty!574 lt!210609))))

(declare-fun b!466000 () Bool)

(declare-fun res!278616 () Bool)

(assert (=> b!466000 (=> (not res!278616) (not e!272440))))

(assert (=> b!466000 (= res!278616 (not (contains!2527 lt!210609 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75013 () Bool)

(assert (=> d!75013 e!272440))

(declare-fun res!278617 () Bool)

(assert (=> d!75013 (=> (not res!278617) (not e!272440))))

(assert (=> d!75013 (= res!278617 (not (contains!2527 lt!210609 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75013 (= lt!210609 e!272439)))

(declare-fun c!56664 () Bool)

(assert (=> d!75013 (= c!56664 (bvsge #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(assert (=> d!75013 (validMask!0 mask!1365)))

(assert (=> d!75013 (= (getCurrentListMapNoExtraKeys!1861 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!210609)))

(declare-fun b!466009 () Bool)

(assert (=> b!466009 (= e!272437 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!466009 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!466010 () Bool)

(assert (=> b!466010 (= e!272439 e!272438)))

(declare-fun c!56662 () Bool)

(assert (=> b!466010 (= c!56662 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75013 c!56664) b!466003))

(assert (= (and d!75013 (not c!56664)) b!466010))

(assert (= (and b!466010 c!56662) b!466006))

(assert (= (and b!466010 (not c!56662)) b!466002))

(assert (= (or b!466006 b!466002) bm!30267))

(assert (= (and d!75013 res!278617) b!466000))

(assert (= (and b!466000 res!278616) b!466004))

(assert (= (and b!466004 res!278618) b!466009))

(assert (= (and b!466004 c!56661) b!466001))

(assert (= (and b!466004 (not c!56661)) b!465999))

(assert (= (and b!466001 res!278615) b!466007))

(assert (= (and b!465999 c!56663) b!466005))

(assert (= (and b!465999 (not c!56663)) b!466008))

(declare-fun b_lambda!10043 () Bool)

(assert (=> (not b_lambda!10043) (not b!466006)))

(assert (=> b!466006 t!14513))

(declare-fun b_and!19759 () Bool)

(assert (= b_and!19757 (and (=> t!14513 result!7393) b_and!19759)))

(declare-fun b_lambda!10045 () Bool)

(assert (=> (not b_lambda!10045) (not b!466007)))

(assert (=> b!466007 t!14513))

(declare-fun b_and!19761 () Bool)

(assert (= b_and!19759 (and (=> t!14513 result!7393) b_and!19761)))

(assert (=> b!466001 m!448151))

(assert (=> b!466001 m!448151))

(declare-fun m!448269 () Bool)

(assert (=> b!466001 m!448269))

(declare-fun m!448271 () Bool)

(assert (=> b!466006 m!448271))

(assert (=> b!466006 m!448189))

(assert (=> b!466006 m!448187))

(assert (=> b!466006 m!448187))

(assert (=> b!466006 m!448189))

(assert (=> b!466006 m!448191))

(declare-fun m!448273 () Bool)

(assert (=> b!466006 m!448273))

(declare-fun m!448275 () Bool)

(assert (=> b!466006 m!448275))

(declare-fun m!448277 () Bool)

(assert (=> b!466006 m!448277))

(assert (=> b!466006 m!448275))

(assert (=> b!466006 m!448151))

(assert (=> b!466010 m!448151))

(assert (=> b!466010 m!448151))

(assert (=> b!466010 m!448173))

(declare-fun m!448279 () Bool)

(assert (=> d!75013 m!448279))

(assert (=> d!75013 m!448081))

(assert (=> b!466007 m!448189))

(assert (=> b!466007 m!448187))

(assert (=> b!466007 m!448187))

(assert (=> b!466007 m!448189))

(assert (=> b!466007 m!448191))

(assert (=> b!466007 m!448151))

(declare-fun m!448281 () Bool)

(assert (=> b!466007 m!448281))

(assert (=> b!466007 m!448151))

(assert (=> b!466009 m!448151))

(assert (=> b!466009 m!448151))

(assert (=> b!466009 m!448173))

(declare-fun m!448283 () Bool)

(assert (=> b!466008 m!448283))

(declare-fun m!448285 () Bool)

(assert (=> bm!30267 m!448285))

(declare-fun m!448287 () Bool)

(assert (=> b!466000 m!448287))

(assert (=> b!466005 m!448285))

(assert (=> b!465827 d!75013))

(declare-fun b!466019 () Bool)

(declare-fun e!272449 () Bool)

(declare-fun call!30273 () Bool)

(assert (=> b!466019 (= e!272449 call!30273)))

(declare-fun d!75015 () Bool)

(declare-fun res!278624 () Bool)

(declare-fun e!272448 () Bool)

(assert (=> d!75015 (=> res!278624 e!272448)))

(assert (=> d!75015 (= res!278624 (bvsge #b00000000000000000000000000000000 (size!14448 _keys!1025)))))

(assert (=> d!75015 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!272448)))

(declare-fun b!466020 () Bool)

(declare-fun e!272450 () Bool)

(assert (=> b!466020 (= e!272450 call!30273)))

(declare-fun b!466021 () Bool)

(assert (=> b!466021 (= e!272448 e!272450)))

(declare-fun c!56667 () Bool)

(assert (=> b!466021 (= c!56667 (validKeyInArray!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30270 () Bool)

(assert (=> bm!30270 (= call!30273 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!466022 () Bool)

(assert (=> b!466022 (= e!272450 e!272449)))

(declare-fun lt!210619 () (_ BitVec 64))

(assert (=> b!466022 (= lt!210619 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!210617 () Unit!13507)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29339 (_ BitVec 64) (_ BitVec 32)) Unit!13507)

(assert (=> b!466022 (= lt!210617 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!210619 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!466022 (arrayContainsKey!0 _keys!1025 lt!210619 #b00000000000000000000000000000000)))

(declare-fun lt!210618 () Unit!13507)

(assert (=> b!466022 (= lt!210618 lt!210617)))

(declare-fun res!278623 () Bool)

(declare-datatypes ((SeekEntryResult!3534 0))(
  ( (MissingZero!3534 (index!16315 (_ BitVec 32))) (Found!3534 (index!16316 (_ BitVec 32))) (Intermediate!3534 (undefined!4346 Bool) (index!16317 (_ BitVec 32)) (x!43567 (_ BitVec 32))) (Undefined!3534) (MissingVacant!3534 (index!16318 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29339 (_ BitVec 32)) SeekEntryResult!3534)

(assert (=> b!466022 (= res!278623 (= (seekEntryOrOpen!0 (select (arr!14096 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3534 #b00000000000000000000000000000000)))))

(assert (=> b!466022 (=> (not res!278623) (not e!272449))))

(assert (= (and d!75015 (not res!278624)) b!466021))

(assert (= (and b!466021 c!56667) b!466022))

(assert (= (and b!466021 (not c!56667)) b!466020))

(assert (= (and b!466022 res!278623) b!466019))

(assert (= (or b!466019 b!466020) bm!30270))

(assert (=> b!466021 m!448151))

(assert (=> b!466021 m!448151))

(assert (=> b!466021 m!448173))

(declare-fun m!448289 () Bool)

(assert (=> bm!30270 m!448289))

(assert (=> b!466022 m!448151))

(declare-fun m!448291 () Bool)

(assert (=> b!466022 m!448291))

(declare-fun m!448293 () Bool)

(assert (=> b!466022 m!448293))

(assert (=> b!466022 m!448151))

(declare-fun m!448295 () Bool)

(assert (=> b!466022 m!448295))

(assert (=> b!465826 d!75015))

(declare-fun condMapEmpty!20890 () Bool)

(declare-fun mapDefault!20890 () ValueCell!6057)

(assert (=> mapNonEmpty!20884 (= condMapEmpty!20890 (= mapRest!20884 ((as const (Array (_ BitVec 32) ValueCell!6057)) mapDefault!20890)))))

(declare-fun e!272455 () Bool)

(declare-fun mapRes!20890 () Bool)

(assert (=> mapNonEmpty!20884 (= tp!40123 (and e!272455 mapRes!20890))))

(declare-fun mapIsEmpty!20890 () Bool)

(assert (=> mapIsEmpty!20890 mapRes!20890))

(declare-fun mapNonEmpty!20890 () Bool)

(declare-fun tp!40132 () Bool)

(declare-fun e!272456 () Bool)

(assert (=> mapNonEmpty!20890 (= mapRes!20890 (and tp!40132 e!272456))))

(declare-fun mapKey!20890 () (_ BitVec 32))

(declare-fun mapValue!20890 () ValueCell!6057)

(declare-fun mapRest!20890 () (Array (_ BitVec 32) ValueCell!6057))

(assert (=> mapNonEmpty!20890 (= mapRest!20884 (store mapRest!20890 mapKey!20890 mapValue!20890))))

(declare-fun b!466029 () Bool)

(assert (=> b!466029 (= e!272456 tp_is_empty!12801)))

(declare-fun b!466030 () Bool)

(assert (=> b!466030 (= e!272455 tp_is_empty!12801)))

(assert (= (and mapNonEmpty!20884 condMapEmpty!20890) mapIsEmpty!20890))

(assert (= (and mapNonEmpty!20884 (not condMapEmpty!20890)) mapNonEmpty!20890))

(assert (= (and mapNonEmpty!20890 ((_ is ValueCellFull!6057) mapValue!20890)) b!466029))

(assert (= (and mapNonEmpty!20884 ((_ is ValueCellFull!6057) mapDefault!20890)) b!466030))

(declare-fun m!448297 () Bool)

(assert (=> mapNonEmpty!20890 m!448297))

(declare-fun b_lambda!10047 () Bool)

(assert (= b_lambda!10045 (or (and start!41742 b_free!11373) b_lambda!10047)))

(declare-fun b_lambda!10049 () Bool)

(assert (= b_lambda!10043 (or (and start!41742 b_free!11373) b_lambda!10049)))

(declare-fun b_lambda!10051 () Bool)

(assert (= b_lambda!10037 (or (and start!41742 b_free!11373) b_lambda!10051)))

(declare-fun b_lambda!10053 () Bool)

(assert (= b_lambda!10039 (or (and start!41742 b_free!11373) b_lambda!10053)))

(declare-fun b_lambda!10055 () Bool)

(assert (= b_lambda!10035 (or (and start!41742 b_free!11373) b_lambda!10055)))

(declare-fun b_lambda!10057 () Bool)

(assert (= b_lambda!10041 (or (and start!41742 b_free!11373) b_lambda!10057)))

(check-sat (not b!465989) (not d!75011) (not b!465998) (not bm!30249) (not b_next!11373) (not bm!30250) (not b!466022) (not b!465995) (not b!466000) (not bm!30253) (not bm!30247) (not b!465988) (not b!466005) (not b!465960) (not b!465911) (not b!465997) (not b!465906) (not b!465932) (not b_lambda!10047) tp_is_empty!12801 (not d!74997) (not b!465860) (not d!75009) (not b!465910) (not b!466001) (not b!465907) (not b!465909) (not b!465933) (not d!74999) (not b!465905) (not b!466007) (not b!465929) (not bm!30254) (not b!465946) (not b!466021) (not b!465930) (not b!465934) (not mapNonEmpty!20890) (not bm!30267) (not bm!30260) (not b!465962) (not bm!30257) (not b_lambda!10057) (not bm!30256) (not b!465935) (not b!465993) (not b_lambda!10051) (not b_lambda!10053) (not b_lambda!10049) (not b!466009) (not b!466006) (not b_lambda!10055) (not b!465994) (not b!465928) (not b!465912) (not b!465996) (not bm!30270) (not b!466010) (not b!466008) b_and!19761 (not b!465861) (not bm!30266) (not b!465959) (not d!74995) (not d!75013) (not bm!30263) (not b!465923))
(check-sat b_and!19761 (not b_next!11373))

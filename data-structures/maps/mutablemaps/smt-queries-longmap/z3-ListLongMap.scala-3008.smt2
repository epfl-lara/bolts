; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42376 () Bool)

(assert start!42376)

(declare-fun b_free!11859 () Bool)

(declare-fun b_next!11859 () Bool)

(assert (=> start!42376 (= b_free!11859 (not b_next!11859))))

(declare-fun tp!41608 () Bool)

(declare-fun b_and!20323 () Bool)

(assert (=> start!42376 (= tp!41608 b_and!20323)))

(declare-fun b!472537 () Bool)

(declare-fun e!277134 () Bool)

(declare-fun tp_is_empty!13287 () Bool)

(assert (=> b!472537 (= e!277134 tp_is_empty!13287)))

(declare-fun b!472538 () Bool)

(declare-fun e!277135 () Bool)

(declare-fun e!277132 () Bool)

(assert (=> b!472538 (= e!277135 (not e!277132))))

(declare-fun res!282347 () Bool)

(assert (=> b!472538 (=> res!282347 e!277132)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472538 (= res!282347 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18821 0))(
  ( (V!18822 (val!6688 Int)) )
))
(declare-datatypes ((tuple2!8798 0))(
  ( (tuple2!8799 (_1!4409 (_ BitVec 64)) (_2!4409 V!18821)) )
))
(declare-datatypes ((List!8914 0))(
  ( (Nil!8911) (Cons!8910 (h!9766 tuple2!8798) (t!14890 List!8914)) )
))
(declare-datatypes ((ListLongMap!7725 0))(
  ( (ListLongMap!7726 (toList!3878 List!8914)) )
))
(declare-fun lt!214456 () ListLongMap!7725)

(declare-fun lt!214453 () ListLongMap!7725)

(assert (=> b!472538 (= lt!214456 lt!214453)))

(declare-fun minValueBefore!38 () V!18821)

(declare-fun zeroValue!794 () V!18821)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13876 0))(
  ( (Unit!13877) )
))
(declare-fun lt!214454 () Unit!13876)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30295 0))(
  ( (array!30296 (arr!14565 (Array (_ BitVec 32) (_ BitVec 64))) (size!14917 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30295)

(declare-datatypes ((ValueCell!6300 0))(
  ( (ValueCellFull!6300 (v!8975 V!18821)) (EmptyCell!6300) )
))
(declare-datatypes ((array!30297 0))(
  ( (array!30298 (arr!14566 (Array (_ BitVec 32) ValueCell!6300)) (size!14918 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30297)

(declare-fun minValueAfter!38 () V!18821)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!232 (array!30295 array!30297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18821 V!18821 V!18821 V!18821 (_ BitVec 32) Int) Unit!13876)

(assert (=> b!472538 (= lt!214454 (lemmaNoChangeToArrayThenSameMapNoExtras!232 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2037 (array!30295 array!30297 (_ BitVec 32) (_ BitVec 32) V!18821 V!18821 (_ BitVec 32) Int) ListLongMap!7725)

(assert (=> b!472538 (= lt!214453 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472538 (= lt!214456 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21640 () Bool)

(declare-fun mapRes!21640 () Bool)

(assert (=> mapIsEmpty!21640 mapRes!21640))

(declare-fun b!472539 () Bool)

(declare-fun e!277131 () Bool)

(assert (=> b!472539 (= e!277131 tp_is_empty!13287)))

(declare-fun b!472540 () Bool)

(declare-fun res!282346 () Bool)

(assert (=> b!472540 (=> (not res!282346) (not e!277135))))

(assert (=> b!472540 (= res!282346 (and (= (size!14918 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14917 _keys!1025) (size!14918 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472541 () Bool)

(declare-fun res!282344 () Bool)

(assert (=> b!472541 (=> (not res!282344) (not e!277135))))

(declare-datatypes ((List!8915 0))(
  ( (Nil!8912) (Cons!8911 (h!9767 (_ BitVec 64)) (t!14891 List!8915)) )
))
(declare-fun arrayNoDuplicates!0 (array!30295 (_ BitVec 32) List!8915) Bool)

(assert (=> b!472541 (= res!282344 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8912))))

(declare-fun res!282345 () Bool)

(assert (=> start!42376 (=> (not res!282345) (not e!277135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42376 (= res!282345 (validMask!0 mask!1365))))

(assert (=> start!42376 e!277135))

(assert (=> start!42376 tp_is_empty!13287))

(assert (=> start!42376 tp!41608))

(assert (=> start!42376 true))

(declare-fun array_inv!10506 (array!30295) Bool)

(assert (=> start!42376 (array_inv!10506 _keys!1025)))

(declare-fun e!277136 () Bool)

(declare-fun array_inv!10507 (array!30297) Bool)

(assert (=> start!42376 (and (array_inv!10507 _values!833) e!277136)))

(declare-fun b!472542 () Bool)

(assert (=> b!472542 (= e!277132 (bvsle #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun lt!214455 () ListLongMap!7725)

(declare-fun getCurrentListMap!2225 (array!30295 array!30297 (_ BitVec 32) (_ BitVec 32) V!18821 V!18821 (_ BitVec 32) Int) ListLongMap!7725)

(assert (=> b!472542 (= lt!214455 (getCurrentListMap!2225 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472543 () Bool)

(assert (=> b!472543 (= e!277136 (and e!277131 mapRes!21640))))

(declare-fun condMapEmpty!21640 () Bool)

(declare-fun mapDefault!21640 () ValueCell!6300)

(assert (=> b!472543 (= condMapEmpty!21640 (= (arr!14566 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6300)) mapDefault!21640)))))

(declare-fun b!472544 () Bool)

(declare-fun res!282348 () Bool)

(assert (=> b!472544 (=> (not res!282348) (not e!277135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30295 (_ BitVec 32)) Bool)

(assert (=> b!472544 (= res!282348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21640 () Bool)

(declare-fun tp!41607 () Bool)

(assert (=> mapNonEmpty!21640 (= mapRes!21640 (and tp!41607 e!277134))))

(declare-fun mapRest!21640 () (Array (_ BitVec 32) ValueCell!6300))

(declare-fun mapKey!21640 () (_ BitVec 32))

(declare-fun mapValue!21640 () ValueCell!6300)

(assert (=> mapNonEmpty!21640 (= (arr!14566 _values!833) (store mapRest!21640 mapKey!21640 mapValue!21640))))

(assert (= (and start!42376 res!282345) b!472540))

(assert (= (and b!472540 res!282346) b!472544))

(assert (= (and b!472544 res!282348) b!472541))

(assert (= (and b!472541 res!282344) b!472538))

(assert (= (and b!472538 (not res!282347)) b!472542))

(assert (= (and b!472543 condMapEmpty!21640) mapIsEmpty!21640))

(assert (= (and b!472543 (not condMapEmpty!21640)) mapNonEmpty!21640))

(get-info :version)

(assert (= (and mapNonEmpty!21640 ((_ is ValueCellFull!6300) mapValue!21640)) b!472537))

(assert (= (and b!472543 ((_ is ValueCellFull!6300) mapDefault!21640)) b!472539))

(assert (= start!42376 b!472543))

(declare-fun m!454497 () Bool)

(assert (=> mapNonEmpty!21640 m!454497))

(declare-fun m!454499 () Bool)

(assert (=> b!472538 m!454499))

(declare-fun m!454501 () Bool)

(assert (=> b!472538 m!454501))

(declare-fun m!454503 () Bool)

(assert (=> b!472538 m!454503))

(declare-fun m!454505 () Bool)

(assert (=> start!42376 m!454505))

(declare-fun m!454507 () Bool)

(assert (=> start!42376 m!454507))

(declare-fun m!454509 () Bool)

(assert (=> start!42376 m!454509))

(declare-fun m!454511 () Bool)

(assert (=> b!472542 m!454511))

(declare-fun m!454513 () Bool)

(assert (=> b!472541 m!454513))

(declare-fun m!454515 () Bool)

(assert (=> b!472544 m!454515))

(check-sat (not start!42376) tp_is_empty!13287 b_and!20323 (not b!472542) (not b!472541) (not b!472544) (not b_next!11859) (not mapNonEmpty!21640) (not b!472538))
(check-sat b_and!20323 (not b_next!11859))
(get-model)

(declare-fun d!75339 () Bool)

(assert (=> d!75339 (= (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214471 () Unit!13876)

(declare-fun choose!1358 (array!30295 array!30297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18821 V!18821 V!18821 V!18821 (_ BitVec 32) Int) Unit!13876)

(assert (=> d!75339 (= lt!214471 (choose!1358 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75339 (validMask!0 mask!1365)))

(assert (=> d!75339 (= (lemmaNoChangeToArrayThenSameMapNoExtras!232 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214471)))

(declare-fun bs!15000 () Bool)

(assert (= bs!15000 d!75339))

(assert (=> bs!15000 m!454503))

(assert (=> bs!15000 m!454501))

(declare-fun m!454537 () Bool)

(assert (=> bs!15000 m!454537))

(assert (=> bs!15000 m!454505))

(assert (=> b!472538 d!75339))

(declare-fun d!75341 () Bool)

(declare-fun e!277169 () Bool)

(assert (=> d!75341 e!277169))

(declare-fun res!282372 () Bool)

(assert (=> d!75341 (=> (not res!282372) (not e!277169))))

(declare-fun lt!214492 () ListLongMap!7725)

(declare-fun contains!2549 (ListLongMap!7725 (_ BitVec 64)) Bool)

(assert (=> d!75341 (= res!282372 (not (contains!2549 lt!214492 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!277174 () ListLongMap!7725)

(assert (=> d!75341 (= lt!214492 e!277174)))

(declare-fun c!56943 () Bool)

(assert (=> d!75341 (= c!56943 (bvsge #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> d!75341 (validMask!0 mask!1365)))

(assert (=> d!75341 (= (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214492)))

(declare-fun b!472593 () Bool)

(declare-fun e!277170 () Bool)

(declare-fun e!277173 () Bool)

(assert (=> b!472593 (= e!277170 e!277173)))

(declare-fun c!56945 () Bool)

(assert (=> b!472593 (= c!56945 (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun b!472594 () Bool)

(assert (=> b!472594 (= e!277173 (= lt!214492 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!472595 () Bool)

(declare-fun e!277172 () Bool)

(assert (=> b!472595 (= e!277170 e!277172)))

(assert (=> b!472595 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun res!282373 () Bool)

(assert (=> b!472595 (= res!282373 (contains!2549 lt!214492 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!472595 (=> (not res!282373) (not e!277172))))

(declare-fun b!472596 () Bool)

(declare-fun isEmpty!583 (ListLongMap!7725) Bool)

(assert (=> b!472596 (= e!277173 (isEmpty!583 lt!214492))))

(declare-fun b!472597 () Bool)

(declare-fun e!277171 () ListLongMap!7725)

(declare-fun call!30461 () ListLongMap!7725)

(assert (=> b!472597 (= e!277171 call!30461)))

(declare-fun bm!30458 () Bool)

(assert (=> bm!30458 (= call!30461 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!472598 () Bool)

(declare-fun res!282375 () Bool)

(assert (=> b!472598 (=> (not res!282375) (not e!277169))))

(assert (=> b!472598 (= res!282375 (not (contains!2549 lt!214492 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!472599 () Bool)

(assert (=> b!472599 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> b!472599 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14918 _values!833)))))

(declare-fun apply!331 (ListLongMap!7725 (_ BitVec 64)) V!18821)

(declare-fun get!7101 (ValueCell!6300 V!18821) V!18821)

(declare-fun dynLambda!923 (Int (_ BitVec 64)) V!18821)

(assert (=> b!472599 (= e!277172 (= (apply!331 lt!214492 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)) (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!472600 () Bool)

(assert (=> b!472600 (= e!277169 e!277170)))

(declare-fun c!56942 () Bool)

(declare-fun e!277175 () Bool)

(assert (=> b!472600 (= c!56942 e!277175)))

(declare-fun res!282374 () Bool)

(assert (=> b!472600 (=> (not res!282374) (not e!277175))))

(assert (=> b!472600 (= res!282374 (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun b!472601 () Bool)

(declare-fun lt!214491 () Unit!13876)

(declare-fun lt!214487 () Unit!13876)

(assert (=> b!472601 (= lt!214491 lt!214487)))

(declare-fun lt!214486 () ListLongMap!7725)

(declare-fun lt!214488 () V!18821)

(declare-fun lt!214489 () (_ BitVec 64))

(declare-fun lt!214490 () (_ BitVec 64))

(declare-fun +!1688 (ListLongMap!7725 tuple2!8798) ListLongMap!7725)

(assert (=> b!472601 (not (contains!2549 (+!1688 lt!214486 (tuple2!8799 lt!214490 lt!214488)) lt!214489))))

(declare-fun addStillNotContains!166 (ListLongMap!7725 (_ BitVec 64) V!18821 (_ BitVec 64)) Unit!13876)

(assert (=> b!472601 (= lt!214487 (addStillNotContains!166 lt!214486 lt!214490 lt!214488 lt!214489))))

(assert (=> b!472601 (= lt!214489 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!472601 (= lt!214488 (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!472601 (= lt!214490 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!472601 (= lt!214486 call!30461)))

(assert (=> b!472601 (= e!277171 (+!1688 call!30461 (tuple2!8799 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000) (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!472602 () Bool)

(assert (=> b!472602 (= e!277174 e!277171)))

(declare-fun c!56944 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!472602 (= c!56944 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!472603 () Bool)

(assert (=> b!472603 (= e!277174 (ListLongMap!7726 Nil!8911))))

(declare-fun b!472604 () Bool)

(assert (=> b!472604 (= e!277175 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!472604 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!75341 c!56943) b!472603))

(assert (= (and d!75341 (not c!56943)) b!472602))

(assert (= (and b!472602 c!56944) b!472601))

(assert (= (and b!472602 (not c!56944)) b!472597))

(assert (= (or b!472601 b!472597) bm!30458))

(assert (= (and d!75341 res!282372) b!472598))

(assert (= (and b!472598 res!282375) b!472600))

(assert (= (and b!472600 res!282374) b!472604))

(assert (= (and b!472600 c!56942) b!472595))

(assert (= (and b!472600 (not c!56942)) b!472593))

(assert (= (and b!472595 res!282373) b!472599))

(assert (= (and b!472593 c!56945) b!472594))

(assert (= (and b!472593 (not c!56945)) b!472596))

(declare-fun b_lambda!10215 () Bool)

(assert (=> (not b_lambda!10215) (not b!472599)))

(declare-fun t!14894 () Bool)

(declare-fun tb!3935 () Bool)

(assert (=> (and start!42376 (= defaultEntry!841 defaultEntry!841) t!14894) tb!3935))

(declare-fun result!7447 () Bool)

(assert (=> tb!3935 (= result!7447 tp_is_empty!13287)))

(assert (=> b!472599 t!14894))

(declare-fun b_and!20327 () Bool)

(assert (= b_and!20323 (and (=> t!14894 result!7447) b_and!20327)))

(declare-fun b_lambda!10217 () Bool)

(assert (=> (not b_lambda!10217) (not b!472601)))

(assert (=> b!472601 t!14894))

(declare-fun b_and!20329 () Bool)

(assert (= b_and!20327 (and (=> t!14894 result!7447) b_and!20329)))

(declare-fun m!454539 () Bool)

(assert (=> b!472594 m!454539))

(assert (=> bm!30458 m!454539))

(declare-fun m!454541 () Bool)

(assert (=> b!472601 m!454541))

(declare-fun m!454543 () Bool)

(assert (=> b!472601 m!454543))

(declare-fun m!454545 () Bool)

(assert (=> b!472601 m!454545))

(declare-fun m!454547 () Bool)

(assert (=> b!472601 m!454547))

(declare-fun m!454549 () Bool)

(assert (=> b!472601 m!454549))

(declare-fun m!454551 () Bool)

(assert (=> b!472601 m!454551))

(declare-fun m!454553 () Bool)

(assert (=> b!472601 m!454553))

(assert (=> b!472601 m!454541))

(declare-fun m!454555 () Bool)

(assert (=> b!472601 m!454555))

(assert (=> b!472601 m!454547))

(assert (=> b!472601 m!454549))

(declare-fun m!454557 () Bool)

(assert (=> b!472598 m!454557))

(assert (=> b!472599 m!454547))

(assert (=> b!472599 m!454549))

(assert (=> b!472599 m!454551))

(assert (=> b!472599 m!454547))

(assert (=> b!472599 m!454549))

(assert (=> b!472599 m!454553))

(declare-fun m!454559 () Bool)

(assert (=> b!472599 m!454559))

(assert (=> b!472599 m!454553))

(assert (=> b!472602 m!454553))

(assert (=> b!472602 m!454553))

(declare-fun m!454561 () Bool)

(assert (=> b!472602 m!454561))

(assert (=> b!472604 m!454553))

(assert (=> b!472604 m!454553))

(assert (=> b!472604 m!454561))

(declare-fun m!454563 () Bool)

(assert (=> b!472596 m!454563))

(assert (=> b!472595 m!454553))

(assert (=> b!472595 m!454553))

(declare-fun m!454565 () Bool)

(assert (=> b!472595 m!454565))

(declare-fun m!454567 () Bool)

(assert (=> d!75341 m!454567))

(assert (=> d!75341 m!454505))

(assert (=> b!472538 d!75341))

(declare-fun d!75343 () Bool)

(declare-fun e!277176 () Bool)

(assert (=> d!75343 e!277176))

(declare-fun res!282376 () Bool)

(assert (=> d!75343 (=> (not res!282376) (not e!277176))))

(declare-fun lt!214499 () ListLongMap!7725)

(assert (=> d!75343 (= res!282376 (not (contains!2549 lt!214499 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!277181 () ListLongMap!7725)

(assert (=> d!75343 (= lt!214499 e!277181)))

(declare-fun c!56947 () Bool)

(assert (=> d!75343 (= c!56947 (bvsge #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> d!75343 (validMask!0 mask!1365)))

(assert (=> d!75343 (= (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214499)))

(declare-fun b!472607 () Bool)

(declare-fun e!277177 () Bool)

(declare-fun e!277180 () Bool)

(assert (=> b!472607 (= e!277177 e!277180)))

(declare-fun c!56949 () Bool)

(assert (=> b!472607 (= c!56949 (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun b!472608 () Bool)

(assert (=> b!472608 (= e!277180 (= lt!214499 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!472609 () Bool)

(declare-fun e!277179 () Bool)

(assert (=> b!472609 (= e!277177 e!277179)))

(assert (=> b!472609 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun res!282377 () Bool)

(assert (=> b!472609 (= res!282377 (contains!2549 lt!214499 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!472609 (=> (not res!282377) (not e!277179))))

(declare-fun b!472610 () Bool)

(assert (=> b!472610 (= e!277180 (isEmpty!583 lt!214499))))

(declare-fun b!472611 () Bool)

(declare-fun e!277178 () ListLongMap!7725)

(declare-fun call!30462 () ListLongMap!7725)

(assert (=> b!472611 (= e!277178 call!30462)))

(declare-fun bm!30459 () Bool)

(assert (=> bm!30459 (= call!30462 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!472612 () Bool)

(declare-fun res!282379 () Bool)

(assert (=> b!472612 (=> (not res!282379) (not e!277176))))

(assert (=> b!472612 (= res!282379 (not (contains!2549 lt!214499 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!472613 () Bool)

(assert (=> b!472613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> b!472613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14918 _values!833)))))

(assert (=> b!472613 (= e!277179 (= (apply!331 lt!214499 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)) (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!472614 () Bool)

(assert (=> b!472614 (= e!277176 e!277177)))

(declare-fun c!56946 () Bool)

(declare-fun e!277182 () Bool)

(assert (=> b!472614 (= c!56946 e!277182)))

(declare-fun res!282378 () Bool)

(assert (=> b!472614 (=> (not res!282378) (not e!277182))))

(assert (=> b!472614 (= res!282378 (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun b!472615 () Bool)

(declare-fun lt!214498 () Unit!13876)

(declare-fun lt!214494 () Unit!13876)

(assert (=> b!472615 (= lt!214498 lt!214494)))

(declare-fun lt!214495 () V!18821)

(declare-fun lt!214496 () (_ BitVec 64))

(declare-fun lt!214493 () ListLongMap!7725)

(declare-fun lt!214497 () (_ BitVec 64))

(assert (=> b!472615 (not (contains!2549 (+!1688 lt!214493 (tuple2!8799 lt!214497 lt!214495)) lt!214496))))

(assert (=> b!472615 (= lt!214494 (addStillNotContains!166 lt!214493 lt!214497 lt!214495 lt!214496))))

(assert (=> b!472615 (= lt!214496 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!472615 (= lt!214495 (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!472615 (= lt!214497 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!472615 (= lt!214493 call!30462)))

(assert (=> b!472615 (= e!277178 (+!1688 call!30462 (tuple2!8799 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000) (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!472616 () Bool)

(assert (=> b!472616 (= e!277181 e!277178)))

(declare-fun c!56948 () Bool)

(assert (=> b!472616 (= c!56948 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!472617 () Bool)

(assert (=> b!472617 (= e!277181 (ListLongMap!7726 Nil!8911))))

(declare-fun b!472618 () Bool)

(assert (=> b!472618 (= e!277182 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!472618 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!75343 c!56947) b!472617))

(assert (= (and d!75343 (not c!56947)) b!472616))

(assert (= (and b!472616 c!56948) b!472615))

(assert (= (and b!472616 (not c!56948)) b!472611))

(assert (= (or b!472615 b!472611) bm!30459))

(assert (= (and d!75343 res!282376) b!472612))

(assert (= (and b!472612 res!282379) b!472614))

(assert (= (and b!472614 res!282378) b!472618))

(assert (= (and b!472614 c!56946) b!472609))

(assert (= (and b!472614 (not c!56946)) b!472607))

(assert (= (and b!472609 res!282377) b!472613))

(assert (= (and b!472607 c!56949) b!472608))

(assert (= (and b!472607 (not c!56949)) b!472610))

(declare-fun b_lambda!10219 () Bool)

(assert (=> (not b_lambda!10219) (not b!472613)))

(assert (=> b!472613 t!14894))

(declare-fun b_and!20331 () Bool)

(assert (= b_and!20329 (and (=> t!14894 result!7447) b_and!20331)))

(declare-fun b_lambda!10221 () Bool)

(assert (=> (not b_lambda!10221) (not b!472615)))

(assert (=> b!472615 t!14894))

(declare-fun b_and!20333 () Bool)

(assert (= b_and!20331 (and (=> t!14894 result!7447) b_and!20333)))

(declare-fun m!454569 () Bool)

(assert (=> b!472608 m!454569))

(assert (=> bm!30459 m!454569))

(declare-fun m!454571 () Bool)

(assert (=> b!472615 m!454571))

(declare-fun m!454573 () Bool)

(assert (=> b!472615 m!454573))

(declare-fun m!454575 () Bool)

(assert (=> b!472615 m!454575))

(assert (=> b!472615 m!454547))

(assert (=> b!472615 m!454549))

(assert (=> b!472615 m!454551))

(assert (=> b!472615 m!454553))

(assert (=> b!472615 m!454571))

(declare-fun m!454577 () Bool)

(assert (=> b!472615 m!454577))

(assert (=> b!472615 m!454547))

(assert (=> b!472615 m!454549))

(declare-fun m!454579 () Bool)

(assert (=> b!472612 m!454579))

(assert (=> b!472613 m!454547))

(assert (=> b!472613 m!454549))

(assert (=> b!472613 m!454551))

(assert (=> b!472613 m!454547))

(assert (=> b!472613 m!454549))

(assert (=> b!472613 m!454553))

(declare-fun m!454581 () Bool)

(assert (=> b!472613 m!454581))

(assert (=> b!472613 m!454553))

(assert (=> b!472616 m!454553))

(assert (=> b!472616 m!454553))

(assert (=> b!472616 m!454561))

(assert (=> b!472618 m!454553))

(assert (=> b!472618 m!454553))

(assert (=> b!472618 m!454561))

(declare-fun m!454583 () Bool)

(assert (=> b!472610 m!454583))

(assert (=> b!472609 m!454553))

(assert (=> b!472609 m!454553))

(declare-fun m!454585 () Bool)

(assert (=> b!472609 m!454585))

(declare-fun m!454587 () Bool)

(assert (=> d!75343 m!454587))

(assert (=> d!75343 m!454505))

(assert (=> b!472538 d!75343))

(declare-fun b!472662 () Bool)

(declare-fun e!277212 () Bool)

(declare-fun lt!214556 () ListLongMap!7725)

(assert (=> b!472662 (= e!277212 (= (apply!331 lt!214556 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun call!30479 () ListLongMap!7725)

(declare-fun call!30478 () ListLongMap!7725)

(declare-fun call!30480 () ListLongMap!7725)

(declare-fun c!56962 () Bool)

(declare-fun bm!30474 () Bool)

(declare-fun c!56967 () Bool)

(declare-fun call!30481 () ListLongMap!7725)

(assert (=> bm!30474 (= call!30478 (+!1688 (ite c!56962 call!30479 (ite c!56967 call!30480 call!30481)) (ite (or c!56962 c!56967) (tuple2!8799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8799 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!472663 () Bool)

(declare-fun e!277214 () Bool)

(declare-fun e!277213 () Bool)

(assert (=> b!472663 (= e!277214 e!277213)))

(declare-fun res!282402 () Bool)

(assert (=> b!472663 (=> (not res!282402) (not e!277213))))

(assert (=> b!472663 (= res!282402 (contains!2549 lt!214556 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!472663 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun bm!30475 () Bool)

(declare-fun call!30477 () Bool)

(assert (=> bm!30475 (= call!30477 (contains!2549 lt!214556 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!472664 () Bool)

(declare-fun res!282405 () Bool)

(declare-fun e!277210 () Bool)

(assert (=> b!472664 (=> (not res!282405) (not e!277210))))

(assert (=> b!472664 (= res!282405 e!277214)))

(declare-fun res!282399 () Bool)

(assert (=> b!472664 (=> res!282399 e!277214)))

(declare-fun e!277215 () Bool)

(assert (=> b!472664 (= res!282399 (not e!277215))))

(declare-fun res!282406 () Bool)

(assert (=> b!472664 (=> (not res!282406) (not e!277215))))

(assert (=> b!472664 (= res!282406 (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun bm!30476 () Bool)

(assert (=> bm!30476 (= call!30481 call!30480)))

(declare-fun b!472665 () Bool)

(declare-fun e!277216 () Unit!13876)

(declare-fun lt!214564 () Unit!13876)

(assert (=> b!472665 (= e!277216 lt!214564)))

(declare-fun lt!214544 () ListLongMap!7725)

(assert (=> b!472665 (= lt!214544 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214553 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214553 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!214546 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214546 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!214562 () Unit!13876)

(declare-fun addStillContains!290 (ListLongMap!7725 (_ BitVec 64) V!18821 (_ BitVec 64)) Unit!13876)

(assert (=> b!472665 (= lt!214562 (addStillContains!290 lt!214544 lt!214553 zeroValue!794 lt!214546))))

(assert (=> b!472665 (contains!2549 (+!1688 lt!214544 (tuple2!8799 lt!214553 zeroValue!794)) lt!214546)))

(declare-fun lt!214557 () Unit!13876)

(assert (=> b!472665 (= lt!214557 lt!214562)))

(declare-fun lt!214563 () ListLongMap!7725)

(assert (=> b!472665 (= lt!214563 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214549 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214549 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!214547 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214547 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!214551 () Unit!13876)

(declare-fun addApplyDifferent!290 (ListLongMap!7725 (_ BitVec 64) V!18821 (_ BitVec 64)) Unit!13876)

(assert (=> b!472665 (= lt!214551 (addApplyDifferent!290 lt!214563 lt!214549 minValueBefore!38 lt!214547))))

(assert (=> b!472665 (= (apply!331 (+!1688 lt!214563 (tuple2!8799 lt!214549 minValueBefore!38)) lt!214547) (apply!331 lt!214563 lt!214547))))

(declare-fun lt!214565 () Unit!13876)

(assert (=> b!472665 (= lt!214565 lt!214551)))

(declare-fun lt!214555 () ListLongMap!7725)

(assert (=> b!472665 (= lt!214555 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214558 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214558 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!214561 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214561 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!214545 () Unit!13876)

(assert (=> b!472665 (= lt!214545 (addApplyDifferent!290 lt!214555 lt!214558 zeroValue!794 lt!214561))))

(assert (=> b!472665 (= (apply!331 (+!1688 lt!214555 (tuple2!8799 lt!214558 zeroValue!794)) lt!214561) (apply!331 lt!214555 lt!214561))))

(declare-fun lt!214559 () Unit!13876)

(assert (=> b!472665 (= lt!214559 lt!214545)))

(declare-fun lt!214552 () ListLongMap!7725)

(assert (=> b!472665 (= lt!214552 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214548 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214548 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!214550 () (_ BitVec 64))

(assert (=> b!472665 (= lt!214550 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!472665 (= lt!214564 (addApplyDifferent!290 lt!214552 lt!214548 minValueBefore!38 lt!214550))))

(assert (=> b!472665 (= (apply!331 (+!1688 lt!214552 (tuple2!8799 lt!214548 minValueBefore!38)) lt!214550) (apply!331 lt!214552 lt!214550))))

(declare-fun b!472666 () Bool)

(declare-fun res!282404 () Bool)

(assert (=> b!472666 (=> (not res!282404) (not e!277210))))

(declare-fun e!277209 () Bool)

(assert (=> b!472666 (= res!282404 e!277209)))

(declare-fun c!56963 () Bool)

(assert (=> b!472666 (= c!56963 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!472667 () Bool)

(assert (=> b!472667 (= e!277213 (= (apply!331 lt!214556 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)) (get!7101 (select (arr!14566 _values!833) #b00000000000000000000000000000000) (dynLambda!923 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!472667 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14918 _values!833)))))

(assert (=> b!472667 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(declare-fun b!472668 () Bool)

(assert (=> b!472668 (= e!277209 e!277212)))

(declare-fun res!282398 () Bool)

(declare-fun call!30482 () Bool)

(assert (=> b!472668 (= res!282398 call!30482)))

(assert (=> b!472668 (=> (not res!282398) (not e!277212))))

(declare-fun b!472669 () Bool)

(assert (=> b!472669 (= e!277215 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!472661 () Bool)

(declare-fun e!277221 () ListLongMap!7725)

(declare-fun e!277218 () ListLongMap!7725)

(assert (=> b!472661 (= e!277221 e!277218)))

(assert (=> b!472661 (= c!56967 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!75345 () Bool)

(assert (=> d!75345 e!277210))

(declare-fun res!282401 () Bool)

(assert (=> d!75345 (=> (not res!282401) (not e!277210))))

(assert (=> d!75345 (= res!282401 (or (bvsge #b00000000000000000000000000000000 (size!14917 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))))

(declare-fun lt!214554 () ListLongMap!7725)

(assert (=> d!75345 (= lt!214556 lt!214554)))

(declare-fun lt!214560 () Unit!13876)

(assert (=> d!75345 (= lt!214560 e!277216)))

(declare-fun c!56965 () Bool)

(declare-fun e!277220 () Bool)

(assert (=> d!75345 (= c!56965 e!277220)))

(declare-fun res!282403 () Bool)

(assert (=> d!75345 (=> (not res!282403) (not e!277220))))

(assert (=> d!75345 (= res!282403 (bvslt #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> d!75345 (= lt!214554 e!277221)))

(assert (=> d!75345 (= c!56962 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75345 (validMask!0 mask!1365)))

(assert (=> d!75345 (= (getCurrentListMap!2225 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214556)))

(declare-fun b!472670 () Bool)

(assert (=> b!472670 (= e!277220 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!472671 () Bool)

(declare-fun call!30483 () ListLongMap!7725)

(assert (=> b!472671 (= e!277218 call!30483)))

(declare-fun bm!30477 () Bool)

(assert (=> bm!30477 (= call!30480 call!30479)))

(declare-fun b!472672 () Bool)

(declare-fun e!277217 () ListLongMap!7725)

(assert (=> b!472672 (= e!277217 call!30481)))

(declare-fun bm!30478 () Bool)

(assert (=> bm!30478 (= call!30482 (contains!2549 lt!214556 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!472673 () Bool)

(declare-fun c!56964 () Bool)

(assert (=> b!472673 (= c!56964 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!472673 (= e!277218 e!277217)))

(declare-fun bm!30479 () Bool)

(assert (=> bm!30479 (= call!30483 call!30478)))

(declare-fun b!472674 () Bool)

(assert (=> b!472674 (= e!277221 (+!1688 call!30478 (tuple2!8799 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!472675 () Bool)

(declare-fun e!277211 () Bool)

(assert (=> b!472675 (= e!277211 (= (apply!331 lt!214556 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!472676 () Bool)

(assert (=> b!472676 (= e!277217 call!30483)))

(declare-fun b!472677 () Bool)

(declare-fun e!277219 () Bool)

(assert (=> b!472677 (= e!277219 e!277211)))

(declare-fun res!282400 () Bool)

(assert (=> b!472677 (= res!282400 call!30477)))

(assert (=> b!472677 (=> (not res!282400) (not e!277211))))

(declare-fun b!472678 () Bool)

(assert (=> b!472678 (= e!277209 (not call!30482))))

(declare-fun b!472679 () Bool)

(declare-fun Unit!13878 () Unit!13876)

(assert (=> b!472679 (= e!277216 Unit!13878)))

(declare-fun b!472680 () Bool)

(assert (=> b!472680 (= e!277219 (not call!30477))))

(declare-fun bm!30480 () Bool)

(assert (=> bm!30480 (= call!30479 (getCurrentListMapNoExtraKeys!2037 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472681 () Bool)

(assert (=> b!472681 (= e!277210 e!277219)))

(declare-fun c!56966 () Bool)

(assert (=> b!472681 (= c!56966 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!75345 c!56962) b!472674))

(assert (= (and d!75345 (not c!56962)) b!472661))

(assert (= (and b!472661 c!56967) b!472671))

(assert (= (and b!472661 (not c!56967)) b!472673))

(assert (= (and b!472673 c!56964) b!472676))

(assert (= (and b!472673 (not c!56964)) b!472672))

(assert (= (or b!472676 b!472672) bm!30476))

(assert (= (or b!472671 bm!30476) bm!30477))

(assert (= (or b!472671 b!472676) bm!30479))

(assert (= (or b!472674 bm!30477) bm!30480))

(assert (= (or b!472674 bm!30479) bm!30474))

(assert (= (and d!75345 res!282403) b!472670))

(assert (= (and d!75345 c!56965) b!472665))

(assert (= (and d!75345 (not c!56965)) b!472679))

(assert (= (and d!75345 res!282401) b!472664))

(assert (= (and b!472664 res!282406) b!472669))

(assert (= (and b!472664 (not res!282399)) b!472663))

(assert (= (and b!472663 res!282402) b!472667))

(assert (= (and b!472664 res!282405) b!472666))

(assert (= (and b!472666 c!56963) b!472668))

(assert (= (and b!472666 (not c!56963)) b!472678))

(assert (= (and b!472668 res!282398) b!472662))

(assert (= (or b!472668 b!472678) bm!30478))

(assert (= (and b!472666 res!282404) b!472681))

(assert (= (and b!472681 c!56966) b!472677))

(assert (= (and b!472681 (not c!56966)) b!472680))

(assert (= (and b!472677 res!282400) b!472675))

(assert (= (or b!472677 b!472680) bm!30475))

(declare-fun b_lambda!10223 () Bool)

(assert (=> (not b_lambda!10223) (not b!472667)))

(assert (=> b!472667 t!14894))

(declare-fun b_and!20335 () Bool)

(assert (= b_and!20333 (and (=> t!14894 result!7447) b_and!20335)))

(declare-fun m!454589 () Bool)

(assert (=> bm!30474 m!454589))

(assert (=> b!472663 m!454553))

(assert (=> b!472663 m!454553))

(declare-fun m!454591 () Bool)

(assert (=> b!472663 m!454591))

(assert (=> b!472667 m!454549))

(assert (=> b!472667 m!454547))

(assert (=> b!472667 m!454553))

(assert (=> b!472667 m!454553))

(declare-fun m!454593 () Bool)

(assert (=> b!472667 m!454593))

(assert (=> b!472667 m!454547))

(assert (=> b!472667 m!454549))

(assert (=> b!472667 m!454551))

(assert (=> b!472669 m!454553))

(assert (=> b!472669 m!454553))

(assert (=> b!472669 m!454561))

(assert (=> b!472670 m!454553))

(assert (=> b!472670 m!454553))

(assert (=> b!472670 m!454561))

(assert (=> bm!30480 m!454503))

(declare-fun m!454595 () Bool)

(assert (=> b!472674 m!454595))

(declare-fun m!454597 () Bool)

(assert (=> bm!30475 m!454597))

(declare-fun m!454599 () Bool)

(assert (=> b!472675 m!454599))

(declare-fun m!454601 () Bool)

(assert (=> b!472662 m!454601))

(declare-fun m!454603 () Bool)

(assert (=> bm!30478 m!454603))

(declare-fun m!454605 () Bool)

(assert (=> b!472665 m!454605))

(declare-fun m!454607 () Bool)

(assert (=> b!472665 m!454607))

(declare-fun m!454609 () Bool)

(assert (=> b!472665 m!454609))

(declare-fun m!454611 () Bool)

(assert (=> b!472665 m!454611))

(declare-fun m!454613 () Bool)

(assert (=> b!472665 m!454613))

(declare-fun m!454615 () Bool)

(assert (=> b!472665 m!454615))

(declare-fun m!454617 () Bool)

(assert (=> b!472665 m!454617))

(declare-fun m!454619 () Bool)

(assert (=> b!472665 m!454619))

(assert (=> b!472665 m!454615))

(assert (=> b!472665 m!454503))

(declare-fun m!454621 () Bool)

(assert (=> b!472665 m!454621))

(declare-fun m!454623 () Bool)

(assert (=> b!472665 m!454623))

(declare-fun m!454625 () Bool)

(assert (=> b!472665 m!454625))

(declare-fun m!454627 () Bool)

(assert (=> b!472665 m!454627))

(assert (=> b!472665 m!454609))

(declare-fun m!454629 () Bool)

(assert (=> b!472665 m!454629))

(assert (=> b!472665 m!454625))

(declare-fun m!454631 () Bool)

(assert (=> b!472665 m!454631))

(assert (=> b!472665 m!454605))

(declare-fun m!454633 () Bool)

(assert (=> b!472665 m!454633))

(assert (=> b!472665 m!454553))

(assert (=> d!75345 m!454505))

(assert (=> b!472542 d!75345))

(declare-fun d!75347 () Bool)

(assert (=> d!75347 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42376 d!75347))

(declare-fun d!75349 () Bool)

(assert (=> d!75349 (= (array_inv!10506 _keys!1025) (bvsge (size!14917 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42376 d!75349))

(declare-fun d!75351 () Bool)

(assert (=> d!75351 (= (array_inv!10507 _values!833) (bvsge (size!14918 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42376 d!75351))

(declare-fun b!472692 () Bool)

(declare-fun e!277231 () Bool)

(declare-fun e!277232 () Bool)

(assert (=> b!472692 (= e!277231 e!277232)))

(declare-fun c!56970 () Bool)

(assert (=> b!472692 (= c!56970 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!472693 () Bool)

(declare-fun call!30486 () Bool)

(assert (=> b!472693 (= e!277232 call!30486)))

(declare-fun b!472694 () Bool)

(assert (=> b!472694 (= e!277232 call!30486)))

(declare-fun b!472696 () Bool)

(declare-fun e!277233 () Bool)

(assert (=> b!472696 (= e!277233 e!277231)))

(declare-fun res!282415 () Bool)

(assert (=> b!472696 (=> (not res!282415) (not e!277231))))

(declare-fun e!277230 () Bool)

(assert (=> b!472696 (= res!282415 (not e!277230))))

(declare-fun res!282413 () Bool)

(assert (=> b!472696 (=> (not res!282413) (not e!277230))))

(assert (=> b!472696 (= res!282413 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30483 () Bool)

(assert (=> bm!30483 (= call!30486 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56970 (Cons!8911 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000) Nil!8912) Nil!8912)))))

(declare-fun d!75353 () Bool)

(declare-fun res!282414 () Bool)

(assert (=> d!75353 (=> res!282414 e!277233)))

(assert (=> d!75353 (= res!282414 (bvsge #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> d!75353 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8912) e!277233)))

(declare-fun b!472695 () Bool)

(declare-fun contains!2550 (List!8915 (_ BitVec 64)) Bool)

(assert (=> b!472695 (= e!277230 (contains!2550 Nil!8912 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75353 (not res!282414)) b!472696))

(assert (= (and b!472696 res!282413) b!472695))

(assert (= (and b!472696 res!282415) b!472692))

(assert (= (and b!472692 c!56970) b!472694))

(assert (= (and b!472692 (not c!56970)) b!472693))

(assert (= (or b!472694 b!472693) bm!30483))

(assert (=> b!472692 m!454553))

(assert (=> b!472692 m!454553))

(assert (=> b!472692 m!454561))

(assert (=> b!472696 m!454553))

(assert (=> b!472696 m!454553))

(assert (=> b!472696 m!454561))

(assert (=> bm!30483 m!454553))

(declare-fun m!454635 () Bool)

(assert (=> bm!30483 m!454635))

(assert (=> b!472695 m!454553))

(assert (=> b!472695 m!454553))

(declare-fun m!454637 () Bool)

(assert (=> b!472695 m!454637))

(assert (=> b!472541 d!75353))

(declare-fun b!472705 () Bool)

(declare-fun e!277241 () Bool)

(declare-fun call!30489 () Bool)

(assert (=> b!472705 (= e!277241 call!30489)))

(declare-fun b!472706 () Bool)

(declare-fun e!277240 () Bool)

(assert (=> b!472706 (= e!277240 call!30489)))

(declare-fun b!472707 () Bool)

(assert (=> b!472707 (= e!277241 e!277240)))

(declare-fun lt!214572 () (_ BitVec 64))

(assert (=> b!472707 (= lt!214572 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!214573 () Unit!13876)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30295 (_ BitVec 64) (_ BitVec 32)) Unit!13876)

(assert (=> b!472707 (= lt!214573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!214572 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!472707 (arrayContainsKey!0 _keys!1025 lt!214572 #b00000000000000000000000000000000)))

(declare-fun lt!214574 () Unit!13876)

(assert (=> b!472707 (= lt!214574 lt!214573)))

(declare-fun res!282421 () Bool)

(declare-datatypes ((SeekEntryResult!3543 0))(
  ( (MissingZero!3543 (index!16351 (_ BitVec 32))) (Found!3543 (index!16352 (_ BitVec 32))) (Intermediate!3543 (undefined!4355 Bool) (index!16353 (_ BitVec 32)) (x!44323 (_ BitVec 32))) (Undefined!3543) (MissingVacant!3543 (index!16354 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30295 (_ BitVec 32)) SeekEntryResult!3543)

(assert (=> b!472707 (= res!282421 (= (seekEntryOrOpen!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3543 #b00000000000000000000000000000000)))))

(assert (=> b!472707 (=> (not res!282421) (not e!277240))))

(declare-fun bm!30486 () Bool)

(assert (=> bm!30486 (= call!30489 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun d!75355 () Bool)

(declare-fun res!282420 () Bool)

(declare-fun e!277242 () Bool)

(assert (=> d!75355 (=> res!282420 e!277242)))

(assert (=> d!75355 (= res!282420 (bvsge #b00000000000000000000000000000000 (size!14917 _keys!1025)))))

(assert (=> d!75355 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!277242)))

(declare-fun b!472708 () Bool)

(assert (=> b!472708 (= e!277242 e!277241)))

(declare-fun c!56973 () Bool)

(assert (=> b!472708 (= c!56973 (validKeyInArray!0 (select (arr!14565 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75355 (not res!282420)) b!472708))

(assert (= (and b!472708 c!56973) b!472707))

(assert (= (and b!472708 (not c!56973)) b!472705))

(assert (= (and b!472707 res!282421) b!472706))

(assert (= (or b!472706 b!472705) bm!30486))

(assert (=> b!472707 m!454553))

(declare-fun m!454639 () Bool)

(assert (=> b!472707 m!454639))

(declare-fun m!454641 () Bool)

(assert (=> b!472707 m!454641))

(assert (=> b!472707 m!454553))

(declare-fun m!454643 () Bool)

(assert (=> b!472707 m!454643))

(declare-fun m!454645 () Bool)

(assert (=> bm!30486 m!454645))

(assert (=> b!472708 m!454553))

(assert (=> b!472708 m!454553))

(assert (=> b!472708 m!454561))

(assert (=> b!472544 d!75355))

(declare-fun b!472716 () Bool)

(declare-fun e!277248 () Bool)

(assert (=> b!472716 (= e!277248 tp_is_empty!13287)))

(declare-fun condMapEmpty!21646 () Bool)

(declare-fun mapDefault!21646 () ValueCell!6300)

(assert (=> mapNonEmpty!21640 (= condMapEmpty!21646 (= mapRest!21640 ((as const (Array (_ BitVec 32) ValueCell!6300)) mapDefault!21646)))))

(declare-fun mapRes!21646 () Bool)

(assert (=> mapNonEmpty!21640 (= tp!41607 (and e!277248 mapRes!21646))))

(declare-fun mapIsEmpty!21646 () Bool)

(assert (=> mapIsEmpty!21646 mapRes!21646))

(declare-fun b!472715 () Bool)

(declare-fun e!277247 () Bool)

(assert (=> b!472715 (= e!277247 tp_is_empty!13287)))

(declare-fun mapNonEmpty!21646 () Bool)

(declare-fun tp!41617 () Bool)

(assert (=> mapNonEmpty!21646 (= mapRes!21646 (and tp!41617 e!277247))))

(declare-fun mapValue!21646 () ValueCell!6300)

(declare-fun mapKey!21646 () (_ BitVec 32))

(declare-fun mapRest!21646 () (Array (_ BitVec 32) ValueCell!6300))

(assert (=> mapNonEmpty!21646 (= mapRest!21640 (store mapRest!21646 mapKey!21646 mapValue!21646))))

(assert (= (and mapNonEmpty!21640 condMapEmpty!21646) mapIsEmpty!21646))

(assert (= (and mapNonEmpty!21640 (not condMapEmpty!21646)) mapNonEmpty!21646))

(assert (= (and mapNonEmpty!21646 ((_ is ValueCellFull!6300) mapValue!21646)) b!472715))

(assert (= (and mapNonEmpty!21640 ((_ is ValueCellFull!6300) mapDefault!21646)) b!472716))

(declare-fun m!454647 () Bool)

(assert (=> mapNonEmpty!21646 m!454647))

(declare-fun b_lambda!10225 () Bool)

(assert (= b_lambda!10219 (or (and start!42376 b_free!11859) b_lambda!10225)))

(declare-fun b_lambda!10227 () Bool)

(assert (= b_lambda!10217 (or (and start!42376 b_free!11859) b_lambda!10227)))

(declare-fun b_lambda!10229 () Bool)

(assert (= b_lambda!10215 (or (and start!42376 b_free!11859) b_lambda!10229)))

(declare-fun b_lambda!10231 () Bool)

(assert (= b_lambda!10223 (or (and start!42376 b_free!11859) b_lambda!10231)))

(declare-fun b_lambda!10233 () Bool)

(assert (= b_lambda!10221 (or (and start!42376 b_free!11859) b_lambda!10233)))

(check-sat (not b!472662) (not b!472618) (not b!472613) (not d!75339) (not mapNonEmpty!21646) (not b!472612) (not b!472608) (not d!75341) (not b!472670) (not b_next!11859) (not bm!30459) (not d!75345) (not b_lambda!10229) (not b!472601) (not b!472665) (not b!472696) (not b!472604) (not bm!30474) (not b!472602) (not d!75343) (not b!472595) (not b!472599) (not b!472692) (not b!472616) (not b_lambda!10231) (not b!472675) (not b_lambda!10227) tp_is_empty!13287 (not bm!30480) (not b!472708) b_and!20335 (not b!472669) (not bm!30486) (not b!472596) (not b!472707) (not b!472610) (not b!472663) (not b!472695) (not b!472594) (not b!472674) (not b!472667) (not bm!30478) (not b!472615) (not bm!30475) (not bm!30458) (not bm!30483) (not b_lambda!10233) (not b!472609) (not b!472598) (not b_lambda!10225))
(check-sat b_and!20335 (not b_next!11859))

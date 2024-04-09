; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41886 () Bool)

(assert start!41886)

(declare-fun b_free!11481 () Bool)

(declare-fun b_next!11481 () Bool)

(assert (=> start!41886 (= b_free!11481 (not b_next!11481))))

(declare-fun tp!40452 () Bool)

(declare-fun b_and!19879 () Bool)

(assert (=> start!41886 (= tp!40452 b_and!19879)))

(declare-fun b!467402 () Bool)

(declare-fun res!279421 () Bool)

(declare-fun e!273439 () Bool)

(assert (=> b!467402 (=> (not res!279421) (not e!273439))))

(declare-datatypes ((array!29553 0))(
  ( (array!29554 (arr!14201 (Array (_ BitVec 32) (_ BitVec 64))) (size!14553 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29553)

(declare-datatypes ((List!8635 0))(
  ( (Nil!8632) (Cons!8631 (h!9487 (_ BitVec 64)) (t!14597 List!8635)) )
))
(declare-fun arrayNoDuplicates!0 (array!29553 (_ BitVec 32) List!8635) Bool)

(assert (=> b!467402 (= res!279421 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8632))))

(declare-fun b!467403 () Bool)

(declare-fun e!273440 () Bool)

(declare-fun tp_is_empty!12909 () Bool)

(assert (=> b!467403 (= e!273440 tp_is_empty!12909)))

(declare-fun b!467404 () Bool)

(declare-fun res!279420 () Bool)

(assert (=> b!467404 (=> (not res!279420) (not e!273439))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18317 0))(
  ( (V!18318 (val!6499 Int)) )
))
(declare-datatypes ((ValueCell!6111 0))(
  ( (ValueCellFull!6111 (v!8784 V!18317)) (EmptyCell!6111) )
))
(declare-datatypes ((array!29555 0))(
  ( (array!29556 (arr!14202 (Array (_ BitVec 32) ValueCell!6111)) (size!14554 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29555)

(assert (=> b!467404 (= res!279420 (and (= (size!14554 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14553 _keys!1025) (size!14554 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467405 () Bool)

(declare-fun e!273442 () Bool)

(assert (=> b!467405 (= e!273442 tp_is_empty!12909)))

(declare-fun res!279423 () Bool)

(assert (=> start!41886 (=> (not res!279423) (not e!273439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41886 (= res!279423 (validMask!0 mask!1365))))

(assert (=> start!41886 e!273439))

(assert (=> start!41886 tp_is_empty!12909))

(assert (=> start!41886 tp!40452))

(assert (=> start!41886 true))

(declare-fun array_inv!10242 (array!29553) Bool)

(assert (=> start!41886 (array_inv!10242 _keys!1025)))

(declare-fun e!273438 () Bool)

(declare-fun array_inv!10243 (array!29555) Bool)

(assert (=> start!41886 (and (array_inv!10243 _values!833) e!273438)))

(declare-fun b!467406 () Bool)

(declare-fun res!279422 () Bool)

(assert (=> b!467406 (=> (not res!279422) (not e!273439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29553 (_ BitVec 32)) Bool)

(assert (=> b!467406 (= res!279422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21052 () Bool)

(declare-fun mapRes!21052 () Bool)

(declare-fun tp!40453 () Bool)

(assert (=> mapNonEmpty!21052 (= mapRes!21052 (and tp!40453 e!273442))))

(declare-fun mapKey!21052 () (_ BitVec 32))

(declare-fun mapValue!21052 () ValueCell!6111)

(declare-fun mapRest!21052 () (Array (_ BitVec 32) ValueCell!6111))

(assert (=> mapNonEmpty!21052 (= (arr!14202 _values!833) (store mapRest!21052 mapKey!21052 mapValue!21052))))

(declare-fun b!467407 () Bool)

(assert (=> b!467407 (= e!273438 (and e!273440 mapRes!21052))))

(declare-fun condMapEmpty!21052 () Bool)

(declare-fun mapDefault!21052 () ValueCell!6111)

(assert (=> b!467407 (= condMapEmpty!21052 (= (arr!14202 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6111)) mapDefault!21052)))))

(declare-fun mapIsEmpty!21052 () Bool)

(assert (=> mapIsEmpty!21052 mapRes!21052))

(declare-fun b!467408 () Bool)

(assert (=> b!467408 (= e!273439 (not (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!14553 _keys!1025)))))))

(declare-datatypes ((tuple2!8518 0))(
  ( (tuple2!8519 (_1!4269 (_ BitVec 64)) (_2!4269 V!18317)) )
))
(declare-datatypes ((List!8636 0))(
  ( (Nil!8633) (Cons!8632 (h!9488 tuple2!8518) (t!14598 List!8636)) )
))
(declare-datatypes ((ListLongMap!7445 0))(
  ( (ListLongMap!7446 (toList!3738 List!8636)) )
))
(declare-fun lt!211378 () ListLongMap!7445)

(declare-fun lt!211379 () ListLongMap!7445)

(assert (=> b!467408 (= lt!211378 lt!211379)))

(declare-fun minValueBefore!38 () V!18317)

(declare-fun zeroValue!794 () V!18317)

(declare-datatypes ((Unit!13597 0))(
  ( (Unit!13598) )
))
(declare-fun lt!211380 () Unit!13597)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18317)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!99 (array!29553 array!29555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18317 V!18317 V!18317 V!18317 (_ BitVec 32) Int) Unit!13597)

(assert (=> b!467408 (= lt!211380 (lemmaNoChangeToArrayThenSameMapNoExtras!99 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1904 (array!29553 array!29555 (_ BitVec 32) (_ BitVec 32) V!18317 V!18317 (_ BitVec 32) Int) ListLongMap!7445)

(assert (=> b!467408 (= lt!211379 (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467408 (= lt!211378 (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41886 res!279423) b!467404))

(assert (= (and b!467404 res!279420) b!467406))

(assert (= (and b!467406 res!279422) b!467402))

(assert (= (and b!467402 res!279421) b!467408))

(assert (= (and b!467407 condMapEmpty!21052) mapIsEmpty!21052))

(assert (= (and b!467407 (not condMapEmpty!21052)) mapNonEmpty!21052))

(get-info :version)

(assert (= (and mapNonEmpty!21052 ((_ is ValueCellFull!6111) mapValue!21052)) b!467405))

(assert (= (and b!467407 ((_ is ValueCellFull!6111) mapDefault!21052)) b!467403))

(assert (= start!41886 b!467407))

(declare-fun m!449567 () Bool)

(assert (=> start!41886 m!449567))

(declare-fun m!449569 () Bool)

(assert (=> start!41886 m!449569))

(declare-fun m!449571 () Bool)

(assert (=> start!41886 m!449571))

(declare-fun m!449573 () Bool)

(assert (=> b!467402 m!449573))

(declare-fun m!449575 () Bool)

(assert (=> b!467406 m!449575))

(declare-fun m!449577 () Bool)

(assert (=> b!467408 m!449577))

(declare-fun m!449579 () Bool)

(assert (=> b!467408 m!449579))

(declare-fun m!449581 () Bool)

(assert (=> b!467408 m!449581))

(declare-fun m!449583 () Bool)

(assert (=> mapNonEmpty!21052 m!449583))

(check-sat (not start!41886) tp_is_empty!12909 b_and!19879 (not b!467402) (not b_next!11481) (not mapNonEmpty!21052) (not b!467408) (not b!467406))
(check-sat b_and!19879 (not b_next!11481))
(get-model)

(declare-fun d!75075 () Bool)

(declare-fun res!279443 () Bool)

(declare-fun e!273468 () Bool)

(assert (=> d!75075 (=> res!279443 e!273468)))

(assert (=> d!75075 (= res!279443 (bvsge #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(assert (=> d!75075 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8632) e!273468)))

(declare-fun b!467440 () Bool)

(declare-fun e!273466 () Bool)

(declare-fun e!273469 () Bool)

(assert (=> b!467440 (= e!273466 e!273469)))

(declare-fun c!56716 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!467440 (= c!56716 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!467441 () Bool)

(declare-fun e!273467 () Bool)

(declare-fun contains!2533 (List!8635 (_ BitVec 64)) Bool)

(assert (=> b!467441 (= e!273467 (contains!2533 Nil!8632 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30311 () Bool)

(declare-fun call!30314 () Bool)

(assert (=> bm!30311 (= call!30314 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56716 (Cons!8631 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000) Nil!8632) Nil!8632)))))

(declare-fun b!467442 () Bool)

(assert (=> b!467442 (= e!273469 call!30314)))

(declare-fun b!467443 () Bool)

(assert (=> b!467443 (= e!273468 e!273466)))

(declare-fun res!279442 () Bool)

(assert (=> b!467443 (=> (not res!279442) (not e!273466))))

(assert (=> b!467443 (= res!279442 (not e!273467))))

(declare-fun res!279444 () Bool)

(assert (=> b!467443 (=> (not res!279444) (not e!273467))))

(assert (=> b!467443 (= res!279444 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!467444 () Bool)

(assert (=> b!467444 (= e!273469 call!30314)))

(assert (= (and d!75075 (not res!279443)) b!467443))

(assert (= (and b!467443 res!279444) b!467441))

(assert (= (and b!467443 res!279442) b!467440))

(assert (= (and b!467440 c!56716) b!467444))

(assert (= (and b!467440 (not c!56716)) b!467442))

(assert (= (or b!467444 b!467442) bm!30311))

(declare-fun m!449603 () Bool)

(assert (=> b!467440 m!449603))

(assert (=> b!467440 m!449603))

(declare-fun m!449605 () Bool)

(assert (=> b!467440 m!449605))

(assert (=> b!467441 m!449603))

(assert (=> b!467441 m!449603))

(declare-fun m!449607 () Bool)

(assert (=> b!467441 m!449607))

(assert (=> bm!30311 m!449603))

(declare-fun m!449609 () Bool)

(assert (=> bm!30311 m!449609))

(assert (=> b!467443 m!449603))

(assert (=> b!467443 m!449603))

(assert (=> b!467443 m!449605))

(assert (=> b!467402 d!75075))

(declare-fun b!467453 () Bool)

(declare-fun e!273478 () Bool)

(declare-fun e!273476 () Bool)

(assert (=> b!467453 (= e!273478 e!273476)))

(declare-fun c!56719 () Bool)

(assert (=> b!467453 (= c!56719 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30314 () Bool)

(declare-fun call!30317 () Bool)

(assert (=> bm!30314 (= call!30317 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun d!75077 () Bool)

(declare-fun res!279450 () Bool)

(assert (=> d!75077 (=> res!279450 e!273478)))

(assert (=> d!75077 (= res!279450 (bvsge #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(assert (=> d!75077 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!273478)))

(declare-fun b!467454 () Bool)

(declare-fun e!273477 () Bool)

(assert (=> b!467454 (= e!273477 call!30317)))

(declare-fun b!467455 () Bool)

(assert (=> b!467455 (= e!273476 call!30317)))

(declare-fun b!467456 () Bool)

(assert (=> b!467456 (= e!273476 e!273477)))

(declare-fun lt!211397 () (_ BitVec 64))

(assert (=> b!467456 (= lt!211397 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211398 () Unit!13597)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29553 (_ BitVec 64) (_ BitVec 32)) Unit!13597)

(assert (=> b!467456 (= lt!211398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!211397 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!467456 (arrayContainsKey!0 _keys!1025 lt!211397 #b00000000000000000000000000000000)))

(declare-fun lt!211396 () Unit!13597)

(assert (=> b!467456 (= lt!211396 lt!211398)))

(declare-fun res!279449 () Bool)

(declare-datatypes ((SeekEntryResult!3536 0))(
  ( (MissingZero!3536 (index!16323 (_ BitVec 32))) (Found!3536 (index!16324 (_ BitVec 32))) (Intermediate!3536 (undefined!4348 Bool) (index!16325 (_ BitVec 32)) (x!43735 (_ BitVec 32))) (Undefined!3536) (MissingVacant!3536 (index!16326 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29553 (_ BitVec 32)) SeekEntryResult!3536)

(assert (=> b!467456 (= res!279449 (= (seekEntryOrOpen!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3536 #b00000000000000000000000000000000)))))

(assert (=> b!467456 (=> (not res!279449) (not e!273477))))

(assert (= (and d!75077 (not res!279450)) b!467453))

(assert (= (and b!467453 c!56719) b!467456))

(assert (= (and b!467453 (not c!56719)) b!467455))

(assert (= (and b!467456 res!279449) b!467454))

(assert (= (or b!467454 b!467455) bm!30314))

(assert (=> b!467453 m!449603))

(assert (=> b!467453 m!449603))

(assert (=> b!467453 m!449605))

(declare-fun m!449611 () Bool)

(assert (=> bm!30314 m!449611))

(assert (=> b!467456 m!449603))

(declare-fun m!449613 () Bool)

(assert (=> b!467456 m!449613))

(declare-fun m!449615 () Bool)

(assert (=> b!467456 m!449615))

(assert (=> b!467456 m!449603))

(declare-fun m!449617 () Bool)

(assert (=> b!467456 m!449617))

(assert (=> b!467406 d!75077))

(declare-fun d!75079 () Bool)

(assert (=> d!75079 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41886 d!75079))

(declare-fun d!75081 () Bool)

(assert (=> d!75081 (= (array_inv!10242 _keys!1025) (bvsge (size!14553 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41886 d!75081))

(declare-fun d!75083 () Bool)

(assert (=> d!75083 (= (array_inv!10243 _values!833) (bvsge (size!14554 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41886 d!75083))

(declare-fun d!75085 () Bool)

(assert (=> d!75085 (= (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211401 () Unit!13597)

(declare-fun choose!1349 (array!29553 array!29555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18317 V!18317 V!18317 V!18317 (_ BitVec 32) Int) Unit!13597)

(assert (=> d!75085 (= lt!211401 (choose!1349 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75085 (validMask!0 mask!1365)))

(assert (=> d!75085 (= (lemmaNoChangeToArrayThenSameMapNoExtras!99 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211401)))

(declare-fun bs!14802 () Bool)

(assert (= bs!14802 d!75085))

(assert (=> bs!14802 m!449581))

(assert (=> bs!14802 m!449579))

(declare-fun m!449619 () Bool)

(assert (=> bs!14802 m!449619))

(assert (=> bs!14802 m!449567))

(assert (=> b!467408 d!75085))

(declare-fun b!467481 () Bool)

(declare-fun e!273498 () Bool)

(declare-fun e!273497 () Bool)

(assert (=> b!467481 (= e!273498 e!273497)))

(declare-fun c!56731 () Bool)

(assert (=> b!467481 (= c!56731 (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(declare-fun b!467482 () Bool)

(declare-fun lt!211416 () ListLongMap!7445)

(declare-fun isEmpty!576 (ListLongMap!7445) Bool)

(assert (=> b!467482 (= e!273497 (isEmpty!576 lt!211416))))

(declare-fun b!467483 () Bool)

(declare-fun e!273493 () Bool)

(assert (=> b!467483 (= e!273493 e!273498)))

(declare-fun c!56729 () Bool)

(declare-fun e!273499 () Bool)

(assert (=> b!467483 (= c!56729 e!273499)))

(declare-fun res!279461 () Bool)

(assert (=> b!467483 (=> (not res!279461) (not e!273499))))

(assert (=> b!467483 (= res!279461 (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(declare-fun b!467484 () Bool)

(declare-fun e!273494 () ListLongMap!7445)

(declare-fun e!273496 () ListLongMap!7445)

(assert (=> b!467484 (= e!273494 e!273496)))

(declare-fun c!56730 () Bool)

(assert (=> b!467484 (= c!56730 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!467485 () Bool)

(declare-fun e!273495 () Bool)

(assert (=> b!467485 (= e!273498 e!273495)))

(assert (=> b!467485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(declare-fun res!279462 () Bool)

(declare-fun contains!2534 (ListLongMap!7445 (_ BitVec 64)) Bool)

(assert (=> b!467485 (= res!279462 (contains!2534 lt!211416 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!467485 (=> (not res!279462) (not e!273495))))

(declare-fun b!467486 () Bool)

(assert (=> b!467486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(assert (=> b!467486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14554 _values!833)))))

(declare-fun apply!324 (ListLongMap!7445 (_ BitVec 64)) V!18317)

(declare-fun get!6968 (ValueCell!6111 V!18317) V!18317)

(declare-fun dynLambda!916 (Int (_ BitVec 64)) V!18317)

(assert (=> b!467486 (= e!273495 (= (apply!324 lt!211416 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)) (get!6968 (select (arr!14202 _values!833) #b00000000000000000000000000000000) (dynLambda!916 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!467487 () Bool)

(declare-fun res!279459 () Bool)

(assert (=> b!467487 (=> (not res!279459) (not e!273493))))

(assert (=> b!467487 (= res!279459 (not (contains!2534 lt!211416 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!467488 () Bool)

(declare-fun lt!211417 () Unit!13597)

(declare-fun lt!211418 () Unit!13597)

(assert (=> b!467488 (= lt!211417 lt!211418)))

(declare-fun lt!211422 () V!18317)

(declare-fun lt!211420 () (_ BitVec 64))

(declare-fun lt!211419 () ListLongMap!7445)

(declare-fun lt!211421 () (_ BitVec 64))

(declare-fun +!1648 (ListLongMap!7445 tuple2!8518) ListLongMap!7445)

(assert (=> b!467488 (not (contains!2534 (+!1648 lt!211419 (tuple2!8519 lt!211420 lt!211422)) lt!211421))))

(declare-fun addStillNotContains!159 (ListLongMap!7445 (_ BitVec 64) V!18317 (_ BitVec 64)) Unit!13597)

(assert (=> b!467488 (= lt!211418 (addStillNotContains!159 lt!211419 lt!211420 lt!211422 lt!211421))))

(assert (=> b!467488 (= lt!211421 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!467488 (= lt!211422 (get!6968 (select (arr!14202 _values!833) #b00000000000000000000000000000000) (dynLambda!916 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!467488 (= lt!211420 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30320 () ListLongMap!7445)

(assert (=> b!467488 (= lt!211419 call!30320)))

(assert (=> b!467488 (= e!273496 (+!1648 call!30320 (tuple2!8519 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000) (get!6968 (select (arr!14202 _values!833) #b00000000000000000000000000000000) (dynLambda!916 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!467489 () Bool)

(assert (=> b!467489 (= e!273496 call!30320)))

(declare-fun b!467490 () Bool)

(assert (=> b!467490 (= e!273499 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!467490 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!75087 () Bool)

(assert (=> d!75087 e!273493))

(declare-fun res!279460 () Bool)

(assert (=> d!75087 (=> (not res!279460) (not e!273493))))

(assert (=> d!75087 (= res!279460 (not (contains!2534 lt!211416 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75087 (= lt!211416 e!273494)))

(declare-fun c!56728 () Bool)

(assert (=> d!75087 (= c!56728 (bvsge #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(assert (=> d!75087 (validMask!0 mask!1365)))

(assert (=> d!75087 (= (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211416)))

(declare-fun bm!30317 () Bool)

(assert (=> bm!30317 (= call!30320 (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!467491 () Bool)

(assert (=> b!467491 (= e!273494 (ListLongMap!7446 Nil!8633))))

(declare-fun b!467492 () Bool)

(assert (=> b!467492 (= e!273497 (= lt!211416 (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(assert (= (and d!75087 c!56728) b!467491))

(assert (= (and d!75087 (not c!56728)) b!467484))

(assert (= (and b!467484 c!56730) b!467488))

(assert (= (and b!467484 (not c!56730)) b!467489))

(assert (= (or b!467488 b!467489) bm!30317))

(assert (= (and d!75087 res!279460) b!467487))

(assert (= (and b!467487 res!279459) b!467483))

(assert (= (and b!467483 res!279461) b!467490))

(assert (= (and b!467483 c!56729) b!467485))

(assert (= (and b!467483 (not c!56729)) b!467481))

(assert (= (and b!467485 res!279462) b!467486))

(assert (= (and b!467481 c!56731) b!467492))

(assert (= (and b!467481 (not c!56731)) b!467482))

(declare-fun b_lambda!10083 () Bool)

(assert (=> (not b_lambda!10083) (not b!467486)))

(declare-fun t!14601 () Bool)

(declare-fun tb!3921 () Bool)

(assert (=> (and start!41886 (= defaultEntry!841 defaultEntry!841) t!14601) tb!3921))

(declare-fun result!7405 () Bool)

(assert (=> tb!3921 (= result!7405 tp_is_empty!12909)))

(assert (=> b!467486 t!14601))

(declare-fun b_and!19883 () Bool)

(assert (= b_and!19879 (and (=> t!14601 result!7405) b_and!19883)))

(declare-fun b_lambda!10085 () Bool)

(assert (=> (not b_lambda!10085) (not b!467488)))

(assert (=> b!467488 t!14601))

(declare-fun b_and!19885 () Bool)

(assert (= b_and!19883 (and (=> t!14601 result!7405) b_and!19885)))

(assert (=> b!467486 m!449603))

(declare-fun m!449621 () Bool)

(assert (=> b!467486 m!449621))

(declare-fun m!449623 () Bool)

(assert (=> b!467486 m!449623))

(assert (=> b!467486 m!449603))

(assert (=> b!467486 m!449623))

(declare-fun m!449625 () Bool)

(assert (=> b!467486 m!449625))

(declare-fun m!449627 () Bool)

(assert (=> b!467486 m!449627))

(assert (=> b!467486 m!449625))

(declare-fun m!449629 () Bool)

(assert (=> b!467488 m!449629))

(assert (=> b!467488 m!449623))

(declare-fun m!449631 () Bool)

(assert (=> b!467488 m!449631))

(declare-fun m!449633 () Bool)

(assert (=> b!467488 m!449633))

(assert (=> b!467488 m!449603))

(assert (=> b!467488 m!449631))

(declare-fun m!449635 () Bool)

(assert (=> b!467488 m!449635))

(assert (=> b!467488 m!449623))

(assert (=> b!467488 m!449625))

(assert (=> b!467488 m!449627))

(assert (=> b!467488 m!449625))

(declare-fun m!449637 () Bool)

(assert (=> d!75087 m!449637))

(assert (=> d!75087 m!449567))

(declare-fun m!449639 () Bool)

(assert (=> b!467487 m!449639))

(declare-fun m!449641 () Bool)

(assert (=> b!467492 m!449641))

(declare-fun m!449643 () Bool)

(assert (=> b!467482 m!449643))

(assert (=> b!467484 m!449603))

(assert (=> b!467484 m!449603))

(assert (=> b!467484 m!449605))

(assert (=> b!467490 m!449603))

(assert (=> b!467490 m!449603))

(assert (=> b!467490 m!449605))

(assert (=> b!467485 m!449603))

(assert (=> b!467485 m!449603))

(declare-fun m!449645 () Bool)

(assert (=> b!467485 m!449645))

(assert (=> bm!30317 m!449641))

(assert (=> b!467408 d!75087))

(declare-fun b!467495 () Bool)

(declare-fun e!273505 () Bool)

(declare-fun e!273504 () Bool)

(assert (=> b!467495 (= e!273505 e!273504)))

(declare-fun c!56735 () Bool)

(assert (=> b!467495 (= c!56735 (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(declare-fun b!467496 () Bool)

(declare-fun lt!211423 () ListLongMap!7445)

(assert (=> b!467496 (= e!273504 (isEmpty!576 lt!211423))))

(declare-fun b!467497 () Bool)

(declare-fun e!273500 () Bool)

(assert (=> b!467497 (= e!273500 e!273505)))

(declare-fun c!56733 () Bool)

(declare-fun e!273506 () Bool)

(assert (=> b!467497 (= c!56733 e!273506)))

(declare-fun res!279465 () Bool)

(assert (=> b!467497 (=> (not res!279465) (not e!273506))))

(assert (=> b!467497 (= res!279465 (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(declare-fun b!467498 () Bool)

(declare-fun e!273501 () ListLongMap!7445)

(declare-fun e!273503 () ListLongMap!7445)

(assert (=> b!467498 (= e!273501 e!273503)))

(declare-fun c!56734 () Bool)

(assert (=> b!467498 (= c!56734 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!467499 () Bool)

(declare-fun e!273502 () Bool)

(assert (=> b!467499 (= e!273505 e!273502)))

(assert (=> b!467499 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(declare-fun res!279466 () Bool)

(assert (=> b!467499 (= res!279466 (contains!2534 lt!211423 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!467499 (=> (not res!279466) (not e!273502))))

(declare-fun b!467500 () Bool)

(assert (=> b!467500 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(assert (=> b!467500 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14554 _values!833)))))

(assert (=> b!467500 (= e!273502 (= (apply!324 lt!211423 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)) (get!6968 (select (arr!14202 _values!833) #b00000000000000000000000000000000) (dynLambda!916 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!467501 () Bool)

(declare-fun res!279463 () Bool)

(assert (=> b!467501 (=> (not res!279463) (not e!273500))))

(assert (=> b!467501 (= res!279463 (not (contains!2534 lt!211423 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!467502 () Bool)

(declare-fun lt!211424 () Unit!13597)

(declare-fun lt!211425 () Unit!13597)

(assert (=> b!467502 (= lt!211424 lt!211425)))

(declare-fun lt!211428 () (_ BitVec 64))

(declare-fun lt!211429 () V!18317)

(declare-fun lt!211427 () (_ BitVec 64))

(declare-fun lt!211426 () ListLongMap!7445)

(assert (=> b!467502 (not (contains!2534 (+!1648 lt!211426 (tuple2!8519 lt!211427 lt!211429)) lt!211428))))

(assert (=> b!467502 (= lt!211425 (addStillNotContains!159 lt!211426 lt!211427 lt!211429 lt!211428))))

(assert (=> b!467502 (= lt!211428 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!467502 (= lt!211429 (get!6968 (select (arr!14202 _values!833) #b00000000000000000000000000000000) (dynLambda!916 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!467502 (= lt!211427 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30321 () ListLongMap!7445)

(assert (=> b!467502 (= lt!211426 call!30321)))

(assert (=> b!467502 (= e!273503 (+!1648 call!30321 (tuple2!8519 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000) (get!6968 (select (arr!14202 _values!833) #b00000000000000000000000000000000) (dynLambda!916 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!467503 () Bool)

(assert (=> b!467503 (= e!273503 call!30321)))

(declare-fun b!467504 () Bool)

(assert (=> b!467504 (= e!273506 (validKeyInArray!0 (select (arr!14201 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!467504 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!75089 () Bool)

(assert (=> d!75089 e!273500))

(declare-fun res!279464 () Bool)

(assert (=> d!75089 (=> (not res!279464) (not e!273500))))

(assert (=> d!75089 (= res!279464 (not (contains!2534 lt!211423 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75089 (= lt!211423 e!273501)))

(declare-fun c!56732 () Bool)

(assert (=> d!75089 (= c!56732 (bvsge #b00000000000000000000000000000000 (size!14553 _keys!1025)))))

(assert (=> d!75089 (validMask!0 mask!1365)))

(assert (=> d!75089 (= (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211423)))

(declare-fun bm!30318 () Bool)

(assert (=> bm!30318 (= call!30321 (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!467505 () Bool)

(assert (=> b!467505 (= e!273501 (ListLongMap!7446 Nil!8633))))

(declare-fun b!467506 () Bool)

(assert (=> b!467506 (= e!273504 (= lt!211423 (getCurrentListMapNoExtraKeys!1904 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(assert (= (and d!75089 c!56732) b!467505))

(assert (= (and d!75089 (not c!56732)) b!467498))

(assert (= (and b!467498 c!56734) b!467502))

(assert (= (and b!467498 (not c!56734)) b!467503))

(assert (= (or b!467502 b!467503) bm!30318))

(assert (= (and d!75089 res!279464) b!467501))

(assert (= (and b!467501 res!279463) b!467497))

(assert (= (and b!467497 res!279465) b!467504))

(assert (= (and b!467497 c!56733) b!467499))

(assert (= (and b!467497 (not c!56733)) b!467495))

(assert (= (and b!467499 res!279466) b!467500))

(assert (= (and b!467495 c!56735) b!467506))

(assert (= (and b!467495 (not c!56735)) b!467496))

(declare-fun b_lambda!10087 () Bool)

(assert (=> (not b_lambda!10087) (not b!467500)))

(assert (=> b!467500 t!14601))

(declare-fun b_and!19887 () Bool)

(assert (= b_and!19885 (and (=> t!14601 result!7405) b_and!19887)))

(declare-fun b_lambda!10089 () Bool)

(assert (=> (not b_lambda!10089) (not b!467502)))

(assert (=> b!467502 t!14601))

(declare-fun b_and!19889 () Bool)

(assert (= b_and!19887 (and (=> t!14601 result!7405) b_and!19889)))

(assert (=> b!467500 m!449603))

(declare-fun m!449647 () Bool)

(assert (=> b!467500 m!449647))

(assert (=> b!467500 m!449623))

(assert (=> b!467500 m!449603))

(assert (=> b!467500 m!449623))

(assert (=> b!467500 m!449625))

(assert (=> b!467500 m!449627))

(assert (=> b!467500 m!449625))

(declare-fun m!449649 () Bool)

(assert (=> b!467502 m!449649))

(assert (=> b!467502 m!449623))

(declare-fun m!449651 () Bool)

(assert (=> b!467502 m!449651))

(declare-fun m!449653 () Bool)

(assert (=> b!467502 m!449653))

(assert (=> b!467502 m!449603))

(assert (=> b!467502 m!449651))

(declare-fun m!449655 () Bool)

(assert (=> b!467502 m!449655))

(assert (=> b!467502 m!449623))

(assert (=> b!467502 m!449625))

(assert (=> b!467502 m!449627))

(assert (=> b!467502 m!449625))

(declare-fun m!449657 () Bool)

(assert (=> d!75089 m!449657))

(assert (=> d!75089 m!449567))

(declare-fun m!449659 () Bool)

(assert (=> b!467501 m!449659))

(declare-fun m!449661 () Bool)

(assert (=> b!467506 m!449661))

(declare-fun m!449663 () Bool)

(assert (=> b!467496 m!449663))

(assert (=> b!467498 m!449603))

(assert (=> b!467498 m!449603))

(assert (=> b!467498 m!449605))

(assert (=> b!467504 m!449603))

(assert (=> b!467504 m!449603))

(assert (=> b!467504 m!449605))

(assert (=> b!467499 m!449603))

(assert (=> b!467499 m!449603))

(declare-fun m!449665 () Bool)

(assert (=> b!467499 m!449665))

(assert (=> bm!30318 m!449661))

(assert (=> b!467408 d!75089))

(declare-fun mapIsEmpty!21058 () Bool)

(declare-fun mapRes!21058 () Bool)

(assert (=> mapIsEmpty!21058 mapRes!21058))

(declare-fun mapNonEmpty!21058 () Bool)

(declare-fun tp!40462 () Bool)

(declare-fun e!273511 () Bool)

(assert (=> mapNonEmpty!21058 (= mapRes!21058 (and tp!40462 e!273511))))

(declare-fun mapValue!21058 () ValueCell!6111)

(declare-fun mapKey!21058 () (_ BitVec 32))

(declare-fun mapRest!21058 () (Array (_ BitVec 32) ValueCell!6111))

(assert (=> mapNonEmpty!21058 (= mapRest!21052 (store mapRest!21058 mapKey!21058 mapValue!21058))))

(declare-fun condMapEmpty!21058 () Bool)

(declare-fun mapDefault!21058 () ValueCell!6111)

(assert (=> mapNonEmpty!21052 (= condMapEmpty!21058 (= mapRest!21052 ((as const (Array (_ BitVec 32) ValueCell!6111)) mapDefault!21058)))))

(declare-fun e!273512 () Bool)

(assert (=> mapNonEmpty!21052 (= tp!40453 (and e!273512 mapRes!21058))))

(declare-fun b!467514 () Bool)

(assert (=> b!467514 (= e!273512 tp_is_empty!12909)))

(declare-fun b!467513 () Bool)

(assert (=> b!467513 (= e!273511 tp_is_empty!12909)))

(assert (= (and mapNonEmpty!21052 condMapEmpty!21058) mapIsEmpty!21058))

(assert (= (and mapNonEmpty!21052 (not condMapEmpty!21058)) mapNonEmpty!21058))

(assert (= (and mapNonEmpty!21058 ((_ is ValueCellFull!6111) mapValue!21058)) b!467513))

(assert (= (and mapNonEmpty!21052 ((_ is ValueCellFull!6111) mapDefault!21058)) b!467514))

(declare-fun m!449667 () Bool)

(assert (=> mapNonEmpty!21058 m!449667))

(declare-fun b_lambda!10091 () Bool)

(assert (= b_lambda!10085 (or (and start!41886 b_free!11481) b_lambda!10091)))

(declare-fun b_lambda!10093 () Bool)

(assert (= b_lambda!10083 (or (and start!41886 b_free!11481) b_lambda!10093)))

(declare-fun b_lambda!10095 () Bool)

(assert (= b_lambda!10087 (or (and start!41886 b_free!11481) b_lambda!10095)))

(declare-fun b_lambda!10097 () Bool)

(assert (= b_lambda!10089 (or (and start!41886 b_free!11481) b_lambda!10097)))

(check-sat (not d!75089) (not b!467441) (not mapNonEmpty!21058) (not b!467453) (not b_next!11481) (not b!467502) (not b!467440) (not b!467501) (not b!467486) (not bm!30318) (not b!467456) (not b!467488) (not b_lambda!10093) (not b!467484) tp_is_empty!12909 (not b_lambda!10095) (not bm!30314) (not b!467499) (not d!75087) (not b!467498) (not b!467504) (not b!467500) (not bm!30317) (not b_lambda!10097) (not b!467492) (not bm!30311) (not b!467443) (not b!467487) (not b_lambda!10091) (not b!467506) (not b!467496) (not d!75085) (not b!467490) (not b!467485) b_and!19889 (not b!467482))
(check-sat b_and!19889 (not b_next!11481))

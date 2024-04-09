; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104960 () Bool)

(assert start!104960)

(declare-fun b_free!26715 () Bool)

(declare-fun b_next!26715 () Bool)

(assert (=> start!104960 (= b_free!26715 (not b_next!26715))))

(declare-fun tp!93638 () Bool)

(declare-fun b_and!44501 () Bool)

(assert (=> start!104960 (= tp!93638 b_and!44501)))

(declare-fun b!1250547 () Bool)

(declare-fun res!834227 () Bool)

(declare-fun e!710012 () Bool)

(assert (=> b!1250547 (=> (not res!834227) (not e!710012))))

(declare-datatypes ((array!80883 0))(
  ( (array!80884 (arr!39003 (Array (_ BitVec 32) (_ BitVec 64))) (size!39540 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80883)

(declare-datatypes ((List!27856 0))(
  ( (Nil!27853) (Cons!27852 (h!29061 (_ BitVec 64)) (t!41336 List!27856)) )
))
(declare-fun arrayNoDuplicates!0 (array!80883 (_ BitVec 32) List!27856) Bool)

(assert (=> b!1250547 (= res!834227 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27853))))

(declare-fun b!1250548 () Bool)

(declare-fun e!710015 () Bool)

(assert (=> b!1250548 (= e!710015 (bvsle #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-datatypes ((V!47521 0))(
  ( (V!47522 (val!15871 Int)) )
))
(declare-datatypes ((tuple2!20600 0))(
  ( (tuple2!20601 (_1!10310 (_ BitVec 64)) (_2!10310 V!47521)) )
))
(declare-datatypes ((List!27857 0))(
  ( (Nil!27854) (Cons!27853 (h!29062 tuple2!20600) (t!41337 List!27857)) )
))
(declare-datatypes ((ListLongMap!18485 0))(
  ( (ListLongMap!18486 (toList!9258 List!27857)) )
))
(declare-fun lt!564282 () ListLongMap!18485)

(declare-fun -!2023 (ListLongMap!18485 (_ BitVec 64)) ListLongMap!18485)

(assert (=> b!1250548 (= (-!2023 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564282)))

(declare-datatypes ((Unit!41493 0))(
  ( (Unit!41494) )
))
(declare-fun lt!564280 () Unit!41493)

(declare-fun removeNotPresentStillSame!90 (ListLongMap!18485 (_ BitVec 64)) Unit!41493)

(assert (=> b!1250548 (= lt!564280 (removeNotPresentStillSame!90 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!834230 () Bool)

(assert (=> start!104960 (=> (not res!834230) (not e!710012))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104960 (= res!834230 (validMask!0 mask!1466))))

(assert (=> start!104960 e!710012))

(assert (=> start!104960 true))

(assert (=> start!104960 tp!93638))

(declare-fun tp_is_empty!31617 () Bool)

(assert (=> start!104960 tp_is_empty!31617))

(declare-fun array_inv!29687 (array!80883) Bool)

(assert (=> start!104960 (array_inv!29687 _keys!1118)))

(declare-datatypes ((ValueCell!15045 0))(
  ( (ValueCellFull!15045 (v!18567 V!47521)) (EmptyCell!15045) )
))
(declare-datatypes ((array!80885 0))(
  ( (array!80886 (arr!39004 (Array (_ BitVec 32) ValueCell!15045)) (size!39541 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80885)

(declare-fun e!710017 () Bool)

(declare-fun array_inv!29688 (array!80885) Bool)

(assert (=> start!104960 (and (array_inv!29688 _values!914) e!710017)))

(declare-fun mapNonEmpty!49189 () Bool)

(declare-fun mapRes!49189 () Bool)

(declare-fun tp!93639 () Bool)

(declare-fun e!710014 () Bool)

(assert (=> mapNonEmpty!49189 (= mapRes!49189 (and tp!93639 e!710014))))

(declare-fun mapKey!49189 () (_ BitVec 32))

(declare-fun mapValue!49189 () ValueCell!15045)

(declare-fun mapRest!49189 () (Array (_ BitVec 32) ValueCell!15045))

(assert (=> mapNonEmpty!49189 (= (arr!39004 _values!914) (store mapRest!49189 mapKey!49189 mapValue!49189))))

(declare-fun b!1250549 () Bool)

(declare-fun e!710011 () Bool)

(assert (=> b!1250549 (= e!710017 (and e!710011 mapRes!49189))))

(declare-fun condMapEmpty!49189 () Bool)

(declare-fun mapDefault!49189 () ValueCell!15045)

(assert (=> b!1250549 (= condMapEmpty!49189 (= (arr!39004 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15045)) mapDefault!49189)))))

(declare-fun mapIsEmpty!49189 () Bool)

(assert (=> mapIsEmpty!49189 mapRes!49189))

(declare-fun b!1250550 () Bool)

(declare-fun res!834229 () Bool)

(assert (=> b!1250550 (=> (not res!834229) (not e!710012))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1250550 (= res!834229 (and (= (size!39541 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39540 _keys!1118) (size!39541 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250551 () Bool)

(declare-fun e!710013 () Bool)

(assert (=> b!1250551 (= e!710012 (not e!710013))))

(declare-fun res!834232 () Bool)

(assert (=> b!1250551 (=> res!834232 e!710013)))

(assert (=> b!1250551 (= res!834232 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564283 () ListLongMap!18485)

(declare-fun lt!564279 () ListLongMap!18485)

(assert (=> b!1250551 (= lt!564283 lt!564279)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47521)

(declare-fun lt!564281 () Unit!41493)

(declare-fun zeroValue!871 () V!47521)

(declare-fun minValueBefore!43 () V!47521)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!955 (array!80883 array!80885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47521 V!47521 V!47521 V!47521 (_ BitVec 32) Int) Unit!41493)

(assert (=> b!1250551 (= lt!564281 (lemmaNoChangeToArrayThenSameMapNoExtras!955 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5637 (array!80883 array!80885 (_ BitVec 32) (_ BitVec 32) V!47521 V!47521 (_ BitVec 32) Int) ListLongMap!18485)

(assert (=> b!1250551 (= lt!564279 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250551 (= lt!564283 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250552 () Bool)

(assert (=> b!1250552 (= e!710013 e!710015)))

(declare-fun res!834231 () Bool)

(assert (=> b!1250552 (=> res!834231 e!710015)))

(declare-fun contains!7509 (ListLongMap!18485 (_ BitVec 64)) Bool)

(assert (=> b!1250552 (= res!834231 (contains!7509 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4475 (array!80883 array!80885 (_ BitVec 32) (_ BitVec 32) V!47521 V!47521 (_ BitVec 32) Int) ListLongMap!18485)

(assert (=> b!1250552 (= lt!564282 (getCurrentListMap!4475 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250553 () Bool)

(assert (=> b!1250553 (= e!710011 tp_is_empty!31617)))

(declare-fun b!1250554 () Bool)

(declare-fun res!834228 () Bool)

(assert (=> b!1250554 (=> (not res!834228) (not e!710012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80883 (_ BitVec 32)) Bool)

(assert (=> b!1250554 (= res!834228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250555 () Bool)

(assert (=> b!1250555 (= e!710014 tp_is_empty!31617)))

(assert (= (and start!104960 res!834230) b!1250550))

(assert (= (and b!1250550 res!834229) b!1250554))

(assert (= (and b!1250554 res!834228) b!1250547))

(assert (= (and b!1250547 res!834227) b!1250551))

(assert (= (and b!1250551 (not res!834232)) b!1250552))

(assert (= (and b!1250552 (not res!834231)) b!1250548))

(assert (= (and b!1250549 condMapEmpty!49189) mapIsEmpty!49189))

(assert (= (and b!1250549 (not condMapEmpty!49189)) mapNonEmpty!49189))

(get-info :version)

(assert (= (and mapNonEmpty!49189 ((_ is ValueCellFull!15045) mapValue!49189)) b!1250555))

(assert (= (and b!1250549 ((_ is ValueCellFull!15045) mapDefault!49189)) b!1250553))

(assert (= start!104960 b!1250549))

(declare-fun m!1151413 () Bool)

(assert (=> start!104960 m!1151413))

(declare-fun m!1151415 () Bool)

(assert (=> start!104960 m!1151415))

(declare-fun m!1151417 () Bool)

(assert (=> start!104960 m!1151417))

(declare-fun m!1151419 () Bool)

(assert (=> b!1250552 m!1151419))

(declare-fun m!1151421 () Bool)

(assert (=> b!1250552 m!1151421))

(declare-fun m!1151423 () Bool)

(assert (=> b!1250554 m!1151423))

(declare-fun m!1151425 () Bool)

(assert (=> b!1250548 m!1151425))

(declare-fun m!1151427 () Bool)

(assert (=> b!1250548 m!1151427))

(declare-fun m!1151429 () Bool)

(assert (=> b!1250551 m!1151429))

(declare-fun m!1151431 () Bool)

(assert (=> b!1250551 m!1151431))

(declare-fun m!1151433 () Bool)

(assert (=> b!1250551 m!1151433))

(declare-fun m!1151435 () Bool)

(assert (=> b!1250547 m!1151435))

(declare-fun m!1151437 () Bool)

(assert (=> mapNonEmpty!49189 m!1151437))

(check-sat (not b!1250547) tp_is_empty!31617 (not start!104960) (not b!1250552) (not b!1250554) (not mapNonEmpty!49189) (not b!1250551) (not b_next!26715) b_and!44501 (not b!1250548))
(check-sat b_and!44501 (not b_next!26715))
(get-model)

(declare-fun d!137819 () Bool)

(declare-fun lt!564301 () ListLongMap!18485)

(assert (=> d!137819 (not (contains!7509 lt!564301 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!137 (List!27857 (_ BitVec 64)) List!27857)

(assert (=> d!137819 (= lt!564301 (ListLongMap!18486 (removeStrictlySorted!137 (toList!9258 lt!564282) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137819 (= (-!2023 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564301)))

(declare-fun bs!35300 () Bool)

(assert (= bs!35300 d!137819))

(declare-fun m!1151465 () Bool)

(assert (=> bs!35300 m!1151465))

(declare-fun m!1151467 () Bool)

(assert (=> bs!35300 m!1151467))

(assert (=> b!1250548 d!137819))

(declare-fun d!137821 () Bool)

(assert (=> d!137821 (= (-!2023 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564282)))

(declare-fun lt!564304 () Unit!41493)

(declare-fun choose!1856 (ListLongMap!18485 (_ BitVec 64)) Unit!41493)

(assert (=> d!137821 (= lt!564304 (choose!1856 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137821 (not (contains!7509 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137821 (= (removeNotPresentStillSame!90 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564304)))

(declare-fun bs!35301 () Bool)

(assert (= bs!35301 d!137821))

(assert (=> bs!35301 m!1151425))

(declare-fun m!1151469 () Bool)

(assert (=> bs!35301 m!1151469))

(assert (=> bs!35301 m!1151419))

(assert (=> b!1250548 d!137821))

(declare-fun d!137823 () Bool)

(assert (=> d!137823 (= (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564307 () Unit!41493)

(declare-fun choose!1857 (array!80883 array!80885 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47521 V!47521 V!47521 V!47521 (_ BitVec 32) Int) Unit!41493)

(assert (=> d!137823 (= lt!564307 (choose!1857 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!137823 (validMask!0 mask!1466)))

(assert (=> d!137823 (= (lemmaNoChangeToArrayThenSameMapNoExtras!955 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564307)))

(declare-fun bs!35302 () Bool)

(assert (= bs!35302 d!137823))

(assert (=> bs!35302 m!1151433))

(assert (=> bs!35302 m!1151431))

(declare-fun m!1151471 () Bool)

(assert (=> bs!35302 m!1151471))

(assert (=> bs!35302 m!1151413))

(assert (=> b!1250551 d!137823))

(declare-fun b!1250607 () Bool)

(declare-fun e!710057 () Bool)

(declare-fun e!710055 () Bool)

(assert (=> b!1250607 (= e!710057 e!710055)))

(assert (=> b!1250607 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun res!834259 () Bool)

(declare-fun lt!564327 () ListLongMap!18485)

(assert (=> b!1250607 (= res!834259 (contains!7509 lt!564327 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1250607 (=> (not res!834259) (not e!710055))))

(declare-fun e!710059 () Bool)

(declare-fun b!1250608 () Bool)

(assert (=> b!1250608 (= e!710059 (= lt!564327 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1250609 () Bool)

(declare-fun e!710054 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1250609 (= e!710054 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1250609 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun call!61587 () ListLongMap!18485)

(declare-fun bm!61584 () Bool)

(assert (=> bm!61584 (= call!61587 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1250610 () Bool)

(declare-fun e!710056 () ListLongMap!18485)

(assert (=> b!1250610 (= e!710056 call!61587)))

(declare-fun b!1250611 () Bool)

(declare-fun res!834260 () Bool)

(declare-fun e!710053 () Bool)

(assert (=> b!1250611 (=> (not res!834260) (not e!710053))))

(assert (=> b!1250611 (= res!834260 (not (contains!7509 lt!564327 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1250612 () Bool)

(declare-fun isEmpty!1026 (ListLongMap!18485) Bool)

(assert (=> b!1250612 (= e!710059 (isEmpty!1026 lt!564327))))

(declare-fun b!1250613 () Bool)

(declare-fun e!710058 () ListLongMap!18485)

(assert (=> b!1250613 (= e!710058 (ListLongMap!18486 Nil!27854))))

(declare-fun b!1250614 () Bool)

(assert (=> b!1250614 (= e!710053 e!710057)))

(declare-fun c!122101 () Bool)

(assert (=> b!1250614 (= c!122101 e!710054)))

(declare-fun res!834261 () Bool)

(assert (=> b!1250614 (=> (not res!834261) (not e!710054))))

(assert (=> b!1250614 (= res!834261 (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun d!137825 () Bool)

(assert (=> d!137825 e!710053))

(declare-fun res!834262 () Bool)

(assert (=> d!137825 (=> (not res!834262) (not e!710053))))

(assert (=> d!137825 (= res!834262 (not (contains!7509 lt!564327 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137825 (= lt!564327 e!710058)))

(declare-fun c!122098 () Bool)

(assert (=> d!137825 (= c!122098 (bvsge #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> d!137825 (validMask!0 mask!1466)))

(assert (=> d!137825 (= (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564327)))

(declare-fun b!1250615 () Bool)

(assert (=> b!1250615 (= e!710058 e!710056)))

(declare-fun c!122099 () Bool)

(assert (=> b!1250615 (= c!122099 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1250616 () Bool)

(assert (=> b!1250616 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> b!1250616 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39541 _values!914)))))

(declare-fun apply!1016 (ListLongMap!18485 (_ BitVec 64)) V!47521)

(declare-fun get!20044 (ValueCell!15045 V!47521) V!47521)

(declare-fun dynLambda!3461 (Int (_ BitVec 64)) V!47521)

(assert (=> b!1250616 (= e!710055 (= (apply!1016 lt!564327 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)) (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1250617 () Bool)

(declare-fun lt!564323 () Unit!41493)

(declare-fun lt!564322 () Unit!41493)

(assert (=> b!1250617 (= lt!564323 lt!564322)))

(declare-fun lt!564324 () (_ BitVec 64))

(declare-fun lt!564328 () V!47521)

(declare-fun lt!564325 () ListLongMap!18485)

(declare-fun lt!564326 () (_ BitVec 64))

(declare-fun +!4125 (ListLongMap!18485 tuple2!20600) ListLongMap!18485)

(assert (=> b!1250617 (not (contains!7509 (+!4125 lt!564325 (tuple2!20601 lt!564326 lt!564328)) lt!564324))))

(declare-fun addStillNotContains!311 (ListLongMap!18485 (_ BitVec 64) V!47521 (_ BitVec 64)) Unit!41493)

(assert (=> b!1250617 (= lt!564322 (addStillNotContains!311 lt!564325 lt!564326 lt!564328 lt!564324))))

(assert (=> b!1250617 (= lt!564324 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1250617 (= lt!564328 (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1250617 (= lt!564326 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1250617 (= lt!564325 call!61587)))

(assert (=> b!1250617 (= e!710056 (+!4125 call!61587 (tuple2!20601 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000) (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1250618 () Bool)

(assert (=> b!1250618 (= e!710057 e!710059)))

(declare-fun c!122100 () Bool)

(assert (=> b!1250618 (= c!122100 (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (= (and d!137825 c!122098) b!1250613))

(assert (= (and d!137825 (not c!122098)) b!1250615))

(assert (= (and b!1250615 c!122099) b!1250617))

(assert (= (and b!1250615 (not c!122099)) b!1250610))

(assert (= (or b!1250617 b!1250610) bm!61584))

(assert (= (and d!137825 res!834262) b!1250611))

(assert (= (and b!1250611 res!834260) b!1250614))

(assert (= (and b!1250614 res!834261) b!1250609))

(assert (= (and b!1250614 c!122101) b!1250607))

(assert (= (and b!1250614 (not c!122101)) b!1250618))

(assert (= (and b!1250607 res!834259) b!1250616))

(assert (= (and b!1250618 c!122100) b!1250608))

(assert (= (and b!1250618 (not c!122100)) b!1250612))

(declare-fun b_lambda!22537 () Bool)

(assert (=> (not b_lambda!22537) (not b!1250616)))

(declare-fun t!41339 () Bool)

(declare-fun tb!11297 () Bool)

(assert (=> (and start!104960 (= defaultEntry!922 defaultEntry!922) t!41339) tb!11297))

(declare-fun result!23283 () Bool)

(assert (=> tb!11297 (= result!23283 tp_is_empty!31617)))

(assert (=> b!1250616 t!41339))

(declare-fun b_and!44505 () Bool)

(assert (= b_and!44501 (and (=> t!41339 result!23283) b_and!44505)))

(declare-fun b_lambda!22539 () Bool)

(assert (=> (not b_lambda!22539) (not b!1250617)))

(assert (=> b!1250617 t!41339))

(declare-fun b_and!44507 () Bool)

(assert (= b_and!44505 (and (=> t!41339 result!23283) b_and!44507)))

(declare-fun m!1151473 () Bool)

(assert (=> b!1250608 m!1151473))

(assert (=> bm!61584 m!1151473))

(declare-fun m!1151475 () Bool)

(assert (=> b!1250612 m!1151475))

(declare-fun m!1151477 () Bool)

(assert (=> b!1250611 m!1151477))

(declare-fun m!1151479 () Bool)

(assert (=> b!1250607 m!1151479))

(assert (=> b!1250607 m!1151479))

(declare-fun m!1151481 () Bool)

(assert (=> b!1250607 m!1151481))

(assert (=> b!1250609 m!1151479))

(assert (=> b!1250609 m!1151479))

(declare-fun m!1151483 () Bool)

(assert (=> b!1250609 m!1151483))

(declare-fun m!1151485 () Bool)

(assert (=> b!1250616 m!1151485))

(declare-fun m!1151487 () Bool)

(assert (=> b!1250616 m!1151487))

(assert (=> b!1250616 m!1151479))

(declare-fun m!1151489 () Bool)

(assert (=> b!1250616 m!1151489))

(assert (=> b!1250616 m!1151487))

(assert (=> b!1250616 m!1151485))

(declare-fun m!1151491 () Bool)

(assert (=> b!1250616 m!1151491))

(assert (=> b!1250616 m!1151479))

(assert (=> b!1250615 m!1151479))

(assert (=> b!1250615 m!1151479))

(assert (=> b!1250615 m!1151483))

(declare-fun m!1151493 () Bool)

(assert (=> d!137825 m!1151493))

(assert (=> d!137825 m!1151413))

(assert (=> b!1250617 m!1151485))

(assert (=> b!1250617 m!1151487))

(declare-fun m!1151495 () Bool)

(assert (=> b!1250617 m!1151495))

(assert (=> b!1250617 m!1151495))

(declare-fun m!1151497 () Bool)

(assert (=> b!1250617 m!1151497))

(declare-fun m!1151499 () Bool)

(assert (=> b!1250617 m!1151499))

(declare-fun m!1151501 () Bool)

(assert (=> b!1250617 m!1151501))

(assert (=> b!1250617 m!1151487))

(assert (=> b!1250617 m!1151485))

(assert (=> b!1250617 m!1151491))

(assert (=> b!1250617 m!1151479))

(assert (=> b!1250551 d!137825))

(declare-fun b!1250621 () Bool)

(declare-fun e!710064 () Bool)

(declare-fun e!710062 () Bool)

(assert (=> b!1250621 (= e!710064 e!710062)))

(assert (=> b!1250621 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun res!834263 () Bool)

(declare-fun lt!564334 () ListLongMap!18485)

(assert (=> b!1250621 (= res!834263 (contains!7509 lt!564334 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1250621 (=> (not res!834263) (not e!710062))))

(declare-fun e!710066 () Bool)

(declare-fun b!1250622 () Bool)

(assert (=> b!1250622 (= e!710066 (= lt!564334 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1250623 () Bool)

(declare-fun e!710061 () Bool)

(assert (=> b!1250623 (= e!710061 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1250623 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!61585 () Bool)

(declare-fun call!61588 () ListLongMap!18485)

(assert (=> bm!61585 (= call!61588 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1250624 () Bool)

(declare-fun e!710063 () ListLongMap!18485)

(assert (=> b!1250624 (= e!710063 call!61588)))

(declare-fun b!1250625 () Bool)

(declare-fun res!834264 () Bool)

(declare-fun e!710060 () Bool)

(assert (=> b!1250625 (=> (not res!834264) (not e!710060))))

(assert (=> b!1250625 (= res!834264 (not (contains!7509 lt!564334 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1250626 () Bool)

(assert (=> b!1250626 (= e!710066 (isEmpty!1026 lt!564334))))

(declare-fun b!1250627 () Bool)

(declare-fun e!710065 () ListLongMap!18485)

(assert (=> b!1250627 (= e!710065 (ListLongMap!18486 Nil!27854))))

(declare-fun b!1250628 () Bool)

(assert (=> b!1250628 (= e!710060 e!710064)))

(declare-fun c!122105 () Bool)

(assert (=> b!1250628 (= c!122105 e!710061)))

(declare-fun res!834265 () Bool)

(assert (=> b!1250628 (=> (not res!834265) (not e!710061))))

(assert (=> b!1250628 (= res!834265 (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun d!137827 () Bool)

(assert (=> d!137827 e!710060))

(declare-fun res!834266 () Bool)

(assert (=> d!137827 (=> (not res!834266) (not e!710060))))

(assert (=> d!137827 (= res!834266 (not (contains!7509 lt!564334 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137827 (= lt!564334 e!710065)))

(declare-fun c!122102 () Bool)

(assert (=> d!137827 (= c!122102 (bvsge #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> d!137827 (validMask!0 mask!1466)))

(assert (=> d!137827 (= (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564334)))

(declare-fun b!1250629 () Bool)

(assert (=> b!1250629 (= e!710065 e!710063)))

(declare-fun c!122103 () Bool)

(assert (=> b!1250629 (= c!122103 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1250630 () Bool)

(assert (=> b!1250630 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> b!1250630 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39541 _values!914)))))

(assert (=> b!1250630 (= e!710062 (= (apply!1016 lt!564334 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)) (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1250631 () Bool)

(declare-fun lt!564330 () Unit!41493)

(declare-fun lt!564329 () Unit!41493)

(assert (=> b!1250631 (= lt!564330 lt!564329)))

(declare-fun lt!564332 () ListLongMap!18485)

(declare-fun lt!564331 () (_ BitVec 64))

(declare-fun lt!564333 () (_ BitVec 64))

(declare-fun lt!564335 () V!47521)

(assert (=> b!1250631 (not (contains!7509 (+!4125 lt!564332 (tuple2!20601 lt!564333 lt!564335)) lt!564331))))

(assert (=> b!1250631 (= lt!564329 (addStillNotContains!311 lt!564332 lt!564333 lt!564335 lt!564331))))

(assert (=> b!1250631 (= lt!564331 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1250631 (= lt!564335 (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1250631 (= lt!564333 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1250631 (= lt!564332 call!61588)))

(assert (=> b!1250631 (= e!710063 (+!4125 call!61588 (tuple2!20601 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000) (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1250632 () Bool)

(assert (=> b!1250632 (= e!710064 e!710066)))

(declare-fun c!122104 () Bool)

(assert (=> b!1250632 (= c!122104 (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (= (and d!137827 c!122102) b!1250627))

(assert (= (and d!137827 (not c!122102)) b!1250629))

(assert (= (and b!1250629 c!122103) b!1250631))

(assert (= (and b!1250629 (not c!122103)) b!1250624))

(assert (= (or b!1250631 b!1250624) bm!61585))

(assert (= (and d!137827 res!834266) b!1250625))

(assert (= (and b!1250625 res!834264) b!1250628))

(assert (= (and b!1250628 res!834265) b!1250623))

(assert (= (and b!1250628 c!122105) b!1250621))

(assert (= (and b!1250628 (not c!122105)) b!1250632))

(assert (= (and b!1250621 res!834263) b!1250630))

(assert (= (and b!1250632 c!122104) b!1250622))

(assert (= (and b!1250632 (not c!122104)) b!1250626))

(declare-fun b_lambda!22541 () Bool)

(assert (=> (not b_lambda!22541) (not b!1250630)))

(assert (=> b!1250630 t!41339))

(declare-fun b_and!44509 () Bool)

(assert (= b_and!44507 (and (=> t!41339 result!23283) b_and!44509)))

(declare-fun b_lambda!22543 () Bool)

(assert (=> (not b_lambda!22543) (not b!1250631)))

(assert (=> b!1250631 t!41339))

(declare-fun b_and!44511 () Bool)

(assert (= b_and!44509 (and (=> t!41339 result!23283) b_and!44511)))

(declare-fun m!1151503 () Bool)

(assert (=> b!1250622 m!1151503))

(assert (=> bm!61585 m!1151503))

(declare-fun m!1151505 () Bool)

(assert (=> b!1250626 m!1151505))

(declare-fun m!1151507 () Bool)

(assert (=> b!1250625 m!1151507))

(assert (=> b!1250621 m!1151479))

(assert (=> b!1250621 m!1151479))

(declare-fun m!1151509 () Bool)

(assert (=> b!1250621 m!1151509))

(assert (=> b!1250623 m!1151479))

(assert (=> b!1250623 m!1151479))

(assert (=> b!1250623 m!1151483))

(assert (=> b!1250630 m!1151485))

(assert (=> b!1250630 m!1151487))

(assert (=> b!1250630 m!1151479))

(declare-fun m!1151511 () Bool)

(assert (=> b!1250630 m!1151511))

(assert (=> b!1250630 m!1151487))

(assert (=> b!1250630 m!1151485))

(assert (=> b!1250630 m!1151491))

(assert (=> b!1250630 m!1151479))

(assert (=> b!1250629 m!1151479))

(assert (=> b!1250629 m!1151479))

(assert (=> b!1250629 m!1151483))

(declare-fun m!1151513 () Bool)

(assert (=> d!137827 m!1151513))

(assert (=> d!137827 m!1151413))

(assert (=> b!1250631 m!1151485))

(assert (=> b!1250631 m!1151487))

(declare-fun m!1151515 () Bool)

(assert (=> b!1250631 m!1151515))

(assert (=> b!1250631 m!1151515))

(declare-fun m!1151517 () Bool)

(assert (=> b!1250631 m!1151517))

(declare-fun m!1151519 () Bool)

(assert (=> b!1250631 m!1151519))

(declare-fun m!1151521 () Bool)

(assert (=> b!1250631 m!1151521))

(assert (=> b!1250631 m!1151487))

(assert (=> b!1250631 m!1151485))

(assert (=> b!1250631 m!1151491))

(assert (=> b!1250631 m!1151479))

(assert (=> b!1250551 d!137827))

(declare-fun b!1250643 () Bool)

(declare-fun e!710078 () Bool)

(declare-fun call!61591 () Bool)

(assert (=> b!1250643 (= e!710078 call!61591)))

(declare-fun b!1250644 () Bool)

(assert (=> b!1250644 (= e!710078 call!61591)))

(declare-fun bm!61588 () Bool)

(declare-fun c!122108 () Bool)

(assert (=> bm!61588 (= call!61591 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122108 (Cons!27852 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000) Nil!27853) Nil!27853)))))

(declare-fun b!1250645 () Bool)

(declare-fun e!710077 () Bool)

(assert (=> b!1250645 (= e!710077 e!710078)))

(assert (=> b!1250645 (= c!122108 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137829 () Bool)

(declare-fun res!834273 () Bool)

(declare-fun e!710076 () Bool)

(assert (=> d!137829 (=> res!834273 e!710076)))

(assert (=> d!137829 (= res!834273 (bvsge #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> d!137829 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27853) e!710076)))

(declare-fun b!1250646 () Bool)

(assert (=> b!1250646 (= e!710076 e!710077)))

(declare-fun res!834275 () Bool)

(assert (=> b!1250646 (=> (not res!834275) (not e!710077))))

(declare-fun e!710075 () Bool)

(assert (=> b!1250646 (= res!834275 (not e!710075))))

(declare-fun res!834274 () Bool)

(assert (=> b!1250646 (=> (not res!834274) (not e!710075))))

(assert (=> b!1250646 (= res!834274 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1250647 () Bool)

(declare-fun contains!7510 (List!27856 (_ BitVec 64)) Bool)

(assert (=> b!1250647 (= e!710075 (contains!7510 Nil!27853 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!137829 (not res!834273)) b!1250646))

(assert (= (and b!1250646 res!834274) b!1250647))

(assert (= (and b!1250646 res!834275) b!1250645))

(assert (= (and b!1250645 c!122108) b!1250643))

(assert (= (and b!1250645 (not c!122108)) b!1250644))

(assert (= (or b!1250643 b!1250644) bm!61588))

(assert (=> bm!61588 m!1151479))

(declare-fun m!1151523 () Bool)

(assert (=> bm!61588 m!1151523))

(assert (=> b!1250645 m!1151479))

(assert (=> b!1250645 m!1151479))

(assert (=> b!1250645 m!1151483))

(assert (=> b!1250646 m!1151479))

(assert (=> b!1250646 m!1151479))

(assert (=> b!1250646 m!1151483))

(assert (=> b!1250647 m!1151479))

(assert (=> b!1250647 m!1151479))

(declare-fun m!1151525 () Bool)

(assert (=> b!1250647 m!1151525))

(assert (=> b!1250547 d!137829))

(declare-fun d!137831 () Bool)

(assert (=> d!137831 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104960 d!137831))

(declare-fun d!137833 () Bool)

(assert (=> d!137833 (= (array_inv!29687 _keys!1118) (bvsge (size!39540 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104960 d!137833))

(declare-fun d!137835 () Bool)

(assert (=> d!137835 (= (array_inv!29688 _values!914) (bvsge (size!39541 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104960 d!137835))

(declare-fun b!1250656 () Bool)

(declare-fun e!710087 () Bool)

(declare-fun e!710086 () Bool)

(assert (=> b!1250656 (= e!710087 e!710086)))

(declare-fun c!122111 () Bool)

(assert (=> b!1250656 (= c!122111 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1250657 () Bool)

(declare-fun e!710085 () Bool)

(declare-fun call!61594 () Bool)

(assert (=> b!1250657 (= e!710085 call!61594)))

(declare-fun bm!61591 () Bool)

(assert (=> bm!61591 (= call!61594 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1250658 () Bool)

(assert (=> b!1250658 (= e!710086 call!61594)))

(declare-fun b!1250659 () Bool)

(assert (=> b!1250659 (= e!710086 e!710085)))

(declare-fun lt!564343 () (_ BitVec 64))

(assert (=> b!1250659 (= lt!564343 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564344 () Unit!41493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80883 (_ BitVec 64) (_ BitVec 32)) Unit!41493)

(assert (=> b!1250659 (= lt!564344 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!564343 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1250659 (arrayContainsKey!0 _keys!1118 lt!564343 #b00000000000000000000000000000000)))

(declare-fun lt!564342 () Unit!41493)

(assert (=> b!1250659 (= lt!564342 lt!564344)))

(declare-fun res!834280 () Bool)

(declare-datatypes ((SeekEntryResult!9956 0))(
  ( (MissingZero!9956 (index!42194 (_ BitVec 32))) (Found!9956 (index!42195 (_ BitVec 32))) (Intermediate!9956 (undefined!10768 Bool) (index!42196 (_ BitVec 32)) (x!110021 (_ BitVec 32))) (Undefined!9956) (MissingVacant!9956 (index!42197 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80883 (_ BitVec 32)) SeekEntryResult!9956)

(assert (=> b!1250659 (= res!834280 (= (seekEntryOrOpen!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9956 #b00000000000000000000000000000000)))))

(assert (=> b!1250659 (=> (not res!834280) (not e!710085))))

(declare-fun d!137837 () Bool)

(declare-fun res!834281 () Bool)

(assert (=> d!137837 (=> res!834281 e!710087)))

(assert (=> d!137837 (= res!834281 (bvsge #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> d!137837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!710087)))

(assert (= (and d!137837 (not res!834281)) b!1250656))

(assert (= (and b!1250656 c!122111) b!1250659))

(assert (= (and b!1250656 (not c!122111)) b!1250658))

(assert (= (and b!1250659 res!834280) b!1250657))

(assert (= (or b!1250657 b!1250658) bm!61591))

(assert (=> b!1250656 m!1151479))

(assert (=> b!1250656 m!1151479))

(assert (=> b!1250656 m!1151483))

(declare-fun m!1151527 () Bool)

(assert (=> bm!61591 m!1151527))

(assert (=> b!1250659 m!1151479))

(declare-fun m!1151529 () Bool)

(assert (=> b!1250659 m!1151529))

(declare-fun m!1151531 () Bool)

(assert (=> b!1250659 m!1151531))

(assert (=> b!1250659 m!1151479))

(declare-fun m!1151533 () Bool)

(assert (=> b!1250659 m!1151533))

(assert (=> b!1250554 d!137837))

(declare-fun d!137839 () Bool)

(declare-fun e!710093 () Bool)

(assert (=> d!137839 e!710093))

(declare-fun res!834284 () Bool)

(assert (=> d!137839 (=> res!834284 e!710093)))

(declare-fun lt!564353 () Bool)

(assert (=> d!137839 (= res!834284 (not lt!564353))))

(declare-fun lt!564355 () Bool)

(assert (=> d!137839 (= lt!564353 lt!564355)))

(declare-fun lt!564356 () Unit!41493)

(declare-fun e!710092 () Unit!41493)

(assert (=> d!137839 (= lt!564356 e!710092)))

(declare-fun c!122114 () Bool)

(assert (=> d!137839 (= c!122114 lt!564355)))

(declare-fun containsKey!617 (List!27857 (_ BitVec 64)) Bool)

(assert (=> d!137839 (= lt!564355 (containsKey!617 (toList!9258 lt!564282) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137839 (= (contains!7509 lt!564282 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564353)))

(declare-fun b!1250666 () Bool)

(declare-fun lt!564354 () Unit!41493)

(assert (=> b!1250666 (= e!710092 lt!564354)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!427 (List!27857 (_ BitVec 64)) Unit!41493)

(assert (=> b!1250666 (= lt!564354 (lemmaContainsKeyImpliesGetValueByKeyDefined!427 (toList!9258 lt!564282) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!706 0))(
  ( (Some!705 (v!18569 V!47521)) (None!704) )
))
(declare-fun isDefined!467 (Option!706) Bool)

(declare-fun getValueByKey!655 (List!27857 (_ BitVec 64)) Option!706)

(assert (=> b!1250666 (isDefined!467 (getValueByKey!655 (toList!9258 lt!564282) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250667 () Bool)

(declare-fun Unit!41495 () Unit!41493)

(assert (=> b!1250667 (= e!710092 Unit!41495)))

(declare-fun b!1250668 () Bool)

(assert (=> b!1250668 (= e!710093 (isDefined!467 (getValueByKey!655 (toList!9258 lt!564282) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!137839 c!122114) b!1250666))

(assert (= (and d!137839 (not c!122114)) b!1250667))

(assert (= (and d!137839 (not res!834284)) b!1250668))

(declare-fun m!1151535 () Bool)

(assert (=> d!137839 m!1151535))

(declare-fun m!1151537 () Bool)

(assert (=> b!1250666 m!1151537))

(declare-fun m!1151539 () Bool)

(assert (=> b!1250666 m!1151539))

(assert (=> b!1250666 m!1151539))

(declare-fun m!1151541 () Bool)

(assert (=> b!1250666 m!1151541))

(assert (=> b!1250668 m!1151539))

(assert (=> b!1250668 m!1151539))

(assert (=> b!1250668 m!1151541))

(assert (=> b!1250552 d!137839))

(declare-fun lt!564407 () ListLongMap!18485)

(declare-fun b!1250711 () Bool)

(declare-fun e!710130 () Bool)

(assert (=> b!1250711 (= e!710130 (= (apply!1016 lt!564407 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)) (get!20044 (select (arr!39004 _values!914) #b00000000000000000000000000000000) (dynLambda!3461 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1250711 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39541 _values!914)))))

(assert (=> b!1250711 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun bm!61606 () Bool)

(declare-fun call!61610 () Bool)

(assert (=> bm!61606 (= call!61610 (contains!7509 lt!564407 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250712 () Bool)

(declare-fun e!710128 () ListLongMap!18485)

(declare-fun call!61612 () ListLongMap!18485)

(assert (=> b!1250712 (= e!710128 (+!4125 call!61612 (tuple2!20601 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!61607 () Bool)

(declare-fun call!61614 () ListLongMap!18485)

(assert (=> bm!61607 (= call!61614 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250713 () Bool)

(declare-fun e!710127 () Bool)

(assert (=> b!1250713 (= e!710127 (= (apply!1016 lt!564407 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1250714 () Bool)

(declare-fun e!710126 () Bool)

(declare-fun e!710129 () Bool)

(assert (=> b!1250714 (= e!710126 e!710129)))

(declare-fun c!122132 () Bool)

(assert (=> b!1250714 (= c!122132 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250715 () Bool)

(declare-fun res!834307 () Bool)

(assert (=> b!1250715 (=> (not res!834307) (not e!710126))))

(declare-fun e!710120 () Bool)

(assert (=> b!1250715 (= res!834307 e!710120)))

(declare-fun c!122129 () Bool)

(assert (=> b!1250715 (= c!122129 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1250716 () Bool)

(declare-fun e!710132 () Unit!41493)

(declare-fun lt!564401 () Unit!41493)

(assert (=> b!1250716 (= e!710132 lt!564401)))

(declare-fun lt!564410 () ListLongMap!18485)

(assert (=> b!1250716 (= lt!564410 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564416 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564416 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564406 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564406 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564422 () Unit!41493)

(declare-fun addStillContains!1091 (ListLongMap!18485 (_ BitVec 64) V!47521 (_ BitVec 64)) Unit!41493)

(assert (=> b!1250716 (= lt!564422 (addStillContains!1091 lt!564410 lt!564416 zeroValue!871 lt!564406))))

(assert (=> b!1250716 (contains!7509 (+!4125 lt!564410 (tuple2!20601 lt!564416 zeroValue!871)) lt!564406)))

(declare-fun lt!564412 () Unit!41493)

(assert (=> b!1250716 (= lt!564412 lt!564422)))

(declare-fun lt!564419 () ListLongMap!18485)

(assert (=> b!1250716 (= lt!564419 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564414 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564414 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564402 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564402 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564409 () Unit!41493)

(declare-fun addApplyDifferent!525 (ListLongMap!18485 (_ BitVec 64) V!47521 (_ BitVec 64)) Unit!41493)

(assert (=> b!1250716 (= lt!564409 (addApplyDifferent!525 lt!564419 lt!564414 minValueBefore!43 lt!564402))))

(assert (=> b!1250716 (= (apply!1016 (+!4125 lt!564419 (tuple2!20601 lt!564414 minValueBefore!43)) lt!564402) (apply!1016 lt!564419 lt!564402))))

(declare-fun lt!564415 () Unit!41493)

(assert (=> b!1250716 (= lt!564415 lt!564409)))

(declare-fun lt!564420 () ListLongMap!18485)

(assert (=> b!1250716 (= lt!564420 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564405 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564405 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564413 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564413 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564403 () Unit!41493)

(assert (=> b!1250716 (= lt!564403 (addApplyDifferent!525 lt!564420 lt!564405 zeroValue!871 lt!564413))))

(assert (=> b!1250716 (= (apply!1016 (+!4125 lt!564420 (tuple2!20601 lt!564405 zeroValue!871)) lt!564413) (apply!1016 lt!564420 lt!564413))))

(declare-fun lt!564421 () Unit!41493)

(assert (=> b!1250716 (= lt!564421 lt!564403)))

(declare-fun lt!564417 () ListLongMap!18485)

(assert (=> b!1250716 (= lt!564417 (getCurrentListMapNoExtraKeys!5637 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564411 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564411 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564404 () (_ BitVec 64))

(assert (=> b!1250716 (= lt!564404 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1250716 (= lt!564401 (addApplyDifferent!525 lt!564417 lt!564411 minValueBefore!43 lt!564404))))

(assert (=> b!1250716 (= (apply!1016 (+!4125 lt!564417 (tuple2!20601 lt!564411 minValueBefore!43)) lt!564404) (apply!1016 lt!564417 lt!564404))))

(declare-fun b!1250717 () Bool)

(declare-fun e!710131 () ListLongMap!18485)

(declare-fun call!61613 () ListLongMap!18485)

(assert (=> b!1250717 (= e!710131 call!61613)))

(declare-fun bm!61609 () Bool)

(assert (=> bm!61609 (= call!61613 call!61612)))

(declare-fun c!122130 () Bool)

(declare-fun call!61611 () ListLongMap!18485)

(declare-fun bm!61610 () Bool)

(declare-fun c!122131 () Bool)

(declare-fun call!61615 () ListLongMap!18485)

(assert (=> bm!61610 (= call!61612 (+!4125 (ite c!122130 call!61614 (ite c!122131 call!61611 call!61615)) (ite (or c!122130 c!122131) (tuple2!20601 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20601 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1250718 () Bool)

(declare-fun e!710121 () Bool)

(assert (=> b!1250718 (= e!710121 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1250719 () Bool)

(assert (=> b!1250719 (= e!710129 (not call!61610))))

(declare-fun b!1250720 () Bool)

(declare-fun e!710125 () ListLongMap!18485)

(assert (=> b!1250720 (= e!710125 call!61613)))

(declare-fun b!1250721 () Bool)

(declare-fun res!834310 () Bool)

(assert (=> b!1250721 (=> (not res!834310) (not e!710126))))

(declare-fun e!710122 () Bool)

(assert (=> b!1250721 (= res!834310 e!710122)))

(declare-fun res!834304 () Bool)

(assert (=> b!1250721 (=> res!834304 e!710122)))

(assert (=> b!1250721 (= res!834304 (not e!710121))))

(declare-fun res!834311 () Bool)

(assert (=> b!1250721 (=> (not res!834311) (not e!710121))))

(assert (=> b!1250721 (= res!834311 (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun bm!61611 () Bool)

(assert (=> bm!61611 (= call!61615 call!61611)))

(declare-fun b!1250722 () Bool)

(declare-fun call!61609 () Bool)

(assert (=> b!1250722 (= e!710120 (not call!61609))))

(declare-fun b!1250723 () Bool)

(declare-fun Unit!41496 () Unit!41493)

(assert (=> b!1250723 (= e!710132 Unit!41496)))

(declare-fun b!1250724 () Bool)

(declare-fun e!710124 () Bool)

(assert (=> b!1250724 (= e!710124 (= (apply!1016 lt!564407 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1250725 () Bool)

(assert (=> b!1250725 (= e!710128 e!710125)))

(assert (=> b!1250725 (= c!122131 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250726 () Bool)

(assert (=> b!1250726 (= e!710129 e!710124)))

(declare-fun res!834306 () Bool)

(assert (=> b!1250726 (= res!834306 call!61610)))

(assert (=> b!1250726 (=> (not res!834306) (not e!710124))))

(declare-fun b!1250727 () Bool)

(declare-fun c!122128 () Bool)

(assert (=> b!1250727 (= c!122128 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1250727 (= e!710125 e!710131)))

(declare-fun b!1250728 () Bool)

(assert (=> b!1250728 (= e!710120 e!710127)))

(declare-fun res!834309 () Bool)

(assert (=> b!1250728 (= res!834309 call!61609)))

(assert (=> b!1250728 (=> (not res!834309) (not e!710127))))

(declare-fun b!1250729 () Bool)

(assert (=> b!1250729 (= e!710131 call!61615)))

(declare-fun b!1250730 () Bool)

(assert (=> b!1250730 (= e!710122 e!710130)))

(declare-fun res!834305 () Bool)

(assert (=> b!1250730 (=> (not res!834305) (not e!710130))))

(assert (=> b!1250730 (= res!834305 (contains!7509 lt!564407 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1250730 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(declare-fun bm!61608 () Bool)

(assert (=> bm!61608 (= call!61611 call!61614)))

(declare-fun d!137841 () Bool)

(assert (=> d!137841 e!710126))

(declare-fun res!834303 () Bool)

(assert (=> d!137841 (=> (not res!834303) (not e!710126))))

(assert (=> d!137841 (= res!834303 (or (bvsge #b00000000000000000000000000000000 (size!39540 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))))

(declare-fun lt!564408 () ListLongMap!18485)

(assert (=> d!137841 (= lt!564407 lt!564408)))

(declare-fun lt!564418 () Unit!41493)

(assert (=> d!137841 (= lt!564418 e!710132)))

(declare-fun c!122127 () Bool)

(declare-fun e!710123 () Bool)

(assert (=> d!137841 (= c!122127 e!710123)))

(declare-fun res!834308 () Bool)

(assert (=> d!137841 (=> (not res!834308) (not e!710123))))

(assert (=> d!137841 (= res!834308 (bvslt #b00000000000000000000000000000000 (size!39540 _keys!1118)))))

(assert (=> d!137841 (= lt!564408 e!710128)))

(assert (=> d!137841 (= c!122130 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!137841 (validMask!0 mask!1466)))

(assert (=> d!137841 (= (getCurrentListMap!4475 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564407)))

(declare-fun bm!61612 () Bool)

(assert (=> bm!61612 (= call!61609 (contains!7509 lt!564407 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250731 () Bool)

(assert (=> b!1250731 (= e!710123 (validKeyInArray!0 (select (arr!39003 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!137841 c!122130) b!1250712))

(assert (= (and d!137841 (not c!122130)) b!1250725))

(assert (= (and b!1250725 c!122131) b!1250720))

(assert (= (and b!1250725 (not c!122131)) b!1250727))

(assert (= (and b!1250727 c!122128) b!1250717))

(assert (= (and b!1250727 (not c!122128)) b!1250729))

(assert (= (or b!1250717 b!1250729) bm!61611))

(assert (= (or b!1250720 bm!61611) bm!61608))

(assert (= (or b!1250720 b!1250717) bm!61609))

(assert (= (or b!1250712 bm!61608) bm!61607))

(assert (= (or b!1250712 bm!61609) bm!61610))

(assert (= (and d!137841 res!834308) b!1250731))

(assert (= (and d!137841 c!122127) b!1250716))

(assert (= (and d!137841 (not c!122127)) b!1250723))

(assert (= (and d!137841 res!834303) b!1250721))

(assert (= (and b!1250721 res!834311) b!1250718))

(assert (= (and b!1250721 (not res!834304)) b!1250730))

(assert (= (and b!1250730 res!834305) b!1250711))

(assert (= (and b!1250721 res!834310) b!1250715))

(assert (= (and b!1250715 c!122129) b!1250728))

(assert (= (and b!1250715 (not c!122129)) b!1250722))

(assert (= (and b!1250728 res!834309) b!1250713))

(assert (= (or b!1250728 b!1250722) bm!61612))

(assert (= (and b!1250715 res!834307) b!1250714))

(assert (= (and b!1250714 c!122132) b!1250726))

(assert (= (and b!1250714 (not c!122132)) b!1250719))

(assert (= (and b!1250726 res!834306) b!1250724))

(assert (= (or b!1250726 b!1250719) bm!61606))

(declare-fun b_lambda!22545 () Bool)

(assert (=> (not b_lambda!22545) (not b!1250711)))

(assert (=> b!1250711 t!41339))

(declare-fun b_and!44513 () Bool)

(assert (= b_and!44511 (and (=> t!41339 result!23283) b_and!44513)))

(assert (=> d!137841 m!1151413))

(declare-fun m!1151543 () Bool)

(assert (=> bm!61612 m!1151543))

(declare-fun m!1151545 () Bool)

(assert (=> b!1250713 m!1151545))

(assert (=> b!1250731 m!1151479))

(assert (=> b!1250731 m!1151479))

(assert (=> b!1250731 m!1151483))

(declare-fun m!1151547 () Bool)

(assert (=> bm!61606 m!1151547))

(declare-fun m!1151549 () Bool)

(assert (=> b!1250712 m!1151549))

(assert (=> b!1250730 m!1151479))

(assert (=> b!1250730 m!1151479))

(declare-fun m!1151551 () Bool)

(assert (=> b!1250730 m!1151551))

(assert (=> bm!61607 m!1151433))

(assert (=> b!1250718 m!1151479))

(assert (=> b!1250718 m!1151479))

(assert (=> b!1250718 m!1151483))

(declare-fun m!1151553 () Bool)

(assert (=> bm!61610 m!1151553))

(assert (=> b!1250711 m!1151487))

(assert (=> b!1250711 m!1151485))

(assert (=> b!1250711 m!1151479))

(declare-fun m!1151555 () Bool)

(assert (=> b!1250711 m!1151555))

(assert (=> b!1250711 m!1151479))

(assert (=> b!1250711 m!1151487))

(assert (=> b!1250711 m!1151485))

(assert (=> b!1250711 m!1151491))

(declare-fun m!1151557 () Bool)

(assert (=> b!1250716 m!1151557))

(declare-fun m!1151559 () Bool)

(assert (=> b!1250716 m!1151559))

(declare-fun m!1151561 () Bool)

(assert (=> b!1250716 m!1151561))

(assert (=> b!1250716 m!1151433))

(assert (=> b!1250716 m!1151559))

(declare-fun m!1151563 () Bool)

(assert (=> b!1250716 m!1151563))

(declare-fun m!1151565 () Bool)

(assert (=> b!1250716 m!1151565))

(assert (=> b!1250716 m!1151565))

(declare-fun m!1151567 () Bool)

(assert (=> b!1250716 m!1151567))

(declare-fun m!1151569 () Bool)

(assert (=> b!1250716 m!1151569))

(assert (=> b!1250716 m!1151479))

(declare-fun m!1151571 () Bool)

(assert (=> b!1250716 m!1151571))

(declare-fun m!1151573 () Bool)

(assert (=> b!1250716 m!1151573))

(declare-fun m!1151575 () Bool)

(assert (=> b!1250716 m!1151575))

(declare-fun m!1151577 () Bool)

(assert (=> b!1250716 m!1151577))

(declare-fun m!1151579 () Bool)

(assert (=> b!1250716 m!1151579))

(declare-fun m!1151581 () Bool)

(assert (=> b!1250716 m!1151581))

(assert (=> b!1250716 m!1151569))

(declare-fun m!1151583 () Bool)

(assert (=> b!1250716 m!1151583))

(assert (=> b!1250716 m!1151577))

(declare-fun m!1151585 () Bool)

(assert (=> b!1250716 m!1151585))

(declare-fun m!1151587 () Bool)

(assert (=> b!1250724 m!1151587))

(assert (=> b!1250552 d!137841))

(declare-fun mapIsEmpty!49195 () Bool)

(declare-fun mapRes!49195 () Bool)

(assert (=> mapIsEmpty!49195 mapRes!49195))

(declare-fun b!1250738 () Bool)

(declare-fun e!710137 () Bool)

(assert (=> b!1250738 (= e!710137 tp_is_empty!31617)))

(declare-fun mapNonEmpty!49195 () Bool)

(declare-fun tp!93648 () Bool)

(assert (=> mapNonEmpty!49195 (= mapRes!49195 (and tp!93648 e!710137))))

(declare-fun mapKey!49195 () (_ BitVec 32))

(declare-fun mapValue!49195 () ValueCell!15045)

(declare-fun mapRest!49195 () (Array (_ BitVec 32) ValueCell!15045))

(assert (=> mapNonEmpty!49195 (= mapRest!49189 (store mapRest!49195 mapKey!49195 mapValue!49195))))

(declare-fun b!1250739 () Bool)

(declare-fun e!710138 () Bool)

(assert (=> b!1250739 (= e!710138 tp_is_empty!31617)))

(declare-fun condMapEmpty!49195 () Bool)

(declare-fun mapDefault!49195 () ValueCell!15045)

(assert (=> mapNonEmpty!49189 (= condMapEmpty!49195 (= mapRest!49189 ((as const (Array (_ BitVec 32) ValueCell!15045)) mapDefault!49195)))))

(assert (=> mapNonEmpty!49189 (= tp!93639 (and e!710138 mapRes!49195))))

(assert (= (and mapNonEmpty!49189 condMapEmpty!49195) mapIsEmpty!49195))

(assert (= (and mapNonEmpty!49189 (not condMapEmpty!49195)) mapNonEmpty!49195))

(assert (= (and mapNonEmpty!49195 ((_ is ValueCellFull!15045) mapValue!49195)) b!1250738))

(assert (= (and mapNonEmpty!49189 ((_ is ValueCellFull!15045) mapDefault!49195)) b!1250739))

(declare-fun m!1151589 () Bool)

(assert (=> mapNonEmpty!49195 m!1151589))

(declare-fun b_lambda!22547 () Bool)

(assert (= b_lambda!22543 (or (and start!104960 b_free!26715) b_lambda!22547)))

(declare-fun b_lambda!22549 () Bool)

(assert (= b_lambda!22539 (or (and start!104960 b_free!26715) b_lambda!22549)))

(declare-fun b_lambda!22551 () Bool)

(assert (= b_lambda!22541 (or (and start!104960 b_free!26715) b_lambda!22551)))

(declare-fun b_lambda!22553 () Bool)

(assert (= b_lambda!22545 (or (and start!104960 b_free!26715) b_lambda!22553)))

(declare-fun b_lambda!22555 () Bool)

(assert (= b_lambda!22537 (or (and start!104960 b_free!26715) b_lambda!22555)))

(check-sat (not b!1250711) (not b!1250668) (not b!1250623) (not b!1250608) (not b!1250629) (not bm!61588) (not b!1250621) (not b_lambda!22547) b_and!44513 (not bm!61585) (not b_lambda!22553) (not mapNonEmpty!49195) (not d!137827) (not b!1250622) (not b_lambda!22549) (not b!1250625) (not bm!61606) (not b!1250611) (not b!1250617) (not b!1250645) (not b!1250631) (not d!137821) (not b_lambda!22551) (not b_lambda!22555) (not b_next!26715) (not d!137825) tp_is_empty!31617 (not b!1250607) (not bm!61584) (not b!1250630) (not bm!61607) (not b!1250646) (not b!1250615) (not b!1250712) (not d!137823) (not b!1250609) (not b!1250626) (not d!137841) (not b!1250731) (not b!1250730) (not b!1250612) (not b!1250656) (not b!1250718) (not b!1250647) (not b!1250716) (not b!1250659) (not bm!61610) (not d!137819) (not b!1250666) (not d!137839) (not bm!61612) (not bm!61591) (not b!1250616) (not b!1250713) (not b!1250724))
(check-sat b_and!44513 (not b_next!26715))

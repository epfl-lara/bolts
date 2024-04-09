; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104754 () Bool)

(assert start!104754)

(declare-fun b_free!26535 () Bool)

(declare-fun b_next!26535 () Bool)

(assert (=> start!104754 (= b_free!26535 (not b_next!26535))))

(declare-fun tp!93093 () Bool)

(declare-fun b_and!44309 () Bool)

(assert (=> start!104754 (= tp!93093 b_and!44309)))

(declare-fun b!1248336 () Bool)

(declare-fun res!832927 () Bool)

(declare-fun e!708395 () Bool)

(assert (=> b!1248336 (=> (not res!832927) (not e!708395))))

(declare-datatypes ((array!80541 0))(
  ( (array!80542 (arr!38834 (Array (_ BitVec 32) (_ BitVec 64))) (size!39371 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80541)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80541 (_ BitVec 32)) Bool)

(assert (=> b!1248336 (= res!832927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48913 () Bool)

(declare-fun mapRes!48913 () Bool)

(declare-fun tp!93092 () Bool)

(declare-fun e!708396 () Bool)

(assert (=> mapNonEmpty!48913 (= mapRes!48913 (and tp!93092 e!708396))))

(declare-fun mapKey!48913 () (_ BitVec 32))

(declare-datatypes ((V!47281 0))(
  ( (V!47282 (val!15781 Int)) )
))
(declare-datatypes ((ValueCell!14955 0))(
  ( (ValueCellFull!14955 (v!18477 V!47281)) (EmptyCell!14955) )
))
(declare-fun mapRest!48913 () (Array (_ BitVec 32) ValueCell!14955))

(declare-datatypes ((array!80543 0))(
  ( (array!80544 (arr!38835 (Array (_ BitVec 32) ValueCell!14955)) (size!39372 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80543)

(declare-fun mapValue!48913 () ValueCell!14955)

(assert (=> mapNonEmpty!48913 (= (arr!38835 _values!914) (store mapRest!48913 mapKey!48913 mapValue!48913))))

(declare-fun res!832929 () Bool)

(assert (=> start!104754 (=> (not res!832929) (not e!708395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104754 (= res!832929 (validMask!0 mask!1466))))

(assert (=> start!104754 e!708395))

(assert (=> start!104754 true))

(assert (=> start!104754 tp!93093))

(declare-fun tp_is_empty!31437 () Bool)

(assert (=> start!104754 tp_is_empty!31437))

(declare-fun array_inv!29567 (array!80541) Bool)

(assert (=> start!104754 (array_inv!29567 _keys!1118)))

(declare-fun e!708398 () Bool)

(declare-fun array_inv!29568 (array!80543) Bool)

(assert (=> start!104754 (and (array_inv!29568 _values!914) e!708398)))

(declare-fun b!1248337 () Bool)

(assert (=> b!1248337 (= e!708395 (bvsgt #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((tuple2!20482 0))(
  ( (tuple2!20483 (_1!10251 (_ BitVec 64)) (_2!10251 V!47281)) )
))
(declare-datatypes ((List!27741 0))(
  ( (Nil!27738) (Cons!27737 (h!28946 tuple2!20482) (t!41217 List!27741)) )
))
(declare-datatypes ((ListLongMap!18367 0))(
  ( (ListLongMap!18368 (toList!9199 List!27741)) )
))
(declare-fun lt!563343 () ListLongMap!18367)

(declare-fun zeroValue!871 () V!47281)

(declare-fun minValueBefore!43 () V!47281)

(declare-fun getCurrentListMapNoExtraKeys!5582 (array!80541 array!80543 (_ BitVec 32) (_ BitVec 32) V!47281 V!47281 (_ BitVec 32) Int) ListLongMap!18367)

(assert (=> b!1248337 (= lt!563343 (getCurrentListMapNoExtraKeys!5582 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1248338 () Bool)

(declare-fun e!708399 () Bool)

(assert (=> b!1248338 (= e!708398 (and e!708399 mapRes!48913))))

(declare-fun condMapEmpty!48913 () Bool)

(declare-fun mapDefault!48913 () ValueCell!14955)

(assert (=> b!1248338 (= condMapEmpty!48913 (= (arr!38835 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14955)) mapDefault!48913)))))

(declare-fun b!1248339 () Bool)

(declare-fun res!832928 () Bool)

(assert (=> b!1248339 (=> (not res!832928) (not e!708395))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248339 (= res!832928 (and (= (size!39372 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39371 _keys!1118) (size!39372 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48913 () Bool)

(assert (=> mapIsEmpty!48913 mapRes!48913))

(declare-fun b!1248340 () Bool)

(declare-fun res!832926 () Bool)

(assert (=> b!1248340 (=> (not res!832926) (not e!708395))))

(declare-datatypes ((List!27742 0))(
  ( (Nil!27739) (Cons!27738 (h!28947 (_ BitVec 64)) (t!41218 List!27742)) )
))
(declare-fun arrayNoDuplicates!0 (array!80541 (_ BitVec 32) List!27742) Bool)

(assert (=> b!1248340 (= res!832926 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27739))))

(declare-fun b!1248341 () Bool)

(assert (=> b!1248341 (= e!708399 tp_is_empty!31437)))

(declare-fun b!1248342 () Bool)

(assert (=> b!1248342 (= e!708396 tp_is_empty!31437)))

(assert (= (and start!104754 res!832929) b!1248339))

(assert (= (and b!1248339 res!832928) b!1248336))

(assert (= (and b!1248336 res!832927) b!1248340))

(assert (= (and b!1248340 res!832926) b!1248337))

(assert (= (and b!1248338 condMapEmpty!48913) mapIsEmpty!48913))

(assert (= (and b!1248338 (not condMapEmpty!48913)) mapNonEmpty!48913))

(get-info :version)

(assert (= (and mapNonEmpty!48913 ((_ is ValueCellFull!14955) mapValue!48913)) b!1248342))

(assert (= (and b!1248338 ((_ is ValueCellFull!14955) mapDefault!48913)) b!1248341))

(assert (= start!104754 b!1248338))

(declare-fun m!1149545 () Bool)

(assert (=> mapNonEmpty!48913 m!1149545))

(declare-fun m!1149547 () Bool)

(assert (=> b!1248337 m!1149547))

(declare-fun m!1149549 () Bool)

(assert (=> b!1248340 m!1149549))

(declare-fun m!1149551 () Bool)

(assert (=> start!104754 m!1149551))

(declare-fun m!1149553 () Bool)

(assert (=> start!104754 m!1149553))

(declare-fun m!1149555 () Bool)

(assert (=> start!104754 m!1149555))

(declare-fun m!1149557 () Bool)

(assert (=> b!1248336 m!1149557))

(check-sat (not b!1248340) (not mapNonEmpty!48913) b_and!44309 (not b_next!26535) (not start!104754) (not b!1248337) (not b!1248336) tp_is_empty!31437)
(check-sat b_and!44309 (not b_next!26535))
(get-model)

(declare-fun d!137731 () Bool)

(assert (=> d!137731 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104754 d!137731))

(declare-fun d!137733 () Bool)

(assert (=> d!137733 (= (array_inv!29567 _keys!1118) (bvsge (size!39371 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104754 d!137733))

(declare-fun d!137735 () Bool)

(assert (=> d!137735 (= (array_inv!29568 _values!914) (bvsge (size!39372 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104754 d!137735))

(declare-fun bm!61565 () Bool)

(declare-fun call!61568 () Bool)

(assert (=> bm!61565 (= call!61568 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1248372 () Bool)

(declare-fun e!708422 () Bool)

(declare-fun e!708421 () Bool)

(assert (=> b!1248372 (= e!708422 e!708421)))

(declare-fun lt!563354 () (_ BitVec 64))

(assert (=> b!1248372 (= lt!563354 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41417 0))(
  ( (Unit!41418) )
))
(declare-fun lt!563353 () Unit!41417)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80541 (_ BitVec 64) (_ BitVec 32)) Unit!41417)

(assert (=> b!1248372 (= lt!563353 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563354 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1248372 (arrayContainsKey!0 _keys!1118 lt!563354 #b00000000000000000000000000000000)))

(declare-fun lt!563355 () Unit!41417)

(assert (=> b!1248372 (= lt!563355 lt!563353)))

(declare-fun res!832947 () Bool)

(declare-datatypes ((SeekEntryResult!9954 0))(
  ( (MissingZero!9954 (index!42186 (_ BitVec 32))) (Found!9954 (index!42187 (_ BitVec 32))) (Intermediate!9954 (undefined!10766 Bool) (index!42188 (_ BitVec 32)) (x!109757 (_ BitVec 32))) (Undefined!9954) (MissingVacant!9954 (index!42189 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80541 (_ BitVec 32)) SeekEntryResult!9954)

(assert (=> b!1248372 (= res!832947 (= (seekEntryOrOpen!0 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9954 #b00000000000000000000000000000000)))))

(assert (=> b!1248372 (=> (not res!832947) (not e!708421))))

(declare-fun b!1248373 () Bool)

(declare-fun e!708423 () Bool)

(assert (=> b!1248373 (= e!708423 e!708422)))

(declare-fun c!122052 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1248373 (= c!122052 (validKeyInArray!0 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1248374 () Bool)

(assert (=> b!1248374 (= e!708422 call!61568)))

(declare-fun d!137737 () Bool)

(declare-fun res!832946 () Bool)

(assert (=> d!137737 (=> res!832946 e!708423)))

(assert (=> d!137737 (= res!832946 (bvsge #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(assert (=> d!137737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!708423)))

(declare-fun b!1248375 () Bool)

(assert (=> b!1248375 (= e!708421 call!61568)))

(assert (= (and d!137737 (not res!832946)) b!1248373))

(assert (= (and b!1248373 c!122052) b!1248372))

(assert (= (and b!1248373 (not c!122052)) b!1248374))

(assert (= (and b!1248372 res!832947) b!1248375))

(assert (= (or b!1248375 b!1248374) bm!61565))

(declare-fun m!1149573 () Bool)

(assert (=> bm!61565 m!1149573))

(declare-fun m!1149575 () Bool)

(assert (=> b!1248372 m!1149575))

(declare-fun m!1149577 () Bool)

(assert (=> b!1248372 m!1149577))

(declare-fun m!1149579 () Bool)

(assert (=> b!1248372 m!1149579))

(assert (=> b!1248372 m!1149575))

(declare-fun m!1149581 () Bool)

(assert (=> b!1248372 m!1149581))

(assert (=> b!1248373 m!1149575))

(assert (=> b!1248373 m!1149575))

(declare-fun m!1149583 () Bool)

(assert (=> b!1248373 m!1149583))

(assert (=> b!1248336 d!137737))

(declare-fun b!1248386 () Bool)

(declare-fun e!708433 () Bool)

(declare-fun call!61571 () Bool)

(assert (=> b!1248386 (= e!708433 call!61571)))

(declare-fun b!1248387 () Bool)

(declare-fun e!708435 () Bool)

(assert (=> b!1248387 (= e!708435 e!708433)))

(declare-fun c!122055 () Bool)

(assert (=> b!1248387 (= c!122055 (validKeyInArray!0 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1248388 () Bool)

(declare-fun e!708432 () Bool)

(declare-fun contains!7486 (List!27742 (_ BitVec 64)) Bool)

(assert (=> b!1248388 (= e!708432 (contains!7486 Nil!27739 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1248389 () Bool)

(assert (=> b!1248389 (= e!708433 call!61571)))

(declare-fun b!1248390 () Bool)

(declare-fun e!708434 () Bool)

(assert (=> b!1248390 (= e!708434 e!708435)))

(declare-fun res!832956 () Bool)

(assert (=> b!1248390 (=> (not res!832956) (not e!708435))))

(assert (=> b!1248390 (= res!832956 (not e!708432))))

(declare-fun res!832955 () Bool)

(assert (=> b!1248390 (=> (not res!832955) (not e!708432))))

(assert (=> b!1248390 (= res!832955 (validKeyInArray!0 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61568 () Bool)

(assert (=> bm!61568 (= call!61571 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122055 (Cons!27738 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000) Nil!27739) Nil!27739)))))

(declare-fun d!137739 () Bool)

(declare-fun res!832954 () Bool)

(assert (=> d!137739 (=> res!832954 e!708434)))

(assert (=> d!137739 (= res!832954 (bvsge #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(assert (=> d!137739 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27739) e!708434)))

(assert (= (and d!137739 (not res!832954)) b!1248390))

(assert (= (and b!1248390 res!832955) b!1248388))

(assert (= (and b!1248390 res!832956) b!1248387))

(assert (= (and b!1248387 c!122055) b!1248389))

(assert (= (and b!1248387 (not c!122055)) b!1248386))

(assert (= (or b!1248389 b!1248386) bm!61568))

(assert (=> b!1248387 m!1149575))

(assert (=> b!1248387 m!1149575))

(assert (=> b!1248387 m!1149583))

(assert (=> b!1248388 m!1149575))

(assert (=> b!1248388 m!1149575))

(declare-fun m!1149585 () Bool)

(assert (=> b!1248388 m!1149585))

(assert (=> b!1248390 m!1149575))

(assert (=> b!1248390 m!1149575))

(assert (=> b!1248390 m!1149583))

(assert (=> bm!61568 m!1149575))

(declare-fun m!1149587 () Bool)

(assert (=> bm!61568 m!1149587))

(assert (=> b!1248340 d!137739))

(declare-fun b!1248415 () Bool)

(declare-fun e!708453 () Bool)

(declare-fun e!708451 () Bool)

(assert (=> b!1248415 (= e!708453 e!708451)))

(declare-fun c!122067 () Bool)

(declare-fun e!708452 () Bool)

(assert (=> b!1248415 (= c!122067 e!708452)))

(declare-fun res!832966 () Bool)

(assert (=> b!1248415 (=> (not res!832966) (not e!708452))))

(assert (=> b!1248415 (= res!832966 (bvslt #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(declare-fun b!1248416 () Bool)

(declare-fun lt!563372 () Unit!41417)

(declare-fun lt!563370 () Unit!41417)

(assert (=> b!1248416 (= lt!563372 lt!563370)))

(declare-fun lt!563373 () (_ BitVec 64))

(declare-fun lt!563375 () V!47281)

(declare-fun lt!563376 () ListLongMap!18367)

(declare-fun lt!563374 () (_ BitVec 64))

(declare-fun contains!7487 (ListLongMap!18367 (_ BitVec 64)) Bool)

(declare-fun +!4123 (ListLongMap!18367 tuple2!20482) ListLongMap!18367)

(assert (=> b!1248416 (not (contains!7487 (+!4123 lt!563376 (tuple2!20483 lt!563374 lt!563375)) lt!563373))))

(declare-fun addStillNotContains!309 (ListLongMap!18367 (_ BitVec 64) V!47281 (_ BitVec 64)) Unit!41417)

(assert (=> b!1248416 (= lt!563370 (addStillNotContains!309 lt!563376 lt!563374 lt!563375 lt!563373))))

(assert (=> b!1248416 (= lt!563373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!19982 (ValueCell!14955 V!47281) V!47281)

(declare-fun dynLambda!3459 (Int (_ BitVec 64)) V!47281)

(assert (=> b!1248416 (= lt!563375 (get!19982 (select (arr!38835 _values!914) #b00000000000000000000000000000000) (dynLambda!3459 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1248416 (= lt!563374 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun call!61574 () ListLongMap!18367)

(assert (=> b!1248416 (= lt!563376 call!61574)))

(declare-fun e!708454 () ListLongMap!18367)

(assert (=> b!1248416 (= e!708454 (+!4123 call!61574 (tuple2!20483 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000) (get!19982 (select (arr!38835 _values!914) #b00000000000000000000000000000000) (dynLambda!3459 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1248417 () Bool)

(declare-fun res!832968 () Bool)

(assert (=> b!1248417 (=> (not res!832968) (not e!708453))))

(declare-fun lt!563371 () ListLongMap!18367)

(assert (=> b!1248417 (= res!832968 (not (contains!7487 lt!563371 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1248418 () Bool)

(declare-fun e!708450 () ListLongMap!18367)

(assert (=> b!1248418 (= e!708450 e!708454)))

(declare-fun c!122066 () Bool)

(assert (=> b!1248418 (= c!122066 (validKeyInArray!0 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun e!708455 () Bool)

(declare-fun b!1248419 () Bool)

(assert (=> b!1248419 (= e!708455 (= lt!563371 (getCurrentListMapNoExtraKeys!5582 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1248420 () Bool)

(assert (=> b!1248420 (= e!708454 call!61574)))

(declare-fun b!1248421 () Bool)

(assert (=> b!1248421 (= e!708451 e!708455)))

(declare-fun c!122065 () Bool)

(assert (=> b!1248421 (= c!122065 (bvslt #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(declare-fun b!1248422 () Bool)

(assert (=> b!1248422 (= e!708450 (ListLongMap!18368 Nil!27738))))

(declare-fun b!1248423 () Bool)

(declare-fun isEmpty!1024 (ListLongMap!18367) Bool)

(assert (=> b!1248423 (= e!708455 (isEmpty!1024 lt!563371))))

(declare-fun bm!61571 () Bool)

(assert (=> bm!61571 (= call!61574 (getCurrentListMapNoExtraKeys!5582 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun d!137741 () Bool)

(assert (=> d!137741 e!708453))

(declare-fun res!832967 () Bool)

(assert (=> d!137741 (=> (not res!832967) (not e!708453))))

(assert (=> d!137741 (= res!832967 (not (contains!7487 lt!563371 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137741 (= lt!563371 e!708450)))

(declare-fun c!122064 () Bool)

(assert (=> d!137741 (= c!122064 (bvsge #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(assert (=> d!137741 (validMask!0 mask!1466)))

(assert (=> d!137741 (= (getCurrentListMapNoExtraKeys!5582 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!563371)))

(declare-fun b!1248424 () Bool)

(assert (=> b!1248424 (= e!708452 (validKeyInArray!0 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1248424 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1248425 () Bool)

(assert (=> b!1248425 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(assert (=> b!1248425 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39372 _values!914)))))

(declare-fun e!708456 () Bool)

(declare-fun apply!1014 (ListLongMap!18367 (_ BitVec 64)) V!47281)

(assert (=> b!1248425 (= e!708456 (= (apply!1014 lt!563371 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)) (get!19982 (select (arr!38835 _values!914) #b00000000000000000000000000000000) (dynLambda!3459 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1248426 () Bool)

(assert (=> b!1248426 (= e!708451 e!708456)))

(assert (=> b!1248426 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39371 _keys!1118)))))

(declare-fun res!832965 () Bool)

(assert (=> b!1248426 (= res!832965 (contains!7487 lt!563371 (select (arr!38834 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1248426 (=> (not res!832965) (not e!708456))))

(assert (= (and d!137741 c!122064) b!1248422))

(assert (= (and d!137741 (not c!122064)) b!1248418))

(assert (= (and b!1248418 c!122066) b!1248416))

(assert (= (and b!1248418 (not c!122066)) b!1248420))

(assert (= (or b!1248416 b!1248420) bm!61571))

(assert (= (and d!137741 res!832967) b!1248417))

(assert (= (and b!1248417 res!832968) b!1248415))

(assert (= (and b!1248415 res!832966) b!1248424))

(assert (= (and b!1248415 c!122067) b!1248426))

(assert (= (and b!1248415 (not c!122067)) b!1248421))

(assert (= (and b!1248426 res!832965) b!1248425))

(assert (= (and b!1248421 c!122065) b!1248419))

(assert (= (and b!1248421 (not c!122065)) b!1248423))

(declare-fun b_lambda!22513 () Bool)

(assert (=> (not b_lambda!22513) (not b!1248416)))

(declare-fun t!41220 () Bool)

(declare-fun tb!11293 () Bool)

(assert (=> (and start!104754 (= defaultEntry!922 defaultEntry!922) t!41220) tb!11293))

(declare-fun result!23271 () Bool)

(assert (=> tb!11293 (= result!23271 tp_is_empty!31437)))

(assert (=> b!1248416 t!41220))

(declare-fun b_and!44313 () Bool)

(assert (= b_and!44309 (and (=> t!41220 result!23271) b_and!44313)))

(declare-fun b_lambda!22515 () Bool)

(assert (=> (not b_lambda!22515) (not b!1248425)))

(assert (=> b!1248425 t!41220))

(declare-fun b_and!44315 () Bool)

(assert (= b_and!44313 (and (=> t!41220 result!23271) b_and!44315)))

(assert (=> b!1248425 m!1149575))

(declare-fun m!1149589 () Bool)

(assert (=> b!1248425 m!1149589))

(declare-fun m!1149591 () Bool)

(assert (=> b!1248425 m!1149591))

(declare-fun m!1149593 () Bool)

(assert (=> b!1248425 m!1149593))

(assert (=> b!1248425 m!1149591))

(declare-fun m!1149595 () Bool)

(assert (=> b!1248425 m!1149595))

(assert (=> b!1248425 m!1149593))

(assert (=> b!1248425 m!1149575))

(assert (=> b!1248418 m!1149575))

(assert (=> b!1248418 m!1149575))

(assert (=> b!1248418 m!1149583))

(assert (=> b!1248424 m!1149575))

(assert (=> b!1248424 m!1149575))

(assert (=> b!1248424 m!1149583))

(assert (=> b!1248426 m!1149575))

(assert (=> b!1248426 m!1149575))

(declare-fun m!1149597 () Bool)

(assert (=> b!1248426 m!1149597))

(declare-fun m!1149599 () Bool)

(assert (=> b!1248417 m!1149599))

(declare-fun m!1149601 () Bool)

(assert (=> b!1248416 m!1149601))

(declare-fun m!1149603 () Bool)

(assert (=> b!1248416 m!1149603))

(assert (=> b!1248416 m!1149591))

(declare-fun m!1149605 () Bool)

(assert (=> b!1248416 m!1149605))

(assert (=> b!1248416 m!1149603))

(declare-fun m!1149607 () Bool)

(assert (=> b!1248416 m!1149607))

(assert (=> b!1248416 m!1149593))

(assert (=> b!1248416 m!1149591))

(assert (=> b!1248416 m!1149595))

(assert (=> b!1248416 m!1149593))

(assert (=> b!1248416 m!1149575))

(declare-fun m!1149609 () Bool)

(assert (=> b!1248423 m!1149609))

(declare-fun m!1149611 () Bool)

(assert (=> bm!61571 m!1149611))

(declare-fun m!1149613 () Bool)

(assert (=> d!137741 m!1149613))

(assert (=> d!137741 m!1149551))

(assert (=> b!1248419 m!1149611))

(assert (=> b!1248337 d!137741))

(declare-fun mapNonEmpty!48919 () Bool)

(declare-fun mapRes!48919 () Bool)

(declare-fun tp!93102 () Bool)

(declare-fun e!708461 () Bool)

(assert (=> mapNonEmpty!48919 (= mapRes!48919 (and tp!93102 e!708461))))

(declare-fun mapKey!48919 () (_ BitVec 32))

(declare-fun mapValue!48919 () ValueCell!14955)

(declare-fun mapRest!48919 () (Array (_ BitVec 32) ValueCell!14955))

(assert (=> mapNonEmpty!48919 (= mapRest!48913 (store mapRest!48919 mapKey!48919 mapValue!48919))))

(declare-fun b!1248436 () Bool)

(declare-fun e!708462 () Bool)

(assert (=> b!1248436 (= e!708462 tp_is_empty!31437)))

(declare-fun condMapEmpty!48919 () Bool)

(declare-fun mapDefault!48919 () ValueCell!14955)

(assert (=> mapNonEmpty!48913 (= condMapEmpty!48919 (= mapRest!48913 ((as const (Array (_ BitVec 32) ValueCell!14955)) mapDefault!48919)))))

(assert (=> mapNonEmpty!48913 (= tp!93092 (and e!708462 mapRes!48919))))

(declare-fun b!1248435 () Bool)

(assert (=> b!1248435 (= e!708461 tp_is_empty!31437)))

(declare-fun mapIsEmpty!48919 () Bool)

(assert (=> mapIsEmpty!48919 mapRes!48919))

(assert (= (and mapNonEmpty!48913 condMapEmpty!48919) mapIsEmpty!48919))

(assert (= (and mapNonEmpty!48913 (not condMapEmpty!48919)) mapNonEmpty!48919))

(assert (= (and mapNonEmpty!48919 ((_ is ValueCellFull!14955) mapValue!48919)) b!1248435))

(assert (= (and mapNonEmpty!48913 ((_ is ValueCellFull!14955) mapDefault!48919)) b!1248436))

(declare-fun m!1149615 () Bool)

(assert (=> mapNonEmpty!48919 m!1149615))

(declare-fun b_lambda!22517 () Bool)

(assert (= b_lambda!22513 (or (and start!104754 b_free!26535) b_lambda!22517)))

(declare-fun b_lambda!22519 () Bool)

(assert (= b_lambda!22515 (or (and start!104754 b_free!26535) b_lambda!22519)))

(check-sat (not bm!61571) (not b!1248373) (not b!1248417) (not b!1248418) (not b!1248424) (not bm!61565) b_and!44315 tp_is_empty!31437 (not b!1248416) (not b!1248425) (not b_lambda!22517) (not b_next!26535) (not b!1248419) (not b!1248387) (not b!1248388) (not b!1248390) (not bm!61568) (not b!1248423) (not b_lambda!22519) (not d!137741) (not mapNonEmpty!48919) (not b!1248372) (not b!1248426))
(check-sat b_and!44315 (not b_next!26535))

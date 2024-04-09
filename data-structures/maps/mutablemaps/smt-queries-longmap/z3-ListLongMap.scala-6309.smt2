; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80868 () Bool)

(assert start!80868)

(declare-fun b!947362 () Bool)

(declare-fun b_free!18177 () Bool)

(declare-fun b_next!18177 () Bool)

(assert (=> b!947362 (= b_free!18177 (not b_next!18177))))

(declare-fun tp!63093 () Bool)

(declare-fun b_and!29617 () Bool)

(assert (=> b!947362 (= tp!63093 b_and!29617)))

(declare-fun mapNonEmpty!32905 () Bool)

(declare-fun mapRes!32905 () Bool)

(declare-fun tp!63094 () Bool)

(declare-fun e!533256 () Bool)

(assert (=> mapNonEmpty!32905 (= mapRes!32905 (and tp!63094 e!533256))))

(declare-datatypes ((V!32545 0))(
  ( (V!32546 (val!10393 Int)) )
))
(declare-datatypes ((ValueCell!9861 0))(
  ( (ValueCellFull!9861 (v!12927 V!32545)) (EmptyCell!9861) )
))
(declare-fun mapRest!32905 () (Array (_ BitVec 32) ValueCell!9861))

(declare-fun mapKey!32905 () (_ BitVec 32))

(declare-fun mapValue!32905 () ValueCell!9861)

(declare-datatypes ((array!57390 0))(
  ( (array!57391 (arr!27601 (Array (_ BitVec 32) ValueCell!9861)) (size!28075 (_ BitVec 32))) )
))
(declare-datatypes ((array!57392 0))(
  ( (array!57393 (arr!27602 (Array (_ BitVec 32) (_ BitVec 64))) (size!28076 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4872 0))(
  ( (LongMapFixedSize!4873 (defaultEntry!5733 Int) (mask!27466 (_ BitVec 32)) (extraKeys!5465 (_ BitVec 32)) (zeroValue!5569 V!32545) (minValue!5569 V!32545) (_size!2491 (_ BitVec 32)) (_keys!10640 array!57392) (_values!5756 array!57390) (_vacant!2491 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4872)

(assert (=> mapNonEmpty!32905 (= (arr!27601 (_values!5756 thiss!1141)) (store mapRest!32905 mapKey!32905 mapValue!32905))))

(declare-fun b!947361 () Bool)

(declare-fun res!635902 () Bool)

(declare-fun e!533253 () Bool)

(assert (=> b!947361 (=> (not res!635902) (not e!533253))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!947361 (= res!635902 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!635903 () Bool)

(assert (=> start!80868 (=> (not res!635903) (not e!533253))))

(declare-fun valid!1834 (LongMapFixedSize!4872) Bool)

(assert (=> start!80868 (= res!635903 (valid!1834 thiss!1141))))

(assert (=> start!80868 e!533253))

(declare-fun e!533257 () Bool)

(assert (=> start!80868 e!533257))

(assert (=> start!80868 true))

(declare-fun tp_is_empty!20685 () Bool)

(declare-fun e!533252 () Bool)

(declare-fun array_inv!21374 (array!57392) Bool)

(declare-fun array_inv!21375 (array!57390) Bool)

(assert (=> b!947362 (= e!533257 (and tp!63093 tp_is_empty!20685 (array_inv!21374 (_keys!10640 thiss!1141)) (array_inv!21375 (_values!5756 thiss!1141)) e!533252))))

(declare-fun b!947363 () Bool)

(declare-fun res!635908 () Bool)

(declare-fun e!533255 () Bool)

(assert (=> b!947363 (=> res!635908 e!533255)))

(declare-datatypes ((SeekEntryResult!9108 0))(
  ( (MissingZero!9108 (index!38802 (_ BitVec 32))) (Found!9108 (index!38803 (_ BitVec 32))) (Intermediate!9108 (undefined!9920 Bool) (index!38804 (_ BitVec 32)) (x!81501 (_ BitVec 32))) (Undefined!9108) (MissingVacant!9108 (index!38805 (_ BitVec 32))) )
))
(declare-fun lt!426538 () SeekEntryResult!9108)

(assert (=> b!947363 (= res!635908 (or (bvslt (index!38803 lt!426538) #b00000000000000000000000000000000) (bvsge (index!38803 lt!426538) (size!28076 (_keys!10640 thiss!1141)))))))

(declare-fun b!947364 () Bool)

(declare-fun e!533254 () Bool)

(assert (=> b!947364 (= e!533253 e!533254)))

(declare-fun res!635905 () Bool)

(assert (=> b!947364 (=> (not res!635905) (not e!533254))))

(get-info :version)

(assert (=> b!947364 (= res!635905 ((_ is Found!9108) lt!426538))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57392 (_ BitVec 32)) SeekEntryResult!9108)

(assert (=> b!947364 (= lt!426538 (seekEntry!0 key!756 (_keys!10640 thiss!1141) (mask!27466 thiss!1141)))))

(declare-fun mapIsEmpty!32905 () Bool)

(assert (=> mapIsEmpty!32905 mapRes!32905))

(declare-fun b!947365 () Bool)

(assert (=> b!947365 (= e!533256 tp_is_empty!20685)))

(declare-fun b!947366 () Bool)

(assert (=> b!947366 (= e!533254 (not e!533255))))

(declare-fun res!635906 () Bool)

(assert (=> b!947366 (=> res!635906 e!533255)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947366 (= res!635906 (not (validMask!0 (mask!27466 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!947366 (arrayContainsKey!0 (_keys!10640 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31923 0))(
  ( (Unit!31924) )
))
(declare-fun lt!426539 () Unit!31923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57392 (_ BitVec 64) (_ BitVec 32)) Unit!31923)

(assert (=> b!947366 (= lt!426539 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10640 thiss!1141) key!756 (index!38803 lt!426538)))))

(declare-fun b!947367 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947367 (= e!533255 (validKeyInArray!0 (select (arr!27602 (_keys!10640 thiss!1141)) (index!38803 lt!426538))))))

(declare-fun b!947368 () Bool)

(declare-fun e!533250 () Bool)

(assert (=> b!947368 (= e!533250 tp_is_empty!20685)))

(declare-fun b!947369 () Bool)

(assert (=> b!947369 (= e!533252 (and e!533250 mapRes!32905))))

(declare-fun condMapEmpty!32905 () Bool)

(declare-fun mapDefault!32905 () ValueCell!9861)

(assert (=> b!947369 (= condMapEmpty!32905 (= (arr!27601 (_values!5756 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9861)) mapDefault!32905)))))

(declare-fun b!947370 () Bool)

(declare-fun res!635909 () Bool)

(assert (=> b!947370 (=> res!635909 e!533255)))

(assert (=> b!947370 (= res!635909 (or (not (= (size!28075 (_values!5756 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27466 thiss!1141)))) (not (= (size!28076 (_keys!10640 thiss!1141)) (size!28075 (_values!5756 thiss!1141)))) (bvslt (mask!27466 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5465 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5465 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!947371 () Bool)

(declare-fun res!635907 () Bool)

(assert (=> b!947371 (=> res!635907 e!533255)))

(declare-datatypes ((List!19437 0))(
  ( (Nil!19434) (Cons!19433 (h!20589 (_ BitVec 64)) (t!27766 List!19437)) )
))
(declare-fun arrayNoDuplicates!0 (array!57392 (_ BitVec 32) List!19437) Bool)

(assert (=> b!947371 (= res!635907 (not (arrayNoDuplicates!0 (_keys!10640 thiss!1141) #b00000000000000000000000000000000 Nil!19434)))))

(declare-fun b!947372 () Bool)

(declare-fun res!635904 () Bool)

(assert (=> b!947372 (=> res!635904 e!533255)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57392 (_ BitVec 32)) Bool)

(assert (=> b!947372 (= res!635904 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10640 thiss!1141) (mask!27466 thiss!1141))))))

(assert (= (and start!80868 res!635903) b!947361))

(assert (= (and b!947361 res!635902) b!947364))

(assert (= (and b!947364 res!635905) b!947366))

(assert (= (and b!947366 (not res!635906)) b!947370))

(assert (= (and b!947370 (not res!635909)) b!947372))

(assert (= (and b!947372 (not res!635904)) b!947371))

(assert (= (and b!947371 (not res!635907)) b!947363))

(assert (= (and b!947363 (not res!635908)) b!947367))

(assert (= (and b!947369 condMapEmpty!32905) mapIsEmpty!32905))

(assert (= (and b!947369 (not condMapEmpty!32905)) mapNonEmpty!32905))

(assert (= (and mapNonEmpty!32905 ((_ is ValueCellFull!9861) mapValue!32905)) b!947365))

(assert (= (and b!947369 ((_ is ValueCellFull!9861) mapDefault!32905)) b!947368))

(assert (= b!947362 b!947369))

(assert (= start!80868 b!947362))

(declare-fun m!880387 () Bool)

(assert (=> mapNonEmpty!32905 m!880387))

(declare-fun m!880389 () Bool)

(assert (=> b!947372 m!880389))

(declare-fun m!880391 () Bool)

(assert (=> b!947364 m!880391))

(declare-fun m!880393 () Bool)

(assert (=> b!947371 m!880393))

(declare-fun m!880395 () Bool)

(assert (=> b!947362 m!880395))

(declare-fun m!880397 () Bool)

(assert (=> b!947362 m!880397))

(declare-fun m!880399 () Bool)

(assert (=> b!947367 m!880399))

(assert (=> b!947367 m!880399))

(declare-fun m!880401 () Bool)

(assert (=> b!947367 m!880401))

(declare-fun m!880403 () Bool)

(assert (=> b!947366 m!880403))

(declare-fun m!880405 () Bool)

(assert (=> b!947366 m!880405))

(declare-fun m!880407 () Bool)

(assert (=> b!947366 m!880407))

(declare-fun m!880409 () Bool)

(assert (=> start!80868 m!880409))

(check-sat (not b!947366) tp_is_empty!20685 (not start!80868) (not b!947367) (not b!947364) (not mapNonEmpty!32905) b_and!29617 (not b!947372) (not b!947362) (not b!947371) (not b_next!18177))
(check-sat b_and!29617 (not b_next!18177))
(get-model)

(declare-fun d!114611 () Bool)

(assert (=> d!114611 (= (validMask!0 (mask!27466 thiss!1141)) (and (or (= (mask!27466 thiss!1141) #b00000000000000000000000000000111) (= (mask!27466 thiss!1141) #b00000000000000000000000000001111) (= (mask!27466 thiss!1141) #b00000000000000000000000000011111) (= (mask!27466 thiss!1141) #b00000000000000000000000000111111) (= (mask!27466 thiss!1141) #b00000000000000000000000001111111) (= (mask!27466 thiss!1141) #b00000000000000000000000011111111) (= (mask!27466 thiss!1141) #b00000000000000000000000111111111) (= (mask!27466 thiss!1141) #b00000000000000000000001111111111) (= (mask!27466 thiss!1141) #b00000000000000000000011111111111) (= (mask!27466 thiss!1141) #b00000000000000000000111111111111) (= (mask!27466 thiss!1141) #b00000000000000000001111111111111) (= (mask!27466 thiss!1141) #b00000000000000000011111111111111) (= (mask!27466 thiss!1141) #b00000000000000000111111111111111) (= (mask!27466 thiss!1141) #b00000000000000001111111111111111) (= (mask!27466 thiss!1141) #b00000000000000011111111111111111) (= (mask!27466 thiss!1141) #b00000000000000111111111111111111) (= (mask!27466 thiss!1141) #b00000000000001111111111111111111) (= (mask!27466 thiss!1141) #b00000000000011111111111111111111) (= (mask!27466 thiss!1141) #b00000000000111111111111111111111) (= (mask!27466 thiss!1141) #b00000000001111111111111111111111) (= (mask!27466 thiss!1141) #b00000000011111111111111111111111) (= (mask!27466 thiss!1141) #b00000000111111111111111111111111) (= (mask!27466 thiss!1141) #b00000001111111111111111111111111) (= (mask!27466 thiss!1141) #b00000011111111111111111111111111) (= (mask!27466 thiss!1141) #b00000111111111111111111111111111) (= (mask!27466 thiss!1141) #b00001111111111111111111111111111) (= (mask!27466 thiss!1141) #b00011111111111111111111111111111) (= (mask!27466 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27466 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!947366 d!114611))

(declare-fun d!114613 () Bool)

(declare-fun res!635938 () Bool)

(declare-fun e!533286 () Bool)

(assert (=> d!114613 (=> res!635938 e!533286)))

(assert (=> d!114613 (= res!635938 (= (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114613 (= (arrayContainsKey!0 (_keys!10640 thiss!1141) key!756 #b00000000000000000000000000000000) e!533286)))

(declare-fun b!947413 () Bool)

(declare-fun e!533287 () Bool)

(assert (=> b!947413 (= e!533286 e!533287)))

(declare-fun res!635939 () Bool)

(assert (=> b!947413 (=> (not res!635939) (not e!533287))))

(assert (=> b!947413 (= res!635939 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28076 (_keys!10640 thiss!1141))))))

(declare-fun b!947414 () Bool)

(assert (=> b!947414 (= e!533287 (arrayContainsKey!0 (_keys!10640 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114613 (not res!635938)) b!947413))

(assert (= (and b!947413 res!635939) b!947414))

(declare-fun m!880435 () Bool)

(assert (=> d!114613 m!880435))

(declare-fun m!880437 () Bool)

(assert (=> b!947414 m!880437))

(assert (=> b!947366 d!114613))

(declare-fun d!114615 () Bool)

(assert (=> d!114615 (arrayContainsKey!0 (_keys!10640 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426548 () Unit!31923)

(declare-fun choose!13 (array!57392 (_ BitVec 64) (_ BitVec 32)) Unit!31923)

(assert (=> d!114615 (= lt!426548 (choose!13 (_keys!10640 thiss!1141) key!756 (index!38803 lt!426538)))))

(assert (=> d!114615 (bvsge (index!38803 lt!426538) #b00000000000000000000000000000000)))

(assert (=> d!114615 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10640 thiss!1141) key!756 (index!38803 lt!426538)) lt!426548)))

(declare-fun bs!26624 () Bool)

(assert (= bs!26624 d!114615))

(assert (=> bs!26624 m!880405))

(declare-fun m!880439 () Bool)

(assert (=> bs!26624 m!880439))

(assert (=> b!947366 d!114615))

(declare-fun d!114617 () Bool)

(assert (=> d!114617 (= (array_inv!21374 (_keys!10640 thiss!1141)) (bvsge (size!28076 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947362 d!114617))

(declare-fun d!114619 () Bool)

(assert (=> d!114619 (= (array_inv!21375 (_values!5756 thiss!1141)) (bvsge (size!28075 (_values!5756 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947362 d!114619))

(declare-fun b!947425 () Bool)

(declare-fun e!533298 () Bool)

(declare-fun e!533299 () Bool)

(assert (=> b!947425 (= e!533298 e!533299)))

(declare-fun c!98623 () Bool)

(assert (=> b!947425 (= c!98623 (validKeyInArray!0 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947426 () Bool)

(declare-fun call!41121 () Bool)

(assert (=> b!947426 (= e!533299 call!41121)))

(declare-fun d!114621 () Bool)

(declare-fun res!635947 () Bool)

(declare-fun e!533297 () Bool)

(assert (=> d!114621 (=> res!635947 e!533297)))

(assert (=> d!114621 (= res!635947 (bvsge #b00000000000000000000000000000000 (size!28076 (_keys!10640 thiss!1141))))))

(assert (=> d!114621 (= (arrayNoDuplicates!0 (_keys!10640 thiss!1141) #b00000000000000000000000000000000 Nil!19434) e!533297)))

(declare-fun bm!41118 () Bool)

(assert (=> bm!41118 (= call!41121 (arrayNoDuplicates!0 (_keys!10640 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98623 (Cons!19433 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000) Nil!19434) Nil!19434)))))

(declare-fun b!947427 () Bool)

(assert (=> b!947427 (= e!533297 e!533298)))

(declare-fun res!635948 () Bool)

(assert (=> b!947427 (=> (not res!635948) (not e!533298))))

(declare-fun e!533296 () Bool)

(assert (=> b!947427 (= res!635948 (not e!533296))))

(declare-fun res!635946 () Bool)

(assert (=> b!947427 (=> (not res!635946) (not e!533296))))

(assert (=> b!947427 (= res!635946 (validKeyInArray!0 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947428 () Bool)

(assert (=> b!947428 (= e!533299 call!41121)))

(declare-fun b!947429 () Bool)

(declare-fun contains!5207 (List!19437 (_ BitVec 64)) Bool)

(assert (=> b!947429 (= e!533296 (contains!5207 Nil!19434 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114621 (not res!635947)) b!947427))

(assert (= (and b!947427 res!635946) b!947429))

(assert (= (and b!947427 res!635948) b!947425))

(assert (= (and b!947425 c!98623) b!947428))

(assert (= (and b!947425 (not c!98623)) b!947426))

(assert (= (or b!947428 b!947426) bm!41118))

(assert (=> b!947425 m!880435))

(assert (=> b!947425 m!880435))

(declare-fun m!880441 () Bool)

(assert (=> b!947425 m!880441))

(assert (=> bm!41118 m!880435))

(declare-fun m!880443 () Bool)

(assert (=> bm!41118 m!880443))

(assert (=> b!947427 m!880435))

(assert (=> b!947427 m!880435))

(assert (=> b!947427 m!880441))

(assert (=> b!947429 m!880435))

(assert (=> b!947429 m!880435))

(declare-fun m!880445 () Bool)

(assert (=> b!947429 m!880445))

(assert (=> b!947371 d!114621))

(declare-fun d!114623 () Bool)

(declare-fun res!635955 () Bool)

(declare-fun e!533302 () Bool)

(assert (=> d!114623 (=> (not res!635955) (not e!533302))))

(declare-fun simpleValid!363 (LongMapFixedSize!4872) Bool)

(assert (=> d!114623 (= res!635955 (simpleValid!363 thiss!1141))))

(assert (=> d!114623 (= (valid!1834 thiss!1141) e!533302)))

(declare-fun b!947436 () Bool)

(declare-fun res!635956 () Bool)

(assert (=> b!947436 (=> (not res!635956) (not e!533302))))

(declare-fun arrayCountValidKeys!0 (array!57392 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!947436 (= res!635956 (= (arrayCountValidKeys!0 (_keys!10640 thiss!1141) #b00000000000000000000000000000000 (size!28076 (_keys!10640 thiss!1141))) (_size!2491 thiss!1141)))))

(declare-fun b!947437 () Bool)

(declare-fun res!635957 () Bool)

(assert (=> b!947437 (=> (not res!635957) (not e!533302))))

(assert (=> b!947437 (= res!635957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10640 thiss!1141) (mask!27466 thiss!1141)))))

(declare-fun b!947438 () Bool)

(assert (=> b!947438 (= e!533302 (arrayNoDuplicates!0 (_keys!10640 thiss!1141) #b00000000000000000000000000000000 Nil!19434))))

(assert (= (and d!114623 res!635955) b!947436))

(assert (= (and b!947436 res!635956) b!947437))

(assert (= (and b!947437 res!635957) b!947438))

(declare-fun m!880447 () Bool)

(assert (=> d!114623 m!880447))

(declare-fun m!880449 () Bool)

(assert (=> b!947436 m!880449))

(assert (=> b!947437 m!880389))

(assert (=> b!947438 m!880393))

(assert (=> start!80868 d!114623))

(declare-fun d!114625 () Bool)

(declare-fun res!635963 () Bool)

(declare-fun e!533310 () Bool)

(assert (=> d!114625 (=> res!635963 e!533310)))

(assert (=> d!114625 (= res!635963 (bvsge #b00000000000000000000000000000000 (size!28076 (_keys!10640 thiss!1141))))))

(assert (=> d!114625 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10640 thiss!1141) (mask!27466 thiss!1141)) e!533310)))

(declare-fun bm!41121 () Bool)

(declare-fun call!41124 () Bool)

(assert (=> bm!41121 (= call!41124 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10640 thiss!1141) (mask!27466 thiss!1141)))))

(declare-fun b!947447 () Bool)

(declare-fun e!533309 () Bool)

(assert (=> b!947447 (= e!533310 e!533309)))

(declare-fun c!98626 () Bool)

(assert (=> b!947447 (= c!98626 (validKeyInArray!0 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947448 () Bool)

(declare-fun e!533311 () Bool)

(assert (=> b!947448 (= e!533309 e!533311)))

(declare-fun lt!426555 () (_ BitVec 64))

(assert (=> b!947448 (= lt!426555 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426556 () Unit!31923)

(assert (=> b!947448 (= lt!426556 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10640 thiss!1141) lt!426555 #b00000000000000000000000000000000))))

(assert (=> b!947448 (arrayContainsKey!0 (_keys!10640 thiss!1141) lt!426555 #b00000000000000000000000000000000)))

(declare-fun lt!426557 () Unit!31923)

(assert (=> b!947448 (= lt!426557 lt!426556)))

(declare-fun res!635962 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57392 (_ BitVec 32)) SeekEntryResult!9108)

(assert (=> b!947448 (= res!635962 (= (seekEntryOrOpen!0 (select (arr!27602 (_keys!10640 thiss!1141)) #b00000000000000000000000000000000) (_keys!10640 thiss!1141) (mask!27466 thiss!1141)) (Found!9108 #b00000000000000000000000000000000)))))

(assert (=> b!947448 (=> (not res!635962) (not e!533311))))

(declare-fun b!947449 () Bool)

(assert (=> b!947449 (= e!533311 call!41124)))

(declare-fun b!947450 () Bool)

(assert (=> b!947450 (= e!533309 call!41124)))

(assert (= (and d!114625 (not res!635963)) b!947447))

(assert (= (and b!947447 c!98626) b!947448))

(assert (= (and b!947447 (not c!98626)) b!947450))

(assert (= (and b!947448 res!635962) b!947449))

(assert (= (or b!947449 b!947450) bm!41121))

(declare-fun m!880451 () Bool)

(assert (=> bm!41121 m!880451))

(assert (=> b!947447 m!880435))

(assert (=> b!947447 m!880435))

(assert (=> b!947447 m!880441))

(assert (=> b!947448 m!880435))

(declare-fun m!880453 () Bool)

(assert (=> b!947448 m!880453))

(declare-fun m!880455 () Bool)

(assert (=> b!947448 m!880455))

(assert (=> b!947448 m!880435))

(declare-fun m!880457 () Bool)

(assert (=> b!947448 m!880457))

(assert (=> b!947372 d!114625))

(declare-fun d!114627 () Bool)

(assert (=> d!114627 (= (validKeyInArray!0 (select (arr!27602 (_keys!10640 thiss!1141)) (index!38803 lt!426538))) (and (not (= (select (arr!27602 (_keys!10640 thiss!1141)) (index!38803 lt!426538)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27602 (_keys!10640 thiss!1141)) (index!38803 lt!426538)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!947367 d!114627))

(declare-fun b!947463 () Bool)

(declare-fun e!533318 () SeekEntryResult!9108)

(declare-fun e!533320 () SeekEntryResult!9108)

(assert (=> b!947463 (= e!533318 e!533320)))

(declare-fun lt!426569 () (_ BitVec 64))

(declare-fun lt!426566 () SeekEntryResult!9108)

(assert (=> b!947463 (= lt!426569 (select (arr!27602 (_keys!10640 thiss!1141)) (index!38804 lt!426566)))))

(declare-fun c!98634 () Bool)

(assert (=> b!947463 (= c!98634 (= lt!426569 key!756))))

(declare-fun b!947464 () Bool)

(declare-fun c!98633 () Bool)

(assert (=> b!947464 (= c!98633 (= lt!426569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!533319 () SeekEntryResult!9108)

(assert (=> b!947464 (= e!533320 e!533319)))

(declare-fun b!947465 () Bool)

(assert (=> b!947465 (= e!533318 Undefined!9108)))

(declare-fun d!114629 () Bool)

(declare-fun lt!426568 () SeekEntryResult!9108)

(assert (=> d!114629 (and (or ((_ is MissingVacant!9108) lt!426568) (not ((_ is Found!9108) lt!426568)) (and (bvsge (index!38803 lt!426568) #b00000000000000000000000000000000) (bvslt (index!38803 lt!426568) (size!28076 (_keys!10640 thiss!1141))))) (not ((_ is MissingVacant!9108) lt!426568)) (or (not ((_ is Found!9108) lt!426568)) (= (select (arr!27602 (_keys!10640 thiss!1141)) (index!38803 lt!426568)) key!756)))))

(assert (=> d!114629 (= lt!426568 e!533318)))

(declare-fun c!98635 () Bool)

(assert (=> d!114629 (= c!98635 (and ((_ is Intermediate!9108) lt!426566) (undefined!9920 lt!426566)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57392 (_ BitVec 32)) SeekEntryResult!9108)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114629 (= lt!426566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27466 thiss!1141)) key!756 (_keys!10640 thiss!1141) (mask!27466 thiss!1141)))))

(assert (=> d!114629 (validMask!0 (mask!27466 thiss!1141))))

(assert (=> d!114629 (= (seekEntry!0 key!756 (_keys!10640 thiss!1141) (mask!27466 thiss!1141)) lt!426568)))

(declare-fun b!947466 () Bool)

(assert (=> b!947466 (= e!533320 (Found!9108 (index!38804 lt!426566)))))

(declare-fun b!947467 () Bool)

(declare-fun lt!426567 () SeekEntryResult!9108)

(assert (=> b!947467 (= e!533319 (ite ((_ is MissingVacant!9108) lt!426567) (MissingZero!9108 (index!38805 lt!426567)) lt!426567))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57392 (_ BitVec 32)) SeekEntryResult!9108)

(assert (=> b!947467 (= lt!426567 (seekKeyOrZeroReturnVacant!0 (x!81501 lt!426566) (index!38804 lt!426566) (index!38804 lt!426566) key!756 (_keys!10640 thiss!1141) (mask!27466 thiss!1141)))))

(declare-fun b!947468 () Bool)

(assert (=> b!947468 (= e!533319 (MissingZero!9108 (index!38804 lt!426566)))))

(assert (= (and d!114629 c!98635) b!947465))

(assert (= (and d!114629 (not c!98635)) b!947463))

(assert (= (and b!947463 c!98634) b!947466))

(assert (= (and b!947463 (not c!98634)) b!947464))

(assert (= (and b!947464 c!98633) b!947468))

(assert (= (and b!947464 (not c!98633)) b!947467))

(declare-fun m!880459 () Bool)

(assert (=> b!947463 m!880459))

(declare-fun m!880461 () Bool)

(assert (=> d!114629 m!880461))

(declare-fun m!880463 () Bool)

(assert (=> d!114629 m!880463))

(assert (=> d!114629 m!880463))

(declare-fun m!880465 () Bool)

(assert (=> d!114629 m!880465))

(assert (=> d!114629 m!880403))

(declare-fun m!880467 () Bool)

(assert (=> b!947467 m!880467))

(assert (=> b!947364 d!114629))

(declare-fun b!947476 () Bool)

(declare-fun e!533325 () Bool)

(assert (=> b!947476 (= e!533325 tp_is_empty!20685)))

(declare-fun mapNonEmpty!32911 () Bool)

(declare-fun mapRes!32911 () Bool)

(declare-fun tp!63103 () Bool)

(declare-fun e!533326 () Bool)

(assert (=> mapNonEmpty!32911 (= mapRes!32911 (and tp!63103 e!533326))))

(declare-fun mapKey!32911 () (_ BitVec 32))

(declare-fun mapRest!32911 () (Array (_ BitVec 32) ValueCell!9861))

(declare-fun mapValue!32911 () ValueCell!9861)

(assert (=> mapNonEmpty!32911 (= mapRest!32905 (store mapRest!32911 mapKey!32911 mapValue!32911))))

(declare-fun condMapEmpty!32911 () Bool)

(declare-fun mapDefault!32911 () ValueCell!9861)

(assert (=> mapNonEmpty!32905 (= condMapEmpty!32911 (= mapRest!32905 ((as const (Array (_ BitVec 32) ValueCell!9861)) mapDefault!32911)))))

(assert (=> mapNonEmpty!32905 (= tp!63094 (and e!533325 mapRes!32911))))

(declare-fun mapIsEmpty!32911 () Bool)

(assert (=> mapIsEmpty!32911 mapRes!32911))

(declare-fun b!947475 () Bool)

(assert (=> b!947475 (= e!533326 tp_is_empty!20685)))

(assert (= (and mapNonEmpty!32905 condMapEmpty!32911) mapIsEmpty!32911))

(assert (= (and mapNonEmpty!32905 (not condMapEmpty!32911)) mapNonEmpty!32911))

(assert (= (and mapNonEmpty!32911 ((_ is ValueCellFull!9861) mapValue!32911)) b!947475))

(assert (= (and mapNonEmpty!32905 ((_ is ValueCellFull!9861) mapDefault!32911)) b!947476))

(declare-fun m!880469 () Bool)

(assert (=> mapNonEmpty!32911 m!880469))

(check-sat (not b!947448) (not b!947467) (not b!947425) (not b!947427) (not b_next!18177) b_and!29617 (not d!114629) (not b!947447) (not b!947429) tp_is_empty!20685 (not d!114615) (not bm!41121) (not d!114623) (not mapNonEmpty!32911) (not b!947414) (not bm!41118) (not b!947438) (not b!947436) (not b!947437))
(check-sat b_and!29617 (not b_next!18177))

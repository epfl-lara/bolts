; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80894 () Bool)

(assert start!80894)

(declare-fun b!947517 () Bool)

(declare-fun b_free!18183 () Bool)

(declare-fun b_next!18183 () Bool)

(assert (=> b!947517 (= b_free!18183 (not b_next!18183))))

(declare-fun tp!63115 () Bool)

(declare-fun b_and!29623 () Bool)

(assert (=> b!947517 (= tp!63115 b_and!29623)))

(declare-fun b!947512 () Bool)

(declare-fun res!635981 () Bool)

(declare-fun e!533366 () Bool)

(assert (=> b!947512 (=> (not res!635981) (not e!533366))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!947512 (= res!635981 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947513 () Bool)

(declare-fun e!533362 () Bool)

(declare-fun e!533367 () Bool)

(declare-fun mapRes!32917 () Bool)

(assert (=> b!947513 (= e!533362 (and e!533367 mapRes!32917))))

(declare-fun condMapEmpty!32917 () Bool)

(declare-datatypes ((V!32553 0))(
  ( (V!32554 (val!10396 Int)) )
))
(declare-datatypes ((ValueCell!9864 0))(
  ( (ValueCellFull!9864 (v!12930 V!32553)) (EmptyCell!9864) )
))
(declare-datatypes ((array!57404 0))(
  ( (array!57405 (arr!27607 (Array (_ BitVec 32) ValueCell!9864)) (size!28081 (_ BitVec 32))) )
))
(declare-datatypes ((array!57406 0))(
  ( (array!57407 (arr!27608 (Array (_ BitVec 32) (_ BitVec 64))) (size!28082 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4878 0))(
  ( (LongMapFixedSize!4879 (defaultEntry!5736 Int) (mask!27474 (_ BitVec 32)) (extraKeys!5468 (_ BitVec 32)) (zeroValue!5572 V!32553) (minValue!5572 V!32553) (_size!2494 (_ BitVec 32)) (_keys!10645 array!57406) (_values!5759 array!57404) (_vacant!2494 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4878)

(declare-fun mapDefault!32917 () ValueCell!9864)

(assert (=> b!947513 (= condMapEmpty!32917 (= (arr!27607 (_values!5759 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9864)) mapDefault!32917)))))

(declare-fun mapIsEmpty!32917 () Bool)

(assert (=> mapIsEmpty!32917 mapRes!32917))

(declare-fun b!947514 () Bool)

(declare-fun e!533368 () Bool)

(declare-fun tp_is_empty!20691 () Bool)

(assert (=> b!947514 (= e!533368 tp_is_empty!20691)))

(declare-fun mapNonEmpty!32917 () Bool)

(declare-fun tp!63114 () Bool)

(assert (=> mapNonEmpty!32917 (= mapRes!32917 (and tp!63114 e!533368))))

(declare-fun mapKey!32917 () (_ BitVec 32))

(declare-fun mapRest!32917 () (Array (_ BitVec 32) ValueCell!9864))

(declare-fun mapValue!32917 () ValueCell!9864)

(assert (=> mapNonEmpty!32917 (= (arr!27607 (_values!5759 thiss!1141)) (store mapRest!32917 mapKey!32917 mapValue!32917))))

(declare-fun res!635979 () Bool)

(assert (=> start!80894 (=> (not res!635979) (not e!533366))))

(declare-fun valid!1836 (LongMapFixedSize!4878) Bool)

(assert (=> start!80894 (= res!635979 (valid!1836 thiss!1141))))

(assert (=> start!80894 e!533366))

(declare-fun e!533364 () Bool)

(assert (=> start!80894 e!533364))

(assert (=> start!80894 true))

(declare-fun b!947515 () Bool)

(assert (=> b!947515 (= e!533367 tp_is_empty!20691)))

(declare-fun b!947516 () Bool)

(declare-fun e!533365 () Bool)

(assert (=> b!947516 (= e!533366 e!533365)))

(declare-fun res!635980 () Bool)

(assert (=> b!947516 (=> (not res!635980) (not e!533365))))

(declare-datatypes ((SeekEntryResult!9110 0))(
  ( (MissingZero!9110 (index!38810 (_ BitVec 32))) (Found!9110 (index!38811 (_ BitVec 32))) (Intermediate!9110 (undefined!9922 Bool) (index!38812 (_ BitVec 32)) (x!81519 (_ BitVec 32))) (Undefined!9110) (MissingVacant!9110 (index!38813 (_ BitVec 32))) )
))
(declare-fun lt!426586 () SeekEntryResult!9110)

(get-info :version)

(assert (=> b!947516 (= res!635980 ((_ is Found!9110) lt!426586))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57406 (_ BitVec 32)) SeekEntryResult!9110)

(assert (=> b!947516 (= lt!426586 (seekEntry!0 key!756 (_keys!10645 thiss!1141) (mask!27474 thiss!1141)))))

(declare-fun array_inv!21378 (array!57406) Bool)

(declare-fun array_inv!21379 (array!57404) Bool)

(assert (=> b!947517 (= e!533364 (and tp!63115 tp_is_empty!20691 (array_inv!21378 (_keys!10645 thiss!1141)) (array_inv!21379 (_values!5759 thiss!1141)) e!533362))))

(declare-fun b!947518 () Bool)

(declare-datatypes ((tuple2!13608 0))(
  ( (tuple2!13609 (_1!6814 (_ BitVec 64)) (_2!6814 V!32553)) )
))
(declare-datatypes ((List!19439 0))(
  ( (Nil!19436) (Cons!19435 (h!20591 tuple2!13608) (t!27768 List!19439)) )
))
(declare-datatypes ((ListLongMap!12319 0))(
  ( (ListLongMap!12320 (toList!6175 List!19439)) )
))
(declare-fun contains!5208 (ListLongMap!12319 (_ BitVec 64)) Bool)

(declare-fun map!13069 (LongMapFixedSize!4878) ListLongMap!12319)

(assert (=> b!947518 (= e!533365 (not (contains!5208 (map!13069 thiss!1141) key!756)))))

(declare-fun getCurrentListMap!3360 (array!57406 array!57404 (_ BitVec 32) (_ BitVec 32) V!32553 V!32553 (_ BitVec 32) Int) ListLongMap!12319)

(assert (=> b!947518 (contains!5208 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586)))))

(declare-datatypes ((Unit!31925 0))(
  ( (Unit!31926) )
))
(declare-fun lt!426585 () Unit!31925)

(declare-fun lemmaValidKeyInArrayIsInListMap!257 (array!57406 array!57404 (_ BitVec 32) (_ BitVec 32) V!32553 V!32553 (_ BitVec 32) Int) Unit!31925)

(assert (=> b!947518 (= lt!426585 (lemmaValidKeyInArrayIsInListMap!257 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) (index!38811 lt!426586) (defaultEntry!5736 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!947518 (arrayContainsKey!0 (_keys!10645 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426587 () Unit!31925)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57406 (_ BitVec 64) (_ BitVec 32)) Unit!31925)

(assert (=> b!947518 (= lt!426587 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10645 thiss!1141) key!756 (index!38811 lt!426586)))))

(assert (= (and start!80894 res!635979) b!947512))

(assert (= (and b!947512 res!635981) b!947516))

(assert (= (and b!947516 res!635980) b!947518))

(assert (= (and b!947513 condMapEmpty!32917) mapIsEmpty!32917))

(assert (= (and b!947513 (not condMapEmpty!32917)) mapNonEmpty!32917))

(assert (= (and mapNonEmpty!32917 ((_ is ValueCellFull!9864) mapValue!32917)) b!947514))

(assert (= (and b!947513 ((_ is ValueCellFull!9864) mapDefault!32917)) b!947515))

(assert (= b!947517 b!947513))

(assert (= start!80894 b!947517))

(declare-fun m!880497 () Bool)

(assert (=> b!947516 m!880497))

(declare-fun m!880499 () Bool)

(assert (=> b!947518 m!880499))

(declare-fun m!880501 () Bool)

(assert (=> b!947518 m!880501))

(declare-fun m!880503 () Bool)

(assert (=> b!947518 m!880503))

(declare-fun m!880505 () Bool)

(assert (=> b!947518 m!880505))

(declare-fun m!880507 () Bool)

(assert (=> b!947518 m!880507))

(assert (=> b!947518 m!880499))

(assert (=> b!947518 m!880501))

(declare-fun m!880509 () Bool)

(assert (=> b!947518 m!880509))

(assert (=> b!947518 m!880505))

(declare-fun m!880511 () Bool)

(assert (=> b!947518 m!880511))

(declare-fun m!880513 () Bool)

(assert (=> b!947518 m!880513))

(declare-fun m!880515 () Bool)

(assert (=> mapNonEmpty!32917 m!880515))

(declare-fun m!880517 () Bool)

(assert (=> start!80894 m!880517))

(declare-fun m!880519 () Bool)

(assert (=> b!947517 m!880519))

(declare-fun m!880521 () Bool)

(assert (=> b!947517 m!880521))

(check-sat b_and!29623 (not b!947516) (not b!947517) tp_is_empty!20691 (not b_next!18183) (not b!947518) (not mapNonEmpty!32917) (not start!80894))
(check-sat b_and!29623 (not b_next!18183))
(get-model)

(declare-fun b!947552 () Bool)

(declare-fun e!533398 () SeekEntryResult!9110)

(declare-fun e!533396 () SeekEntryResult!9110)

(assert (=> b!947552 (= e!533398 e!533396)))

(declare-fun lt!426607 () (_ BitVec 64))

(declare-fun lt!426606 () SeekEntryResult!9110)

(assert (=> b!947552 (= lt!426607 (select (arr!27608 (_keys!10645 thiss!1141)) (index!38812 lt!426606)))))

(declare-fun c!98644 () Bool)

(assert (=> b!947552 (= c!98644 (= lt!426607 key!756))))

(declare-fun b!947553 () Bool)

(assert (=> b!947553 (= e!533396 (Found!9110 (index!38812 lt!426606)))))

(declare-fun b!947555 () Bool)

(declare-fun e!533397 () SeekEntryResult!9110)

(assert (=> b!947555 (= e!533397 (MissingZero!9110 (index!38812 lt!426606)))))

(declare-fun b!947556 () Bool)

(assert (=> b!947556 (= e!533398 Undefined!9110)))

(declare-fun b!947557 () Bool)

(declare-fun lt!426605 () SeekEntryResult!9110)

(assert (=> b!947557 (= e!533397 (ite ((_ is MissingVacant!9110) lt!426605) (MissingZero!9110 (index!38813 lt!426605)) lt!426605))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57406 (_ BitVec 32)) SeekEntryResult!9110)

(assert (=> b!947557 (= lt!426605 (seekKeyOrZeroReturnVacant!0 (x!81519 lt!426606) (index!38812 lt!426606) (index!38812 lt!426606) key!756 (_keys!10645 thiss!1141) (mask!27474 thiss!1141)))))

(declare-fun b!947554 () Bool)

(declare-fun c!98642 () Bool)

(assert (=> b!947554 (= c!98642 (= lt!426607 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!947554 (= e!533396 e!533397)))

(declare-fun d!114633 () Bool)

(declare-fun lt!426608 () SeekEntryResult!9110)

(assert (=> d!114633 (and (or ((_ is MissingVacant!9110) lt!426608) (not ((_ is Found!9110) lt!426608)) (and (bvsge (index!38811 lt!426608) #b00000000000000000000000000000000) (bvslt (index!38811 lt!426608) (size!28082 (_keys!10645 thiss!1141))))) (not ((_ is MissingVacant!9110) lt!426608)) (or (not ((_ is Found!9110) lt!426608)) (= (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426608)) key!756)))))

(assert (=> d!114633 (= lt!426608 e!533398)))

(declare-fun c!98643 () Bool)

(assert (=> d!114633 (= c!98643 (and ((_ is Intermediate!9110) lt!426606) (undefined!9922 lt!426606)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57406 (_ BitVec 32)) SeekEntryResult!9110)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114633 (= lt!426606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27474 thiss!1141)) key!756 (_keys!10645 thiss!1141) (mask!27474 thiss!1141)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114633 (validMask!0 (mask!27474 thiss!1141))))

(assert (=> d!114633 (= (seekEntry!0 key!756 (_keys!10645 thiss!1141) (mask!27474 thiss!1141)) lt!426608)))

(assert (= (and d!114633 c!98643) b!947556))

(assert (= (and d!114633 (not c!98643)) b!947552))

(assert (= (and b!947552 c!98644) b!947553))

(assert (= (and b!947552 (not c!98644)) b!947554))

(assert (= (and b!947554 c!98642) b!947555))

(assert (= (and b!947554 (not c!98642)) b!947557))

(declare-fun m!880549 () Bool)

(assert (=> b!947552 m!880549))

(declare-fun m!880551 () Bool)

(assert (=> b!947557 m!880551))

(declare-fun m!880553 () Bool)

(assert (=> d!114633 m!880553))

(declare-fun m!880555 () Bool)

(assert (=> d!114633 m!880555))

(assert (=> d!114633 m!880555))

(declare-fun m!880557 () Bool)

(assert (=> d!114633 m!880557))

(declare-fun m!880559 () Bool)

(assert (=> d!114633 m!880559))

(assert (=> b!947516 d!114633))

(declare-fun d!114635 () Bool)

(assert (=> d!114635 (= (array_inv!21378 (_keys!10645 thiss!1141)) (bvsge (size!28082 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947517 d!114635))

(declare-fun d!114637 () Bool)

(assert (=> d!114637 (= (array_inv!21379 (_values!5759 thiss!1141)) (bvsge (size!28081 (_values!5759 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947517 d!114637))

(declare-fun d!114639 () Bool)

(declare-fun res!635997 () Bool)

(declare-fun e!533401 () Bool)

(assert (=> d!114639 (=> (not res!635997) (not e!533401))))

(declare-fun simpleValid!364 (LongMapFixedSize!4878) Bool)

(assert (=> d!114639 (= res!635997 (simpleValid!364 thiss!1141))))

(assert (=> d!114639 (= (valid!1836 thiss!1141) e!533401)))

(declare-fun b!947564 () Bool)

(declare-fun res!635998 () Bool)

(assert (=> b!947564 (=> (not res!635998) (not e!533401))))

(declare-fun arrayCountValidKeys!0 (array!57406 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!947564 (= res!635998 (= (arrayCountValidKeys!0 (_keys!10645 thiss!1141) #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))) (_size!2494 thiss!1141)))))

(declare-fun b!947565 () Bool)

(declare-fun res!635999 () Bool)

(assert (=> b!947565 (=> (not res!635999) (not e!533401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57406 (_ BitVec 32)) Bool)

(assert (=> b!947565 (= res!635999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10645 thiss!1141) (mask!27474 thiss!1141)))))

(declare-fun b!947566 () Bool)

(declare-datatypes ((List!19441 0))(
  ( (Nil!19438) (Cons!19437 (h!20593 (_ BitVec 64)) (t!27772 List!19441)) )
))
(declare-fun arrayNoDuplicates!0 (array!57406 (_ BitVec 32) List!19441) Bool)

(assert (=> b!947566 (= e!533401 (arrayNoDuplicates!0 (_keys!10645 thiss!1141) #b00000000000000000000000000000000 Nil!19438))))

(assert (= (and d!114639 res!635997) b!947564))

(assert (= (and b!947564 res!635998) b!947565))

(assert (= (and b!947565 res!635999) b!947566))

(declare-fun m!880561 () Bool)

(assert (=> d!114639 m!880561))

(declare-fun m!880563 () Bool)

(assert (=> b!947564 m!880563))

(declare-fun m!880565 () Bool)

(assert (=> b!947565 m!880565))

(declare-fun m!880567 () Bool)

(assert (=> b!947566 m!880567))

(assert (=> start!80894 d!114639))

(declare-fun d!114641 () Bool)

(declare-fun e!533404 () Bool)

(assert (=> d!114641 e!533404))

(declare-fun res!636002 () Bool)

(assert (=> d!114641 (=> (not res!636002) (not e!533404))))

(assert (=> d!114641 (= res!636002 (and (bvsge (index!38811 lt!426586) #b00000000000000000000000000000000) (bvslt (index!38811 lt!426586) (size!28082 (_keys!10645 thiss!1141)))))))

(declare-fun lt!426611 () Unit!31925)

(declare-fun choose!1579 (array!57406 array!57404 (_ BitVec 32) (_ BitVec 32) V!32553 V!32553 (_ BitVec 32) Int) Unit!31925)

(assert (=> d!114641 (= lt!426611 (choose!1579 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) (index!38811 lt!426586) (defaultEntry!5736 thiss!1141)))))

(assert (=> d!114641 (validMask!0 (mask!27474 thiss!1141))))

(assert (=> d!114641 (= (lemmaValidKeyInArrayIsInListMap!257 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) (index!38811 lt!426586) (defaultEntry!5736 thiss!1141)) lt!426611)))

(declare-fun b!947569 () Bool)

(assert (=> b!947569 (= e!533404 (contains!5208 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586))))))

(assert (= (and d!114641 res!636002) b!947569))

(declare-fun m!880569 () Bool)

(assert (=> d!114641 m!880569))

(assert (=> d!114641 m!880559))

(assert (=> b!947569 m!880499))

(assert (=> b!947569 m!880501))

(assert (=> b!947569 m!880499))

(assert (=> b!947569 m!880501))

(assert (=> b!947569 m!880503))

(assert (=> b!947518 d!114641))

(declare-fun d!114643 () Bool)

(declare-fun e!533439 () Bool)

(assert (=> d!114643 e!533439))

(declare-fun res!636024 () Bool)

(assert (=> d!114643 (=> (not res!636024) (not e!533439))))

(assert (=> d!114643 (= res!636024 (or (bvsge #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))))))))

(declare-fun lt!426666 () ListLongMap!12319)

(declare-fun lt!426667 () ListLongMap!12319)

(assert (=> d!114643 (= lt!426666 lt!426667)))

(declare-fun lt!426656 () Unit!31925)

(declare-fun e!533431 () Unit!31925)

(assert (=> d!114643 (= lt!426656 e!533431)))

(declare-fun c!98659 () Bool)

(declare-fun e!533437 () Bool)

(assert (=> d!114643 (= c!98659 e!533437)))

(declare-fun res!636027 () Bool)

(assert (=> d!114643 (=> (not res!636027) (not e!533437))))

(assert (=> d!114643 (= res!636027 (bvslt #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))))))

(declare-fun e!533433 () ListLongMap!12319)

(assert (=> d!114643 (= lt!426667 e!533433)))

(declare-fun c!98658 () Bool)

(assert (=> d!114643 (= c!98658 (and (not (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114643 (validMask!0 (mask!27474 thiss!1141))))

(assert (=> d!114643 (= (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)) lt!426666)))

(declare-fun b!947612 () Bool)

(declare-fun e!533436 () ListLongMap!12319)

(assert (=> b!947612 (= e!533433 e!533436)))

(declare-fun c!98661 () Bool)

(assert (=> b!947612 (= c!98661 (and (not (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!947613 () Bool)

(declare-fun e!533442 () Bool)

(declare-fun e!533432 () Bool)

(assert (=> b!947613 (= e!533442 e!533432)))

(declare-fun res!636028 () Bool)

(assert (=> b!947613 (=> (not res!636028) (not e!533432))))

(assert (=> b!947613 (= res!636028 (contains!5208 lt!426666 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!947613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))))))

(declare-fun b!947614 () Bool)

(declare-fun e!533438 () Bool)

(declare-fun call!41140 () Bool)

(assert (=> b!947614 (= e!533438 (not call!41140))))

(declare-fun b!947615 () Bool)

(declare-fun apply!904 (ListLongMap!12319 (_ BitVec 64)) V!32553)

(declare-fun get!14515 (ValueCell!9864 V!32553) V!32553)

(declare-fun dynLambda!1657 (Int (_ BitVec 64)) V!32553)

(assert (=> b!947615 (= e!533432 (= (apply!904 lt!426666 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000)) (get!14515 (select (arr!27607 (_values!5759 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1657 (defaultEntry!5736 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!947615 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28081 (_values!5759 thiss!1141))))))

(assert (=> b!947615 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))))))

(declare-fun bm!41136 () Bool)

(declare-fun call!41139 () ListLongMap!12319)

(declare-fun call!41144 () ListLongMap!12319)

(assert (=> bm!41136 (= call!41139 call!41144)))

(declare-fun b!947616 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947616 (= e!533437 (validKeyInArray!0 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947617 () Bool)

(declare-fun res!636022 () Bool)

(assert (=> b!947617 (=> (not res!636022) (not e!533439))))

(assert (=> b!947617 (= res!636022 e!533442)))

(declare-fun res!636021 () Bool)

(assert (=> b!947617 (=> res!636021 e!533442)))

(declare-fun e!533440 () Bool)

(assert (=> b!947617 (= res!636021 (not e!533440))))

(declare-fun res!636023 () Bool)

(assert (=> b!947617 (=> (not res!636023) (not e!533440))))

(assert (=> b!947617 (= res!636023 (bvslt #b00000000000000000000000000000000 (size!28082 (_keys!10645 thiss!1141))))))

(declare-fun b!947618 () Bool)

(declare-fun e!533443 () Bool)

(assert (=> b!947618 (= e!533443 (= (apply!904 lt!426666 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5572 thiss!1141)))))

(declare-fun bm!41137 () Bool)

(declare-fun call!41145 () Bool)

(assert (=> bm!41137 (= call!41145 (contains!5208 lt!426666 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41138 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3324 (array!57406 array!57404 (_ BitVec 32) (_ BitVec 32) V!32553 V!32553 (_ BitVec 32) Int) ListLongMap!12319)

(assert (=> bm!41138 (= call!41144 (getCurrentListMapNoExtraKeys!3324 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)))))

(declare-fun b!947619 () Bool)

(declare-fun e!533435 () ListLongMap!12319)

(declare-fun call!41141 () ListLongMap!12319)

(assert (=> b!947619 (= e!533435 call!41141)))

(declare-fun b!947620 () Bool)

(declare-fun c!98657 () Bool)

(assert (=> b!947620 (= c!98657 (and (not (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!947620 (= e!533436 e!533435)))

(declare-fun b!947621 () Bool)

(declare-fun call!41142 () ListLongMap!12319)

(assert (=> b!947621 (= e!533436 call!41142)))

(declare-fun b!947622 () Bool)

(assert (=> b!947622 (= e!533438 e!533443)))

(declare-fun res!636025 () Bool)

(assert (=> b!947622 (= res!636025 call!41140)))

(assert (=> b!947622 (=> (not res!636025) (not e!533443))))

(declare-fun b!947623 () Bool)

(declare-fun lt!426661 () Unit!31925)

(assert (=> b!947623 (= e!533431 lt!426661)))

(declare-fun lt!426670 () ListLongMap!12319)

(assert (=> b!947623 (= lt!426670 (getCurrentListMapNoExtraKeys!3324 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)))))

(declare-fun lt!426672 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426672 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426671 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426671 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426673 () Unit!31925)

(declare-fun addStillContains!574 (ListLongMap!12319 (_ BitVec 64) V!32553 (_ BitVec 64)) Unit!31925)

(assert (=> b!947623 (= lt!426673 (addStillContains!574 lt!426670 lt!426672 (zeroValue!5572 thiss!1141) lt!426671))))

(declare-fun +!2818 (ListLongMap!12319 tuple2!13608) ListLongMap!12319)

(assert (=> b!947623 (contains!5208 (+!2818 lt!426670 (tuple2!13609 lt!426672 (zeroValue!5572 thiss!1141))) lt!426671)))

(declare-fun lt!426676 () Unit!31925)

(assert (=> b!947623 (= lt!426676 lt!426673)))

(declare-fun lt!426669 () ListLongMap!12319)

(assert (=> b!947623 (= lt!426669 (getCurrentListMapNoExtraKeys!3324 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)))))

(declare-fun lt!426677 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426677 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426659 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426659 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426657 () Unit!31925)

(declare-fun addApplyDifferent!448 (ListLongMap!12319 (_ BitVec 64) V!32553 (_ BitVec 64)) Unit!31925)

(assert (=> b!947623 (= lt!426657 (addApplyDifferent!448 lt!426669 lt!426677 (minValue!5572 thiss!1141) lt!426659))))

(assert (=> b!947623 (= (apply!904 (+!2818 lt!426669 (tuple2!13609 lt!426677 (minValue!5572 thiss!1141))) lt!426659) (apply!904 lt!426669 lt!426659))))

(declare-fun lt!426663 () Unit!31925)

(assert (=> b!947623 (= lt!426663 lt!426657)))

(declare-fun lt!426660 () ListLongMap!12319)

(assert (=> b!947623 (= lt!426660 (getCurrentListMapNoExtraKeys!3324 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)))))

(declare-fun lt!426674 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426674 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426658 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426658 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426675 () Unit!31925)

(assert (=> b!947623 (= lt!426675 (addApplyDifferent!448 lt!426660 lt!426674 (zeroValue!5572 thiss!1141) lt!426658))))

(assert (=> b!947623 (= (apply!904 (+!2818 lt!426660 (tuple2!13609 lt!426674 (zeroValue!5572 thiss!1141))) lt!426658) (apply!904 lt!426660 lt!426658))))

(declare-fun lt!426662 () Unit!31925)

(assert (=> b!947623 (= lt!426662 lt!426675)))

(declare-fun lt!426665 () ListLongMap!12319)

(assert (=> b!947623 (= lt!426665 (getCurrentListMapNoExtraKeys!3324 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)))))

(declare-fun lt!426664 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426664 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!426668 () (_ BitVec 64))

(assert (=> b!947623 (= lt!426668 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!947623 (= lt!426661 (addApplyDifferent!448 lt!426665 lt!426664 (minValue!5572 thiss!1141) lt!426668))))

(assert (=> b!947623 (= (apply!904 (+!2818 lt!426665 (tuple2!13609 lt!426664 (minValue!5572 thiss!1141))) lt!426668) (apply!904 lt!426665 lt!426668))))

(declare-fun bm!41139 () Bool)

(declare-fun call!41143 () ListLongMap!12319)

(assert (=> bm!41139 (= call!41143 (+!2818 (ite c!98658 call!41144 (ite c!98661 call!41139 call!41141)) (ite (or c!98658 c!98661) (tuple2!13609 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5572 thiss!1141)) (tuple2!13609 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5572 thiss!1141)))))))

(declare-fun b!947624 () Bool)

(declare-fun e!533441 () Bool)

(declare-fun e!533434 () Bool)

(assert (=> b!947624 (= e!533441 e!533434)))

(declare-fun res!636029 () Bool)

(assert (=> b!947624 (= res!636029 call!41145)))

(assert (=> b!947624 (=> (not res!636029) (not e!533434))))

(declare-fun bm!41140 () Bool)

(assert (=> bm!41140 (= call!41141 call!41139)))

(declare-fun b!947625 () Bool)

(declare-fun res!636026 () Bool)

(assert (=> b!947625 (=> (not res!636026) (not e!533439))))

(assert (=> b!947625 (= res!636026 e!533438)))

(declare-fun c!98660 () Bool)

(assert (=> b!947625 (= c!98660 (not (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!947626 () Bool)

(assert (=> b!947626 (= e!533434 (= (apply!904 lt!426666 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5572 thiss!1141)))))

(declare-fun b!947627 () Bool)

(assert (=> b!947627 (= e!533435 call!41142)))

(declare-fun b!947628 () Bool)

(assert (=> b!947628 (= e!533440 (validKeyInArray!0 (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!947629 () Bool)

(declare-fun Unit!31929 () Unit!31925)

(assert (=> b!947629 (= e!533431 Unit!31929)))

(declare-fun b!947630 () Bool)

(assert (=> b!947630 (= e!533439 e!533441)))

(declare-fun c!98662 () Bool)

(assert (=> b!947630 (= c!98662 (not (= (bvand (extraKeys!5468 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!947631 () Bool)

(assert (=> b!947631 (= e!533441 (not call!41145))))

(declare-fun bm!41141 () Bool)

(assert (=> bm!41141 (= call!41142 call!41143)))

(declare-fun b!947632 () Bool)

(assert (=> b!947632 (= e!533433 (+!2818 call!41143 (tuple2!13609 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5572 thiss!1141))))))

(declare-fun bm!41142 () Bool)

(assert (=> bm!41142 (= call!41140 (contains!5208 lt!426666 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!114643 c!98658) b!947632))

(assert (= (and d!114643 (not c!98658)) b!947612))

(assert (= (and b!947612 c!98661) b!947621))

(assert (= (and b!947612 (not c!98661)) b!947620))

(assert (= (and b!947620 c!98657) b!947627))

(assert (= (and b!947620 (not c!98657)) b!947619))

(assert (= (or b!947627 b!947619) bm!41140))

(assert (= (or b!947621 bm!41140) bm!41136))

(assert (= (or b!947621 b!947627) bm!41141))

(assert (= (or b!947632 bm!41136) bm!41138))

(assert (= (or b!947632 bm!41141) bm!41139))

(assert (= (and d!114643 res!636027) b!947616))

(assert (= (and d!114643 c!98659) b!947623))

(assert (= (and d!114643 (not c!98659)) b!947629))

(assert (= (and d!114643 res!636024) b!947617))

(assert (= (and b!947617 res!636023) b!947628))

(assert (= (and b!947617 (not res!636021)) b!947613))

(assert (= (and b!947613 res!636028) b!947615))

(assert (= (and b!947617 res!636022) b!947625))

(assert (= (and b!947625 c!98660) b!947622))

(assert (= (and b!947625 (not c!98660)) b!947614))

(assert (= (and b!947622 res!636025) b!947618))

(assert (= (or b!947622 b!947614) bm!41142))

(assert (= (and b!947625 res!636026) b!947630))

(assert (= (and b!947630 c!98662) b!947624))

(assert (= (and b!947630 (not c!98662)) b!947631))

(assert (= (and b!947624 res!636029) b!947626))

(assert (= (or b!947624 b!947631) bm!41137))

(declare-fun b_lambda!14329 () Bool)

(assert (=> (not b_lambda!14329) (not b!947615)))

(declare-fun t!27771 () Bool)

(declare-fun tb!6181 () Bool)

(assert (=> (and b!947517 (= (defaultEntry!5736 thiss!1141) (defaultEntry!5736 thiss!1141)) t!27771) tb!6181))

(declare-fun result!12249 () Bool)

(assert (=> tb!6181 (= result!12249 tp_is_empty!20691)))

(assert (=> b!947615 t!27771))

(declare-fun b_and!29627 () Bool)

(assert (= b_and!29623 (and (=> t!27771 result!12249) b_and!29627)))

(declare-fun m!880571 () Bool)

(assert (=> bm!41142 m!880571))

(declare-fun m!880573 () Bool)

(assert (=> b!947623 m!880573))

(declare-fun m!880575 () Bool)

(assert (=> b!947623 m!880575))

(declare-fun m!880577 () Bool)

(assert (=> b!947623 m!880577))

(declare-fun m!880579 () Bool)

(assert (=> b!947623 m!880579))

(declare-fun m!880581 () Bool)

(assert (=> b!947623 m!880581))

(declare-fun m!880583 () Bool)

(assert (=> b!947623 m!880583))

(assert (=> b!947623 m!880575))

(declare-fun m!880585 () Bool)

(assert (=> b!947623 m!880585))

(declare-fun m!880587 () Bool)

(assert (=> b!947623 m!880587))

(declare-fun m!880589 () Bool)

(assert (=> b!947623 m!880589))

(assert (=> b!947623 m!880585))

(declare-fun m!880591 () Bool)

(assert (=> b!947623 m!880591))

(declare-fun m!880593 () Bool)

(assert (=> b!947623 m!880593))

(declare-fun m!880595 () Bool)

(assert (=> b!947623 m!880595))

(declare-fun m!880597 () Bool)

(assert (=> b!947623 m!880597))

(declare-fun m!880599 () Bool)

(assert (=> b!947623 m!880599))

(assert (=> b!947623 m!880597))

(declare-fun m!880601 () Bool)

(assert (=> b!947623 m!880601))

(declare-fun m!880603 () Bool)

(assert (=> b!947623 m!880603))

(assert (=> b!947623 m!880599))

(declare-fun m!880605 () Bool)

(assert (=> b!947623 m!880605))

(declare-fun m!880607 () Bool)

(assert (=> b!947618 m!880607))

(declare-fun m!880609 () Bool)

(assert (=> bm!41137 m!880609))

(declare-fun m!880611 () Bool)

(assert (=> bm!41139 m!880611))

(assert (=> b!947616 m!880589))

(assert (=> b!947616 m!880589))

(declare-fun m!880613 () Bool)

(assert (=> b!947616 m!880613))

(declare-fun m!880615 () Bool)

(assert (=> b!947626 m!880615))

(assert (=> b!947628 m!880589))

(assert (=> b!947628 m!880589))

(assert (=> b!947628 m!880613))

(declare-fun m!880617 () Bool)

(assert (=> b!947632 m!880617))

(assert (=> b!947615 m!880589))

(declare-fun m!880619 () Bool)

(assert (=> b!947615 m!880619))

(assert (=> b!947615 m!880589))

(declare-fun m!880621 () Bool)

(assert (=> b!947615 m!880621))

(declare-fun m!880623 () Bool)

(assert (=> b!947615 m!880623))

(assert (=> b!947615 m!880619))

(assert (=> b!947615 m!880623))

(declare-fun m!880625 () Bool)

(assert (=> b!947615 m!880625))

(assert (=> bm!41138 m!880603))

(assert (=> d!114643 m!880559))

(assert (=> b!947613 m!880589))

(assert (=> b!947613 m!880589))

(declare-fun m!880627 () Bool)

(assert (=> b!947613 m!880627))

(assert (=> b!947518 d!114643))

(declare-fun d!114645 () Bool)

(assert (=> d!114645 (= (map!13069 thiss!1141) (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)))))

(declare-fun bs!26628 () Bool)

(assert (= bs!26628 d!114645))

(assert (=> bs!26628 m!880499))

(assert (=> b!947518 d!114645))

(declare-fun d!114647 () Bool)

(declare-fun res!636034 () Bool)

(declare-fun e!533448 () Bool)

(assert (=> d!114647 (=> res!636034 e!533448)))

(assert (=> d!114647 (= res!636034 (= (select (arr!27608 (_keys!10645 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114647 (= (arrayContainsKey!0 (_keys!10645 thiss!1141) key!756 #b00000000000000000000000000000000) e!533448)))

(declare-fun b!947639 () Bool)

(declare-fun e!533449 () Bool)

(assert (=> b!947639 (= e!533448 e!533449)))

(declare-fun res!636035 () Bool)

(assert (=> b!947639 (=> (not res!636035) (not e!533449))))

(assert (=> b!947639 (= res!636035 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28082 (_keys!10645 thiss!1141))))))

(declare-fun b!947640 () Bool)

(assert (=> b!947640 (= e!533449 (arrayContainsKey!0 (_keys!10645 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114647 (not res!636034)) b!947639))

(assert (= (and b!947639 res!636035) b!947640))

(assert (=> d!114647 m!880589))

(declare-fun m!880629 () Bool)

(assert (=> b!947640 m!880629))

(assert (=> b!947518 d!114647))

(declare-fun d!114649 () Bool)

(declare-fun e!533454 () Bool)

(assert (=> d!114649 e!533454))

(declare-fun res!636038 () Bool)

(assert (=> d!114649 (=> res!636038 e!533454)))

(declare-fun lt!426687 () Bool)

(assert (=> d!114649 (= res!636038 (not lt!426687))))

(declare-fun lt!426689 () Bool)

(assert (=> d!114649 (= lt!426687 lt!426689)))

(declare-fun lt!426686 () Unit!31925)

(declare-fun e!533455 () Unit!31925)

(assert (=> d!114649 (= lt!426686 e!533455)))

(declare-fun c!98665 () Bool)

(assert (=> d!114649 (= c!98665 lt!426689)))

(declare-fun containsKey!456 (List!19439 (_ BitVec 64)) Bool)

(assert (=> d!114649 (= lt!426689 (containsKey!456 (toList!6175 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141))) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586))))))

(assert (=> d!114649 (= (contains!5208 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141)) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586))) lt!426687)))

(declare-fun b!947647 () Bool)

(declare-fun lt!426688 () Unit!31925)

(assert (=> b!947647 (= e!533455 lt!426688)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!351 (List!19439 (_ BitVec 64)) Unit!31925)

(assert (=> b!947647 (= lt!426688 (lemmaContainsKeyImpliesGetValueByKeyDefined!351 (toList!6175 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141))) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586))))))

(declare-datatypes ((Option!497 0))(
  ( (Some!496 (v!12932 V!32553)) (None!495) )
))
(declare-fun isDefined!361 (Option!497) Bool)

(declare-fun getValueByKey!491 (List!19439 (_ BitVec 64)) Option!497)

(assert (=> b!947647 (isDefined!361 (getValueByKey!491 (toList!6175 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141))) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586))))))

(declare-fun b!947648 () Bool)

(declare-fun Unit!31930 () Unit!31925)

(assert (=> b!947648 (= e!533455 Unit!31930)))

(declare-fun b!947649 () Bool)

(assert (=> b!947649 (= e!533454 (isDefined!361 (getValueByKey!491 (toList!6175 (getCurrentListMap!3360 (_keys!10645 thiss!1141) (_values!5759 thiss!1141) (mask!27474 thiss!1141) (extraKeys!5468 thiss!1141) (zeroValue!5572 thiss!1141) (minValue!5572 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5736 thiss!1141))) (select (arr!27608 (_keys!10645 thiss!1141)) (index!38811 lt!426586)))))))

(assert (= (and d!114649 c!98665) b!947647))

(assert (= (and d!114649 (not c!98665)) b!947648))

(assert (= (and d!114649 (not res!636038)) b!947649))

(assert (=> d!114649 m!880501))

(declare-fun m!880631 () Bool)

(assert (=> d!114649 m!880631))

(assert (=> b!947647 m!880501))

(declare-fun m!880633 () Bool)

(assert (=> b!947647 m!880633))

(assert (=> b!947647 m!880501))

(declare-fun m!880635 () Bool)

(assert (=> b!947647 m!880635))

(assert (=> b!947647 m!880635))

(declare-fun m!880637 () Bool)

(assert (=> b!947647 m!880637))

(assert (=> b!947649 m!880501))

(assert (=> b!947649 m!880635))

(assert (=> b!947649 m!880635))

(assert (=> b!947649 m!880637))

(assert (=> b!947518 d!114649))

(declare-fun d!114651 () Bool)

(declare-fun e!533456 () Bool)

(assert (=> d!114651 e!533456))

(declare-fun res!636039 () Bool)

(assert (=> d!114651 (=> res!636039 e!533456)))

(declare-fun lt!426691 () Bool)

(assert (=> d!114651 (= res!636039 (not lt!426691))))

(declare-fun lt!426693 () Bool)

(assert (=> d!114651 (= lt!426691 lt!426693)))

(declare-fun lt!426690 () Unit!31925)

(declare-fun e!533457 () Unit!31925)

(assert (=> d!114651 (= lt!426690 e!533457)))

(declare-fun c!98666 () Bool)

(assert (=> d!114651 (= c!98666 lt!426693)))

(assert (=> d!114651 (= lt!426693 (containsKey!456 (toList!6175 (map!13069 thiss!1141)) key!756))))

(assert (=> d!114651 (= (contains!5208 (map!13069 thiss!1141) key!756) lt!426691)))

(declare-fun b!947650 () Bool)

(declare-fun lt!426692 () Unit!31925)

(assert (=> b!947650 (= e!533457 lt!426692)))

(assert (=> b!947650 (= lt!426692 (lemmaContainsKeyImpliesGetValueByKeyDefined!351 (toList!6175 (map!13069 thiss!1141)) key!756))))

(assert (=> b!947650 (isDefined!361 (getValueByKey!491 (toList!6175 (map!13069 thiss!1141)) key!756))))

(declare-fun b!947651 () Bool)

(declare-fun Unit!31931 () Unit!31925)

(assert (=> b!947651 (= e!533457 Unit!31931)))

(declare-fun b!947652 () Bool)

(assert (=> b!947652 (= e!533456 (isDefined!361 (getValueByKey!491 (toList!6175 (map!13069 thiss!1141)) key!756)))))

(assert (= (and d!114651 c!98666) b!947650))

(assert (= (and d!114651 (not c!98666)) b!947651))

(assert (= (and d!114651 (not res!636039)) b!947652))

(declare-fun m!880639 () Bool)

(assert (=> d!114651 m!880639))

(declare-fun m!880641 () Bool)

(assert (=> b!947650 m!880641))

(declare-fun m!880643 () Bool)

(assert (=> b!947650 m!880643))

(assert (=> b!947650 m!880643))

(declare-fun m!880645 () Bool)

(assert (=> b!947650 m!880645))

(assert (=> b!947652 m!880643))

(assert (=> b!947652 m!880643))

(assert (=> b!947652 m!880645))

(assert (=> b!947518 d!114651))

(declare-fun d!114653 () Bool)

(assert (=> d!114653 (arrayContainsKey!0 (_keys!10645 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426696 () Unit!31925)

(declare-fun choose!13 (array!57406 (_ BitVec 64) (_ BitVec 32)) Unit!31925)

(assert (=> d!114653 (= lt!426696 (choose!13 (_keys!10645 thiss!1141) key!756 (index!38811 lt!426586)))))

(assert (=> d!114653 (bvsge (index!38811 lt!426586) #b00000000000000000000000000000000)))

(assert (=> d!114653 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10645 thiss!1141) key!756 (index!38811 lt!426586)) lt!426696)))

(declare-fun bs!26629 () Bool)

(assert (= bs!26629 d!114653))

(assert (=> bs!26629 m!880511))

(declare-fun m!880647 () Bool)

(assert (=> bs!26629 m!880647))

(assert (=> b!947518 d!114653))

(declare-fun b!947659 () Bool)

(declare-fun e!533463 () Bool)

(assert (=> b!947659 (= e!533463 tp_is_empty!20691)))

(declare-fun mapIsEmpty!32923 () Bool)

(declare-fun mapRes!32923 () Bool)

(assert (=> mapIsEmpty!32923 mapRes!32923))

(declare-fun mapNonEmpty!32923 () Bool)

(declare-fun tp!63124 () Bool)

(assert (=> mapNonEmpty!32923 (= mapRes!32923 (and tp!63124 e!533463))))

(declare-fun mapKey!32923 () (_ BitVec 32))

(declare-fun mapRest!32923 () (Array (_ BitVec 32) ValueCell!9864))

(declare-fun mapValue!32923 () ValueCell!9864)

(assert (=> mapNonEmpty!32923 (= mapRest!32917 (store mapRest!32923 mapKey!32923 mapValue!32923))))

(declare-fun condMapEmpty!32923 () Bool)

(declare-fun mapDefault!32923 () ValueCell!9864)

(assert (=> mapNonEmpty!32917 (= condMapEmpty!32923 (= mapRest!32917 ((as const (Array (_ BitVec 32) ValueCell!9864)) mapDefault!32923)))))

(declare-fun e!533462 () Bool)

(assert (=> mapNonEmpty!32917 (= tp!63114 (and e!533462 mapRes!32923))))

(declare-fun b!947660 () Bool)

(assert (=> b!947660 (= e!533462 tp_is_empty!20691)))

(assert (= (and mapNonEmpty!32917 condMapEmpty!32923) mapIsEmpty!32923))

(assert (= (and mapNonEmpty!32917 (not condMapEmpty!32923)) mapNonEmpty!32923))

(assert (= (and mapNonEmpty!32923 ((_ is ValueCellFull!9864) mapValue!32923)) b!947659))

(assert (= (and mapNonEmpty!32917 ((_ is ValueCellFull!9864) mapDefault!32923)) b!947660))

(declare-fun m!880649 () Bool)

(assert (=> mapNonEmpty!32923 m!880649))

(declare-fun b_lambda!14331 () Bool)

(assert (= b_lambda!14329 (or (and b!947517 b_free!18183) b_lambda!14331)))

(check-sat (not b!947565) (not d!114643) (not d!114649) (not d!114651) (not mapNonEmpty!32923) (not b!947650) (not b!947649) (not b!947640) (not b!947613) (not bm!41139) (not b!947564) tp_is_empty!20691 (not d!114639) (not d!114641) (not b!947557) (not b!947566) (not d!114653) (not b!947615) (not bm!41142) (not b!947632) (not b!947618) b_and!29627 (not b!947652) (not d!114633) (not b_lambda!14331) (not d!114645) (not b!947623) (not b_next!18183) (not bm!41138) (not b!947569) (not b!947626) (not b!947628) (not b!947616) (not b!947647) (not bm!41137))
(check-sat b_and!29627 (not b_next!18183))

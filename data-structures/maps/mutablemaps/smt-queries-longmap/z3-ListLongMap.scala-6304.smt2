; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80726 () Bool)

(assert start!80726)

(declare-fun b!946460 () Bool)

(declare-fun b_free!18147 () Bool)

(declare-fun b_next!18147 () Bool)

(assert (=> b!946460 (= b_free!18147 (not b_next!18147))))

(declare-fun tp!62987 () Bool)

(declare-fun b_and!29587 () Bool)

(assert (=> b!946460 (= tp!62987 b_and!29587)))

(declare-fun b!946456 () Bool)

(declare-fun e!532604 () Bool)

(declare-fun e!532605 () Bool)

(assert (=> b!946456 (= e!532604 (not e!532605))))

(declare-fun res!635460 () Bool)

(assert (=> b!946456 (=> res!635460 e!532605)))

(declare-datatypes ((V!32505 0))(
  ( (V!32506 (val!10378 Int)) )
))
(declare-datatypes ((ValueCell!9846 0))(
  ( (ValueCellFull!9846 (v!12912 V!32505)) (EmptyCell!9846) )
))
(declare-datatypes ((array!57320 0))(
  ( (array!57321 (arr!27571 (Array (_ BitVec 32) ValueCell!9846)) (size!28043 (_ BitVec 32))) )
))
(declare-datatypes ((array!57322 0))(
  ( (array!57323 (arr!27572 (Array (_ BitVec 32) (_ BitVec 64))) (size!28044 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4842 0))(
  ( (LongMapFixedSize!4843 (defaultEntry!5718 Int) (mask!27420 (_ BitVec 32)) (extraKeys!5450 (_ BitVec 32)) (zeroValue!5554 V!32505) (minValue!5554 V!32505) (_size!2476 (_ BitVec 32)) (_keys!10611 array!57322) (_values!5741 array!57320) (_vacant!2476 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4842)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946456 (= res!635460 (not (validMask!0 (mask!27420 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!57322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946456 (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9095 0))(
  ( (MissingZero!9095 (index!38750 (_ BitVec 32))) (Found!9095 (index!38751 (_ BitVec 32))) (Intermediate!9095 (undefined!9907 Bool) (index!38752 (_ BitVec 32)) (x!81390 (_ BitVec 32))) (Undefined!9095) (MissingVacant!9095 (index!38753 (_ BitVec 32))) )
))
(declare-fun lt!426287 () SeekEntryResult!9095)

(declare-datatypes ((Unit!31905 0))(
  ( (Unit!31906) )
))
(declare-fun lt!426286 () Unit!31905)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57322 (_ BitVec 64) (_ BitVec 32)) Unit!31905)

(assert (=> b!946456 (= lt!426286 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10611 thiss!1141) key!756 (index!38751 lt!426287)))))

(declare-fun b!946457 () Bool)

(declare-fun e!532607 () Bool)

(declare-fun tp_is_empty!20655 () Bool)

(assert (=> b!946457 (= e!532607 tp_is_empty!20655)))

(declare-fun b!946458 () Bool)

(declare-fun e!532608 () Bool)

(assert (=> b!946458 (= e!532608 tp_is_empty!20655)))

(declare-fun mapIsEmpty!32843 () Bool)

(declare-fun mapRes!32843 () Bool)

(assert (=> mapIsEmpty!32843 mapRes!32843))

(declare-fun b!946459 () Bool)

(declare-fun res!635462 () Bool)

(declare-fun e!532606 () Bool)

(assert (=> b!946459 (=> (not res!635462) (not e!532606))))

(assert (=> b!946459 (= res!635462 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!635461 () Bool)

(assert (=> start!80726 (=> (not res!635461) (not e!532606))))

(declare-fun valid!1826 (LongMapFixedSize!4842) Bool)

(assert (=> start!80726 (= res!635461 (valid!1826 thiss!1141))))

(assert (=> start!80726 e!532606))

(declare-fun e!532610 () Bool)

(assert (=> start!80726 e!532610))

(assert (=> start!80726 true))

(declare-fun e!532609 () Bool)

(declare-fun array_inv!21356 (array!57322) Bool)

(declare-fun array_inv!21357 (array!57320) Bool)

(assert (=> b!946460 (= e!532610 (and tp!62987 tp_is_empty!20655 (array_inv!21356 (_keys!10611 thiss!1141)) (array_inv!21357 (_values!5741 thiss!1141)) e!532609))))

(declare-fun b!946461 () Bool)

(assert (=> b!946461 (= e!532609 (and e!532608 mapRes!32843))))

(declare-fun condMapEmpty!32843 () Bool)

(declare-fun mapDefault!32843 () ValueCell!9846)

(assert (=> b!946461 (= condMapEmpty!32843 (= (arr!27571 (_values!5741 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9846)) mapDefault!32843)))))

(declare-fun b!946462 () Bool)

(assert (=> b!946462 (= e!532606 e!532604)))

(declare-fun res!635459 () Bool)

(assert (=> b!946462 (=> (not res!635459) (not e!532604))))

(get-info :version)

(assert (=> b!946462 (= res!635459 ((_ is Found!9095) lt!426287))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57322 (_ BitVec 32)) SeekEntryResult!9095)

(assert (=> b!946462 (= lt!426287 (seekEntry!0 key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(declare-fun mapNonEmpty!32843 () Bool)

(declare-fun tp!62986 () Bool)

(assert (=> mapNonEmpty!32843 (= mapRes!32843 (and tp!62986 e!532607))))

(declare-fun mapRest!32843 () (Array (_ BitVec 32) ValueCell!9846))

(declare-fun mapKey!32843 () (_ BitVec 32))

(declare-fun mapValue!32843 () ValueCell!9846)

(assert (=> mapNonEmpty!32843 (= (arr!27571 (_values!5741 thiss!1141)) (store mapRest!32843 mapKey!32843 mapValue!32843))))

(declare-fun b!946463 () Bool)

(assert (=> b!946463 (= e!532605 (or (not (= (size!28043 (_values!5741 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27420 thiss!1141)))) (not (= (size!28044 (_keys!10611 thiss!1141)) (size!28043 (_values!5741 thiss!1141)))) (bvslt (mask!27420 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5450 thiss!1141) #b00000000000000000000000000000000)))))

(assert (= (and start!80726 res!635461) b!946459))

(assert (= (and b!946459 res!635462) b!946462))

(assert (= (and b!946462 res!635459) b!946456))

(assert (= (and b!946456 (not res!635460)) b!946463))

(assert (= (and b!946461 condMapEmpty!32843) mapIsEmpty!32843))

(assert (= (and b!946461 (not condMapEmpty!32843)) mapNonEmpty!32843))

(assert (= (and mapNonEmpty!32843 ((_ is ValueCellFull!9846) mapValue!32843)) b!946457))

(assert (= (and b!946461 ((_ is ValueCellFull!9846) mapDefault!32843)) b!946458))

(assert (= b!946460 b!946461))

(assert (= start!80726 b!946460))

(declare-fun m!879871 () Bool)

(assert (=> b!946462 m!879871))

(declare-fun m!879873 () Bool)

(assert (=> start!80726 m!879873))

(declare-fun m!879875 () Bool)

(assert (=> b!946460 m!879875))

(declare-fun m!879877 () Bool)

(assert (=> b!946460 m!879877))

(declare-fun m!879879 () Bool)

(assert (=> mapNonEmpty!32843 m!879879))

(declare-fun m!879881 () Bool)

(assert (=> b!946456 m!879881))

(declare-fun m!879883 () Bool)

(assert (=> b!946456 m!879883))

(declare-fun m!879885 () Bool)

(assert (=> b!946456 m!879885))

(check-sat (not b!946460) (not start!80726) (not b_next!18147) (not b!946462) b_and!29587 tp_is_empty!20655 (not mapNonEmpty!32843) (not b!946456))
(check-sat b_and!29587 (not b_next!18147))
(get-model)

(declare-fun b!946500 () Bool)

(declare-fun e!532641 () SeekEntryResult!9095)

(declare-fun lt!426304 () SeekEntryResult!9095)

(assert (=> b!946500 (= e!532641 (MissingZero!9095 (index!38752 lt!426304)))))

(declare-fun b!946501 () Bool)

(declare-fun e!532643 () SeekEntryResult!9095)

(assert (=> b!946501 (= e!532643 Undefined!9095)))

(declare-fun b!946502 () Bool)

(declare-fun e!532642 () SeekEntryResult!9095)

(assert (=> b!946502 (= e!532642 (Found!9095 (index!38752 lt!426304)))))

(declare-fun b!946503 () Bool)

(assert (=> b!946503 (= e!532643 e!532642)))

(declare-fun lt!426302 () (_ BitVec 64))

(assert (=> b!946503 (= lt!426302 (select (arr!27572 (_keys!10611 thiss!1141)) (index!38752 lt!426304)))))

(declare-fun c!98509 () Bool)

(assert (=> b!946503 (= c!98509 (= lt!426302 key!756))))

(declare-fun b!946504 () Bool)

(declare-fun c!98508 () Bool)

(assert (=> b!946504 (= c!98508 (= lt!426302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946504 (= e!532642 e!532641)))

(declare-fun d!114485 () Bool)

(declare-fun lt!426303 () SeekEntryResult!9095)

(assert (=> d!114485 (and (or ((_ is MissingVacant!9095) lt!426303) (not ((_ is Found!9095) lt!426303)) (and (bvsge (index!38751 lt!426303) #b00000000000000000000000000000000) (bvslt (index!38751 lt!426303) (size!28044 (_keys!10611 thiss!1141))))) (not ((_ is MissingVacant!9095) lt!426303)) (or (not ((_ is Found!9095) lt!426303)) (= (select (arr!27572 (_keys!10611 thiss!1141)) (index!38751 lt!426303)) key!756)))))

(assert (=> d!114485 (= lt!426303 e!532643)))

(declare-fun c!98507 () Bool)

(assert (=> d!114485 (= c!98507 (and ((_ is Intermediate!9095) lt!426304) (undefined!9907 lt!426304)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57322 (_ BitVec 32)) SeekEntryResult!9095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114485 (= lt!426304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27420 thiss!1141)) key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(assert (=> d!114485 (validMask!0 (mask!27420 thiss!1141))))

(assert (=> d!114485 (= (seekEntry!0 key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)) lt!426303)))

(declare-fun b!946505 () Bool)

(declare-fun lt!426305 () SeekEntryResult!9095)

(assert (=> b!946505 (= e!532641 (ite ((_ is MissingVacant!9095) lt!426305) (MissingZero!9095 (index!38753 lt!426305)) lt!426305))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57322 (_ BitVec 32)) SeekEntryResult!9095)

(assert (=> b!946505 (= lt!426305 (seekKeyOrZeroReturnVacant!0 (x!81390 lt!426304) (index!38752 lt!426304) (index!38752 lt!426304) key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(assert (= (and d!114485 c!98507) b!946501))

(assert (= (and d!114485 (not c!98507)) b!946503))

(assert (= (and b!946503 c!98509) b!946502))

(assert (= (and b!946503 (not c!98509)) b!946504))

(assert (= (and b!946504 c!98508) b!946500))

(assert (= (and b!946504 (not c!98508)) b!946505))

(declare-fun m!879903 () Bool)

(assert (=> b!946503 m!879903))

(declare-fun m!879905 () Bool)

(assert (=> d!114485 m!879905))

(declare-fun m!879907 () Bool)

(assert (=> d!114485 m!879907))

(assert (=> d!114485 m!879907))

(declare-fun m!879909 () Bool)

(assert (=> d!114485 m!879909))

(assert (=> d!114485 m!879881))

(declare-fun m!879911 () Bool)

(assert (=> b!946505 m!879911))

(assert (=> b!946462 d!114485))

(declare-fun d!114487 () Bool)

(declare-fun res!635481 () Bool)

(declare-fun e!532646 () Bool)

(assert (=> d!114487 (=> (not res!635481) (not e!532646))))

(declare-fun simpleValid!358 (LongMapFixedSize!4842) Bool)

(assert (=> d!114487 (= res!635481 (simpleValid!358 thiss!1141))))

(assert (=> d!114487 (= (valid!1826 thiss!1141) e!532646)))

(declare-fun b!946512 () Bool)

(declare-fun res!635482 () Bool)

(assert (=> b!946512 (=> (not res!635482) (not e!532646))))

(declare-fun arrayCountValidKeys!0 (array!57322 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946512 (= res!635482 (= (arrayCountValidKeys!0 (_keys!10611 thiss!1141) #b00000000000000000000000000000000 (size!28044 (_keys!10611 thiss!1141))) (_size!2476 thiss!1141)))))

(declare-fun b!946513 () Bool)

(declare-fun res!635483 () Bool)

(assert (=> b!946513 (=> (not res!635483) (not e!532646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57322 (_ BitVec 32)) Bool)

(assert (=> b!946513 (= res!635483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(declare-fun b!946514 () Bool)

(declare-datatypes ((List!19428 0))(
  ( (Nil!19425) (Cons!19424 (h!20578 (_ BitVec 64)) (t!27757 List!19428)) )
))
(declare-fun arrayNoDuplicates!0 (array!57322 (_ BitVec 32) List!19428) Bool)

(assert (=> b!946514 (= e!532646 (arrayNoDuplicates!0 (_keys!10611 thiss!1141) #b00000000000000000000000000000000 Nil!19425))))

(assert (= (and d!114487 res!635481) b!946512))

(assert (= (and b!946512 res!635482) b!946513))

(assert (= (and b!946513 res!635483) b!946514))

(declare-fun m!879913 () Bool)

(assert (=> d!114487 m!879913))

(declare-fun m!879915 () Bool)

(assert (=> b!946512 m!879915))

(declare-fun m!879917 () Bool)

(assert (=> b!946513 m!879917))

(declare-fun m!879919 () Bool)

(assert (=> b!946514 m!879919))

(assert (=> start!80726 d!114487))

(declare-fun d!114489 () Bool)

(assert (=> d!114489 (= (validMask!0 (mask!27420 thiss!1141)) (and (or (= (mask!27420 thiss!1141) #b00000000000000000000000000000111) (= (mask!27420 thiss!1141) #b00000000000000000000000000001111) (= (mask!27420 thiss!1141) #b00000000000000000000000000011111) (= (mask!27420 thiss!1141) #b00000000000000000000000000111111) (= (mask!27420 thiss!1141) #b00000000000000000000000001111111) (= (mask!27420 thiss!1141) #b00000000000000000000000011111111) (= (mask!27420 thiss!1141) #b00000000000000000000000111111111) (= (mask!27420 thiss!1141) #b00000000000000000000001111111111) (= (mask!27420 thiss!1141) #b00000000000000000000011111111111) (= (mask!27420 thiss!1141) #b00000000000000000000111111111111) (= (mask!27420 thiss!1141) #b00000000000000000001111111111111) (= (mask!27420 thiss!1141) #b00000000000000000011111111111111) (= (mask!27420 thiss!1141) #b00000000000000000111111111111111) (= (mask!27420 thiss!1141) #b00000000000000001111111111111111) (= (mask!27420 thiss!1141) #b00000000000000011111111111111111) (= (mask!27420 thiss!1141) #b00000000000000111111111111111111) (= (mask!27420 thiss!1141) #b00000000000001111111111111111111) (= (mask!27420 thiss!1141) #b00000000000011111111111111111111) (= (mask!27420 thiss!1141) #b00000000000111111111111111111111) (= (mask!27420 thiss!1141) #b00000000001111111111111111111111) (= (mask!27420 thiss!1141) #b00000000011111111111111111111111) (= (mask!27420 thiss!1141) #b00000000111111111111111111111111) (= (mask!27420 thiss!1141) #b00000001111111111111111111111111) (= (mask!27420 thiss!1141) #b00000011111111111111111111111111) (= (mask!27420 thiss!1141) #b00000111111111111111111111111111) (= (mask!27420 thiss!1141) #b00001111111111111111111111111111) (= (mask!27420 thiss!1141) #b00011111111111111111111111111111) (= (mask!27420 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27420 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!946456 d!114489))

(declare-fun d!114491 () Bool)

(declare-fun res!635488 () Bool)

(declare-fun e!532651 () Bool)

(assert (=> d!114491 (=> res!635488 e!532651)))

(assert (=> d!114491 (= res!635488 (= (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114491 (= (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 #b00000000000000000000000000000000) e!532651)))

(declare-fun b!946519 () Bool)

(declare-fun e!532652 () Bool)

(assert (=> b!946519 (= e!532651 e!532652)))

(declare-fun res!635489 () Bool)

(assert (=> b!946519 (=> (not res!635489) (not e!532652))))

(assert (=> b!946519 (= res!635489 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28044 (_keys!10611 thiss!1141))))))

(declare-fun b!946520 () Bool)

(assert (=> b!946520 (= e!532652 (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114491 (not res!635488)) b!946519))

(assert (= (and b!946519 res!635489) b!946520))

(declare-fun m!879921 () Bool)

(assert (=> d!114491 m!879921))

(declare-fun m!879923 () Bool)

(assert (=> b!946520 m!879923))

(assert (=> b!946456 d!114491))

(declare-fun d!114493 () Bool)

(assert (=> d!114493 (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426308 () Unit!31905)

(declare-fun choose!13 (array!57322 (_ BitVec 64) (_ BitVec 32)) Unit!31905)

(assert (=> d!114493 (= lt!426308 (choose!13 (_keys!10611 thiss!1141) key!756 (index!38751 lt!426287)))))

(assert (=> d!114493 (bvsge (index!38751 lt!426287) #b00000000000000000000000000000000)))

(assert (=> d!114493 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10611 thiss!1141) key!756 (index!38751 lt!426287)) lt!426308)))

(declare-fun bs!26602 () Bool)

(assert (= bs!26602 d!114493))

(assert (=> bs!26602 m!879883))

(declare-fun m!879925 () Bool)

(assert (=> bs!26602 m!879925))

(assert (=> b!946456 d!114493))

(declare-fun d!114495 () Bool)

(assert (=> d!114495 (= (array_inv!21356 (_keys!10611 thiss!1141)) (bvsge (size!28044 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946460 d!114495))

(declare-fun d!114497 () Bool)

(assert (=> d!114497 (= (array_inv!21357 (_values!5741 thiss!1141)) (bvsge (size!28043 (_values!5741 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946460 d!114497))

(declare-fun mapNonEmpty!32849 () Bool)

(declare-fun mapRes!32849 () Bool)

(declare-fun tp!62996 () Bool)

(declare-fun e!532658 () Bool)

(assert (=> mapNonEmpty!32849 (= mapRes!32849 (and tp!62996 e!532658))))

(declare-fun mapKey!32849 () (_ BitVec 32))

(declare-fun mapRest!32849 () (Array (_ BitVec 32) ValueCell!9846))

(declare-fun mapValue!32849 () ValueCell!9846)

(assert (=> mapNonEmpty!32849 (= mapRest!32843 (store mapRest!32849 mapKey!32849 mapValue!32849))))

(declare-fun b!946528 () Bool)

(declare-fun e!532657 () Bool)

(assert (=> b!946528 (= e!532657 tp_is_empty!20655)))

(declare-fun condMapEmpty!32849 () Bool)

(declare-fun mapDefault!32849 () ValueCell!9846)

(assert (=> mapNonEmpty!32843 (= condMapEmpty!32849 (= mapRest!32843 ((as const (Array (_ BitVec 32) ValueCell!9846)) mapDefault!32849)))))

(assert (=> mapNonEmpty!32843 (= tp!62986 (and e!532657 mapRes!32849))))

(declare-fun b!946527 () Bool)

(assert (=> b!946527 (= e!532658 tp_is_empty!20655)))

(declare-fun mapIsEmpty!32849 () Bool)

(assert (=> mapIsEmpty!32849 mapRes!32849))

(assert (= (and mapNonEmpty!32843 condMapEmpty!32849) mapIsEmpty!32849))

(assert (= (and mapNonEmpty!32843 (not condMapEmpty!32849)) mapNonEmpty!32849))

(assert (= (and mapNonEmpty!32849 ((_ is ValueCellFull!9846) mapValue!32849)) b!946527))

(assert (= (and mapNonEmpty!32843 ((_ is ValueCellFull!9846) mapDefault!32849)) b!946528))

(declare-fun m!879927 () Bool)

(assert (=> mapNonEmpty!32849 m!879927))

(check-sat (not b!946514) (not b!946520) (not b!946505) (not b_next!18147) (not mapNonEmpty!32849) (not d!114485) b_and!29587 (not b!946512) (not d!114487) tp_is_empty!20655 (not d!114493) (not b!946513))
(check-sat b_and!29587 (not b_next!18147))
(get-model)

(declare-fun bm!41085 () Bool)

(declare-fun call!41088 () Bool)

(assert (=> bm!41085 (= call!41088 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(declare-fun b!946537 () Bool)

(declare-fun e!532667 () Bool)

(assert (=> b!946537 (= e!532667 call!41088)))

(declare-fun b!946538 () Bool)

(declare-fun e!532666 () Bool)

(declare-fun e!532665 () Bool)

(assert (=> b!946538 (= e!532666 e!532665)))

(declare-fun c!98512 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!946538 (= c!98512 (validKeyInArray!0 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946539 () Bool)

(assert (=> b!946539 (= e!532665 e!532667)))

(declare-fun lt!426316 () (_ BitVec 64))

(assert (=> b!946539 (= lt!426316 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!426315 () Unit!31905)

(assert (=> b!946539 (= lt!426315 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10611 thiss!1141) lt!426316 #b00000000000000000000000000000000))))

(assert (=> b!946539 (arrayContainsKey!0 (_keys!10611 thiss!1141) lt!426316 #b00000000000000000000000000000000)))

(declare-fun lt!426317 () Unit!31905)

(assert (=> b!946539 (= lt!426317 lt!426315)))

(declare-fun res!635494 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57322 (_ BitVec 32)) SeekEntryResult!9095)

(assert (=> b!946539 (= res!635494 (= (seekEntryOrOpen!0 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000) (_keys!10611 thiss!1141) (mask!27420 thiss!1141)) (Found!9095 #b00000000000000000000000000000000)))))

(assert (=> b!946539 (=> (not res!635494) (not e!532667))))

(declare-fun b!946540 () Bool)

(assert (=> b!946540 (= e!532665 call!41088)))

(declare-fun d!114499 () Bool)

(declare-fun res!635495 () Bool)

(assert (=> d!114499 (=> res!635495 e!532666)))

(assert (=> d!114499 (= res!635495 (bvsge #b00000000000000000000000000000000 (size!28044 (_keys!10611 thiss!1141))))))

(assert (=> d!114499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)) e!532666)))

(assert (= (and d!114499 (not res!635495)) b!946538))

(assert (= (and b!946538 c!98512) b!946539))

(assert (= (and b!946538 (not c!98512)) b!946540))

(assert (= (and b!946539 res!635494) b!946537))

(assert (= (or b!946537 b!946540) bm!41085))

(declare-fun m!879929 () Bool)

(assert (=> bm!41085 m!879929))

(assert (=> b!946538 m!879921))

(assert (=> b!946538 m!879921))

(declare-fun m!879931 () Bool)

(assert (=> b!946538 m!879931))

(assert (=> b!946539 m!879921))

(declare-fun m!879933 () Bool)

(assert (=> b!946539 m!879933))

(declare-fun m!879935 () Bool)

(assert (=> b!946539 m!879935))

(assert (=> b!946539 m!879921))

(declare-fun m!879937 () Bool)

(assert (=> b!946539 m!879937))

(assert (=> b!946513 d!114499))

(declare-fun b!946549 () Bool)

(declare-fun e!532673 () (_ BitVec 32))

(declare-fun call!41091 () (_ BitVec 32))

(assert (=> b!946549 (= e!532673 (bvadd #b00000000000000000000000000000001 call!41091))))

(declare-fun d!114501 () Bool)

(declare-fun lt!426320 () (_ BitVec 32))

(assert (=> d!114501 (and (bvsge lt!426320 #b00000000000000000000000000000000) (bvsle lt!426320 (bvsub (size!28044 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!532672 () (_ BitVec 32))

(assert (=> d!114501 (= lt!426320 e!532672)))

(declare-fun c!98518 () Bool)

(assert (=> d!114501 (= c!98518 (bvsge #b00000000000000000000000000000000 (size!28044 (_keys!10611 thiss!1141))))))

(assert (=> d!114501 (and (bvsle #b00000000000000000000000000000000 (size!28044 (_keys!10611 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28044 (_keys!10611 thiss!1141)) (size!28044 (_keys!10611 thiss!1141))))))

(assert (=> d!114501 (= (arrayCountValidKeys!0 (_keys!10611 thiss!1141) #b00000000000000000000000000000000 (size!28044 (_keys!10611 thiss!1141))) lt!426320)))

(declare-fun b!946550 () Bool)

(assert (=> b!946550 (= e!532673 call!41091)))

(declare-fun b!946551 () Bool)

(assert (=> b!946551 (= e!532672 e!532673)))

(declare-fun c!98517 () Bool)

(assert (=> b!946551 (= c!98517 (validKeyInArray!0 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946552 () Bool)

(assert (=> b!946552 (= e!532672 #b00000000000000000000000000000000)))

(declare-fun bm!41088 () Bool)

(assert (=> bm!41088 (= call!41091 (arrayCountValidKeys!0 (_keys!10611 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28044 (_keys!10611 thiss!1141))))))

(assert (= (and d!114501 c!98518) b!946552))

(assert (= (and d!114501 (not c!98518)) b!946551))

(assert (= (and b!946551 c!98517) b!946549))

(assert (= (and b!946551 (not c!98517)) b!946550))

(assert (= (or b!946549 b!946550) bm!41088))

(assert (=> b!946551 m!879921))

(assert (=> b!946551 m!879921))

(assert (=> b!946551 m!879931))

(declare-fun m!879939 () Bool)

(assert (=> bm!41088 m!879939))

(assert (=> b!946512 d!114501))

(declare-fun b!946562 () Bool)

(declare-fun res!635506 () Bool)

(declare-fun e!532676 () Bool)

(assert (=> b!946562 (=> (not res!635506) (not e!532676))))

(declare-fun size!28047 (LongMapFixedSize!4842) (_ BitVec 32))

(assert (=> b!946562 (= res!635506 (bvsge (size!28047 thiss!1141) (_size!2476 thiss!1141)))))

(declare-fun b!946563 () Bool)

(declare-fun res!635505 () Bool)

(assert (=> b!946563 (=> (not res!635505) (not e!532676))))

(assert (=> b!946563 (= res!635505 (= (size!28047 thiss!1141) (bvadd (_size!2476 thiss!1141) (bvsdiv (bvadd (extraKeys!5450 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!114503 () Bool)

(declare-fun res!635504 () Bool)

(assert (=> d!114503 (=> (not res!635504) (not e!532676))))

(assert (=> d!114503 (= res!635504 (validMask!0 (mask!27420 thiss!1141)))))

(assert (=> d!114503 (= (simpleValid!358 thiss!1141) e!532676)))

(declare-fun b!946561 () Bool)

(declare-fun res!635507 () Bool)

(assert (=> b!946561 (=> (not res!635507) (not e!532676))))

(assert (=> b!946561 (= res!635507 (and (= (size!28043 (_values!5741 thiss!1141)) (bvadd (mask!27420 thiss!1141) #b00000000000000000000000000000001)) (= (size!28044 (_keys!10611 thiss!1141)) (size!28043 (_values!5741 thiss!1141))) (bvsge (_size!2476 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2476 thiss!1141) (bvadd (mask!27420 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!946564 () Bool)

(assert (=> b!946564 (= e!532676 (and (bvsge (extraKeys!5450 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5450 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2476 thiss!1141) #b00000000000000000000000000000000)))))

(assert (= (and d!114503 res!635504) b!946561))

(assert (= (and b!946561 res!635507) b!946562))

(assert (= (and b!946562 res!635506) b!946563))

(assert (= (and b!946563 res!635505) b!946564))

(declare-fun m!879941 () Bool)

(assert (=> b!946562 m!879941))

(assert (=> b!946563 m!879941))

(assert (=> d!114503 m!879881))

(assert (=> d!114487 d!114503))

(assert (=> d!114493 d!114491))

(declare-fun d!114505 () Bool)

(assert (=> d!114505 (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 #b00000000000000000000000000000000)))

(assert (=> d!114505 true))

(declare-fun _$60!436 () Unit!31905)

(assert (=> d!114505 (= (choose!13 (_keys!10611 thiss!1141) key!756 (index!38751 lt!426287)) _$60!436)))

(declare-fun bs!26603 () Bool)

(assert (= bs!26603 d!114505))

(assert (=> bs!26603 m!879883))

(assert (=> d!114493 d!114505))

(declare-fun b!946577 () Bool)

(declare-fun e!532684 () SeekEntryResult!9095)

(assert (=> b!946577 (= e!532684 (Found!9095 (index!38752 lt!426304)))))

(declare-fun b!946579 () Bool)

(declare-fun e!532685 () SeekEntryResult!9095)

(assert (=> b!946579 (= e!532685 Undefined!9095)))

(declare-fun b!946580 () Bool)

(declare-fun c!98525 () Bool)

(declare-fun lt!426326 () (_ BitVec 64))

(assert (=> b!946580 (= c!98525 (= lt!426326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!532683 () SeekEntryResult!9095)

(assert (=> b!946580 (= e!532684 e!532683)))

(declare-fun b!946581 () Bool)

(assert (=> b!946581 (= e!532685 e!532684)))

(declare-fun c!98527 () Bool)

(assert (=> b!946581 (= c!98527 (= lt!426326 key!756))))

(declare-fun b!946582 () Bool)

(assert (=> b!946582 (= e!532683 (MissingVacant!9095 (index!38752 lt!426304)))))

(declare-fun d!114507 () Bool)

(declare-fun lt!426325 () SeekEntryResult!9095)

(assert (=> d!114507 (and (or ((_ is Undefined!9095) lt!426325) (not ((_ is Found!9095) lt!426325)) (and (bvsge (index!38751 lt!426325) #b00000000000000000000000000000000) (bvslt (index!38751 lt!426325) (size!28044 (_keys!10611 thiss!1141))))) (or ((_ is Undefined!9095) lt!426325) ((_ is Found!9095) lt!426325) (not ((_ is MissingVacant!9095) lt!426325)) (not (= (index!38753 lt!426325) (index!38752 lt!426304))) (and (bvsge (index!38753 lt!426325) #b00000000000000000000000000000000) (bvslt (index!38753 lt!426325) (size!28044 (_keys!10611 thiss!1141))))) (or ((_ is Undefined!9095) lt!426325) (ite ((_ is Found!9095) lt!426325) (= (select (arr!27572 (_keys!10611 thiss!1141)) (index!38751 lt!426325)) key!756) (and ((_ is MissingVacant!9095) lt!426325) (= (index!38753 lt!426325) (index!38752 lt!426304)) (= (select (arr!27572 (_keys!10611 thiss!1141)) (index!38753 lt!426325)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114507 (= lt!426325 e!532685)))

(declare-fun c!98526 () Bool)

(assert (=> d!114507 (= c!98526 (bvsge (x!81390 lt!426304) #b01111111111111111111111111111110))))

(assert (=> d!114507 (= lt!426326 (select (arr!27572 (_keys!10611 thiss!1141)) (index!38752 lt!426304)))))

(assert (=> d!114507 (validMask!0 (mask!27420 thiss!1141))))

(assert (=> d!114507 (= (seekKeyOrZeroReturnVacant!0 (x!81390 lt!426304) (index!38752 lt!426304) (index!38752 lt!426304) key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)) lt!426325)))

(declare-fun b!946578 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946578 (= e!532683 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81390 lt!426304) #b00000000000000000000000000000001) (nextIndex!0 (index!38752 lt!426304) (x!81390 lt!426304) (mask!27420 thiss!1141)) (index!38752 lt!426304) key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(assert (= (and d!114507 c!98526) b!946579))

(assert (= (and d!114507 (not c!98526)) b!946581))

(assert (= (and b!946581 c!98527) b!946577))

(assert (= (and b!946581 (not c!98527)) b!946580))

(assert (= (and b!946580 c!98525) b!946582))

(assert (= (and b!946580 (not c!98525)) b!946578))

(declare-fun m!879943 () Bool)

(assert (=> d!114507 m!879943))

(declare-fun m!879945 () Bool)

(assert (=> d!114507 m!879945))

(assert (=> d!114507 m!879903))

(assert (=> d!114507 m!879881))

(declare-fun m!879947 () Bool)

(assert (=> b!946578 m!879947))

(assert (=> b!946578 m!879947))

(declare-fun m!879949 () Bool)

(assert (=> b!946578 m!879949))

(assert (=> b!946505 d!114507))

(declare-fun d!114509 () Bool)

(declare-fun res!635508 () Bool)

(declare-fun e!532686 () Bool)

(assert (=> d!114509 (=> res!635508 e!532686)))

(assert (=> d!114509 (= res!635508 (= (select (arr!27572 (_keys!10611 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!114509 (= (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!532686)))

(declare-fun b!946583 () Bool)

(declare-fun e!532687 () Bool)

(assert (=> b!946583 (= e!532686 e!532687)))

(declare-fun res!635509 () Bool)

(assert (=> b!946583 (=> (not res!635509) (not e!532687))))

(assert (=> b!946583 (= res!635509 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!28044 (_keys!10611 thiss!1141))))))

(declare-fun b!946584 () Bool)

(assert (=> b!946584 (= e!532687 (arrayContainsKey!0 (_keys!10611 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!114509 (not res!635508)) b!946583))

(assert (= (and b!946583 res!635509) b!946584))

(declare-fun m!879951 () Bool)

(assert (=> d!114509 m!879951))

(declare-fun m!879953 () Bool)

(assert (=> b!946584 m!879953))

(assert (=> b!946520 d!114509))

(declare-fun b!946603 () Bool)

(declare-fun e!532701 () SeekEntryResult!9095)

(declare-fun e!532699 () SeekEntryResult!9095)

(assert (=> b!946603 (= e!532701 e!532699)))

(declare-fun c!98535 () Bool)

(declare-fun lt!426331 () (_ BitVec 64))

(assert (=> b!946603 (= c!98535 (or (= lt!426331 key!756) (= (bvadd lt!426331 lt!426331) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!946604 () Bool)

(declare-fun lt!426332 () SeekEntryResult!9095)

(assert (=> b!946604 (and (bvsge (index!38752 lt!426332) #b00000000000000000000000000000000) (bvslt (index!38752 lt!426332) (size!28044 (_keys!10611 thiss!1141))))))

(declare-fun res!635516 () Bool)

(assert (=> b!946604 (= res!635516 (= (select (arr!27572 (_keys!10611 thiss!1141)) (index!38752 lt!426332)) key!756))))

(declare-fun e!532700 () Bool)

(assert (=> b!946604 (=> res!635516 e!532700)))

(declare-fun e!532698 () Bool)

(assert (=> b!946604 (= e!532698 e!532700)))

(declare-fun b!946605 () Bool)

(assert (=> b!946605 (and (bvsge (index!38752 lt!426332) #b00000000000000000000000000000000) (bvslt (index!38752 lt!426332) (size!28044 (_keys!10611 thiss!1141))))))

(assert (=> b!946605 (= e!532700 (= (select (arr!27572 (_keys!10611 thiss!1141)) (index!38752 lt!426332)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!946606 () Bool)

(declare-fun e!532702 () Bool)

(assert (=> b!946606 (= e!532702 (bvsge (x!81390 lt!426332) #b01111111111111111111111111111110))))

(declare-fun b!946607 () Bool)

(assert (=> b!946607 (= e!532699 (Intermediate!9095 false (toIndex!0 key!756 (mask!27420 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!114511 () Bool)

(assert (=> d!114511 e!532702))

(declare-fun c!98534 () Bool)

(assert (=> d!114511 (= c!98534 (and ((_ is Intermediate!9095) lt!426332) (undefined!9907 lt!426332)))))

(assert (=> d!114511 (= lt!426332 e!532701)))

(declare-fun c!98536 () Bool)

(assert (=> d!114511 (= c!98536 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114511 (= lt!426331 (select (arr!27572 (_keys!10611 thiss!1141)) (toIndex!0 key!756 (mask!27420 thiss!1141))))))

(assert (=> d!114511 (validMask!0 (mask!27420 thiss!1141))))

(assert (=> d!114511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27420 thiss!1141)) key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)) lt!426332)))

(declare-fun b!946608 () Bool)

(assert (=> b!946608 (= e!532702 e!532698)))

(declare-fun res!635517 () Bool)

(assert (=> b!946608 (= res!635517 (and ((_ is Intermediate!9095) lt!426332) (not (undefined!9907 lt!426332)) (bvslt (x!81390 lt!426332) #b01111111111111111111111111111110) (bvsge (x!81390 lt!426332) #b00000000000000000000000000000000) (bvsge (x!81390 lt!426332) #b00000000000000000000000000000000)))))

(assert (=> b!946608 (=> (not res!635517) (not e!532698))))

(declare-fun b!946609 () Bool)

(assert (=> b!946609 (and (bvsge (index!38752 lt!426332) #b00000000000000000000000000000000) (bvslt (index!38752 lt!426332) (size!28044 (_keys!10611 thiss!1141))))))

(declare-fun res!635518 () Bool)

(assert (=> b!946609 (= res!635518 (= (select (arr!27572 (_keys!10611 thiss!1141)) (index!38752 lt!426332)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!946609 (=> res!635518 e!532700)))

(declare-fun b!946610 () Bool)

(assert (=> b!946610 (= e!532699 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27420 thiss!1141)) #b00000000000000000000000000000000 (mask!27420 thiss!1141)) key!756 (_keys!10611 thiss!1141) (mask!27420 thiss!1141)))))

(declare-fun b!946611 () Bool)

(assert (=> b!946611 (= e!532701 (Intermediate!9095 true (toIndex!0 key!756 (mask!27420 thiss!1141)) #b00000000000000000000000000000000))))

(assert (= (and d!114511 c!98536) b!946611))

(assert (= (and d!114511 (not c!98536)) b!946603))

(assert (= (and b!946603 c!98535) b!946607))

(assert (= (and b!946603 (not c!98535)) b!946610))

(assert (= (and d!114511 c!98534) b!946606))

(assert (= (and d!114511 (not c!98534)) b!946608))

(assert (= (and b!946608 res!635517) b!946604))

(assert (= (and b!946604 (not res!635516)) b!946609))

(assert (= (and b!946609 (not res!635518)) b!946605))

(declare-fun m!879955 () Bool)

(assert (=> b!946605 m!879955))

(assert (=> d!114511 m!879907))

(declare-fun m!879957 () Bool)

(assert (=> d!114511 m!879957))

(assert (=> d!114511 m!879881))

(assert (=> b!946610 m!879907))

(declare-fun m!879959 () Bool)

(assert (=> b!946610 m!879959))

(assert (=> b!946610 m!879959))

(declare-fun m!879961 () Bool)

(assert (=> b!946610 m!879961))

(assert (=> b!946604 m!879955))

(assert (=> b!946609 m!879955))

(assert (=> d!114485 d!114511))

(declare-fun d!114513 () Bool)

(declare-fun lt!426338 () (_ BitVec 32))

(declare-fun lt!426337 () (_ BitVec 32))

(assert (=> d!114513 (= lt!426338 (bvmul (bvxor lt!426337 (bvlshr lt!426337 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114513 (= lt!426337 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114513 (and (bvsge (mask!27420 thiss!1141) #b00000000000000000000000000000000) (let ((res!635519 (let ((h!20579 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81408 (bvmul (bvxor h!20579 (bvlshr h!20579 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81408 (bvlshr x!81408 #b00000000000000000000000000001101)) (mask!27420 thiss!1141)))))) (and (bvslt res!635519 (bvadd (mask!27420 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!635519 #b00000000000000000000000000000000))))))

(assert (=> d!114513 (= (toIndex!0 key!756 (mask!27420 thiss!1141)) (bvand (bvxor lt!426338 (bvlshr lt!426338 #b00000000000000000000000000001101)) (mask!27420 thiss!1141)))))

(assert (=> d!114485 d!114513))

(assert (=> d!114485 d!114489))

(declare-fun b!946622 () Bool)

(declare-fun e!532712 () Bool)

(declare-fun call!41094 () Bool)

(assert (=> b!946622 (= e!532712 call!41094)))

(declare-fun bm!41091 () Bool)

(declare-fun c!98539 () Bool)

(assert (=> bm!41091 (= call!41094 (arrayNoDuplicates!0 (_keys!10611 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98539 (Cons!19424 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000) Nil!19425) Nil!19425)))))

(declare-fun b!946624 () Bool)

(declare-fun e!532711 () Bool)

(declare-fun e!532714 () Bool)

(assert (=> b!946624 (= e!532711 e!532714)))

(declare-fun res!635526 () Bool)

(assert (=> b!946624 (=> (not res!635526) (not e!532714))))

(declare-fun e!532713 () Bool)

(assert (=> b!946624 (= res!635526 (not e!532713))))

(declare-fun res!635528 () Bool)

(assert (=> b!946624 (=> (not res!635528) (not e!532713))))

(assert (=> b!946624 (= res!635528 (validKeyInArray!0 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946625 () Bool)

(assert (=> b!946625 (= e!532714 e!532712)))

(assert (=> b!946625 (= c!98539 (validKeyInArray!0 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!946626 () Bool)

(assert (=> b!946626 (= e!532712 call!41094)))

(declare-fun b!946623 () Bool)

(declare-fun contains!5203 (List!19428 (_ BitVec 64)) Bool)

(assert (=> b!946623 (= e!532713 (contains!5203 Nil!19425 (select (arr!27572 (_keys!10611 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114515 () Bool)

(declare-fun res!635527 () Bool)

(assert (=> d!114515 (=> res!635527 e!532711)))

(assert (=> d!114515 (= res!635527 (bvsge #b00000000000000000000000000000000 (size!28044 (_keys!10611 thiss!1141))))))

(assert (=> d!114515 (= (arrayNoDuplicates!0 (_keys!10611 thiss!1141) #b00000000000000000000000000000000 Nil!19425) e!532711)))

(assert (= (and d!114515 (not res!635527)) b!946624))

(assert (= (and b!946624 res!635528) b!946623))

(assert (= (and b!946624 res!635526) b!946625))

(assert (= (and b!946625 c!98539) b!946622))

(assert (= (and b!946625 (not c!98539)) b!946626))

(assert (= (or b!946622 b!946626) bm!41091))

(assert (=> bm!41091 m!879921))

(declare-fun m!879963 () Bool)

(assert (=> bm!41091 m!879963))

(assert (=> b!946624 m!879921))

(assert (=> b!946624 m!879921))

(assert (=> b!946624 m!879931))

(assert (=> b!946625 m!879921))

(assert (=> b!946625 m!879921))

(assert (=> b!946625 m!879931))

(assert (=> b!946623 m!879921))

(assert (=> b!946623 m!879921))

(declare-fun m!879965 () Bool)

(assert (=> b!946623 m!879965))

(assert (=> b!946514 d!114515))

(declare-fun mapNonEmpty!32850 () Bool)

(declare-fun mapRes!32850 () Bool)

(declare-fun tp!62997 () Bool)

(declare-fun e!532716 () Bool)

(assert (=> mapNonEmpty!32850 (= mapRes!32850 (and tp!62997 e!532716))))

(declare-fun mapKey!32850 () (_ BitVec 32))

(declare-fun mapValue!32850 () ValueCell!9846)

(declare-fun mapRest!32850 () (Array (_ BitVec 32) ValueCell!9846))

(assert (=> mapNonEmpty!32850 (= mapRest!32849 (store mapRest!32850 mapKey!32850 mapValue!32850))))

(declare-fun b!946628 () Bool)

(declare-fun e!532715 () Bool)

(assert (=> b!946628 (= e!532715 tp_is_empty!20655)))

(declare-fun condMapEmpty!32850 () Bool)

(declare-fun mapDefault!32850 () ValueCell!9846)

(assert (=> mapNonEmpty!32849 (= condMapEmpty!32850 (= mapRest!32849 ((as const (Array (_ BitVec 32) ValueCell!9846)) mapDefault!32850)))))

(assert (=> mapNonEmpty!32849 (= tp!62996 (and e!532715 mapRes!32850))))

(declare-fun b!946627 () Bool)

(assert (=> b!946627 (= e!532716 tp_is_empty!20655)))

(declare-fun mapIsEmpty!32850 () Bool)

(assert (=> mapIsEmpty!32850 mapRes!32850))

(assert (= (and mapNonEmpty!32849 condMapEmpty!32850) mapIsEmpty!32850))

(assert (= (and mapNonEmpty!32849 (not condMapEmpty!32850)) mapNonEmpty!32850))

(assert (= (and mapNonEmpty!32850 ((_ is ValueCellFull!9846) mapValue!32850)) b!946627))

(assert (= (and mapNonEmpty!32849 ((_ is ValueCellFull!9846) mapDefault!32850)) b!946628))

(declare-fun m!879967 () Bool)

(assert (=> mapNonEmpty!32850 m!879967))

(check-sat (not bm!41085) (not b!946625) (not b!946538) (not bm!41091) (not b!946623) (not b!946562) (not b!946563) (not b!946539) (not mapNonEmpty!32850) (not d!114511) (not b!946624) (not b!946578) (not b!946584) (not d!114505) (not b_next!18147) (not b!946551) (not d!114503) (not d!114507) (not b!946610) b_and!29587 tp_is_empty!20655 (not bm!41088))
(check-sat b_and!29587 (not b_next!18147))

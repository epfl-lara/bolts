; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19928 () Bool)

(assert start!19928)

(declare-fun b!195411 () Bool)

(declare-fun b_free!4725 () Bool)

(declare-fun b_next!4725 () Bool)

(assert (=> b!195411 (= b_free!4725 (not b_next!4725))))

(declare-fun tp!17050 () Bool)

(declare-fun b_and!11489 () Bool)

(assert (=> b!195411 (= tp!17050 b_and!11489)))

(declare-fun res!92266 () Bool)

(declare-fun e!128533 () Bool)

(assert (=> start!19928 (=> (not res!92266) (not e!128533))))

(declare-datatypes ((V!5643 0))(
  ( (V!5644 (val!2293 Int)) )
))
(declare-datatypes ((ValueCell!1905 0))(
  ( (ValueCellFull!1905 (v!4257 V!5643)) (EmptyCell!1905) )
))
(declare-datatypes ((array!8246 0))(
  ( (array!8247 (arr!3880 (Array (_ BitVec 32) (_ BitVec 64))) (size!4205 (_ BitVec 32))) )
))
(declare-datatypes ((array!8248 0))(
  ( (array!8249 (arr!3881 (Array (_ BitVec 32) ValueCell!1905)) (size!4206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2718 0))(
  ( (LongMapFixedSize!2719 (defaultEntry!3973 Int) (mask!9246 (_ BitVec 32)) (extraKeys!3710 (_ BitVec 32)) (zeroValue!3814 V!5643) (minValue!3814 V!5643) (_size!1408 (_ BitVec 32)) (_keys!5971 array!8246) (_values!3956 array!8248) (_vacant!1408 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2718)

(declare-fun valid!1107 (LongMapFixedSize!2718) Bool)

(assert (=> start!19928 (= res!92266 (valid!1107 thiss!1248))))

(assert (=> start!19928 e!128533))

(declare-fun e!128534 () Bool)

(assert (=> start!19928 e!128534))

(assert (=> start!19928 true))

(declare-fun b!195406 () Bool)

(declare-fun res!92267 () Bool)

(assert (=> b!195406 (=> (not res!92267) (not e!128533))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!195406 (= res!92267 (not (= key!828 (bvneg key!828))))))

(declare-fun b!195407 () Bool)

(declare-datatypes ((SeekEntryResult!706 0))(
  ( (MissingZero!706 (index!4994 (_ BitVec 32))) (Found!706 (index!4995 (_ BitVec 32))) (Intermediate!706 (undefined!1518 Bool) (index!4996 (_ BitVec 32)) (x!20745 (_ BitVec 32))) (Undefined!706) (MissingVacant!706 (index!4997 (_ BitVec 32))) )
))
(declare-fun lt!97476 () SeekEntryResult!706)

(get-info :version)

(assert (=> b!195407 (= e!128533 (and (not ((_ is Undefined!706) lt!97476)) (not ((_ is MissingVacant!706) lt!97476)) (not ((_ is MissingZero!706) lt!97476)) (not ((_ is Found!706) lt!97476))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8246 (_ BitVec 32)) SeekEntryResult!706)

(assert (=> b!195407 (= lt!97476 (seekEntryOrOpen!0 key!828 (_keys!5971 thiss!1248) (mask!9246 thiss!1248)))))

(declare-fun mapIsEmpty!7783 () Bool)

(declare-fun mapRes!7783 () Bool)

(assert (=> mapIsEmpty!7783 mapRes!7783))

(declare-fun b!195408 () Bool)

(declare-fun e!128531 () Bool)

(declare-fun tp_is_empty!4497 () Bool)

(assert (=> b!195408 (= e!128531 tp_is_empty!4497)))

(declare-fun mapNonEmpty!7783 () Bool)

(declare-fun tp!17049 () Bool)

(declare-fun e!128532 () Bool)

(assert (=> mapNonEmpty!7783 (= mapRes!7783 (and tp!17049 e!128532))))

(declare-fun mapRest!7783 () (Array (_ BitVec 32) ValueCell!1905))

(declare-fun mapKey!7783 () (_ BitVec 32))

(declare-fun mapValue!7783 () ValueCell!1905)

(assert (=> mapNonEmpty!7783 (= (arr!3881 (_values!3956 thiss!1248)) (store mapRest!7783 mapKey!7783 mapValue!7783))))

(declare-fun b!195409 () Bool)

(declare-fun e!128529 () Bool)

(assert (=> b!195409 (= e!128529 (and e!128531 mapRes!7783))))

(declare-fun condMapEmpty!7783 () Bool)

(declare-fun mapDefault!7783 () ValueCell!1905)

(assert (=> b!195409 (= condMapEmpty!7783 (= (arr!3881 (_values!3956 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1905)) mapDefault!7783)))))

(declare-fun b!195410 () Bool)

(assert (=> b!195410 (= e!128532 tp_is_empty!4497)))

(declare-fun array_inv!2509 (array!8246) Bool)

(declare-fun array_inv!2510 (array!8248) Bool)

(assert (=> b!195411 (= e!128534 (and tp!17050 tp_is_empty!4497 (array_inv!2509 (_keys!5971 thiss!1248)) (array_inv!2510 (_values!3956 thiss!1248)) e!128529))))

(assert (= (and start!19928 res!92266) b!195406))

(assert (= (and b!195406 res!92267) b!195407))

(assert (= (and b!195409 condMapEmpty!7783) mapIsEmpty!7783))

(assert (= (and b!195409 (not condMapEmpty!7783)) mapNonEmpty!7783))

(assert (= (and mapNonEmpty!7783 ((_ is ValueCellFull!1905) mapValue!7783)) b!195410))

(assert (= (and b!195409 ((_ is ValueCellFull!1905) mapDefault!7783)) b!195408))

(assert (= b!195411 b!195409))

(assert (= start!19928 b!195411))

(declare-fun m!223045 () Bool)

(assert (=> start!19928 m!223045))

(declare-fun m!223047 () Bool)

(assert (=> b!195407 m!223047))

(declare-fun m!223049 () Bool)

(assert (=> mapNonEmpty!7783 m!223049))

(declare-fun m!223051 () Bool)

(assert (=> b!195411 m!223051))

(declare-fun m!223053 () Bool)

(assert (=> b!195411 m!223053))

(check-sat (not b_next!4725) (not b!195407) (not start!19928) tp_is_empty!4497 (not mapNonEmpty!7783) b_and!11489 (not b!195411))
(check-sat b_and!11489 (not b_next!4725))
(get-model)

(declare-fun d!57405 () Bool)

(declare-fun res!92280 () Bool)

(declare-fun e!128555 () Bool)

(assert (=> d!57405 (=> (not res!92280) (not e!128555))))

(declare-fun simpleValid!204 (LongMapFixedSize!2718) Bool)

(assert (=> d!57405 (= res!92280 (simpleValid!204 thiss!1248))))

(assert (=> d!57405 (= (valid!1107 thiss!1248) e!128555)))

(declare-fun b!195436 () Bool)

(declare-fun res!92281 () Bool)

(assert (=> b!195436 (=> (not res!92281) (not e!128555))))

(declare-fun arrayCountValidKeys!0 (array!8246 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!195436 (= res!92281 (= (arrayCountValidKeys!0 (_keys!5971 thiss!1248) #b00000000000000000000000000000000 (size!4205 (_keys!5971 thiss!1248))) (_size!1408 thiss!1248)))))

(declare-fun b!195437 () Bool)

(declare-fun res!92282 () Bool)

(assert (=> b!195437 (=> (not res!92282) (not e!128555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8246 (_ BitVec 32)) Bool)

(assert (=> b!195437 (= res!92282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5971 thiss!1248) (mask!9246 thiss!1248)))))

(declare-fun b!195438 () Bool)

(declare-datatypes ((List!2472 0))(
  ( (Nil!2469) (Cons!2468 (h!3110 (_ BitVec 64)) (t!7411 List!2472)) )
))
(declare-fun arrayNoDuplicates!0 (array!8246 (_ BitVec 32) List!2472) Bool)

(assert (=> b!195438 (= e!128555 (arrayNoDuplicates!0 (_keys!5971 thiss!1248) #b00000000000000000000000000000000 Nil!2469))))

(assert (= (and d!57405 res!92280) b!195436))

(assert (= (and b!195436 res!92281) b!195437))

(assert (= (and b!195437 res!92282) b!195438))

(declare-fun m!223065 () Bool)

(assert (=> d!57405 m!223065))

(declare-fun m!223067 () Bool)

(assert (=> b!195436 m!223067))

(declare-fun m!223069 () Bool)

(assert (=> b!195437 m!223069))

(declare-fun m!223071 () Bool)

(assert (=> b!195438 m!223071))

(assert (=> start!19928 d!57405))

(declare-fun b!195451 () Bool)

(declare-fun e!128562 () SeekEntryResult!706)

(declare-fun lt!97487 () SeekEntryResult!706)

(assert (=> b!195451 (= e!128562 (Found!706 (index!4996 lt!97487)))))

(declare-fun d!57407 () Bool)

(declare-fun lt!97486 () SeekEntryResult!706)

(assert (=> d!57407 (and (or ((_ is Undefined!706) lt!97486) (not ((_ is Found!706) lt!97486)) (and (bvsge (index!4995 lt!97486) #b00000000000000000000000000000000) (bvslt (index!4995 lt!97486) (size!4205 (_keys!5971 thiss!1248))))) (or ((_ is Undefined!706) lt!97486) ((_ is Found!706) lt!97486) (not ((_ is MissingZero!706) lt!97486)) (and (bvsge (index!4994 lt!97486) #b00000000000000000000000000000000) (bvslt (index!4994 lt!97486) (size!4205 (_keys!5971 thiss!1248))))) (or ((_ is Undefined!706) lt!97486) ((_ is Found!706) lt!97486) ((_ is MissingZero!706) lt!97486) (not ((_ is MissingVacant!706) lt!97486)) (and (bvsge (index!4997 lt!97486) #b00000000000000000000000000000000) (bvslt (index!4997 lt!97486) (size!4205 (_keys!5971 thiss!1248))))) (or ((_ is Undefined!706) lt!97486) (ite ((_ is Found!706) lt!97486) (= (select (arr!3880 (_keys!5971 thiss!1248)) (index!4995 lt!97486)) key!828) (ite ((_ is MissingZero!706) lt!97486) (= (select (arr!3880 (_keys!5971 thiss!1248)) (index!4994 lt!97486)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!706) lt!97486) (= (select (arr!3880 (_keys!5971 thiss!1248)) (index!4997 lt!97486)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!128564 () SeekEntryResult!706)

(assert (=> d!57407 (= lt!97486 e!128564)))

(declare-fun c!35383 () Bool)

(assert (=> d!57407 (= c!35383 (and ((_ is Intermediate!706) lt!97487) (undefined!1518 lt!97487)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8246 (_ BitVec 32)) SeekEntryResult!706)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!57407 (= lt!97487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9246 thiss!1248)) key!828 (_keys!5971 thiss!1248) (mask!9246 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!57407 (validMask!0 (mask!9246 thiss!1248))))

(assert (=> d!57407 (= (seekEntryOrOpen!0 key!828 (_keys!5971 thiss!1248) (mask!9246 thiss!1248)) lt!97486)))

(declare-fun b!195452 () Bool)

(assert (=> b!195452 (= e!128564 e!128562)))

(declare-fun lt!97488 () (_ BitVec 64))

(assert (=> b!195452 (= lt!97488 (select (arr!3880 (_keys!5971 thiss!1248)) (index!4996 lt!97487)))))

(declare-fun c!35381 () Bool)

(assert (=> b!195452 (= c!35381 (= lt!97488 key!828))))

(declare-fun b!195453 () Bool)

(declare-fun c!35382 () Bool)

(assert (=> b!195453 (= c!35382 (= lt!97488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128563 () SeekEntryResult!706)

(assert (=> b!195453 (= e!128562 e!128563)))

(declare-fun b!195454 () Bool)

(assert (=> b!195454 (= e!128564 Undefined!706)))

(declare-fun b!195455 () Bool)

(assert (=> b!195455 (= e!128563 (MissingZero!706 (index!4996 lt!97487)))))

(declare-fun b!195456 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8246 (_ BitVec 32)) SeekEntryResult!706)

(assert (=> b!195456 (= e!128563 (seekKeyOrZeroReturnVacant!0 (x!20745 lt!97487) (index!4996 lt!97487) (index!4996 lt!97487) key!828 (_keys!5971 thiss!1248) (mask!9246 thiss!1248)))))

(assert (= (and d!57407 c!35383) b!195454))

(assert (= (and d!57407 (not c!35383)) b!195452))

(assert (= (and b!195452 c!35381) b!195451))

(assert (= (and b!195452 (not c!35381)) b!195453))

(assert (= (and b!195453 c!35382) b!195455))

(assert (= (and b!195453 (not c!35382)) b!195456))

(declare-fun m!223073 () Bool)

(assert (=> d!57407 m!223073))

(declare-fun m!223075 () Bool)

(assert (=> d!57407 m!223075))

(assert (=> d!57407 m!223075))

(declare-fun m!223077 () Bool)

(assert (=> d!57407 m!223077))

(declare-fun m!223079 () Bool)

(assert (=> d!57407 m!223079))

(declare-fun m!223081 () Bool)

(assert (=> d!57407 m!223081))

(declare-fun m!223083 () Bool)

(assert (=> d!57407 m!223083))

(declare-fun m!223085 () Bool)

(assert (=> b!195452 m!223085))

(declare-fun m!223087 () Bool)

(assert (=> b!195456 m!223087))

(assert (=> b!195407 d!57407))

(declare-fun d!57409 () Bool)

(assert (=> d!57409 (= (array_inv!2509 (_keys!5971 thiss!1248)) (bvsge (size!4205 (_keys!5971 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!195411 d!57409))

(declare-fun d!57411 () Bool)

(assert (=> d!57411 (= (array_inv!2510 (_values!3956 thiss!1248)) (bvsge (size!4206 (_values!3956 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!195411 d!57411))

(declare-fun condMapEmpty!7789 () Bool)

(declare-fun mapDefault!7789 () ValueCell!1905)

(assert (=> mapNonEmpty!7783 (= condMapEmpty!7789 (= mapRest!7783 ((as const (Array (_ BitVec 32) ValueCell!1905)) mapDefault!7789)))))

(declare-fun e!128569 () Bool)

(declare-fun mapRes!7789 () Bool)

(assert (=> mapNonEmpty!7783 (= tp!17049 (and e!128569 mapRes!7789))))

(declare-fun b!195464 () Bool)

(assert (=> b!195464 (= e!128569 tp_is_empty!4497)))

(declare-fun mapIsEmpty!7789 () Bool)

(assert (=> mapIsEmpty!7789 mapRes!7789))

(declare-fun mapNonEmpty!7789 () Bool)

(declare-fun tp!17059 () Bool)

(declare-fun e!128570 () Bool)

(assert (=> mapNonEmpty!7789 (= mapRes!7789 (and tp!17059 e!128570))))

(declare-fun mapValue!7789 () ValueCell!1905)

(declare-fun mapRest!7789 () (Array (_ BitVec 32) ValueCell!1905))

(declare-fun mapKey!7789 () (_ BitVec 32))

(assert (=> mapNonEmpty!7789 (= mapRest!7783 (store mapRest!7789 mapKey!7789 mapValue!7789))))

(declare-fun b!195463 () Bool)

(assert (=> b!195463 (= e!128570 tp_is_empty!4497)))

(assert (= (and mapNonEmpty!7783 condMapEmpty!7789) mapIsEmpty!7789))

(assert (= (and mapNonEmpty!7783 (not condMapEmpty!7789)) mapNonEmpty!7789))

(assert (= (and mapNonEmpty!7789 ((_ is ValueCellFull!1905) mapValue!7789)) b!195463))

(assert (= (and mapNonEmpty!7783 ((_ is ValueCellFull!1905) mapDefault!7789)) b!195464))

(declare-fun m!223089 () Bool)

(assert (=> mapNonEmpty!7789 m!223089))

(check-sat (not b!195437) (not d!57407) (not mapNonEmpty!7789) (not b_next!4725) (not d!57405) b_and!11489 (not b!195436) (not b!195456) tp_is_empty!4497 (not b!195438))
(check-sat b_and!11489 (not b_next!4725))

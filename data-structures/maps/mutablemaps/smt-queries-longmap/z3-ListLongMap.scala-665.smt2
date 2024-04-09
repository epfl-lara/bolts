; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16444 () Bool)

(assert start!16444)

(declare-fun b!163545 () Bool)

(declare-fun b_free!3801 () Bool)

(declare-fun b_next!3801 () Bool)

(assert (=> b!163545 (= b_free!3801 (not b_next!3801))))

(declare-fun tp!13990 () Bool)

(declare-fun b_and!10233 () Bool)

(assert (=> b!163545 (= tp!13990 b_and!10233)))

(declare-fun res!77408 () Bool)

(declare-fun e!107321 () Bool)

(assert (=> start!16444 (=> (not res!77408) (not e!107321))))

(declare-datatypes ((V!4451 0))(
  ( (V!4452 (val!1846 Int)) )
))
(declare-datatypes ((ValueCell!1458 0))(
  ( (ValueCellFull!1458 (v!3707 V!4451)) (EmptyCell!1458) )
))
(declare-datatypes ((array!6294 0))(
  ( (array!6295 (arr!2986 (Array (_ BitVec 32) (_ BitVec 64))) (size!3273 (_ BitVec 32))) )
))
(declare-datatypes ((array!6296 0))(
  ( (array!6297 (arr!2987 (Array (_ BitVec 32) ValueCell!1458)) (size!3274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1824 0))(
  ( (LongMapFixedSize!1825 (defaultEntry!3354 Int) (mask!8018 (_ BitVec 32)) (extraKeys!3095 (_ BitVec 32)) (zeroValue!3197 V!4451) (minValue!3197 V!4451) (_size!961 (_ BitVec 32)) (_keys!5169 array!6294) (_values!3337 array!6296) (_vacant!961 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1824)

(declare-fun valid!808 (LongMapFixedSize!1824) Bool)

(assert (=> start!16444 (= res!77408 (valid!808 thiss!1248))))

(assert (=> start!16444 e!107321))

(declare-fun e!107319 () Bool)

(assert (=> start!16444 e!107319))

(assert (=> start!16444 true))

(declare-fun b!163544 () Bool)

(declare-fun res!77406 () Bool)

(assert (=> b!163544 (=> (not res!77406) (not e!107321))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163544 (= res!77406 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3603 () Bool)

(declare-fun e!107316 () Bool)

(declare-fun array_inv!1901 (array!6294) Bool)

(declare-fun array_inv!1902 (array!6296) Bool)

(assert (=> b!163545 (= e!107319 (and tp!13990 tp_is_empty!3603 (array_inv!1901 (_keys!5169 thiss!1248)) (array_inv!1902 (_values!3337 thiss!1248)) e!107316))))

(declare-fun b!163546 () Bool)

(declare-fun res!77405 () Bool)

(declare-fun e!107320 () Bool)

(assert (=> b!163546 (=> (not res!77405) (not e!107320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163546 (= res!77405 (validMask!0 (mask!8018 thiss!1248)))))

(declare-fun b!163547 () Bool)

(assert (=> b!163547 (= e!107320 (and (= (size!3274 (_values!3337 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8018 thiss!1248))) (= (size!3273 (_keys!5169 thiss!1248)) (size!3274 (_values!3337 thiss!1248))) (bvsge (mask!8018 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3095 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3095 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!163548 () Bool)

(declare-fun e!107318 () Bool)

(assert (=> b!163548 (= e!107318 tp_is_empty!3603)))

(declare-fun b!163549 () Bool)

(declare-fun e!107317 () Bool)

(assert (=> b!163549 (= e!107317 tp_is_empty!3603)))

(declare-fun mapIsEmpty!6110 () Bool)

(declare-fun mapRes!6110 () Bool)

(assert (=> mapIsEmpty!6110 mapRes!6110))

(declare-fun b!163550 () Bool)

(assert (=> b!163550 (= e!107321 e!107320)))

(declare-fun res!77407 () Bool)

(assert (=> b!163550 (=> (not res!77407) (not e!107320))))

(declare-datatypes ((SeekEntryResult!411 0))(
  ( (MissingZero!411 (index!3812 (_ BitVec 32))) (Found!411 (index!3813 (_ BitVec 32))) (Intermediate!411 (undefined!1223 Bool) (index!3814 (_ BitVec 32)) (x!18142 (_ BitVec 32))) (Undefined!411) (MissingVacant!411 (index!3815 (_ BitVec 32))) )
))
(declare-fun lt!82742 () SeekEntryResult!411)

(get-info :version)

(assert (=> b!163550 (= res!77407 (and (not ((_ is Undefined!411) lt!82742)) (not ((_ is MissingVacant!411) lt!82742)) (not ((_ is MissingZero!411) lt!82742)) ((_ is Found!411) lt!82742)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6294 (_ BitVec 32)) SeekEntryResult!411)

(assert (=> b!163550 (= lt!82742 (seekEntryOrOpen!0 key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(declare-fun b!163551 () Bool)

(assert (=> b!163551 (= e!107316 (and e!107317 mapRes!6110))))

(declare-fun condMapEmpty!6110 () Bool)

(declare-fun mapDefault!6110 () ValueCell!1458)

(assert (=> b!163551 (= condMapEmpty!6110 (= (arr!2987 (_values!3337 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1458)) mapDefault!6110)))))

(declare-fun mapNonEmpty!6110 () Bool)

(declare-fun tp!13991 () Bool)

(assert (=> mapNonEmpty!6110 (= mapRes!6110 (and tp!13991 e!107318))))

(declare-fun mapRest!6110 () (Array (_ BitVec 32) ValueCell!1458))

(declare-fun mapValue!6110 () ValueCell!1458)

(declare-fun mapKey!6110 () (_ BitVec 32))

(assert (=> mapNonEmpty!6110 (= (arr!2987 (_values!3337 thiss!1248)) (store mapRest!6110 mapKey!6110 mapValue!6110))))

(assert (= (and start!16444 res!77408) b!163544))

(assert (= (and b!163544 res!77406) b!163550))

(assert (= (and b!163550 res!77407) b!163546))

(assert (= (and b!163546 res!77405) b!163547))

(assert (= (and b!163551 condMapEmpty!6110) mapIsEmpty!6110))

(assert (= (and b!163551 (not condMapEmpty!6110)) mapNonEmpty!6110))

(assert (= (and mapNonEmpty!6110 ((_ is ValueCellFull!1458) mapValue!6110)) b!163548))

(assert (= (and b!163551 ((_ is ValueCellFull!1458) mapDefault!6110)) b!163549))

(assert (= b!163545 b!163551))

(assert (= start!16444 b!163545))

(declare-fun m!194159 () Bool)

(assert (=> start!16444 m!194159))

(declare-fun m!194161 () Bool)

(assert (=> b!163545 m!194161))

(declare-fun m!194163 () Bool)

(assert (=> b!163545 m!194163))

(declare-fun m!194165 () Bool)

(assert (=> b!163550 m!194165))

(declare-fun m!194167 () Bool)

(assert (=> mapNonEmpty!6110 m!194167))

(declare-fun m!194169 () Bool)

(assert (=> b!163546 m!194169))

(check-sat (not start!16444) tp_is_empty!3603 b_and!10233 (not b!163550) (not mapNonEmpty!6110) (not b!163546) (not b!163545) (not b_next!3801))
(check-sat b_and!10233 (not b_next!3801))
(get-model)

(declare-fun d!51375 () Bool)

(assert (=> d!51375 (= (array_inv!1901 (_keys!5169 thiss!1248)) (bvsge (size!3273 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163545 d!51375))

(declare-fun d!51377 () Bool)

(assert (=> d!51377 (= (array_inv!1902 (_values!3337 thiss!1248)) (bvsge (size!3274 (_values!3337 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163545 d!51377))

(declare-fun b!163588 () Bool)

(declare-fun c!30102 () Bool)

(declare-fun lt!82753 () (_ BitVec 64))

(assert (=> b!163588 (= c!30102 (= lt!82753 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107349 () SeekEntryResult!411)

(declare-fun e!107351 () SeekEntryResult!411)

(assert (=> b!163588 (= e!107349 e!107351)))

(declare-fun d!51379 () Bool)

(declare-fun lt!82752 () SeekEntryResult!411)

(assert (=> d!51379 (and (or ((_ is Undefined!411) lt!82752) (not ((_ is Found!411) lt!82752)) (and (bvsge (index!3813 lt!82752) #b00000000000000000000000000000000) (bvslt (index!3813 lt!82752) (size!3273 (_keys!5169 thiss!1248))))) (or ((_ is Undefined!411) lt!82752) ((_ is Found!411) lt!82752) (not ((_ is MissingZero!411) lt!82752)) (and (bvsge (index!3812 lt!82752) #b00000000000000000000000000000000) (bvslt (index!3812 lt!82752) (size!3273 (_keys!5169 thiss!1248))))) (or ((_ is Undefined!411) lt!82752) ((_ is Found!411) lt!82752) ((_ is MissingZero!411) lt!82752) (not ((_ is MissingVacant!411) lt!82752)) (and (bvsge (index!3815 lt!82752) #b00000000000000000000000000000000) (bvslt (index!3815 lt!82752) (size!3273 (_keys!5169 thiss!1248))))) (or ((_ is Undefined!411) lt!82752) (ite ((_ is Found!411) lt!82752) (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3813 lt!82752)) key!828) (ite ((_ is MissingZero!411) lt!82752) (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3812 lt!82752)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!411) lt!82752) (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3815 lt!82752)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!107350 () SeekEntryResult!411)

(assert (=> d!51379 (= lt!82752 e!107350)))

(declare-fun c!30100 () Bool)

(declare-fun lt!82754 () SeekEntryResult!411)

(assert (=> d!51379 (= c!30100 (and ((_ is Intermediate!411) lt!82754) (undefined!1223 lt!82754)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6294 (_ BitVec 32)) SeekEntryResult!411)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51379 (= lt!82754 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8018 thiss!1248)) key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(assert (=> d!51379 (validMask!0 (mask!8018 thiss!1248))))

(assert (=> d!51379 (= (seekEntryOrOpen!0 key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)) lt!82752)))

(declare-fun b!163589 () Bool)

(assert (=> b!163589 (= e!107349 (Found!411 (index!3814 lt!82754)))))

(declare-fun b!163590 () Bool)

(assert (=> b!163590 (= e!107350 Undefined!411)))

(declare-fun b!163591 () Bool)

(assert (=> b!163591 (= e!107351 (MissingZero!411 (index!3814 lt!82754)))))

(declare-fun b!163592 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6294 (_ BitVec 32)) SeekEntryResult!411)

(assert (=> b!163592 (= e!107351 (seekKeyOrZeroReturnVacant!0 (x!18142 lt!82754) (index!3814 lt!82754) (index!3814 lt!82754) key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(declare-fun b!163593 () Bool)

(assert (=> b!163593 (= e!107350 e!107349)))

(assert (=> b!163593 (= lt!82753 (select (arr!2986 (_keys!5169 thiss!1248)) (index!3814 lt!82754)))))

(declare-fun c!30101 () Bool)

(assert (=> b!163593 (= c!30101 (= lt!82753 key!828))))

(assert (= (and d!51379 c!30100) b!163590))

(assert (= (and d!51379 (not c!30100)) b!163593))

(assert (= (and b!163593 c!30101) b!163589))

(assert (= (and b!163593 (not c!30101)) b!163588))

(assert (= (and b!163588 c!30102) b!163591))

(assert (= (and b!163588 (not c!30102)) b!163592))

(assert (=> d!51379 m!194169))

(declare-fun m!194183 () Bool)

(assert (=> d!51379 m!194183))

(declare-fun m!194185 () Bool)

(assert (=> d!51379 m!194185))

(declare-fun m!194187 () Bool)

(assert (=> d!51379 m!194187))

(declare-fun m!194189 () Bool)

(assert (=> d!51379 m!194189))

(assert (=> d!51379 m!194187))

(declare-fun m!194191 () Bool)

(assert (=> d!51379 m!194191))

(declare-fun m!194193 () Bool)

(assert (=> b!163592 m!194193))

(declare-fun m!194195 () Bool)

(assert (=> b!163593 m!194195))

(assert (=> b!163550 d!51379))

(declare-fun d!51381 () Bool)

(declare-fun res!77427 () Bool)

(declare-fun e!107354 () Bool)

(assert (=> d!51381 (=> (not res!77427) (not e!107354))))

(declare-fun simpleValid!122 (LongMapFixedSize!1824) Bool)

(assert (=> d!51381 (= res!77427 (simpleValid!122 thiss!1248))))

(assert (=> d!51381 (= (valid!808 thiss!1248) e!107354)))

(declare-fun b!163600 () Bool)

(declare-fun res!77428 () Bool)

(assert (=> b!163600 (=> (not res!77428) (not e!107354))))

(declare-fun arrayCountValidKeys!0 (array!6294 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163600 (= res!77428 (= (arrayCountValidKeys!0 (_keys!5169 thiss!1248) #b00000000000000000000000000000000 (size!3273 (_keys!5169 thiss!1248))) (_size!961 thiss!1248)))))

(declare-fun b!163601 () Bool)

(declare-fun res!77429 () Bool)

(assert (=> b!163601 (=> (not res!77429) (not e!107354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6294 (_ BitVec 32)) Bool)

(assert (=> b!163601 (= res!77429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(declare-fun b!163602 () Bool)

(declare-datatypes ((List!2012 0))(
  ( (Nil!2009) (Cons!2008 (h!2624 (_ BitVec 64)) (t!6822 List!2012)) )
))
(declare-fun arrayNoDuplicates!0 (array!6294 (_ BitVec 32) List!2012) Bool)

(assert (=> b!163602 (= e!107354 (arrayNoDuplicates!0 (_keys!5169 thiss!1248) #b00000000000000000000000000000000 Nil!2009))))

(assert (= (and d!51381 res!77427) b!163600))

(assert (= (and b!163600 res!77428) b!163601))

(assert (= (and b!163601 res!77429) b!163602))

(declare-fun m!194197 () Bool)

(assert (=> d!51381 m!194197))

(declare-fun m!194199 () Bool)

(assert (=> b!163600 m!194199))

(declare-fun m!194201 () Bool)

(assert (=> b!163601 m!194201))

(declare-fun m!194203 () Bool)

(assert (=> b!163602 m!194203))

(assert (=> start!16444 d!51381))

(declare-fun d!51383 () Bool)

(assert (=> d!51383 (= (validMask!0 (mask!8018 thiss!1248)) (and (or (= (mask!8018 thiss!1248) #b00000000000000000000000000000111) (= (mask!8018 thiss!1248) #b00000000000000000000000000001111) (= (mask!8018 thiss!1248) #b00000000000000000000000000011111) (= (mask!8018 thiss!1248) #b00000000000000000000000000111111) (= (mask!8018 thiss!1248) #b00000000000000000000000001111111) (= (mask!8018 thiss!1248) #b00000000000000000000000011111111) (= (mask!8018 thiss!1248) #b00000000000000000000000111111111) (= (mask!8018 thiss!1248) #b00000000000000000000001111111111) (= (mask!8018 thiss!1248) #b00000000000000000000011111111111) (= (mask!8018 thiss!1248) #b00000000000000000000111111111111) (= (mask!8018 thiss!1248) #b00000000000000000001111111111111) (= (mask!8018 thiss!1248) #b00000000000000000011111111111111) (= (mask!8018 thiss!1248) #b00000000000000000111111111111111) (= (mask!8018 thiss!1248) #b00000000000000001111111111111111) (= (mask!8018 thiss!1248) #b00000000000000011111111111111111) (= (mask!8018 thiss!1248) #b00000000000000111111111111111111) (= (mask!8018 thiss!1248) #b00000000000001111111111111111111) (= (mask!8018 thiss!1248) #b00000000000011111111111111111111) (= (mask!8018 thiss!1248) #b00000000000111111111111111111111) (= (mask!8018 thiss!1248) #b00000000001111111111111111111111) (= (mask!8018 thiss!1248) #b00000000011111111111111111111111) (= (mask!8018 thiss!1248) #b00000000111111111111111111111111) (= (mask!8018 thiss!1248) #b00000001111111111111111111111111) (= (mask!8018 thiss!1248) #b00000011111111111111111111111111) (= (mask!8018 thiss!1248) #b00000111111111111111111111111111) (= (mask!8018 thiss!1248) #b00001111111111111111111111111111) (= (mask!8018 thiss!1248) #b00011111111111111111111111111111) (= (mask!8018 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8018 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!163546 d!51383))

(declare-fun condMapEmpty!6116 () Bool)

(declare-fun mapDefault!6116 () ValueCell!1458)

(assert (=> mapNonEmpty!6110 (= condMapEmpty!6116 (= mapRest!6110 ((as const (Array (_ BitVec 32) ValueCell!1458)) mapDefault!6116)))))

(declare-fun e!107359 () Bool)

(declare-fun mapRes!6116 () Bool)

(assert (=> mapNonEmpty!6110 (= tp!13991 (and e!107359 mapRes!6116))))

(declare-fun b!163610 () Bool)

(assert (=> b!163610 (= e!107359 tp_is_empty!3603)))

(declare-fun mapIsEmpty!6116 () Bool)

(assert (=> mapIsEmpty!6116 mapRes!6116))

(declare-fun mapNonEmpty!6116 () Bool)

(declare-fun tp!14000 () Bool)

(declare-fun e!107360 () Bool)

(assert (=> mapNonEmpty!6116 (= mapRes!6116 (and tp!14000 e!107360))))

(declare-fun mapValue!6116 () ValueCell!1458)

(declare-fun mapKey!6116 () (_ BitVec 32))

(declare-fun mapRest!6116 () (Array (_ BitVec 32) ValueCell!1458))

(assert (=> mapNonEmpty!6116 (= mapRest!6110 (store mapRest!6116 mapKey!6116 mapValue!6116))))

(declare-fun b!163609 () Bool)

(assert (=> b!163609 (= e!107360 tp_is_empty!3603)))

(assert (= (and mapNonEmpty!6110 condMapEmpty!6116) mapIsEmpty!6116))

(assert (= (and mapNonEmpty!6110 (not condMapEmpty!6116)) mapNonEmpty!6116))

(assert (= (and mapNonEmpty!6116 ((_ is ValueCellFull!1458) mapValue!6116)) b!163609))

(assert (= (and mapNonEmpty!6110 ((_ is ValueCellFull!1458) mapDefault!6116)) b!163610))

(declare-fun m!194205 () Bool)

(assert (=> mapNonEmpty!6116 m!194205))

(check-sat (not b_next!3801) (not d!51379) (not mapNonEmpty!6116) (not b!163600) (not b!163601) (not b!163602) (not b!163592) tp_is_empty!3603 b_and!10233 (not d!51381))
(check-sat b_and!10233 (not b_next!3801))
(get-model)

(declare-fun b!163623 () Bool)

(declare-fun e!107369 () SeekEntryResult!411)

(assert (=> b!163623 (= e!107369 (MissingVacant!411 (index!3814 lt!82754)))))

(declare-fun b!163624 () Bool)

(declare-fun e!107367 () SeekEntryResult!411)

(assert (=> b!163624 (= e!107367 Undefined!411)))

(declare-fun lt!82760 () SeekEntryResult!411)

(declare-fun d!51385 () Bool)

(assert (=> d!51385 (and (or ((_ is Undefined!411) lt!82760) (not ((_ is Found!411) lt!82760)) (and (bvsge (index!3813 lt!82760) #b00000000000000000000000000000000) (bvslt (index!3813 lt!82760) (size!3273 (_keys!5169 thiss!1248))))) (or ((_ is Undefined!411) lt!82760) ((_ is Found!411) lt!82760) (not ((_ is MissingVacant!411) lt!82760)) (not (= (index!3815 lt!82760) (index!3814 lt!82754))) (and (bvsge (index!3815 lt!82760) #b00000000000000000000000000000000) (bvslt (index!3815 lt!82760) (size!3273 (_keys!5169 thiss!1248))))) (or ((_ is Undefined!411) lt!82760) (ite ((_ is Found!411) lt!82760) (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3813 lt!82760)) key!828) (and ((_ is MissingVacant!411) lt!82760) (= (index!3815 lt!82760) (index!3814 lt!82754)) (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3815 lt!82760)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!51385 (= lt!82760 e!107367)))

(declare-fun c!30110 () Bool)

(assert (=> d!51385 (= c!30110 (bvsge (x!18142 lt!82754) #b01111111111111111111111111111110))))

(declare-fun lt!82759 () (_ BitVec 64))

(assert (=> d!51385 (= lt!82759 (select (arr!2986 (_keys!5169 thiss!1248)) (index!3814 lt!82754)))))

(assert (=> d!51385 (validMask!0 (mask!8018 thiss!1248))))

(assert (=> d!51385 (= (seekKeyOrZeroReturnVacant!0 (x!18142 lt!82754) (index!3814 lt!82754) (index!3814 lt!82754) key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)) lt!82760)))

(declare-fun b!163625 () Bool)

(declare-fun e!107368 () SeekEntryResult!411)

(assert (=> b!163625 (= e!107367 e!107368)))

(declare-fun c!30111 () Bool)

(assert (=> b!163625 (= c!30111 (= lt!82759 key!828))))

(declare-fun b!163626 () Bool)

(declare-fun c!30109 () Bool)

(assert (=> b!163626 (= c!30109 (= lt!82759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!163626 (= e!107368 e!107369)))

(declare-fun b!163627 () Bool)

(assert (=> b!163627 (= e!107368 (Found!411 (index!3814 lt!82754)))))

(declare-fun b!163628 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163628 (= e!107369 (seekKeyOrZeroReturnVacant!0 (bvadd (x!18142 lt!82754) #b00000000000000000000000000000001) (nextIndex!0 (index!3814 lt!82754) (x!18142 lt!82754) (mask!8018 thiss!1248)) (index!3814 lt!82754) key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(assert (= (and d!51385 c!30110) b!163624))

(assert (= (and d!51385 (not c!30110)) b!163625))

(assert (= (and b!163625 c!30111) b!163627))

(assert (= (and b!163625 (not c!30111)) b!163626))

(assert (= (and b!163626 c!30109) b!163623))

(assert (= (and b!163626 (not c!30109)) b!163628))

(declare-fun m!194207 () Bool)

(assert (=> d!51385 m!194207))

(declare-fun m!194209 () Bool)

(assert (=> d!51385 m!194209))

(assert (=> d!51385 m!194195))

(assert (=> d!51385 m!194169))

(declare-fun m!194211 () Bool)

(assert (=> b!163628 m!194211))

(assert (=> b!163628 m!194211))

(declare-fun m!194213 () Bool)

(assert (=> b!163628 m!194213))

(assert (=> b!163592 d!51385))

(declare-fun b!163647 () Bool)

(declare-fun lt!82765 () SeekEntryResult!411)

(assert (=> b!163647 (and (bvsge (index!3814 lt!82765) #b00000000000000000000000000000000) (bvslt (index!3814 lt!82765) (size!3273 (_keys!5169 thiss!1248))))))

(declare-fun e!107383 () Bool)

(assert (=> b!163647 (= e!107383 (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3814 lt!82765)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!163648 () Bool)

(declare-fun e!107382 () SeekEntryResult!411)

(declare-fun e!107384 () SeekEntryResult!411)

(assert (=> b!163648 (= e!107382 e!107384)))

(declare-fun c!30120 () Bool)

(declare-fun lt!82766 () (_ BitVec 64))

(assert (=> b!163648 (= c!30120 (or (= lt!82766 key!828) (= (bvadd lt!82766 lt!82766) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!51387 () Bool)

(declare-fun e!107381 () Bool)

(assert (=> d!51387 e!107381))

(declare-fun c!30118 () Bool)

(assert (=> d!51387 (= c!30118 (and ((_ is Intermediate!411) lt!82765) (undefined!1223 lt!82765)))))

(assert (=> d!51387 (= lt!82765 e!107382)))

(declare-fun c!30119 () Bool)

(assert (=> d!51387 (= c!30119 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!51387 (= lt!82766 (select (arr!2986 (_keys!5169 thiss!1248)) (toIndex!0 key!828 (mask!8018 thiss!1248))))))

(assert (=> d!51387 (validMask!0 (mask!8018 thiss!1248))))

(assert (=> d!51387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8018 thiss!1248)) key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)) lt!82765)))

(declare-fun b!163649 () Bool)

(assert (=> b!163649 (= e!107381 (bvsge (x!18142 lt!82765) #b01111111111111111111111111111110))))

(declare-fun b!163650 () Bool)

(assert (=> b!163650 (= e!107384 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8018 thiss!1248)) #b00000000000000000000000000000000 (mask!8018 thiss!1248)) key!828 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(declare-fun b!163651 () Bool)

(assert (=> b!163651 (and (bvsge (index!3814 lt!82765) #b00000000000000000000000000000000) (bvslt (index!3814 lt!82765) (size!3273 (_keys!5169 thiss!1248))))))

(declare-fun res!77438 () Bool)

(assert (=> b!163651 (= res!77438 (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3814 lt!82765)) key!828))))

(assert (=> b!163651 (=> res!77438 e!107383)))

(declare-fun e!107380 () Bool)

(assert (=> b!163651 (= e!107380 e!107383)))

(declare-fun b!163652 () Bool)

(assert (=> b!163652 (= e!107381 e!107380)))

(declare-fun res!77436 () Bool)

(assert (=> b!163652 (= res!77436 (and ((_ is Intermediate!411) lt!82765) (not (undefined!1223 lt!82765)) (bvslt (x!18142 lt!82765) #b01111111111111111111111111111110) (bvsge (x!18142 lt!82765) #b00000000000000000000000000000000) (bvsge (x!18142 lt!82765) #b00000000000000000000000000000000)))))

(assert (=> b!163652 (=> (not res!77436) (not e!107380))))

(declare-fun b!163653 () Bool)

(assert (=> b!163653 (= e!107384 (Intermediate!411 false (toIndex!0 key!828 (mask!8018 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!163654 () Bool)

(assert (=> b!163654 (and (bvsge (index!3814 lt!82765) #b00000000000000000000000000000000) (bvslt (index!3814 lt!82765) (size!3273 (_keys!5169 thiss!1248))))))

(declare-fun res!77437 () Bool)

(assert (=> b!163654 (= res!77437 (= (select (arr!2986 (_keys!5169 thiss!1248)) (index!3814 lt!82765)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!163654 (=> res!77437 e!107383)))

(declare-fun b!163655 () Bool)

(assert (=> b!163655 (= e!107382 (Intermediate!411 true (toIndex!0 key!828 (mask!8018 thiss!1248)) #b00000000000000000000000000000000))))

(assert (= (and d!51387 c!30119) b!163655))

(assert (= (and d!51387 (not c!30119)) b!163648))

(assert (= (and b!163648 c!30120) b!163653))

(assert (= (and b!163648 (not c!30120)) b!163650))

(assert (= (and d!51387 c!30118) b!163649))

(assert (= (and d!51387 (not c!30118)) b!163652))

(assert (= (and b!163652 res!77436) b!163651))

(assert (= (and b!163651 (not res!77438)) b!163654))

(assert (= (and b!163654 (not res!77437)) b!163647))

(declare-fun m!194215 () Bool)

(assert (=> b!163651 m!194215))

(assert (=> b!163647 m!194215))

(assert (=> d!51387 m!194187))

(declare-fun m!194217 () Bool)

(assert (=> d!51387 m!194217))

(assert (=> d!51387 m!194169))

(assert (=> b!163654 m!194215))

(assert (=> b!163650 m!194187))

(declare-fun m!194219 () Bool)

(assert (=> b!163650 m!194219))

(assert (=> b!163650 m!194219))

(declare-fun m!194221 () Bool)

(assert (=> b!163650 m!194221))

(assert (=> d!51379 d!51387))

(declare-fun d!51389 () Bool)

(declare-fun lt!82772 () (_ BitVec 32))

(declare-fun lt!82771 () (_ BitVec 32))

(assert (=> d!51389 (= lt!82772 (bvmul (bvxor lt!82771 (bvlshr lt!82771 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51389 (= lt!82771 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51389 (and (bvsge (mask!8018 thiss!1248) #b00000000000000000000000000000000) (let ((res!77439 (let ((h!2625 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!18160 (bvmul (bvxor h!2625 (bvlshr h!2625 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!18160 (bvlshr x!18160 #b00000000000000000000000000001101)) (mask!8018 thiss!1248)))))) (and (bvslt res!77439 (bvadd (mask!8018 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!77439 #b00000000000000000000000000000000))))))

(assert (=> d!51389 (= (toIndex!0 key!828 (mask!8018 thiss!1248)) (bvand (bvxor lt!82772 (bvlshr lt!82772 #b00000000000000000000000000001101)) (mask!8018 thiss!1248)))))

(assert (=> d!51379 d!51389))

(assert (=> d!51379 d!51383))

(declare-fun b!163666 () Bool)

(declare-fun res!77451 () Bool)

(declare-fun e!107387 () Bool)

(assert (=> b!163666 (=> (not res!77451) (not e!107387))))

(declare-fun size!3277 (LongMapFixedSize!1824) (_ BitVec 32))

(assert (=> b!163666 (= res!77451 (= (size!3277 thiss!1248) (bvadd (_size!961 thiss!1248) (bvsdiv (bvadd (extraKeys!3095 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!163664 () Bool)

(declare-fun res!77450 () Bool)

(assert (=> b!163664 (=> (not res!77450) (not e!107387))))

(assert (=> b!163664 (= res!77450 (and (= (size!3274 (_values!3337 thiss!1248)) (bvadd (mask!8018 thiss!1248) #b00000000000000000000000000000001)) (= (size!3273 (_keys!5169 thiss!1248)) (size!3274 (_values!3337 thiss!1248))) (bvsge (_size!961 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!961 thiss!1248) (bvadd (mask!8018 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!163665 () Bool)

(declare-fun res!77448 () Bool)

(assert (=> b!163665 (=> (not res!77448) (not e!107387))))

(assert (=> b!163665 (= res!77448 (bvsge (size!3277 thiss!1248) (_size!961 thiss!1248)))))

(declare-fun b!163667 () Bool)

(assert (=> b!163667 (= e!107387 (and (bvsge (extraKeys!3095 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3095 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!961 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!51391 () Bool)

(declare-fun res!77449 () Bool)

(assert (=> d!51391 (=> (not res!77449) (not e!107387))))

(assert (=> d!51391 (= res!77449 (validMask!0 (mask!8018 thiss!1248)))))

(assert (=> d!51391 (= (simpleValid!122 thiss!1248) e!107387)))

(assert (= (and d!51391 res!77449) b!163664))

(assert (= (and b!163664 res!77450) b!163665))

(assert (= (and b!163665 res!77448) b!163666))

(assert (= (and b!163666 res!77451) b!163667))

(declare-fun m!194223 () Bool)

(assert (=> b!163666 m!194223))

(assert (=> b!163665 m!194223))

(assert (=> d!51391 m!194169))

(assert (=> d!51381 d!51391))

(declare-fun bm!17309 () Bool)

(declare-fun call!17312 () (_ BitVec 32))

(assert (=> bm!17309 (= call!17312 (arrayCountValidKeys!0 (_keys!5169 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3273 (_keys!5169 thiss!1248))))))

(declare-fun b!163676 () Bool)

(declare-fun e!107393 () (_ BitVec 32))

(assert (=> b!163676 (= e!107393 call!17312)))

(declare-fun b!163677 () Bool)

(assert (=> b!163677 (= e!107393 (bvadd #b00000000000000000000000000000001 call!17312))))

(declare-fun b!163678 () Bool)

(declare-fun e!107392 () (_ BitVec 32))

(assert (=> b!163678 (= e!107392 e!107393)))

(declare-fun c!30126 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!163678 (= c!30126 (validKeyInArray!0 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51393 () Bool)

(declare-fun lt!82775 () (_ BitVec 32))

(assert (=> d!51393 (and (bvsge lt!82775 #b00000000000000000000000000000000) (bvsle lt!82775 (bvsub (size!3273 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51393 (= lt!82775 e!107392)))

(declare-fun c!30125 () Bool)

(assert (=> d!51393 (= c!30125 (bvsge #b00000000000000000000000000000000 (size!3273 (_keys!5169 thiss!1248))))))

(assert (=> d!51393 (and (bvsle #b00000000000000000000000000000000 (size!3273 (_keys!5169 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3273 (_keys!5169 thiss!1248)) (size!3273 (_keys!5169 thiss!1248))))))

(assert (=> d!51393 (= (arrayCountValidKeys!0 (_keys!5169 thiss!1248) #b00000000000000000000000000000000 (size!3273 (_keys!5169 thiss!1248))) lt!82775)))

(declare-fun b!163679 () Bool)

(assert (=> b!163679 (= e!107392 #b00000000000000000000000000000000)))

(assert (= (and d!51393 c!30125) b!163679))

(assert (= (and d!51393 (not c!30125)) b!163678))

(assert (= (and b!163678 c!30126) b!163677))

(assert (= (and b!163678 (not c!30126)) b!163676))

(assert (= (or b!163677 b!163676) bm!17309))

(declare-fun m!194225 () Bool)

(assert (=> bm!17309 m!194225))

(declare-fun m!194227 () Bool)

(assert (=> b!163678 m!194227))

(assert (=> b!163678 m!194227))

(declare-fun m!194229 () Bool)

(assert (=> b!163678 m!194229))

(assert (=> b!163600 d!51393))

(declare-fun b!163688 () Bool)

(declare-fun e!107402 () Bool)

(declare-fun call!17315 () Bool)

(assert (=> b!163688 (= e!107402 call!17315)))

(declare-fun b!163689 () Bool)

(declare-fun e!107401 () Bool)

(assert (=> b!163689 (= e!107401 e!107402)))

(declare-fun lt!82783 () (_ BitVec 64))

(assert (=> b!163689 (= lt!82783 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5038 0))(
  ( (Unit!5039) )
))
(declare-fun lt!82784 () Unit!5038)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6294 (_ BitVec 64) (_ BitVec 32)) Unit!5038)

(assert (=> b!163689 (= lt!82784 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5169 thiss!1248) lt!82783 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!163689 (arrayContainsKey!0 (_keys!5169 thiss!1248) lt!82783 #b00000000000000000000000000000000)))

(declare-fun lt!82782 () Unit!5038)

(assert (=> b!163689 (= lt!82782 lt!82784)))

(declare-fun res!77457 () Bool)

(assert (=> b!163689 (= res!77457 (= (seekEntryOrOpen!0 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000) (_keys!5169 thiss!1248) (mask!8018 thiss!1248)) (Found!411 #b00000000000000000000000000000000)))))

(assert (=> b!163689 (=> (not res!77457) (not e!107402))))

(declare-fun b!163690 () Bool)

(assert (=> b!163690 (= e!107401 call!17315)))

(declare-fun bm!17312 () Bool)

(assert (=> bm!17312 (= call!17315 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5169 thiss!1248) (mask!8018 thiss!1248)))))

(declare-fun d!51395 () Bool)

(declare-fun res!77456 () Bool)

(declare-fun e!107400 () Bool)

(assert (=> d!51395 (=> res!77456 e!107400)))

(assert (=> d!51395 (= res!77456 (bvsge #b00000000000000000000000000000000 (size!3273 (_keys!5169 thiss!1248))))))

(assert (=> d!51395 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5169 thiss!1248) (mask!8018 thiss!1248)) e!107400)))

(declare-fun b!163691 () Bool)

(assert (=> b!163691 (= e!107400 e!107401)))

(declare-fun c!30129 () Bool)

(assert (=> b!163691 (= c!30129 (validKeyInArray!0 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51395 (not res!77456)) b!163691))

(assert (= (and b!163691 c!30129) b!163689))

(assert (= (and b!163691 (not c!30129)) b!163690))

(assert (= (and b!163689 res!77457) b!163688))

(assert (= (or b!163688 b!163690) bm!17312))

(assert (=> b!163689 m!194227))

(declare-fun m!194231 () Bool)

(assert (=> b!163689 m!194231))

(declare-fun m!194233 () Bool)

(assert (=> b!163689 m!194233))

(assert (=> b!163689 m!194227))

(declare-fun m!194235 () Bool)

(assert (=> b!163689 m!194235))

(declare-fun m!194237 () Bool)

(assert (=> bm!17312 m!194237))

(assert (=> b!163691 m!194227))

(assert (=> b!163691 m!194227))

(assert (=> b!163691 m!194229))

(assert (=> b!163601 d!51395))

(declare-fun b!163702 () Bool)

(declare-fun e!107414 () Bool)

(declare-fun e!107413 () Bool)

(assert (=> b!163702 (= e!107414 e!107413)))

(declare-fun c!30132 () Bool)

(assert (=> b!163702 (= c!30132 (validKeyInArray!0 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51397 () Bool)

(declare-fun res!77465 () Bool)

(declare-fun e!107411 () Bool)

(assert (=> d!51397 (=> res!77465 e!107411)))

(assert (=> d!51397 (= res!77465 (bvsge #b00000000000000000000000000000000 (size!3273 (_keys!5169 thiss!1248))))))

(assert (=> d!51397 (= (arrayNoDuplicates!0 (_keys!5169 thiss!1248) #b00000000000000000000000000000000 Nil!2009) e!107411)))

(declare-fun b!163703 () Bool)

(declare-fun call!17318 () Bool)

(assert (=> b!163703 (= e!107413 call!17318)))

(declare-fun b!163704 () Bool)

(assert (=> b!163704 (= e!107413 call!17318)))

(declare-fun b!163705 () Bool)

(declare-fun e!107412 () Bool)

(declare-fun contains!1038 (List!2012 (_ BitVec 64)) Bool)

(assert (=> b!163705 (= e!107412 (contains!1038 Nil!2009 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17315 () Bool)

(assert (=> bm!17315 (= call!17318 (arrayNoDuplicates!0 (_keys!5169 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30132 (Cons!2008 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000) Nil!2009) Nil!2009)))))

(declare-fun b!163706 () Bool)

(assert (=> b!163706 (= e!107411 e!107414)))

(declare-fun res!77464 () Bool)

(assert (=> b!163706 (=> (not res!77464) (not e!107414))))

(assert (=> b!163706 (= res!77464 (not e!107412))))

(declare-fun res!77466 () Bool)

(assert (=> b!163706 (=> (not res!77466) (not e!107412))))

(assert (=> b!163706 (= res!77466 (validKeyInArray!0 (select (arr!2986 (_keys!5169 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51397 (not res!77465)) b!163706))

(assert (= (and b!163706 res!77466) b!163705))

(assert (= (and b!163706 res!77464) b!163702))

(assert (= (and b!163702 c!30132) b!163704))

(assert (= (and b!163702 (not c!30132)) b!163703))

(assert (= (or b!163704 b!163703) bm!17315))

(assert (=> b!163702 m!194227))

(assert (=> b!163702 m!194227))

(assert (=> b!163702 m!194229))

(assert (=> b!163705 m!194227))

(assert (=> b!163705 m!194227))

(declare-fun m!194239 () Bool)

(assert (=> b!163705 m!194239))

(assert (=> bm!17315 m!194227))

(declare-fun m!194241 () Bool)

(assert (=> bm!17315 m!194241))

(assert (=> b!163706 m!194227))

(assert (=> b!163706 m!194227))

(assert (=> b!163706 m!194229))

(assert (=> b!163602 d!51397))

(declare-fun condMapEmpty!6117 () Bool)

(declare-fun mapDefault!6117 () ValueCell!1458)

(assert (=> mapNonEmpty!6116 (= condMapEmpty!6117 (= mapRest!6116 ((as const (Array (_ BitVec 32) ValueCell!1458)) mapDefault!6117)))))

(declare-fun e!107415 () Bool)

(declare-fun mapRes!6117 () Bool)

(assert (=> mapNonEmpty!6116 (= tp!14000 (and e!107415 mapRes!6117))))

(declare-fun b!163708 () Bool)

(assert (=> b!163708 (= e!107415 tp_is_empty!3603)))

(declare-fun mapIsEmpty!6117 () Bool)

(assert (=> mapIsEmpty!6117 mapRes!6117))

(declare-fun mapNonEmpty!6117 () Bool)

(declare-fun tp!14001 () Bool)

(declare-fun e!107416 () Bool)

(assert (=> mapNonEmpty!6117 (= mapRes!6117 (and tp!14001 e!107416))))

(declare-fun mapValue!6117 () ValueCell!1458)

(declare-fun mapRest!6117 () (Array (_ BitVec 32) ValueCell!1458))

(declare-fun mapKey!6117 () (_ BitVec 32))

(assert (=> mapNonEmpty!6117 (= mapRest!6116 (store mapRest!6117 mapKey!6117 mapValue!6117))))

(declare-fun b!163707 () Bool)

(assert (=> b!163707 (= e!107416 tp_is_empty!3603)))

(assert (= (and mapNonEmpty!6116 condMapEmpty!6117) mapIsEmpty!6117))

(assert (= (and mapNonEmpty!6116 (not condMapEmpty!6117)) mapNonEmpty!6117))

(assert (= (and mapNonEmpty!6117 ((_ is ValueCellFull!1458) mapValue!6117)) b!163707))

(assert (= (and mapNonEmpty!6116 ((_ is ValueCellFull!1458) mapDefault!6117)) b!163708))

(declare-fun m!194243 () Bool)

(assert (=> mapNonEmpty!6117 m!194243))

(check-sat (not d!51391) (not b!163702) (not b_next!3801) (not d!51387) tp_is_empty!3603 b_and!10233 (not b!163678) (not b!163666) (not b!163665) (not b!163706) (not d!51385) (not bm!17309) (not b!163628) (not bm!17315) (not bm!17312) (not b!163691) (not b!163650) (not mapNonEmpty!6117) (not b!163689) (not b!163705))
(check-sat b_and!10233 (not b_next!3801))

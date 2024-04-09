; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21532 () Bool)

(assert start!21532)

(declare-fun b!215803 () Bool)

(declare-fun b_free!5733 () Bool)

(declare-fun b_next!5733 () Bool)

(assert (=> b!215803 (= b_free!5733 (not b_next!5733))))

(declare-fun tp!20320 () Bool)

(declare-fun b_and!12641 () Bool)

(assert (=> b!215803 (= tp!20320 b_and!12641)))

(declare-fun mapIsEmpty!9542 () Bool)

(declare-fun mapRes!9542 () Bool)

(assert (=> mapIsEmpty!9542 mapRes!9542))

(declare-fun b!215797 () Bool)

(declare-fun e!140412 () Bool)

(declare-fun e!140409 () Bool)

(assert (=> b!215797 (= e!140412 (and e!140409 mapRes!9542))))

(declare-fun condMapEmpty!9542 () Bool)

(declare-datatypes ((V!7107 0))(
  ( (V!7108 (val!2842 Int)) )
))
(declare-datatypes ((ValueCell!2454 0))(
  ( (ValueCellFull!2454 (v!4856 V!7107)) (EmptyCell!2454) )
))
(declare-datatypes ((array!10420 0))(
  ( (array!10421 (arr!4935 (Array (_ BitVec 32) ValueCell!2454)) (size!5266 (_ BitVec 32))) )
))
(declare-datatypes ((array!10422 0))(
  ( (array!10423 (arr!4936 (Array (_ BitVec 32) (_ BitVec 64))) (size!5267 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2808 0))(
  ( (LongMapFixedSize!2809 (defaultEntry!4054 Int) (mask!9768 (_ BitVec 32)) (extraKeys!3791 (_ BitVec 32)) (zeroValue!3895 V!7107) (minValue!3895 V!7107) (_size!1453 (_ BitVec 32)) (_keys!6093 array!10422) (_values!4037 array!10420) (_vacant!1453 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2808)

(declare-fun mapDefault!9542 () ValueCell!2454)

(assert (=> b!215797 (= condMapEmpty!9542 (= (arr!4935 (_values!4037 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2454)) mapDefault!9542)))))

(declare-fun b!215798 () Bool)

(declare-fun e!140407 () Bool)

(declare-fun e!140408 () Bool)

(assert (=> b!215798 (= e!140407 e!140408)))

(declare-fun res!105546 () Bool)

(assert (=> b!215798 (=> (not res!105546) (not e!140408))))

(declare-datatypes ((SeekEntryResult!746 0))(
  ( (MissingZero!746 (index!5154 (_ BitVec 32))) (Found!746 (index!5155 (_ BitVec 32))) (Intermediate!746 (undefined!1558 Bool) (index!5156 (_ BitVec 32)) (x!22569 (_ BitVec 32))) (Undefined!746) (MissingVacant!746 (index!5157 (_ BitVec 32))) )
))
(declare-fun lt!111064 () SeekEntryResult!746)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215798 (= res!105546 (or (= lt!111064 (MissingZero!746 index!297)) (= lt!111064 (MissingVacant!746 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10422 (_ BitVec 32)) SeekEntryResult!746)

(assert (=> b!215798 (= lt!111064 (seekEntryOrOpen!0 key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(declare-fun b!215799 () Bool)

(declare-fun res!105548 () Bool)

(assert (=> b!215799 (=> (not res!105548) (not e!140408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215799 (= res!105548 (validMask!0 (mask!9768 thiss!1504)))))

(declare-fun b!215800 () Bool)

(declare-fun tp_is_empty!5595 () Bool)

(assert (=> b!215800 (= e!140409 tp_is_empty!5595)))

(declare-fun b!215801 () Bool)

(declare-fun res!105547 () Bool)

(assert (=> b!215801 (=> (not res!105547) (not e!140407))))

(assert (=> b!215801 (= res!105547 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!215802 () Bool)

(assert (=> b!215802 (= e!140408 (and (= (size!5266 (_values!4037 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9768 thiss!1504))) (= (size!5267 (_keys!6093 thiss!1504)) (size!5266 (_values!4037 thiss!1504))) (bvsge (mask!9768 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3791 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3791 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun e!140410 () Bool)

(declare-fun array_inv!3255 (array!10422) Bool)

(declare-fun array_inv!3256 (array!10420) Bool)

(assert (=> b!215803 (= e!140410 (and tp!20320 tp_is_empty!5595 (array_inv!3255 (_keys!6093 thiss!1504)) (array_inv!3256 (_values!4037 thiss!1504)) e!140412))))

(declare-fun mapNonEmpty!9542 () Bool)

(declare-fun tp!20321 () Bool)

(declare-fun e!140413 () Bool)

(assert (=> mapNonEmpty!9542 (= mapRes!9542 (and tp!20321 e!140413))))

(declare-fun mapRest!9542 () (Array (_ BitVec 32) ValueCell!2454))

(declare-fun mapValue!9542 () ValueCell!2454)

(declare-fun mapKey!9542 () (_ BitVec 32))

(assert (=> mapNonEmpty!9542 (= (arr!4935 (_values!4037 thiss!1504)) (store mapRest!9542 mapKey!9542 mapValue!9542))))

(declare-fun b!215804 () Bool)

(assert (=> b!215804 (= e!140413 tp_is_empty!5595)))

(declare-fun res!105545 () Bool)

(assert (=> start!21532 (=> (not res!105545) (not e!140407))))

(declare-fun valid!1134 (LongMapFixedSize!2808) Bool)

(assert (=> start!21532 (= res!105545 (valid!1134 thiss!1504))))

(assert (=> start!21532 e!140407))

(assert (=> start!21532 e!140410))

(assert (=> start!21532 true))

(assert (= (and start!21532 res!105545) b!215801))

(assert (= (and b!215801 res!105547) b!215798))

(assert (= (and b!215798 res!105546) b!215799))

(assert (= (and b!215799 res!105548) b!215802))

(assert (= (and b!215797 condMapEmpty!9542) mapIsEmpty!9542))

(assert (= (and b!215797 (not condMapEmpty!9542)) mapNonEmpty!9542))

(get-info :version)

(assert (= (and mapNonEmpty!9542 ((_ is ValueCellFull!2454) mapValue!9542)) b!215804))

(assert (= (and b!215797 ((_ is ValueCellFull!2454) mapDefault!9542)) b!215800))

(assert (= b!215803 b!215797))

(assert (= start!21532 b!215803))

(declare-fun m!242817 () Bool)

(assert (=> b!215798 m!242817))

(declare-fun m!242819 () Bool)

(assert (=> start!21532 m!242819))

(declare-fun m!242821 () Bool)

(assert (=> b!215799 m!242821))

(declare-fun m!242823 () Bool)

(assert (=> mapNonEmpty!9542 m!242823))

(declare-fun m!242825 () Bool)

(assert (=> b!215803 m!242825))

(declare-fun m!242827 () Bool)

(assert (=> b!215803 m!242827))

(check-sat (not mapNonEmpty!9542) (not start!21532) (not b!215803) (not b!215798) (not b!215799) b_and!12641 (not b_next!5733) tp_is_empty!5595)
(check-sat b_and!12641 (not b_next!5733))
(get-model)

(declare-fun d!58401 () Bool)

(assert (=> d!58401 (= (validMask!0 (mask!9768 thiss!1504)) (and (or (= (mask!9768 thiss!1504) #b00000000000000000000000000000111) (= (mask!9768 thiss!1504) #b00000000000000000000000000001111) (= (mask!9768 thiss!1504) #b00000000000000000000000000011111) (= (mask!9768 thiss!1504) #b00000000000000000000000000111111) (= (mask!9768 thiss!1504) #b00000000000000000000000001111111) (= (mask!9768 thiss!1504) #b00000000000000000000000011111111) (= (mask!9768 thiss!1504) #b00000000000000000000000111111111) (= (mask!9768 thiss!1504) #b00000000000000000000001111111111) (= (mask!9768 thiss!1504) #b00000000000000000000011111111111) (= (mask!9768 thiss!1504) #b00000000000000000000111111111111) (= (mask!9768 thiss!1504) #b00000000000000000001111111111111) (= (mask!9768 thiss!1504) #b00000000000000000011111111111111) (= (mask!9768 thiss!1504) #b00000000000000000111111111111111) (= (mask!9768 thiss!1504) #b00000000000000001111111111111111) (= (mask!9768 thiss!1504) #b00000000000000011111111111111111) (= (mask!9768 thiss!1504) #b00000000000000111111111111111111) (= (mask!9768 thiss!1504) #b00000000000001111111111111111111) (= (mask!9768 thiss!1504) #b00000000000011111111111111111111) (= (mask!9768 thiss!1504) #b00000000000111111111111111111111) (= (mask!9768 thiss!1504) #b00000000001111111111111111111111) (= (mask!9768 thiss!1504) #b00000000011111111111111111111111) (= (mask!9768 thiss!1504) #b00000000111111111111111111111111) (= (mask!9768 thiss!1504) #b00000001111111111111111111111111) (= (mask!9768 thiss!1504) #b00000011111111111111111111111111) (= (mask!9768 thiss!1504) #b00000111111111111111111111111111) (= (mask!9768 thiss!1504) #b00001111111111111111111111111111) (= (mask!9768 thiss!1504) #b00011111111111111111111111111111) (= (mask!9768 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9768 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!215799 d!58401))

(declare-fun d!58403 () Bool)

(declare-fun res!105567 () Bool)

(declare-fun e!140437 () Bool)

(assert (=> d!58403 (=> (not res!105567) (not e!140437))))

(declare-fun simpleValid!219 (LongMapFixedSize!2808) Bool)

(assert (=> d!58403 (= res!105567 (simpleValid!219 thiss!1504))))

(assert (=> d!58403 (= (valid!1134 thiss!1504) e!140437)))

(declare-fun b!215835 () Bool)

(declare-fun res!105568 () Bool)

(assert (=> b!215835 (=> (not res!105568) (not e!140437))))

(declare-fun arrayCountValidKeys!0 (array!10422 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215835 (= res!105568 (= (arrayCountValidKeys!0 (_keys!6093 thiss!1504) #b00000000000000000000000000000000 (size!5267 (_keys!6093 thiss!1504))) (_size!1453 thiss!1504)))))

(declare-fun b!215836 () Bool)

(declare-fun res!105569 () Bool)

(assert (=> b!215836 (=> (not res!105569) (not e!140437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10422 (_ BitVec 32)) Bool)

(assert (=> b!215836 (= res!105569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(declare-fun b!215837 () Bool)

(declare-datatypes ((List!3159 0))(
  ( (Nil!3156) (Cons!3155 (h!3801 (_ BitVec 64)) (t!8122 List!3159)) )
))
(declare-fun arrayNoDuplicates!0 (array!10422 (_ BitVec 32) List!3159) Bool)

(assert (=> b!215837 (= e!140437 (arrayNoDuplicates!0 (_keys!6093 thiss!1504) #b00000000000000000000000000000000 Nil!3156))))

(assert (= (and d!58403 res!105567) b!215835))

(assert (= (and b!215835 res!105568) b!215836))

(assert (= (and b!215836 res!105569) b!215837))

(declare-fun m!242841 () Bool)

(assert (=> d!58403 m!242841))

(declare-fun m!242843 () Bool)

(assert (=> b!215835 m!242843))

(declare-fun m!242845 () Bool)

(assert (=> b!215836 m!242845))

(declare-fun m!242847 () Bool)

(assert (=> b!215837 m!242847))

(assert (=> start!21532 d!58403))

(declare-fun b!215850 () Bool)

(declare-fun c!36237 () Bool)

(declare-fun lt!111074 () (_ BitVec 64))

(assert (=> b!215850 (= c!36237 (= lt!111074 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140445 () SeekEntryResult!746)

(declare-fun e!140446 () SeekEntryResult!746)

(assert (=> b!215850 (= e!140445 e!140446)))

(declare-fun b!215851 () Bool)

(declare-fun e!140444 () SeekEntryResult!746)

(assert (=> b!215851 (= e!140444 Undefined!746)))

(declare-fun d!58405 () Bool)

(declare-fun lt!111075 () SeekEntryResult!746)

(assert (=> d!58405 (and (or ((_ is Undefined!746) lt!111075) (not ((_ is Found!746) lt!111075)) (and (bvsge (index!5155 lt!111075) #b00000000000000000000000000000000) (bvslt (index!5155 lt!111075) (size!5267 (_keys!6093 thiss!1504))))) (or ((_ is Undefined!746) lt!111075) ((_ is Found!746) lt!111075) (not ((_ is MissingZero!746) lt!111075)) (and (bvsge (index!5154 lt!111075) #b00000000000000000000000000000000) (bvslt (index!5154 lt!111075) (size!5267 (_keys!6093 thiss!1504))))) (or ((_ is Undefined!746) lt!111075) ((_ is Found!746) lt!111075) ((_ is MissingZero!746) lt!111075) (not ((_ is MissingVacant!746) lt!111075)) (and (bvsge (index!5157 lt!111075) #b00000000000000000000000000000000) (bvslt (index!5157 lt!111075) (size!5267 (_keys!6093 thiss!1504))))) (or ((_ is Undefined!746) lt!111075) (ite ((_ is Found!746) lt!111075) (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5155 lt!111075)) key!932) (ite ((_ is MissingZero!746) lt!111075) (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5154 lt!111075)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!746) lt!111075) (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5157 lt!111075)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58405 (= lt!111075 e!140444)))

(declare-fun c!36238 () Bool)

(declare-fun lt!111076 () SeekEntryResult!746)

(assert (=> d!58405 (= c!36238 (and ((_ is Intermediate!746) lt!111076) (undefined!1558 lt!111076)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10422 (_ BitVec 32)) SeekEntryResult!746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58405 (= lt!111076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9768 thiss!1504)) key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(assert (=> d!58405 (validMask!0 (mask!9768 thiss!1504))))

(assert (=> d!58405 (= (seekEntryOrOpen!0 key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)) lt!111075)))

(declare-fun b!215852 () Bool)

(assert (=> b!215852 (= e!140445 (Found!746 (index!5156 lt!111076)))))

(declare-fun b!215853 () Bool)

(assert (=> b!215853 (= e!140444 e!140445)))

(assert (=> b!215853 (= lt!111074 (select (arr!4936 (_keys!6093 thiss!1504)) (index!5156 lt!111076)))))

(declare-fun c!36236 () Bool)

(assert (=> b!215853 (= c!36236 (= lt!111074 key!932))))

(declare-fun b!215854 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10422 (_ BitVec 32)) SeekEntryResult!746)

(assert (=> b!215854 (= e!140446 (seekKeyOrZeroReturnVacant!0 (x!22569 lt!111076) (index!5156 lt!111076) (index!5156 lt!111076) key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(declare-fun b!215855 () Bool)

(assert (=> b!215855 (= e!140446 (MissingZero!746 (index!5156 lt!111076)))))

(assert (= (and d!58405 c!36238) b!215851))

(assert (= (and d!58405 (not c!36238)) b!215853))

(assert (= (and b!215853 c!36236) b!215852))

(assert (= (and b!215853 (not c!36236)) b!215850))

(assert (= (and b!215850 c!36237) b!215855))

(assert (= (and b!215850 (not c!36237)) b!215854))

(declare-fun m!242849 () Bool)

(assert (=> d!58405 m!242849))

(declare-fun m!242851 () Bool)

(assert (=> d!58405 m!242851))

(declare-fun m!242853 () Bool)

(assert (=> d!58405 m!242853))

(declare-fun m!242855 () Bool)

(assert (=> d!58405 m!242855))

(assert (=> d!58405 m!242821))

(declare-fun m!242857 () Bool)

(assert (=> d!58405 m!242857))

(assert (=> d!58405 m!242851))

(declare-fun m!242859 () Bool)

(assert (=> b!215853 m!242859))

(declare-fun m!242861 () Bool)

(assert (=> b!215854 m!242861))

(assert (=> b!215798 d!58405))

(declare-fun d!58407 () Bool)

(assert (=> d!58407 (= (array_inv!3255 (_keys!6093 thiss!1504)) (bvsge (size!5267 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215803 d!58407))

(declare-fun d!58409 () Bool)

(assert (=> d!58409 (= (array_inv!3256 (_values!4037 thiss!1504)) (bvsge (size!5266 (_values!4037 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215803 d!58409))

(declare-fun b!215862 () Bool)

(declare-fun e!140452 () Bool)

(assert (=> b!215862 (= e!140452 tp_is_empty!5595)))

(declare-fun mapNonEmpty!9548 () Bool)

(declare-fun mapRes!9548 () Bool)

(declare-fun tp!20330 () Bool)

(assert (=> mapNonEmpty!9548 (= mapRes!9548 (and tp!20330 e!140452))))

(declare-fun mapRest!9548 () (Array (_ BitVec 32) ValueCell!2454))

(declare-fun mapKey!9548 () (_ BitVec 32))

(declare-fun mapValue!9548 () ValueCell!2454)

(assert (=> mapNonEmpty!9548 (= mapRest!9542 (store mapRest!9548 mapKey!9548 mapValue!9548))))

(declare-fun condMapEmpty!9548 () Bool)

(declare-fun mapDefault!9548 () ValueCell!2454)

(assert (=> mapNonEmpty!9542 (= condMapEmpty!9548 (= mapRest!9542 ((as const (Array (_ BitVec 32) ValueCell!2454)) mapDefault!9548)))))

(declare-fun e!140451 () Bool)

(assert (=> mapNonEmpty!9542 (= tp!20321 (and e!140451 mapRes!9548))))

(declare-fun mapIsEmpty!9548 () Bool)

(assert (=> mapIsEmpty!9548 mapRes!9548))

(declare-fun b!215863 () Bool)

(assert (=> b!215863 (= e!140451 tp_is_empty!5595)))

(assert (= (and mapNonEmpty!9542 condMapEmpty!9548) mapIsEmpty!9548))

(assert (= (and mapNonEmpty!9542 (not condMapEmpty!9548)) mapNonEmpty!9548))

(assert (= (and mapNonEmpty!9548 ((_ is ValueCellFull!2454) mapValue!9548)) b!215862))

(assert (= (and mapNonEmpty!9542 ((_ is ValueCellFull!2454) mapDefault!9548)) b!215863))

(declare-fun m!242863 () Bool)

(assert (=> mapNonEmpty!9548 m!242863))

(check-sat (not b!215836) (not mapNonEmpty!9548) (not d!58403) (not b!215854) (not b!215835) b_and!12641 (not b_next!5733) (not d!58405) tp_is_empty!5595 (not b!215837))
(check-sat b_and!12641 (not b_next!5733))
(get-model)

(declare-fun b!215874 () Bool)

(declare-fun res!105579 () Bool)

(declare-fun e!140455 () Bool)

(assert (=> b!215874 (=> (not res!105579) (not e!140455))))

(declare-fun size!5270 (LongMapFixedSize!2808) (_ BitVec 32))

(assert (=> b!215874 (= res!105579 (= (size!5270 thiss!1504) (bvadd (_size!1453 thiss!1504) (bvsdiv (bvadd (extraKeys!3791 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!215875 () Bool)

(assert (=> b!215875 (= e!140455 (and (bvsge (extraKeys!3791 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3791 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1453 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215873 () Bool)

(declare-fun res!105578 () Bool)

(assert (=> b!215873 (=> (not res!105578) (not e!140455))))

(assert (=> b!215873 (= res!105578 (bvsge (size!5270 thiss!1504) (_size!1453 thiss!1504)))))

(declare-fun d!58411 () Bool)

(declare-fun res!105581 () Bool)

(assert (=> d!58411 (=> (not res!105581) (not e!140455))))

(assert (=> d!58411 (= res!105581 (validMask!0 (mask!9768 thiss!1504)))))

(assert (=> d!58411 (= (simpleValid!219 thiss!1504) e!140455)))

(declare-fun b!215872 () Bool)

(declare-fun res!105580 () Bool)

(assert (=> b!215872 (=> (not res!105580) (not e!140455))))

(assert (=> b!215872 (= res!105580 (and (= (size!5266 (_values!4037 thiss!1504)) (bvadd (mask!9768 thiss!1504) #b00000000000000000000000000000001)) (= (size!5267 (_keys!6093 thiss!1504)) (size!5266 (_values!4037 thiss!1504))) (bvsge (_size!1453 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1453 thiss!1504) (bvadd (mask!9768 thiss!1504) #b00000000000000000000000000000001))))))

(assert (= (and d!58411 res!105581) b!215872))

(assert (= (and b!215872 res!105580) b!215873))

(assert (= (and b!215873 res!105578) b!215874))

(assert (= (and b!215874 res!105579) b!215875))

(declare-fun m!242865 () Bool)

(assert (=> b!215874 m!242865))

(assert (=> b!215873 m!242865))

(assert (=> d!58411 m!242821))

(assert (=> d!58403 d!58411))

(declare-fun b!215886 () Bool)

(declare-fun e!140467 () Bool)

(declare-fun contains!1430 (List!3159 (_ BitVec 64)) Bool)

(assert (=> b!215886 (= e!140467 (contains!1430 Nil!3156 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215887 () Bool)

(declare-fun e!140464 () Bool)

(declare-fun e!140466 () Bool)

(assert (=> b!215887 (= e!140464 e!140466)))

(declare-fun c!36241 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!215887 (= c!36241 (validKeyInArray!0 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215888 () Bool)

(declare-fun e!140465 () Bool)

(assert (=> b!215888 (= e!140465 e!140464)))

(declare-fun res!105589 () Bool)

(assert (=> b!215888 (=> (not res!105589) (not e!140464))))

(assert (=> b!215888 (= res!105589 (not e!140467))))

(declare-fun res!105590 () Bool)

(assert (=> b!215888 (=> (not res!105590) (not e!140467))))

(assert (=> b!215888 (= res!105590 (validKeyInArray!0 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215889 () Bool)

(declare-fun call!20359 () Bool)

(assert (=> b!215889 (= e!140466 call!20359)))

(declare-fun b!215890 () Bool)

(assert (=> b!215890 (= e!140466 call!20359)))

(declare-fun d!58413 () Bool)

(declare-fun res!105588 () Bool)

(assert (=> d!58413 (=> res!105588 e!140465)))

(assert (=> d!58413 (= res!105588 (bvsge #b00000000000000000000000000000000 (size!5267 (_keys!6093 thiss!1504))))))

(assert (=> d!58413 (= (arrayNoDuplicates!0 (_keys!6093 thiss!1504) #b00000000000000000000000000000000 Nil!3156) e!140465)))

(declare-fun bm!20356 () Bool)

(assert (=> bm!20356 (= call!20359 (arrayNoDuplicates!0 (_keys!6093 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36241 (Cons!3155 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000) Nil!3156) Nil!3156)))))

(assert (= (and d!58413 (not res!105588)) b!215888))

(assert (= (and b!215888 res!105590) b!215886))

(assert (= (and b!215888 res!105589) b!215887))

(assert (= (and b!215887 c!36241) b!215889))

(assert (= (and b!215887 (not c!36241)) b!215890))

(assert (= (or b!215889 b!215890) bm!20356))

(declare-fun m!242867 () Bool)

(assert (=> b!215886 m!242867))

(assert (=> b!215886 m!242867))

(declare-fun m!242869 () Bool)

(assert (=> b!215886 m!242869))

(assert (=> b!215887 m!242867))

(assert (=> b!215887 m!242867))

(declare-fun m!242871 () Bool)

(assert (=> b!215887 m!242871))

(assert (=> b!215888 m!242867))

(assert (=> b!215888 m!242867))

(assert (=> b!215888 m!242871))

(assert (=> bm!20356 m!242867))

(declare-fun m!242873 () Bool)

(assert (=> bm!20356 m!242873))

(assert (=> b!215837 d!58413))

(declare-fun d!58415 () Bool)

(declare-fun e!140480 () Bool)

(assert (=> d!58415 e!140480))

(declare-fun c!36248 () Bool)

(declare-fun lt!111081 () SeekEntryResult!746)

(assert (=> d!58415 (= c!36248 (and ((_ is Intermediate!746) lt!111081) (undefined!1558 lt!111081)))))

(declare-fun e!140478 () SeekEntryResult!746)

(assert (=> d!58415 (= lt!111081 e!140478)))

(declare-fun c!36250 () Bool)

(assert (=> d!58415 (= c!36250 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!111082 () (_ BitVec 64))

(assert (=> d!58415 (= lt!111082 (select (arr!4936 (_keys!6093 thiss!1504)) (toIndex!0 key!932 (mask!9768 thiss!1504))))))

(assert (=> d!58415 (validMask!0 (mask!9768 thiss!1504))))

(assert (=> d!58415 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9768 thiss!1504)) key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)) lt!111081)))

(declare-fun b!215909 () Bool)

(declare-fun e!140482 () Bool)

(assert (=> b!215909 (= e!140480 e!140482)))

(declare-fun res!105598 () Bool)

(assert (=> b!215909 (= res!105598 (and ((_ is Intermediate!746) lt!111081) (not (undefined!1558 lt!111081)) (bvslt (x!22569 lt!111081) #b01111111111111111111111111111110) (bvsge (x!22569 lt!111081) #b00000000000000000000000000000000) (bvsge (x!22569 lt!111081) #b00000000000000000000000000000000)))))

(assert (=> b!215909 (=> (not res!105598) (not e!140482))))

(declare-fun b!215910 () Bool)

(declare-fun e!140479 () SeekEntryResult!746)

(assert (=> b!215910 (= e!140479 (Intermediate!746 false (toIndex!0 key!932 (mask!9768 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!215911 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215911 (= e!140479 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!9768 thiss!1504)) #b00000000000000000000000000000000 (mask!9768 thiss!1504)) key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(declare-fun b!215912 () Bool)

(assert (=> b!215912 (and (bvsge (index!5156 lt!111081) #b00000000000000000000000000000000) (bvslt (index!5156 lt!111081) (size!5267 (_keys!6093 thiss!1504))))))

(declare-fun e!140481 () Bool)

(assert (=> b!215912 (= e!140481 (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5156 lt!111081)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!215913 () Bool)

(assert (=> b!215913 (and (bvsge (index!5156 lt!111081) #b00000000000000000000000000000000) (bvslt (index!5156 lt!111081) (size!5267 (_keys!6093 thiss!1504))))))

(declare-fun res!105597 () Bool)

(assert (=> b!215913 (= res!105597 (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5156 lt!111081)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215913 (=> res!105597 e!140481)))

(declare-fun b!215914 () Bool)

(assert (=> b!215914 (= e!140480 (bvsge (x!22569 lt!111081) #b01111111111111111111111111111110))))

(declare-fun b!215915 () Bool)

(assert (=> b!215915 (= e!140478 (Intermediate!746 true (toIndex!0 key!932 (mask!9768 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!215916 () Bool)

(assert (=> b!215916 (= e!140478 e!140479)))

(declare-fun c!36249 () Bool)

(assert (=> b!215916 (= c!36249 (or (= lt!111082 key!932) (= (bvadd lt!111082 lt!111082) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!215917 () Bool)

(assert (=> b!215917 (and (bvsge (index!5156 lt!111081) #b00000000000000000000000000000000) (bvslt (index!5156 lt!111081) (size!5267 (_keys!6093 thiss!1504))))))

(declare-fun res!105599 () Bool)

(assert (=> b!215917 (= res!105599 (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5156 lt!111081)) key!932))))

(assert (=> b!215917 (=> res!105599 e!140481)))

(assert (=> b!215917 (= e!140482 e!140481)))

(assert (= (and d!58415 c!36250) b!215915))

(assert (= (and d!58415 (not c!36250)) b!215916))

(assert (= (and b!215916 c!36249) b!215910))

(assert (= (and b!215916 (not c!36249)) b!215911))

(assert (= (and d!58415 c!36248) b!215914))

(assert (= (and d!58415 (not c!36248)) b!215909))

(assert (= (and b!215909 res!105598) b!215917))

(assert (= (and b!215917 (not res!105599)) b!215913))

(assert (= (and b!215913 (not res!105597)) b!215912))

(declare-fun m!242875 () Bool)

(assert (=> b!215912 m!242875))

(assert (=> b!215911 m!242851))

(declare-fun m!242877 () Bool)

(assert (=> b!215911 m!242877))

(assert (=> b!215911 m!242877))

(declare-fun m!242879 () Bool)

(assert (=> b!215911 m!242879))

(assert (=> b!215913 m!242875))

(assert (=> b!215917 m!242875))

(assert (=> d!58415 m!242851))

(declare-fun m!242881 () Bool)

(assert (=> d!58415 m!242881))

(assert (=> d!58415 m!242821))

(assert (=> d!58405 d!58415))

(declare-fun d!58417 () Bool)

(declare-fun lt!111088 () (_ BitVec 32))

(declare-fun lt!111087 () (_ BitVec 32))

(assert (=> d!58417 (= lt!111088 (bvmul (bvxor lt!111087 (bvlshr lt!111087 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58417 (= lt!111087 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58417 (and (bvsge (mask!9768 thiss!1504) #b00000000000000000000000000000000) (let ((res!105600 (let ((h!3802 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!22585 (bvmul (bvxor h!3802 (bvlshr h!3802 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!22585 (bvlshr x!22585 #b00000000000000000000000000001101)) (mask!9768 thiss!1504)))))) (and (bvslt res!105600 (bvadd (mask!9768 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!105600 #b00000000000000000000000000000000))))))

(assert (=> d!58417 (= (toIndex!0 key!932 (mask!9768 thiss!1504)) (bvand (bvxor lt!111088 (bvlshr lt!111088 #b00000000000000000000000000001101)) (mask!9768 thiss!1504)))))

(assert (=> d!58405 d!58417))

(assert (=> d!58405 d!58401))

(declare-fun bm!20359 () Bool)

(declare-fun call!20362 () Bool)

(assert (=> bm!20359 (= call!20362 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(declare-fun b!215927 () Bool)

(declare-fun e!140489 () Bool)

(declare-fun e!140490 () Bool)

(assert (=> b!215927 (= e!140489 e!140490)))

(declare-fun lt!111097 () (_ BitVec 64))

(assert (=> b!215927 (= lt!111097 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6497 0))(
  ( (Unit!6498) )
))
(declare-fun lt!111096 () Unit!6497)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10422 (_ BitVec 64) (_ BitVec 32)) Unit!6497)

(assert (=> b!215927 (= lt!111096 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6093 thiss!1504) lt!111097 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!215927 (arrayContainsKey!0 (_keys!6093 thiss!1504) lt!111097 #b00000000000000000000000000000000)))

(declare-fun lt!111095 () Unit!6497)

(assert (=> b!215927 (= lt!111095 lt!111096)))

(declare-fun res!105606 () Bool)

(assert (=> b!215927 (= res!105606 (= (seekEntryOrOpen!0 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000) (_keys!6093 thiss!1504) (mask!9768 thiss!1504)) (Found!746 #b00000000000000000000000000000000)))))

(assert (=> b!215927 (=> (not res!105606) (not e!140490))))

(declare-fun b!215928 () Bool)

(declare-fun e!140491 () Bool)

(assert (=> b!215928 (= e!140491 e!140489)))

(declare-fun c!36253 () Bool)

(assert (=> b!215928 (= c!36253 (validKeyInArray!0 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215929 () Bool)

(assert (=> b!215929 (= e!140489 call!20362)))

(declare-fun b!215926 () Bool)

(assert (=> b!215926 (= e!140490 call!20362)))

(declare-fun d!58419 () Bool)

(declare-fun res!105605 () Bool)

(assert (=> d!58419 (=> res!105605 e!140491)))

(assert (=> d!58419 (= res!105605 (bvsge #b00000000000000000000000000000000 (size!5267 (_keys!6093 thiss!1504))))))

(assert (=> d!58419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)) e!140491)))

(assert (= (and d!58419 (not res!105605)) b!215928))

(assert (= (and b!215928 c!36253) b!215927))

(assert (= (and b!215928 (not c!36253)) b!215929))

(assert (= (and b!215927 res!105606) b!215926))

(assert (= (or b!215926 b!215929) bm!20359))

(declare-fun m!242883 () Bool)

(assert (=> bm!20359 m!242883))

(assert (=> b!215927 m!242867))

(declare-fun m!242885 () Bool)

(assert (=> b!215927 m!242885))

(declare-fun m!242887 () Bool)

(assert (=> b!215927 m!242887))

(assert (=> b!215927 m!242867))

(declare-fun m!242889 () Bool)

(assert (=> b!215927 m!242889))

(assert (=> b!215928 m!242867))

(assert (=> b!215928 m!242867))

(assert (=> b!215928 m!242871))

(assert (=> b!215836 d!58419))

(declare-fun b!215938 () Bool)

(declare-fun e!140497 () (_ BitVec 32))

(assert (=> b!215938 (= e!140497 #b00000000000000000000000000000000)))

(declare-fun b!215939 () Bool)

(declare-fun e!140496 () (_ BitVec 32))

(assert (=> b!215939 (= e!140497 e!140496)))

(declare-fun c!36258 () Bool)

(assert (=> b!215939 (= c!36258 (validKeyInArray!0 (select (arr!4936 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215940 () Bool)

(declare-fun call!20365 () (_ BitVec 32))

(assert (=> b!215940 (= e!140496 (bvadd #b00000000000000000000000000000001 call!20365))))

(declare-fun bm!20362 () Bool)

(assert (=> bm!20362 (= call!20365 (arrayCountValidKeys!0 (_keys!6093 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5267 (_keys!6093 thiss!1504))))))

(declare-fun d!58421 () Bool)

(declare-fun lt!111100 () (_ BitVec 32))

(assert (=> d!58421 (and (bvsge lt!111100 #b00000000000000000000000000000000) (bvsle lt!111100 (bvsub (size!5267 (_keys!6093 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58421 (= lt!111100 e!140497)))

(declare-fun c!36259 () Bool)

(assert (=> d!58421 (= c!36259 (bvsge #b00000000000000000000000000000000 (size!5267 (_keys!6093 thiss!1504))))))

(assert (=> d!58421 (and (bvsle #b00000000000000000000000000000000 (size!5267 (_keys!6093 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5267 (_keys!6093 thiss!1504)) (size!5267 (_keys!6093 thiss!1504))))))

(assert (=> d!58421 (= (arrayCountValidKeys!0 (_keys!6093 thiss!1504) #b00000000000000000000000000000000 (size!5267 (_keys!6093 thiss!1504))) lt!111100)))

(declare-fun b!215941 () Bool)

(assert (=> b!215941 (= e!140496 call!20365)))

(assert (= (and d!58421 c!36259) b!215938))

(assert (= (and d!58421 (not c!36259)) b!215939))

(assert (= (and b!215939 c!36258) b!215940))

(assert (= (and b!215939 (not c!36258)) b!215941))

(assert (= (or b!215940 b!215941) bm!20362))

(assert (=> b!215939 m!242867))

(assert (=> b!215939 m!242867))

(assert (=> b!215939 m!242871))

(declare-fun m!242891 () Bool)

(assert (=> bm!20362 m!242891))

(assert (=> b!215835 d!58421))

(declare-fun b!215954 () Bool)

(declare-fun c!36268 () Bool)

(declare-fun lt!111106 () (_ BitVec 64))

(assert (=> b!215954 (= c!36268 (= lt!111106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140506 () SeekEntryResult!746)

(declare-fun e!140505 () SeekEntryResult!746)

(assert (=> b!215954 (= e!140506 e!140505)))

(declare-fun b!215956 () Bool)

(assert (=> b!215956 (= e!140505 (MissingVacant!746 (index!5156 lt!111076)))))

(declare-fun b!215957 () Bool)

(declare-fun e!140504 () SeekEntryResult!746)

(assert (=> b!215957 (= e!140504 e!140506)))

(declare-fun c!36267 () Bool)

(assert (=> b!215957 (= c!36267 (= lt!111106 key!932))))

(declare-fun lt!111105 () SeekEntryResult!746)

(declare-fun d!58423 () Bool)

(assert (=> d!58423 (and (or ((_ is Undefined!746) lt!111105) (not ((_ is Found!746) lt!111105)) (and (bvsge (index!5155 lt!111105) #b00000000000000000000000000000000) (bvslt (index!5155 lt!111105) (size!5267 (_keys!6093 thiss!1504))))) (or ((_ is Undefined!746) lt!111105) ((_ is Found!746) lt!111105) (not ((_ is MissingVacant!746) lt!111105)) (not (= (index!5157 lt!111105) (index!5156 lt!111076))) (and (bvsge (index!5157 lt!111105) #b00000000000000000000000000000000) (bvslt (index!5157 lt!111105) (size!5267 (_keys!6093 thiss!1504))))) (or ((_ is Undefined!746) lt!111105) (ite ((_ is Found!746) lt!111105) (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5155 lt!111105)) key!932) (and ((_ is MissingVacant!746) lt!111105) (= (index!5157 lt!111105) (index!5156 lt!111076)) (= (select (arr!4936 (_keys!6093 thiss!1504)) (index!5157 lt!111105)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!58423 (= lt!111105 e!140504)))

(declare-fun c!36266 () Bool)

(assert (=> d!58423 (= c!36266 (bvsge (x!22569 lt!111076) #b01111111111111111111111111111110))))

(assert (=> d!58423 (= lt!111106 (select (arr!4936 (_keys!6093 thiss!1504)) (index!5156 lt!111076)))))

(assert (=> d!58423 (validMask!0 (mask!9768 thiss!1504))))

(assert (=> d!58423 (= (seekKeyOrZeroReturnVacant!0 (x!22569 lt!111076) (index!5156 lt!111076) (index!5156 lt!111076) key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)) lt!111105)))

(declare-fun b!215955 () Bool)

(assert (=> b!215955 (= e!140506 (Found!746 (index!5156 lt!111076)))))

(declare-fun b!215958 () Bool)

(assert (=> b!215958 (= e!140504 Undefined!746)))

(declare-fun b!215959 () Bool)

(assert (=> b!215959 (= e!140505 (seekKeyOrZeroReturnVacant!0 (bvadd (x!22569 lt!111076) #b00000000000000000000000000000001) (nextIndex!0 (index!5156 lt!111076) (x!22569 lt!111076) (mask!9768 thiss!1504)) (index!5156 lt!111076) key!932 (_keys!6093 thiss!1504) (mask!9768 thiss!1504)))))

(assert (= (and d!58423 c!36266) b!215958))

(assert (= (and d!58423 (not c!36266)) b!215957))

(assert (= (and b!215957 c!36267) b!215955))

(assert (= (and b!215957 (not c!36267)) b!215954))

(assert (= (and b!215954 c!36268) b!215956))

(assert (= (and b!215954 (not c!36268)) b!215959))

(declare-fun m!242893 () Bool)

(assert (=> d!58423 m!242893))

(declare-fun m!242895 () Bool)

(assert (=> d!58423 m!242895))

(assert (=> d!58423 m!242859))

(assert (=> d!58423 m!242821))

(declare-fun m!242897 () Bool)

(assert (=> b!215959 m!242897))

(assert (=> b!215959 m!242897))

(declare-fun m!242899 () Bool)

(assert (=> b!215959 m!242899))

(assert (=> b!215854 d!58423))

(declare-fun b!215960 () Bool)

(declare-fun e!140508 () Bool)

(assert (=> b!215960 (= e!140508 tp_is_empty!5595)))

(declare-fun mapNonEmpty!9549 () Bool)

(declare-fun mapRes!9549 () Bool)

(declare-fun tp!20331 () Bool)

(assert (=> mapNonEmpty!9549 (= mapRes!9549 (and tp!20331 e!140508))))

(declare-fun mapKey!9549 () (_ BitVec 32))

(declare-fun mapRest!9549 () (Array (_ BitVec 32) ValueCell!2454))

(declare-fun mapValue!9549 () ValueCell!2454)

(assert (=> mapNonEmpty!9549 (= mapRest!9548 (store mapRest!9549 mapKey!9549 mapValue!9549))))

(declare-fun condMapEmpty!9549 () Bool)

(declare-fun mapDefault!9549 () ValueCell!2454)

(assert (=> mapNonEmpty!9548 (= condMapEmpty!9549 (= mapRest!9548 ((as const (Array (_ BitVec 32) ValueCell!2454)) mapDefault!9549)))))

(declare-fun e!140507 () Bool)

(assert (=> mapNonEmpty!9548 (= tp!20330 (and e!140507 mapRes!9549))))

(declare-fun mapIsEmpty!9549 () Bool)

(assert (=> mapIsEmpty!9549 mapRes!9549))

(declare-fun b!215961 () Bool)

(assert (=> b!215961 (= e!140507 tp_is_empty!5595)))

(assert (= (and mapNonEmpty!9548 condMapEmpty!9549) mapIsEmpty!9549))

(assert (= (and mapNonEmpty!9548 (not condMapEmpty!9549)) mapNonEmpty!9549))

(assert (= (and mapNonEmpty!9549 ((_ is ValueCellFull!2454) mapValue!9549)) b!215960))

(assert (= (and mapNonEmpty!9548 ((_ is ValueCellFull!2454) mapDefault!9549)) b!215961))

(declare-fun m!242901 () Bool)

(assert (=> mapNonEmpty!9549 m!242901))

(check-sat (not b!215873) (not b!215887) (not bm!20362) (not b!215928) (not bm!20356) b_and!12641 (not b_next!5733) (not mapNonEmpty!9549) (not b!215886) (not b!215911) (not b!215939) (not d!58411) (not b!215874) (not b!215927) (not d!58415) (not b!215888) (not bm!20359) (not b!215959) tp_is_empty!5595 (not d!58423))
(check-sat b_and!12641 (not b_next!5733))

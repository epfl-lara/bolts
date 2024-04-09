; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15930 () Bool)

(assert start!15930)

(declare-fun b!158251 () Bool)

(declare-fun b_free!3477 () Bool)

(declare-fun b_next!3477 () Bool)

(assert (=> b!158251 (= b_free!3477 (not b_next!3477))))

(declare-fun tp!12981 () Bool)

(declare-fun b_and!9909 () Bool)

(assert (=> b!158251 (= tp!12981 b_and!9909)))

(declare-fun b!158247 () Bool)

(declare-fun e!103652 () Bool)

(declare-fun tp_is_empty!3279 () Bool)

(assert (=> b!158247 (= e!103652 tp_is_empty!3279)))

(declare-fun b!158248 () Bool)

(declare-fun e!103649 () Bool)

(declare-fun mapRes!5586 () Bool)

(assert (=> b!158248 (= e!103649 (and e!103652 mapRes!5586))))

(declare-fun condMapEmpty!5586 () Bool)

(declare-datatypes ((V!4019 0))(
  ( (V!4020 (val!1684 Int)) )
))
(declare-datatypes ((ValueCell!1296 0))(
  ( (ValueCellFull!1296 (v!3545 V!4019)) (EmptyCell!1296) )
))
(declare-datatypes ((array!5624 0))(
  ( (array!5625 (arr!2662 (Array (_ BitVec 32) (_ BitVec 64))) (size!2944 (_ BitVec 32))) )
))
(declare-datatypes ((array!5626 0))(
  ( (array!5627 (arr!2663 (Array (_ BitVec 32) ValueCell!1296)) (size!2945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1500 0))(
  ( (LongMapFixedSize!1501 (defaultEntry!3192 Int) (mask!7703 (_ BitVec 32)) (extraKeys!2933 (_ BitVec 32)) (zeroValue!3035 V!4019) (minValue!3035 V!4019) (_size!799 (_ BitVec 32)) (_keys!4978 array!5624) (_values!3175 array!5626) (_vacant!799 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1500)

(declare-fun mapDefault!5586 () ValueCell!1296)

(assert (=> b!158248 (= condMapEmpty!5586 (= (arr!2663 (_values!3175 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1296)) mapDefault!5586)))))

(declare-fun res!74764 () Bool)

(declare-fun e!103654 () Bool)

(assert (=> start!15930 (=> (not res!74764) (not e!103654))))

(declare-fun valid!705 (LongMapFixedSize!1500) Bool)

(assert (=> start!15930 (= res!74764 (valid!705 thiss!1248))))

(assert (=> start!15930 e!103654))

(declare-fun e!103650 () Bool)

(assert (=> start!15930 e!103650))

(assert (=> start!15930 true))

(declare-fun b!158249 () Bool)

(declare-fun e!103653 () Bool)

(assert (=> b!158249 (= e!103653 tp_is_empty!3279)))

(declare-fun mapNonEmpty!5586 () Bool)

(declare-fun tp!12980 () Bool)

(assert (=> mapNonEmpty!5586 (= mapRes!5586 (and tp!12980 e!103653))))

(declare-fun mapKey!5586 () (_ BitVec 32))

(declare-fun mapRest!5586 () (Array (_ BitVec 32) ValueCell!1296))

(declare-fun mapValue!5586 () ValueCell!1296)

(assert (=> mapNonEmpty!5586 (= (arr!2663 (_values!3175 thiss!1248)) (store mapRest!5586 mapKey!5586 mapValue!5586))))

(declare-fun b!158250 () Bool)

(assert (=> b!158250 (= e!103654 (and (= (size!2945 (_values!3175 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7703 thiss!1248))) (= (size!2944 (_keys!4978 thiss!1248)) (size!2945 (_values!3175 thiss!1248))) (bvslt (mask!7703 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun array_inv!1683 (array!5624) Bool)

(declare-fun array_inv!1684 (array!5626) Bool)

(assert (=> b!158251 (= e!103650 (and tp!12981 tp_is_empty!3279 (array_inv!1683 (_keys!4978 thiss!1248)) (array_inv!1684 (_values!3175 thiss!1248)) e!103649))))

(declare-fun mapIsEmpty!5586 () Bool)

(assert (=> mapIsEmpty!5586 mapRes!5586))

(declare-fun b!158252 () Bool)

(declare-fun res!74766 () Bool)

(assert (=> b!158252 (=> (not res!74766) (not e!103654))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!158252 (= res!74766 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158253 () Bool)

(declare-fun res!74765 () Bool)

(assert (=> b!158253 (=> (not res!74765) (not e!103654))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!307 0))(
  ( (MissingZero!307 (index!3396 (_ BitVec 32))) (Found!307 (index!3397 (_ BitVec 32))) (Intermediate!307 (undefined!1119 Bool) (index!3398 (_ BitVec 32)) (x!17473 (_ BitVec 32))) (Undefined!307) (MissingVacant!307 (index!3399 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5624 (_ BitVec 32)) SeekEntryResult!307)

(assert (=> b!158253 (= res!74765 ((_ is Undefined!307) (seekEntryOrOpen!0 key!828 (_keys!4978 thiss!1248) (mask!7703 thiss!1248))))))

(declare-fun b!158254 () Bool)

(declare-fun res!74763 () Bool)

(assert (=> b!158254 (=> (not res!74763) (not e!103654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158254 (= res!74763 (validMask!0 (mask!7703 thiss!1248)))))

(assert (= (and start!15930 res!74764) b!158252))

(assert (= (and b!158252 res!74766) b!158253))

(assert (= (and b!158253 res!74765) b!158254))

(assert (= (and b!158254 res!74763) b!158250))

(assert (= (and b!158248 condMapEmpty!5586) mapIsEmpty!5586))

(assert (= (and b!158248 (not condMapEmpty!5586)) mapNonEmpty!5586))

(assert (= (and mapNonEmpty!5586 ((_ is ValueCellFull!1296) mapValue!5586)) b!158249))

(assert (= (and b!158248 ((_ is ValueCellFull!1296) mapDefault!5586)) b!158247))

(assert (= b!158251 b!158248))

(assert (= start!15930 b!158251))

(declare-fun m!191067 () Bool)

(assert (=> mapNonEmpty!5586 m!191067))

(declare-fun m!191069 () Bool)

(assert (=> b!158251 m!191069))

(declare-fun m!191071 () Bool)

(assert (=> b!158251 m!191071))

(declare-fun m!191073 () Bool)

(assert (=> b!158254 m!191073))

(declare-fun m!191075 () Bool)

(assert (=> start!15930 m!191075))

(declare-fun m!191077 () Bool)

(assert (=> b!158253 m!191077))

(check-sat (not mapNonEmpty!5586) (not start!15930) (not b!158251) (not b!158253) (not b_next!3477) b_and!9909 tp_is_empty!3279 (not b!158254))
(check-sat b_and!9909 (not b_next!3477))
(get-model)

(declare-fun d!51077 () Bool)

(assert (=> d!51077 (= (validMask!0 (mask!7703 thiss!1248)) (and (or (= (mask!7703 thiss!1248) #b00000000000000000000000000000111) (= (mask!7703 thiss!1248) #b00000000000000000000000000001111) (= (mask!7703 thiss!1248) #b00000000000000000000000000011111) (= (mask!7703 thiss!1248) #b00000000000000000000000000111111) (= (mask!7703 thiss!1248) #b00000000000000000000000001111111) (= (mask!7703 thiss!1248) #b00000000000000000000000011111111) (= (mask!7703 thiss!1248) #b00000000000000000000000111111111) (= (mask!7703 thiss!1248) #b00000000000000000000001111111111) (= (mask!7703 thiss!1248) #b00000000000000000000011111111111) (= (mask!7703 thiss!1248) #b00000000000000000000111111111111) (= (mask!7703 thiss!1248) #b00000000000000000001111111111111) (= (mask!7703 thiss!1248) #b00000000000000000011111111111111) (= (mask!7703 thiss!1248) #b00000000000000000111111111111111) (= (mask!7703 thiss!1248) #b00000000000000001111111111111111) (= (mask!7703 thiss!1248) #b00000000000000011111111111111111) (= (mask!7703 thiss!1248) #b00000000000000111111111111111111) (= (mask!7703 thiss!1248) #b00000000000001111111111111111111) (= (mask!7703 thiss!1248) #b00000000000011111111111111111111) (= (mask!7703 thiss!1248) #b00000000000111111111111111111111) (= (mask!7703 thiss!1248) #b00000000001111111111111111111111) (= (mask!7703 thiss!1248) #b00000000011111111111111111111111) (= (mask!7703 thiss!1248) #b00000000111111111111111111111111) (= (mask!7703 thiss!1248) #b00000001111111111111111111111111) (= (mask!7703 thiss!1248) #b00000011111111111111111111111111) (= (mask!7703 thiss!1248) #b00000111111111111111111111111111) (= (mask!7703 thiss!1248) #b00001111111111111111111111111111) (= (mask!7703 thiss!1248) #b00011111111111111111111111111111) (= (mask!7703 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7703 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!158254 d!51077))

(declare-fun b!158291 () Bool)

(declare-fun e!103681 () SeekEntryResult!307)

(assert (=> b!158291 (= e!103681 Undefined!307)))

(declare-fun lt!81865 () SeekEntryResult!307)

(declare-fun e!103679 () SeekEntryResult!307)

(declare-fun b!158292 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5624 (_ BitVec 32)) SeekEntryResult!307)

(assert (=> b!158292 (= e!103679 (seekKeyOrZeroReturnVacant!0 (x!17473 lt!81865) (index!3398 lt!81865) (index!3398 lt!81865) key!828 (_keys!4978 thiss!1248) (mask!7703 thiss!1248)))))

(declare-fun d!51079 () Bool)

(declare-fun lt!81866 () SeekEntryResult!307)

(assert (=> d!51079 (and (or ((_ is Undefined!307) lt!81866) (not ((_ is Found!307) lt!81866)) (and (bvsge (index!3397 lt!81866) #b00000000000000000000000000000000) (bvslt (index!3397 lt!81866) (size!2944 (_keys!4978 thiss!1248))))) (or ((_ is Undefined!307) lt!81866) ((_ is Found!307) lt!81866) (not ((_ is MissingZero!307) lt!81866)) (and (bvsge (index!3396 lt!81866) #b00000000000000000000000000000000) (bvslt (index!3396 lt!81866) (size!2944 (_keys!4978 thiss!1248))))) (or ((_ is Undefined!307) lt!81866) ((_ is Found!307) lt!81866) ((_ is MissingZero!307) lt!81866) (not ((_ is MissingVacant!307) lt!81866)) (and (bvsge (index!3399 lt!81866) #b00000000000000000000000000000000) (bvslt (index!3399 lt!81866) (size!2944 (_keys!4978 thiss!1248))))) (or ((_ is Undefined!307) lt!81866) (ite ((_ is Found!307) lt!81866) (= (select (arr!2662 (_keys!4978 thiss!1248)) (index!3397 lt!81866)) key!828) (ite ((_ is MissingZero!307) lt!81866) (= (select (arr!2662 (_keys!4978 thiss!1248)) (index!3396 lt!81866)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!307) lt!81866) (= (select (arr!2662 (_keys!4978 thiss!1248)) (index!3399 lt!81866)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51079 (= lt!81866 e!103681)))

(declare-fun c!29793 () Bool)

(assert (=> d!51079 (= c!29793 (and ((_ is Intermediate!307) lt!81865) (undefined!1119 lt!81865)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5624 (_ BitVec 32)) SeekEntryResult!307)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51079 (= lt!81865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7703 thiss!1248)) key!828 (_keys!4978 thiss!1248) (mask!7703 thiss!1248)))))

(assert (=> d!51079 (validMask!0 (mask!7703 thiss!1248))))

(assert (=> d!51079 (= (seekEntryOrOpen!0 key!828 (_keys!4978 thiss!1248) (mask!7703 thiss!1248)) lt!81866)))

(declare-fun b!158293 () Bool)

(assert (=> b!158293 (= e!103679 (MissingZero!307 (index!3398 lt!81865)))))

(declare-fun b!158294 () Bool)

(declare-fun e!103680 () SeekEntryResult!307)

(assert (=> b!158294 (= e!103680 (Found!307 (index!3398 lt!81865)))))

(declare-fun b!158295 () Bool)

(declare-fun c!29792 () Bool)

(declare-fun lt!81864 () (_ BitVec 64))

(assert (=> b!158295 (= c!29792 (= lt!81864 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158295 (= e!103680 e!103679)))

(declare-fun b!158296 () Bool)

(assert (=> b!158296 (= e!103681 e!103680)))

(assert (=> b!158296 (= lt!81864 (select (arr!2662 (_keys!4978 thiss!1248)) (index!3398 lt!81865)))))

(declare-fun c!29791 () Bool)

(assert (=> b!158296 (= c!29791 (= lt!81864 key!828))))

(assert (= (and d!51079 c!29793) b!158291))

(assert (= (and d!51079 (not c!29793)) b!158296))

(assert (= (and b!158296 c!29791) b!158294))

(assert (= (and b!158296 (not c!29791)) b!158295))

(assert (= (and b!158295 c!29792) b!158293))

(assert (= (and b!158295 (not c!29792)) b!158292))

(declare-fun m!191091 () Bool)

(assert (=> b!158292 m!191091))

(declare-fun m!191093 () Bool)

(assert (=> d!51079 m!191093))

(declare-fun m!191095 () Bool)

(assert (=> d!51079 m!191095))

(declare-fun m!191097 () Bool)

(assert (=> d!51079 m!191097))

(declare-fun m!191099 () Bool)

(assert (=> d!51079 m!191099))

(assert (=> d!51079 m!191097))

(assert (=> d!51079 m!191073))

(declare-fun m!191101 () Bool)

(assert (=> d!51079 m!191101))

(declare-fun m!191103 () Bool)

(assert (=> b!158296 m!191103))

(assert (=> b!158253 d!51079))

(declare-fun d!51081 () Bool)

(declare-fun res!74785 () Bool)

(declare-fun e!103684 () Bool)

(assert (=> d!51081 (=> (not res!74785) (not e!103684))))

(declare-fun simpleValid!111 (LongMapFixedSize!1500) Bool)

(assert (=> d!51081 (= res!74785 (simpleValid!111 thiss!1248))))

(assert (=> d!51081 (= (valid!705 thiss!1248) e!103684)))

(declare-fun b!158303 () Bool)

(declare-fun res!74786 () Bool)

(assert (=> b!158303 (=> (not res!74786) (not e!103684))))

(declare-fun arrayCountValidKeys!0 (array!5624 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158303 (= res!74786 (= (arrayCountValidKeys!0 (_keys!4978 thiss!1248) #b00000000000000000000000000000000 (size!2944 (_keys!4978 thiss!1248))) (_size!799 thiss!1248)))))

(declare-fun b!158304 () Bool)

(declare-fun res!74787 () Bool)

(assert (=> b!158304 (=> (not res!74787) (not e!103684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5624 (_ BitVec 32)) Bool)

(assert (=> b!158304 (= res!74787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4978 thiss!1248) (mask!7703 thiss!1248)))))

(declare-fun b!158305 () Bool)

(declare-datatypes ((List!1903 0))(
  ( (Nil!1900) (Cons!1899 (h!2510 (_ BitVec 64)) (t!6713 List!1903)) )
))
(declare-fun arrayNoDuplicates!0 (array!5624 (_ BitVec 32) List!1903) Bool)

(assert (=> b!158305 (= e!103684 (arrayNoDuplicates!0 (_keys!4978 thiss!1248) #b00000000000000000000000000000000 Nil!1900))))

(assert (= (and d!51081 res!74785) b!158303))

(assert (= (and b!158303 res!74786) b!158304))

(assert (= (and b!158304 res!74787) b!158305))

(declare-fun m!191105 () Bool)

(assert (=> d!51081 m!191105))

(declare-fun m!191107 () Bool)

(assert (=> b!158303 m!191107))

(declare-fun m!191109 () Bool)

(assert (=> b!158304 m!191109))

(declare-fun m!191111 () Bool)

(assert (=> b!158305 m!191111))

(assert (=> start!15930 d!51081))

(declare-fun d!51083 () Bool)

(assert (=> d!51083 (= (array_inv!1683 (_keys!4978 thiss!1248)) (bvsge (size!2944 (_keys!4978 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158251 d!51083))

(declare-fun d!51085 () Bool)

(assert (=> d!51085 (= (array_inv!1684 (_values!3175 thiss!1248)) (bvsge (size!2945 (_values!3175 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158251 d!51085))

(declare-fun mapIsEmpty!5592 () Bool)

(declare-fun mapRes!5592 () Bool)

(assert (=> mapIsEmpty!5592 mapRes!5592))

(declare-fun b!158313 () Bool)

(declare-fun e!103690 () Bool)

(assert (=> b!158313 (= e!103690 tp_is_empty!3279)))

(declare-fun condMapEmpty!5592 () Bool)

(declare-fun mapDefault!5592 () ValueCell!1296)

(assert (=> mapNonEmpty!5586 (= condMapEmpty!5592 (= mapRest!5586 ((as const (Array (_ BitVec 32) ValueCell!1296)) mapDefault!5592)))))

(assert (=> mapNonEmpty!5586 (= tp!12980 (and e!103690 mapRes!5592))))

(declare-fun mapNonEmpty!5592 () Bool)

(declare-fun tp!12990 () Bool)

(declare-fun e!103689 () Bool)

(assert (=> mapNonEmpty!5592 (= mapRes!5592 (and tp!12990 e!103689))))

(declare-fun mapValue!5592 () ValueCell!1296)

(declare-fun mapKey!5592 () (_ BitVec 32))

(declare-fun mapRest!5592 () (Array (_ BitVec 32) ValueCell!1296))

(assert (=> mapNonEmpty!5592 (= mapRest!5586 (store mapRest!5592 mapKey!5592 mapValue!5592))))

(declare-fun b!158312 () Bool)

(assert (=> b!158312 (= e!103689 tp_is_empty!3279)))

(assert (= (and mapNonEmpty!5586 condMapEmpty!5592) mapIsEmpty!5592))

(assert (= (and mapNonEmpty!5586 (not condMapEmpty!5592)) mapNonEmpty!5592))

(assert (= (and mapNonEmpty!5592 ((_ is ValueCellFull!1296) mapValue!5592)) b!158312))

(assert (= (and mapNonEmpty!5586 ((_ is ValueCellFull!1296) mapDefault!5592)) b!158313))

(declare-fun m!191113 () Bool)

(assert (=> mapNonEmpty!5592 m!191113))

(check-sat (not b!158303) (not d!51079) (not b!158304) (not b!158292) (not b_next!3477) (not d!51081) (not b!158305) (not mapNonEmpty!5592) b_and!9909 tp_is_empty!3279)
(check-sat b_and!9909 (not b_next!3477))

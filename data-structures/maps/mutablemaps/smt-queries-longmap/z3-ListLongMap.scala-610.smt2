; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15900 () Bool)

(assert start!15900)

(declare-fun b!158049 () Bool)

(declare-fun b_free!3471 () Bool)

(declare-fun b_next!3471 () Bool)

(assert (=> b!158049 (= b_free!3471 (not b_next!3471))))

(declare-fun tp!12958 () Bool)

(declare-fun b_and!9903 () Bool)

(assert (=> b!158049 (= tp!12958 b_and!9903)))

(declare-fun mapNonEmpty!5573 () Bool)

(declare-fun mapRes!5573 () Bool)

(declare-fun tp!12959 () Bool)

(declare-fun e!103521 () Bool)

(assert (=> mapNonEmpty!5573 (= mapRes!5573 (and tp!12959 e!103521))))

(declare-datatypes ((V!4011 0))(
  ( (V!4012 (val!1681 Int)) )
))
(declare-datatypes ((ValueCell!1293 0))(
  ( (ValueCellFull!1293 (v!3542 V!4011)) (EmptyCell!1293) )
))
(declare-fun mapValue!5573 () ValueCell!1293)

(declare-fun mapRest!5573 () (Array (_ BitVec 32) ValueCell!1293))

(declare-datatypes ((array!5610 0))(
  ( (array!5611 (arr!2656 (Array (_ BitVec 32) (_ BitVec 64))) (size!2937 (_ BitVec 32))) )
))
(declare-datatypes ((array!5612 0))(
  ( (array!5613 (arr!2657 (Array (_ BitVec 32) ValueCell!1293)) (size!2938 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1494 0))(
  ( (LongMapFixedSize!1495 (defaultEntry!3189 Int) (mask!7692 (_ BitVec 32)) (extraKeys!2930 (_ BitVec 32)) (zeroValue!3032 V!4011) (minValue!3032 V!4011) (_size!796 (_ BitVec 32)) (_keys!4971 array!5610) (_values!3172 array!5612) (_vacant!796 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1494)

(declare-fun mapKey!5573 () (_ BitVec 32))

(assert (=> mapNonEmpty!5573 (= (arr!2657 (_values!3172 thiss!1248)) (store mapRest!5573 mapKey!5573 mapValue!5573))))

(declare-fun b!158042 () Bool)

(declare-fun tp_is_empty!3273 () Bool)

(assert (=> b!158042 (= e!103521 tp_is_empty!3273)))

(declare-fun b!158043 () Bool)

(declare-fun e!103526 () Bool)

(assert (=> b!158043 (= e!103526 tp_is_empty!3273)))

(declare-fun b!158044 () Bool)

(declare-fun e!103525 () Bool)

(assert (=> b!158044 (= e!103525 (and (= (size!2938 (_values!3172 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7692 thiss!1248))) (not (= (size!2937 (_keys!4971 thiss!1248)) (size!2938 (_values!3172 thiss!1248))))))))

(declare-fun res!74684 () Bool)

(assert (=> start!15900 (=> (not res!74684) (not e!103525))))

(declare-fun valid!703 (LongMapFixedSize!1494) Bool)

(assert (=> start!15900 (= res!74684 (valid!703 thiss!1248))))

(assert (=> start!15900 e!103525))

(declare-fun e!103522 () Bool)

(assert (=> start!15900 e!103522))

(assert (=> start!15900 true))

(declare-fun b!158045 () Bool)

(declare-fun res!74681 () Bool)

(assert (=> b!158045 (=> (not res!74681) (not e!103525))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!305 0))(
  ( (MissingZero!305 (index!3388 (_ BitVec 32))) (Found!305 (index!3389 (_ BitVec 32))) (Intermediate!305 (undefined!1117 Bool) (index!3390 (_ BitVec 32)) (x!17446 (_ BitVec 32))) (Undefined!305) (MissingVacant!305 (index!3391 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5610 (_ BitVec 32)) SeekEntryResult!305)

(assert (=> b!158045 (= res!74681 ((_ is Undefined!305) (seekEntryOrOpen!0 key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248))))))

(declare-fun b!158046 () Bool)

(declare-fun res!74682 () Bool)

(assert (=> b!158046 (=> (not res!74682) (not e!103525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158046 (= res!74682 (validMask!0 (mask!7692 thiss!1248)))))

(declare-fun mapIsEmpty!5573 () Bool)

(assert (=> mapIsEmpty!5573 mapRes!5573))

(declare-fun b!158047 () Bool)

(declare-fun res!74683 () Bool)

(assert (=> b!158047 (=> (not res!74683) (not e!103525))))

(assert (=> b!158047 (= res!74683 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158048 () Bool)

(declare-fun e!103523 () Bool)

(assert (=> b!158048 (= e!103523 (and e!103526 mapRes!5573))))

(declare-fun condMapEmpty!5573 () Bool)

(declare-fun mapDefault!5573 () ValueCell!1293)

(assert (=> b!158048 (= condMapEmpty!5573 (= (arr!2657 (_values!3172 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1293)) mapDefault!5573)))))

(declare-fun array_inv!1679 (array!5610) Bool)

(declare-fun array_inv!1680 (array!5612) Bool)

(assert (=> b!158049 (= e!103522 (and tp!12958 tp_is_empty!3273 (array_inv!1679 (_keys!4971 thiss!1248)) (array_inv!1680 (_values!3172 thiss!1248)) e!103523))))

(assert (= (and start!15900 res!74684) b!158047))

(assert (= (and b!158047 res!74683) b!158045))

(assert (= (and b!158045 res!74681) b!158046))

(assert (= (and b!158046 res!74682) b!158044))

(assert (= (and b!158048 condMapEmpty!5573) mapIsEmpty!5573))

(assert (= (and b!158048 (not condMapEmpty!5573)) mapNonEmpty!5573))

(assert (= (and mapNonEmpty!5573 ((_ is ValueCellFull!1293) mapValue!5573)) b!158042))

(assert (= (and b!158048 ((_ is ValueCellFull!1293) mapDefault!5573)) b!158043))

(assert (= b!158049 b!158048))

(assert (= start!15900 b!158049))

(declare-fun m!190969 () Bool)

(assert (=> b!158045 m!190969))

(declare-fun m!190971 () Bool)

(assert (=> b!158046 m!190971))

(declare-fun m!190973 () Bool)

(assert (=> mapNonEmpty!5573 m!190973))

(declare-fun m!190975 () Bool)

(assert (=> start!15900 m!190975))

(declare-fun m!190977 () Bool)

(assert (=> b!158049 m!190977))

(declare-fun m!190979 () Bool)

(assert (=> b!158049 m!190979))

(check-sat (not start!15900) (not b!158046) (not b!158049) tp_is_empty!3273 (not b!158045) (not b_next!3471) b_and!9903 (not mapNonEmpty!5573))
(check-sat b_and!9903 (not b_next!3471))
(get-model)

(declare-fun d!51051 () Bool)

(assert (=> d!51051 (= (validMask!0 (mask!7692 thiss!1248)) (and (or (= (mask!7692 thiss!1248) #b00000000000000000000000000000111) (= (mask!7692 thiss!1248) #b00000000000000000000000000001111) (= (mask!7692 thiss!1248) #b00000000000000000000000000011111) (= (mask!7692 thiss!1248) #b00000000000000000000000000111111) (= (mask!7692 thiss!1248) #b00000000000000000000000001111111) (= (mask!7692 thiss!1248) #b00000000000000000000000011111111) (= (mask!7692 thiss!1248) #b00000000000000000000000111111111) (= (mask!7692 thiss!1248) #b00000000000000000000001111111111) (= (mask!7692 thiss!1248) #b00000000000000000000011111111111) (= (mask!7692 thiss!1248) #b00000000000000000000111111111111) (= (mask!7692 thiss!1248) #b00000000000000000001111111111111) (= (mask!7692 thiss!1248) #b00000000000000000011111111111111) (= (mask!7692 thiss!1248) #b00000000000000000111111111111111) (= (mask!7692 thiss!1248) #b00000000000000001111111111111111) (= (mask!7692 thiss!1248) #b00000000000000011111111111111111) (= (mask!7692 thiss!1248) #b00000000000000111111111111111111) (= (mask!7692 thiss!1248) #b00000000000001111111111111111111) (= (mask!7692 thiss!1248) #b00000000000011111111111111111111) (= (mask!7692 thiss!1248) #b00000000000111111111111111111111) (= (mask!7692 thiss!1248) #b00000000001111111111111111111111) (= (mask!7692 thiss!1248) #b00000000011111111111111111111111) (= (mask!7692 thiss!1248) #b00000000111111111111111111111111) (= (mask!7692 thiss!1248) #b00000001111111111111111111111111) (= (mask!7692 thiss!1248) #b00000011111111111111111111111111) (= (mask!7692 thiss!1248) #b00000111111111111111111111111111) (= (mask!7692 thiss!1248) #b00001111111111111111111111111111) (= (mask!7692 thiss!1248) #b00011111111111111111111111111111) (= (mask!7692 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7692 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!158046 d!51051))

(declare-fun d!51053 () Bool)

(declare-fun res!74703 () Bool)

(declare-fun e!103547 () Bool)

(assert (=> d!51053 (=> (not res!74703) (not e!103547))))

(declare-fun simpleValid!110 (LongMapFixedSize!1494) Bool)

(assert (=> d!51053 (= res!74703 (simpleValid!110 thiss!1248))))

(assert (=> d!51053 (= (valid!703 thiss!1248) e!103547)))

(declare-fun b!158080 () Bool)

(declare-fun res!74704 () Bool)

(assert (=> b!158080 (=> (not res!74704) (not e!103547))))

(declare-fun arrayCountValidKeys!0 (array!5610 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158080 (= res!74704 (= (arrayCountValidKeys!0 (_keys!4971 thiss!1248) #b00000000000000000000000000000000 (size!2937 (_keys!4971 thiss!1248))) (_size!796 thiss!1248)))))

(declare-fun b!158081 () Bool)

(declare-fun res!74705 () Bool)

(assert (=> b!158081 (=> (not res!74705) (not e!103547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5610 (_ BitVec 32)) Bool)

(assert (=> b!158081 (= res!74705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)))))

(declare-fun b!158082 () Bool)

(declare-datatypes ((List!1902 0))(
  ( (Nil!1899) (Cons!1898 (h!2508 (_ BitVec 64)) (t!6712 List!1902)) )
))
(declare-fun arrayNoDuplicates!0 (array!5610 (_ BitVec 32) List!1902) Bool)

(assert (=> b!158082 (= e!103547 (arrayNoDuplicates!0 (_keys!4971 thiss!1248) #b00000000000000000000000000000000 Nil!1899))))

(assert (= (and d!51053 res!74703) b!158080))

(assert (= (and b!158080 res!74704) b!158081))

(assert (= (and b!158081 res!74705) b!158082))

(declare-fun m!190993 () Bool)

(assert (=> d!51053 m!190993))

(declare-fun m!190995 () Bool)

(assert (=> b!158080 m!190995))

(declare-fun m!190997 () Bool)

(assert (=> b!158081 m!190997))

(declare-fun m!190999 () Bool)

(assert (=> b!158082 m!190999))

(assert (=> start!15900 d!51053))

(declare-fun e!103556 () SeekEntryResult!305)

(declare-fun b!158095 () Bool)

(declare-fun lt!81825 () SeekEntryResult!305)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5610 (_ BitVec 32)) SeekEntryResult!305)

(assert (=> b!158095 (= e!103556 (seekKeyOrZeroReturnVacant!0 (x!17446 lt!81825) (index!3390 lt!81825) (index!3390 lt!81825) key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)))))

(declare-fun d!51055 () Bool)

(declare-fun lt!81827 () SeekEntryResult!305)

(assert (=> d!51055 (and (or ((_ is Undefined!305) lt!81827) (not ((_ is Found!305) lt!81827)) (and (bvsge (index!3389 lt!81827) #b00000000000000000000000000000000) (bvslt (index!3389 lt!81827) (size!2937 (_keys!4971 thiss!1248))))) (or ((_ is Undefined!305) lt!81827) ((_ is Found!305) lt!81827) (not ((_ is MissingZero!305) lt!81827)) (and (bvsge (index!3388 lt!81827) #b00000000000000000000000000000000) (bvslt (index!3388 lt!81827) (size!2937 (_keys!4971 thiss!1248))))) (or ((_ is Undefined!305) lt!81827) ((_ is Found!305) lt!81827) ((_ is MissingZero!305) lt!81827) (not ((_ is MissingVacant!305) lt!81827)) (and (bvsge (index!3391 lt!81827) #b00000000000000000000000000000000) (bvslt (index!3391 lt!81827) (size!2937 (_keys!4971 thiss!1248))))) (or ((_ is Undefined!305) lt!81827) (ite ((_ is Found!305) lt!81827) (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3389 lt!81827)) key!828) (ite ((_ is MissingZero!305) lt!81827) (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3388 lt!81827)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!305) lt!81827) (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3391 lt!81827)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!103554 () SeekEntryResult!305)

(assert (=> d!51055 (= lt!81827 e!103554)))

(declare-fun c!29753 () Bool)

(assert (=> d!51055 (= c!29753 (and ((_ is Intermediate!305) lt!81825) (undefined!1117 lt!81825)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5610 (_ BitVec 32)) SeekEntryResult!305)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51055 (= lt!81825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7692 thiss!1248)) key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)))))

(assert (=> d!51055 (validMask!0 (mask!7692 thiss!1248))))

(assert (=> d!51055 (= (seekEntryOrOpen!0 key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)) lt!81827)))

(declare-fun b!158096 () Bool)

(declare-fun e!103555 () SeekEntryResult!305)

(assert (=> b!158096 (= e!103554 e!103555)))

(declare-fun lt!81826 () (_ BitVec 64))

(assert (=> b!158096 (= lt!81826 (select (arr!2656 (_keys!4971 thiss!1248)) (index!3390 lt!81825)))))

(declare-fun c!29752 () Bool)

(assert (=> b!158096 (= c!29752 (= lt!81826 key!828))))

(declare-fun b!158097 () Bool)

(declare-fun c!29754 () Bool)

(assert (=> b!158097 (= c!29754 (= lt!81826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158097 (= e!103555 e!103556)))

(declare-fun b!158098 () Bool)

(assert (=> b!158098 (= e!103555 (Found!305 (index!3390 lt!81825)))))

(declare-fun b!158099 () Bool)

(assert (=> b!158099 (= e!103556 (MissingZero!305 (index!3390 lt!81825)))))

(declare-fun b!158100 () Bool)

(assert (=> b!158100 (= e!103554 Undefined!305)))

(assert (= (and d!51055 c!29753) b!158100))

(assert (= (and d!51055 (not c!29753)) b!158096))

(assert (= (and b!158096 c!29752) b!158098))

(assert (= (and b!158096 (not c!29752)) b!158097))

(assert (= (and b!158097 c!29754) b!158099))

(assert (= (and b!158097 (not c!29754)) b!158095))

(declare-fun m!191001 () Bool)

(assert (=> b!158095 m!191001))

(assert (=> d!51055 m!190971))

(declare-fun m!191003 () Bool)

(assert (=> d!51055 m!191003))

(declare-fun m!191005 () Bool)

(assert (=> d!51055 m!191005))

(declare-fun m!191007 () Bool)

(assert (=> d!51055 m!191007))

(assert (=> d!51055 m!191003))

(declare-fun m!191009 () Bool)

(assert (=> d!51055 m!191009))

(declare-fun m!191011 () Bool)

(assert (=> d!51055 m!191011))

(declare-fun m!191013 () Bool)

(assert (=> b!158096 m!191013))

(assert (=> b!158045 d!51055))

(declare-fun d!51057 () Bool)

(assert (=> d!51057 (= (array_inv!1679 (_keys!4971 thiss!1248)) (bvsge (size!2937 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158049 d!51057))

(declare-fun d!51059 () Bool)

(assert (=> d!51059 (= (array_inv!1680 (_values!3172 thiss!1248)) (bvsge (size!2938 (_values!3172 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158049 d!51059))

(declare-fun mapIsEmpty!5579 () Bool)

(declare-fun mapRes!5579 () Bool)

(assert (=> mapIsEmpty!5579 mapRes!5579))

(declare-fun mapNonEmpty!5579 () Bool)

(declare-fun tp!12968 () Bool)

(declare-fun e!103562 () Bool)

(assert (=> mapNonEmpty!5579 (= mapRes!5579 (and tp!12968 e!103562))))

(declare-fun mapValue!5579 () ValueCell!1293)

(declare-fun mapKey!5579 () (_ BitVec 32))

(declare-fun mapRest!5579 () (Array (_ BitVec 32) ValueCell!1293))

(assert (=> mapNonEmpty!5579 (= mapRest!5573 (store mapRest!5579 mapKey!5579 mapValue!5579))))

(declare-fun b!158108 () Bool)

(declare-fun e!103561 () Bool)

(assert (=> b!158108 (= e!103561 tp_is_empty!3273)))

(declare-fun b!158107 () Bool)

(assert (=> b!158107 (= e!103562 tp_is_empty!3273)))

(declare-fun condMapEmpty!5579 () Bool)

(declare-fun mapDefault!5579 () ValueCell!1293)

(assert (=> mapNonEmpty!5573 (= condMapEmpty!5579 (= mapRest!5573 ((as const (Array (_ BitVec 32) ValueCell!1293)) mapDefault!5579)))))

(assert (=> mapNonEmpty!5573 (= tp!12959 (and e!103561 mapRes!5579))))

(assert (= (and mapNonEmpty!5573 condMapEmpty!5579) mapIsEmpty!5579))

(assert (= (and mapNonEmpty!5573 (not condMapEmpty!5579)) mapNonEmpty!5579))

(assert (= (and mapNonEmpty!5579 ((_ is ValueCellFull!1293) mapValue!5579)) b!158107))

(assert (= (and mapNonEmpty!5573 ((_ is ValueCellFull!1293) mapDefault!5579)) b!158108))

(declare-fun m!191015 () Bool)

(assert (=> mapNonEmpty!5579 m!191015))

(check-sat (not mapNonEmpty!5579) (not b!158080) (not b!158082) (not b!158081) (not b_next!3471) (not d!51055) (not d!51053) tp_is_empty!3273 (not b!158095) b_and!9903)
(check-sat b_and!9903 (not b_next!3471))
(get-model)

(declare-fun d!51061 () Bool)

(declare-fun res!74713 () Bool)

(declare-fun e!103574 () Bool)

(assert (=> d!51061 (=> res!74713 e!103574)))

(assert (=> d!51061 (= res!74713 (bvsge #b00000000000000000000000000000000 (size!2937 (_keys!4971 thiss!1248))))))

(assert (=> d!51061 (= (arrayNoDuplicates!0 (_keys!4971 thiss!1248) #b00000000000000000000000000000000 Nil!1899) e!103574)))

(declare-fun b!158119 () Bool)

(declare-fun e!103571 () Bool)

(declare-fun call!17243 () Bool)

(assert (=> b!158119 (= e!103571 call!17243)))

(declare-fun bm!17240 () Bool)

(declare-fun c!29757 () Bool)

(assert (=> bm!17240 (= call!17243 (arrayNoDuplicates!0 (_keys!4971 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29757 (Cons!1898 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000) Nil!1899) Nil!1899)))))

(declare-fun b!158120 () Bool)

(declare-fun e!103572 () Bool)

(assert (=> b!158120 (= e!103574 e!103572)))

(declare-fun res!74714 () Bool)

(assert (=> b!158120 (=> (not res!74714) (not e!103572))))

(declare-fun e!103573 () Bool)

(assert (=> b!158120 (= res!74714 (not e!103573))))

(declare-fun res!74712 () Bool)

(assert (=> b!158120 (=> (not res!74712) (not e!103573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!158120 (= res!74712 (validKeyInArray!0 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158121 () Bool)

(assert (=> b!158121 (= e!103572 e!103571)))

(assert (=> b!158121 (= c!29757 (validKeyInArray!0 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158122 () Bool)

(declare-fun contains!974 (List!1902 (_ BitVec 64)) Bool)

(assert (=> b!158122 (= e!103573 (contains!974 Nil!1899 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158123 () Bool)

(assert (=> b!158123 (= e!103571 call!17243)))

(assert (= (and d!51061 (not res!74713)) b!158120))

(assert (= (and b!158120 res!74712) b!158122))

(assert (= (and b!158120 res!74714) b!158121))

(assert (= (and b!158121 c!29757) b!158123))

(assert (= (and b!158121 (not c!29757)) b!158119))

(assert (= (or b!158123 b!158119) bm!17240))

(declare-fun m!191017 () Bool)

(assert (=> bm!17240 m!191017))

(declare-fun m!191019 () Bool)

(assert (=> bm!17240 m!191019))

(assert (=> b!158120 m!191017))

(assert (=> b!158120 m!191017))

(declare-fun m!191021 () Bool)

(assert (=> b!158120 m!191021))

(assert (=> b!158121 m!191017))

(assert (=> b!158121 m!191017))

(assert (=> b!158121 m!191021))

(assert (=> b!158122 m!191017))

(assert (=> b!158122 m!191017))

(declare-fun m!191023 () Bool)

(assert (=> b!158122 m!191023))

(assert (=> b!158082 d!51061))

(declare-fun d!51063 () Bool)

(declare-fun res!74719 () Bool)

(declare-fun e!103582 () Bool)

(assert (=> d!51063 (=> res!74719 e!103582)))

(assert (=> d!51063 (= res!74719 (bvsge #b00000000000000000000000000000000 (size!2937 (_keys!4971 thiss!1248))))))

(assert (=> d!51063 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)) e!103582)))

(declare-fun bm!17243 () Bool)

(declare-fun call!17246 () Bool)

(assert (=> bm!17243 (= call!17246 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4971 thiss!1248) (mask!7692 thiss!1248)))))

(declare-fun b!158132 () Bool)

(declare-fun e!103581 () Bool)

(declare-fun e!103583 () Bool)

(assert (=> b!158132 (= e!103581 e!103583)))

(declare-fun lt!81836 () (_ BitVec 64))

(assert (=> b!158132 (= lt!81836 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4982 0))(
  ( (Unit!4983) )
))
(declare-fun lt!81834 () Unit!4982)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5610 (_ BitVec 64) (_ BitVec 32)) Unit!4982)

(assert (=> b!158132 (= lt!81834 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4971 thiss!1248) lt!81836 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!158132 (arrayContainsKey!0 (_keys!4971 thiss!1248) lt!81836 #b00000000000000000000000000000000)))

(declare-fun lt!81835 () Unit!4982)

(assert (=> b!158132 (= lt!81835 lt!81834)))

(declare-fun res!74720 () Bool)

(assert (=> b!158132 (= res!74720 (= (seekEntryOrOpen!0 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000) (_keys!4971 thiss!1248) (mask!7692 thiss!1248)) (Found!305 #b00000000000000000000000000000000)))))

(assert (=> b!158132 (=> (not res!74720) (not e!103583))))

(declare-fun b!158133 () Bool)

(assert (=> b!158133 (= e!103581 call!17246)))

(declare-fun b!158134 () Bool)

(assert (=> b!158134 (= e!103582 e!103581)))

(declare-fun c!29760 () Bool)

(assert (=> b!158134 (= c!29760 (validKeyInArray!0 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158135 () Bool)

(assert (=> b!158135 (= e!103583 call!17246)))

(assert (= (and d!51063 (not res!74719)) b!158134))

(assert (= (and b!158134 c!29760) b!158132))

(assert (= (and b!158134 (not c!29760)) b!158133))

(assert (= (and b!158132 res!74720) b!158135))

(assert (= (or b!158135 b!158133) bm!17243))

(declare-fun m!191025 () Bool)

(assert (=> bm!17243 m!191025))

(assert (=> b!158132 m!191017))

(declare-fun m!191027 () Bool)

(assert (=> b!158132 m!191027))

(declare-fun m!191029 () Bool)

(assert (=> b!158132 m!191029))

(assert (=> b!158132 m!191017))

(declare-fun m!191031 () Bool)

(assert (=> b!158132 m!191031))

(assert (=> b!158134 m!191017))

(assert (=> b!158134 m!191017))

(assert (=> b!158134 m!191021))

(assert (=> b!158081 d!51063))

(declare-fun d!51065 () Bool)

(declare-fun lt!81841 () SeekEntryResult!305)

(assert (=> d!51065 (and (or ((_ is Undefined!305) lt!81841) (not ((_ is Found!305) lt!81841)) (and (bvsge (index!3389 lt!81841) #b00000000000000000000000000000000) (bvslt (index!3389 lt!81841) (size!2937 (_keys!4971 thiss!1248))))) (or ((_ is Undefined!305) lt!81841) ((_ is Found!305) lt!81841) (not ((_ is MissingVacant!305) lt!81841)) (not (= (index!3391 lt!81841) (index!3390 lt!81825))) (and (bvsge (index!3391 lt!81841) #b00000000000000000000000000000000) (bvslt (index!3391 lt!81841) (size!2937 (_keys!4971 thiss!1248))))) (or ((_ is Undefined!305) lt!81841) (ite ((_ is Found!305) lt!81841) (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3389 lt!81841)) key!828) (and ((_ is MissingVacant!305) lt!81841) (= (index!3391 lt!81841) (index!3390 lt!81825)) (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3391 lt!81841)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!103591 () SeekEntryResult!305)

(assert (=> d!51065 (= lt!81841 e!103591)))

(declare-fun c!29769 () Bool)

(assert (=> d!51065 (= c!29769 (bvsge (x!17446 lt!81825) #b01111111111111111111111111111110))))

(declare-fun lt!81842 () (_ BitVec 64))

(assert (=> d!51065 (= lt!81842 (select (arr!2656 (_keys!4971 thiss!1248)) (index!3390 lt!81825)))))

(assert (=> d!51065 (validMask!0 (mask!7692 thiss!1248))))

(assert (=> d!51065 (= (seekKeyOrZeroReturnVacant!0 (x!17446 lt!81825) (index!3390 lt!81825) (index!3390 lt!81825) key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)) lt!81841)))

(declare-fun b!158148 () Bool)

(declare-fun c!29768 () Bool)

(assert (=> b!158148 (= c!29768 (= lt!81842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!103592 () SeekEntryResult!305)

(declare-fun e!103590 () SeekEntryResult!305)

(assert (=> b!158148 (= e!103592 e!103590)))

(declare-fun b!158149 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158149 (= e!103590 (seekKeyOrZeroReturnVacant!0 (bvadd (x!17446 lt!81825) #b00000000000000000000000000000001) (nextIndex!0 (index!3390 lt!81825) (x!17446 lt!81825) (mask!7692 thiss!1248)) (index!3390 lt!81825) key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)))))

(declare-fun b!158150 () Bool)

(assert (=> b!158150 (= e!103590 (MissingVacant!305 (index!3390 lt!81825)))))

(declare-fun b!158151 () Bool)

(assert (=> b!158151 (= e!103591 e!103592)))

(declare-fun c!29767 () Bool)

(assert (=> b!158151 (= c!29767 (= lt!81842 key!828))))

(declare-fun b!158152 () Bool)

(assert (=> b!158152 (= e!103592 (Found!305 (index!3390 lt!81825)))))

(declare-fun b!158153 () Bool)

(assert (=> b!158153 (= e!103591 Undefined!305)))

(assert (= (and d!51065 c!29769) b!158153))

(assert (= (and d!51065 (not c!29769)) b!158151))

(assert (= (and b!158151 c!29767) b!158152))

(assert (= (and b!158151 (not c!29767)) b!158148))

(assert (= (and b!158148 c!29768) b!158150))

(assert (= (and b!158148 (not c!29768)) b!158149))

(declare-fun m!191033 () Bool)

(assert (=> d!51065 m!191033))

(declare-fun m!191035 () Bool)

(assert (=> d!51065 m!191035))

(assert (=> d!51065 m!191013))

(assert (=> d!51065 m!190971))

(declare-fun m!191037 () Bool)

(assert (=> b!158149 m!191037))

(assert (=> b!158149 m!191037))

(declare-fun m!191039 () Bool)

(assert (=> b!158149 m!191039))

(assert (=> b!158095 d!51065))

(declare-fun b!158172 () Bool)

(declare-fun e!103603 () Bool)

(declare-fun lt!81848 () SeekEntryResult!305)

(assert (=> b!158172 (= e!103603 (bvsge (x!17446 lt!81848) #b01111111111111111111111111111110))))

(declare-fun d!51067 () Bool)

(assert (=> d!51067 e!103603))

(declare-fun c!29777 () Bool)

(assert (=> d!51067 (= c!29777 (and ((_ is Intermediate!305) lt!81848) (undefined!1117 lt!81848)))))

(declare-fun e!103607 () SeekEntryResult!305)

(assert (=> d!51067 (= lt!81848 e!103607)))

(declare-fun c!29778 () Bool)

(assert (=> d!51067 (= c!29778 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!81847 () (_ BitVec 64))

(assert (=> d!51067 (= lt!81847 (select (arr!2656 (_keys!4971 thiss!1248)) (toIndex!0 key!828 (mask!7692 thiss!1248))))))

(assert (=> d!51067 (validMask!0 (mask!7692 thiss!1248))))

(assert (=> d!51067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7692 thiss!1248)) key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)) lt!81848)))

(declare-fun b!158173 () Bool)

(assert (=> b!158173 (and (bvsge (index!3390 lt!81848) #b00000000000000000000000000000000) (bvslt (index!3390 lt!81848) (size!2937 (_keys!4971 thiss!1248))))))

(declare-fun res!74727 () Bool)

(assert (=> b!158173 (= res!74727 (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3390 lt!81848)) key!828))))

(declare-fun e!103606 () Bool)

(assert (=> b!158173 (=> res!74727 e!103606)))

(declare-fun e!103605 () Bool)

(assert (=> b!158173 (= e!103605 e!103606)))

(declare-fun b!158174 () Bool)

(assert (=> b!158174 (and (bvsge (index!3390 lt!81848) #b00000000000000000000000000000000) (bvslt (index!3390 lt!81848) (size!2937 (_keys!4971 thiss!1248))))))

(declare-fun res!74729 () Bool)

(assert (=> b!158174 (= res!74729 (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3390 lt!81848)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158174 (=> res!74729 e!103606)))

(declare-fun b!158175 () Bool)

(assert (=> b!158175 (and (bvsge (index!3390 lt!81848) #b00000000000000000000000000000000) (bvslt (index!3390 lt!81848) (size!2937 (_keys!4971 thiss!1248))))))

(assert (=> b!158175 (= e!103606 (= (select (arr!2656 (_keys!4971 thiss!1248)) (index!3390 lt!81848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!158176 () Bool)

(assert (=> b!158176 (= e!103603 e!103605)))

(declare-fun res!74728 () Bool)

(assert (=> b!158176 (= res!74728 (and ((_ is Intermediate!305) lt!81848) (not (undefined!1117 lt!81848)) (bvslt (x!17446 lt!81848) #b01111111111111111111111111111110) (bvsge (x!17446 lt!81848) #b00000000000000000000000000000000) (bvsge (x!17446 lt!81848) #b00000000000000000000000000000000)))))

(assert (=> b!158176 (=> (not res!74728) (not e!103605))))

(declare-fun b!158177 () Bool)

(declare-fun e!103604 () SeekEntryResult!305)

(assert (=> b!158177 (= e!103604 (Intermediate!305 false (toIndex!0 key!828 (mask!7692 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!158178 () Bool)

(assert (=> b!158178 (= e!103607 (Intermediate!305 true (toIndex!0 key!828 (mask!7692 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!158179 () Bool)

(assert (=> b!158179 (= e!103607 e!103604)))

(declare-fun c!29776 () Bool)

(assert (=> b!158179 (= c!29776 (or (= lt!81847 key!828) (= (bvadd lt!81847 lt!81847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!158180 () Bool)

(assert (=> b!158180 (= e!103604 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!7692 thiss!1248)) #b00000000000000000000000000000000 (mask!7692 thiss!1248)) key!828 (_keys!4971 thiss!1248) (mask!7692 thiss!1248)))))

(assert (= (and d!51067 c!29778) b!158178))

(assert (= (and d!51067 (not c!29778)) b!158179))

(assert (= (and b!158179 c!29776) b!158177))

(assert (= (and b!158179 (not c!29776)) b!158180))

(assert (= (and d!51067 c!29777) b!158172))

(assert (= (and d!51067 (not c!29777)) b!158176))

(assert (= (and b!158176 res!74728) b!158173))

(assert (= (and b!158173 (not res!74727)) b!158174))

(assert (= (and b!158174 (not res!74729)) b!158175))

(assert (=> b!158180 m!191003))

(declare-fun m!191041 () Bool)

(assert (=> b!158180 m!191041))

(assert (=> b!158180 m!191041))

(declare-fun m!191043 () Bool)

(assert (=> b!158180 m!191043))

(declare-fun m!191045 () Bool)

(assert (=> b!158173 m!191045))

(assert (=> d!51067 m!191003))

(declare-fun m!191047 () Bool)

(assert (=> d!51067 m!191047))

(assert (=> d!51067 m!190971))

(assert (=> b!158174 m!191045))

(assert (=> b!158175 m!191045))

(assert (=> d!51055 d!51067))

(declare-fun d!51069 () Bool)

(declare-fun lt!81854 () (_ BitVec 32))

(declare-fun lt!81853 () (_ BitVec 32))

(assert (=> d!51069 (= lt!81854 (bvmul (bvxor lt!81853 (bvlshr lt!81853 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51069 (= lt!81853 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51069 (and (bvsge (mask!7692 thiss!1248) #b00000000000000000000000000000000) (let ((res!74730 (let ((h!2509 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!17463 (bvmul (bvxor h!2509 (bvlshr h!2509 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!17463 (bvlshr x!17463 #b00000000000000000000000000001101)) (mask!7692 thiss!1248)))))) (and (bvslt res!74730 (bvadd (mask!7692 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!74730 #b00000000000000000000000000000000))))))

(assert (=> d!51069 (= (toIndex!0 key!828 (mask!7692 thiss!1248)) (bvand (bvxor lt!81854 (bvlshr lt!81854 #b00000000000000000000000000001101)) (mask!7692 thiss!1248)))))

(assert (=> d!51055 d!51069))

(assert (=> d!51055 d!51051))

(declare-fun b!158192 () Bool)

(declare-fun e!103610 () Bool)

(assert (=> b!158192 (= e!103610 (and (bvsge (extraKeys!2930 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2930 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!796 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!158191 () Bool)

(declare-fun res!74741 () Bool)

(assert (=> b!158191 (=> (not res!74741) (not e!103610))))

(declare-fun size!2941 (LongMapFixedSize!1494) (_ BitVec 32))

(assert (=> b!158191 (= res!74741 (= (size!2941 thiss!1248) (bvadd (_size!796 thiss!1248) (bvsdiv (bvadd (extraKeys!2930 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!158190 () Bool)

(declare-fun res!74740 () Bool)

(assert (=> b!158190 (=> (not res!74740) (not e!103610))))

(assert (=> b!158190 (= res!74740 (bvsge (size!2941 thiss!1248) (_size!796 thiss!1248)))))

(declare-fun d!51071 () Bool)

(declare-fun res!74739 () Bool)

(assert (=> d!51071 (=> (not res!74739) (not e!103610))))

(assert (=> d!51071 (= res!74739 (validMask!0 (mask!7692 thiss!1248)))))

(assert (=> d!51071 (= (simpleValid!110 thiss!1248) e!103610)))

(declare-fun b!158189 () Bool)

(declare-fun res!74742 () Bool)

(assert (=> b!158189 (=> (not res!74742) (not e!103610))))

(assert (=> b!158189 (= res!74742 (and (= (size!2938 (_values!3172 thiss!1248)) (bvadd (mask!7692 thiss!1248) #b00000000000000000000000000000001)) (= (size!2937 (_keys!4971 thiss!1248)) (size!2938 (_values!3172 thiss!1248))) (bvsge (_size!796 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!796 thiss!1248) (bvadd (mask!7692 thiss!1248) #b00000000000000000000000000000001))))))

(assert (= (and d!51071 res!74739) b!158189))

(assert (= (and b!158189 res!74742) b!158190))

(assert (= (and b!158190 res!74740) b!158191))

(assert (= (and b!158191 res!74741) b!158192))

(declare-fun m!191049 () Bool)

(assert (=> b!158191 m!191049))

(assert (=> b!158190 m!191049))

(assert (=> d!51071 m!190971))

(assert (=> d!51053 d!51071))

(declare-fun b!158201 () Bool)

(declare-fun e!103616 () (_ BitVec 32))

(declare-fun call!17249 () (_ BitVec 32))

(assert (=> b!158201 (= e!103616 (bvadd #b00000000000000000000000000000001 call!17249))))

(declare-fun bm!17246 () Bool)

(assert (=> bm!17246 (= call!17249 (arrayCountValidKeys!0 (_keys!4971 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2937 (_keys!4971 thiss!1248))))))

(declare-fun b!158202 () Bool)

(declare-fun e!103615 () (_ BitVec 32))

(assert (=> b!158202 (= e!103615 e!103616)))

(declare-fun c!29783 () Bool)

(assert (=> b!158202 (= c!29783 (validKeyInArray!0 (select (arr!2656 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158203 () Bool)

(assert (=> b!158203 (= e!103615 #b00000000000000000000000000000000)))

(declare-fun b!158204 () Bool)

(assert (=> b!158204 (= e!103616 call!17249)))

(declare-fun d!51073 () Bool)

(declare-fun lt!81857 () (_ BitVec 32))

(assert (=> d!51073 (and (bvsge lt!81857 #b00000000000000000000000000000000) (bvsle lt!81857 (bvsub (size!2937 (_keys!4971 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51073 (= lt!81857 e!103615)))

(declare-fun c!29784 () Bool)

(assert (=> d!51073 (= c!29784 (bvsge #b00000000000000000000000000000000 (size!2937 (_keys!4971 thiss!1248))))))

(assert (=> d!51073 (and (bvsle #b00000000000000000000000000000000 (size!2937 (_keys!4971 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2937 (_keys!4971 thiss!1248)) (size!2937 (_keys!4971 thiss!1248))))))

(assert (=> d!51073 (= (arrayCountValidKeys!0 (_keys!4971 thiss!1248) #b00000000000000000000000000000000 (size!2937 (_keys!4971 thiss!1248))) lt!81857)))

(assert (= (and d!51073 c!29784) b!158203))

(assert (= (and d!51073 (not c!29784)) b!158202))

(assert (= (and b!158202 c!29783) b!158201))

(assert (= (and b!158202 (not c!29783)) b!158204))

(assert (= (or b!158201 b!158204) bm!17246))

(declare-fun m!191051 () Bool)

(assert (=> bm!17246 m!191051))

(assert (=> b!158202 m!191017))

(assert (=> b!158202 m!191017))

(assert (=> b!158202 m!191021))

(assert (=> b!158080 d!51073))

(declare-fun mapIsEmpty!5580 () Bool)

(declare-fun mapRes!5580 () Bool)

(assert (=> mapIsEmpty!5580 mapRes!5580))

(declare-fun mapNonEmpty!5580 () Bool)

(declare-fun tp!12969 () Bool)

(declare-fun e!103618 () Bool)

(assert (=> mapNonEmpty!5580 (= mapRes!5580 (and tp!12969 e!103618))))

(declare-fun mapKey!5580 () (_ BitVec 32))

(declare-fun mapRest!5580 () (Array (_ BitVec 32) ValueCell!1293))

(declare-fun mapValue!5580 () ValueCell!1293)

(assert (=> mapNonEmpty!5580 (= mapRest!5579 (store mapRest!5580 mapKey!5580 mapValue!5580))))

(declare-fun b!158206 () Bool)

(declare-fun e!103617 () Bool)

(assert (=> b!158206 (= e!103617 tp_is_empty!3273)))

(declare-fun b!158205 () Bool)

(assert (=> b!158205 (= e!103618 tp_is_empty!3273)))

(declare-fun condMapEmpty!5580 () Bool)

(declare-fun mapDefault!5580 () ValueCell!1293)

(assert (=> mapNonEmpty!5579 (= condMapEmpty!5580 (= mapRest!5579 ((as const (Array (_ BitVec 32) ValueCell!1293)) mapDefault!5580)))))

(assert (=> mapNonEmpty!5579 (= tp!12968 (and e!103617 mapRes!5580))))

(assert (= (and mapNonEmpty!5579 condMapEmpty!5580) mapIsEmpty!5580))

(assert (= (and mapNonEmpty!5579 (not condMapEmpty!5580)) mapNonEmpty!5580))

(assert (= (and mapNonEmpty!5580 ((_ is ValueCellFull!1293) mapValue!5580)) b!158205))

(assert (= (and mapNonEmpty!5579 ((_ is ValueCellFull!1293) mapDefault!5580)) b!158206))

(declare-fun m!191053 () Bool)

(assert (=> mapNonEmpty!5580 m!191053))

(check-sat (not b!158122) (not b!158134) (not d!51067) (not bm!17246) (not b!158180) (not b!158149) (not d!51071) (not d!51065) (not mapNonEmpty!5580) (not b!158190) (not b!158121) tp_is_empty!3273 (not bm!17240) b_and!9903 (not b!158132) (not b!158120) (not bm!17243) (not b!158202) (not b_next!3471) (not b!158191))
(check-sat b_and!9903 (not b_next!3471))

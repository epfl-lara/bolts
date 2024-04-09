; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16398 () Bool)

(assert start!16398)

(declare-fun b!163237 () Bool)

(declare-fun b_free!3789 () Bool)

(declare-fun b_next!3789 () Bool)

(assert (=> b!163237 (= b_free!3789 (not b_next!3789))))

(declare-fun tp!13947 () Bool)

(declare-fun b_and!10221 () Bool)

(assert (=> b!163237 (= tp!13947 b_and!10221)))

(declare-fun res!77280 () Bool)

(declare-fun e!107102 () Bool)

(assert (=> start!16398 (=> (not res!77280) (not e!107102))))

(declare-datatypes ((V!4435 0))(
  ( (V!4436 (val!1840 Int)) )
))
(declare-datatypes ((ValueCell!1452 0))(
  ( (ValueCellFull!1452 (v!3701 V!4435)) (EmptyCell!1452) )
))
(declare-datatypes ((array!6266 0))(
  ( (array!6267 (arr!2974 (Array (_ BitVec 32) (_ BitVec 64))) (size!3260 (_ BitVec 32))) )
))
(declare-datatypes ((array!6268 0))(
  ( (array!6269 (arr!2975 (Array (_ BitVec 32) ValueCell!1452)) (size!3261 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1812 0))(
  ( (LongMapFixedSize!1813 (defaultEntry!3348 Int) (mask!8000 (_ BitVec 32)) (extraKeys!3089 (_ BitVec 32)) (zeroValue!3191 V!4435) (minValue!3191 V!4435) (_size!955 (_ BitVec 32)) (_keys!5158 array!6266) (_values!3331 array!6268) (_vacant!955 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1812)

(declare-fun valid!805 (LongMapFixedSize!1812) Bool)

(assert (=> start!16398 (= res!77280 (valid!805 thiss!1248))))

(assert (=> start!16398 e!107102))

(declare-fun e!107101 () Bool)

(assert (=> start!16398 e!107101))

(assert (=> start!16398 true))

(declare-fun b!163232 () Bool)

(declare-fun res!77281 () Bool)

(declare-fun e!107099 () Bool)

(assert (=> b!163232 (=> (not res!77281) (not e!107099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163232 (= res!77281 (validMask!0 (mask!8000 thiss!1248)))))

(declare-fun b!163233 () Bool)

(declare-fun e!107098 () Bool)

(declare-fun e!107100 () Bool)

(declare-fun mapRes!6085 () Bool)

(assert (=> b!163233 (= e!107098 (and e!107100 mapRes!6085))))

(declare-fun condMapEmpty!6085 () Bool)

(declare-fun mapDefault!6085 () ValueCell!1452)

(assert (=> b!163233 (= condMapEmpty!6085 (= (arr!2975 (_values!3331 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1452)) mapDefault!6085)))))

(declare-fun b!163234 () Bool)

(assert (=> b!163234 (= e!107099 (and (= (size!3261 (_values!3331 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8000 thiss!1248))) (= (size!3260 (_keys!5158 thiss!1248)) (size!3261 (_values!3331 thiss!1248))) (bvslt (mask!8000 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!163235 () Bool)

(declare-fun res!77278 () Bool)

(assert (=> b!163235 (=> (not res!77278) (not e!107102))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163235 (= res!77278 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6085 () Bool)

(declare-fun tp!13948 () Bool)

(declare-fun e!107103 () Bool)

(assert (=> mapNonEmpty!6085 (= mapRes!6085 (and tp!13948 e!107103))))

(declare-fun mapValue!6085 () ValueCell!1452)

(declare-fun mapKey!6085 () (_ BitVec 32))

(declare-fun mapRest!6085 () (Array (_ BitVec 32) ValueCell!1452))

(assert (=> mapNonEmpty!6085 (= (arr!2975 (_values!3331 thiss!1248)) (store mapRest!6085 mapKey!6085 mapValue!6085))))

(declare-fun b!163236 () Bool)

(assert (=> b!163236 (= e!107102 e!107099)))

(declare-fun res!77279 () Bool)

(assert (=> b!163236 (=> (not res!77279) (not e!107099))))

(declare-datatypes ((SeekEntryResult!407 0))(
  ( (MissingZero!407 (index!3796 (_ BitVec 32))) (Found!407 (index!3797 (_ BitVec 32))) (Intermediate!407 (undefined!1219 Bool) (index!3798 (_ BitVec 32)) (x!18097 (_ BitVec 32))) (Undefined!407) (MissingVacant!407 (index!3799 (_ BitVec 32))) )
))
(declare-fun lt!82676 () SeekEntryResult!407)

(get-info :version)

(assert (=> b!163236 (= res!77279 (and (not ((_ is Undefined!407) lt!82676)) (not ((_ is MissingVacant!407) lt!82676)) (not ((_ is MissingZero!407) lt!82676)) ((_ is Found!407) lt!82676)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6266 (_ BitVec 32)) SeekEntryResult!407)

(assert (=> b!163236 (= lt!82676 (seekEntryOrOpen!0 key!828 (_keys!5158 thiss!1248) (mask!8000 thiss!1248)))))

(declare-fun tp_is_empty!3591 () Bool)

(declare-fun array_inv!1893 (array!6266) Bool)

(declare-fun array_inv!1894 (array!6268) Bool)

(assert (=> b!163237 (= e!107101 (and tp!13947 tp_is_empty!3591 (array_inv!1893 (_keys!5158 thiss!1248)) (array_inv!1894 (_values!3331 thiss!1248)) e!107098))))

(declare-fun b!163238 () Bool)

(assert (=> b!163238 (= e!107103 tp_is_empty!3591)))

(declare-fun mapIsEmpty!6085 () Bool)

(assert (=> mapIsEmpty!6085 mapRes!6085))

(declare-fun b!163239 () Bool)

(assert (=> b!163239 (= e!107100 tp_is_empty!3591)))

(assert (= (and start!16398 res!77280) b!163235))

(assert (= (and b!163235 res!77278) b!163236))

(assert (= (and b!163236 res!77279) b!163232))

(assert (= (and b!163232 res!77281) b!163234))

(assert (= (and b!163233 condMapEmpty!6085) mapIsEmpty!6085))

(assert (= (and b!163233 (not condMapEmpty!6085)) mapNonEmpty!6085))

(assert (= (and mapNonEmpty!6085 ((_ is ValueCellFull!1452) mapValue!6085)) b!163238))

(assert (= (and b!163233 ((_ is ValueCellFull!1452) mapDefault!6085)) b!163239))

(assert (= b!163237 b!163233))

(assert (= start!16398 b!163237))

(declare-fun m!194001 () Bool)

(assert (=> b!163236 m!194001))

(declare-fun m!194003 () Bool)

(assert (=> start!16398 m!194003))

(declare-fun m!194005 () Bool)

(assert (=> b!163237 m!194005))

(declare-fun m!194007 () Bool)

(assert (=> b!163237 m!194007))

(declare-fun m!194009 () Bool)

(assert (=> mapNonEmpty!6085 m!194009))

(declare-fun m!194011 () Bool)

(assert (=> b!163232 m!194011))

(check-sat (not b!163232) (not b_next!3789) (not b!163236) (not start!16398) (not b!163237) b_and!10221 tp_is_empty!3591 (not mapNonEmpty!6085))
(check-sat b_and!10221 (not b_next!3789))
(get-model)

(declare-fun d!51337 () Bool)

(declare-fun res!77300 () Bool)

(declare-fun e!107127 () Bool)

(assert (=> d!51337 (=> (not res!77300) (not e!107127))))

(declare-fun simpleValid!120 (LongMapFixedSize!1812) Bool)

(assert (=> d!51337 (= res!77300 (simpleValid!120 thiss!1248))))

(assert (=> d!51337 (= (valid!805 thiss!1248) e!107127)))

(declare-fun b!163270 () Bool)

(declare-fun res!77301 () Bool)

(assert (=> b!163270 (=> (not res!77301) (not e!107127))))

(declare-fun arrayCountValidKeys!0 (array!6266 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163270 (= res!77301 (= (arrayCountValidKeys!0 (_keys!5158 thiss!1248) #b00000000000000000000000000000000 (size!3260 (_keys!5158 thiss!1248))) (_size!955 thiss!1248)))))

(declare-fun b!163271 () Bool)

(declare-fun res!77302 () Bool)

(assert (=> b!163271 (=> (not res!77302) (not e!107127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6266 (_ BitVec 32)) Bool)

(assert (=> b!163271 (= res!77302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5158 thiss!1248) (mask!8000 thiss!1248)))))

(declare-fun b!163272 () Bool)

(declare-datatypes ((List!2010 0))(
  ( (Nil!2007) (Cons!2006 (h!2621 (_ BitVec 64)) (t!6820 List!2010)) )
))
(declare-fun arrayNoDuplicates!0 (array!6266 (_ BitVec 32) List!2010) Bool)

(assert (=> b!163272 (= e!107127 (arrayNoDuplicates!0 (_keys!5158 thiss!1248) #b00000000000000000000000000000000 Nil!2007))))

(assert (= (and d!51337 res!77300) b!163270))

(assert (= (and b!163270 res!77301) b!163271))

(assert (= (and b!163271 res!77302) b!163272))

(declare-fun m!194025 () Bool)

(assert (=> d!51337 m!194025))

(declare-fun m!194027 () Bool)

(assert (=> b!163270 m!194027))

(declare-fun m!194029 () Bool)

(assert (=> b!163271 m!194029))

(declare-fun m!194031 () Bool)

(assert (=> b!163272 m!194031))

(assert (=> start!16398 d!51337))

(declare-fun b!163285 () Bool)

(declare-fun e!107134 () SeekEntryResult!407)

(declare-fun lt!82686 () SeekEntryResult!407)

(assert (=> b!163285 (= e!107134 (MissingZero!407 (index!3798 lt!82686)))))

(declare-fun b!163286 () Bool)

(declare-fun e!107136 () SeekEntryResult!407)

(assert (=> b!163286 (= e!107136 Undefined!407)))

(declare-fun b!163287 () Bool)

(declare-fun c!30054 () Bool)

(declare-fun lt!82687 () (_ BitVec 64))

(assert (=> b!163287 (= c!30054 (= lt!82687 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107135 () SeekEntryResult!407)

(assert (=> b!163287 (= e!107135 e!107134)))

(declare-fun b!163288 () Bool)

(assert (=> b!163288 (= e!107136 e!107135)))

(assert (=> b!163288 (= lt!82687 (select (arr!2974 (_keys!5158 thiss!1248)) (index!3798 lt!82686)))))

(declare-fun c!30052 () Bool)

(assert (=> b!163288 (= c!30052 (= lt!82687 key!828))))

(declare-fun b!163289 () Bool)

(assert (=> b!163289 (= e!107135 (Found!407 (index!3798 lt!82686)))))

(declare-fun b!163290 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6266 (_ BitVec 32)) SeekEntryResult!407)

(assert (=> b!163290 (= e!107134 (seekKeyOrZeroReturnVacant!0 (x!18097 lt!82686) (index!3798 lt!82686) (index!3798 lt!82686) key!828 (_keys!5158 thiss!1248) (mask!8000 thiss!1248)))))

(declare-fun d!51339 () Bool)

(declare-fun lt!82688 () SeekEntryResult!407)

(assert (=> d!51339 (and (or ((_ is Undefined!407) lt!82688) (not ((_ is Found!407) lt!82688)) (and (bvsge (index!3797 lt!82688) #b00000000000000000000000000000000) (bvslt (index!3797 lt!82688) (size!3260 (_keys!5158 thiss!1248))))) (or ((_ is Undefined!407) lt!82688) ((_ is Found!407) lt!82688) (not ((_ is MissingZero!407) lt!82688)) (and (bvsge (index!3796 lt!82688) #b00000000000000000000000000000000) (bvslt (index!3796 lt!82688) (size!3260 (_keys!5158 thiss!1248))))) (or ((_ is Undefined!407) lt!82688) ((_ is Found!407) lt!82688) ((_ is MissingZero!407) lt!82688) (not ((_ is MissingVacant!407) lt!82688)) (and (bvsge (index!3799 lt!82688) #b00000000000000000000000000000000) (bvslt (index!3799 lt!82688) (size!3260 (_keys!5158 thiss!1248))))) (or ((_ is Undefined!407) lt!82688) (ite ((_ is Found!407) lt!82688) (= (select (arr!2974 (_keys!5158 thiss!1248)) (index!3797 lt!82688)) key!828) (ite ((_ is MissingZero!407) lt!82688) (= (select (arr!2974 (_keys!5158 thiss!1248)) (index!3796 lt!82688)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!407) lt!82688) (= (select (arr!2974 (_keys!5158 thiss!1248)) (index!3799 lt!82688)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51339 (= lt!82688 e!107136)))

(declare-fun c!30053 () Bool)

(assert (=> d!51339 (= c!30053 (and ((_ is Intermediate!407) lt!82686) (undefined!1219 lt!82686)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6266 (_ BitVec 32)) SeekEntryResult!407)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51339 (= lt!82686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8000 thiss!1248)) key!828 (_keys!5158 thiss!1248) (mask!8000 thiss!1248)))))

(assert (=> d!51339 (validMask!0 (mask!8000 thiss!1248))))

(assert (=> d!51339 (= (seekEntryOrOpen!0 key!828 (_keys!5158 thiss!1248) (mask!8000 thiss!1248)) lt!82688)))

(assert (= (and d!51339 c!30053) b!163286))

(assert (= (and d!51339 (not c!30053)) b!163288))

(assert (= (and b!163288 c!30052) b!163289))

(assert (= (and b!163288 (not c!30052)) b!163287))

(assert (= (and b!163287 c!30054) b!163285))

(assert (= (and b!163287 (not c!30054)) b!163290))

(declare-fun m!194033 () Bool)

(assert (=> b!163288 m!194033))

(declare-fun m!194035 () Bool)

(assert (=> b!163290 m!194035))

(declare-fun m!194037 () Bool)

(assert (=> d!51339 m!194037))

(declare-fun m!194039 () Bool)

(assert (=> d!51339 m!194039))

(declare-fun m!194041 () Bool)

(assert (=> d!51339 m!194041))

(declare-fun m!194043 () Bool)

(assert (=> d!51339 m!194043))

(assert (=> d!51339 m!194011))

(assert (=> d!51339 m!194043))

(declare-fun m!194045 () Bool)

(assert (=> d!51339 m!194045))

(assert (=> b!163236 d!51339))

(declare-fun d!51341 () Bool)

(assert (=> d!51341 (= (array_inv!1893 (_keys!5158 thiss!1248)) (bvsge (size!3260 (_keys!5158 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163237 d!51341))

(declare-fun d!51343 () Bool)

(assert (=> d!51343 (= (array_inv!1894 (_values!3331 thiss!1248)) (bvsge (size!3261 (_values!3331 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163237 d!51343))

(declare-fun d!51345 () Bool)

(assert (=> d!51345 (= (validMask!0 (mask!8000 thiss!1248)) (and (or (= (mask!8000 thiss!1248) #b00000000000000000000000000000111) (= (mask!8000 thiss!1248) #b00000000000000000000000000001111) (= (mask!8000 thiss!1248) #b00000000000000000000000000011111) (= (mask!8000 thiss!1248) #b00000000000000000000000000111111) (= (mask!8000 thiss!1248) #b00000000000000000000000001111111) (= (mask!8000 thiss!1248) #b00000000000000000000000011111111) (= (mask!8000 thiss!1248) #b00000000000000000000000111111111) (= (mask!8000 thiss!1248) #b00000000000000000000001111111111) (= (mask!8000 thiss!1248) #b00000000000000000000011111111111) (= (mask!8000 thiss!1248) #b00000000000000000000111111111111) (= (mask!8000 thiss!1248) #b00000000000000000001111111111111) (= (mask!8000 thiss!1248) #b00000000000000000011111111111111) (= (mask!8000 thiss!1248) #b00000000000000000111111111111111) (= (mask!8000 thiss!1248) #b00000000000000001111111111111111) (= (mask!8000 thiss!1248) #b00000000000000011111111111111111) (= (mask!8000 thiss!1248) #b00000000000000111111111111111111) (= (mask!8000 thiss!1248) #b00000000000001111111111111111111) (= (mask!8000 thiss!1248) #b00000000000011111111111111111111) (= (mask!8000 thiss!1248) #b00000000000111111111111111111111) (= (mask!8000 thiss!1248) #b00000000001111111111111111111111) (= (mask!8000 thiss!1248) #b00000000011111111111111111111111) (= (mask!8000 thiss!1248) #b00000000111111111111111111111111) (= (mask!8000 thiss!1248) #b00000001111111111111111111111111) (= (mask!8000 thiss!1248) #b00000011111111111111111111111111) (= (mask!8000 thiss!1248) #b00000111111111111111111111111111) (= (mask!8000 thiss!1248) #b00001111111111111111111111111111) (= (mask!8000 thiss!1248) #b00011111111111111111111111111111) (= (mask!8000 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8000 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!163232 d!51345))

(declare-fun b!163298 () Bool)

(declare-fun e!107141 () Bool)

(assert (=> b!163298 (= e!107141 tp_is_empty!3591)))

(declare-fun mapIsEmpty!6091 () Bool)

(declare-fun mapRes!6091 () Bool)

(assert (=> mapIsEmpty!6091 mapRes!6091))

(declare-fun condMapEmpty!6091 () Bool)

(declare-fun mapDefault!6091 () ValueCell!1452)

(assert (=> mapNonEmpty!6085 (= condMapEmpty!6091 (= mapRest!6085 ((as const (Array (_ BitVec 32) ValueCell!1452)) mapDefault!6091)))))

(assert (=> mapNonEmpty!6085 (= tp!13948 (and e!107141 mapRes!6091))))

(declare-fun mapNonEmpty!6091 () Bool)

(declare-fun tp!13957 () Bool)

(declare-fun e!107142 () Bool)

(assert (=> mapNonEmpty!6091 (= mapRes!6091 (and tp!13957 e!107142))))

(declare-fun mapRest!6091 () (Array (_ BitVec 32) ValueCell!1452))

(declare-fun mapValue!6091 () ValueCell!1452)

(declare-fun mapKey!6091 () (_ BitVec 32))

(assert (=> mapNonEmpty!6091 (= mapRest!6085 (store mapRest!6091 mapKey!6091 mapValue!6091))))

(declare-fun b!163297 () Bool)

(assert (=> b!163297 (= e!107142 tp_is_empty!3591)))

(assert (= (and mapNonEmpty!6085 condMapEmpty!6091) mapIsEmpty!6091))

(assert (= (and mapNonEmpty!6085 (not condMapEmpty!6091)) mapNonEmpty!6091))

(assert (= (and mapNonEmpty!6091 ((_ is ValueCellFull!1452) mapValue!6091)) b!163297))

(assert (= (and mapNonEmpty!6085 ((_ is ValueCellFull!1452) mapDefault!6091)) b!163298))

(declare-fun m!194047 () Bool)

(assert (=> mapNonEmpty!6091 m!194047))

(check-sat (not b!163271) (not mapNonEmpty!6091) (not d!51337) (not b!163272) (not b!163270) (not b_next!3789) (not b!163290) b_and!10221 (not d!51339) tp_is_empty!3591)
(check-sat b_and!10221 (not b_next!3789))

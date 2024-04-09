; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16414 () Bool)

(assert start!16414)

(declare-fun b!163343 () Bool)

(declare-fun b_free!3795 () Bool)

(declare-fun b_next!3795 () Bool)

(assert (=> b!163343 (= b_free!3795 (not b_next!3795))))

(declare-fun tp!13968 () Bool)

(declare-fun b_and!10227 () Bool)

(assert (=> b!163343 (= tp!13968 b_and!10227)))

(declare-fun mapIsEmpty!6097 () Bool)

(declare-fun mapRes!6097 () Bool)

(assert (=> mapIsEmpty!6097 mapRes!6097))

(declare-fun b!163339 () Bool)

(declare-fun res!77324 () Bool)

(declare-fun e!107184 () Bool)

(assert (=> b!163339 (=> (not res!77324) (not e!107184))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163339 (= res!77324 (not (= key!828 (bvneg key!828))))))

(declare-fun res!77325 () Bool)

(assert (=> start!16414 (=> (not res!77325) (not e!107184))))

(declare-datatypes ((V!4443 0))(
  ( (V!4444 (val!1843 Int)) )
))
(declare-datatypes ((ValueCell!1455 0))(
  ( (ValueCellFull!1455 (v!3704 V!4443)) (EmptyCell!1455) )
))
(declare-datatypes ((array!6280 0))(
  ( (array!6281 (arr!2980 (Array (_ BitVec 32) (_ BitVec 64))) (size!3266 (_ BitVec 32))) )
))
(declare-datatypes ((array!6282 0))(
  ( (array!6283 (arr!2981 (Array (_ BitVec 32) ValueCell!1455)) (size!3267 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1818 0))(
  ( (LongMapFixedSize!1819 (defaultEntry!3351 Int) (mask!8007 (_ BitVec 32)) (extraKeys!3092 (_ BitVec 32)) (zeroValue!3194 V!4443) (minValue!3194 V!4443) (_size!958 (_ BitVec 32)) (_keys!5162 array!6280) (_values!3334 array!6282) (_vacant!958 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1818)

(declare-fun valid!807 (LongMapFixedSize!1818) Bool)

(assert (=> start!16414 (= res!77325 (valid!807 thiss!1248))))

(assert (=> start!16414 e!107184))

(declare-fun e!107180 () Bool)

(assert (=> start!16414 e!107180))

(assert (=> start!16414 true))

(declare-fun b!163340 () Bool)

(declare-fun e!107182 () Bool)

(declare-fun tp_is_empty!3597 () Bool)

(assert (=> b!163340 (= e!107182 tp_is_empty!3597)))

(declare-fun b!163341 () Bool)

(declare-fun e!107183 () Bool)

(assert (=> b!163341 (= e!107183 (and e!107182 mapRes!6097))))

(declare-fun condMapEmpty!6097 () Bool)

(declare-fun mapDefault!6097 () ValueCell!1455)

(assert (=> b!163341 (= condMapEmpty!6097 (= (arr!2981 (_values!3334 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1455)) mapDefault!6097)))))

(declare-fun b!163342 () Bool)

(declare-fun e!107179 () Bool)

(assert (=> b!163342 (= e!107179 (and (= (size!3267 (_values!3334 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8007 thiss!1248))) (= (size!3266 (_keys!5162 thiss!1248)) (size!3267 (_values!3334 thiss!1248))) (bvsge (mask!8007 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3092 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun array_inv!1899 (array!6280) Bool)

(declare-fun array_inv!1900 (array!6282) Bool)

(assert (=> b!163343 (= e!107180 (and tp!13968 tp_is_empty!3597 (array_inv!1899 (_keys!5162 thiss!1248)) (array_inv!1900 (_values!3334 thiss!1248)) e!107183))))

(declare-fun mapNonEmpty!6097 () Bool)

(declare-fun tp!13969 () Bool)

(declare-fun e!107181 () Bool)

(assert (=> mapNonEmpty!6097 (= mapRes!6097 (and tp!13969 e!107181))))

(declare-fun mapKey!6097 () (_ BitVec 32))

(declare-fun mapRest!6097 () (Array (_ BitVec 32) ValueCell!1455))

(declare-fun mapValue!6097 () ValueCell!1455)

(assert (=> mapNonEmpty!6097 (= (arr!2981 (_values!3334 thiss!1248)) (store mapRest!6097 mapKey!6097 mapValue!6097))))

(declare-fun b!163344 () Bool)

(declare-fun res!77323 () Bool)

(assert (=> b!163344 (=> (not res!77323) (not e!107179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163344 (= res!77323 (validMask!0 (mask!8007 thiss!1248)))))

(declare-fun b!163345 () Bool)

(assert (=> b!163345 (= e!107184 e!107179)))

(declare-fun res!77326 () Bool)

(assert (=> b!163345 (=> (not res!77326) (not e!107179))))

(declare-datatypes ((SeekEntryResult!410 0))(
  ( (MissingZero!410 (index!3808 (_ BitVec 32))) (Found!410 (index!3809 (_ BitVec 32))) (Intermediate!410 (undefined!1222 Bool) (index!3810 (_ BitVec 32)) (x!18116 (_ BitVec 32))) (Undefined!410) (MissingVacant!410 (index!3811 (_ BitVec 32))) )
))
(declare-fun lt!82694 () SeekEntryResult!410)

(get-info :version)

(assert (=> b!163345 (= res!77326 (and (not ((_ is Undefined!410) lt!82694)) (not ((_ is MissingVacant!410) lt!82694)) (not ((_ is MissingZero!410) lt!82694)) ((_ is Found!410) lt!82694)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6280 (_ BitVec 32)) SeekEntryResult!410)

(assert (=> b!163345 (= lt!82694 (seekEntryOrOpen!0 key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(declare-fun b!163346 () Bool)

(assert (=> b!163346 (= e!107181 tp_is_empty!3597)))

(assert (= (and start!16414 res!77325) b!163339))

(assert (= (and b!163339 res!77324) b!163345))

(assert (= (and b!163345 res!77326) b!163344))

(assert (= (and b!163344 res!77323) b!163342))

(assert (= (and b!163341 condMapEmpty!6097) mapIsEmpty!6097))

(assert (= (and b!163341 (not condMapEmpty!6097)) mapNonEmpty!6097))

(assert (= (and mapNonEmpty!6097 ((_ is ValueCellFull!1455) mapValue!6097)) b!163346))

(assert (= (and b!163341 ((_ is ValueCellFull!1455) mapDefault!6097)) b!163340))

(assert (= b!163343 b!163341))

(assert (= start!16414 b!163343))

(declare-fun m!194061 () Bool)

(assert (=> b!163345 m!194061))

(declare-fun m!194063 () Bool)

(assert (=> start!16414 m!194063))

(declare-fun m!194065 () Bool)

(assert (=> mapNonEmpty!6097 m!194065))

(declare-fun m!194067 () Bool)

(assert (=> b!163344 m!194067))

(declare-fun m!194069 () Bool)

(assert (=> b!163343 m!194069))

(declare-fun m!194071 () Bool)

(assert (=> b!163343 m!194071))

(check-sat (not b!163344) (not start!16414) b_and!10227 (not b!163345) (not b!163343) (not b_next!3795) (not mapNonEmpty!6097) tp_is_empty!3597)
(check-sat b_and!10227 (not b_next!3795))
(get-model)

(declare-fun d!51349 () Bool)

(assert (=> d!51349 (= (array_inv!1899 (_keys!5162 thiss!1248)) (bvsge (size!3266 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163343 d!51349))

(declare-fun d!51351 () Bool)

(assert (=> d!51351 (= (array_inv!1900 (_values!3334 thiss!1248)) (bvsge (size!3267 (_values!3334 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163343 d!51351))

(declare-fun d!51353 () Bool)

(declare-fun res!77345 () Bool)

(declare-fun e!107208 () Bool)

(assert (=> d!51353 (=> (not res!77345) (not e!107208))))

(declare-fun simpleValid!121 (LongMapFixedSize!1818) Bool)

(assert (=> d!51353 (= res!77345 (simpleValid!121 thiss!1248))))

(assert (=> d!51353 (= (valid!807 thiss!1248) e!107208)))

(declare-fun b!163377 () Bool)

(declare-fun res!77346 () Bool)

(assert (=> b!163377 (=> (not res!77346) (not e!107208))))

(declare-fun arrayCountValidKeys!0 (array!6280 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163377 (= res!77346 (= (arrayCountValidKeys!0 (_keys!5162 thiss!1248) #b00000000000000000000000000000000 (size!3266 (_keys!5162 thiss!1248))) (_size!958 thiss!1248)))))

(declare-fun b!163378 () Bool)

(declare-fun res!77347 () Bool)

(assert (=> b!163378 (=> (not res!77347) (not e!107208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6280 (_ BitVec 32)) Bool)

(assert (=> b!163378 (= res!77347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(declare-fun b!163379 () Bool)

(declare-datatypes ((List!2011 0))(
  ( (Nil!2008) (Cons!2007 (h!2622 (_ BitVec 64)) (t!6821 List!2011)) )
))
(declare-fun arrayNoDuplicates!0 (array!6280 (_ BitVec 32) List!2011) Bool)

(assert (=> b!163379 (= e!107208 (arrayNoDuplicates!0 (_keys!5162 thiss!1248) #b00000000000000000000000000000000 Nil!2008))))

(assert (= (and d!51353 res!77345) b!163377))

(assert (= (and b!163377 res!77346) b!163378))

(assert (= (and b!163378 res!77347) b!163379))

(declare-fun m!194085 () Bool)

(assert (=> d!51353 m!194085))

(declare-fun m!194087 () Bool)

(assert (=> b!163377 m!194087))

(declare-fun m!194089 () Bool)

(assert (=> b!163378 m!194089))

(declare-fun m!194091 () Bool)

(assert (=> b!163379 m!194091))

(assert (=> start!16414 d!51353))

(declare-fun d!51355 () Bool)

(assert (=> d!51355 (= (validMask!0 (mask!8007 thiss!1248)) (and (or (= (mask!8007 thiss!1248) #b00000000000000000000000000000111) (= (mask!8007 thiss!1248) #b00000000000000000000000000001111) (= (mask!8007 thiss!1248) #b00000000000000000000000000011111) (= (mask!8007 thiss!1248) #b00000000000000000000000000111111) (= (mask!8007 thiss!1248) #b00000000000000000000000001111111) (= (mask!8007 thiss!1248) #b00000000000000000000000011111111) (= (mask!8007 thiss!1248) #b00000000000000000000000111111111) (= (mask!8007 thiss!1248) #b00000000000000000000001111111111) (= (mask!8007 thiss!1248) #b00000000000000000000011111111111) (= (mask!8007 thiss!1248) #b00000000000000000000111111111111) (= (mask!8007 thiss!1248) #b00000000000000000001111111111111) (= (mask!8007 thiss!1248) #b00000000000000000011111111111111) (= (mask!8007 thiss!1248) #b00000000000000000111111111111111) (= (mask!8007 thiss!1248) #b00000000000000001111111111111111) (= (mask!8007 thiss!1248) #b00000000000000011111111111111111) (= (mask!8007 thiss!1248) #b00000000000000111111111111111111) (= (mask!8007 thiss!1248) #b00000000000001111111111111111111) (= (mask!8007 thiss!1248) #b00000000000011111111111111111111) (= (mask!8007 thiss!1248) #b00000000000111111111111111111111) (= (mask!8007 thiss!1248) #b00000000001111111111111111111111) (= (mask!8007 thiss!1248) #b00000000011111111111111111111111) (= (mask!8007 thiss!1248) #b00000000111111111111111111111111) (= (mask!8007 thiss!1248) #b00000001111111111111111111111111) (= (mask!8007 thiss!1248) #b00000011111111111111111111111111) (= (mask!8007 thiss!1248) #b00000111111111111111111111111111) (= (mask!8007 thiss!1248) #b00001111111111111111111111111111) (= (mask!8007 thiss!1248) #b00011111111111111111111111111111) (= (mask!8007 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8007 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!163344 d!51355))

(declare-fun b!163392 () Bool)

(declare-fun c!30063 () Bool)

(declare-fun lt!82705 () (_ BitVec 64))

(assert (=> b!163392 (= c!30063 (= lt!82705 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107216 () SeekEntryResult!410)

(declare-fun e!107217 () SeekEntryResult!410)

(assert (=> b!163392 (= e!107216 e!107217)))

(declare-fun b!163393 () Bool)

(declare-fun e!107215 () SeekEntryResult!410)

(assert (=> b!163393 (= e!107215 e!107216)))

(declare-fun lt!82706 () SeekEntryResult!410)

(assert (=> b!163393 (= lt!82705 (select (arr!2980 (_keys!5162 thiss!1248)) (index!3810 lt!82706)))))

(declare-fun c!30062 () Bool)

(assert (=> b!163393 (= c!30062 (= lt!82705 key!828))))

(declare-fun b!163394 () Bool)

(assert (=> b!163394 (= e!107216 (Found!410 (index!3810 lt!82706)))))

(declare-fun b!163395 () Bool)

(assert (=> b!163395 (= e!107217 (MissingZero!410 (index!3810 lt!82706)))))

(declare-fun b!163397 () Bool)

(assert (=> b!163397 (= e!107215 Undefined!410)))

(declare-fun b!163396 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6280 (_ BitVec 32)) SeekEntryResult!410)

(assert (=> b!163396 (= e!107217 (seekKeyOrZeroReturnVacant!0 (x!18116 lt!82706) (index!3810 lt!82706) (index!3810 lt!82706) key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(declare-fun d!51357 () Bool)

(declare-fun lt!82704 () SeekEntryResult!410)

(assert (=> d!51357 (and (or ((_ is Undefined!410) lt!82704) (not ((_ is Found!410) lt!82704)) (and (bvsge (index!3809 lt!82704) #b00000000000000000000000000000000) (bvslt (index!3809 lt!82704) (size!3266 (_keys!5162 thiss!1248))))) (or ((_ is Undefined!410) lt!82704) ((_ is Found!410) lt!82704) (not ((_ is MissingZero!410) lt!82704)) (and (bvsge (index!3808 lt!82704) #b00000000000000000000000000000000) (bvslt (index!3808 lt!82704) (size!3266 (_keys!5162 thiss!1248))))) (or ((_ is Undefined!410) lt!82704) ((_ is Found!410) lt!82704) ((_ is MissingZero!410) lt!82704) (not ((_ is MissingVacant!410) lt!82704)) (and (bvsge (index!3811 lt!82704) #b00000000000000000000000000000000) (bvslt (index!3811 lt!82704) (size!3266 (_keys!5162 thiss!1248))))) (or ((_ is Undefined!410) lt!82704) (ite ((_ is Found!410) lt!82704) (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3809 lt!82704)) key!828) (ite ((_ is MissingZero!410) lt!82704) (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3808 lt!82704)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!410) lt!82704) (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3811 lt!82704)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51357 (= lt!82704 e!107215)))

(declare-fun c!30061 () Bool)

(assert (=> d!51357 (= c!30061 (and ((_ is Intermediate!410) lt!82706) (undefined!1222 lt!82706)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6280 (_ BitVec 32)) SeekEntryResult!410)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51357 (= lt!82706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8007 thiss!1248)) key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(assert (=> d!51357 (validMask!0 (mask!8007 thiss!1248))))

(assert (=> d!51357 (= (seekEntryOrOpen!0 key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)) lt!82704)))

(assert (= (and d!51357 c!30061) b!163397))

(assert (= (and d!51357 (not c!30061)) b!163393))

(assert (= (and b!163393 c!30062) b!163394))

(assert (= (and b!163393 (not c!30062)) b!163392))

(assert (= (and b!163392 c!30063) b!163395))

(assert (= (and b!163392 (not c!30063)) b!163396))

(declare-fun m!194093 () Bool)

(assert (=> b!163393 m!194093))

(declare-fun m!194095 () Bool)

(assert (=> b!163396 m!194095))

(declare-fun m!194097 () Bool)

(assert (=> d!51357 m!194097))

(declare-fun m!194099 () Bool)

(assert (=> d!51357 m!194099))

(assert (=> d!51357 m!194097))

(declare-fun m!194101 () Bool)

(assert (=> d!51357 m!194101))

(assert (=> d!51357 m!194067))

(declare-fun m!194103 () Bool)

(assert (=> d!51357 m!194103))

(declare-fun m!194105 () Bool)

(assert (=> d!51357 m!194105))

(assert (=> b!163345 d!51357))

(declare-fun b!163404 () Bool)

(declare-fun e!107222 () Bool)

(assert (=> b!163404 (= e!107222 tp_is_empty!3597)))

(declare-fun b!163405 () Bool)

(declare-fun e!107223 () Bool)

(assert (=> b!163405 (= e!107223 tp_is_empty!3597)))

(declare-fun condMapEmpty!6103 () Bool)

(declare-fun mapDefault!6103 () ValueCell!1455)

(assert (=> mapNonEmpty!6097 (= condMapEmpty!6103 (= mapRest!6097 ((as const (Array (_ BitVec 32) ValueCell!1455)) mapDefault!6103)))))

(declare-fun mapRes!6103 () Bool)

(assert (=> mapNonEmpty!6097 (= tp!13969 (and e!107223 mapRes!6103))))

(declare-fun mapIsEmpty!6103 () Bool)

(assert (=> mapIsEmpty!6103 mapRes!6103))

(declare-fun mapNonEmpty!6103 () Bool)

(declare-fun tp!13978 () Bool)

(assert (=> mapNonEmpty!6103 (= mapRes!6103 (and tp!13978 e!107222))))

(declare-fun mapRest!6103 () (Array (_ BitVec 32) ValueCell!1455))

(declare-fun mapValue!6103 () ValueCell!1455)

(declare-fun mapKey!6103 () (_ BitVec 32))

(assert (=> mapNonEmpty!6103 (= mapRest!6097 (store mapRest!6103 mapKey!6103 mapValue!6103))))

(assert (= (and mapNonEmpty!6097 condMapEmpty!6103) mapIsEmpty!6103))

(assert (= (and mapNonEmpty!6097 (not condMapEmpty!6103)) mapNonEmpty!6103))

(assert (= (and mapNonEmpty!6103 ((_ is ValueCellFull!1455) mapValue!6103)) b!163404))

(assert (= (and mapNonEmpty!6097 ((_ is ValueCellFull!1455) mapDefault!6103)) b!163405))

(declare-fun m!194107 () Bool)

(assert (=> mapNonEmpty!6103 m!194107))

(check-sat (not b!163396) (not d!51353) (not d!51357) (not b!163378) (not mapNonEmpty!6103) (not b!163379) (not b!163377) b_and!10227 (not b_next!3795) tp_is_empty!3597)
(check-sat b_and!10227 (not b_next!3795))
(get-model)

(declare-fun b!163416 () Bool)

(declare-fun e!107233 () Bool)

(declare-fun contains!1037 (List!2011 (_ BitVec 64)) Bool)

(assert (=> b!163416 (= e!107233 (contains!1037 Nil!2008 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51359 () Bool)

(declare-fun res!77356 () Bool)

(declare-fun e!107232 () Bool)

(assert (=> d!51359 (=> res!77356 e!107232)))

(assert (=> d!51359 (= res!77356 (bvsge #b00000000000000000000000000000000 (size!3266 (_keys!5162 thiss!1248))))))

(assert (=> d!51359 (= (arrayNoDuplicates!0 (_keys!5162 thiss!1248) #b00000000000000000000000000000000 Nil!2008) e!107232)))

(declare-fun b!163417 () Bool)

(declare-fun e!107234 () Bool)

(assert (=> b!163417 (= e!107232 e!107234)))

(declare-fun res!77354 () Bool)

(assert (=> b!163417 (=> (not res!77354) (not e!107234))))

(assert (=> b!163417 (= res!77354 (not e!107233))))

(declare-fun res!77355 () Bool)

(assert (=> b!163417 (=> (not res!77355) (not e!107233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!163417 (= res!77355 (validKeyInArray!0 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163418 () Bool)

(declare-fun e!107235 () Bool)

(declare-fun call!17303 () Bool)

(assert (=> b!163418 (= e!107235 call!17303)))

(declare-fun bm!17300 () Bool)

(declare-fun c!30066 () Bool)

(assert (=> bm!17300 (= call!17303 (arrayNoDuplicates!0 (_keys!5162 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30066 (Cons!2007 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000) Nil!2008) Nil!2008)))))

(declare-fun b!163419 () Bool)

(assert (=> b!163419 (= e!107234 e!107235)))

(assert (=> b!163419 (= c!30066 (validKeyInArray!0 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163420 () Bool)

(assert (=> b!163420 (= e!107235 call!17303)))

(assert (= (and d!51359 (not res!77356)) b!163417))

(assert (= (and b!163417 res!77355) b!163416))

(assert (= (and b!163417 res!77354) b!163419))

(assert (= (and b!163419 c!30066) b!163420))

(assert (= (and b!163419 (not c!30066)) b!163418))

(assert (= (or b!163420 b!163418) bm!17300))

(declare-fun m!194109 () Bool)

(assert (=> b!163416 m!194109))

(assert (=> b!163416 m!194109))

(declare-fun m!194111 () Bool)

(assert (=> b!163416 m!194111))

(assert (=> b!163417 m!194109))

(assert (=> b!163417 m!194109))

(declare-fun m!194113 () Bool)

(assert (=> b!163417 m!194113))

(assert (=> bm!17300 m!194109))

(declare-fun m!194115 () Bool)

(assert (=> bm!17300 m!194115))

(assert (=> b!163419 m!194109))

(assert (=> b!163419 m!194109))

(assert (=> b!163419 m!194113))

(assert (=> b!163379 d!51359))

(declare-fun b!163429 () Bool)

(declare-fun res!77365 () Bool)

(declare-fun e!107238 () Bool)

(assert (=> b!163429 (=> (not res!77365) (not e!107238))))

(assert (=> b!163429 (= res!77365 (and (= (size!3267 (_values!3334 thiss!1248)) (bvadd (mask!8007 thiss!1248) #b00000000000000000000000000000001)) (= (size!3266 (_keys!5162 thiss!1248)) (size!3267 (_values!3334 thiss!1248))) (bvsge (_size!958 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!958 thiss!1248) (bvadd (mask!8007 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!163430 () Bool)

(declare-fun res!77367 () Bool)

(assert (=> b!163430 (=> (not res!77367) (not e!107238))))

(declare-fun size!3270 (LongMapFixedSize!1818) (_ BitVec 32))

(assert (=> b!163430 (= res!77367 (bvsge (size!3270 thiss!1248) (_size!958 thiss!1248)))))

(declare-fun b!163431 () Bool)

(declare-fun res!77366 () Bool)

(assert (=> b!163431 (=> (not res!77366) (not e!107238))))

(assert (=> b!163431 (= res!77366 (= (size!3270 thiss!1248) (bvadd (_size!958 thiss!1248) (bvsdiv (bvadd (extraKeys!3092 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!163432 () Bool)

(assert (=> b!163432 (= e!107238 (and (bvsge (extraKeys!3092 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3092 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!958 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!51361 () Bool)

(declare-fun res!77368 () Bool)

(assert (=> d!51361 (=> (not res!77368) (not e!107238))))

(assert (=> d!51361 (= res!77368 (validMask!0 (mask!8007 thiss!1248)))))

(assert (=> d!51361 (= (simpleValid!121 thiss!1248) e!107238)))

(assert (= (and d!51361 res!77368) b!163429))

(assert (= (and b!163429 res!77365) b!163430))

(assert (= (and b!163430 res!77367) b!163431))

(assert (= (and b!163431 res!77366) b!163432))

(declare-fun m!194117 () Bool)

(assert (=> b!163430 m!194117))

(assert (=> b!163431 m!194117))

(assert (=> d!51361 m!194067))

(assert (=> d!51353 d!51361))

(declare-fun b!163445 () Bool)

(declare-fun e!107246 () SeekEntryResult!410)

(assert (=> b!163445 (= e!107246 (Found!410 (index!3810 lt!82706)))))

(declare-fun b!163446 () Bool)

(declare-fun e!107247 () SeekEntryResult!410)

(assert (=> b!163446 (= e!107247 (MissingVacant!410 (index!3810 lt!82706)))))

(declare-fun b!163447 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163447 (= e!107247 (seekKeyOrZeroReturnVacant!0 (bvadd (x!18116 lt!82706) #b00000000000000000000000000000001) (nextIndex!0 (index!3810 lt!82706) (x!18116 lt!82706) (mask!8007 thiss!1248)) (index!3810 lt!82706) key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(declare-fun lt!82711 () SeekEntryResult!410)

(declare-fun d!51363 () Bool)

(assert (=> d!51363 (and (or ((_ is Undefined!410) lt!82711) (not ((_ is Found!410) lt!82711)) (and (bvsge (index!3809 lt!82711) #b00000000000000000000000000000000) (bvslt (index!3809 lt!82711) (size!3266 (_keys!5162 thiss!1248))))) (or ((_ is Undefined!410) lt!82711) ((_ is Found!410) lt!82711) (not ((_ is MissingVacant!410) lt!82711)) (not (= (index!3811 lt!82711) (index!3810 lt!82706))) (and (bvsge (index!3811 lt!82711) #b00000000000000000000000000000000) (bvslt (index!3811 lt!82711) (size!3266 (_keys!5162 thiss!1248))))) (or ((_ is Undefined!410) lt!82711) (ite ((_ is Found!410) lt!82711) (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3809 lt!82711)) key!828) (and ((_ is MissingVacant!410) lt!82711) (= (index!3811 lt!82711) (index!3810 lt!82706)) (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3811 lt!82711)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!107245 () SeekEntryResult!410)

(assert (=> d!51363 (= lt!82711 e!107245)))

(declare-fun c!30073 () Bool)

(assert (=> d!51363 (= c!30073 (bvsge (x!18116 lt!82706) #b01111111111111111111111111111110))))

(declare-fun lt!82712 () (_ BitVec 64))

(assert (=> d!51363 (= lt!82712 (select (arr!2980 (_keys!5162 thiss!1248)) (index!3810 lt!82706)))))

(assert (=> d!51363 (validMask!0 (mask!8007 thiss!1248))))

(assert (=> d!51363 (= (seekKeyOrZeroReturnVacant!0 (x!18116 lt!82706) (index!3810 lt!82706) (index!3810 lt!82706) key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)) lt!82711)))

(declare-fun b!163448 () Bool)

(declare-fun c!30074 () Bool)

(assert (=> b!163448 (= c!30074 (= lt!82712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!163448 (= e!107246 e!107247)))

(declare-fun b!163449 () Bool)

(assert (=> b!163449 (= e!107245 e!107246)))

(declare-fun c!30075 () Bool)

(assert (=> b!163449 (= c!30075 (= lt!82712 key!828))))

(declare-fun b!163450 () Bool)

(assert (=> b!163450 (= e!107245 Undefined!410)))

(assert (= (and d!51363 c!30073) b!163450))

(assert (= (and d!51363 (not c!30073)) b!163449))

(assert (= (and b!163449 c!30075) b!163445))

(assert (= (and b!163449 (not c!30075)) b!163448))

(assert (= (and b!163448 c!30074) b!163446))

(assert (= (and b!163448 (not c!30074)) b!163447))

(declare-fun m!194119 () Bool)

(assert (=> b!163447 m!194119))

(assert (=> b!163447 m!194119))

(declare-fun m!194121 () Bool)

(assert (=> b!163447 m!194121))

(declare-fun m!194123 () Bool)

(assert (=> d!51363 m!194123))

(declare-fun m!194125 () Bool)

(assert (=> d!51363 m!194125))

(assert (=> d!51363 m!194093))

(assert (=> d!51363 m!194067))

(assert (=> b!163396 d!51363))

(declare-fun b!163459 () Bool)

(declare-fun e!107256 () Bool)

(declare-fun call!17306 () Bool)

(assert (=> b!163459 (= e!107256 call!17306)))

(declare-fun b!163460 () Bool)

(declare-fun e!107254 () Bool)

(assert (=> b!163460 (= e!107254 e!107256)))

(declare-fun c!30078 () Bool)

(assert (=> b!163460 (= c!30078 (validKeyInArray!0 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51365 () Bool)

(declare-fun res!77373 () Bool)

(assert (=> d!51365 (=> res!77373 e!107254)))

(assert (=> d!51365 (= res!77373 (bvsge #b00000000000000000000000000000000 (size!3266 (_keys!5162 thiss!1248))))))

(assert (=> d!51365 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)) e!107254)))

(declare-fun b!163461 () Bool)

(declare-fun e!107255 () Bool)

(assert (=> b!163461 (= e!107256 e!107255)))

(declare-fun lt!82720 () (_ BitVec 64))

(assert (=> b!163461 (= lt!82720 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5036 0))(
  ( (Unit!5037) )
))
(declare-fun lt!82719 () Unit!5036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6280 (_ BitVec 64) (_ BitVec 32)) Unit!5036)

(assert (=> b!163461 (= lt!82719 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5162 thiss!1248) lt!82720 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!163461 (arrayContainsKey!0 (_keys!5162 thiss!1248) lt!82720 #b00000000000000000000000000000000)))

(declare-fun lt!82721 () Unit!5036)

(assert (=> b!163461 (= lt!82721 lt!82719)))

(declare-fun res!77374 () Bool)

(assert (=> b!163461 (= res!77374 (= (seekEntryOrOpen!0 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000) (_keys!5162 thiss!1248) (mask!8007 thiss!1248)) (Found!410 #b00000000000000000000000000000000)))))

(assert (=> b!163461 (=> (not res!77374) (not e!107255))))

(declare-fun bm!17303 () Bool)

(assert (=> bm!17303 (= call!17306 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(declare-fun b!163462 () Bool)

(assert (=> b!163462 (= e!107255 call!17306)))

(assert (= (and d!51365 (not res!77373)) b!163460))

(assert (= (and b!163460 c!30078) b!163461))

(assert (= (and b!163460 (not c!30078)) b!163459))

(assert (= (and b!163461 res!77374) b!163462))

(assert (= (or b!163462 b!163459) bm!17303))

(assert (=> b!163460 m!194109))

(assert (=> b!163460 m!194109))

(assert (=> b!163460 m!194113))

(assert (=> b!163461 m!194109))

(declare-fun m!194127 () Bool)

(assert (=> b!163461 m!194127))

(declare-fun m!194129 () Bool)

(assert (=> b!163461 m!194129))

(assert (=> b!163461 m!194109))

(declare-fun m!194131 () Bool)

(assert (=> b!163461 m!194131))

(declare-fun m!194133 () Bool)

(assert (=> bm!17303 m!194133))

(assert (=> b!163378 d!51365))

(declare-fun b!163481 () Bool)

(declare-fun e!107268 () SeekEntryResult!410)

(assert (=> b!163481 (= e!107268 (Intermediate!410 true (toIndex!0 key!828 (mask!8007 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!163482 () Bool)

(declare-fun e!107269 () Bool)

(declare-fun e!107267 () Bool)

(assert (=> b!163482 (= e!107269 e!107267)))

(declare-fun res!77382 () Bool)

(declare-fun lt!82726 () SeekEntryResult!410)

(assert (=> b!163482 (= res!77382 (and ((_ is Intermediate!410) lt!82726) (not (undefined!1222 lt!82726)) (bvslt (x!18116 lt!82726) #b01111111111111111111111111111110) (bvsge (x!18116 lt!82726) #b00000000000000000000000000000000) (bvsge (x!18116 lt!82726) #b00000000000000000000000000000000)))))

(assert (=> b!163482 (=> (not res!77382) (not e!107267))))

(declare-fun b!163483 () Bool)

(declare-fun e!107271 () SeekEntryResult!410)

(assert (=> b!163483 (= e!107271 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8007 thiss!1248)) #b00000000000000000000000000000000 (mask!8007 thiss!1248)) key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)))))

(declare-fun d!51367 () Bool)

(assert (=> d!51367 e!107269))

(declare-fun c!30086 () Bool)

(assert (=> d!51367 (= c!30086 (and ((_ is Intermediate!410) lt!82726) (undefined!1222 lt!82726)))))

(assert (=> d!51367 (= lt!82726 e!107268)))

(declare-fun c!30087 () Bool)

(assert (=> d!51367 (= c!30087 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!82727 () (_ BitVec 64))

(assert (=> d!51367 (= lt!82727 (select (arr!2980 (_keys!5162 thiss!1248)) (toIndex!0 key!828 (mask!8007 thiss!1248))))))

(assert (=> d!51367 (validMask!0 (mask!8007 thiss!1248))))

(assert (=> d!51367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8007 thiss!1248)) key!828 (_keys!5162 thiss!1248) (mask!8007 thiss!1248)) lt!82726)))

(declare-fun b!163484 () Bool)

(assert (=> b!163484 (= e!107271 (Intermediate!410 false (toIndex!0 key!828 (mask!8007 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!163485 () Bool)

(assert (=> b!163485 (and (bvsge (index!3810 lt!82726) #b00000000000000000000000000000000) (bvslt (index!3810 lt!82726) (size!3266 (_keys!5162 thiss!1248))))))

(declare-fun res!77381 () Bool)

(assert (=> b!163485 (= res!77381 (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3810 lt!82726)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107270 () Bool)

(assert (=> b!163485 (=> res!77381 e!107270)))

(declare-fun b!163486 () Bool)

(assert (=> b!163486 (= e!107269 (bvsge (x!18116 lt!82726) #b01111111111111111111111111111110))))

(declare-fun b!163487 () Bool)

(assert (=> b!163487 (and (bvsge (index!3810 lt!82726) #b00000000000000000000000000000000) (bvslt (index!3810 lt!82726) (size!3266 (_keys!5162 thiss!1248))))))

(declare-fun res!77383 () Bool)

(assert (=> b!163487 (= res!77383 (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3810 lt!82726)) key!828))))

(assert (=> b!163487 (=> res!77383 e!107270)))

(assert (=> b!163487 (= e!107267 e!107270)))

(declare-fun b!163488 () Bool)

(assert (=> b!163488 (= e!107268 e!107271)))

(declare-fun c!30085 () Bool)

(assert (=> b!163488 (= c!30085 (or (= lt!82727 key!828) (= (bvadd lt!82727 lt!82727) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!163489 () Bool)

(assert (=> b!163489 (and (bvsge (index!3810 lt!82726) #b00000000000000000000000000000000) (bvslt (index!3810 lt!82726) (size!3266 (_keys!5162 thiss!1248))))))

(assert (=> b!163489 (= e!107270 (= (select (arr!2980 (_keys!5162 thiss!1248)) (index!3810 lt!82726)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!51367 c!30087) b!163481))

(assert (= (and d!51367 (not c!30087)) b!163488))

(assert (= (and b!163488 c!30085) b!163484))

(assert (= (and b!163488 (not c!30085)) b!163483))

(assert (= (and d!51367 c!30086) b!163486))

(assert (= (and d!51367 (not c!30086)) b!163482))

(assert (= (and b!163482 res!77382) b!163487))

(assert (= (and b!163487 (not res!77383)) b!163485))

(assert (= (and b!163485 (not res!77381)) b!163489))

(assert (=> d!51367 m!194097))

(declare-fun m!194135 () Bool)

(assert (=> d!51367 m!194135))

(assert (=> d!51367 m!194067))

(declare-fun m!194137 () Bool)

(assert (=> b!163489 m!194137))

(assert (=> b!163487 m!194137))

(assert (=> b!163483 m!194097))

(declare-fun m!194139 () Bool)

(assert (=> b!163483 m!194139))

(assert (=> b!163483 m!194139))

(declare-fun m!194141 () Bool)

(assert (=> b!163483 m!194141))

(assert (=> b!163485 m!194137))

(assert (=> d!51357 d!51367))

(declare-fun d!51369 () Bool)

(declare-fun lt!82733 () (_ BitVec 32))

(declare-fun lt!82732 () (_ BitVec 32))

(assert (=> d!51369 (= lt!82733 (bvmul (bvxor lt!82732 (bvlshr lt!82732 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51369 (= lt!82732 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51369 (and (bvsge (mask!8007 thiss!1248) #b00000000000000000000000000000000) (let ((res!77384 (let ((h!2623 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!18133 (bvmul (bvxor h!2623 (bvlshr h!2623 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!18133 (bvlshr x!18133 #b00000000000000000000000000001101)) (mask!8007 thiss!1248)))))) (and (bvslt res!77384 (bvadd (mask!8007 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!77384 #b00000000000000000000000000000000))))))

(assert (=> d!51369 (= (toIndex!0 key!828 (mask!8007 thiss!1248)) (bvand (bvxor lt!82733 (bvlshr lt!82733 #b00000000000000000000000000001101)) (mask!8007 thiss!1248)))))

(assert (=> d!51357 d!51369))

(assert (=> d!51357 d!51355))

(declare-fun b!163498 () Bool)

(declare-fun e!107276 () (_ BitVec 32))

(assert (=> b!163498 (= e!107276 #b00000000000000000000000000000000)))

(declare-fun b!163499 () Bool)

(declare-fun e!107277 () (_ BitVec 32))

(declare-fun call!17309 () (_ BitVec 32))

(assert (=> b!163499 (= e!107277 (bvadd #b00000000000000000000000000000001 call!17309))))

(declare-fun d!51371 () Bool)

(declare-fun lt!82736 () (_ BitVec 32))

(assert (=> d!51371 (and (bvsge lt!82736 #b00000000000000000000000000000000) (bvsle lt!82736 (bvsub (size!3266 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!51371 (= lt!82736 e!107276)))

(declare-fun c!30093 () Bool)

(assert (=> d!51371 (= c!30093 (bvsge #b00000000000000000000000000000000 (size!3266 (_keys!5162 thiss!1248))))))

(assert (=> d!51371 (and (bvsle #b00000000000000000000000000000000 (size!3266 (_keys!5162 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3266 (_keys!5162 thiss!1248)) (size!3266 (_keys!5162 thiss!1248))))))

(assert (=> d!51371 (= (arrayCountValidKeys!0 (_keys!5162 thiss!1248) #b00000000000000000000000000000000 (size!3266 (_keys!5162 thiss!1248))) lt!82736)))

(declare-fun b!163500 () Bool)

(assert (=> b!163500 (= e!107277 call!17309)))

(declare-fun bm!17306 () Bool)

(assert (=> bm!17306 (= call!17309 (arrayCountValidKeys!0 (_keys!5162 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3266 (_keys!5162 thiss!1248))))))

(declare-fun b!163501 () Bool)

(assert (=> b!163501 (= e!107276 e!107277)))

(declare-fun c!30092 () Bool)

(assert (=> b!163501 (= c!30092 (validKeyInArray!0 (select (arr!2980 (_keys!5162 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51371 c!30093) b!163498))

(assert (= (and d!51371 (not c!30093)) b!163501))

(assert (= (and b!163501 c!30092) b!163499))

(assert (= (and b!163501 (not c!30092)) b!163500))

(assert (= (or b!163499 b!163500) bm!17306))

(declare-fun m!194143 () Bool)

(assert (=> bm!17306 m!194143))

(assert (=> b!163501 m!194109))

(assert (=> b!163501 m!194109))

(assert (=> b!163501 m!194113))

(assert (=> b!163377 d!51371))

(declare-fun b!163502 () Bool)

(declare-fun e!107278 () Bool)

(assert (=> b!163502 (= e!107278 tp_is_empty!3597)))

(declare-fun b!163503 () Bool)

(declare-fun e!107279 () Bool)

(assert (=> b!163503 (= e!107279 tp_is_empty!3597)))

(declare-fun condMapEmpty!6104 () Bool)

(declare-fun mapDefault!6104 () ValueCell!1455)

(assert (=> mapNonEmpty!6103 (= condMapEmpty!6104 (= mapRest!6103 ((as const (Array (_ BitVec 32) ValueCell!1455)) mapDefault!6104)))))

(declare-fun mapRes!6104 () Bool)

(assert (=> mapNonEmpty!6103 (= tp!13978 (and e!107279 mapRes!6104))))

(declare-fun mapIsEmpty!6104 () Bool)

(assert (=> mapIsEmpty!6104 mapRes!6104))

(declare-fun mapNonEmpty!6104 () Bool)

(declare-fun tp!13979 () Bool)

(assert (=> mapNonEmpty!6104 (= mapRes!6104 (and tp!13979 e!107278))))

(declare-fun mapValue!6104 () ValueCell!1455)

(declare-fun mapRest!6104 () (Array (_ BitVec 32) ValueCell!1455))

(declare-fun mapKey!6104 () (_ BitVec 32))

(assert (=> mapNonEmpty!6104 (= mapRest!6103 (store mapRest!6104 mapKey!6104 mapValue!6104))))

(assert (= (and mapNonEmpty!6103 condMapEmpty!6104) mapIsEmpty!6104))

(assert (= (and mapNonEmpty!6103 (not condMapEmpty!6104)) mapNonEmpty!6104))

(assert (= (and mapNonEmpty!6104 ((_ is ValueCellFull!1455) mapValue!6104)) b!163502))

(assert (= (and mapNonEmpty!6103 ((_ is ValueCellFull!1455) mapDefault!6104)) b!163503))

(declare-fun m!194145 () Bool)

(assert (=> mapNonEmpty!6104 m!194145))

(check-sat (not b!163416) (not b!163461) (not mapNonEmpty!6104) (not b!163447) (not b!163483) (not d!51367) (not b!163501) (not b!163419) (not b!163460) (not d!51361) (not b!163430) b_and!10227 (not b!163431) (not d!51363) (not b_next!3795) tp_is_empty!3597 (not b!163417) (not bm!17300) (not bm!17303) (not bm!17306))
(check-sat b_and!10227 (not b_next!3795))

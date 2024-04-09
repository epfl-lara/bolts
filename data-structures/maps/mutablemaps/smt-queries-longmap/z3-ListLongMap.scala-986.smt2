; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21292 () Bool)

(assert start!21292)

(declare-fun b!214230 () Bool)

(declare-fun b_free!5667 () Bool)

(declare-fun b_next!5667 () Bool)

(assert (=> b!214230 (= b_free!5667 (not b_next!5667))))

(declare-fun tp!20084 () Bool)

(declare-fun b_and!12575 () Bool)

(assert (=> b!214230 (= tp!20084 b_and!12575)))

(declare-fun b!214224 () Bool)

(declare-fun res!104890 () Bool)

(declare-fun e!139328 () Bool)

(assert (=> b!214224 (=> (not res!104890) (not e!139328))))

(declare-datatypes ((V!7019 0))(
  ( (V!7020 (val!2809 Int)) )
))
(declare-datatypes ((ValueCell!2421 0))(
  ( (ValueCellFull!2421 (v!4823 V!7019)) (EmptyCell!2421) )
))
(declare-datatypes ((array!10266 0))(
  ( (array!10267 (arr!4869 (Array (_ BitVec 32) ValueCell!2421)) (size!5195 (_ BitVec 32))) )
))
(declare-datatypes ((array!10268 0))(
  ( (array!10269 (arr!4870 (Array (_ BitVec 32) (_ BitVec 64))) (size!5196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2742 0))(
  ( (LongMapFixedSize!2743 (defaultEntry!4021 Int) (mask!9676 (_ BitVec 32)) (extraKeys!3758 (_ BitVec 32)) (zeroValue!3862 V!7019) (minValue!3862 V!7019) (_size!1420 (_ BitVec 32)) (_keys!6038 array!10268) (_values!4004 array!10266) (_vacant!1420 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2742)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214224 (= res!104890 (validMask!0 (mask!9676 thiss!1504)))))

(declare-fun b!214225 () Bool)

(declare-fun e!139329 () Bool)

(declare-fun tp_is_empty!5529 () Bool)

(assert (=> b!214225 (= e!139329 tp_is_empty!5529)))

(declare-fun b!214226 () Bool)

(declare-fun res!104888 () Bool)

(assert (=> b!214226 (=> (not res!104888) (not e!139328))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214226 (= res!104888 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!9405 () Bool)

(declare-fun mapRes!9405 () Bool)

(assert (=> mapIsEmpty!9405 mapRes!9405))

(declare-fun res!104889 () Bool)

(assert (=> start!21292 (=> (not res!104889) (not e!139328))))

(declare-fun valid!1115 (LongMapFixedSize!2742) Bool)

(assert (=> start!21292 (= res!104889 (valid!1115 thiss!1504))))

(assert (=> start!21292 e!139328))

(declare-fun e!139332 () Bool)

(assert (=> start!21292 e!139332))

(assert (=> start!21292 true))

(declare-fun b!214227 () Bool)

(assert (=> b!214227 (= e!139328 (and (bvsge (mask!9676 thiss!1504) #b00000000000000000000000000000000) (not (= (size!5196 (_keys!6038 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9676 thiss!1504))))))))

(declare-fun b!214228 () Bool)

(declare-fun e!139330 () Bool)

(assert (=> b!214228 (= e!139330 tp_is_empty!5529)))

(declare-fun b!214229 () Bool)

(declare-fun e!139331 () Bool)

(assert (=> b!214229 (= e!139331 (and e!139330 mapRes!9405))))

(declare-fun condMapEmpty!9405 () Bool)

(declare-fun mapDefault!9405 () ValueCell!2421)

(assert (=> b!214229 (= condMapEmpty!9405 (= (arr!4869 (_values!4004 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2421)) mapDefault!9405)))))

(declare-fun mapNonEmpty!9405 () Bool)

(declare-fun tp!20085 () Bool)

(assert (=> mapNonEmpty!9405 (= mapRes!9405 (and tp!20085 e!139329))))

(declare-fun mapValue!9405 () ValueCell!2421)

(declare-fun mapRest!9405 () (Array (_ BitVec 32) ValueCell!2421))

(declare-fun mapKey!9405 () (_ BitVec 32))

(assert (=> mapNonEmpty!9405 (= (arr!4869 (_values!4004 thiss!1504)) (store mapRest!9405 mapKey!9405 mapValue!9405))))

(declare-fun array_inv!3211 (array!10268) Bool)

(declare-fun array_inv!3212 (array!10266) Bool)

(assert (=> b!214230 (= e!139332 (and tp!20084 tp_is_empty!5529 (array_inv!3211 (_keys!6038 thiss!1504)) (array_inv!3212 (_values!4004 thiss!1504)) e!139331))))

(assert (= (and start!21292 res!104889) b!214226))

(assert (= (and b!214226 res!104888) b!214224))

(assert (= (and b!214224 res!104890) b!214227))

(assert (= (and b!214229 condMapEmpty!9405) mapIsEmpty!9405))

(assert (= (and b!214229 (not condMapEmpty!9405)) mapNonEmpty!9405))

(get-info :version)

(assert (= (and mapNonEmpty!9405 ((_ is ValueCellFull!2421) mapValue!9405)) b!214225))

(assert (= (and b!214229 ((_ is ValueCellFull!2421) mapDefault!9405)) b!214228))

(assert (= b!214230 b!214229))

(assert (= start!21292 b!214230))

(declare-fun m!242009 () Bool)

(assert (=> b!214224 m!242009))

(declare-fun m!242011 () Bool)

(assert (=> start!21292 m!242011))

(declare-fun m!242013 () Bool)

(assert (=> mapNonEmpty!9405 m!242013))

(declare-fun m!242015 () Bool)

(assert (=> b!214230 m!242015))

(declare-fun m!242017 () Bool)

(assert (=> b!214230 m!242017))

(check-sat (not b!214224) (not b_next!5667) b_and!12575 (not b!214230) tp_is_empty!5529 (not start!21292) (not mapNonEmpty!9405))
(check-sat b_and!12575 (not b_next!5667))
(get-model)

(declare-fun d!58205 () Bool)

(assert (=> d!58205 (= (validMask!0 (mask!9676 thiss!1504)) (and (or (= (mask!9676 thiss!1504) #b00000000000000000000000000000111) (= (mask!9676 thiss!1504) #b00000000000000000000000000001111) (= (mask!9676 thiss!1504) #b00000000000000000000000000011111) (= (mask!9676 thiss!1504) #b00000000000000000000000000111111) (= (mask!9676 thiss!1504) #b00000000000000000000000001111111) (= (mask!9676 thiss!1504) #b00000000000000000000000011111111) (= (mask!9676 thiss!1504) #b00000000000000000000000111111111) (= (mask!9676 thiss!1504) #b00000000000000000000001111111111) (= (mask!9676 thiss!1504) #b00000000000000000000011111111111) (= (mask!9676 thiss!1504) #b00000000000000000000111111111111) (= (mask!9676 thiss!1504) #b00000000000000000001111111111111) (= (mask!9676 thiss!1504) #b00000000000000000011111111111111) (= (mask!9676 thiss!1504) #b00000000000000000111111111111111) (= (mask!9676 thiss!1504) #b00000000000000001111111111111111) (= (mask!9676 thiss!1504) #b00000000000000011111111111111111) (= (mask!9676 thiss!1504) #b00000000000000111111111111111111) (= (mask!9676 thiss!1504) #b00000000000001111111111111111111) (= (mask!9676 thiss!1504) #b00000000000011111111111111111111) (= (mask!9676 thiss!1504) #b00000000000111111111111111111111) (= (mask!9676 thiss!1504) #b00000000001111111111111111111111) (= (mask!9676 thiss!1504) #b00000000011111111111111111111111) (= (mask!9676 thiss!1504) #b00000000111111111111111111111111) (= (mask!9676 thiss!1504) #b00000001111111111111111111111111) (= (mask!9676 thiss!1504) #b00000011111111111111111111111111) (= (mask!9676 thiss!1504) #b00000111111111111111111111111111) (= (mask!9676 thiss!1504) #b00001111111111111111111111111111) (= (mask!9676 thiss!1504) #b00011111111111111111111111111111) (= (mask!9676 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9676 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214224 d!58205))

(declare-fun d!58207 () Bool)

(assert (=> d!58207 (= (array_inv!3211 (_keys!6038 thiss!1504)) (bvsge (size!5196 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214230 d!58207))

(declare-fun d!58209 () Bool)

(assert (=> d!58209 (= (array_inv!3212 (_values!4004 thiss!1504)) (bvsge (size!5195 (_values!4004 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214230 d!58209))

(declare-fun d!58211 () Bool)

(declare-fun res!104906 () Bool)

(declare-fun e!139353 () Bool)

(assert (=> d!58211 (=> (not res!104906) (not e!139353))))

(declare-fun simpleValid!208 (LongMapFixedSize!2742) Bool)

(assert (=> d!58211 (= res!104906 (simpleValid!208 thiss!1504))))

(assert (=> d!58211 (= (valid!1115 thiss!1504) e!139353)))

(declare-fun b!214258 () Bool)

(declare-fun res!104907 () Bool)

(assert (=> b!214258 (=> (not res!104907) (not e!139353))))

(declare-fun arrayCountValidKeys!0 (array!10268 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214258 (= res!104907 (= (arrayCountValidKeys!0 (_keys!6038 thiss!1504) #b00000000000000000000000000000000 (size!5196 (_keys!6038 thiss!1504))) (_size!1420 thiss!1504)))))

(declare-fun b!214259 () Bool)

(declare-fun res!104908 () Bool)

(assert (=> b!214259 (=> (not res!104908) (not e!139353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10268 (_ BitVec 32)) Bool)

(assert (=> b!214259 (= res!104908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6038 thiss!1504) (mask!9676 thiss!1504)))))

(declare-fun b!214260 () Bool)

(declare-datatypes ((List!3148 0))(
  ( (Nil!3145) (Cons!3144 (h!3786 (_ BitVec 64)) (t!8111 List!3148)) )
))
(declare-fun arrayNoDuplicates!0 (array!10268 (_ BitVec 32) List!3148) Bool)

(assert (=> b!214260 (= e!139353 (arrayNoDuplicates!0 (_keys!6038 thiss!1504) #b00000000000000000000000000000000 Nil!3145))))

(assert (= (and d!58211 res!104906) b!214258))

(assert (= (and b!214258 res!104907) b!214259))

(assert (= (and b!214259 res!104908) b!214260))

(declare-fun m!242029 () Bool)

(assert (=> d!58211 m!242029))

(declare-fun m!242031 () Bool)

(assert (=> b!214258 m!242031))

(declare-fun m!242033 () Bool)

(assert (=> b!214259 m!242033))

(declare-fun m!242035 () Bool)

(assert (=> b!214260 m!242035))

(assert (=> start!21292 d!58211))

(declare-fun b!214267 () Bool)

(declare-fun e!139358 () Bool)

(assert (=> b!214267 (= e!139358 tp_is_empty!5529)))

(declare-fun mapIsEmpty!9411 () Bool)

(declare-fun mapRes!9411 () Bool)

(assert (=> mapIsEmpty!9411 mapRes!9411))

(declare-fun mapNonEmpty!9411 () Bool)

(declare-fun tp!20094 () Bool)

(assert (=> mapNonEmpty!9411 (= mapRes!9411 (and tp!20094 e!139358))))

(declare-fun mapRest!9411 () (Array (_ BitVec 32) ValueCell!2421))

(declare-fun mapValue!9411 () ValueCell!2421)

(declare-fun mapKey!9411 () (_ BitVec 32))

(assert (=> mapNonEmpty!9411 (= mapRest!9405 (store mapRest!9411 mapKey!9411 mapValue!9411))))

(declare-fun b!214268 () Bool)

(declare-fun e!139359 () Bool)

(assert (=> b!214268 (= e!139359 tp_is_empty!5529)))

(declare-fun condMapEmpty!9411 () Bool)

(declare-fun mapDefault!9411 () ValueCell!2421)

(assert (=> mapNonEmpty!9405 (= condMapEmpty!9411 (= mapRest!9405 ((as const (Array (_ BitVec 32) ValueCell!2421)) mapDefault!9411)))))

(assert (=> mapNonEmpty!9405 (= tp!20085 (and e!139359 mapRes!9411))))

(assert (= (and mapNonEmpty!9405 condMapEmpty!9411) mapIsEmpty!9411))

(assert (= (and mapNonEmpty!9405 (not condMapEmpty!9411)) mapNonEmpty!9411))

(assert (= (and mapNonEmpty!9411 ((_ is ValueCellFull!2421) mapValue!9411)) b!214267))

(assert (= (and mapNonEmpty!9405 ((_ is ValueCellFull!2421) mapDefault!9411)) b!214268))

(declare-fun m!242037 () Bool)

(assert (=> mapNonEmpty!9411 m!242037))

(check-sat (not b_next!5667) b_and!12575 (not mapNonEmpty!9411) (not b!214259) (not b!214258) tp_is_empty!5529 (not d!58211) (not b!214260))
(check-sat b_and!12575 (not b_next!5667))
(get-model)

(declare-fun b!214279 () Bool)

(declare-fun e!139370 () Bool)

(declare-fun contains!1425 (List!3148 (_ BitVec 64)) Bool)

(assert (=> b!214279 (= e!139370 (contains!1425 Nil!3145 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58213 () Bool)

(declare-fun res!104915 () Bool)

(declare-fun e!139371 () Bool)

(assert (=> d!58213 (=> res!104915 e!139371)))

(assert (=> d!58213 (= res!104915 (bvsge #b00000000000000000000000000000000 (size!5196 (_keys!6038 thiss!1504))))))

(assert (=> d!58213 (= (arrayNoDuplicates!0 (_keys!6038 thiss!1504) #b00000000000000000000000000000000 Nil!3145) e!139371)))

(declare-fun b!214280 () Bool)

(declare-fun e!139369 () Bool)

(declare-fun e!139368 () Bool)

(assert (=> b!214280 (= e!139369 e!139368)))

(declare-fun c!36019 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214280 (= c!36019 (validKeyInArray!0 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214281 () Bool)

(declare-fun call!20314 () Bool)

(assert (=> b!214281 (= e!139368 call!20314)))

(declare-fun b!214282 () Bool)

(assert (=> b!214282 (= e!139371 e!139369)))

(declare-fun res!104917 () Bool)

(assert (=> b!214282 (=> (not res!104917) (not e!139369))))

(assert (=> b!214282 (= res!104917 (not e!139370))))

(declare-fun res!104916 () Bool)

(assert (=> b!214282 (=> (not res!104916) (not e!139370))))

(assert (=> b!214282 (= res!104916 (validKeyInArray!0 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!20311 () Bool)

(assert (=> bm!20311 (= call!20314 (arrayNoDuplicates!0 (_keys!6038 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36019 (Cons!3144 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000) Nil!3145) Nil!3145)))))

(declare-fun b!214283 () Bool)

(assert (=> b!214283 (= e!139368 call!20314)))

(assert (= (and d!58213 (not res!104915)) b!214282))

(assert (= (and b!214282 res!104916) b!214279))

(assert (= (and b!214282 res!104917) b!214280))

(assert (= (and b!214280 c!36019) b!214283))

(assert (= (and b!214280 (not c!36019)) b!214281))

(assert (= (or b!214283 b!214281) bm!20311))

(declare-fun m!242039 () Bool)

(assert (=> b!214279 m!242039))

(assert (=> b!214279 m!242039))

(declare-fun m!242041 () Bool)

(assert (=> b!214279 m!242041))

(assert (=> b!214280 m!242039))

(assert (=> b!214280 m!242039))

(declare-fun m!242043 () Bool)

(assert (=> b!214280 m!242043))

(assert (=> b!214282 m!242039))

(assert (=> b!214282 m!242039))

(assert (=> b!214282 m!242043))

(assert (=> bm!20311 m!242039))

(declare-fun m!242045 () Bool)

(assert (=> bm!20311 m!242045))

(assert (=> b!214260 d!58213))

(declare-fun d!58215 () Bool)

(declare-fun res!104927 () Bool)

(declare-fun e!139374 () Bool)

(assert (=> d!58215 (=> (not res!104927) (not e!139374))))

(assert (=> d!58215 (= res!104927 (validMask!0 (mask!9676 thiss!1504)))))

(assert (=> d!58215 (= (simpleValid!208 thiss!1504) e!139374)))

(declare-fun b!214295 () Bool)

(assert (=> b!214295 (= e!139374 (and (bvsge (extraKeys!3758 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3758 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1420 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!214293 () Bool)

(declare-fun res!104929 () Bool)

(assert (=> b!214293 (=> (not res!104929) (not e!139374))))

(declare-fun size!5199 (LongMapFixedSize!2742) (_ BitVec 32))

(assert (=> b!214293 (= res!104929 (bvsge (size!5199 thiss!1504) (_size!1420 thiss!1504)))))

(declare-fun b!214294 () Bool)

(declare-fun res!104926 () Bool)

(assert (=> b!214294 (=> (not res!104926) (not e!139374))))

(assert (=> b!214294 (= res!104926 (= (size!5199 thiss!1504) (bvadd (_size!1420 thiss!1504) (bvsdiv (bvadd (extraKeys!3758 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!214292 () Bool)

(declare-fun res!104928 () Bool)

(assert (=> b!214292 (=> (not res!104928) (not e!139374))))

(assert (=> b!214292 (= res!104928 (and (= (size!5195 (_values!4004 thiss!1504)) (bvadd (mask!9676 thiss!1504) #b00000000000000000000000000000001)) (= (size!5196 (_keys!6038 thiss!1504)) (size!5195 (_values!4004 thiss!1504))) (bvsge (_size!1420 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1420 thiss!1504) (bvadd (mask!9676 thiss!1504) #b00000000000000000000000000000001))))))

(assert (= (and d!58215 res!104927) b!214292))

(assert (= (and b!214292 res!104928) b!214293))

(assert (= (and b!214293 res!104929) b!214294))

(assert (= (and b!214294 res!104926) b!214295))

(assert (=> d!58215 m!242009))

(declare-fun m!242047 () Bool)

(assert (=> b!214293 m!242047))

(assert (=> b!214294 m!242047))

(assert (=> d!58211 d!58215))

(declare-fun b!214304 () Bool)

(declare-fun e!139380 () (_ BitVec 32))

(assert (=> b!214304 (= e!139380 #b00000000000000000000000000000000)))

(declare-fun b!214305 () Bool)

(declare-fun e!139379 () (_ BitVec 32))

(declare-fun call!20317 () (_ BitVec 32))

(assert (=> b!214305 (= e!139379 (bvadd #b00000000000000000000000000000001 call!20317))))

(declare-fun bm!20314 () Bool)

(assert (=> bm!20314 (= call!20317 (arrayCountValidKeys!0 (_keys!6038 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5196 (_keys!6038 thiss!1504))))))

(declare-fun b!214307 () Bool)

(assert (=> b!214307 (= e!139379 call!20317)))

(declare-fun d!58217 () Bool)

(declare-fun lt!110803 () (_ BitVec 32))

(assert (=> d!58217 (and (bvsge lt!110803 #b00000000000000000000000000000000) (bvsle lt!110803 (bvsub (size!5196 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58217 (= lt!110803 e!139380)))

(declare-fun c!36025 () Bool)

(assert (=> d!58217 (= c!36025 (bvsge #b00000000000000000000000000000000 (size!5196 (_keys!6038 thiss!1504))))))

(assert (=> d!58217 (and (bvsle #b00000000000000000000000000000000 (size!5196 (_keys!6038 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5196 (_keys!6038 thiss!1504)) (size!5196 (_keys!6038 thiss!1504))))))

(assert (=> d!58217 (= (arrayCountValidKeys!0 (_keys!6038 thiss!1504) #b00000000000000000000000000000000 (size!5196 (_keys!6038 thiss!1504))) lt!110803)))

(declare-fun b!214306 () Bool)

(assert (=> b!214306 (= e!139380 e!139379)))

(declare-fun c!36024 () Bool)

(assert (=> b!214306 (= c!36024 (validKeyInArray!0 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58217 c!36025) b!214304))

(assert (= (and d!58217 (not c!36025)) b!214306))

(assert (= (and b!214306 c!36024) b!214305))

(assert (= (and b!214306 (not c!36024)) b!214307))

(assert (= (or b!214305 b!214307) bm!20314))

(declare-fun m!242049 () Bool)

(assert (=> bm!20314 m!242049))

(assert (=> b!214306 m!242039))

(assert (=> b!214306 m!242039))

(assert (=> b!214306 m!242043))

(assert (=> b!214258 d!58217))

(declare-fun b!214316 () Bool)

(declare-fun e!139388 () Bool)

(declare-fun call!20320 () Bool)

(assert (=> b!214316 (= e!139388 call!20320)))

(declare-fun bm!20317 () Bool)

(assert (=> bm!20317 (= call!20320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6038 thiss!1504) (mask!9676 thiss!1504)))))

(declare-fun d!58219 () Bool)

(declare-fun res!104934 () Bool)

(declare-fun e!139387 () Bool)

(assert (=> d!58219 (=> res!104934 e!139387)))

(assert (=> d!58219 (= res!104934 (bvsge #b00000000000000000000000000000000 (size!5196 (_keys!6038 thiss!1504))))))

(assert (=> d!58219 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6038 thiss!1504) (mask!9676 thiss!1504)) e!139387)))

(declare-fun b!214317 () Bool)

(declare-fun e!139389 () Bool)

(assert (=> b!214317 (= e!139389 e!139388)))

(declare-fun lt!110811 () (_ BitVec 64))

(assert (=> b!214317 (= lt!110811 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6487 0))(
  ( (Unit!6488) )
))
(declare-fun lt!110812 () Unit!6487)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10268 (_ BitVec 64) (_ BitVec 32)) Unit!6487)

(assert (=> b!214317 (= lt!110812 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6038 thiss!1504) lt!110811 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!214317 (arrayContainsKey!0 (_keys!6038 thiss!1504) lt!110811 #b00000000000000000000000000000000)))

(declare-fun lt!110810 () Unit!6487)

(assert (=> b!214317 (= lt!110810 lt!110812)))

(declare-fun res!104935 () Bool)

(declare-datatypes ((SeekEntryResult!727 0))(
  ( (MissingZero!727 (index!5078 (_ BitVec 32))) (Found!727 (index!5079 (_ BitVec 32))) (Intermediate!727 (undefined!1539 Bool) (index!5080 (_ BitVec 32)) (x!22346 (_ BitVec 32))) (Undefined!727) (MissingVacant!727 (index!5081 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10268 (_ BitVec 32)) SeekEntryResult!727)

(assert (=> b!214317 (= res!104935 (= (seekEntryOrOpen!0 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000) (_keys!6038 thiss!1504) (mask!9676 thiss!1504)) (Found!727 #b00000000000000000000000000000000)))))

(assert (=> b!214317 (=> (not res!104935) (not e!139388))))

(declare-fun b!214318 () Bool)

(assert (=> b!214318 (= e!139387 e!139389)))

(declare-fun c!36028 () Bool)

(assert (=> b!214318 (= c!36028 (validKeyInArray!0 (select (arr!4870 (_keys!6038 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!214319 () Bool)

(assert (=> b!214319 (= e!139389 call!20320)))

(assert (= (and d!58219 (not res!104934)) b!214318))

(assert (= (and b!214318 c!36028) b!214317))

(assert (= (and b!214318 (not c!36028)) b!214319))

(assert (= (and b!214317 res!104935) b!214316))

(assert (= (or b!214316 b!214319) bm!20317))

(declare-fun m!242051 () Bool)

(assert (=> bm!20317 m!242051))

(assert (=> b!214317 m!242039))

(declare-fun m!242053 () Bool)

(assert (=> b!214317 m!242053))

(declare-fun m!242055 () Bool)

(assert (=> b!214317 m!242055))

(assert (=> b!214317 m!242039))

(declare-fun m!242057 () Bool)

(assert (=> b!214317 m!242057))

(assert (=> b!214318 m!242039))

(assert (=> b!214318 m!242039))

(assert (=> b!214318 m!242043))

(assert (=> b!214259 d!58219))

(declare-fun b!214320 () Bool)

(declare-fun e!139390 () Bool)

(assert (=> b!214320 (= e!139390 tp_is_empty!5529)))

(declare-fun mapIsEmpty!9412 () Bool)

(declare-fun mapRes!9412 () Bool)

(assert (=> mapIsEmpty!9412 mapRes!9412))

(declare-fun mapNonEmpty!9412 () Bool)

(declare-fun tp!20095 () Bool)

(assert (=> mapNonEmpty!9412 (= mapRes!9412 (and tp!20095 e!139390))))

(declare-fun mapRest!9412 () (Array (_ BitVec 32) ValueCell!2421))

(declare-fun mapValue!9412 () ValueCell!2421)

(declare-fun mapKey!9412 () (_ BitVec 32))

(assert (=> mapNonEmpty!9412 (= mapRest!9411 (store mapRest!9412 mapKey!9412 mapValue!9412))))

(declare-fun b!214321 () Bool)

(declare-fun e!139391 () Bool)

(assert (=> b!214321 (= e!139391 tp_is_empty!5529)))

(declare-fun condMapEmpty!9412 () Bool)

(declare-fun mapDefault!9412 () ValueCell!2421)

(assert (=> mapNonEmpty!9411 (= condMapEmpty!9412 (= mapRest!9411 ((as const (Array (_ BitVec 32) ValueCell!2421)) mapDefault!9412)))))

(assert (=> mapNonEmpty!9411 (= tp!20094 (and e!139391 mapRes!9412))))

(assert (= (and mapNonEmpty!9411 condMapEmpty!9412) mapIsEmpty!9412))

(assert (= (and mapNonEmpty!9411 (not condMapEmpty!9412)) mapNonEmpty!9412))

(assert (= (and mapNonEmpty!9412 ((_ is ValueCellFull!2421) mapValue!9412)) b!214320))

(assert (= (and mapNonEmpty!9411 ((_ is ValueCellFull!2421) mapDefault!9412)) b!214321))

(declare-fun m!242059 () Bool)

(assert (=> mapNonEmpty!9412 m!242059))

(check-sat (not b_next!5667) b_and!12575 (not b!214318) (not b!214294) (not b!214282) (not bm!20311) (not bm!20317) (not b!214306) (not mapNonEmpty!9412) tp_is_empty!5529 (not d!58215) (not b!214317) (not b!214279) (not b!214280) (not b!214293) (not bm!20314))
(check-sat b_and!12575 (not b_next!5667))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21410 () Bool)

(assert start!21410)

(declare-fun b!214972 () Bool)

(declare-fun b_free!5703 () Bool)

(declare-fun b_next!5703 () Bool)

(assert (=> b!214972 (= b_free!5703 (not b_next!5703))))

(declare-fun tp!20213 () Bool)

(declare-fun b_and!12611 () Bool)

(assert (=> b!214972 (= tp!20213 b_and!12611)))

(declare-datatypes ((V!7067 0))(
  ( (V!7068 (val!2827 Int)) )
))
(declare-datatypes ((ValueCell!2439 0))(
  ( (ValueCellFull!2439 (v!4841 V!7067)) (EmptyCell!2439) )
))
(declare-datatypes ((array!10350 0))(
  ( (array!10351 (arr!4905 (Array (_ BitVec 32) ValueCell!2439)) (size!5233 (_ BitVec 32))) )
))
(declare-datatypes ((array!10352 0))(
  ( (array!10353 (arr!4906 (Array (_ BitVec 32) (_ BitVec 64))) (size!5234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2778 0))(
  ( (LongMapFixedSize!2779 (defaultEntry!4039 Int) (mask!9721 (_ BitVec 32)) (extraKeys!3776 (_ BitVec 32)) (zeroValue!3880 V!7067) (minValue!3880 V!7067) (_size!1438 (_ BitVec 32)) (_keys!6064 array!10352) (_values!4022 array!10350) (_vacant!1438 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2778)

(declare-fun e!139836 () Bool)

(declare-fun e!139839 () Bool)

(declare-fun tp_is_empty!5565 () Bool)

(declare-fun array_inv!3239 (array!10352) Bool)

(declare-fun array_inv!3240 (array!10350) Bool)

(assert (=> b!214972 (= e!139839 (and tp!20213 tp_is_empty!5565 (array_inv!3239 (_keys!6064 thiss!1504)) (array_inv!3240 (_values!4022 thiss!1504)) e!139836))))

(declare-fun b!214973 () Bool)

(declare-fun e!139840 () Bool)

(assert (=> b!214973 (= e!139840 tp_is_empty!5565)))

(declare-fun b!214974 () Bool)

(declare-fun e!139838 () Bool)

(declare-fun e!139835 () Bool)

(assert (=> b!214974 (= e!139838 e!139835)))

(declare-fun res!105214 () Bool)

(assert (=> b!214974 (=> (not res!105214) (not e!139835))))

(declare-datatypes ((SeekEntryResult!737 0))(
  ( (MissingZero!737 (index!5118 (_ BitVec 32))) (Found!737 (index!5119 (_ BitVec 32))) (Intermediate!737 (undefined!1549 Bool) (index!5120 (_ BitVec 32)) (x!22453 (_ BitVec 32))) (Undefined!737) (MissingVacant!737 (index!5121 (_ BitVec 32))) )
))
(declare-fun lt!110884 () SeekEntryResult!737)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!214974 (= res!105214 (or (= lt!110884 (MissingZero!737 index!297)) (= lt!110884 (MissingVacant!737 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10352 (_ BitVec 32)) SeekEntryResult!737)

(assert (=> b!214974 (= lt!110884 (seekEntryOrOpen!0 key!932 (_keys!6064 thiss!1504) (mask!9721 thiss!1504)))))

(declare-fun b!214975 () Bool)

(declare-fun e!139834 () Bool)

(assert (=> b!214975 (= e!139834 tp_is_empty!5565)))

(declare-fun mapIsEmpty!9479 () Bool)

(declare-fun mapRes!9479 () Bool)

(assert (=> mapIsEmpty!9479 mapRes!9479))

(declare-fun b!214977 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214977 (= e!139835 (not (validMask!0 (mask!9721 thiss!1504))))))

(declare-fun b!214976 () Bool)

(assert (=> b!214976 (= e!139836 (and e!139840 mapRes!9479))))

(declare-fun condMapEmpty!9479 () Bool)

(declare-fun mapDefault!9479 () ValueCell!2439)

(assert (=> b!214976 (= condMapEmpty!9479 (= (arr!4905 (_values!4022 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2439)) mapDefault!9479)))))

(declare-fun res!105213 () Bool)

(assert (=> start!21410 (=> (not res!105213) (not e!139838))))

(declare-fun valid!1127 (LongMapFixedSize!2778) Bool)

(assert (=> start!21410 (= res!105213 (valid!1127 thiss!1504))))

(assert (=> start!21410 e!139838))

(assert (=> start!21410 e!139839))

(assert (=> start!21410 true))

(declare-fun mapNonEmpty!9479 () Bool)

(declare-fun tp!20212 () Bool)

(assert (=> mapNonEmpty!9479 (= mapRes!9479 (and tp!20212 e!139834))))

(declare-fun mapValue!9479 () ValueCell!2439)

(declare-fun mapKey!9479 () (_ BitVec 32))

(declare-fun mapRest!9479 () (Array (_ BitVec 32) ValueCell!2439))

(assert (=> mapNonEmpty!9479 (= (arr!4905 (_values!4022 thiss!1504)) (store mapRest!9479 mapKey!9479 mapValue!9479))))

(declare-fun b!214978 () Bool)

(declare-fun res!105215 () Bool)

(assert (=> b!214978 (=> (not res!105215) (not e!139838))))

(assert (=> b!214978 (= res!105215 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!21410 res!105213) b!214978))

(assert (= (and b!214978 res!105215) b!214974))

(assert (= (and b!214974 res!105214) b!214977))

(assert (= (and b!214976 condMapEmpty!9479) mapIsEmpty!9479))

(assert (= (and b!214976 (not condMapEmpty!9479)) mapNonEmpty!9479))

(get-info :version)

(assert (= (and mapNonEmpty!9479 ((_ is ValueCellFull!2439) mapValue!9479)) b!214975))

(assert (= (and b!214976 ((_ is ValueCellFull!2439) mapDefault!9479)) b!214973))

(assert (= b!214972 b!214976))

(assert (= start!21410 b!214972))

(declare-fun m!242403 () Bool)

(assert (=> b!214977 m!242403))

(declare-fun m!242405 () Bool)

(assert (=> b!214972 m!242405))

(declare-fun m!242407 () Bool)

(assert (=> b!214972 m!242407))

(declare-fun m!242409 () Bool)

(assert (=> mapNonEmpty!9479 m!242409))

(declare-fun m!242411 () Bool)

(assert (=> start!21410 m!242411))

(declare-fun m!242413 () Bool)

(assert (=> b!214974 m!242413))

(check-sat b_and!12611 (not b!214974) (not b!214977) (not start!21410) (not b!214972) (not b_next!5703) (not mapNonEmpty!9479) tp_is_empty!5565)
(check-sat b_and!12611 (not b_next!5703))
(get-model)

(declare-fun d!58299 () Bool)

(assert (=> d!58299 (= (validMask!0 (mask!9721 thiss!1504)) (and (or (= (mask!9721 thiss!1504) #b00000000000000000000000000000111) (= (mask!9721 thiss!1504) #b00000000000000000000000000001111) (= (mask!9721 thiss!1504) #b00000000000000000000000000011111) (= (mask!9721 thiss!1504) #b00000000000000000000000000111111) (= (mask!9721 thiss!1504) #b00000000000000000000000001111111) (= (mask!9721 thiss!1504) #b00000000000000000000000011111111) (= (mask!9721 thiss!1504) #b00000000000000000000000111111111) (= (mask!9721 thiss!1504) #b00000000000000000000001111111111) (= (mask!9721 thiss!1504) #b00000000000000000000011111111111) (= (mask!9721 thiss!1504) #b00000000000000000000111111111111) (= (mask!9721 thiss!1504) #b00000000000000000001111111111111) (= (mask!9721 thiss!1504) #b00000000000000000011111111111111) (= (mask!9721 thiss!1504) #b00000000000000000111111111111111) (= (mask!9721 thiss!1504) #b00000000000000001111111111111111) (= (mask!9721 thiss!1504) #b00000000000000011111111111111111) (= (mask!9721 thiss!1504) #b00000000000000111111111111111111) (= (mask!9721 thiss!1504) #b00000000000001111111111111111111) (= (mask!9721 thiss!1504) #b00000000000011111111111111111111) (= (mask!9721 thiss!1504) #b00000000000111111111111111111111) (= (mask!9721 thiss!1504) #b00000000001111111111111111111111) (= (mask!9721 thiss!1504) #b00000000011111111111111111111111) (= (mask!9721 thiss!1504) #b00000000111111111111111111111111) (= (mask!9721 thiss!1504) #b00000001111111111111111111111111) (= (mask!9721 thiss!1504) #b00000011111111111111111111111111) (= (mask!9721 thiss!1504) #b00000111111111111111111111111111) (= (mask!9721 thiss!1504) #b00001111111111111111111111111111) (= (mask!9721 thiss!1504) #b00011111111111111111111111111111) (= (mask!9721 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9721 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214977 d!58299))

(declare-fun d!58301 () Bool)

(assert (=> d!58301 (= (array_inv!3239 (_keys!6064 thiss!1504)) (bvsge (size!5234 (_keys!6064 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214972 d!58301))

(declare-fun d!58303 () Bool)

(assert (=> d!58303 (= (array_inv!3240 (_values!4022 thiss!1504)) (bvsge (size!5233 (_values!4022 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214972 d!58303))

(declare-fun d!58305 () Bool)

(declare-fun res!105231 () Bool)

(declare-fun e!139864 () Bool)

(assert (=> d!58305 (=> (not res!105231) (not e!139864))))

(declare-fun simpleValid!214 (LongMapFixedSize!2778) Bool)

(assert (=> d!58305 (= res!105231 (simpleValid!214 thiss!1504))))

(assert (=> d!58305 (= (valid!1127 thiss!1504) e!139864)))

(declare-fun b!215006 () Bool)

(declare-fun res!105232 () Bool)

(assert (=> b!215006 (=> (not res!105232) (not e!139864))))

(declare-fun arrayCountValidKeys!0 (array!10352 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215006 (= res!105232 (= (arrayCountValidKeys!0 (_keys!6064 thiss!1504) #b00000000000000000000000000000000 (size!5234 (_keys!6064 thiss!1504))) (_size!1438 thiss!1504)))))

(declare-fun b!215007 () Bool)

(declare-fun res!105233 () Bool)

(assert (=> b!215007 (=> (not res!105233) (not e!139864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10352 (_ BitVec 32)) Bool)

(assert (=> b!215007 (= res!105233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6064 thiss!1504) (mask!9721 thiss!1504)))))

(declare-fun b!215008 () Bool)

(declare-datatypes ((List!3154 0))(
  ( (Nil!3151) (Cons!3150 (h!3793 (_ BitVec 64)) (t!8117 List!3154)) )
))
(declare-fun arrayNoDuplicates!0 (array!10352 (_ BitVec 32) List!3154) Bool)

(assert (=> b!215008 (= e!139864 (arrayNoDuplicates!0 (_keys!6064 thiss!1504) #b00000000000000000000000000000000 Nil!3151))))

(assert (= (and d!58305 res!105231) b!215006))

(assert (= (and b!215006 res!105232) b!215007))

(assert (= (and b!215007 res!105233) b!215008))

(declare-fun m!242427 () Bool)

(assert (=> d!58305 m!242427))

(declare-fun m!242429 () Bool)

(assert (=> b!215006 m!242429))

(declare-fun m!242431 () Bool)

(assert (=> b!215007 m!242431))

(declare-fun m!242433 () Bool)

(assert (=> b!215008 m!242433))

(assert (=> start!21410 d!58305))

(declare-fun b!215021 () Bool)

(declare-fun e!139871 () SeekEntryResult!737)

(declare-fun lt!110896 () SeekEntryResult!737)

(assert (=> b!215021 (= e!139871 (Found!737 (index!5120 lt!110896)))))

(declare-fun b!215022 () Bool)

(declare-fun e!139873 () SeekEntryResult!737)

(assert (=> b!215022 (= e!139873 (MissingZero!737 (index!5120 lt!110896)))))

(declare-fun d!58307 () Bool)

(declare-fun lt!110895 () SeekEntryResult!737)

(assert (=> d!58307 (and (or ((_ is Undefined!737) lt!110895) (not ((_ is Found!737) lt!110895)) (and (bvsge (index!5119 lt!110895) #b00000000000000000000000000000000) (bvslt (index!5119 lt!110895) (size!5234 (_keys!6064 thiss!1504))))) (or ((_ is Undefined!737) lt!110895) ((_ is Found!737) lt!110895) (not ((_ is MissingZero!737) lt!110895)) (and (bvsge (index!5118 lt!110895) #b00000000000000000000000000000000) (bvslt (index!5118 lt!110895) (size!5234 (_keys!6064 thiss!1504))))) (or ((_ is Undefined!737) lt!110895) ((_ is Found!737) lt!110895) ((_ is MissingZero!737) lt!110895) (not ((_ is MissingVacant!737) lt!110895)) (and (bvsge (index!5121 lt!110895) #b00000000000000000000000000000000) (bvslt (index!5121 lt!110895) (size!5234 (_keys!6064 thiss!1504))))) (or ((_ is Undefined!737) lt!110895) (ite ((_ is Found!737) lt!110895) (= (select (arr!4906 (_keys!6064 thiss!1504)) (index!5119 lt!110895)) key!932) (ite ((_ is MissingZero!737) lt!110895) (= (select (arr!4906 (_keys!6064 thiss!1504)) (index!5118 lt!110895)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!737) lt!110895) (= (select (arr!4906 (_keys!6064 thiss!1504)) (index!5121 lt!110895)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!139872 () SeekEntryResult!737)

(assert (=> d!58307 (= lt!110895 e!139872)))

(declare-fun c!36101 () Bool)

(assert (=> d!58307 (= c!36101 (and ((_ is Intermediate!737) lt!110896) (undefined!1549 lt!110896)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10352 (_ BitVec 32)) SeekEntryResult!737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58307 (= lt!110896 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9721 thiss!1504)) key!932 (_keys!6064 thiss!1504) (mask!9721 thiss!1504)))))

(assert (=> d!58307 (validMask!0 (mask!9721 thiss!1504))))

(assert (=> d!58307 (= (seekEntryOrOpen!0 key!932 (_keys!6064 thiss!1504) (mask!9721 thiss!1504)) lt!110895)))

(declare-fun b!215023 () Bool)

(declare-fun c!36102 () Bool)

(declare-fun lt!110894 () (_ BitVec 64))

(assert (=> b!215023 (= c!36102 (= lt!110894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215023 (= e!139871 e!139873)))

(declare-fun b!215024 () Bool)

(assert (=> b!215024 (= e!139872 e!139871)))

(assert (=> b!215024 (= lt!110894 (select (arr!4906 (_keys!6064 thiss!1504)) (index!5120 lt!110896)))))

(declare-fun c!36103 () Bool)

(assert (=> b!215024 (= c!36103 (= lt!110894 key!932))))

(declare-fun b!215025 () Bool)

(assert (=> b!215025 (= e!139872 Undefined!737)))

(declare-fun b!215026 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10352 (_ BitVec 32)) SeekEntryResult!737)

(assert (=> b!215026 (= e!139873 (seekKeyOrZeroReturnVacant!0 (x!22453 lt!110896) (index!5120 lt!110896) (index!5120 lt!110896) key!932 (_keys!6064 thiss!1504) (mask!9721 thiss!1504)))))

(assert (= (and d!58307 c!36101) b!215025))

(assert (= (and d!58307 (not c!36101)) b!215024))

(assert (= (and b!215024 c!36103) b!215021))

(assert (= (and b!215024 (not c!36103)) b!215023))

(assert (= (and b!215023 c!36102) b!215022))

(assert (= (and b!215023 (not c!36102)) b!215026))

(declare-fun m!242435 () Bool)

(assert (=> d!58307 m!242435))

(declare-fun m!242437 () Bool)

(assert (=> d!58307 m!242437))

(declare-fun m!242439 () Bool)

(assert (=> d!58307 m!242439))

(assert (=> d!58307 m!242403))

(assert (=> d!58307 m!242439))

(declare-fun m!242441 () Bool)

(assert (=> d!58307 m!242441))

(declare-fun m!242443 () Bool)

(assert (=> d!58307 m!242443))

(declare-fun m!242445 () Bool)

(assert (=> b!215024 m!242445))

(declare-fun m!242447 () Bool)

(assert (=> b!215026 m!242447))

(assert (=> b!214974 d!58307))

(declare-fun mapIsEmpty!9485 () Bool)

(declare-fun mapRes!9485 () Bool)

(assert (=> mapIsEmpty!9485 mapRes!9485))

(declare-fun mapNonEmpty!9485 () Bool)

(declare-fun tp!20222 () Bool)

(declare-fun e!139879 () Bool)

(assert (=> mapNonEmpty!9485 (= mapRes!9485 (and tp!20222 e!139879))))

(declare-fun mapKey!9485 () (_ BitVec 32))

(declare-fun mapRest!9485 () (Array (_ BitVec 32) ValueCell!2439))

(declare-fun mapValue!9485 () ValueCell!2439)

(assert (=> mapNonEmpty!9485 (= mapRest!9479 (store mapRest!9485 mapKey!9485 mapValue!9485))))

(declare-fun condMapEmpty!9485 () Bool)

(declare-fun mapDefault!9485 () ValueCell!2439)

(assert (=> mapNonEmpty!9479 (= condMapEmpty!9485 (= mapRest!9479 ((as const (Array (_ BitVec 32) ValueCell!2439)) mapDefault!9485)))))

(declare-fun e!139878 () Bool)

(assert (=> mapNonEmpty!9479 (= tp!20212 (and e!139878 mapRes!9485))))

(declare-fun b!215034 () Bool)

(assert (=> b!215034 (= e!139878 tp_is_empty!5565)))

(declare-fun b!215033 () Bool)

(assert (=> b!215033 (= e!139879 tp_is_empty!5565)))

(assert (= (and mapNonEmpty!9479 condMapEmpty!9485) mapIsEmpty!9485))

(assert (= (and mapNonEmpty!9479 (not condMapEmpty!9485)) mapNonEmpty!9485))

(assert (= (and mapNonEmpty!9485 ((_ is ValueCellFull!2439) mapValue!9485)) b!215033))

(assert (= (and mapNonEmpty!9479 ((_ is ValueCellFull!2439) mapDefault!9485)) b!215034))

(declare-fun m!242449 () Bool)

(assert (=> mapNonEmpty!9485 m!242449))

(check-sat b_and!12611 (not b!215026) (not b!215008) (not b!215006) (not b!215007) (not d!58307) (not d!58305) tp_is_empty!5565 (not b_next!5703) (not mapNonEmpty!9485))
(check-sat b_and!12611 (not b_next!5703))

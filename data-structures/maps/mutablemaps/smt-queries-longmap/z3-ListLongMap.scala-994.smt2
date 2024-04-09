; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21456 () Bool)

(assert start!21456)

(declare-fun b!215284 () Bool)

(declare-fun b_free!5715 () Bool)

(declare-fun b_next!5715 () Bool)

(assert (=> b!215284 (= b_free!5715 (not b_next!5715))))

(declare-fun tp!20256 () Bool)

(declare-fun b_and!12623 () Bool)

(assert (=> b!215284 (= tp!20256 b_and!12623)))

(declare-fun res!105339 () Bool)

(declare-fun e!140055 () Bool)

(assert (=> start!21456 (=> (not res!105339) (not e!140055))))

(declare-datatypes ((V!7083 0))(
  ( (V!7084 (val!2833 Int)) )
))
(declare-datatypes ((ValueCell!2445 0))(
  ( (ValueCellFull!2445 (v!4847 V!7083)) (EmptyCell!2445) )
))
(declare-datatypes ((array!10378 0))(
  ( (array!10379 (arr!4917 (Array (_ BitVec 32) ValueCell!2445)) (size!5246 (_ BitVec 32))) )
))
(declare-datatypes ((array!10380 0))(
  ( (array!10381 (arr!4918 (Array (_ BitVec 32) (_ BitVec 64))) (size!5247 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2790 0))(
  ( (LongMapFixedSize!2791 (defaultEntry!4045 Int) (mask!9739 (_ BitVec 32)) (extraKeys!3782 (_ BitVec 32)) (zeroValue!3886 V!7083) (minValue!3886 V!7083) (_size!1444 (_ BitVec 32)) (_keys!6075 array!10380) (_values!4028 array!10378) (_vacant!1444 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2790)

(declare-fun valid!1130 (LongMapFixedSize!2790) Bool)

(assert (=> start!21456 (= res!105339 (valid!1130 thiss!1504))))

(assert (=> start!21456 e!140055))

(declare-fun e!140054 () Bool)

(assert (=> start!21456 e!140054))

(assert (=> start!21456 true))

(declare-fun b!215280 () Bool)

(declare-fun e!140057 () Bool)

(declare-fun tp_is_empty!5577 () Bool)

(assert (=> b!215280 (= e!140057 tp_is_empty!5577)))

(declare-fun b!215281 () Bool)

(declare-fun e!140056 () Bool)

(declare-fun mapRes!9504 () Bool)

(assert (=> b!215281 (= e!140056 (and e!140057 mapRes!9504))))

(declare-fun condMapEmpty!9504 () Bool)

(declare-fun mapDefault!9504 () ValueCell!2445)

(assert (=> b!215281 (= condMapEmpty!9504 (= (arr!4917 (_values!4028 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2445)) mapDefault!9504)))))

(declare-fun b!215282 () Bool)

(declare-fun e!140052 () Bool)

(assert (=> b!215282 (= e!140052 (and (= (size!5246 (_values!4028 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9739 thiss!1504))) (not (= (size!5247 (_keys!6075 thiss!1504)) (size!5246 (_values!4028 thiss!1504))))))))

(declare-fun b!215283 () Bool)

(declare-fun res!105338 () Bool)

(assert (=> b!215283 (=> (not res!105338) (not e!140052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215283 (= res!105338 (validMask!0 (mask!9739 thiss!1504)))))

(declare-fun array_inv!3247 (array!10380) Bool)

(declare-fun array_inv!3248 (array!10378) Bool)

(assert (=> b!215284 (= e!140054 (and tp!20256 tp_is_empty!5577 (array_inv!3247 (_keys!6075 thiss!1504)) (array_inv!3248 (_values!4028 thiss!1504)) e!140056))))

(declare-fun b!215285 () Bool)

(declare-fun e!140053 () Bool)

(assert (=> b!215285 (= e!140053 tp_is_empty!5577)))

(declare-fun b!215286 () Bool)

(assert (=> b!215286 (= e!140055 e!140052)))

(declare-fun res!105336 () Bool)

(assert (=> b!215286 (=> (not res!105336) (not e!140052))))

(declare-datatypes ((SeekEntryResult!740 0))(
  ( (MissingZero!740 (index!5130 (_ BitVec 32))) (Found!740 (index!5131 (_ BitVec 32))) (Intermediate!740 (undefined!1552 Bool) (index!5132 (_ BitVec 32)) (x!22497 (_ BitVec 32))) (Undefined!740) (MissingVacant!740 (index!5133 (_ BitVec 32))) )
))
(declare-fun lt!110950 () SeekEntryResult!740)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215286 (= res!105336 (or (= lt!110950 (MissingZero!740 index!297)) (= lt!110950 (MissingVacant!740 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10380 (_ BitVec 32)) SeekEntryResult!740)

(assert (=> b!215286 (= lt!110950 (seekEntryOrOpen!0 key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(declare-fun mapIsEmpty!9504 () Bool)

(assert (=> mapIsEmpty!9504 mapRes!9504))

(declare-fun b!215287 () Bool)

(declare-fun res!105337 () Bool)

(assert (=> b!215287 (=> (not res!105337) (not e!140055))))

(assert (=> b!215287 (= res!105337 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9504 () Bool)

(declare-fun tp!20255 () Bool)

(assert (=> mapNonEmpty!9504 (= mapRes!9504 (and tp!20255 e!140053))))

(declare-fun mapKey!9504 () (_ BitVec 32))

(declare-fun mapValue!9504 () ValueCell!2445)

(declare-fun mapRest!9504 () (Array (_ BitVec 32) ValueCell!2445))

(assert (=> mapNonEmpty!9504 (= (arr!4917 (_values!4028 thiss!1504)) (store mapRest!9504 mapKey!9504 mapValue!9504))))

(assert (= (and start!21456 res!105339) b!215287))

(assert (= (and b!215287 res!105337) b!215286))

(assert (= (and b!215286 res!105336) b!215283))

(assert (= (and b!215283 res!105338) b!215282))

(assert (= (and b!215281 condMapEmpty!9504) mapIsEmpty!9504))

(assert (= (and b!215281 (not condMapEmpty!9504)) mapNonEmpty!9504))

(get-info :version)

(assert (= (and mapNonEmpty!9504 ((_ is ValueCellFull!2445) mapValue!9504)) b!215285))

(assert (= (and b!215281 ((_ is ValueCellFull!2445) mapDefault!9504)) b!215280))

(assert (= b!215284 b!215281))

(assert (= start!21456 b!215284))

(declare-fun m!242561 () Bool)

(assert (=> start!21456 m!242561))

(declare-fun m!242563 () Bool)

(assert (=> b!215283 m!242563))

(declare-fun m!242565 () Bool)

(assert (=> b!215286 m!242565))

(declare-fun m!242567 () Bool)

(assert (=> mapNonEmpty!9504 m!242567))

(declare-fun m!242569 () Bool)

(assert (=> b!215284 m!242569))

(declare-fun m!242571 () Bool)

(assert (=> b!215284 m!242571))

(check-sat tp_is_empty!5577 (not b!215286) (not mapNonEmpty!9504) (not b!215284) (not start!21456) (not b!215283) b_and!12623 (not b_next!5715))
(check-sat b_and!12623 (not b_next!5715))
(get-model)

(declare-fun b!215324 () Bool)

(declare-fun e!140088 () SeekEntryResult!740)

(declare-fun lt!110962 () SeekEntryResult!740)

(assert (=> b!215324 (= e!140088 (MissingZero!740 (index!5132 lt!110962)))))

(declare-fun b!215325 () Bool)

(declare-fun c!36149 () Bool)

(declare-fun lt!110960 () (_ BitVec 64))

(assert (=> b!215325 (= c!36149 (= lt!110960 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140086 () SeekEntryResult!740)

(assert (=> b!215325 (= e!140086 e!140088)))

(declare-fun d!58337 () Bool)

(declare-fun lt!110961 () SeekEntryResult!740)

(assert (=> d!58337 (and (or ((_ is Undefined!740) lt!110961) (not ((_ is Found!740) lt!110961)) (and (bvsge (index!5131 lt!110961) #b00000000000000000000000000000000) (bvslt (index!5131 lt!110961) (size!5247 (_keys!6075 thiss!1504))))) (or ((_ is Undefined!740) lt!110961) ((_ is Found!740) lt!110961) (not ((_ is MissingZero!740) lt!110961)) (and (bvsge (index!5130 lt!110961) #b00000000000000000000000000000000) (bvslt (index!5130 lt!110961) (size!5247 (_keys!6075 thiss!1504))))) (or ((_ is Undefined!740) lt!110961) ((_ is Found!740) lt!110961) ((_ is MissingZero!740) lt!110961) (not ((_ is MissingVacant!740) lt!110961)) (and (bvsge (index!5133 lt!110961) #b00000000000000000000000000000000) (bvslt (index!5133 lt!110961) (size!5247 (_keys!6075 thiss!1504))))) (or ((_ is Undefined!740) lt!110961) (ite ((_ is Found!740) lt!110961) (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5131 lt!110961)) key!932) (ite ((_ is MissingZero!740) lt!110961) (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5130 lt!110961)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!740) lt!110961) (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5133 lt!110961)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!140087 () SeekEntryResult!740)

(assert (=> d!58337 (= lt!110961 e!140087)))

(declare-fun c!36150 () Bool)

(assert (=> d!58337 (= c!36150 (and ((_ is Intermediate!740) lt!110962) (undefined!1552 lt!110962)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10380 (_ BitVec 32)) SeekEntryResult!740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58337 (= lt!110962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9739 thiss!1504)) key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(assert (=> d!58337 (validMask!0 (mask!9739 thiss!1504))))

(assert (=> d!58337 (= (seekEntryOrOpen!0 key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)) lt!110961)))

(declare-fun b!215326 () Bool)

(assert (=> b!215326 (= e!140087 e!140086)))

(assert (=> b!215326 (= lt!110960 (select (arr!4918 (_keys!6075 thiss!1504)) (index!5132 lt!110962)))))

(declare-fun c!36151 () Bool)

(assert (=> b!215326 (= c!36151 (= lt!110960 key!932))))

(declare-fun b!215327 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10380 (_ BitVec 32)) SeekEntryResult!740)

(assert (=> b!215327 (= e!140088 (seekKeyOrZeroReturnVacant!0 (x!22497 lt!110962) (index!5132 lt!110962) (index!5132 lt!110962) key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(declare-fun b!215328 () Bool)

(assert (=> b!215328 (= e!140087 Undefined!740)))

(declare-fun b!215329 () Bool)

(assert (=> b!215329 (= e!140086 (Found!740 (index!5132 lt!110962)))))

(assert (= (and d!58337 c!36150) b!215328))

(assert (= (and d!58337 (not c!36150)) b!215326))

(assert (= (and b!215326 c!36151) b!215329))

(assert (= (and b!215326 (not c!36151)) b!215325))

(assert (= (and b!215325 c!36149) b!215324))

(assert (= (and b!215325 (not c!36149)) b!215327))

(declare-fun m!242585 () Bool)

(assert (=> d!58337 m!242585))

(assert (=> d!58337 m!242585))

(declare-fun m!242587 () Bool)

(assert (=> d!58337 m!242587))

(assert (=> d!58337 m!242563))

(declare-fun m!242589 () Bool)

(assert (=> d!58337 m!242589))

(declare-fun m!242591 () Bool)

(assert (=> d!58337 m!242591))

(declare-fun m!242593 () Bool)

(assert (=> d!58337 m!242593))

(declare-fun m!242595 () Bool)

(assert (=> b!215326 m!242595))

(declare-fun m!242597 () Bool)

(assert (=> b!215327 m!242597))

(assert (=> b!215286 d!58337))

(declare-fun d!58339 () Bool)

(declare-fun res!105358 () Bool)

(declare-fun e!140091 () Bool)

(assert (=> d!58339 (=> (not res!105358) (not e!140091))))

(declare-fun simpleValid!216 (LongMapFixedSize!2790) Bool)

(assert (=> d!58339 (= res!105358 (simpleValid!216 thiss!1504))))

(assert (=> d!58339 (= (valid!1130 thiss!1504) e!140091)))

(declare-fun b!215336 () Bool)

(declare-fun res!105359 () Bool)

(assert (=> b!215336 (=> (not res!105359) (not e!140091))))

(declare-fun arrayCountValidKeys!0 (array!10380 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215336 (= res!105359 (= (arrayCountValidKeys!0 (_keys!6075 thiss!1504) #b00000000000000000000000000000000 (size!5247 (_keys!6075 thiss!1504))) (_size!1444 thiss!1504)))))

(declare-fun b!215337 () Bool)

(declare-fun res!105360 () Bool)

(assert (=> b!215337 (=> (not res!105360) (not e!140091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10380 (_ BitVec 32)) Bool)

(assert (=> b!215337 (= res!105360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(declare-fun b!215338 () Bool)

(declare-datatypes ((List!3156 0))(
  ( (Nil!3153) (Cons!3152 (h!3796 (_ BitVec 64)) (t!8119 List!3156)) )
))
(declare-fun arrayNoDuplicates!0 (array!10380 (_ BitVec 32) List!3156) Bool)

(assert (=> b!215338 (= e!140091 (arrayNoDuplicates!0 (_keys!6075 thiss!1504) #b00000000000000000000000000000000 Nil!3153))))

(assert (= (and d!58339 res!105358) b!215336))

(assert (= (and b!215336 res!105359) b!215337))

(assert (= (and b!215337 res!105360) b!215338))

(declare-fun m!242599 () Bool)

(assert (=> d!58339 m!242599))

(declare-fun m!242601 () Bool)

(assert (=> b!215336 m!242601))

(declare-fun m!242603 () Bool)

(assert (=> b!215337 m!242603))

(declare-fun m!242605 () Bool)

(assert (=> b!215338 m!242605))

(assert (=> start!21456 d!58339))

(declare-fun d!58341 () Bool)

(assert (=> d!58341 (= (array_inv!3247 (_keys!6075 thiss!1504)) (bvsge (size!5247 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215284 d!58341))

(declare-fun d!58343 () Bool)

(assert (=> d!58343 (= (array_inv!3248 (_values!4028 thiss!1504)) (bvsge (size!5246 (_values!4028 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!215284 d!58343))

(declare-fun d!58345 () Bool)

(assert (=> d!58345 (= (validMask!0 (mask!9739 thiss!1504)) (and (or (= (mask!9739 thiss!1504) #b00000000000000000000000000000111) (= (mask!9739 thiss!1504) #b00000000000000000000000000001111) (= (mask!9739 thiss!1504) #b00000000000000000000000000011111) (= (mask!9739 thiss!1504) #b00000000000000000000000000111111) (= (mask!9739 thiss!1504) #b00000000000000000000000001111111) (= (mask!9739 thiss!1504) #b00000000000000000000000011111111) (= (mask!9739 thiss!1504) #b00000000000000000000000111111111) (= (mask!9739 thiss!1504) #b00000000000000000000001111111111) (= (mask!9739 thiss!1504) #b00000000000000000000011111111111) (= (mask!9739 thiss!1504) #b00000000000000000000111111111111) (= (mask!9739 thiss!1504) #b00000000000000000001111111111111) (= (mask!9739 thiss!1504) #b00000000000000000011111111111111) (= (mask!9739 thiss!1504) #b00000000000000000111111111111111) (= (mask!9739 thiss!1504) #b00000000000000001111111111111111) (= (mask!9739 thiss!1504) #b00000000000000011111111111111111) (= (mask!9739 thiss!1504) #b00000000000000111111111111111111) (= (mask!9739 thiss!1504) #b00000000000001111111111111111111) (= (mask!9739 thiss!1504) #b00000000000011111111111111111111) (= (mask!9739 thiss!1504) #b00000000000111111111111111111111) (= (mask!9739 thiss!1504) #b00000000001111111111111111111111) (= (mask!9739 thiss!1504) #b00000000011111111111111111111111) (= (mask!9739 thiss!1504) #b00000000111111111111111111111111) (= (mask!9739 thiss!1504) #b00000001111111111111111111111111) (= (mask!9739 thiss!1504) #b00000011111111111111111111111111) (= (mask!9739 thiss!1504) #b00000111111111111111111111111111) (= (mask!9739 thiss!1504) #b00001111111111111111111111111111) (= (mask!9739 thiss!1504) #b00011111111111111111111111111111) (= (mask!9739 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9739 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!215283 d!58345))

(declare-fun b!215345 () Bool)

(declare-fun e!140096 () Bool)

(assert (=> b!215345 (= e!140096 tp_is_empty!5577)))

(declare-fun mapIsEmpty!9510 () Bool)

(declare-fun mapRes!9510 () Bool)

(assert (=> mapIsEmpty!9510 mapRes!9510))

(declare-fun condMapEmpty!9510 () Bool)

(declare-fun mapDefault!9510 () ValueCell!2445)

(assert (=> mapNonEmpty!9504 (= condMapEmpty!9510 (= mapRest!9504 ((as const (Array (_ BitVec 32) ValueCell!2445)) mapDefault!9510)))))

(declare-fun e!140097 () Bool)

(assert (=> mapNonEmpty!9504 (= tp!20255 (and e!140097 mapRes!9510))))

(declare-fun mapNonEmpty!9510 () Bool)

(declare-fun tp!20265 () Bool)

(assert (=> mapNonEmpty!9510 (= mapRes!9510 (and tp!20265 e!140096))))

(declare-fun mapValue!9510 () ValueCell!2445)

(declare-fun mapKey!9510 () (_ BitVec 32))

(declare-fun mapRest!9510 () (Array (_ BitVec 32) ValueCell!2445))

(assert (=> mapNonEmpty!9510 (= mapRest!9504 (store mapRest!9510 mapKey!9510 mapValue!9510))))

(declare-fun b!215346 () Bool)

(assert (=> b!215346 (= e!140097 tp_is_empty!5577)))

(assert (= (and mapNonEmpty!9504 condMapEmpty!9510) mapIsEmpty!9510))

(assert (= (and mapNonEmpty!9504 (not condMapEmpty!9510)) mapNonEmpty!9510))

(assert (= (and mapNonEmpty!9510 ((_ is ValueCellFull!2445) mapValue!9510)) b!215345))

(assert (= (and mapNonEmpty!9504 ((_ is ValueCellFull!2445) mapDefault!9510)) b!215346))

(declare-fun m!242607 () Bool)

(assert (=> mapNonEmpty!9510 m!242607))

(check-sat (not mapNonEmpty!9510) (not b!215337) (not d!58339) tp_is_empty!5577 (not b!215327) b_and!12623 (not b_next!5715) (not b!215338) (not d!58337) (not b!215336))
(check-sat b_and!12623 (not b_next!5715))
(get-model)

(declare-fun b!215359 () Bool)

(declare-fun e!140106 () SeekEntryResult!740)

(assert (=> b!215359 (= e!140106 (MissingVacant!740 (index!5132 lt!110962)))))

(declare-fun b!215360 () Bool)

(declare-fun e!140105 () SeekEntryResult!740)

(assert (=> b!215360 (= e!140105 (Found!740 (index!5132 lt!110962)))))

(declare-fun b!215361 () Bool)

(declare-fun e!140104 () SeekEntryResult!740)

(assert (=> b!215361 (= e!140104 Undefined!740)))

(declare-fun d!58347 () Bool)

(declare-fun lt!110967 () SeekEntryResult!740)

(assert (=> d!58347 (and (or ((_ is Undefined!740) lt!110967) (not ((_ is Found!740) lt!110967)) (and (bvsge (index!5131 lt!110967) #b00000000000000000000000000000000) (bvslt (index!5131 lt!110967) (size!5247 (_keys!6075 thiss!1504))))) (or ((_ is Undefined!740) lt!110967) ((_ is Found!740) lt!110967) (not ((_ is MissingVacant!740) lt!110967)) (not (= (index!5133 lt!110967) (index!5132 lt!110962))) (and (bvsge (index!5133 lt!110967) #b00000000000000000000000000000000) (bvslt (index!5133 lt!110967) (size!5247 (_keys!6075 thiss!1504))))) (or ((_ is Undefined!740) lt!110967) (ite ((_ is Found!740) lt!110967) (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5131 lt!110967)) key!932) (and ((_ is MissingVacant!740) lt!110967) (= (index!5133 lt!110967) (index!5132 lt!110962)) (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5133 lt!110967)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!58347 (= lt!110967 e!140104)))

(declare-fun c!36160 () Bool)

(assert (=> d!58347 (= c!36160 (bvsge (x!22497 lt!110962) #b01111111111111111111111111111110))))

(declare-fun lt!110968 () (_ BitVec 64))

(assert (=> d!58347 (= lt!110968 (select (arr!4918 (_keys!6075 thiss!1504)) (index!5132 lt!110962)))))

(assert (=> d!58347 (validMask!0 (mask!9739 thiss!1504))))

(assert (=> d!58347 (= (seekKeyOrZeroReturnVacant!0 (x!22497 lt!110962) (index!5132 lt!110962) (index!5132 lt!110962) key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)) lt!110967)))

(declare-fun b!215362 () Bool)

(assert (=> b!215362 (= e!140104 e!140105)))

(declare-fun c!36159 () Bool)

(assert (=> b!215362 (= c!36159 (= lt!110968 key!932))))

(declare-fun b!215363 () Bool)

(declare-fun c!36158 () Bool)

(assert (=> b!215363 (= c!36158 (= lt!110968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!215363 (= e!140105 e!140106)))

(declare-fun b!215364 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!215364 (= e!140106 (seekKeyOrZeroReturnVacant!0 (bvadd (x!22497 lt!110962) #b00000000000000000000000000000001) (nextIndex!0 (index!5132 lt!110962) (x!22497 lt!110962) (mask!9739 thiss!1504)) (index!5132 lt!110962) key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(assert (= (and d!58347 c!36160) b!215361))

(assert (= (and d!58347 (not c!36160)) b!215362))

(assert (= (and b!215362 c!36159) b!215360))

(assert (= (and b!215362 (not c!36159)) b!215363))

(assert (= (and b!215363 c!36158) b!215359))

(assert (= (and b!215363 (not c!36158)) b!215364))

(declare-fun m!242609 () Bool)

(assert (=> d!58347 m!242609))

(declare-fun m!242611 () Bool)

(assert (=> d!58347 m!242611))

(assert (=> d!58347 m!242595))

(assert (=> d!58347 m!242563))

(declare-fun m!242613 () Bool)

(assert (=> b!215364 m!242613))

(assert (=> b!215364 m!242613))

(declare-fun m!242615 () Bool)

(assert (=> b!215364 m!242615))

(assert (=> b!215327 d!58347))

(declare-fun b!215374 () Bool)

(declare-fun res!105372 () Bool)

(declare-fun e!140109 () Bool)

(assert (=> b!215374 (=> (not res!105372) (not e!140109))))

(declare-fun size!5250 (LongMapFixedSize!2790) (_ BitVec 32))

(assert (=> b!215374 (= res!105372 (bvsge (size!5250 thiss!1504) (_size!1444 thiss!1504)))))

(declare-fun b!215375 () Bool)

(declare-fun res!105370 () Bool)

(assert (=> b!215375 (=> (not res!105370) (not e!140109))))

(assert (=> b!215375 (= res!105370 (= (size!5250 thiss!1504) (bvadd (_size!1444 thiss!1504) (bvsdiv (bvadd (extraKeys!3782 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!215376 () Bool)

(assert (=> b!215376 (= e!140109 (and (bvsge (extraKeys!3782 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3782 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1444 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215373 () Bool)

(declare-fun res!105369 () Bool)

(assert (=> b!215373 (=> (not res!105369) (not e!140109))))

(assert (=> b!215373 (= res!105369 (and (= (size!5246 (_values!4028 thiss!1504)) (bvadd (mask!9739 thiss!1504) #b00000000000000000000000000000001)) (= (size!5247 (_keys!6075 thiss!1504)) (size!5246 (_values!4028 thiss!1504))) (bvsge (_size!1444 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1444 thiss!1504) (bvadd (mask!9739 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!58349 () Bool)

(declare-fun res!105371 () Bool)

(assert (=> d!58349 (=> (not res!105371) (not e!140109))))

(assert (=> d!58349 (= res!105371 (validMask!0 (mask!9739 thiss!1504)))))

(assert (=> d!58349 (= (simpleValid!216 thiss!1504) e!140109)))

(assert (= (and d!58349 res!105371) b!215373))

(assert (= (and b!215373 res!105369) b!215374))

(assert (= (and b!215374 res!105372) b!215375))

(assert (= (and b!215375 res!105370) b!215376))

(declare-fun m!242617 () Bool)

(assert (=> b!215374 m!242617))

(assert (=> b!215375 m!242617))

(assert (=> d!58349 m!242563))

(assert (=> d!58339 d!58349))

(declare-fun b!215395 () Bool)

(declare-fun e!140120 () SeekEntryResult!740)

(assert (=> b!215395 (= e!140120 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!9739 thiss!1504)) #b00000000000000000000000000000000 (mask!9739 thiss!1504)) key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(declare-fun b!215396 () Bool)

(declare-fun e!140124 () SeekEntryResult!740)

(assert (=> b!215396 (= e!140124 (Intermediate!740 true (toIndex!0 key!932 (mask!9739 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!215397 () Bool)

(declare-fun e!140123 () Bool)

(declare-fun lt!110974 () SeekEntryResult!740)

(assert (=> b!215397 (= e!140123 (bvsge (x!22497 lt!110974) #b01111111111111111111111111111110))))

(declare-fun b!215398 () Bool)

(assert (=> b!215398 (and (bvsge (index!5132 lt!110974) #b00000000000000000000000000000000) (bvslt (index!5132 lt!110974) (size!5247 (_keys!6075 thiss!1504))))))

(declare-fun res!105381 () Bool)

(assert (=> b!215398 (= res!105381 (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5132 lt!110974)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140121 () Bool)

(assert (=> b!215398 (=> res!105381 e!140121)))

(declare-fun d!58351 () Bool)

(assert (=> d!58351 e!140123))

(declare-fun c!36169 () Bool)

(assert (=> d!58351 (= c!36169 (and ((_ is Intermediate!740) lt!110974) (undefined!1552 lt!110974)))))

(assert (=> d!58351 (= lt!110974 e!140124)))

(declare-fun c!36167 () Bool)

(assert (=> d!58351 (= c!36167 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!110973 () (_ BitVec 64))

(assert (=> d!58351 (= lt!110973 (select (arr!4918 (_keys!6075 thiss!1504)) (toIndex!0 key!932 (mask!9739 thiss!1504))))))

(assert (=> d!58351 (validMask!0 (mask!9739 thiss!1504))))

(assert (=> d!58351 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9739 thiss!1504)) key!932 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)) lt!110974)))

(declare-fun b!215399 () Bool)

(assert (=> b!215399 (= e!140124 e!140120)))

(declare-fun c!36168 () Bool)

(assert (=> b!215399 (= c!36168 (or (= lt!110973 key!932) (= (bvadd lt!110973 lt!110973) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!215400 () Bool)

(assert (=> b!215400 (and (bvsge (index!5132 lt!110974) #b00000000000000000000000000000000) (bvslt (index!5132 lt!110974) (size!5247 (_keys!6075 thiss!1504))))))

(assert (=> b!215400 (= e!140121 (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5132 lt!110974)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!215401 () Bool)

(declare-fun e!140122 () Bool)

(assert (=> b!215401 (= e!140123 e!140122)))

(declare-fun res!105379 () Bool)

(assert (=> b!215401 (= res!105379 (and ((_ is Intermediate!740) lt!110974) (not (undefined!1552 lt!110974)) (bvslt (x!22497 lt!110974) #b01111111111111111111111111111110) (bvsge (x!22497 lt!110974) #b00000000000000000000000000000000) (bvsge (x!22497 lt!110974) #b00000000000000000000000000000000)))))

(assert (=> b!215401 (=> (not res!105379) (not e!140122))))

(declare-fun b!215402 () Bool)

(assert (=> b!215402 (and (bvsge (index!5132 lt!110974) #b00000000000000000000000000000000) (bvslt (index!5132 lt!110974) (size!5247 (_keys!6075 thiss!1504))))))

(declare-fun res!105380 () Bool)

(assert (=> b!215402 (= res!105380 (= (select (arr!4918 (_keys!6075 thiss!1504)) (index!5132 lt!110974)) key!932))))

(assert (=> b!215402 (=> res!105380 e!140121)))

(assert (=> b!215402 (= e!140122 e!140121)))

(declare-fun b!215403 () Bool)

(assert (=> b!215403 (= e!140120 (Intermediate!740 false (toIndex!0 key!932 (mask!9739 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!58351 c!36167) b!215396))

(assert (= (and d!58351 (not c!36167)) b!215399))

(assert (= (and b!215399 c!36168) b!215403))

(assert (= (and b!215399 (not c!36168)) b!215395))

(assert (= (and d!58351 c!36169) b!215397))

(assert (= (and d!58351 (not c!36169)) b!215401))

(assert (= (and b!215401 res!105379) b!215402))

(assert (= (and b!215402 (not res!105380)) b!215398))

(assert (= (and b!215398 (not res!105381)) b!215400))

(assert (=> d!58351 m!242585))

(declare-fun m!242619 () Bool)

(assert (=> d!58351 m!242619))

(assert (=> d!58351 m!242563))

(declare-fun m!242621 () Bool)

(assert (=> b!215402 m!242621))

(assert (=> b!215400 m!242621))

(assert (=> b!215395 m!242585))

(declare-fun m!242623 () Bool)

(assert (=> b!215395 m!242623))

(assert (=> b!215395 m!242623))

(declare-fun m!242625 () Bool)

(assert (=> b!215395 m!242625))

(assert (=> b!215398 m!242621))

(assert (=> d!58337 d!58351))

(declare-fun d!58353 () Bool)

(declare-fun lt!110980 () (_ BitVec 32))

(declare-fun lt!110979 () (_ BitVec 32))

(assert (=> d!58353 (= lt!110980 (bvmul (bvxor lt!110979 (bvlshr lt!110979 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58353 (= lt!110979 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58353 (and (bvsge (mask!9739 thiss!1504) #b00000000000000000000000000000000) (let ((res!105382 (let ((h!3797 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!22514 (bvmul (bvxor h!3797 (bvlshr h!3797 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!22514 (bvlshr x!22514 #b00000000000000000000000000001101)) (mask!9739 thiss!1504)))))) (and (bvslt res!105382 (bvadd (mask!9739 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!105382 #b00000000000000000000000000000000))))))

(assert (=> d!58353 (= (toIndex!0 key!932 (mask!9739 thiss!1504)) (bvand (bvxor lt!110980 (bvlshr lt!110980 #b00000000000000000000000000001101)) (mask!9739 thiss!1504)))))

(assert (=> d!58337 d!58353))

(assert (=> d!58337 d!58345))

(declare-fun bm!20338 () Bool)

(declare-fun call!20341 () Bool)

(assert (=> bm!20338 (= call!20341 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6075 thiss!1504) (mask!9739 thiss!1504)))))

(declare-fun b!215412 () Bool)

(declare-fun e!140132 () Bool)

(assert (=> b!215412 (= e!140132 call!20341)))

(declare-fun b!215413 () Bool)

(declare-fun e!140131 () Bool)

(assert (=> b!215413 (= e!140131 e!140132)))

(declare-fun c!36172 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!215413 (= c!36172 (validKeyInArray!0 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215414 () Bool)

(declare-fun e!140133 () Bool)

(assert (=> b!215414 (= e!140133 call!20341)))

(declare-fun d!58355 () Bool)

(declare-fun res!105387 () Bool)

(assert (=> d!58355 (=> res!105387 e!140131)))

(assert (=> d!58355 (= res!105387 (bvsge #b00000000000000000000000000000000 (size!5247 (_keys!6075 thiss!1504))))))

(assert (=> d!58355 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6075 thiss!1504) (mask!9739 thiss!1504)) e!140131)))

(declare-fun b!215415 () Bool)

(assert (=> b!215415 (= e!140132 e!140133)))

(declare-fun lt!110987 () (_ BitVec 64))

(assert (=> b!215415 (= lt!110987 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6493 0))(
  ( (Unit!6494) )
))
(declare-fun lt!110989 () Unit!6493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10380 (_ BitVec 64) (_ BitVec 32)) Unit!6493)

(assert (=> b!215415 (= lt!110989 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6075 thiss!1504) lt!110987 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!215415 (arrayContainsKey!0 (_keys!6075 thiss!1504) lt!110987 #b00000000000000000000000000000000)))

(declare-fun lt!110988 () Unit!6493)

(assert (=> b!215415 (= lt!110988 lt!110989)))

(declare-fun res!105388 () Bool)

(assert (=> b!215415 (= res!105388 (= (seekEntryOrOpen!0 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000) (_keys!6075 thiss!1504) (mask!9739 thiss!1504)) (Found!740 #b00000000000000000000000000000000)))))

(assert (=> b!215415 (=> (not res!105388) (not e!140133))))

(assert (= (and d!58355 (not res!105387)) b!215413))

(assert (= (and b!215413 c!36172) b!215415))

(assert (= (and b!215413 (not c!36172)) b!215412))

(assert (= (and b!215415 res!105388) b!215414))

(assert (= (or b!215414 b!215412) bm!20338))

(declare-fun m!242627 () Bool)

(assert (=> bm!20338 m!242627))

(declare-fun m!242629 () Bool)

(assert (=> b!215413 m!242629))

(assert (=> b!215413 m!242629))

(declare-fun m!242631 () Bool)

(assert (=> b!215413 m!242631))

(assert (=> b!215415 m!242629))

(declare-fun m!242633 () Bool)

(assert (=> b!215415 m!242633))

(declare-fun m!242635 () Bool)

(assert (=> b!215415 m!242635))

(assert (=> b!215415 m!242629))

(declare-fun m!242637 () Bool)

(assert (=> b!215415 m!242637))

(assert (=> b!215337 d!58355))

(declare-fun b!215424 () Bool)

(declare-fun e!140138 () (_ BitVec 32))

(declare-fun call!20344 () (_ BitVec 32))

(assert (=> b!215424 (= e!140138 (bvadd #b00000000000000000000000000000001 call!20344))))

(declare-fun b!215425 () Bool)

(declare-fun e!140139 () (_ BitVec 32))

(assert (=> b!215425 (= e!140139 #b00000000000000000000000000000000)))

(declare-fun bm!20341 () Bool)

(assert (=> bm!20341 (= call!20344 (arrayCountValidKeys!0 (_keys!6075 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5247 (_keys!6075 thiss!1504))))))

(declare-fun d!58357 () Bool)

(declare-fun lt!110992 () (_ BitVec 32))

(assert (=> d!58357 (and (bvsge lt!110992 #b00000000000000000000000000000000) (bvsle lt!110992 (bvsub (size!5247 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58357 (= lt!110992 e!140139)))

(declare-fun c!36177 () Bool)

(assert (=> d!58357 (= c!36177 (bvsge #b00000000000000000000000000000000 (size!5247 (_keys!6075 thiss!1504))))))

(assert (=> d!58357 (and (bvsle #b00000000000000000000000000000000 (size!5247 (_keys!6075 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5247 (_keys!6075 thiss!1504)) (size!5247 (_keys!6075 thiss!1504))))))

(assert (=> d!58357 (= (arrayCountValidKeys!0 (_keys!6075 thiss!1504) #b00000000000000000000000000000000 (size!5247 (_keys!6075 thiss!1504))) lt!110992)))

(declare-fun b!215426 () Bool)

(assert (=> b!215426 (= e!140139 e!140138)))

(declare-fun c!36178 () Bool)

(assert (=> b!215426 (= c!36178 (validKeyInArray!0 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215427 () Bool)

(assert (=> b!215427 (= e!140138 call!20344)))

(assert (= (and d!58357 c!36177) b!215425))

(assert (= (and d!58357 (not c!36177)) b!215426))

(assert (= (and b!215426 c!36178) b!215424))

(assert (= (and b!215426 (not c!36178)) b!215427))

(assert (= (or b!215424 b!215427) bm!20341))

(declare-fun m!242639 () Bool)

(assert (=> bm!20341 m!242639))

(assert (=> b!215426 m!242629))

(assert (=> b!215426 m!242629))

(assert (=> b!215426 m!242631))

(assert (=> b!215336 d!58357))

(declare-fun d!58359 () Bool)

(declare-fun res!105396 () Bool)

(declare-fun e!140148 () Bool)

(assert (=> d!58359 (=> res!105396 e!140148)))

(assert (=> d!58359 (= res!105396 (bvsge #b00000000000000000000000000000000 (size!5247 (_keys!6075 thiss!1504))))))

(assert (=> d!58359 (= (arrayNoDuplicates!0 (_keys!6075 thiss!1504) #b00000000000000000000000000000000 Nil!3153) e!140148)))

(declare-fun bm!20344 () Bool)

(declare-fun call!20347 () Bool)

(declare-fun c!36181 () Bool)

(assert (=> bm!20344 (= call!20347 (arrayNoDuplicates!0 (_keys!6075 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36181 (Cons!3152 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000) Nil!3153) Nil!3153)))))

(declare-fun b!215438 () Bool)

(declare-fun e!140151 () Bool)

(assert (=> b!215438 (= e!140151 call!20347)))

(declare-fun b!215439 () Bool)

(declare-fun e!140150 () Bool)

(assert (=> b!215439 (= e!140150 e!140151)))

(assert (=> b!215439 (= c!36181 (validKeyInArray!0 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215440 () Bool)

(assert (=> b!215440 (= e!140148 e!140150)))

(declare-fun res!105395 () Bool)

(assert (=> b!215440 (=> (not res!105395) (not e!140150))))

(declare-fun e!140149 () Bool)

(assert (=> b!215440 (= res!105395 (not e!140149))))

(declare-fun res!105397 () Bool)

(assert (=> b!215440 (=> (not res!105397) (not e!140149))))

(assert (=> b!215440 (= res!105397 (validKeyInArray!0 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215441 () Bool)

(declare-fun contains!1428 (List!3156 (_ BitVec 64)) Bool)

(assert (=> b!215441 (= e!140149 (contains!1428 Nil!3153 (select (arr!4918 (_keys!6075 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!215442 () Bool)

(assert (=> b!215442 (= e!140151 call!20347)))

(assert (= (and d!58359 (not res!105396)) b!215440))

(assert (= (and b!215440 res!105397) b!215441))

(assert (= (and b!215440 res!105395) b!215439))

(assert (= (and b!215439 c!36181) b!215442))

(assert (= (and b!215439 (not c!36181)) b!215438))

(assert (= (or b!215442 b!215438) bm!20344))

(assert (=> bm!20344 m!242629))

(declare-fun m!242641 () Bool)

(assert (=> bm!20344 m!242641))

(assert (=> b!215439 m!242629))

(assert (=> b!215439 m!242629))

(assert (=> b!215439 m!242631))

(assert (=> b!215440 m!242629))

(assert (=> b!215440 m!242629))

(assert (=> b!215440 m!242631))

(assert (=> b!215441 m!242629))

(assert (=> b!215441 m!242629))

(declare-fun m!242643 () Bool)

(assert (=> b!215441 m!242643))

(assert (=> b!215338 d!58359))

(declare-fun b!215443 () Bool)

(declare-fun e!140152 () Bool)

(assert (=> b!215443 (= e!140152 tp_is_empty!5577)))

(declare-fun mapIsEmpty!9511 () Bool)

(declare-fun mapRes!9511 () Bool)

(assert (=> mapIsEmpty!9511 mapRes!9511))

(declare-fun condMapEmpty!9511 () Bool)

(declare-fun mapDefault!9511 () ValueCell!2445)

(assert (=> mapNonEmpty!9510 (= condMapEmpty!9511 (= mapRest!9510 ((as const (Array (_ BitVec 32) ValueCell!2445)) mapDefault!9511)))))

(declare-fun e!140153 () Bool)

(assert (=> mapNonEmpty!9510 (= tp!20265 (and e!140153 mapRes!9511))))

(declare-fun mapNonEmpty!9511 () Bool)

(declare-fun tp!20266 () Bool)

(assert (=> mapNonEmpty!9511 (= mapRes!9511 (and tp!20266 e!140152))))

(declare-fun mapRest!9511 () (Array (_ BitVec 32) ValueCell!2445))

(declare-fun mapValue!9511 () ValueCell!2445)

(declare-fun mapKey!9511 () (_ BitVec 32))

(assert (=> mapNonEmpty!9511 (= mapRest!9510 (store mapRest!9511 mapKey!9511 mapValue!9511))))

(declare-fun b!215444 () Bool)

(assert (=> b!215444 (= e!140153 tp_is_empty!5577)))

(assert (= (and mapNonEmpty!9510 condMapEmpty!9511) mapIsEmpty!9511))

(assert (= (and mapNonEmpty!9510 (not condMapEmpty!9511)) mapNonEmpty!9511))

(assert (= (and mapNonEmpty!9511 ((_ is ValueCellFull!2445) mapValue!9511)) b!215443))

(assert (= (and mapNonEmpty!9510 ((_ is ValueCellFull!2445) mapDefault!9511)) b!215444))

(declare-fun m!242645 () Bool)

(assert (=> mapNonEmpty!9511 m!242645))

(check-sat tp_is_empty!5577 (not b!215441) (not d!58349) (not d!58351) (not b!215415) (not bm!20338) (not b!215440) (not b!215395) b_and!12623 (not b_next!5715) (not b!215375) (not b!215364) (not b!215426) (not d!58347) (not b!215374) (not bm!20341) (not b!215439) (not bm!20344) (not mapNonEmpty!9511) (not b!215413))
(check-sat b_and!12623 (not b_next!5715))

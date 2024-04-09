; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22654 () Bool)

(assert start!22654)

(declare-fun b!236479 () Bool)

(declare-fun b_free!6363 () Bool)

(declare-fun b_next!6363 () Bool)

(assert (=> b!236479 (= b_free!6363 (not b_next!6363))))

(declare-fun tp!22268 () Bool)

(declare-fun b_and!13321 () Bool)

(assert (=> b!236479 (= tp!22268 b_and!13321)))

(declare-fun res!115970 () Bool)

(declare-fun e!153588 () Bool)

(assert (=> start!22654 (=> (not res!115970) (not e!153588))))

(declare-datatypes ((V!7947 0))(
  ( (V!7948 (val!3157 Int)) )
))
(declare-datatypes ((ValueCell!2769 0))(
  ( (ValueCellFull!2769 (v!5184 V!7947)) (EmptyCell!2769) )
))
(declare-datatypes ((array!11714 0))(
  ( (array!11715 (arr!5565 (Array (_ BitVec 32) ValueCell!2769)) (size!5903 (_ BitVec 32))) )
))
(declare-datatypes ((array!11716 0))(
  ( (array!11717 (arr!5566 (Array (_ BitVec 32) (_ BitVec 64))) (size!5904 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3438 0))(
  ( (LongMapFixedSize!3439 (defaultEntry!4394 Int) (mask!10387 (_ BitVec 32)) (extraKeys!4131 (_ BitVec 32)) (zeroValue!4235 V!7947) (minValue!4235 V!7947) (_size!1768 (_ BitVec 32)) (_keys!6477 array!11716) (_values!4377 array!11714) (_vacant!1768 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3438)

(declare-fun valid!1348 (LongMapFixedSize!3438) Bool)

(assert (=> start!22654 (= res!115970 (valid!1348 thiss!1504))))

(assert (=> start!22654 e!153588))

(declare-fun e!153590 () Bool)

(assert (=> start!22654 e!153590))

(assert (=> start!22654 true))

(declare-fun b!236473 () Bool)

(declare-fun res!115967 () Bool)

(assert (=> b!236473 (=> (not res!115967) (not e!153588))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!236473 (= res!115967 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!236474 () Bool)

(declare-fun e!153589 () Bool)

(declare-fun tp_is_empty!6225 () Bool)

(assert (=> b!236474 (= e!153589 tp_is_empty!6225)))

(declare-fun b!236475 () Bool)

(declare-fun e!153591 () Bool)

(assert (=> b!236475 (= e!153591 tp_is_empty!6225)))

(declare-fun mapNonEmpty!10545 () Bool)

(declare-fun mapRes!10545 () Bool)

(declare-fun tp!22269 () Bool)

(assert (=> mapNonEmpty!10545 (= mapRes!10545 (and tp!22269 e!153589))))

(declare-fun mapValue!10545 () ValueCell!2769)

(declare-fun mapRest!10545 () (Array (_ BitVec 32) ValueCell!2769))

(declare-fun mapKey!10545 () (_ BitVec 32))

(assert (=> mapNonEmpty!10545 (= (arr!5565 (_values!4377 thiss!1504)) (store mapRest!10545 mapKey!10545 mapValue!10545))))

(declare-fun mapIsEmpty!10545 () Bool)

(assert (=> mapIsEmpty!10545 mapRes!10545))

(declare-fun b!236476 () Bool)

(declare-fun e!153592 () Bool)

(assert (=> b!236476 (= e!153588 e!153592)))

(declare-fun res!115969 () Bool)

(assert (=> b!236476 (=> (not res!115969) (not e!153592))))

(declare-datatypes ((SeekEntryResult!1012 0))(
  ( (MissingZero!1012 (index!6218 (_ BitVec 32))) (Found!1012 (index!6219 (_ BitVec 32))) (Intermediate!1012 (undefined!1824 Bool) (index!6220 (_ BitVec 32)) (x!23894 (_ BitVec 32))) (Undefined!1012) (MissingVacant!1012 (index!6221 (_ BitVec 32))) )
))
(declare-fun lt!119602 () SeekEntryResult!1012)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236476 (= res!115969 (or (= lt!119602 (MissingZero!1012 index!297)) (= lt!119602 (MissingVacant!1012 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11716 (_ BitVec 32)) SeekEntryResult!1012)

(assert (=> b!236476 (= lt!119602 (seekEntryOrOpen!0 key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(declare-fun b!236477 () Bool)

(assert (=> b!236477 (= e!153592 (and (= (size!5903 (_values!4377 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10387 thiss!1504))) (not (= (size!5904 (_keys!6477 thiss!1504)) (size!5903 (_values!4377 thiss!1504))))))))

(declare-fun b!236478 () Bool)

(declare-fun res!115968 () Bool)

(assert (=> b!236478 (=> (not res!115968) (not e!153592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236478 (= res!115968 (validMask!0 (mask!10387 thiss!1504)))))

(declare-fun e!153587 () Bool)

(declare-fun array_inv!3661 (array!11716) Bool)

(declare-fun array_inv!3662 (array!11714) Bool)

(assert (=> b!236479 (= e!153590 (and tp!22268 tp_is_empty!6225 (array_inv!3661 (_keys!6477 thiss!1504)) (array_inv!3662 (_values!4377 thiss!1504)) e!153587))))

(declare-fun b!236480 () Bool)

(declare-fun res!115966 () Bool)

(assert (=> b!236480 (=> (not res!115966) (not e!153592))))

(declare-datatypes ((tuple2!4650 0))(
  ( (tuple2!4651 (_1!2335 (_ BitVec 64)) (_2!2335 V!7947)) )
))
(declare-datatypes ((List!3577 0))(
  ( (Nil!3574) (Cons!3573 (h!4226 tuple2!4650) (t!8566 List!3577)) )
))
(declare-datatypes ((ListLongMap!3577 0))(
  ( (ListLongMap!3578 (toList!1804 List!3577)) )
))
(declare-fun contains!1678 (ListLongMap!3577 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1327 (array!11716 array!11714 (_ BitVec 32) (_ BitVec 32) V!7947 V!7947 (_ BitVec 32) Int) ListLongMap!3577)

(assert (=> b!236480 (= res!115966 (not (contains!1678 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)) key!932)))))

(declare-fun b!236481 () Bool)

(assert (=> b!236481 (= e!153587 (and e!153591 mapRes!10545))))

(declare-fun condMapEmpty!10545 () Bool)

(declare-fun mapDefault!10545 () ValueCell!2769)

(assert (=> b!236481 (= condMapEmpty!10545 (= (arr!5565 (_values!4377 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2769)) mapDefault!10545)))))

(assert (= (and start!22654 res!115970) b!236473))

(assert (= (and b!236473 res!115967) b!236476))

(assert (= (and b!236476 res!115969) b!236480))

(assert (= (and b!236480 res!115966) b!236478))

(assert (= (and b!236478 res!115968) b!236477))

(assert (= (and b!236481 condMapEmpty!10545) mapIsEmpty!10545))

(assert (= (and b!236481 (not condMapEmpty!10545)) mapNonEmpty!10545))

(get-info :version)

(assert (= (and mapNonEmpty!10545 ((_ is ValueCellFull!2769) mapValue!10545)) b!236474))

(assert (= (and b!236481 ((_ is ValueCellFull!2769) mapDefault!10545)) b!236475))

(assert (= b!236479 b!236481))

(assert (= start!22654 b!236479))

(declare-fun m!257365 () Bool)

(assert (=> mapNonEmpty!10545 m!257365))

(declare-fun m!257367 () Bool)

(assert (=> b!236479 m!257367))

(declare-fun m!257369 () Bool)

(assert (=> b!236479 m!257369))

(declare-fun m!257371 () Bool)

(assert (=> b!236476 m!257371))

(declare-fun m!257373 () Bool)

(assert (=> start!22654 m!257373))

(declare-fun m!257375 () Bool)

(assert (=> b!236478 m!257375))

(declare-fun m!257377 () Bool)

(assert (=> b!236480 m!257377))

(assert (=> b!236480 m!257377))

(declare-fun m!257379 () Bool)

(assert (=> b!236480 m!257379))

(check-sat (not b!236479) (not b!236480) (not b_next!6363) (not b!236476) b_and!13321 (not mapNonEmpty!10545) tp_is_empty!6225 (not b!236478) (not start!22654))
(check-sat b_and!13321 (not b_next!6363))
(get-model)

(declare-fun lt!119612 () SeekEntryResult!1012)

(declare-fun b!236521 () Bool)

(declare-fun e!153623 () SeekEntryResult!1012)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11716 (_ BitVec 32)) SeekEntryResult!1012)

(assert (=> b!236521 (= e!153623 (seekKeyOrZeroReturnVacant!0 (x!23894 lt!119612) (index!6220 lt!119612) (index!6220 lt!119612) key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(declare-fun b!236522 () Bool)

(declare-fun e!153622 () SeekEntryResult!1012)

(declare-fun e!153621 () SeekEntryResult!1012)

(assert (=> b!236522 (= e!153622 e!153621)))

(declare-fun lt!119614 () (_ BitVec 64))

(assert (=> b!236522 (= lt!119614 (select (arr!5566 (_keys!6477 thiss!1504)) (index!6220 lt!119612)))))

(declare-fun c!39383 () Bool)

(assert (=> b!236522 (= c!39383 (= lt!119614 key!932))))

(declare-fun d!59341 () Bool)

(declare-fun lt!119613 () SeekEntryResult!1012)

(assert (=> d!59341 (and (or ((_ is Undefined!1012) lt!119613) (not ((_ is Found!1012) lt!119613)) (and (bvsge (index!6219 lt!119613) #b00000000000000000000000000000000) (bvslt (index!6219 lt!119613) (size!5904 (_keys!6477 thiss!1504))))) (or ((_ is Undefined!1012) lt!119613) ((_ is Found!1012) lt!119613) (not ((_ is MissingZero!1012) lt!119613)) (and (bvsge (index!6218 lt!119613) #b00000000000000000000000000000000) (bvslt (index!6218 lt!119613) (size!5904 (_keys!6477 thiss!1504))))) (or ((_ is Undefined!1012) lt!119613) ((_ is Found!1012) lt!119613) ((_ is MissingZero!1012) lt!119613) (not ((_ is MissingVacant!1012) lt!119613)) (and (bvsge (index!6221 lt!119613) #b00000000000000000000000000000000) (bvslt (index!6221 lt!119613) (size!5904 (_keys!6477 thiss!1504))))) (or ((_ is Undefined!1012) lt!119613) (ite ((_ is Found!1012) lt!119613) (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6219 lt!119613)) key!932) (ite ((_ is MissingZero!1012) lt!119613) (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6218 lt!119613)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1012) lt!119613) (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6221 lt!119613)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59341 (= lt!119613 e!153622)))

(declare-fun c!39384 () Bool)

(assert (=> d!59341 (= c!39384 (and ((_ is Intermediate!1012) lt!119612) (undefined!1824 lt!119612)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11716 (_ BitVec 32)) SeekEntryResult!1012)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59341 (= lt!119612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10387 thiss!1504)) key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(assert (=> d!59341 (validMask!0 (mask!10387 thiss!1504))))

(assert (=> d!59341 (= (seekEntryOrOpen!0 key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)) lt!119613)))

(declare-fun b!236523 () Bool)

(assert (=> b!236523 (= e!153621 (Found!1012 (index!6220 lt!119612)))))

(declare-fun b!236524 () Bool)

(assert (=> b!236524 (= e!153623 (MissingZero!1012 (index!6220 lt!119612)))))

(declare-fun b!236525 () Bool)

(declare-fun c!39385 () Bool)

(assert (=> b!236525 (= c!39385 (= lt!119614 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236525 (= e!153621 e!153623)))

(declare-fun b!236526 () Bool)

(assert (=> b!236526 (= e!153622 Undefined!1012)))

(assert (= (and d!59341 c!39384) b!236526))

(assert (= (and d!59341 (not c!39384)) b!236522))

(assert (= (and b!236522 c!39383) b!236523))

(assert (= (and b!236522 (not c!39383)) b!236525))

(assert (= (and b!236525 c!39385) b!236524))

(assert (= (and b!236525 (not c!39385)) b!236521))

(declare-fun m!257397 () Bool)

(assert (=> b!236521 m!257397))

(declare-fun m!257399 () Bool)

(assert (=> b!236522 m!257399))

(declare-fun m!257401 () Bool)

(assert (=> d!59341 m!257401))

(declare-fun m!257403 () Bool)

(assert (=> d!59341 m!257403))

(declare-fun m!257405 () Bool)

(assert (=> d!59341 m!257405))

(declare-fun m!257407 () Bool)

(assert (=> d!59341 m!257407))

(declare-fun m!257409 () Bool)

(assert (=> d!59341 m!257409))

(assert (=> d!59341 m!257375))

(assert (=> d!59341 m!257407))

(assert (=> b!236476 d!59341))

(declare-fun d!59343 () Bool)

(assert (=> d!59343 (= (array_inv!3661 (_keys!6477 thiss!1504)) (bvsge (size!5904 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236479 d!59343))

(declare-fun d!59345 () Bool)

(assert (=> d!59345 (= (array_inv!3662 (_values!4377 thiss!1504)) (bvsge (size!5903 (_values!4377 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236479 d!59345))

(declare-fun d!59347 () Bool)

(declare-fun res!115992 () Bool)

(declare-fun e!153626 () Bool)

(assert (=> d!59347 (=> (not res!115992) (not e!153626))))

(declare-fun simpleValid!236 (LongMapFixedSize!3438) Bool)

(assert (=> d!59347 (= res!115992 (simpleValid!236 thiss!1504))))

(assert (=> d!59347 (= (valid!1348 thiss!1504) e!153626)))

(declare-fun b!236533 () Bool)

(declare-fun res!115993 () Bool)

(assert (=> b!236533 (=> (not res!115993) (not e!153626))))

(declare-fun arrayCountValidKeys!0 (array!11716 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!236533 (= res!115993 (= (arrayCountValidKeys!0 (_keys!6477 thiss!1504) #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))) (_size!1768 thiss!1504)))))

(declare-fun b!236534 () Bool)

(declare-fun res!115994 () Bool)

(assert (=> b!236534 (=> (not res!115994) (not e!153626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11716 (_ BitVec 32)) Bool)

(assert (=> b!236534 (= res!115994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(declare-fun b!236535 () Bool)

(declare-datatypes ((List!3578 0))(
  ( (Nil!3575) (Cons!3574 (h!4227 (_ BitVec 64)) (t!8569 List!3578)) )
))
(declare-fun arrayNoDuplicates!0 (array!11716 (_ BitVec 32) List!3578) Bool)

(assert (=> b!236535 (= e!153626 (arrayNoDuplicates!0 (_keys!6477 thiss!1504) #b00000000000000000000000000000000 Nil!3575))))

(assert (= (and d!59347 res!115992) b!236533))

(assert (= (and b!236533 res!115993) b!236534))

(assert (= (and b!236534 res!115994) b!236535))

(declare-fun m!257411 () Bool)

(assert (=> d!59347 m!257411))

(declare-fun m!257413 () Bool)

(assert (=> b!236533 m!257413))

(declare-fun m!257415 () Bool)

(assert (=> b!236534 m!257415))

(declare-fun m!257417 () Bool)

(assert (=> b!236535 m!257417))

(assert (=> start!22654 d!59347))

(declare-fun d!59349 () Bool)

(declare-fun e!153631 () Bool)

(assert (=> d!59349 e!153631))

(declare-fun res!115997 () Bool)

(assert (=> d!59349 (=> res!115997 e!153631)))

(declare-fun lt!119625 () Bool)

(assert (=> d!59349 (= res!115997 (not lt!119625))))

(declare-fun lt!119624 () Bool)

(assert (=> d!59349 (= lt!119625 lt!119624)))

(declare-datatypes ((Unit!7277 0))(
  ( (Unit!7278) )
))
(declare-fun lt!119626 () Unit!7277)

(declare-fun e!153632 () Unit!7277)

(assert (=> d!59349 (= lt!119626 e!153632)))

(declare-fun c!39388 () Bool)

(assert (=> d!59349 (= c!39388 lt!119624)))

(declare-fun containsKey!263 (List!3577 (_ BitVec 64)) Bool)

(assert (=> d!59349 (= lt!119624 (containsKey!263 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))

(assert (=> d!59349 (= (contains!1678 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)) key!932) lt!119625)))

(declare-fun b!236542 () Bool)

(declare-fun lt!119623 () Unit!7277)

(assert (=> b!236542 (= e!153632 lt!119623)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!212 (List!3577 (_ BitVec 64)) Unit!7277)

(assert (=> b!236542 (= lt!119623 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))

(declare-datatypes ((Option!277 0))(
  ( (Some!276 (v!5186 V!7947)) (None!275) )
))
(declare-fun isDefined!213 (Option!277) Bool)

(declare-fun getValueByKey!271 (List!3577 (_ BitVec 64)) Option!277)

(assert (=> b!236542 (isDefined!213 (getValueByKey!271 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))

(declare-fun b!236543 () Bool)

(declare-fun Unit!7279 () Unit!7277)

(assert (=> b!236543 (= e!153632 Unit!7279)))

(declare-fun b!236544 () Bool)

(assert (=> b!236544 (= e!153631 (isDefined!213 (getValueByKey!271 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932)))))

(assert (= (and d!59349 c!39388) b!236542))

(assert (= (and d!59349 (not c!39388)) b!236543))

(assert (= (and d!59349 (not res!115997)) b!236544))

(declare-fun m!257419 () Bool)

(assert (=> d!59349 m!257419))

(declare-fun m!257421 () Bool)

(assert (=> b!236542 m!257421))

(declare-fun m!257423 () Bool)

(assert (=> b!236542 m!257423))

(assert (=> b!236542 m!257423))

(declare-fun m!257425 () Bool)

(assert (=> b!236542 m!257425))

(assert (=> b!236544 m!257423))

(assert (=> b!236544 m!257423))

(assert (=> b!236544 m!257425))

(assert (=> b!236480 d!59349))

(declare-fun b!236587 () Bool)

(declare-fun e!153665 () Bool)

(declare-fun lt!119684 () ListLongMap!3577)

(declare-fun apply!214 (ListLongMap!3577 (_ BitVec 64)) V!7947)

(declare-fun get!2863 (ValueCell!2769 V!7947) V!7947)

(declare-fun dynLambda!552 (Int (_ BitVec 64)) V!7947)

(assert (=> b!236587 (= e!153665 (= (apply!214 lt!119684 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)) (get!2863 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!236587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5903 (_values!4377 thiss!1504))))))

(assert (=> b!236587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun d!59351 () Bool)

(declare-fun e!153667 () Bool)

(assert (=> d!59351 e!153667))

(declare-fun res!116017 () Bool)

(assert (=> d!59351 (=> (not res!116017) (not e!153667))))

(assert (=> d!59351 (= res!116017 (or (bvsge #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))))

(declare-fun lt!119683 () ListLongMap!3577)

(assert (=> d!59351 (= lt!119684 lt!119683)))

(declare-fun lt!119675 () Unit!7277)

(declare-fun e!153660 () Unit!7277)

(assert (=> d!59351 (= lt!119675 e!153660)))

(declare-fun c!39402 () Bool)

(declare-fun e!153663 () Bool)

(assert (=> d!59351 (= c!39402 e!153663)))

(declare-fun res!116022 () Bool)

(assert (=> d!59351 (=> (not res!116022) (not e!153663))))

(assert (=> d!59351 (= res!116022 (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun e!153669 () ListLongMap!3577)

(assert (=> d!59351 (= lt!119683 e!153669)))

(declare-fun c!39405 () Bool)

(assert (=> d!59351 (= c!39405 (and (not (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59351 (validMask!0 (mask!10387 thiss!1504))))

(assert (=> d!59351 (= (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)) lt!119684)))

(declare-fun b!236588 () Bool)

(declare-fun e!153664 () ListLongMap!3577)

(declare-fun call!22003 () ListLongMap!3577)

(assert (=> b!236588 (= e!153664 call!22003)))

(declare-fun bm!21994 () Bool)

(declare-fun call!22002 () Bool)

(assert (=> bm!21994 (= call!22002 (contains!1678 lt!119684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21995 () Bool)

(declare-fun call!21999 () ListLongMap!3577)

(declare-fun call!21997 () ListLongMap!3577)

(assert (=> bm!21995 (= call!21999 call!21997)))

(declare-fun b!236589 () Bool)

(declare-fun Unit!7280 () Unit!7277)

(assert (=> b!236589 (= e!153660 Unit!7280)))

(declare-fun b!236590 () Bool)

(declare-fun e!153666 () ListLongMap!3577)

(assert (=> b!236590 (= e!153666 call!22003)))

(declare-fun call!21998 () ListLongMap!3577)

(declare-fun call!22001 () ListLongMap!3577)

(declare-fun c!39403 () Bool)

(declare-fun bm!21996 () Bool)

(declare-fun +!636 (ListLongMap!3577 tuple2!4650) ListLongMap!3577)

(assert (=> bm!21996 (= call!21998 (+!636 (ite c!39405 call!21997 (ite c!39403 call!21999 call!22001)) (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))

(declare-fun b!236591 () Bool)

(declare-fun e!153661 () Bool)

(declare-fun e!153659 () Bool)

(assert (=> b!236591 (= e!153661 e!153659)))

(declare-fun res!116020 () Bool)

(declare-fun call!22000 () Bool)

(assert (=> b!236591 (= res!116020 call!22000)))

(assert (=> b!236591 (=> (not res!116020) (not e!153659))))

(declare-fun b!236592 () Bool)

(declare-fun e!153670 () Bool)

(assert (=> b!236592 (= e!153670 (= (apply!214 lt!119684 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4235 thiss!1504)))))

(declare-fun b!236593 () Bool)

(assert (=> b!236593 (= e!153667 e!153661)))

(declare-fun c!39401 () Bool)

(assert (=> b!236593 (= c!39401 (not (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21997 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!533 (array!11716 array!11714 (_ BitVec 32) (_ BitVec 32) V!7947 V!7947 (_ BitVec 32) Int) ListLongMap!3577)

(assert (=> bm!21997 (= call!21997 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))

(declare-fun b!236594 () Bool)

(declare-fun e!153668 () Bool)

(assert (=> b!236594 (= e!153668 e!153670)))

(declare-fun res!116023 () Bool)

(assert (=> b!236594 (= res!116023 call!22002)))

(assert (=> b!236594 (=> (not res!116023) (not e!153670))))

(declare-fun bm!21998 () Bool)

(assert (=> bm!21998 (= call!22000 (contains!1678 lt!119684 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236595 () Bool)

(assert (=> b!236595 (= e!153669 (+!636 call!21998 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))

(declare-fun b!236596 () Bool)

(declare-fun res!116021 () Bool)

(assert (=> b!236596 (=> (not res!116021) (not e!153667))))

(assert (=> b!236596 (= res!116021 e!153668)))

(declare-fun c!39404 () Bool)

(assert (=> b!236596 (= c!39404 (not (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!21999 () Bool)

(assert (=> bm!21999 (= call!22003 call!21998)))

(declare-fun b!236597 () Bool)

(declare-fun c!39406 () Bool)

(assert (=> b!236597 (= c!39406 (and (not (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!236597 (= e!153666 e!153664)))

(declare-fun b!236598 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!236598 (= e!153663 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236599 () Bool)

(assert (=> b!236599 (= e!153669 e!153666)))

(assert (=> b!236599 (= c!39403 (and (not (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4131 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!236600 () Bool)

(declare-fun lt!119677 () Unit!7277)

(assert (=> b!236600 (= e!153660 lt!119677)))

(declare-fun lt!119678 () ListLongMap!3577)

(assert (=> b!236600 (= lt!119678 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))

(declare-fun lt!119676 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119676 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119673 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119673 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119690 () Unit!7277)

(declare-fun addStillContains!190 (ListLongMap!3577 (_ BitVec 64) V!7947 (_ BitVec 64)) Unit!7277)

(assert (=> b!236600 (= lt!119690 (addStillContains!190 lt!119678 lt!119676 (zeroValue!4235 thiss!1504) lt!119673))))

(assert (=> b!236600 (contains!1678 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))) lt!119673)))

(declare-fun lt!119681 () Unit!7277)

(assert (=> b!236600 (= lt!119681 lt!119690)))

(declare-fun lt!119688 () ListLongMap!3577)

(assert (=> b!236600 (= lt!119688 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))

(declare-fun lt!119682 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119682 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119679 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119679 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119687 () Unit!7277)

(declare-fun addApplyDifferent!190 (ListLongMap!3577 (_ BitVec 64) V!7947 (_ BitVec 64)) Unit!7277)

(assert (=> b!236600 (= lt!119687 (addApplyDifferent!190 lt!119688 lt!119682 (minValue!4235 thiss!1504) lt!119679))))

(assert (=> b!236600 (= (apply!214 (+!636 lt!119688 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))) lt!119679) (apply!214 lt!119688 lt!119679))))

(declare-fun lt!119680 () Unit!7277)

(assert (=> b!236600 (= lt!119680 lt!119687)))

(declare-fun lt!119691 () ListLongMap!3577)

(assert (=> b!236600 (= lt!119691 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))

(declare-fun lt!119674 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119674 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119671 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119671 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119685 () Unit!7277)

(assert (=> b!236600 (= lt!119685 (addApplyDifferent!190 lt!119691 lt!119674 (zeroValue!4235 thiss!1504) lt!119671))))

(assert (=> b!236600 (= (apply!214 (+!636 lt!119691 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))) lt!119671) (apply!214 lt!119691 lt!119671))))

(declare-fun lt!119686 () Unit!7277)

(assert (=> b!236600 (= lt!119686 lt!119685)))

(declare-fun lt!119672 () ListLongMap!3577)

(assert (=> b!236600 (= lt!119672 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))

(declare-fun lt!119689 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119689 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119692 () (_ BitVec 64))

(assert (=> b!236600 (= lt!119692 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236600 (= lt!119677 (addApplyDifferent!190 lt!119672 lt!119689 (minValue!4235 thiss!1504) lt!119692))))

(assert (=> b!236600 (= (apply!214 (+!636 lt!119672 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))) lt!119692) (apply!214 lt!119672 lt!119692))))

(declare-fun b!236601 () Bool)

(assert (=> b!236601 (= e!153668 (not call!22002))))

(declare-fun b!236602 () Bool)

(assert (=> b!236602 (= e!153659 (= (apply!214 lt!119684 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4235 thiss!1504)))))

(declare-fun bm!22000 () Bool)

(assert (=> bm!22000 (= call!22001 call!21999)))

(declare-fun b!236603 () Bool)

(assert (=> b!236603 (= e!153661 (not call!22000))))

(declare-fun b!236604 () Bool)

(assert (=> b!236604 (= e!153664 call!22001)))

(declare-fun b!236605 () Bool)

(declare-fun res!116024 () Bool)

(assert (=> b!236605 (=> (not res!116024) (not e!153667))))

(declare-fun e!153671 () Bool)

(assert (=> b!236605 (= res!116024 e!153671)))

(declare-fun res!116016 () Bool)

(assert (=> b!236605 (=> res!116016 e!153671)))

(declare-fun e!153662 () Bool)

(assert (=> b!236605 (= res!116016 (not e!153662))))

(declare-fun res!116018 () Bool)

(assert (=> b!236605 (=> (not res!116018) (not e!153662))))

(assert (=> b!236605 (= res!116018 (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun b!236606 () Bool)

(assert (=> b!236606 (= e!153662 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236607 () Bool)

(assert (=> b!236607 (= e!153671 e!153665)))

(declare-fun res!116019 () Bool)

(assert (=> b!236607 (=> (not res!116019) (not e!153665))))

(assert (=> b!236607 (= res!116019 (contains!1678 lt!119684 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236607 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(assert (= (and d!59351 c!39405) b!236595))

(assert (= (and d!59351 (not c!39405)) b!236599))

(assert (= (and b!236599 c!39403) b!236590))

(assert (= (and b!236599 (not c!39403)) b!236597))

(assert (= (and b!236597 c!39406) b!236588))

(assert (= (and b!236597 (not c!39406)) b!236604))

(assert (= (or b!236588 b!236604) bm!22000))

(assert (= (or b!236590 bm!22000) bm!21995))

(assert (= (or b!236590 b!236588) bm!21999))

(assert (= (or b!236595 bm!21995) bm!21997))

(assert (= (or b!236595 bm!21999) bm!21996))

(assert (= (and d!59351 res!116022) b!236598))

(assert (= (and d!59351 c!39402) b!236600))

(assert (= (and d!59351 (not c!39402)) b!236589))

(assert (= (and d!59351 res!116017) b!236605))

(assert (= (and b!236605 res!116018) b!236606))

(assert (= (and b!236605 (not res!116016)) b!236607))

(assert (= (and b!236607 res!116019) b!236587))

(assert (= (and b!236605 res!116024) b!236596))

(assert (= (and b!236596 c!39404) b!236594))

(assert (= (and b!236596 (not c!39404)) b!236601))

(assert (= (and b!236594 res!116023) b!236592))

(assert (= (or b!236594 b!236601) bm!21994))

(assert (= (and b!236596 res!116021) b!236593))

(assert (= (and b!236593 c!39401) b!236591))

(assert (= (and b!236593 (not c!39401)) b!236603))

(assert (= (and b!236591 res!116020) b!236602))

(assert (= (or b!236591 b!236603) bm!21998))

(declare-fun b_lambda!7957 () Bool)

(assert (=> (not b_lambda!7957) (not b!236587)))

(declare-fun t!8568 () Bool)

(declare-fun tb!2949 () Bool)

(assert (=> (and b!236479 (= (defaultEntry!4394 thiss!1504) (defaultEntry!4394 thiss!1504)) t!8568) tb!2949))

(declare-fun result!5153 () Bool)

(assert (=> tb!2949 (= result!5153 tp_is_empty!6225)))

(assert (=> b!236587 t!8568))

(declare-fun b_and!13325 () Bool)

(assert (= b_and!13321 (and (=> t!8568 result!5153) b_and!13325)))

(declare-fun m!257427 () Bool)

(assert (=> b!236600 m!257427))

(declare-fun m!257429 () Bool)

(assert (=> b!236600 m!257429))

(assert (=> b!236600 m!257427))

(declare-fun m!257431 () Bool)

(assert (=> b!236600 m!257431))

(declare-fun m!257433 () Bool)

(assert (=> b!236600 m!257433))

(declare-fun m!257435 () Bool)

(assert (=> b!236600 m!257435))

(declare-fun m!257437 () Bool)

(assert (=> b!236600 m!257437))

(declare-fun m!257439 () Bool)

(assert (=> b!236600 m!257439))

(declare-fun m!257441 () Bool)

(assert (=> b!236600 m!257441))

(declare-fun m!257443 () Bool)

(assert (=> b!236600 m!257443))

(assert (=> b!236600 m!257441))

(declare-fun m!257445 () Bool)

(assert (=> b!236600 m!257445))

(declare-fun m!257447 () Bool)

(assert (=> b!236600 m!257447))

(declare-fun m!257449 () Bool)

(assert (=> b!236600 m!257449))

(assert (=> b!236600 m!257435))

(declare-fun m!257451 () Bool)

(assert (=> b!236600 m!257451))

(assert (=> b!236600 m!257431))

(declare-fun m!257453 () Bool)

(assert (=> b!236600 m!257453))

(declare-fun m!257455 () Bool)

(assert (=> b!236600 m!257455))

(declare-fun m!257457 () Bool)

(assert (=> b!236600 m!257457))

(declare-fun m!257459 () Bool)

(assert (=> b!236600 m!257459))

(assert (=> d!59351 m!257375))

(assert (=> b!236598 m!257447))

(assert (=> b!236598 m!257447))

(declare-fun m!257461 () Bool)

(assert (=> b!236598 m!257461))

(declare-fun m!257463 () Bool)

(assert (=> b!236595 m!257463))

(declare-fun m!257465 () Bool)

(assert (=> bm!21996 m!257465))

(assert (=> bm!21997 m!257457))

(declare-fun m!257467 () Bool)

(assert (=> bm!21994 m!257467))

(declare-fun m!257469 () Bool)

(assert (=> b!236587 m!257469))

(declare-fun m!257471 () Bool)

(assert (=> b!236587 m!257471))

(declare-fun m!257473 () Bool)

(assert (=> b!236587 m!257473))

(assert (=> b!236587 m!257447))

(assert (=> b!236587 m!257471))

(assert (=> b!236587 m!257469))

(assert (=> b!236587 m!257447))

(declare-fun m!257475 () Bool)

(assert (=> b!236587 m!257475))

(declare-fun m!257477 () Bool)

(assert (=> b!236592 m!257477))

(assert (=> b!236607 m!257447))

(assert (=> b!236607 m!257447))

(declare-fun m!257479 () Bool)

(assert (=> b!236607 m!257479))

(declare-fun m!257481 () Bool)

(assert (=> bm!21998 m!257481))

(assert (=> b!236606 m!257447))

(assert (=> b!236606 m!257447))

(assert (=> b!236606 m!257461))

(declare-fun m!257483 () Bool)

(assert (=> b!236602 m!257483))

(assert (=> b!236480 d!59351))

(declare-fun d!59353 () Bool)

(assert (=> d!59353 (= (validMask!0 (mask!10387 thiss!1504)) (and (or (= (mask!10387 thiss!1504) #b00000000000000000000000000000111) (= (mask!10387 thiss!1504) #b00000000000000000000000000001111) (= (mask!10387 thiss!1504) #b00000000000000000000000000011111) (= (mask!10387 thiss!1504) #b00000000000000000000000000111111) (= (mask!10387 thiss!1504) #b00000000000000000000000001111111) (= (mask!10387 thiss!1504) #b00000000000000000000000011111111) (= (mask!10387 thiss!1504) #b00000000000000000000000111111111) (= (mask!10387 thiss!1504) #b00000000000000000000001111111111) (= (mask!10387 thiss!1504) #b00000000000000000000011111111111) (= (mask!10387 thiss!1504) #b00000000000000000000111111111111) (= (mask!10387 thiss!1504) #b00000000000000000001111111111111) (= (mask!10387 thiss!1504) #b00000000000000000011111111111111) (= (mask!10387 thiss!1504) #b00000000000000000111111111111111) (= (mask!10387 thiss!1504) #b00000000000000001111111111111111) (= (mask!10387 thiss!1504) #b00000000000000011111111111111111) (= (mask!10387 thiss!1504) #b00000000000000111111111111111111) (= (mask!10387 thiss!1504) #b00000000000001111111111111111111) (= (mask!10387 thiss!1504) #b00000000000011111111111111111111) (= (mask!10387 thiss!1504) #b00000000000111111111111111111111) (= (mask!10387 thiss!1504) #b00000000001111111111111111111111) (= (mask!10387 thiss!1504) #b00000000011111111111111111111111) (= (mask!10387 thiss!1504) #b00000000111111111111111111111111) (= (mask!10387 thiss!1504) #b00000001111111111111111111111111) (= (mask!10387 thiss!1504) #b00000011111111111111111111111111) (= (mask!10387 thiss!1504) #b00000111111111111111111111111111) (= (mask!10387 thiss!1504) #b00001111111111111111111111111111) (= (mask!10387 thiss!1504) #b00011111111111111111111111111111) (= (mask!10387 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10387 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!236478 d!59353))

(declare-fun mapNonEmpty!10551 () Bool)

(declare-fun mapRes!10551 () Bool)

(declare-fun tp!22278 () Bool)

(declare-fun e!153676 () Bool)

(assert (=> mapNonEmpty!10551 (= mapRes!10551 (and tp!22278 e!153676))))

(declare-fun mapKey!10551 () (_ BitVec 32))

(declare-fun mapValue!10551 () ValueCell!2769)

(declare-fun mapRest!10551 () (Array (_ BitVec 32) ValueCell!2769))

(assert (=> mapNonEmpty!10551 (= mapRest!10545 (store mapRest!10551 mapKey!10551 mapValue!10551))))

(declare-fun condMapEmpty!10551 () Bool)

(declare-fun mapDefault!10551 () ValueCell!2769)

(assert (=> mapNonEmpty!10545 (= condMapEmpty!10551 (= mapRest!10545 ((as const (Array (_ BitVec 32) ValueCell!2769)) mapDefault!10551)))))

(declare-fun e!153677 () Bool)

(assert (=> mapNonEmpty!10545 (= tp!22269 (and e!153677 mapRes!10551))))

(declare-fun b!236617 () Bool)

(assert (=> b!236617 (= e!153677 tp_is_empty!6225)))

(declare-fun mapIsEmpty!10551 () Bool)

(assert (=> mapIsEmpty!10551 mapRes!10551))

(declare-fun b!236616 () Bool)

(assert (=> b!236616 (= e!153676 tp_is_empty!6225)))

(assert (= (and mapNonEmpty!10545 condMapEmpty!10551) mapIsEmpty!10551))

(assert (= (and mapNonEmpty!10545 (not condMapEmpty!10551)) mapNonEmpty!10551))

(assert (= (and mapNonEmpty!10551 ((_ is ValueCellFull!2769) mapValue!10551)) b!236616))

(assert (= (and mapNonEmpty!10545 ((_ is ValueCellFull!2769) mapDefault!10551)) b!236617))

(declare-fun m!257485 () Bool)

(assert (=> mapNonEmpty!10551 m!257485))

(declare-fun b_lambda!7959 () Bool)

(assert (= b_lambda!7957 (or (and b!236479 b_free!6363) b_lambda!7959)))

(check-sat (not b_lambda!7959) (not b!236542) (not b!236535) (not bm!21998) (not d!59349) (not b!236606) (not bm!21994) (not b_next!6363) (not b!236595) (not mapNonEmpty!10551) (not d!59347) (not b!236600) (not b!236607) (not b!236544) (not b!236533) (not d!59351) (not b!236534) (not b!236602) (not bm!21996) (not b!236587) (not bm!21997) tp_is_empty!6225 (not b!236521) (not b!236598) b_and!13325 (not b!236592) (not d!59341))
(check-sat b_and!13325 (not b_next!6363))
(get-model)

(declare-fun d!59355 () Bool)

(assert (=> d!59355 (= (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!236606 d!59355))

(declare-fun d!59357 () Bool)

(declare-fun res!116029 () Bool)

(declare-fun e!153682 () Bool)

(assert (=> d!59357 (=> res!116029 e!153682)))

(assert (=> d!59357 (= res!116029 (and ((_ is Cons!3573) (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))) (= (_1!2335 (h!4226 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))))) key!932)))))

(assert (=> d!59357 (= (containsKey!263 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932) e!153682)))

(declare-fun b!236622 () Bool)

(declare-fun e!153683 () Bool)

(assert (=> b!236622 (= e!153682 e!153683)))

(declare-fun res!116030 () Bool)

(assert (=> b!236622 (=> (not res!116030) (not e!153683))))

(assert (=> b!236622 (= res!116030 (and (or (not ((_ is Cons!3573) (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))))) (bvsle (_1!2335 (h!4226 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))))) key!932)) ((_ is Cons!3573) (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))) (bvslt (_1!2335 (h!4226 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))))) key!932)))))

(declare-fun b!236623 () Bool)

(assert (=> b!236623 (= e!153683 (containsKey!263 (t!8566 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))) key!932))))

(assert (= (and d!59357 (not res!116029)) b!236622))

(assert (= (and b!236622 res!116030) b!236623))

(declare-fun m!257487 () Bool)

(assert (=> b!236623 m!257487))

(assert (=> d!59349 d!59357))

(declare-fun b!236635 () Bool)

(declare-fun e!153695 () Bool)

(declare-fun call!22006 () Bool)

(assert (=> b!236635 (= e!153695 call!22006)))

(declare-fun b!236636 () Bool)

(declare-fun e!153692 () Bool)

(declare-fun contains!1679 (List!3578 (_ BitVec 64)) Bool)

(assert (=> b!236636 (= e!153692 (contains!1679 Nil!3575 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236637 () Bool)

(declare-fun e!153693 () Bool)

(declare-fun e!153694 () Bool)

(assert (=> b!236637 (= e!153693 e!153694)))

(declare-fun res!116038 () Bool)

(assert (=> b!236637 (=> (not res!116038) (not e!153694))))

(assert (=> b!236637 (= res!116038 (not e!153692))))

(declare-fun res!116037 () Bool)

(assert (=> b!236637 (=> (not res!116037) (not e!153692))))

(assert (=> b!236637 (= res!116037 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236638 () Bool)

(assert (=> b!236638 (= e!153695 call!22006)))

(declare-fun bm!22003 () Bool)

(declare-fun c!39409 () Bool)

(assert (=> bm!22003 (= call!22006 (arrayNoDuplicates!0 (_keys!6477 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39409 (Cons!3574 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000) Nil!3575) Nil!3575)))))

(declare-fun d!59359 () Bool)

(declare-fun res!116039 () Bool)

(assert (=> d!59359 (=> res!116039 e!153693)))

(assert (=> d!59359 (= res!116039 (bvsge #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> d!59359 (= (arrayNoDuplicates!0 (_keys!6477 thiss!1504) #b00000000000000000000000000000000 Nil!3575) e!153693)))

(declare-fun b!236634 () Bool)

(assert (=> b!236634 (= e!153694 e!153695)))

(assert (=> b!236634 (= c!39409 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59359 (not res!116039)) b!236637))

(assert (= (and b!236637 res!116037) b!236636))

(assert (= (and b!236637 res!116038) b!236634))

(assert (= (and b!236634 c!39409) b!236635))

(assert (= (and b!236634 (not c!39409)) b!236638))

(assert (= (or b!236635 b!236638) bm!22003))

(assert (=> b!236636 m!257447))

(assert (=> b!236636 m!257447))

(declare-fun m!257489 () Bool)

(assert (=> b!236636 m!257489))

(assert (=> b!236637 m!257447))

(assert (=> b!236637 m!257447))

(assert (=> b!236637 m!257461))

(assert (=> bm!22003 m!257447))

(declare-fun m!257491 () Bool)

(assert (=> bm!22003 m!257491))

(assert (=> b!236634 m!257447))

(assert (=> b!236634 m!257447))

(assert (=> b!236634 m!257461))

(assert (=> b!236535 d!59359))

(declare-fun b!236651 () Bool)

(declare-fun e!153702 () SeekEntryResult!1012)

(assert (=> b!236651 (= e!153702 (MissingVacant!1012 (index!6220 lt!119612)))))

(declare-fun b!236652 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!236652 (= e!153702 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23894 lt!119612) #b00000000000000000000000000000001) (nextIndex!0 (index!6220 lt!119612) (x!23894 lt!119612) (mask!10387 thiss!1504)) (index!6220 lt!119612) key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(declare-fun b!236653 () Bool)

(declare-fun e!153704 () SeekEntryResult!1012)

(assert (=> b!236653 (= e!153704 (Found!1012 (index!6220 lt!119612)))))

(declare-fun b!236654 () Bool)

(declare-fun c!39418 () Bool)

(declare-fun lt!119698 () (_ BitVec 64))

(assert (=> b!236654 (= c!39418 (= lt!119698 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236654 (= e!153704 e!153702)))

(declare-fun b!236655 () Bool)

(declare-fun e!153703 () SeekEntryResult!1012)

(assert (=> b!236655 (= e!153703 Undefined!1012)))

(declare-fun d!59361 () Bool)

(declare-fun lt!119697 () SeekEntryResult!1012)

(assert (=> d!59361 (and (or ((_ is Undefined!1012) lt!119697) (not ((_ is Found!1012) lt!119697)) (and (bvsge (index!6219 lt!119697) #b00000000000000000000000000000000) (bvslt (index!6219 lt!119697) (size!5904 (_keys!6477 thiss!1504))))) (or ((_ is Undefined!1012) lt!119697) ((_ is Found!1012) lt!119697) (not ((_ is MissingVacant!1012) lt!119697)) (not (= (index!6221 lt!119697) (index!6220 lt!119612))) (and (bvsge (index!6221 lt!119697) #b00000000000000000000000000000000) (bvslt (index!6221 lt!119697) (size!5904 (_keys!6477 thiss!1504))))) (or ((_ is Undefined!1012) lt!119697) (ite ((_ is Found!1012) lt!119697) (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6219 lt!119697)) key!932) (and ((_ is MissingVacant!1012) lt!119697) (= (index!6221 lt!119697) (index!6220 lt!119612)) (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6221 lt!119697)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!59361 (= lt!119697 e!153703)))

(declare-fun c!39417 () Bool)

(assert (=> d!59361 (= c!39417 (bvsge (x!23894 lt!119612) #b01111111111111111111111111111110))))

(assert (=> d!59361 (= lt!119698 (select (arr!5566 (_keys!6477 thiss!1504)) (index!6220 lt!119612)))))

(assert (=> d!59361 (validMask!0 (mask!10387 thiss!1504))))

(assert (=> d!59361 (= (seekKeyOrZeroReturnVacant!0 (x!23894 lt!119612) (index!6220 lt!119612) (index!6220 lt!119612) key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)) lt!119697)))

(declare-fun b!236656 () Bool)

(assert (=> b!236656 (= e!153703 e!153704)))

(declare-fun c!39416 () Bool)

(assert (=> b!236656 (= c!39416 (= lt!119698 key!932))))

(assert (= (and d!59361 c!39417) b!236655))

(assert (= (and d!59361 (not c!39417)) b!236656))

(assert (= (and b!236656 c!39416) b!236653))

(assert (= (and b!236656 (not c!39416)) b!236654))

(assert (= (and b!236654 c!39418) b!236651))

(assert (= (and b!236654 (not c!39418)) b!236652))

(declare-fun m!257493 () Bool)

(assert (=> b!236652 m!257493))

(assert (=> b!236652 m!257493))

(declare-fun m!257495 () Bool)

(assert (=> b!236652 m!257495))

(declare-fun m!257497 () Bool)

(assert (=> d!59361 m!257497))

(declare-fun m!257499 () Bool)

(assert (=> d!59361 m!257499))

(assert (=> d!59361 m!257399))

(assert (=> d!59361 m!257375))

(assert (=> b!236521 d!59361))

(declare-fun b!236665 () Bool)

(declare-fun e!153710 () (_ BitVec 32))

(assert (=> b!236665 (= e!153710 #b00000000000000000000000000000000)))

(declare-fun b!236666 () Bool)

(declare-fun e!153709 () (_ BitVec 32))

(declare-fun call!22009 () (_ BitVec 32))

(assert (=> b!236666 (= e!153709 (bvadd #b00000000000000000000000000000001 call!22009))))

(declare-fun d!59363 () Bool)

(declare-fun lt!119701 () (_ BitVec 32))

(assert (=> d!59363 (and (bvsge lt!119701 #b00000000000000000000000000000000) (bvsle lt!119701 (bvsub (size!5904 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59363 (= lt!119701 e!153710)))

(declare-fun c!39424 () Bool)

(assert (=> d!59363 (= c!39424 (bvsge #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> d!59363 (and (bvsle #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5904 (_keys!6477 thiss!1504)) (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> d!59363 (= (arrayCountValidKeys!0 (_keys!6477 thiss!1504) #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))) lt!119701)))

(declare-fun b!236667 () Bool)

(assert (=> b!236667 (= e!153709 call!22009)))

(declare-fun bm!22006 () Bool)

(assert (=> bm!22006 (= call!22009 (arrayCountValidKeys!0 (_keys!6477 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun b!236668 () Bool)

(assert (=> b!236668 (= e!153710 e!153709)))

(declare-fun c!39423 () Bool)

(assert (=> b!236668 (= c!39423 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59363 c!39424) b!236665))

(assert (= (and d!59363 (not c!39424)) b!236668))

(assert (= (and b!236668 c!39423) b!236666))

(assert (= (and b!236668 (not c!39423)) b!236667))

(assert (= (or b!236666 b!236667) bm!22006))

(declare-fun m!257501 () Bool)

(assert (=> bm!22006 m!257501))

(assert (=> b!236668 m!257447))

(assert (=> b!236668 m!257447))

(assert (=> b!236668 m!257461))

(assert (=> b!236533 d!59363))

(declare-fun d!59365 () Bool)

(declare-fun e!153711 () Bool)

(assert (=> d!59365 e!153711))

(declare-fun res!116040 () Bool)

(assert (=> d!59365 (=> res!116040 e!153711)))

(declare-fun lt!119704 () Bool)

(assert (=> d!59365 (= res!116040 (not lt!119704))))

(declare-fun lt!119703 () Bool)

(assert (=> d!59365 (= lt!119704 lt!119703)))

(declare-fun lt!119705 () Unit!7277)

(declare-fun e!153712 () Unit!7277)

(assert (=> d!59365 (= lt!119705 e!153712)))

(declare-fun c!39425 () Bool)

(assert (=> d!59365 (= c!39425 lt!119703)))

(assert (=> d!59365 (= lt!119703 (containsKey!263 (toList!1804 lt!119684) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59365 (= (contains!1678 lt!119684 #b0000000000000000000000000000000000000000000000000000000000000000) lt!119704)))

(declare-fun b!236669 () Bool)

(declare-fun lt!119702 () Unit!7277)

(assert (=> b!236669 (= e!153712 lt!119702)))

(assert (=> b!236669 (= lt!119702 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!1804 lt!119684) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236669 (isDefined!213 (getValueByKey!271 (toList!1804 lt!119684) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236670 () Bool)

(declare-fun Unit!7281 () Unit!7277)

(assert (=> b!236670 (= e!153712 Unit!7281)))

(declare-fun b!236671 () Bool)

(assert (=> b!236671 (= e!153711 (isDefined!213 (getValueByKey!271 (toList!1804 lt!119684) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59365 c!39425) b!236669))

(assert (= (and d!59365 (not c!39425)) b!236670))

(assert (= (and d!59365 (not res!116040)) b!236671))

(declare-fun m!257503 () Bool)

(assert (=> d!59365 m!257503))

(declare-fun m!257505 () Bool)

(assert (=> b!236669 m!257505))

(declare-fun m!257507 () Bool)

(assert (=> b!236669 m!257507))

(assert (=> b!236669 m!257507))

(declare-fun m!257509 () Bool)

(assert (=> b!236669 m!257509))

(assert (=> b!236671 m!257507))

(assert (=> b!236671 m!257507))

(assert (=> b!236671 m!257509))

(assert (=> bm!21994 d!59365))

(declare-fun d!59367 () Bool)

(declare-fun res!116045 () Bool)

(declare-fun e!153721 () Bool)

(assert (=> d!59367 (=> res!116045 e!153721)))

(assert (=> d!59367 (= res!116045 (bvsge #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> d!59367 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)) e!153721)))

(declare-fun b!236680 () Bool)

(declare-fun e!153719 () Bool)

(assert (=> b!236680 (= e!153721 e!153719)))

(declare-fun c!39428 () Bool)

(assert (=> b!236680 (= c!39428 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22009 () Bool)

(declare-fun call!22012 () Bool)

(assert (=> bm!22009 (= call!22012 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(declare-fun b!236681 () Bool)

(declare-fun e!153720 () Bool)

(assert (=> b!236681 (= e!153719 e!153720)))

(declare-fun lt!119712 () (_ BitVec 64))

(assert (=> b!236681 (= lt!119712 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119713 () Unit!7277)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11716 (_ BitVec 64) (_ BitVec 32)) Unit!7277)

(assert (=> b!236681 (= lt!119713 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6477 thiss!1504) lt!119712 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!236681 (arrayContainsKey!0 (_keys!6477 thiss!1504) lt!119712 #b00000000000000000000000000000000)))

(declare-fun lt!119714 () Unit!7277)

(assert (=> b!236681 (= lt!119714 lt!119713)))

(declare-fun res!116046 () Bool)

(assert (=> b!236681 (= res!116046 (= (seekEntryOrOpen!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000) (_keys!6477 thiss!1504) (mask!10387 thiss!1504)) (Found!1012 #b00000000000000000000000000000000)))))

(assert (=> b!236681 (=> (not res!116046) (not e!153720))))

(declare-fun b!236682 () Bool)

(assert (=> b!236682 (= e!153719 call!22012)))

(declare-fun b!236683 () Bool)

(assert (=> b!236683 (= e!153720 call!22012)))

(assert (= (and d!59367 (not res!116045)) b!236680))

(assert (= (and b!236680 c!39428) b!236681))

(assert (= (and b!236680 (not c!39428)) b!236682))

(assert (= (and b!236681 res!116046) b!236683))

(assert (= (or b!236683 b!236682) bm!22009))

(assert (=> b!236680 m!257447))

(assert (=> b!236680 m!257447))

(assert (=> b!236680 m!257461))

(declare-fun m!257511 () Bool)

(assert (=> bm!22009 m!257511))

(assert (=> b!236681 m!257447))

(declare-fun m!257513 () Bool)

(assert (=> b!236681 m!257513))

(declare-fun m!257515 () Bool)

(assert (=> b!236681 m!257515))

(assert (=> b!236681 m!257447))

(declare-fun m!257517 () Bool)

(assert (=> b!236681 m!257517))

(assert (=> b!236534 d!59367))

(declare-fun d!59369 () Bool)

(declare-fun e!153724 () Bool)

(assert (=> d!59369 e!153724))

(declare-fun res!116052 () Bool)

(assert (=> d!59369 (=> (not res!116052) (not e!153724))))

(declare-fun lt!119725 () ListLongMap!3577)

(assert (=> d!59369 (= res!116052 (contains!1678 lt!119725 (_1!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))

(declare-fun lt!119726 () List!3577)

(assert (=> d!59369 (= lt!119725 (ListLongMap!3578 lt!119726))))

(declare-fun lt!119723 () Unit!7277)

(declare-fun lt!119724 () Unit!7277)

(assert (=> d!59369 (= lt!119723 lt!119724)))

(assert (=> d!59369 (= (getValueByKey!271 lt!119726 (_1!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!153 (List!3577 (_ BitVec 64) V!7947) Unit!7277)

(assert (=> d!59369 (= lt!119724 (lemmaContainsTupThenGetReturnValue!153 lt!119726 (_1!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))

(declare-fun insertStrictlySorted!155 (List!3577 (_ BitVec 64) V!7947) List!3577)

(assert (=> d!59369 (= lt!119726 (insertStrictlySorted!155 (toList!1804 call!21998) (_1!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))

(assert (=> d!59369 (= (+!636 call!21998 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))) lt!119725)))

(declare-fun b!236688 () Bool)

(declare-fun res!116051 () Bool)

(assert (=> b!236688 (=> (not res!116051) (not e!153724))))

(assert (=> b!236688 (= res!116051 (= (getValueByKey!271 (toList!1804 lt!119725) (_1!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))))

(declare-fun b!236689 () Bool)

(declare-fun contains!1680 (List!3577 tuple2!4650) Bool)

(assert (=> b!236689 (= e!153724 (contains!1680 (toList!1804 lt!119725) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))

(assert (= (and d!59369 res!116052) b!236688))

(assert (= (and b!236688 res!116051) b!236689))

(declare-fun m!257519 () Bool)

(assert (=> d!59369 m!257519))

(declare-fun m!257521 () Bool)

(assert (=> d!59369 m!257521))

(declare-fun m!257523 () Bool)

(assert (=> d!59369 m!257523))

(declare-fun m!257525 () Bool)

(assert (=> d!59369 m!257525))

(declare-fun m!257527 () Bool)

(assert (=> b!236688 m!257527))

(declare-fun m!257529 () Bool)

(assert (=> b!236689 m!257529))

(assert (=> b!236595 d!59369))

(declare-fun b!236699 () Bool)

(declare-fun res!116062 () Bool)

(declare-fun e!153727 () Bool)

(assert (=> b!236699 (=> (not res!116062) (not e!153727))))

(declare-fun size!5907 (LongMapFixedSize!3438) (_ BitVec 32))

(assert (=> b!236699 (= res!116062 (bvsge (size!5907 thiss!1504) (_size!1768 thiss!1504)))))

(declare-fun b!236700 () Bool)

(declare-fun res!116063 () Bool)

(assert (=> b!236700 (=> (not res!116063) (not e!153727))))

(assert (=> b!236700 (= res!116063 (= (size!5907 thiss!1504) (bvadd (_size!1768 thiss!1504) (bvsdiv (bvadd (extraKeys!4131 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!236698 () Bool)

(declare-fun res!116061 () Bool)

(assert (=> b!236698 (=> (not res!116061) (not e!153727))))

(assert (=> b!236698 (= res!116061 (and (= (size!5903 (_values!4377 thiss!1504)) (bvadd (mask!10387 thiss!1504) #b00000000000000000000000000000001)) (= (size!5904 (_keys!6477 thiss!1504)) (size!5903 (_values!4377 thiss!1504))) (bvsge (_size!1768 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1768 thiss!1504) (bvadd (mask!10387 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!236701 () Bool)

(assert (=> b!236701 (= e!153727 (and (bvsge (extraKeys!4131 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4131 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1768 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!59371 () Bool)

(declare-fun res!116064 () Bool)

(assert (=> d!59371 (=> (not res!116064) (not e!153727))))

(assert (=> d!59371 (= res!116064 (validMask!0 (mask!10387 thiss!1504)))))

(assert (=> d!59371 (= (simpleValid!236 thiss!1504) e!153727)))

(assert (= (and d!59371 res!116064) b!236698))

(assert (= (and b!236698 res!116061) b!236699))

(assert (= (and b!236699 res!116062) b!236700))

(assert (= (and b!236700 res!116063) b!236701))

(declare-fun m!257531 () Bool)

(assert (=> b!236699 m!257531))

(assert (=> b!236700 m!257531))

(assert (=> d!59371 m!257375))

(assert (=> d!59347 d!59371))

(declare-fun d!59373 () Bool)

(declare-fun e!153728 () Bool)

(assert (=> d!59373 e!153728))

(declare-fun res!116065 () Bool)

(assert (=> d!59373 (=> res!116065 e!153728)))

(declare-fun lt!119729 () Bool)

(assert (=> d!59373 (= res!116065 (not lt!119729))))

(declare-fun lt!119728 () Bool)

(assert (=> d!59373 (= lt!119729 lt!119728)))

(declare-fun lt!119730 () Unit!7277)

(declare-fun e!153729 () Unit!7277)

(assert (=> d!59373 (= lt!119730 e!153729)))

(declare-fun c!39429 () Bool)

(assert (=> d!59373 (= c!39429 lt!119728)))

(assert (=> d!59373 (= lt!119728 (containsKey!263 (toList!1804 lt!119684) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59373 (= (contains!1678 lt!119684 #b1000000000000000000000000000000000000000000000000000000000000000) lt!119729)))

(declare-fun b!236702 () Bool)

(declare-fun lt!119727 () Unit!7277)

(assert (=> b!236702 (= e!153729 lt!119727)))

(assert (=> b!236702 (= lt!119727 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!1804 lt!119684) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236702 (isDefined!213 (getValueByKey!271 (toList!1804 lt!119684) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236703 () Bool)

(declare-fun Unit!7282 () Unit!7277)

(assert (=> b!236703 (= e!153729 Unit!7282)))

(declare-fun b!236704 () Bool)

(assert (=> b!236704 (= e!153728 (isDefined!213 (getValueByKey!271 (toList!1804 lt!119684) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59373 c!39429) b!236702))

(assert (= (and d!59373 (not c!39429)) b!236703))

(assert (= (and d!59373 (not res!116065)) b!236704))

(declare-fun m!257533 () Bool)

(assert (=> d!59373 m!257533))

(declare-fun m!257535 () Bool)

(assert (=> b!236702 m!257535))

(declare-fun m!257537 () Bool)

(assert (=> b!236702 m!257537))

(assert (=> b!236702 m!257537))

(declare-fun m!257539 () Bool)

(assert (=> b!236702 m!257539))

(assert (=> b!236704 m!257537))

(assert (=> b!236704 m!257537))

(assert (=> b!236704 m!257539))

(assert (=> bm!21998 d!59373))

(declare-fun b!236729 () Bool)

(declare-fun res!116076 () Bool)

(declare-fun e!153747 () Bool)

(assert (=> b!236729 (=> (not res!116076) (not e!153747))))

(declare-fun lt!119749 () ListLongMap!3577)

(assert (=> b!236729 (= res!116076 (not (contains!1678 lt!119749 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!236730 () Bool)

(declare-fun e!153746 () Bool)

(assert (=> b!236730 (= e!153746 (= lt!119749 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4394 thiss!1504))))))

(declare-fun b!236731 () Bool)

(declare-fun e!153748 () ListLongMap!3577)

(declare-fun call!22015 () ListLongMap!3577)

(assert (=> b!236731 (= e!153748 call!22015)))

(declare-fun b!236732 () Bool)

(declare-fun e!153745 () Bool)

(assert (=> b!236732 (= e!153747 e!153745)))

(declare-fun c!39440 () Bool)

(declare-fun e!153744 () Bool)

(assert (=> b!236732 (= c!39440 e!153744)))

(declare-fun res!116077 () Bool)

(assert (=> b!236732 (=> (not res!116077) (not e!153744))))

(assert (=> b!236732 (= res!116077 (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun b!236733 () Bool)

(declare-fun e!153749 () ListLongMap!3577)

(assert (=> b!236733 (= e!153749 e!153748)))

(declare-fun c!39439 () Bool)

(assert (=> b!236733 (= c!39439 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236734 () Bool)

(declare-fun lt!119747 () Unit!7277)

(declare-fun lt!119746 () Unit!7277)

(assert (=> b!236734 (= lt!119747 lt!119746)))

(declare-fun lt!119750 () (_ BitVec 64))

(declare-fun lt!119751 () (_ BitVec 64))

(declare-fun lt!119745 () ListLongMap!3577)

(declare-fun lt!119748 () V!7947)

(assert (=> b!236734 (not (contains!1678 (+!636 lt!119745 (tuple2!4651 lt!119751 lt!119748)) lt!119750))))

(declare-fun addStillNotContains!118 (ListLongMap!3577 (_ BitVec 64) V!7947 (_ BitVec 64)) Unit!7277)

(assert (=> b!236734 (= lt!119746 (addStillNotContains!118 lt!119745 lt!119751 lt!119748 lt!119750))))

(assert (=> b!236734 (= lt!119750 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!236734 (= lt!119748 (get!2863 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!236734 (= lt!119751 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236734 (= lt!119745 call!22015)))

(assert (=> b!236734 (= e!153748 (+!636 call!22015 (tuple2!4651 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000) (get!2863 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!236735 () Bool)

(assert (=> b!236735 (= e!153744 (validKeyInArray!0 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236735 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!22012 () Bool)

(assert (=> bm!22012 (= call!22015 (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4394 thiss!1504)))))

(declare-fun b!236736 () Bool)

(declare-fun e!153750 () Bool)

(assert (=> b!236736 (= e!153745 e!153750)))

(assert (=> b!236736 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun res!116074 () Bool)

(assert (=> b!236736 (= res!116074 (contains!1678 lt!119749 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236736 (=> (not res!116074) (not e!153750))))

(declare-fun b!236737 () Bool)

(declare-fun isEmpty!519 (ListLongMap!3577) Bool)

(assert (=> b!236737 (= e!153746 (isEmpty!519 lt!119749))))

(declare-fun b!236738 () Bool)

(assert (=> b!236738 (= e!153745 e!153746)))

(declare-fun c!39438 () Bool)

(assert (=> b!236738 (= c!39438 (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun b!236739 () Bool)

(assert (=> b!236739 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> b!236739 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5903 (_values!4377 thiss!1504))))))

(assert (=> b!236739 (= e!153750 (= (apply!214 lt!119749 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)) (get!2863 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!59375 () Bool)

(assert (=> d!59375 e!153747))

(declare-fun res!116075 () Bool)

(assert (=> d!59375 (=> (not res!116075) (not e!153747))))

(assert (=> d!59375 (= res!116075 (not (contains!1678 lt!119749 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!59375 (= lt!119749 e!153749)))

(declare-fun c!39441 () Bool)

(assert (=> d!59375 (= c!39441 (bvsge #b00000000000000000000000000000000 (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> d!59375 (validMask!0 (mask!10387 thiss!1504))))

(assert (=> d!59375 (= (getCurrentListMapNoExtraKeys!533 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)) lt!119749)))

(declare-fun b!236740 () Bool)

(assert (=> b!236740 (= e!153749 (ListLongMap!3578 Nil!3574))))

(assert (= (and d!59375 c!39441) b!236740))

(assert (= (and d!59375 (not c!39441)) b!236733))

(assert (= (and b!236733 c!39439) b!236734))

(assert (= (and b!236733 (not c!39439)) b!236731))

(assert (= (or b!236734 b!236731) bm!22012))

(assert (= (and d!59375 res!116075) b!236729))

(assert (= (and b!236729 res!116076) b!236732))

(assert (= (and b!236732 res!116077) b!236735))

(assert (= (and b!236732 c!39440) b!236736))

(assert (= (and b!236732 (not c!39440)) b!236738))

(assert (= (and b!236736 res!116074) b!236739))

(assert (= (and b!236738 c!39438) b!236730))

(assert (= (and b!236738 (not c!39438)) b!236737))

(declare-fun b_lambda!7961 () Bool)

(assert (=> (not b_lambda!7961) (not b!236734)))

(assert (=> b!236734 t!8568))

(declare-fun b_and!13327 () Bool)

(assert (= b_and!13325 (and (=> t!8568 result!5153) b_and!13327)))

(declare-fun b_lambda!7963 () Bool)

(assert (=> (not b_lambda!7963) (not b!236739)))

(assert (=> b!236739 t!8568))

(declare-fun b_and!13329 () Bool)

(assert (= b_and!13327 (and (=> t!8568 result!5153) b_and!13329)))

(declare-fun m!257541 () Bool)

(assert (=> d!59375 m!257541))

(assert (=> d!59375 m!257375))

(assert (=> b!236736 m!257447))

(assert (=> b!236736 m!257447))

(declare-fun m!257543 () Bool)

(assert (=> b!236736 m!257543))

(declare-fun m!257545 () Bool)

(assert (=> b!236734 m!257545))

(declare-fun m!257547 () Bool)

(assert (=> b!236734 m!257547))

(declare-fun m!257549 () Bool)

(assert (=> b!236734 m!257549))

(assert (=> b!236734 m!257469))

(assert (=> b!236734 m!257447))

(assert (=> b!236734 m!257471))

(assert (=> b!236734 m!257545))

(declare-fun m!257551 () Bool)

(assert (=> b!236734 m!257551))

(assert (=> b!236734 m!257469))

(assert (=> b!236734 m!257471))

(assert (=> b!236734 m!257473))

(declare-fun m!257553 () Bool)

(assert (=> b!236737 m!257553))

(declare-fun m!257555 () Bool)

(assert (=> bm!22012 m!257555))

(assert (=> b!236730 m!257555))

(declare-fun m!257557 () Bool)

(assert (=> b!236729 m!257557))

(assert (=> b!236735 m!257447))

(assert (=> b!236735 m!257447))

(assert (=> b!236735 m!257461))

(assert (=> b!236739 m!257447))

(declare-fun m!257559 () Bool)

(assert (=> b!236739 m!257559))

(assert (=> b!236739 m!257469))

(assert (=> b!236739 m!257469))

(assert (=> b!236739 m!257471))

(assert (=> b!236739 m!257473))

(assert (=> b!236739 m!257447))

(assert (=> b!236739 m!257471))

(assert (=> b!236733 m!257447))

(assert (=> b!236733 m!257447))

(assert (=> b!236733 m!257461))

(assert (=> bm!21997 d!59375))

(declare-fun d!59377 () Bool)

(declare-fun get!2864 (Option!277) V!7947)

(assert (=> d!59377 (= (apply!214 lt!119684 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2864 (getValueByKey!271 (toList!1804 lt!119684) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8742 () Bool)

(assert (= bs!8742 d!59377))

(assert (=> bs!8742 m!257537))

(assert (=> bs!8742 m!257537))

(declare-fun m!257561 () Bool)

(assert (=> bs!8742 m!257561))

(assert (=> b!236602 d!59377))

(declare-fun d!59379 () Bool)

(assert (=> d!59379 (= (apply!214 lt!119684 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)) (get!2864 (getValueByKey!271 (toList!1804 lt!119684) (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8743 () Bool)

(assert (= bs!8743 d!59379))

(assert (=> bs!8743 m!257447))

(declare-fun m!257563 () Bool)

(assert (=> bs!8743 m!257563))

(assert (=> bs!8743 m!257563))

(declare-fun m!257565 () Bool)

(assert (=> bs!8743 m!257565))

(assert (=> b!236587 d!59379))

(declare-fun d!59381 () Bool)

(declare-fun c!39444 () Bool)

(assert (=> d!59381 (= c!39444 ((_ is ValueCellFull!2769) (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!153753 () V!7947)

(assert (=> d!59381 (= (get!2863 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!153753)))

(declare-fun b!236745 () Bool)

(declare-fun get!2865 (ValueCell!2769 V!7947) V!7947)

(assert (=> b!236745 (= e!153753 (get!2865 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!236746 () Bool)

(declare-fun get!2866 (ValueCell!2769 V!7947) V!7947)

(assert (=> b!236746 (= e!153753 (get!2866 (select (arr!5565 (_values!4377 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!552 (defaultEntry!4394 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59381 c!39444) b!236745))

(assert (= (and d!59381 (not c!39444)) b!236746))

(assert (=> b!236745 m!257469))

(assert (=> b!236745 m!257471))

(declare-fun m!257567 () Bool)

(assert (=> b!236745 m!257567))

(assert (=> b!236746 m!257469))

(assert (=> b!236746 m!257471))

(declare-fun m!257569 () Bool)

(assert (=> b!236746 m!257569))

(assert (=> b!236587 d!59381))

(declare-fun d!59383 () Bool)

(declare-fun e!153754 () Bool)

(assert (=> d!59383 e!153754))

(declare-fun res!116079 () Bool)

(assert (=> d!59383 (=> (not res!116079) (not e!153754))))

(declare-fun lt!119754 () ListLongMap!3577)

(assert (=> d!59383 (= res!116079 (contains!1678 lt!119754 (_1!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))))))

(declare-fun lt!119755 () List!3577)

(assert (=> d!59383 (= lt!119754 (ListLongMap!3578 lt!119755))))

(declare-fun lt!119752 () Unit!7277)

(declare-fun lt!119753 () Unit!7277)

(assert (=> d!59383 (= lt!119752 lt!119753)))

(assert (=> d!59383 (= (getValueByKey!271 lt!119755 (_1!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))))))

(assert (=> d!59383 (= lt!119753 (lemmaContainsTupThenGetReturnValue!153 lt!119755 (_1!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))))))

(assert (=> d!59383 (= lt!119755 (insertStrictlySorted!155 (toList!1804 lt!119678) (_1!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))))))

(assert (=> d!59383 (= (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))) lt!119754)))

(declare-fun b!236747 () Bool)

(declare-fun res!116078 () Bool)

(assert (=> b!236747 (=> (not res!116078) (not e!153754))))

(assert (=> b!236747 (= res!116078 (= (getValueByKey!271 (toList!1804 lt!119754) (_1!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))))))))

(declare-fun b!236748 () Bool)

(assert (=> b!236748 (= e!153754 (contains!1680 (toList!1804 lt!119754) (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))))))

(assert (= (and d!59383 res!116079) b!236747))

(assert (= (and b!236747 res!116078) b!236748))

(declare-fun m!257571 () Bool)

(assert (=> d!59383 m!257571))

(declare-fun m!257573 () Bool)

(assert (=> d!59383 m!257573))

(declare-fun m!257575 () Bool)

(assert (=> d!59383 m!257575))

(declare-fun m!257577 () Bool)

(assert (=> d!59383 m!257577))

(declare-fun m!257579 () Bool)

(assert (=> b!236747 m!257579))

(declare-fun m!257581 () Bool)

(assert (=> b!236748 m!257581))

(assert (=> b!236600 d!59383))

(declare-fun d!59385 () Bool)

(assert (=> d!59385 (= (apply!214 (+!636 lt!119672 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))) lt!119692) (get!2864 (getValueByKey!271 (toList!1804 (+!636 lt!119672 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))) lt!119692)))))

(declare-fun bs!8744 () Bool)

(assert (= bs!8744 d!59385))

(declare-fun m!257583 () Bool)

(assert (=> bs!8744 m!257583))

(assert (=> bs!8744 m!257583))

(declare-fun m!257585 () Bool)

(assert (=> bs!8744 m!257585))

(assert (=> b!236600 d!59385))

(declare-fun d!59387 () Bool)

(declare-fun e!153755 () Bool)

(assert (=> d!59387 e!153755))

(declare-fun res!116081 () Bool)

(assert (=> d!59387 (=> (not res!116081) (not e!153755))))

(declare-fun lt!119758 () ListLongMap!3577)

(assert (=> d!59387 (= res!116081 (contains!1678 lt!119758 (_1!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))))))

(declare-fun lt!119759 () List!3577)

(assert (=> d!59387 (= lt!119758 (ListLongMap!3578 lt!119759))))

(declare-fun lt!119756 () Unit!7277)

(declare-fun lt!119757 () Unit!7277)

(assert (=> d!59387 (= lt!119756 lt!119757)))

(assert (=> d!59387 (= (getValueByKey!271 lt!119759 (_1!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))))))

(assert (=> d!59387 (= lt!119757 (lemmaContainsTupThenGetReturnValue!153 lt!119759 (_1!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))))))

(assert (=> d!59387 (= lt!119759 (insertStrictlySorted!155 (toList!1804 lt!119691) (_1!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))))))

(assert (=> d!59387 (= (+!636 lt!119691 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))) lt!119758)))

(declare-fun b!236749 () Bool)

(declare-fun res!116080 () Bool)

(assert (=> b!236749 (=> (not res!116080) (not e!153755))))

(assert (=> b!236749 (= res!116080 (= (getValueByKey!271 (toList!1804 lt!119758) (_1!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))))))))

(declare-fun b!236750 () Bool)

(assert (=> b!236750 (= e!153755 (contains!1680 (toList!1804 lt!119758) (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))))))

(assert (= (and d!59387 res!116081) b!236749))

(assert (= (and b!236749 res!116080) b!236750))

(declare-fun m!257587 () Bool)

(assert (=> d!59387 m!257587))

(declare-fun m!257589 () Bool)

(assert (=> d!59387 m!257589))

(declare-fun m!257591 () Bool)

(assert (=> d!59387 m!257591))

(declare-fun m!257593 () Bool)

(assert (=> d!59387 m!257593))

(declare-fun m!257595 () Bool)

(assert (=> b!236749 m!257595))

(declare-fun m!257597 () Bool)

(assert (=> b!236750 m!257597))

(assert (=> b!236600 d!59387))

(declare-fun d!59389 () Bool)

(assert (=> d!59389 (= (apply!214 (+!636 lt!119691 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))) lt!119671) (apply!214 lt!119691 lt!119671))))

(declare-fun lt!119762 () Unit!7277)

(declare-fun choose!1115 (ListLongMap!3577 (_ BitVec 64) V!7947 (_ BitVec 64)) Unit!7277)

(assert (=> d!59389 (= lt!119762 (choose!1115 lt!119691 lt!119674 (zeroValue!4235 thiss!1504) lt!119671))))

(declare-fun e!153758 () Bool)

(assert (=> d!59389 e!153758))

(declare-fun res!116084 () Bool)

(assert (=> d!59389 (=> (not res!116084) (not e!153758))))

(assert (=> d!59389 (= res!116084 (contains!1678 lt!119691 lt!119671))))

(assert (=> d!59389 (= (addApplyDifferent!190 lt!119691 lt!119674 (zeroValue!4235 thiss!1504) lt!119671) lt!119762)))

(declare-fun b!236754 () Bool)

(assert (=> b!236754 (= e!153758 (not (= lt!119671 lt!119674)))))

(assert (= (and d!59389 res!116084) b!236754))

(assert (=> d!59389 m!257437))

(assert (=> d!59389 m!257435))

(assert (=> d!59389 m!257451))

(declare-fun m!257599 () Bool)

(assert (=> d!59389 m!257599))

(declare-fun m!257601 () Bool)

(assert (=> d!59389 m!257601))

(assert (=> d!59389 m!257435))

(assert (=> b!236600 d!59389))

(declare-fun d!59391 () Bool)

(declare-fun e!153759 () Bool)

(assert (=> d!59391 e!153759))

(declare-fun res!116086 () Bool)

(assert (=> d!59391 (=> (not res!116086) (not e!153759))))

(declare-fun lt!119765 () ListLongMap!3577)

(assert (=> d!59391 (= res!116086 (contains!1678 lt!119765 (_1!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))))))

(declare-fun lt!119766 () List!3577)

(assert (=> d!59391 (= lt!119765 (ListLongMap!3578 lt!119766))))

(declare-fun lt!119763 () Unit!7277)

(declare-fun lt!119764 () Unit!7277)

(assert (=> d!59391 (= lt!119763 lt!119764)))

(assert (=> d!59391 (= (getValueByKey!271 lt!119766 (_1!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))))))

(assert (=> d!59391 (= lt!119764 (lemmaContainsTupThenGetReturnValue!153 lt!119766 (_1!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))))))

(assert (=> d!59391 (= lt!119766 (insertStrictlySorted!155 (toList!1804 lt!119672) (_1!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))))))

(assert (=> d!59391 (= (+!636 lt!119672 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))) lt!119765)))

(declare-fun b!236755 () Bool)

(declare-fun res!116085 () Bool)

(assert (=> b!236755 (=> (not res!116085) (not e!153759))))

(assert (=> b!236755 (= res!116085 (= (getValueByKey!271 (toList!1804 lt!119765) (_1!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))))))))

(declare-fun b!236756 () Bool)

(assert (=> b!236756 (= e!153759 (contains!1680 (toList!1804 lt!119765) (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))))))

(assert (= (and d!59391 res!116086) b!236755))

(assert (= (and b!236755 res!116085) b!236756))

(declare-fun m!257603 () Bool)

(assert (=> d!59391 m!257603))

(declare-fun m!257605 () Bool)

(assert (=> d!59391 m!257605))

(declare-fun m!257607 () Bool)

(assert (=> d!59391 m!257607))

(declare-fun m!257609 () Bool)

(assert (=> d!59391 m!257609))

(declare-fun m!257611 () Bool)

(assert (=> b!236755 m!257611))

(declare-fun m!257613 () Bool)

(assert (=> b!236756 m!257613))

(assert (=> b!236600 d!59391))

(declare-fun d!59393 () Bool)

(declare-fun e!153760 () Bool)

(assert (=> d!59393 e!153760))

(declare-fun res!116088 () Bool)

(assert (=> d!59393 (=> (not res!116088) (not e!153760))))

(declare-fun lt!119769 () ListLongMap!3577)

(assert (=> d!59393 (= res!116088 (contains!1678 lt!119769 (_1!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))))))

(declare-fun lt!119770 () List!3577)

(assert (=> d!59393 (= lt!119769 (ListLongMap!3578 lt!119770))))

(declare-fun lt!119767 () Unit!7277)

(declare-fun lt!119768 () Unit!7277)

(assert (=> d!59393 (= lt!119767 lt!119768)))

(assert (=> d!59393 (= (getValueByKey!271 lt!119770 (_1!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))))))

(assert (=> d!59393 (= lt!119768 (lemmaContainsTupThenGetReturnValue!153 lt!119770 (_1!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))))))

(assert (=> d!59393 (= lt!119770 (insertStrictlySorted!155 (toList!1804 lt!119688) (_1!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))) (_2!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))))))

(assert (=> d!59393 (= (+!636 lt!119688 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))) lt!119769)))

(declare-fun b!236757 () Bool)

(declare-fun res!116087 () Bool)

(assert (=> b!236757 (=> (not res!116087) (not e!153760))))

(assert (=> b!236757 (= res!116087 (= (getValueByKey!271 (toList!1804 lt!119769) (_1!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))) (Some!276 (_2!2335 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))))))))

(declare-fun b!236758 () Bool)

(assert (=> b!236758 (= e!153760 (contains!1680 (toList!1804 lt!119769) (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))))))

(assert (= (and d!59393 res!116088) b!236757))

(assert (= (and b!236757 res!116087) b!236758))

(declare-fun m!257615 () Bool)

(assert (=> d!59393 m!257615))

(declare-fun m!257617 () Bool)

(assert (=> d!59393 m!257617))

(declare-fun m!257619 () Bool)

(assert (=> d!59393 m!257619))

(declare-fun m!257621 () Bool)

(assert (=> d!59393 m!257621))

(declare-fun m!257623 () Bool)

(assert (=> b!236757 m!257623))

(declare-fun m!257625 () Bool)

(assert (=> b!236758 m!257625))

(assert (=> b!236600 d!59393))

(declare-fun d!59395 () Bool)

(assert (=> d!59395 (= (apply!214 (+!636 lt!119691 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504))) lt!119671) (get!2864 (getValueByKey!271 (toList!1804 (+!636 lt!119691 (tuple2!4651 lt!119674 (zeroValue!4235 thiss!1504)))) lt!119671)))))

(declare-fun bs!8745 () Bool)

(assert (= bs!8745 d!59395))

(declare-fun m!257627 () Bool)

(assert (=> bs!8745 m!257627))

(assert (=> bs!8745 m!257627))

(declare-fun m!257629 () Bool)

(assert (=> bs!8745 m!257629))

(assert (=> b!236600 d!59395))

(declare-fun d!59397 () Bool)

(assert (=> d!59397 (= (apply!214 (+!636 lt!119688 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))) lt!119679) (get!2864 (getValueByKey!271 (toList!1804 (+!636 lt!119688 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504)))) lt!119679)))))

(declare-fun bs!8746 () Bool)

(assert (= bs!8746 d!59397))

(declare-fun m!257631 () Bool)

(assert (=> bs!8746 m!257631))

(assert (=> bs!8746 m!257631))

(declare-fun m!257633 () Bool)

(assert (=> bs!8746 m!257633))

(assert (=> b!236600 d!59397))

(declare-fun d!59399 () Bool)

(assert (=> d!59399 (= (apply!214 lt!119672 lt!119692) (get!2864 (getValueByKey!271 (toList!1804 lt!119672) lt!119692)))))

(declare-fun bs!8747 () Bool)

(assert (= bs!8747 d!59399))

(declare-fun m!257635 () Bool)

(assert (=> bs!8747 m!257635))

(assert (=> bs!8747 m!257635))

(declare-fun m!257637 () Bool)

(assert (=> bs!8747 m!257637))

(assert (=> b!236600 d!59399))

(declare-fun d!59401 () Bool)

(assert (=> d!59401 (= (apply!214 lt!119688 lt!119679) (get!2864 (getValueByKey!271 (toList!1804 lt!119688) lt!119679)))))

(declare-fun bs!8748 () Bool)

(assert (= bs!8748 d!59401))

(declare-fun m!257639 () Bool)

(assert (=> bs!8748 m!257639))

(assert (=> bs!8748 m!257639))

(declare-fun m!257641 () Bool)

(assert (=> bs!8748 m!257641))

(assert (=> b!236600 d!59401))

(declare-fun d!59403 () Bool)

(assert (=> d!59403 (= (apply!214 (+!636 lt!119688 (tuple2!4651 lt!119682 (minValue!4235 thiss!1504))) lt!119679) (apply!214 lt!119688 lt!119679))))

(declare-fun lt!119771 () Unit!7277)

(assert (=> d!59403 (= lt!119771 (choose!1115 lt!119688 lt!119682 (minValue!4235 thiss!1504) lt!119679))))

(declare-fun e!153761 () Bool)

(assert (=> d!59403 e!153761))

(declare-fun res!116089 () Bool)

(assert (=> d!59403 (=> (not res!116089) (not e!153761))))

(assert (=> d!59403 (= res!116089 (contains!1678 lt!119688 lt!119679))))

(assert (=> d!59403 (= (addApplyDifferent!190 lt!119688 lt!119682 (minValue!4235 thiss!1504) lt!119679) lt!119771)))

(declare-fun b!236759 () Bool)

(assert (=> b!236759 (= e!153761 (not (= lt!119679 lt!119682)))))

(assert (= (and d!59403 res!116089) b!236759))

(assert (=> d!59403 m!257459))

(assert (=> d!59403 m!257431))

(assert (=> d!59403 m!257433))

(declare-fun m!257643 () Bool)

(assert (=> d!59403 m!257643))

(declare-fun m!257645 () Bool)

(assert (=> d!59403 m!257645))

(assert (=> d!59403 m!257431))

(assert (=> b!236600 d!59403))

(declare-fun d!59405 () Bool)

(assert (=> d!59405 (= (apply!214 (+!636 lt!119672 (tuple2!4651 lt!119689 (minValue!4235 thiss!1504))) lt!119692) (apply!214 lt!119672 lt!119692))))

(declare-fun lt!119772 () Unit!7277)

(assert (=> d!59405 (= lt!119772 (choose!1115 lt!119672 lt!119689 (minValue!4235 thiss!1504) lt!119692))))

(declare-fun e!153762 () Bool)

(assert (=> d!59405 e!153762))

(declare-fun res!116090 () Bool)

(assert (=> d!59405 (=> (not res!116090) (not e!153762))))

(assert (=> d!59405 (= res!116090 (contains!1678 lt!119672 lt!119692))))

(assert (=> d!59405 (= (addApplyDifferent!190 lt!119672 lt!119689 (minValue!4235 thiss!1504) lt!119692) lt!119772)))

(declare-fun b!236760 () Bool)

(assert (=> b!236760 (= e!153762 (not (= lt!119692 lt!119689)))))

(assert (= (and d!59405 res!116090) b!236760))

(assert (=> d!59405 m!257455))

(assert (=> d!59405 m!257427))

(assert (=> d!59405 m!257429))

(declare-fun m!257647 () Bool)

(assert (=> d!59405 m!257647))

(declare-fun m!257649 () Bool)

(assert (=> d!59405 m!257649))

(assert (=> d!59405 m!257427))

(assert (=> b!236600 d!59405))

(declare-fun d!59407 () Bool)

(declare-fun e!153763 () Bool)

(assert (=> d!59407 e!153763))

(declare-fun res!116091 () Bool)

(assert (=> d!59407 (=> res!116091 e!153763)))

(declare-fun lt!119775 () Bool)

(assert (=> d!59407 (= res!116091 (not lt!119775))))

(declare-fun lt!119774 () Bool)

(assert (=> d!59407 (= lt!119775 lt!119774)))

(declare-fun lt!119776 () Unit!7277)

(declare-fun e!153764 () Unit!7277)

(assert (=> d!59407 (= lt!119776 e!153764)))

(declare-fun c!39445 () Bool)

(assert (=> d!59407 (= c!39445 lt!119774)))

(assert (=> d!59407 (= lt!119774 (containsKey!263 (toList!1804 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))) lt!119673))))

(assert (=> d!59407 (= (contains!1678 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))) lt!119673) lt!119775)))

(declare-fun b!236761 () Bool)

(declare-fun lt!119773 () Unit!7277)

(assert (=> b!236761 (= e!153764 lt!119773)))

(assert (=> b!236761 (= lt!119773 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!1804 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))) lt!119673))))

(assert (=> b!236761 (isDefined!213 (getValueByKey!271 (toList!1804 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))) lt!119673))))

(declare-fun b!236762 () Bool)

(declare-fun Unit!7283 () Unit!7277)

(assert (=> b!236762 (= e!153764 Unit!7283)))

(declare-fun b!236763 () Bool)

(assert (=> b!236763 (= e!153763 (isDefined!213 (getValueByKey!271 (toList!1804 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504)))) lt!119673)))))

(assert (= (and d!59407 c!39445) b!236761))

(assert (= (and d!59407 (not c!39445)) b!236762))

(assert (= (and d!59407 (not res!116091)) b!236763))

(declare-fun m!257651 () Bool)

(assert (=> d!59407 m!257651))

(declare-fun m!257653 () Bool)

(assert (=> b!236761 m!257653))

(declare-fun m!257655 () Bool)

(assert (=> b!236761 m!257655))

(assert (=> b!236761 m!257655))

(declare-fun m!257657 () Bool)

(assert (=> b!236761 m!257657))

(assert (=> b!236763 m!257655))

(assert (=> b!236763 m!257655))

(assert (=> b!236763 m!257657))

(assert (=> b!236600 d!59407))

(assert (=> b!236600 d!59375))

(declare-fun d!59409 () Bool)

(assert (=> d!59409 (contains!1678 (+!636 lt!119678 (tuple2!4651 lt!119676 (zeroValue!4235 thiss!1504))) lt!119673)))

(declare-fun lt!119779 () Unit!7277)

(declare-fun choose!1116 (ListLongMap!3577 (_ BitVec 64) V!7947 (_ BitVec 64)) Unit!7277)

(assert (=> d!59409 (= lt!119779 (choose!1116 lt!119678 lt!119676 (zeroValue!4235 thiss!1504) lt!119673))))

(assert (=> d!59409 (contains!1678 lt!119678 lt!119673)))

(assert (=> d!59409 (= (addStillContains!190 lt!119678 lt!119676 (zeroValue!4235 thiss!1504) lt!119673) lt!119779)))

(declare-fun bs!8749 () Bool)

(assert (= bs!8749 d!59409))

(assert (=> bs!8749 m!257441))

(assert (=> bs!8749 m!257441))

(assert (=> bs!8749 m!257443))

(declare-fun m!257659 () Bool)

(assert (=> bs!8749 m!257659))

(declare-fun m!257661 () Bool)

(assert (=> bs!8749 m!257661))

(assert (=> b!236600 d!59409))

(declare-fun d!59411 () Bool)

(assert (=> d!59411 (= (apply!214 lt!119691 lt!119671) (get!2864 (getValueByKey!271 (toList!1804 lt!119691) lt!119671)))))

(declare-fun bs!8750 () Bool)

(assert (= bs!8750 d!59411))

(declare-fun m!257663 () Bool)

(assert (=> bs!8750 m!257663))

(assert (=> bs!8750 m!257663))

(declare-fun m!257665 () Bool)

(assert (=> bs!8750 m!257665))

(assert (=> b!236600 d!59411))

(assert (=> d!59351 d!59353))

(declare-fun b!236783 () Bool)

(declare-fun e!153776 () SeekEntryResult!1012)

(assert (=> b!236783 (= e!153776 (Intermediate!1012 true (toIndex!0 key!932 (mask!10387 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!236784 () Bool)

(declare-fun e!153778 () SeekEntryResult!1012)

(assert (=> b!236784 (= e!153778 (Intermediate!1012 false (toIndex!0 key!932 (mask!10387 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!236785 () Bool)

(declare-fun e!153777 () Bool)

(declare-fun e!153779 () Bool)

(assert (=> b!236785 (= e!153777 e!153779)))

(declare-fun res!116099 () Bool)

(declare-fun lt!119784 () SeekEntryResult!1012)

(assert (=> b!236785 (= res!116099 (and ((_ is Intermediate!1012) lt!119784) (not (undefined!1824 lt!119784)) (bvslt (x!23894 lt!119784) #b01111111111111111111111111111110) (bvsge (x!23894 lt!119784) #b00000000000000000000000000000000) (bvsge (x!23894 lt!119784) #b00000000000000000000000000000000)))))

(assert (=> b!236785 (=> (not res!116099) (not e!153779))))

(declare-fun b!236786 () Bool)

(assert (=> b!236786 (= e!153776 e!153778)))

(declare-fun c!39452 () Bool)

(declare-fun lt!119785 () (_ BitVec 64))

(assert (=> b!236786 (= c!39452 (or (= lt!119785 key!932) (= (bvadd lt!119785 lt!119785) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!236787 () Bool)

(assert (=> b!236787 (= e!153777 (bvsge (x!23894 lt!119784) #b01111111111111111111111111111110))))

(declare-fun b!236788 () Bool)

(assert (=> b!236788 (and (bvsge (index!6220 lt!119784) #b00000000000000000000000000000000) (bvslt (index!6220 lt!119784) (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun res!116098 () Bool)

(assert (=> b!236788 (= res!116098 (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6220 lt!119784)) key!932))))

(declare-fun e!153775 () Bool)

(assert (=> b!236788 (=> res!116098 e!153775)))

(assert (=> b!236788 (= e!153779 e!153775)))

(declare-fun b!236789 () Bool)

(assert (=> b!236789 (and (bvsge (index!6220 lt!119784) #b00000000000000000000000000000000) (bvslt (index!6220 lt!119784) (size!5904 (_keys!6477 thiss!1504))))))

(assert (=> b!236789 (= e!153775 (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6220 lt!119784)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!59413 () Bool)

(assert (=> d!59413 e!153777))

(declare-fun c!39454 () Bool)

(assert (=> d!59413 (= c!39454 (and ((_ is Intermediate!1012) lt!119784) (undefined!1824 lt!119784)))))

(assert (=> d!59413 (= lt!119784 e!153776)))

(declare-fun c!39453 () Bool)

(assert (=> d!59413 (= c!39453 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!59413 (= lt!119785 (select (arr!5566 (_keys!6477 thiss!1504)) (toIndex!0 key!932 (mask!10387 thiss!1504))))))

(assert (=> d!59413 (validMask!0 (mask!10387 thiss!1504))))

(assert (=> d!59413 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10387 thiss!1504)) key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)) lt!119784)))

(declare-fun b!236790 () Bool)

(assert (=> b!236790 (and (bvsge (index!6220 lt!119784) #b00000000000000000000000000000000) (bvslt (index!6220 lt!119784) (size!5904 (_keys!6477 thiss!1504))))))

(declare-fun res!116100 () Bool)

(assert (=> b!236790 (= res!116100 (= (select (arr!5566 (_keys!6477 thiss!1504)) (index!6220 lt!119784)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236790 (=> res!116100 e!153775)))

(declare-fun b!236791 () Bool)

(assert (=> b!236791 (= e!153778 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10387 thiss!1504)) #b00000000000000000000000000000000 (mask!10387 thiss!1504)) key!932 (_keys!6477 thiss!1504) (mask!10387 thiss!1504)))))

(assert (= (and d!59413 c!39453) b!236783))

(assert (= (and d!59413 (not c!39453)) b!236786))

(assert (= (and b!236786 c!39452) b!236784))

(assert (= (and b!236786 (not c!39452)) b!236791))

(assert (= (and d!59413 c!39454) b!236787))

(assert (= (and d!59413 (not c!39454)) b!236785))

(assert (= (and b!236785 res!116099) b!236788))

(assert (= (and b!236788 (not res!116098)) b!236790))

(assert (= (and b!236790 (not res!116100)) b!236789))

(declare-fun m!257667 () Bool)

(assert (=> b!236789 m!257667))

(assert (=> b!236788 m!257667))

(assert (=> b!236791 m!257407))

(declare-fun m!257669 () Bool)

(assert (=> b!236791 m!257669))

(assert (=> b!236791 m!257669))

(declare-fun m!257671 () Bool)

(assert (=> b!236791 m!257671))

(assert (=> d!59413 m!257407))

(declare-fun m!257673 () Bool)

(assert (=> d!59413 m!257673))

(assert (=> d!59413 m!257375))

(assert (=> b!236790 m!257667))

(assert (=> d!59341 d!59413))

(declare-fun d!59415 () Bool)

(declare-fun lt!119791 () (_ BitVec 32))

(declare-fun lt!119790 () (_ BitVec 32))

(assert (=> d!59415 (= lt!119791 (bvmul (bvxor lt!119790 (bvlshr lt!119790 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59415 (= lt!119790 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59415 (and (bvsge (mask!10387 thiss!1504) #b00000000000000000000000000000000) (let ((res!116101 (let ((h!4228 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23913 (bvmul (bvxor h!4228 (bvlshr h!4228 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23913 (bvlshr x!23913 #b00000000000000000000000000001101)) (mask!10387 thiss!1504)))))) (and (bvslt res!116101 (bvadd (mask!10387 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!116101 #b00000000000000000000000000000000))))))

(assert (=> d!59415 (= (toIndex!0 key!932 (mask!10387 thiss!1504)) (bvand (bvxor lt!119791 (bvlshr lt!119791 #b00000000000000000000000000001101)) (mask!10387 thiss!1504)))))

(assert (=> d!59341 d!59415))

(assert (=> d!59341 d!59353))

(declare-fun d!59417 () Bool)

(declare-fun isEmpty!520 (Option!277) Bool)

(assert (=> d!59417 (= (isDefined!213 (getValueByKey!271 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932)) (not (isEmpty!520 (getValueByKey!271 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))))

(declare-fun bs!8751 () Bool)

(assert (= bs!8751 d!59417))

(assert (=> bs!8751 m!257423))

(declare-fun m!257675 () Bool)

(assert (=> bs!8751 m!257675))

(assert (=> b!236544 d!59417))

(declare-fun d!59419 () Bool)

(declare-fun c!39459 () Bool)

(assert (=> d!59419 (= c!39459 (and ((_ is Cons!3573) (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))) (= (_1!2335 (h!4226 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))))) key!932)))))

(declare-fun e!153784 () Option!277)

(assert (=> d!59419 (= (getValueByKey!271 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932) e!153784)))

(declare-fun b!236801 () Bool)

(declare-fun e!153785 () Option!277)

(assert (=> b!236801 (= e!153784 e!153785)))

(declare-fun c!39460 () Bool)

(assert (=> b!236801 (= c!39460 (and ((_ is Cons!3573) (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))) (not (= (_1!2335 (h!4226 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))))) key!932))))))

(declare-fun b!236803 () Bool)

(assert (=> b!236803 (= e!153785 None!275)))

(declare-fun b!236800 () Bool)

(assert (=> b!236800 (= e!153784 (Some!276 (_2!2335 (h!4226 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))))))

(declare-fun b!236802 () Bool)

(assert (=> b!236802 (= e!153785 (getValueByKey!271 (t!8566 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))) key!932))))

(assert (= (and d!59419 c!39459) b!236800))

(assert (= (and d!59419 (not c!39459)) b!236801))

(assert (= (and b!236801 c!39460) b!236802))

(assert (= (and b!236801 (not c!39460)) b!236803))

(declare-fun m!257677 () Bool)

(assert (=> b!236802 m!257677))

(assert (=> b!236544 d!59419))

(declare-fun d!59421 () Bool)

(assert (=> d!59421 (= (apply!214 lt!119684 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2864 (getValueByKey!271 (toList!1804 lt!119684) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8752 () Bool)

(assert (= bs!8752 d!59421))

(assert (=> bs!8752 m!257507))

(assert (=> bs!8752 m!257507))

(declare-fun m!257679 () Bool)

(assert (=> bs!8752 m!257679))

(assert (=> b!236592 d!59421))

(declare-fun d!59423 () Bool)

(assert (=> d!59423 (isDefined!213 (getValueByKey!271 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))

(declare-fun lt!119794 () Unit!7277)

(declare-fun choose!1117 (List!3577 (_ BitVec 64)) Unit!7277)

(assert (=> d!59423 (= lt!119794 (choose!1117 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))

(declare-fun e!153788 () Bool)

(assert (=> d!59423 e!153788))

(declare-fun res!116104 () Bool)

(assert (=> d!59423 (=> (not res!116104) (not e!153788))))

(declare-fun isStrictlySorted!359 (List!3577) Bool)

(assert (=> d!59423 (= res!116104 (isStrictlySorted!359 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504)))))))

(assert (=> d!59423 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932) lt!119794)))

(declare-fun b!236806 () Bool)

(assert (=> b!236806 (= e!153788 (containsKey!263 (toList!1804 (getCurrentListMap!1327 (_keys!6477 thiss!1504) (_values!4377 thiss!1504) (mask!10387 thiss!1504) (extraKeys!4131 thiss!1504) (zeroValue!4235 thiss!1504) (minValue!4235 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4394 thiss!1504))) key!932))))

(assert (= (and d!59423 res!116104) b!236806))

(assert (=> d!59423 m!257423))

(assert (=> d!59423 m!257423))

(assert (=> d!59423 m!257425))

(declare-fun m!257681 () Bool)

(assert (=> d!59423 m!257681))

(declare-fun m!257683 () Bool)

(assert (=> d!59423 m!257683))

(assert (=> b!236806 m!257419))

(assert (=> b!236542 d!59423))

(assert (=> b!236542 d!59417))

(assert (=> b!236542 d!59419))

(declare-fun d!59425 () Bool)

(declare-fun e!153789 () Bool)

(assert (=> d!59425 e!153789))

(declare-fun res!116105 () Bool)

(assert (=> d!59425 (=> res!116105 e!153789)))

(declare-fun lt!119797 () Bool)

(assert (=> d!59425 (= res!116105 (not lt!119797))))

(declare-fun lt!119796 () Bool)

(assert (=> d!59425 (= lt!119797 lt!119796)))

(declare-fun lt!119798 () Unit!7277)

(declare-fun e!153790 () Unit!7277)

(assert (=> d!59425 (= lt!119798 e!153790)))

(declare-fun c!39461 () Bool)

(assert (=> d!59425 (= c!39461 lt!119796)))

(assert (=> d!59425 (= lt!119796 (containsKey!263 (toList!1804 lt!119684) (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59425 (= (contains!1678 lt!119684 (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)) lt!119797)))

(declare-fun b!236807 () Bool)

(declare-fun lt!119795 () Unit!7277)

(assert (=> b!236807 (= e!153790 lt!119795)))

(assert (=> b!236807 (= lt!119795 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!1804 lt!119684) (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236807 (isDefined!213 (getValueByKey!271 (toList!1804 lt!119684) (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236808 () Bool)

(declare-fun Unit!7284 () Unit!7277)

(assert (=> b!236808 (= e!153790 Unit!7284)))

(declare-fun b!236809 () Bool)

(assert (=> b!236809 (= e!153789 (isDefined!213 (getValueByKey!271 (toList!1804 lt!119684) (select (arr!5566 (_keys!6477 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59425 c!39461) b!236807))

(assert (= (and d!59425 (not c!39461)) b!236808))

(assert (= (and d!59425 (not res!116105)) b!236809))

(assert (=> d!59425 m!257447))

(declare-fun m!257685 () Bool)

(assert (=> d!59425 m!257685))

(assert (=> b!236807 m!257447))

(declare-fun m!257687 () Bool)

(assert (=> b!236807 m!257687))

(assert (=> b!236807 m!257447))

(assert (=> b!236807 m!257563))

(assert (=> b!236807 m!257563))

(declare-fun m!257689 () Bool)

(assert (=> b!236807 m!257689))

(assert (=> b!236809 m!257447))

(assert (=> b!236809 m!257563))

(assert (=> b!236809 m!257563))

(assert (=> b!236809 m!257689))

(assert (=> b!236607 d!59425))

(declare-fun d!59427 () Bool)

(declare-fun e!153791 () Bool)

(assert (=> d!59427 e!153791))

(declare-fun res!116107 () Bool)

(assert (=> d!59427 (=> (not res!116107) (not e!153791))))

(declare-fun lt!119801 () ListLongMap!3577)

(assert (=> d!59427 (= res!116107 (contains!1678 lt!119801 (_1!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))))

(declare-fun lt!119802 () List!3577)

(assert (=> d!59427 (= lt!119801 (ListLongMap!3578 lt!119802))))

(declare-fun lt!119799 () Unit!7277)

(declare-fun lt!119800 () Unit!7277)

(assert (=> d!59427 (= lt!119799 lt!119800)))

(assert (=> d!59427 (= (getValueByKey!271 lt!119802 (_1!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))) (Some!276 (_2!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))))

(assert (=> d!59427 (= lt!119800 (lemmaContainsTupThenGetReturnValue!153 lt!119802 (_1!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))) (_2!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))))

(assert (=> d!59427 (= lt!119802 (insertStrictlySorted!155 (toList!1804 (ite c!39405 call!21997 (ite c!39403 call!21999 call!22001))) (_1!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))) (_2!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))))))

(assert (=> d!59427 (= (+!636 (ite c!39405 call!21997 (ite c!39403 call!21999 call!22001)) (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))) lt!119801)))

(declare-fun b!236810 () Bool)

(declare-fun res!116106 () Bool)

(assert (=> b!236810 (=> (not res!116106) (not e!153791))))

(assert (=> b!236810 (= res!116106 (= (getValueByKey!271 (toList!1804 lt!119801) (_1!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504))))) (Some!276 (_2!2335 (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))))

(declare-fun b!236811 () Bool)

(assert (=> b!236811 (= e!153791 (contains!1680 (toList!1804 lt!119801) (ite (or c!39405 c!39403) (tuple2!4651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4235 thiss!1504)) (tuple2!4651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4235 thiss!1504)))))))

(assert (= (and d!59427 res!116107) b!236810))

(assert (= (and b!236810 res!116106) b!236811))

(declare-fun m!257691 () Bool)

(assert (=> d!59427 m!257691))

(declare-fun m!257693 () Bool)

(assert (=> d!59427 m!257693))

(declare-fun m!257695 () Bool)

(assert (=> d!59427 m!257695))

(declare-fun m!257697 () Bool)

(assert (=> d!59427 m!257697))

(declare-fun m!257699 () Bool)

(assert (=> b!236810 m!257699))

(declare-fun m!257701 () Bool)

(assert (=> b!236811 m!257701))

(assert (=> bm!21996 d!59427))

(assert (=> b!236598 d!59355))

(declare-fun mapNonEmpty!10552 () Bool)

(declare-fun mapRes!10552 () Bool)

(declare-fun tp!22279 () Bool)

(declare-fun e!153792 () Bool)

(assert (=> mapNonEmpty!10552 (= mapRes!10552 (and tp!22279 e!153792))))

(declare-fun mapKey!10552 () (_ BitVec 32))

(declare-fun mapRest!10552 () (Array (_ BitVec 32) ValueCell!2769))

(declare-fun mapValue!10552 () ValueCell!2769)

(assert (=> mapNonEmpty!10552 (= mapRest!10551 (store mapRest!10552 mapKey!10552 mapValue!10552))))

(declare-fun condMapEmpty!10552 () Bool)

(declare-fun mapDefault!10552 () ValueCell!2769)

(assert (=> mapNonEmpty!10551 (= condMapEmpty!10552 (= mapRest!10551 ((as const (Array (_ BitVec 32) ValueCell!2769)) mapDefault!10552)))))

(declare-fun e!153793 () Bool)

(assert (=> mapNonEmpty!10551 (= tp!22278 (and e!153793 mapRes!10552))))

(declare-fun b!236813 () Bool)

(assert (=> b!236813 (= e!153793 tp_is_empty!6225)))

(declare-fun mapIsEmpty!10552 () Bool)

(assert (=> mapIsEmpty!10552 mapRes!10552))

(declare-fun b!236812 () Bool)

(assert (=> b!236812 (= e!153792 tp_is_empty!6225)))

(assert (= (and mapNonEmpty!10551 condMapEmpty!10552) mapIsEmpty!10552))

(assert (= (and mapNonEmpty!10551 (not condMapEmpty!10552)) mapNonEmpty!10552))

(assert (= (and mapNonEmpty!10552 ((_ is ValueCellFull!2769) mapValue!10552)) b!236812))

(assert (= (and mapNonEmpty!10551 ((_ is ValueCellFull!2769) mapDefault!10552)) b!236813))

(declare-fun m!257703 () Bool)

(assert (=> mapNonEmpty!10552 m!257703))

(declare-fun b_lambda!7965 () Bool)

(assert (= b_lambda!7963 (or (and b!236479 b_free!6363) b_lambda!7965)))

(declare-fun b_lambda!7967 () Bool)

(assert (= b_lambda!7961 (or (and b!236479 b_free!6363) b_lambda!7967)))

(check-sat (not d!59391) (not b!236746) (not d!59401) (not b!236749) tp_is_empty!6225 (not b!236756) (not b!236637) (not b!236734) (not b_lambda!7959) (not bm!22009) (not d!59395) (not d!59383) (not b!236791) (not b!236730) (not d!59387) (not b!236700) (not b!236702) (not b!236802) (not b!236689) (not b!236748) (not b!236809) (not b!236745) (not b!236806) (not d!59405) (not bm!22003) (not bm!22006) (not b!236733) (not b!236758) (not b!236739) (not b_lambda!7967) (not d!59375) (not d!59365) (not b!236747) (not b!236680) (not bm!22012) b_and!13329 (not b!236761) (not d!59427) (not b!236736) (not b!236668) (not b!236810) (not d!59403) (not d!59397) (not d!59423) (not d!59399) (not b!236636) (not b!236704) (not d!59407) (not b_next!6363) (not d!59373) (not b!236634) (not d!59393) (not d!59411) (not d!59385) (not b!236699) (not b!236681) (not b!236652) (not d!59379) (not b!236763) (not d!59413) (not d!59371) (not b!236729) (not b!236757) (not d!59417) (not d!59425) (not d!59377) (not d!59409) (not b!236755) (not d!59369) (not b!236671) (not d!59361) (not b!236735) (not b!236669) (not d!59421) (not mapNonEmpty!10552) (not b!236688) (not d!59389) (not b!236623) (not b_lambda!7965) (not b!236737) (not b!236750) (not b!236807) (not b!236811))
(check-sat b_and!13329 (not b_next!6363))

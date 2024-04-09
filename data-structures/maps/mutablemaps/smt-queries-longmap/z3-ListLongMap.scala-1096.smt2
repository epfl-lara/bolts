; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22516 () Bool)

(assert start!22516)

(declare-fun b!235248 () Bool)

(declare-fun b_free!6327 () Bool)

(declare-fun b_next!6327 () Bool)

(assert (=> b!235248 (= b_free!6327 (not b_next!6327))))

(declare-fun tp!22148 () Bool)

(declare-fun b_and!13273 () Bool)

(assert (=> b!235248 (= tp!22148 b_and!13273)))

(declare-fun e!152796 () Bool)

(declare-fun tp_is_empty!6189 () Bool)

(declare-datatypes ((V!7899 0))(
  ( (V!7900 (val!3139 Int)) )
))
(declare-datatypes ((ValueCell!2751 0))(
  ( (ValueCellFull!2751 (v!5162 V!7899)) (EmptyCell!2751) )
))
(declare-datatypes ((array!11634 0))(
  ( (array!11635 (arr!5529 (Array (_ BitVec 32) ValueCell!2751)) (size!5866 (_ BitVec 32))) )
))
(declare-datatypes ((array!11636 0))(
  ( (array!11637 (arr!5530 (Array (_ BitVec 32) (_ BitVec 64))) (size!5867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3402 0))(
  ( (LongMapFixedSize!3403 (defaultEntry!4371 Int) (mask!10338 (_ BitVec 32)) (extraKeys!4108 (_ BitVec 32)) (zeroValue!4212 V!7899) (minValue!4212 V!7899) (_size!1750 (_ BitVec 32)) (_keys!6445 array!11636) (_values!4354 array!11634) (_vacant!1750 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3402)

(declare-fun e!152792 () Bool)

(declare-fun array_inv!3637 (array!11636) Bool)

(declare-fun array_inv!3638 (array!11634) Bool)

(assert (=> b!235248 (= e!152792 (and tp!22148 tp_is_empty!6189 (array_inv!3637 (_keys!6445 thiss!1504)) (array_inv!3638 (_values!4354 thiss!1504)) e!152796))))

(declare-fun b!235250 () Bool)

(declare-fun e!152795 () Bool)

(declare-fun e!152794 () Bool)

(assert (=> b!235250 (= e!152795 e!152794)))

(declare-fun res!115376 () Bool)

(assert (=> b!235250 (=> (not res!115376) (not e!152794))))

(declare-datatypes ((SeekEntryResult!997 0))(
  ( (MissingZero!997 (index!6158 (_ BitVec 32))) (Found!997 (index!6159 (_ BitVec 32))) (Intermediate!997 (undefined!1809 Bool) (index!6160 (_ BitVec 32)) (x!23783 (_ BitVec 32))) (Undefined!997) (MissingVacant!997 (index!6161 (_ BitVec 32))) )
))
(declare-fun lt!119054 () SeekEntryResult!997)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235250 (= res!115376 (or (= lt!119054 (MissingZero!997 index!297)) (= lt!119054 (MissingVacant!997 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11636 (_ BitVec 32)) SeekEntryResult!997)

(assert (=> b!235250 (= lt!119054 (seekEntryOrOpen!0 key!932 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)))))

(declare-fun mapNonEmpty!10478 () Bool)

(declare-fun mapRes!10478 () Bool)

(declare-fun tp!22147 () Bool)

(declare-fun e!152791 () Bool)

(assert (=> mapNonEmpty!10478 (= mapRes!10478 (and tp!22147 e!152791))))

(declare-fun mapKey!10478 () (_ BitVec 32))

(declare-fun mapValue!10478 () ValueCell!2751)

(declare-fun mapRest!10478 () (Array (_ BitVec 32) ValueCell!2751))

(assert (=> mapNonEmpty!10478 (= (arr!5529 (_values!4354 thiss!1504)) (store mapRest!10478 mapKey!10478 mapValue!10478))))

(declare-fun b!235251 () Bool)

(declare-fun e!152793 () Bool)

(assert (=> b!235251 (= e!152793 tp_is_empty!6189)))

(declare-fun b!235252 () Bool)

(assert (=> b!235252 (= e!152796 (and e!152793 mapRes!10478))))

(declare-fun condMapEmpty!10478 () Bool)

(declare-fun mapDefault!10478 () ValueCell!2751)

(assert (=> b!235252 (= condMapEmpty!10478 (= (arr!5529 (_values!4354 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2751)) mapDefault!10478)))))

(declare-fun b!235253 () Bool)

(declare-fun res!115378 () Bool)

(assert (=> b!235253 (=> (not res!115378) (not e!152794))))

(declare-datatypes ((tuple2!4622 0))(
  ( (tuple2!4623 (_1!2321 (_ BitVec 64)) (_2!2321 V!7899)) )
))
(declare-datatypes ((List!3554 0))(
  ( (Nil!3551) (Cons!3550 (h!4202 tuple2!4622) (t!8535 List!3554)) )
))
(declare-datatypes ((ListLongMap!3549 0))(
  ( (ListLongMap!3550 (toList!1790 List!3554)) )
))
(declare-fun contains!1660 (ListLongMap!3549 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1313 (array!11636 array!11634 (_ BitVec 32) (_ BitVec 32) V!7899 V!7899 (_ BitVec 32) Int) ListLongMap!3549)

(assert (=> b!235253 (= res!115378 (contains!1660 (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)) key!932))))

(declare-fun b!235254 () Bool)

(declare-datatypes ((List!3555 0))(
  ( (Nil!3552) (Cons!3551 (h!4203 (_ BitVec 64)) (t!8536 List!3555)) )
))
(declare-fun arrayNoDuplicates!0 (array!11636 (_ BitVec 32) List!3555) Bool)

(assert (=> b!235254 (= e!152794 (not (arrayNoDuplicates!0 (_keys!6445 thiss!1504) #b00000000000000000000000000000000 Nil!3552)))))

(declare-fun b!235255 () Bool)

(declare-fun res!115377 () Bool)

(assert (=> b!235255 (=> (not res!115377) (not e!152794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11636 (_ BitVec 32)) Bool)

(assert (=> b!235255 (= res!115377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)))))

(declare-fun mapIsEmpty!10478 () Bool)

(assert (=> mapIsEmpty!10478 mapRes!10478))

(declare-fun res!115379 () Bool)

(assert (=> start!22516 (=> (not res!115379) (not e!152795))))

(declare-fun valid!1335 (LongMapFixedSize!3402) Bool)

(assert (=> start!22516 (= res!115379 (valid!1335 thiss!1504))))

(assert (=> start!22516 e!152795))

(assert (=> start!22516 e!152792))

(assert (=> start!22516 true))

(declare-fun b!235249 () Bool)

(declare-fun res!115375 () Bool)

(assert (=> b!235249 (=> (not res!115375) (not e!152794))))

(assert (=> b!235249 (= res!115375 (and (= (size!5866 (_values!4354 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10338 thiss!1504))) (= (size!5867 (_keys!6445 thiss!1504)) (size!5866 (_values!4354 thiss!1504))) (bvsge (mask!10338 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4108 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4108 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235256 () Bool)

(assert (=> b!235256 (= e!152791 tp_is_empty!6189)))

(declare-fun b!235257 () Bool)

(declare-fun res!115380 () Bool)

(assert (=> b!235257 (=> (not res!115380) (not e!152795))))

(assert (=> b!235257 (= res!115380 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235258 () Bool)

(declare-fun res!115374 () Bool)

(assert (=> b!235258 (=> (not res!115374) (not e!152794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235258 (= res!115374 (validMask!0 (mask!10338 thiss!1504)))))

(assert (= (and start!22516 res!115379) b!235257))

(assert (= (and b!235257 res!115380) b!235250))

(assert (= (and b!235250 res!115376) b!235253))

(assert (= (and b!235253 res!115378) b!235258))

(assert (= (and b!235258 res!115374) b!235249))

(assert (= (and b!235249 res!115375) b!235255))

(assert (= (and b!235255 res!115377) b!235254))

(assert (= (and b!235252 condMapEmpty!10478) mapIsEmpty!10478))

(assert (= (and b!235252 (not condMapEmpty!10478)) mapNonEmpty!10478))

(get-info :version)

(assert (= (and mapNonEmpty!10478 ((_ is ValueCellFull!2751) mapValue!10478)) b!235256))

(assert (= (and b!235252 ((_ is ValueCellFull!2751) mapDefault!10478)) b!235251))

(assert (= b!235248 b!235252))

(assert (= start!22516 b!235248))

(declare-fun m!256433 () Bool)

(assert (=> b!235254 m!256433))

(declare-fun m!256435 () Bool)

(assert (=> start!22516 m!256435))

(declare-fun m!256437 () Bool)

(assert (=> mapNonEmpty!10478 m!256437))

(declare-fun m!256439 () Bool)

(assert (=> b!235258 m!256439))

(declare-fun m!256441 () Bool)

(assert (=> b!235248 m!256441))

(declare-fun m!256443 () Bool)

(assert (=> b!235248 m!256443))

(declare-fun m!256445 () Bool)

(assert (=> b!235253 m!256445))

(assert (=> b!235253 m!256445))

(declare-fun m!256447 () Bool)

(assert (=> b!235253 m!256447))

(declare-fun m!256449 () Bool)

(assert (=> b!235250 m!256449))

(declare-fun m!256451 () Bool)

(assert (=> b!235255 m!256451))

(check-sat (not mapNonEmpty!10478) (not b!235255) (not b!235250) (not start!22516) (not b_next!6327) b_and!13273 (not b!235254) (not b!235258) (not b!235248) tp_is_empty!6189 (not b!235253))
(check-sat b_and!13273 (not b_next!6327))
(get-model)

(declare-fun b!235302 () Bool)

(declare-fun e!152829 () Bool)

(declare-fun call!21877 () Bool)

(assert (=> b!235302 (= e!152829 call!21877)))

(declare-fun bm!21874 () Bool)

(declare-fun c!39192 () Bool)

(assert (=> bm!21874 (= call!21877 (arrayNoDuplicates!0 (_keys!6445 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39192 (Cons!3551 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000) Nil!3552) Nil!3552)))))

(declare-fun b!235303 () Bool)

(declare-fun e!152828 () Bool)

(assert (=> b!235303 (= e!152828 e!152829)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!235303 (= c!39192 (validKeyInArray!0 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235304 () Bool)

(declare-fun e!152827 () Bool)

(assert (=> b!235304 (= e!152827 e!152828)))

(declare-fun res!115409 () Bool)

(assert (=> b!235304 (=> (not res!115409) (not e!152828))))

(declare-fun e!152826 () Bool)

(assert (=> b!235304 (= res!115409 (not e!152826))))

(declare-fun res!115408 () Bool)

(assert (=> b!235304 (=> (not res!115408) (not e!152826))))

(assert (=> b!235304 (= res!115408 (validKeyInArray!0 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59189 () Bool)

(declare-fun res!115410 () Bool)

(assert (=> d!59189 (=> res!115410 e!152827)))

(assert (=> d!59189 (= res!115410 (bvsge #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))

(assert (=> d!59189 (= (arrayNoDuplicates!0 (_keys!6445 thiss!1504) #b00000000000000000000000000000000 Nil!3552) e!152827)))

(declare-fun b!235305 () Bool)

(declare-fun contains!1662 (List!3555 (_ BitVec 64)) Bool)

(assert (=> b!235305 (= e!152826 (contains!1662 Nil!3552 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235306 () Bool)

(assert (=> b!235306 (= e!152829 call!21877)))

(assert (= (and d!59189 (not res!115410)) b!235304))

(assert (= (and b!235304 res!115408) b!235305))

(assert (= (and b!235304 res!115409) b!235303))

(assert (= (and b!235303 c!39192) b!235302))

(assert (= (and b!235303 (not c!39192)) b!235306))

(assert (= (or b!235302 b!235306) bm!21874))

(declare-fun m!256473 () Bool)

(assert (=> bm!21874 m!256473))

(declare-fun m!256475 () Bool)

(assert (=> bm!21874 m!256475))

(assert (=> b!235303 m!256473))

(assert (=> b!235303 m!256473))

(declare-fun m!256477 () Bool)

(assert (=> b!235303 m!256477))

(assert (=> b!235304 m!256473))

(assert (=> b!235304 m!256473))

(assert (=> b!235304 m!256477))

(assert (=> b!235305 m!256473))

(assert (=> b!235305 m!256473))

(declare-fun m!256479 () Bool)

(assert (=> b!235305 m!256479))

(assert (=> b!235254 d!59189))

(declare-fun b!235319 () Bool)

(declare-fun e!152838 () SeekEntryResult!997)

(declare-fun e!152836 () SeekEntryResult!997)

(assert (=> b!235319 (= e!152838 e!152836)))

(declare-fun lt!119066 () (_ BitVec 64))

(declare-fun lt!119064 () SeekEntryResult!997)

(assert (=> b!235319 (= lt!119066 (select (arr!5530 (_keys!6445 thiss!1504)) (index!6160 lt!119064)))))

(declare-fun c!39201 () Bool)

(assert (=> b!235319 (= c!39201 (= lt!119066 key!932))))

(declare-fun b!235320 () Bool)

(declare-fun e!152837 () SeekEntryResult!997)

(assert (=> b!235320 (= e!152837 (MissingZero!997 (index!6160 lt!119064)))))

(declare-fun b!235321 () Bool)

(declare-fun c!39200 () Bool)

(assert (=> b!235321 (= c!39200 (= lt!119066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!235321 (= e!152836 e!152837)))

(declare-fun d!59191 () Bool)

(declare-fun lt!119065 () SeekEntryResult!997)

(assert (=> d!59191 (and (or ((_ is Undefined!997) lt!119065) (not ((_ is Found!997) lt!119065)) (and (bvsge (index!6159 lt!119065) #b00000000000000000000000000000000) (bvslt (index!6159 lt!119065) (size!5867 (_keys!6445 thiss!1504))))) (or ((_ is Undefined!997) lt!119065) ((_ is Found!997) lt!119065) (not ((_ is MissingZero!997) lt!119065)) (and (bvsge (index!6158 lt!119065) #b00000000000000000000000000000000) (bvslt (index!6158 lt!119065) (size!5867 (_keys!6445 thiss!1504))))) (or ((_ is Undefined!997) lt!119065) ((_ is Found!997) lt!119065) ((_ is MissingZero!997) lt!119065) (not ((_ is MissingVacant!997) lt!119065)) (and (bvsge (index!6161 lt!119065) #b00000000000000000000000000000000) (bvslt (index!6161 lt!119065) (size!5867 (_keys!6445 thiss!1504))))) (or ((_ is Undefined!997) lt!119065) (ite ((_ is Found!997) lt!119065) (= (select (arr!5530 (_keys!6445 thiss!1504)) (index!6159 lt!119065)) key!932) (ite ((_ is MissingZero!997) lt!119065) (= (select (arr!5530 (_keys!6445 thiss!1504)) (index!6158 lt!119065)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!997) lt!119065) (= (select (arr!5530 (_keys!6445 thiss!1504)) (index!6161 lt!119065)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59191 (= lt!119065 e!152838)))

(declare-fun c!39199 () Bool)

(assert (=> d!59191 (= c!39199 (and ((_ is Intermediate!997) lt!119064) (undefined!1809 lt!119064)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11636 (_ BitVec 32)) SeekEntryResult!997)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59191 (= lt!119064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10338 thiss!1504)) key!932 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)))))

(assert (=> d!59191 (validMask!0 (mask!10338 thiss!1504))))

(assert (=> d!59191 (= (seekEntryOrOpen!0 key!932 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)) lt!119065)))

(declare-fun b!235322 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11636 (_ BitVec 32)) SeekEntryResult!997)

(assert (=> b!235322 (= e!152837 (seekKeyOrZeroReturnVacant!0 (x!23783 lt!119064) (index!6160 lt!119064) (index!6160 lt!119064) key!932 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)))))

(declare-fun b!235323 () Bool)

(assert (=> b!235323 (= e!152838 Undefined!997)))

(declare-fun b!235324 () Bool)

(assert (=> b!235324 (= e!152836 (Found!997 (index!6160 lt!119064)))))

(assert (= (and d!59191 c!39199) b!235323))

(assert (= (and d!59191 (not c!39199)) b!235319))

(assert (= (and b!235319 c!39201) b!235324))

(assert (= (and b!235319 (not c!39201)) b!235321))

(assert (= (and b!235321 c!39200) b!235320))

(assert (= (and b!235321 (not c!39200)) b!235322))

(declare-fun m!256481 () Bool)

(assert (=> b!235319 m!256481))

(declare-fun m!256483 () Bool)

(assert (=> d!59191 m!256483))

(declare-fun m!256485 () Bool)

(assert (=> d!59191 m!256485))

(declare-fun m!256487 () Bool)

(assert (=> d!59191 m!256487))

(declare-fun m!256489 () Bool)

(assert (=> d!59191 m!256489))

(assert (=> d!59191 m!256439))

(assert (=> d!59191 m!256489))

(declare-fun m!256491 () Bool)

(assert (=> d!59191 m!256491))

(declare-fun m!256493 () Bool)

(assert (=> b!235322 m!256493))

(assert (=> b!235250 d!59191))

(declare-fun b!235333 () Bool)

(declare-fun e!152845 () Bool)

(declare-fun e!152847 () Bool)

(assert (=> b!235333 (= e!152845 e!152847)))

(declare-fun lt!119073 () (_ BitVec 64))

(assert (=> b!235333 (= lt!119073 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!7251 0))(
  ( (Unit!7252) )
))
(declare-fun lt!119074 () Unit!7251)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11636 (_ BitVec 64) (_ BitVec 32)) Unit!7251)

(assert (=> b!235333 (= lt!119074 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6445 thiss!1504) lt!119073 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!235333 (arrayContainsKey!0 (_keys!6445 thiss!1504) lt!119073 #b00000000000000000000000000000000)))

(declare-fun lt!119075 () Unit!7251)

(assert (=> b!235333 (= lt!119075 lt!119074)))

(declare-fun res!115416 () Bool)

(assert (=> b!235333 (= res!115416 (= (seekEntryOrOpen!0 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000) (_keys!6445 thiss!1504) (mask!10338 thiss!1504)) (Found!997 #b00000000000000000000000000000000)))))

(assert (=> b!235333 (=> (not res!115416) (not e!152847))))

(declare-fun b!235334 () Bool)

(declare-fun call!21880 () Bool)

(assert (=> b!235334 (= e!152847 call!21880)))

(declare-fun b!235335 () Bool)

(assert (=> b!235335 (= e!152845 call!21880)))

(declare-fun d!59193 () Bool)

(declare-fun res!115415 () Bool)

(declare-fun e!152846 () Bool)

(assert (=> d!59193 (=> res!115415 e!152846)))

(assert (=> d!59193 (= res!115415 (bvsge #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))

(assert (=> d!59193 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)) e!152846)))

(declare-fun b!235336 () Bool)

(assert (=> b!235336 (= e!152846 e!152845)))

(declare-fun c!39204 () Bool)

(assert (=> b!235336 (= c!39204 (validKeyInArray!0 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21877 () Bool)

(assert (=> bm!21877 (= call!21880 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6445 thiss!1504) (mask!10338 thiss!1504)))))

(assert (= (and d!59193 (not res!115415)) b!235336))

(assert (= (and b!235336 c!39204) b!235333))

(assert (= (and b!235336 (not c!39204)) b!235335))

(assert (= (and b!235333 res!115416) b!235334))

(assert (= (or b!235334 b!235335) bm!21877))

(assert (=> b!235333 m!256473))

(declare-fun m!256495 () Bool)

(assert (=> b!235333 m!256495))

(declare-fun m!256497 () Bool)

(assert (=> b!235333 m!256497))

(assert (=> b!235333 m!256473))

(declare-fun m!256499 () Bool)

(assert (=> b!235333 m!256499))

(assert (=> b!235336 m!256473))

(assert (=> b!235336 m!256473))

(assert (=> b!235336 m!256477))

(declare-fun m!256501 () Bool)

(assert (=> bm!21877 m!256501))

(assert (=> b!235255 d!59193))

(declare-fun d!59195 () Bool)

(declare-fun e!152852 () Bool)

(assert (=> d!59195 e!152852))

(declare-fun res!115419 () Bool)

(assert (=> d!59195 (=> res!115419 e!152852)))

(declare-fun lt!119086 () Bool)

(assert (=> d!59195 (= res!115419 (not lt!119086))))

(declare-fun lt!119084 () Bool)

(assert (=> d!59195 (= lt!119086 lt!119084)))

(declare-fun lt!119085 () Unit!7251)

(declare-fun e!152853 () Unit!7251)

(assert (=> d!59195 (= lt!119085 e!152853)))

(declare-fun c!39207 () Bool)

(assert (=> d!59195 (= c!39207 lt!119084)))

(declare-fun containsKey!259 (List!3554 (_ BitVec 64)) Bool)

(assert (=> d!59195 (= lt!119084 (containsKey!259 (toList!1790 (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504))) key!932))))

(assert (=> d!59195 (= (contains!1660 (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)) key!932) lt!119086)))

(declare-fun b!235343 () Bool)

(declare-fun lt!119087 () Unit!7251)

(assert (=> b!235343 (= e!152853 lt!119087)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!208 (List!3554 (_ BitVec 64)) Unit!7251)

(assert (=> b!235343 (= lt!119087 (lemmaContainsKeyImpliesGetValueByKeyDefined!208 (toList!1790 (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504))) key!932))))

(declare-datatypes ((Option!273 0))(
  ( (Some!272 (v!5164 V!7899)) (None!271) )
))
(declare-fun isDefined!209 (Option!273) Bool)

(declare-fun getValueByKey!267 (List!3554 (_ BitVec 64)) Option!273)

(assert (=> b!235343 (isDefined!209 (getValueByKey!267 (toList!1790 (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504))) key!932))))

(declare-fun b!235344 () Bool)

(declare-fun Unit!7253 () Unit!7251)

(assert (=> b!235344 (= e!152853 Unit!7253)))

(declare-fun b!235345 () Bool)

(assert (=> b!235345 (= e!152852 (isDefined!209 (getValueByKey!267 (toList!1790 (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504))) key!932)))))

(assert (= (and d!59195 c!39207) b!235343))

(assert (= (and d!59195 (not c!39207)) b!235344))

(assert (= (and d!59195 (not res!115419)) b!235345))

(declare-fun m!256503 () Bool)

(assert (=> d!59195 m!256503))

(declare-fun m!256505 () Bool)

(assert (=> b!235343 m!256505))

(declare-fun m!256507 () Bool)

(assert (=> b!235343 m!256507))

(assert (=> b!235343 m!256507))

(declare-fun m!256509 () Bool)

(assert (=> b!235343 m!256509))

(assert (=> b!235345 m!256507))

(assert (=> b!235345 m!256507))

(assert (=> b!235345 m!256509))

(assert (=> b!235253 d!59195))

(declare-fun b!235388 () Bool)

(declare-fun e!152883 () ListLongMap!3549)

(declare-fun call!21899 () ListLongMap!3549)

(assert (=> b!235388 (= e!152883 call!21899)))

(declare-fun b!235389 () Bool)

(declare-fun e!152888 () ListLongMap!3549)

(declare-fun call!21898 () ListLongMap!3549)

(declare-fun +!632 (ListLongMap!3549 tuple2!4622) ListLongMap!3549)

(assert (=> b!235389 (= e!152888 (+!632 call!21898 (tuple2!4623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4212 thiss!1504))))))

(declare-fun b!235390 () Bool)

(declare-fun e!152884 () Bool)

(declare-fun call!21900 () Bool)

(assert (=> b!235390 (= e!152884 (not call!21900))))

(declare-fun call!21901 () ListLongMap!3549)

(declare-fun call!21896 () ListLongMap!3549)

(declare-fun c!39220 () Bool)

(declare-fun bm!21892 () Bool)

(declare-fun call!21895 () ListLongMap!3549)

(declare-fun c!39225 () Bool)

(assert (=> bm!21892 (= call!21898 (+!632 (ite c!39220 call!21895 (ite c!39225 call!21896 call!21901)) (ite (or c!39220 c!39225) (tuple2!4623 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4212 thiss!1504)) (tuple2!4623 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4212 thiss!1504)))))))

(declare-fun b!235391 () Bool)

(declare-fun e!152881 () Unit!7251)

(declare-fun lt!119149 () Unit!7251)

(assert (=> b!235391 (= e!152881 lt!119149)))

(declare-fun lt!119146 () ListLongMap!3549)

(declare-fun getCurrentListMapNoExtraKeys!529 (array!11636 array!11634 (_ BitVec 32) (_ BitVec 32) V!7899 V!7899 (_ BitVec 32) Int) ListLongMap!3549)

(assert (=> b!235391 (= lt!119146 (getCurrentListMapNoExtraKeys!529 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)))))

(declare-fun lt!119138 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119138 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119135 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119135 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119140 () Unit!7251)

(declare-fun addStillContains!186 (ListLongMap!3549 (_ BitVec 64) V!7899 (_ BitVec 64)) Unit!7251)

(assert (=> b!235391 (= lt!119140 (addStillContains!186 lt!119146 lt!119138 (zeroValue!4212 thiss!1504) lt!119135))))

(assert (=> b!235391 (contains!1660 (+!632 lt!119146 (tuple2!4623 lt!119138 (zeroValue!4212 thiss!1504))) lt!119135)))

(declare-fun lt!119132 () Unit!7251)

(assert (=> b!235391 (= lt!119132 lt!119140)))

(declare-fun lt!119153 () ListLongMap!3549)

(assert (=> b!235391 (= lt!119153 (getCurrentListMapNoExtraKeys!529 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)))))

(declare-fun lt!119141 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119141 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119133 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119133 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119136 () Unit!7251)

(declare-fun addApplyDifferent!186 (ListLongMap!3549 (_ BitVec 64) V!7899 (_ BitVec 64)) Unit!7251)

(assert (=> b!235391 (= lt!119136 (addApplyDifferent!186 lt!119153 lt!119141 (minValue!4212 thiss!1504) lt!119133))))

(declare-fun apply!210 (ListLongMap!3549 (_ BitVec 64)) V!7899)

(assert (=> b!235391 (= (apply!210 (+!632 lt!119153 (tuple2!4623 lt!119141 (minValue!4212 thiss!1504))) lt!119133) (apply!210 lt!119153 lt!119133))))

(declare-fun lt!119143 () Unit!7251)

(assert (=> b!235391 (= lt!119143 lt!119136)))

(declare-fun lt!119151 () ListLongMap!3549)

(assert (=> b!235391 (= lt!119151 (getCurrentListMapNoExtraKeys!529 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)))))

(declare-fun lt!119134 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119134 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119152 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119152 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119145 () Unit!7251)

(assert (=> b!235391 (= lt!119145 (addApplyDifferent!186 lt!119151 lt!119134 (zeroValue!4212 thiss!1504) lt!119152))))

(assert (=> b!235391 (= (apply!210 (+!632 lt!119151 (tuple2!4623 lt!119134 (zeroValue!4212 thiss!1504))) lt!119152) (apply!210 lt!119151 lt!119152))))

(declare-fun lt!119148 () Unit!7251)

(assert (=> b!235391 (= lt!119148 lt!119145)))

(declare-fun lt!119137 () ListLongMap!3549)

(assert (=> b!235391 (= lt!119137 (getCurrentListMapNoExtraKeys!529 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)))))

(declare-fun lt!119139 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119139 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119144 () (_ BitVec 64))

(assert (=> b!235391 (= lt!119144 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235391 (= lt!119149 (addApplyDifferent!186 lt!119137 lt!119139 (minValue!4212 thiss!1504) lt!119144))))

(assert (=> b!235391 (= (apply!210 (+!632 lt!119137 (tuple2!4623 lt!119139 (minValue!4212 thiss!1504))) lt!119144) (apply!210 lt!119137 lt!119144))))

(declare-fun b!235392 () Bool)

(declare-fun Unit!7254 () Unit!7251)

(assert (=> b!235392 (= e!152881 Unit!7254)))

(declare-fun b!235393 () Bool)

(declare-fun e!152891 () Bool)

(declare-fun e!152889 () Bool)

(assert (=> b!235393 (= e!152891 e!152889)))

(declare-fun res!115446 () Bool)

(assert (=> b!235393 (=> (not res!115446) (not e!152889))))

(declare-fun lt!119150 () ListLongMap!3549)

(assert (=> b!235393 (= res!115446 (contains!1660 lt!119150 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!235393 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))

(declare-fun b!235394 () Bool)

(declare-fun res!115440 () Bool)

(declare-fun e!152892 () Bool)

(assert (=> b!235394 (=> (not res!115440) (not e!152892))))

(assert (=> b!235394 (= res!115440 e!152891)))

(declare-fun res!115442 () Bool)

(assert (=> b!235394 (=> res!115442 e!152891)))

(declare-fun e!152882 () Bool)

(assert (=> b!235394 (= res!115442 (not e!152882))))

(declare-fun res!115441 () Bool)

(assert (=> b!235394 (=> (not res!115441) (not e!152882))))

(assert (=> b!235394 (= res!115441 (bvslt #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))

(declare-fun b!235395 () Bool)

(declare-fun get!2844 (ValueCell!2751 V!7899) V!7899)

(declare-fun dynLambda!548 (Int (_ BitVec 64)) V!7899)

(assert (=> b!235395 (= e!152889 (= (apply!210 lt!119150 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)) (get!2844 (select (arr!5529 (_values!4354 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!548 (defaultEntry!4371 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!235395 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5866 (_values!4354 thiss!1504))))))

(assert (=> b!235395 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))

(declare-fun bm!21893 () Bool)

(assert (=> bm!21893 (= call!21900 (contains!1660 lt!119150 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!59197 () Bool)

(assert (=> d!59197 e!152892))

(declare-fun res!115443 () Bool)

(assert (=> d!59197 (=> (not res!115443) (not e!152892))))

(assert (=> d!59197 (= res!115443 (or (bvsge #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))))

(declare-fun lt!119147 () ListLongMap!3549)

(assert (=> d!59197 (= lt!119150 lt!119147)))

(declare-fun lt!119142 () Unit!7251)

(assert (=> d!59197 (= lt!119142 e!152881)))

(declare-fun c!39223 () Bool)

(declare-fun e!152885 () Bool)

(assert (=> d!59197 (= c!39223 e!152885)))

(declare-fun res!115445 () Bool)

(assert (=> d!59197 (=> (not res!115445) (not e!152885))))

(assert (=> d!59197 (= res!115445 (bvslt #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))))))

(assert (=> d!59197 (= lt!119147 e!152888)))

(assert (=> d!59197 (= c!39220 (and (not (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59197 (validMask!0 (mask!10338 thiss!1504))))

(assert (=> d!59197 (= (getCurrentListMap!1313 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)) lt!119150)))

(declare-fun b!235396 () Bool)

(declare-fun e!152886 () ListLongMap!3549)

(assert (=> b!235396 (= e!152886 call!21899)))

(declare-fun b!235397 () Bool)

(assert (=> b!235397 (= e!152882 (validKeyInArray!0 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235398 () Bool)

(declare-fun res!115444 () Bool)

(assert (=> b!235398 (=> (not res!115444) (not e!152892))))

(declare-fun e!152887 () Bool)

(assert (=> b!235398 (= res!115444 e!152887)))

(declare-fun c!39222 () Bool)

(assert (=> b!235398 (= c!39222 (not (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!21894 () Bool)

(assert (=> bm!21894 (= call!21899 call!21898)))

(declare-fun b!235399 () Bool)

(declare-fun e!152880 () Bool)

(assert (=> b!235399 (= e!152880 (= (apply!210 lt!119150 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4212 thiss!1504)))))

(declare-fun b!235400 () Bool)

(declare-fun c!39221 () Bool)

(assert (=> b!235400 (= c!39221 (and (not (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!235400 (= e!152886 e!152883)))

(declare-fun bm!21895 () Bool)

(assert (=> bm!21895 (= call!21895 (getCurrentListMapNoExtraKeys!529 (_keys!6445 thiss!1504) (_values!4354 thiss!1504) (mask!10338 thiss!1504) (extraKeys!4108 thiss!1504) (zeroValue!4212 thiss!1504) (minValue!4212 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4371 thiss!1504)))))

(declare-fun b!235401 () Bool)

(assert (=> b!235401 (= e!152888 e!152886)))

(assert (=> b!235401 (= c!39225 (and (not (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!235402 () Bool)

(assert (=> b!235402 (= e!152887 e!152880)))

(declare-fun res!115439 () Bool)

(declare-fun call!21897 () Bool)

(assert (=> b!235402 (= res!115439 call!21897)))

(assert (=> b!235402 (=> (not res!115439) (not e!152880))))

(declare-fun b!235403 () Bool)

(declare-fun e!152890 () Bool)

(assert (=> b!235403 (= e!152890 (= (apply!210 lt!119150 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4212 thiss!1504)))))

(declare-fun b!235404 () Bool)

(assert (=> b!235404 (= e!152883 call!21901)))

(declare-fun b!235405 () Bool)

(assert (=> b!235405 (= e!152884 e!152890)))

(declare-fun res!115438 () Bool)

(assert (=> b!235405 (= res!115438 call!21900)))

(assert (=> b!235405 (=> (not res!115438) (not e!152890))))

(declare-fun b!235406 () Bool)

(assert (=> b!235406 (= e!152887 (not call!21897))))

(declare-fun b!235407 () Bool)

(assert (=> b!235407 (= e!152885 (validKeyInArray!0 (select (arr!5530 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!235408 () Bool)

(assert (=> b!235408 (= e!152892 e!152884)))

(declare-fun c!39224 () Bool)

(assert (=> b!235408 (= c!39224 (not (= (bvand (extraKeys!4108 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21896 () Bool)

(assert (=> bm!21896 (= call!21897 (contains!1660 lt!119150 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21897 () Bool)

(assert (=> bm!21897 (= call!21896 call!21895)))

(declare-fun bm!21898 () Bool)

(assert (=> bm!21898 (= call!21901 call!21896)))

(assert (= (and d!59197 c!39220) b!235389))

(assert (= (and d!59197 (not c!39220)) b!235401))

(assert (= (and b!235401 c!39225) b!235396))

(assert (= (and b!235401 (not c!39225)) b!235400))

(assert (= (and b!235400 c!39221) b!235388))

(assert (= (and b!235400 (not c!39221)) b!235404))

(assert (= (or b!235388 b!235404) bm!21898))

(assert (= (or b!235396 bm!21898) bm!21897))

(assert (= (or b!235396 b!235388) bm!21894))

(assert (= (or b!235389 bm!21897) bm!21895))

(assert (= (or b!235389 bm!21894) bm!21892))

(assert (= (and d!59197 res!115445) b!235407))

(assert (= (and d!59197 c!39223) b!235391))

(assert (= (and d!59197 (not c!39223)) b!235392))

(assert (= (and d!59197 res!115443) b!235394))

(assert (= (and b!235394 res!115441) b!235397))

(assert (= (and b!235394 (not res!115442)) b!235393))

(assert (= (and b!235393 res!115446) b!235395))

(assert (= (and b!235394 res!115440) b!235398))

(assert (= (and b!235398 c!39222) b!235402))

(assert (= (and b!235398 (not c!39222)) b!235406))

(assert (= (and b!235402 res!115439) b!235399))

(assert (= (or b!235402 b!235406) bm!21896))

(assert (= (and b!235398 res!115444) b!235408))

(assert (= (and b!235408 c!39224) b!235405))

(assert (= (and b!235408 (not c!39224)) b!235390))

(assert (= (and b!235405 res!115438) b!235403))

(assert (= (or b!235405 b!235390) bm!21893))

(declare-fun b_lambda!7933 () Bool)

(assert (=> (not b_lambda!7933) (not b!235395)))

(declare-fun t!8540 () Bool)

(declare-fun tb!2941 () Bool)

(assert (=> (and b!235248 (= (defaultEntry!4371 thiss!1504) (defaultEntry!4371 thiss!1504)) t!8540) tb!2941))

(declare-fun result!5129 () Bool)

(assert (=> tb!2941 (= result!5129 tp_is_empty!6189)))

(assert (=> b!235395 t!8540))

(declare-fun b_and!13277 () Bool)

(assert (= b_and!13273 (and (=> t!8540 result!5129) b_and!13277)))

(declare-fun m!256511 () Bool)

(assert (=> bm!21896 m!256511))

(declare-fun m!256513 () Bool)

(assert (=> bm!21892 m!256513))

(declare-fun m!256515 () Bool)

(assert (=> b!235399 m!256515))

(declare-fun m!256517 () Bool)

(assert (=> b!235389 m!256517))

(assert (=> b!235395 m!256473))

(declare-fun m!256519 () Bool)

(assert (=> b!235395 m!256519))

(declare-fun m!256521 () Bool)

(assert (=> b!235395 m!256521))

(declare-fun m!256523 () Bool)

(assert (=> b!235395 m!256523))

(assert (=> b!235395 m!256521))

(assert (=> b!235395 m!256473))

(declare-fun m!256525 () Bool)

(assert (=> b!235395 m!256525))

(assert (=> b!235395 m!256519))

(declare-fun m!256527 () Bool)

(assert (=> b!235403 m!256527))

(declare-fun m!256529 () Bool)

(assert (=> bm!21895 m!256529))

(assert (=> b!235407 m!256473))

(assert (=> b!235407 m!256473))

(assert (=> b!235407 m!256477))

(declare-fun m!256531 () Bool)

(assert (=> bm!21893 m!256531))

(assert (=> b!235393 m!256473))

(assert (=> b!235393 m!256473))

(declare-fun m!256533 () Bool)

(assert (=> b!235393 m!256533))

(assert (=> b!235397 m!256473))

(assert (=> b!235397 m!256473))

(assert (=> b!235397 m!256477))

(declare-fun m!256535 () Bool)

(assert (=> b!235391 m!256535))

(declare-fun m!256537 () Bool)

(assert (=> b!235391 m!256537))

(assert (=> b!235391 m!256535))

(declare-fun m!256539 () Bool)

(assert (=> b!235391 m!256539))

(declare-fun m!256541 () Bool)

(assert (=> b!235391 m!256541))

(declare-fun m!256543 () Bool)

(assert (=> b!235391 m!256543))

(declare-fun m!256545 () Bool)

(assert (=> b!235391 m!256545))

(declare-fun m!256547 () Bool)

(assert (=> b!235391 m!256547))

(assert (=> b!235391 m!256529))

(declare-fun m!256549 () Bool)

(assert (=> b!235391 m!256549))

(assert (=> b!235391 m!256547))

(declare-fun m!256551 () Bool)

(assert (=> b!235391 m!256551))

(declare-fun m!256553 () Bool)

(assert (=> b!235391 m!256553))

(declare-fun m!256555 () Bool)

(assert (=> b!235391 m!256555))

(assert (=> b!235391 m!256541))

(declare-fun m!256557 () Bool)

(assert (=> b!235391 m!256557))

(declare-fun m!256559 () Bool)

(assert (=> b!235391 m!256559))

(assert (=> b!235391 m!256473))

(declare-fun m!256561 () Bool)

(assert (=> b!235391 m!256561))

(declare-fun m!256563 () Bool)

(assert (=> b!235391 m!256563))

(assert (=> b!235391 m!256561))

(assert (=> d!59197 m!256439))

(assert (=> b!235253 d!59197))

(declare-fun d!59199 () Bool)

(assert (=> d!59199 (= (validMask!0 (mask!10338 thiss!1504)) (and (or (= (mask!10338 thiss!1504) #b00000000000000000000000000000111) (= (mask!10338 thiss!1504) #b00000000000000000000000000001111) (= (mask!10338 thiss!1504) #b00000000000000000000000000011111) (= (mask!10338 thiss!1504) #b00000000000000000000000000111111) (= (mask!10338 thiss!1504) #b00000000000000000000000001111111) (= (mask!10338 thiss!1504) #b00000000000000000000000011111111) (= (mask!10338 thiss!1504) #b00000000000000000000000111111111) (= (mask!10338 thiss!1504) #b00000000000000000000001111111111) (= (mask!10338 thiss!1504) #b00000000000000000000011111111111) (= (mask!10338 thiss!1504) #b00000000000000000000111111111111) (= (mask!10338 thiss!1504) #b00000000000000000001111111111111) (= (mask!10338 thiss!1504) #b00000000000000000011111111111111) (= (mask!10338 thiss!1504) #b00000000000000000111111111111111) (= (mask!10338 thiss!1504) #b00000000000000001111111111111111) (= (mask!10338 thiss!1504) #b00000000000000011111111111111111) (= (mask!10338 thiss!1504) #b00000000000000111111111111111111) (= (mask!10338 thiss!1504) #b00000000000001111111111111111111) (= (mask!10338 thiss!1504) #b00000000000011111111111111111111) (= (mask!10338 thiss!1504) #b00000000000111111111111111111111) (= (mask!10338 thiss!1504) #b00000000001111111111111111111111) (= (mask!10338 thiss!1504) #b00000000011111111111111111111111) (= (mask!10338 thiss!1504) #b00000000111111111111111111111111) (= (mask!10338 thiss!1504) #b00000001111111111111111111111111) (= (mask!10338 thiss!1504) #b00000011111111111111111111111111) (= (mask!10338 thiss!1504) #b00000111111111111111111111111111) (= (mask!10338 thiss!1504) #b00001111111111111111111111111111) (= (mask!10338 thiss!1504) #b00011111111111111111111111111111) (= (mask!10338 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10338 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!235258 d!59199))

(declare-fun d!59201 () Bool)

(assert (=> d!59201 (= (array_inv!3637 (_keys!6445 thiss!1504)) (bvsge (size!5867 (_keys!6445 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235248 d!59201))

(declare-fun d!59203 () Bool)

(assert (=> d!59203 (= (array_inv!3638 (_values!4354 thiss!1504)) (bvsge (size!5866 (_values!4354 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!235248 d!59203))

(declare-fun d!59205 () Bool)

(declare-fun res!115453 () Bool)

(declare-fun e!152895 () Bool)

(assert (=> d!59205 (=> (not res!115453) (not e!152895))))

(declare-fun simpleValid!232 (LongMapFixedSize!3402) Bool)

(assert (=> d!59205 (= res!115453 (simpleValid!232 thiss!1504))))

(assert (=> d!59205 (= (valid!1335 thiss!1504) e!152895)))

(declare-fun b!235417 () Bool)

(declare-fun res!115454 () Bool)

(assert (=> b!235417 (=> (not res!115454) (not e!152895))))

(declare-fun arrayCountValidKeys!0 (array!11636 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!235417 (= res!115454 (= (arrayCountValidKeys!0 (_keys!6445 thiss!1504) #b00000000000000000000000000000000 (size!5867 (_keys!6445 thiss!1504))) (_size!1750 thiss!1504)))))

(declare-fun b!235418 () Bool)

(declare-fun res!115455 () Bool)

(assert (=> b!235418 (=> (not res!115455) (not e!152895))))

(assert (=> b!235418 (= res!115455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6445 thiss!1504) (mask!10338 thiss!1504)))))

(declare-fun b!235419 () Bool)

(assert (=> b!235419 (= e!152895 (arrayNoDuplicates!0 (_keys!6445 thiss!1504) #b00000000000000000000000000000000 Nil!3552))))

(assert (= (and d!59205 res!115453) b!235417))

(assert (= (and b!235417 res!115454) b!235418))

(assert (= (and b!235418 res!115455) b!235419))

(declare-fun m!256565 () Bool)

(assert (=> d!59205 m!256565))

(declare-fun m!256567 () Bool)

(assert (=> b!235417 m!256567))

(assert (=> b!235418 m!256451))

(assert (=> b!235419 m!256433))

(assert (=> start!22516 d!59205))

(declare-fun b!235426 () Bool)

(declare-fun e!152901 () Bool)

(assert (=> b!235426 (= e!152901 tp_is_empty!6189)))

(declare-fun mapIsEmpty!10484 () Bool)

(declare-fun mapRes!10484 () Bool)

(assert (=> mapIsEmpty!10484 mapRes!10484))

(declare-fun b!235427 () Bool)

(declare-fun e!152900 () Bool)

(assert (=> b!235427 (= e!152900 tp_is_empty!6189)))

(declare-fun condMapEmpty!10484 () Bool)

(declare-fun mapDefault!10484 () ValueCell!2751)

(assert (=> mapNonEmpty!10478 (= condMapEmpty!10484 (= mapRest!10478 ((as const (Array (_ BitVec 32) ValueCell!2751)) mapDefault!10484)))))

(assert (=> mapNonEmpty!10478 (= tp!22147 (and e!152900 mapRes!10484))))

(declare-fun mapNonEmpty!10484 () Bool)

(declare-fun tp!22157 () Bool)

(assert (=> mapNonEmpty!10484 (= mapRes!10484 (and tp!22157 e!152901))))

(declare-fun mapKey!10484 () (_ BitVec 32))

(declare-fun mapValue!10484 () ValueCell!2751)

(declare-fun mapRest!10484 () (Array (_ BitVec 32) ValueCell!2751))

(assert (=> mapNonEmpty!10484 (= mapRest!10478 (store mapRest!10484 mapKey!10484 mapValue!10484))))

(assert (= (and mapNonEmpty!10478 condMapEmpty!10484) mapIsEmpty!10484))

(assert (= (and mapNonEmpty!10478 (not condMapEmpty!10484)) mapNonEmpty!10484))

(assert (= (and mapNonEmpty!10484 ((_ is ValueCellFull!2751) mapValue!10484)) b!235426))

(assert (= (and mapNonEmpty!10478 ((_ is ValueCellFull!2751) mapDefault!10484)) b!235427))

(declare-fun m!256569 () Bool)

(assert (=> mapNonEmpty!10484 m!256569))

(declare-fun b_lambda!7935 () Bool)

(assert (= b_lambda!7933 (or (and b!235248 b_free!6327) b_lambda!7935)))

(check-sat (not b!235399) (not b!235397) tp_is_empty!6189 (not b!235403) (not b!235417) (not b_next!6327) (not bm!21877) (not b!235419) (not bm!21893) (not bm!21895) (not mapNonEmpty!10484) (not d!59191) (not b!235333) (not bm!21896) (not b!235389) (not b!235391) (not b!235418) (not b!235395) (not d!59197) (not b!235345) (not b!235343) (not b!235304) (not d!59195) (not b!235303) (not bm!21892) (not bm!21874) (not b!235305) (not b_lambda!7935) (not b!235336) (not d!59205) b_and!13277 (not b!235393) (not b!235322) (not b!235407))
(check-sat b_and!13277 (not b_next!6327))

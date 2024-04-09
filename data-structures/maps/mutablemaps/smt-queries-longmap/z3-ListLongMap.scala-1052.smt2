; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22008 () Bool)

(assert start!22008)

(declare-fun b!225999 () Bool)

(declare-fun b_free!6063 () Bool)

(declare-fun b_next!6063 () Bool)

(assert (=> b!225999 (= b_free!6063 (not b_next!6063))))

(declare-fun tp!21331 () Bool)

(declare-fun b_and!12979 () Bool)

(assert (=> b!225999 (= tp!21331 b_and!12979)))

(declare-fun b!225983 () Bool)

(declare-fun e!146657 () Bool)

(declare-fun e!146654 () Bool)

(assert (=> b!225983 (= e!146657 e!146654)))

(declare-fun res!111258 () Bool)

(assert (=> b!225983 (=> (not res!111258) (not e!146654))))

(declare-datatypes ((SeekEntryResult!887 0))(
  ( (MissingZero!887 (index!5718 (_ BitVec 32))) (Found!887 (index!5719 (_ BitVec 32))) (Intermediate!887 (undefined!1699 Bool) (index!5720 (_ BitVec 32)) (x!23219 (_ BitVec 32))) (Undefined!887) (MissingVacant!887 (index!5721 (_ BitVec 32))) )
))
(declare-fun lt!113828 () SeekEntryResult!887)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225983 (= res!111258 (or (= lt!113828 (MissingZero!887 index!297)) (= lt!113828 (MissingVacant!887 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7547 0))(
  ( (V!7548 (val!3007 Int)) )
))
(declare-datatypes ((ValueCell!2619 0))(
  ( (ValueCellFull!2619 (v!5023 V!7547)) (EmptyCell!2619) )
))
(declare-datatypes ((array!11092 0))(
  ( (array!11093 (arr!5265 (Array (_ BitVec 32) ValueCell!2619)) (size!5598 (_ BitVec 32))) )
))
(declare-datatypes ((array!11094 0))(
  ( (array!11095 (arr!5266 (Array (_ BitVec 32) (_ BitVec 64))) (size!5599 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3138 0))(
  ( (LongMapFixedSize!3139 (defaultEntry!4228 Int) (mask!10076 (_ BitVec 32)) (extraKeys!3965 (_ BitVec 32)) (zeroValue!4069 V!7547) (minValue!4069 V!7547) (_size!1618 (_ BitVec 32)) (_keys!6282 array!11094) (_values!4211 array!11092) (_vacant!1618 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3138)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11094 (_ BitVec 32)) SeekEntryResult!887)

(assert (=> b!225983 (= lt!113828 (seekEntryOrOpen!0 key!932 (_keys!6282 thiss!1504) (mask!10076 thiss!1504)))))

(declare-fun b!225984 () Bool)

(declare-fun e!146658 () Bool)

(get-info :version)

(assert (=> b!225984 (= e!146658 ((_ is Undefined!887) lt!113828))))

(declare-fun call!21021 () Bool)

(declare-fun c!37457 () Bool)

(declare-fun bm!21018 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21018 (= call!21021 (inRange!0 (ite c!37457 (index!5718 lt!113828) (index!5721 lt!113828)) (mask!10076 thiss!1504)))))

(declare-fun bm!21019 () Bool)

(declare-fun call!21022 () Bool)

(declare-fun arrayContainsKey!0 (array!11094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21019 (= call!21022 (arrayContainsKey!0 (_keys!6282 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225985 () Bool)

(declare-datatypes ((Unit!6822 0))(
  ( (Unit!6823) )
))
(declare-fun e!146659 () Unit!6822)

(declare-fun Unit!6824 () Unit!6822)

(assert (=> b!225985 (= e!146659 Unit!6824)))

(declare-fun b!225986 () Bool)

(declare-fun e!146661 () Bool)

(declare-fun tp_is_empty!5925 () Bool)

(assert (=> b!225986 (= e!146661 tp_is_empty!5925)))

(declare-fun b!225987 () Bool)

(declare-fun res!111254 () Bool)

(assert (=> b!225987 (= res!111254 (= (select (arr!5266 (_keys!6282 thiss!1504)) (index!5721 lt!113828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146663 () Bool)

(assert (=> b!225987 (=> (not res!111254) (not e!146663))))

(declare-fun b!225988 () Bool)

(declare-fun Unit!6825 () Unit!6822)

(assert (=> b!225988 (= e!146659 Unit!6825)))

(declare-fun lt!113826 () Unit!6822)

(declare-fun lemmaArrayContainsKeyThenInListMap!91 (array!11094 array!11092 (_ BitVec 32) (_ BitVec 32) V!7547 V!7547 (_ BitVec 64) (_ BitVec 32) Int) Unit!6822)

(assert (=> b!225988 (= lt!113826 (lemmaArrayContainsKeyThenInListMap!91 (_keys!6282 thiss!1504) (_values!4211 thiss!1504) (mask!10076 thiss!1504) (extraKeys!3965 thiss!1504) (zeroValue!4069 thiss!1504) (minValue!4069 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4228 thiss!1504)))))

(assert (=> b!225988 false))

(declare-fun b!225989 () Bool)

(declare-fun res!111250 () Bool)

(declare-fun e!146651 () Bool)

(assert (=> b!225989 (=> res!111250 e!146651)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225989 (= res!111250 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225990 () Bool)

(declare-fun res!111249 () Bool)

(declare-fun e!146656 () Bool)

(assert (=> b!225990 (=> (not res!111249) (not e!146656))))

(assert (=> b!225990 (= res!111249 (= (select (arr!5266 (_keys!6282 thiss!1504)) (index!5718 lt!113828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225991 () Bool)

(declare-fun e!146662 () Unit!6822)

(declare-fun Unit!6826 () Unit!6822)

(assert (=> b!225991 (= e!146662 Unit!6826)))

(declare-fun lt!113831 () Unit!6822)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!253 (array!11094 array!11092 (_ BitVec 32) (_ BitVec 32) V!7547 V!7547 (_ BitVec 64) Int) Unit!6822)

(assert (=> b!225991 (= lt!113831 (lemmaInListMapThenSeekEntryOrOpenFindsIt!253 (_keys!6282 thiss!1504) (_values!4211 thiss!1504) (mask!10076 thiss!1504) (extraKeys!3965 thiss!1504) (zeroValue!4069 thiss!1504) (minValue!4069 thiss!1504) key!932 (defaultEntry!4228 thiss!1504)))))

(assert (=> b!225991 false))

(declare-fun b!225992 () Bool)

(declare-fun res!111251 () Bool)

(assert (=> b!225992 (=> (not res!111251) (not e!146656))))

(assert (=> b!225992 (= res!111251 call!21021)))

(declare-fun e!146665 () Bool)

(assert (=> b!225992 (= e!146665 e!146656)))

(declare-fun b!225994 () Bool)

(declare-fun res!111252 () Bool)

(assert (=> b!225994 (=> res!111252 e!146651)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11094 (_ BitVec 32)) Bool)

(assert (=> b!225994 (= res!111252 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6282 thiss!1504) (mask!10076 thiss!1504))))))

(declare-fun mapIsEmpty!10057 () Bool)

(declare-fun mapRes!10057 () Bool)

(assert (=> mapIsEmpty!10057 mapRes!10057))

(declare-fun b!225995 () Bool)

(declare-fun e!146664 () Bool)

(assert (=> b!225995 (= e!146664 (not e!146651))))

(declare-fun res!111256 () Bool)

(assert (=> b!225995 (=> res!111256 e!146651)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225995 (= res!111256 (not (validMask!0 (mask!10076 thiss!1504))))))

(declare-fun lt!113833 () array!11094)

(declare-fun arrayCountValidKeys!0 (array!11094 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225995 (= (arrayCountValidKeys!0 lt!113833 #b00000000000000000000000000000000 (size!5599 (_keys!6282 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6282 thiss!1504) #b00000000000000000000000000000000 (size!5599 (_keys!6282 thiss!1504)))))))

(declare-fun lt!113834 () Unit!6822)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11094 (_ BitVec 32) (_ BitVec 64)) Unit!6822)

(assert (=> b!225995 (= lt!113834 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6282 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3385 0))(
  ( (Nil!3382) (Cons!3381 (h!4029 (_ BitVec 64)) (t!8352 List!3385)) )
))
(declare-fun arrayNoDuplicates!0 (array!11094 (_ BitVec 32) List!3385) Bool)

(assert (=> b!225995 (arrayNoDuplicates!0 lt!113833 #b00000000000000000000000000000000 Nil!3382)))

(assert (=> b!225995 (= lt!113833 (array!11095 (store (arr!5266 (_keys!6282 thiss!1504)) index!297 key!932) (size!5599 (_keys!6282 thiss!1504))))))

(declare-fun lt!113835 () Unit!6822)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11094 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3385) Unit!6822)

(assert (=> b!225995 (= lt!113835 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6282 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3382))))

(declare-fun lt!113825 () Unit!6822)

(assert (=> b!225995 (= lt!113825 e!146659)))

(declare-fun c!37454 () Bool)

(declare-fun lt!113830 () Bool)

(assert (=> b!225995 (= c!37454 lt!113830)))

(assert (=> b!225995 (= lt!113830 (arrayContainsKey!0 (_keys!6282 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225996 () Bool)

(declare-fun res!111257 () Bool)

(assert (=> b!225996 (=> (not res!111257) (not e!146657))))

(assert (=> b!225996 (= res!111257 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!225997 () Bool)

(assert (=> b!225997 (= e!146658 e!146663)))

(declare-fun res!111247 () Bool)

(assert (=> b!225997 (= res!111247 call!21021)))

(assert (=> b!225997 (=> (not res!111247) (not e!146663))))

(declare-fun b!225998 () Bool)

(assert (=> b!225998 (= e!146663 (not call!21022))))

(declare-fun e!146660 () Bool)

(declare-fun e!146652 () Bool)

(declare-fun array_inv!3473 (array!11094) Bool)

(declare-fun array_inv!3474 (array!11092) Bool)

(assert (=> b!225999 (= e!146652 (and tp!21331 tp_is_empty!5925 (array_inv!3473 (_keys!6282 thiss!1504)) (array_inv!3474 (_values!4211 thiss!1504)) e!146660))))

(declare-fun b!226000 () Bool)

(declare-fun e!146655 () Bool)

(assert (=> b!226000 (= e!146655 tp_is_empty!5925)))

(declare-fun b!226001 () Bool)

(declare-fun res!111259 () Bool)

(assert (=> b!226001 (=> res!111259 e!146651)))

(assert (=> b!226001 (= res!111259 lt!113830)))

(declare-fun b!226002 () Bool)

(declare-fun lt!113829 () Unit!6822)

(assert (=> b!226002 (= e!146662 lt!113829)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!263 (array!11094 array!11092 (_ BitVec 32) (_ BitVec 32) V!7547 V!7547 (_ BitVec 64) Int) Unit!6822)

(assert (=> b!226002 (= lt!113829 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!263 (_keys!6282 thiss!1504) (_values!4211 thiss!1504) (mask!10076 thiss!1504) (extraKeys!3965 thiss!1504) (zeroValue!4069 thiss!1504) (minValue!4069 thiss!1504) key!932 (defaultEntry!4228 thiss!1504)))))

(assert (=> b!226002 (= c!37457 ((_ is MissingZero!887) lt!113828))))

(assert (=> b!226002 e!146665))

(declare-fun b!226003 () Bool)

(assert (=> b!226003 (= e!146651 true)))

(declare-fun lt!113832 () Bool)

(assert (=> b!226003 (= lt!113832 (arrayNoDuplicates!0 (_keys!6282 thiss!1504) #b00000000000000000000000000000000 Nil!3382))))

(declare-fun res!111248 () Bool)

(assert (=> start!22008 (=> (not res!111248) (not e!146657))))

(declare-fun valid!1254 (LongMapFixedSize!3138) Bool)

(assert (=> start!22008 (= res!111248 (valid!1254 thiss!1504))))

(assert (=> start!22008 e!146657))

(assert (=> start!22008 e!146652))

(assert (=> start!22008 true))

(declare-fun b!225993 () Bool)

(declare-fun c!37455 () Bool)

(assert (=> b!225993 (= c!37455 ((_ is MissingVacant!887) lt!113828))))

(assert (=> b!225993 (= e!146665 e!146658)))

(declare-fun mapNonEmpty!10057 () Bool)

(declare-fun tp!21330 () Bool)

(assert (=> mapNonEmpty!10057 (= mapRes!10057 (and tp!21330 e!146661))))

(declare-fun mapRest!10057 () (Array (_ BitVec 32) ValueCell!2619))

(declare-fun mapValue!10057 () ValueCell!2619)

(declare-fun mapKey!10057 () (_ BitVec 32))

(assert (=> mapNonEmpty!10057 (= (arr!5265 (_values!4211 thiss!1504)) (store mapRest!10057 mapKey!10057 mapValue!10057))))

(declare-fun b!226004 () Bool)

(declare-fun res!111253 () Bool)

(assert (=> b!226004 (=> res!111253 e!146651)))

(assert (=> b!226004 (= res!111253 (or (not (= (size!5599 (_keys!6282 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10076 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5599 (_keys!6282 thiss!1504)))))))

(declare-fun b!226005 () Bool)

(assert (=> b!226005 (= e!146660 (and e!146655 mapRes!10057))))

(declare-fun condMapEmpty!10057 () Bool)

(declare-fun mapDefault!10057 () ValueCell!2619)

(assert (=> b!226005 (= condMapEmpty!10057 (= (arr!5265 (_values!4211 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2619)) mapDefault!10057)))))

(declare-fun b!226006 () Bool)

(assert (=> b!226006 (= e!146656 (not call!21022))))

(declare-fun b!226007 () Bool)

(assert (=> b!226007 (= e!146654 e!146664)))

(declare-fun res!111255 () Bool)

(assert (=> b!226007 (=> (not res!111255) (not e!146664))))

(assert (=> b!226007 (= res!111255 (inRange!0 index!297 (mask!10076 thiss!1504)))))

(declare-fun lt!113827 () Unit!6822)

(assert (=> b!226007 (= lt!113827 e!146662)))

(declare-fun c!37456 () Bool)

(declare-datatypes ((tuple2!4446 0))(
  ( (tuple2!4447 (_1!2233 (_ BitVec 64)) (_2!2233 V!7547)) )
))
(declare-datatypes ((List!3386 0))(
  ( (Nil!3383) (Cons!3382 (h!4030 tuple2!4446) (t!8353 List!3386)) )
))
(declare-datatypes ((ListLongMap!3373 0))(
  ( (ListLongMap!3374 (toList!1702 List!3386)) )
))
(declare-fun contains!1570 (ListLongMap!3373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1225 (array!11094 array!11092 (_ BitVec 32) (_ BitVec 32) V!7547 V!7547 (_ BitVec 32) Int) ListLongMap!3373)

(assert (=> b!226007 (= c!37456 (contains!1570 (getCurrentListMap!1225 (_keys!6282 thiss!1504) (_values!4211 thiss!1504) (mask!10076 thiss!1504) (extraKeys!3965 thiss!1504) (zeroValue!4069 thiss!1504) (minValue!4069 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4228 thiss!1504)) key!932))))

(assert (= (and start!22008 res!111248) b!225996))

(assert (= (and b!225996 res!111257) b!225983))

(assert (= (and b!225983 res!111258) b!226007))

(assert (= (and b!226007 c!37456) b!225991))

(assert (= (and b!226007 (not c!37456)) b!226002))

(assert (= (and b!226002 c!37457) b!225992))

(assert (= (and b!226002 (not c!37457)) b!225993))

(assert (= (and b!225992 res!111251) b!225990))

(assert (= (and b!225990 res!111249) b!226006))

(assert (= (and b!225993 c!37455) b!225997))

(assert (= (and b!225993 (not c!37455)) b!225984))

(assert (= (and b!225997 res!111247) b!225987))

(assert (= (and b!225987 res!111254) b!225998))

(assert (= (or b!225992 b!225997) bm!21018))

(assert (= (or b!226006 b!225998) bm!21019))

(assert (= (and b!226007 res!111255) b!225995))

(assert (= (and b!225995 c!37454) b!225988))

(assert (= (and b!225995 (not c!37454)) b!225985))

(assert (= (and b!225995 (not res!111256)) b!226004))

(assert (= (and b!226004 (not res!111253)) b!225989))

(assert (= (and b!225989 (not res!111250)) b!226001))

(assert (= (and b!226001 (not res!111259)) b!225994))

(assert (= (and b!225994 (not res!111252)) b!226003))

(assert (= (and b!226005 condMapEmpty!10057) mapIsEmpty!10057))

(assert (= (and b!226005 (not condMapEmpty!10057)) mapNonEmpty!10057))

(assert (= (and mapNonEmpty!10057 ((_ is ValueCellFull!2619) mapValue!10057)) b!225986))

(assert (= (and b!226005 ((_ is ValueCellFull!2619) mapDefault!10057)) b!226000))

(assert (= b!225999 b!226005))

(assert (= start!22008 b!225999))

(declare-fun m!248427 () Bool)

(assert (=> mapNonEmpty!10057 m!248427))

(declare-fun m!248429 () Bool)

(assert (=> b!225995 m!248429))

(declare-fun m!248431 () Bool)

(assert (=> b!225995 m!248431))

(declare-fun m!248433 () Bool)

(assert (=> b!225995 m!248433))

(declare-fun m!248435 () Bool)

(assert (=> b!225995 m!248435))

(declare-fun m!248437 () Bool)

(assert (=> b!225995 m!248437))

(declare-fun m!248439 () Bool)

(assert (=> b!225995 m!248439))

(declare-fun m!248441 () Bool)

(assert (=> b!225995 m!248441))

(declare-fun m!248443 () Bool)

(assert (=> b!225995 m!248443))

(declare-fun m!248445 () Bool)

(assert (=> b!225988 m!248445))

(declare-fun m!248447 () Bool)

(assert (=> b!226003 m!248447))

(declare-fun m!248449 () Bool)

(assert (=> b!225994 m!248449))

(declare-fun m!248451 () Bool)

(assert (=> b!225991 m!248451))

(declare-fun m!248453 () Bool)

(assert (=> start!22008 m!248453))

(declare-fun m!248455 () Bool)

(assert (=> bm!21018 m!248455))

(assert (=> bm!21019 m!248431))

(declare-fun m!248457 () Bool)

(assert (=> b!226007 m!248457))

(declare-fun m!248459 () Bool)

(assert (=> b!226007 m!248459))

(assert (=> b!226007 m!248459))

(declare-fun m!248461 () Bool)

(assert (=> b!226007 m!248461))

(declare-fun m!248463 () Bool)

(assert (=> b!225999 m!248463))

(declare-fun m!248465 () Bool)

(assert (=> b!225999 m!248465))

(declare-fun m!248467 () Bool)

(assert (=> b!225990 m!248467))

(declare-fun m!248469 () Bool)

(assert (=> b!225983 m!248469))

(declare-fun m!248471 () Bool)

(assert (=> b!226002 m!248471))

(declare-fun m!248473 () Bool)

(assert (=> b!225987 m!248473))

(declare-fun m!248475 () Bool)

(assert (=> b!225989 m!248475))

(check-sat tp_is_empty!5925 (not bm!21019) b_and!12979 (not bm!21018) (not start!22008) (not b!225999) (not b!225994) (not b_next!6063) (not b!226003) (not b!226007) (not b!226002) (not b!225988) (not mapNonEmpty!10057) (not b!225989) (not b!225995) (not b!225991) (not b!225983))
(check-sat b_and!12979 (not b_next!6063))

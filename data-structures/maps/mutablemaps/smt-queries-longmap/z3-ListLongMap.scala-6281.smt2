; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80338 () Bool)

(assert start!80338)

(declare-fun b!943367 () Bool)

(declare-fun b_free!18009 () Bool)

(declare-fun b_next!18009 () Bool)

(assert (=> b!943367 (= b_free!18009 (not b_next!18009))))

(declare-fun tp!62533 () Bool)

(declare-fun b_and!29439 () Bool)

(assert (=> b!943367 (= tp!62533 b_and!29439)))

(declare-fun res!633984 () Bool)

(declare-fun e!530444 () Bool)

(assert (=> start!80338 (=> (not res!633984) (not e!530444))))

(declare-datatypes ((V!32321 0))(
  ( (V!32322 (val!10309 Int)) )
))
(declare-datatypes ((ValueCell!9777 0))(
  ( (ValueCellFull!9777 (v!12840 V!32321)) (EmptyCell!9777) )
))
(declare-datatypes ((array!57022 0))(
  ( (array!57023 (arr!27433 (Array (_ BitVec 32) ValueCell!9777)) (size!27899 (_ BitVec 32))) )
))
(declare-datatypes ((array!57024 0))(
  ( (array!57025 (arr!27434 (Array (_ BitVec 32) (_ BitVec 64))) (size!27900 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4704 0))(
  ( (LongMapFixedSize!4705 (defaultEntry!5643 Int) (mask!27266 (_ BitVec 32)) (extraKeys!5375 (_ BitVec 32)) (zeroValue!5479 V!32321) (minValue!5479 V!32321) (_size!2407 (_ BitVec 32)) (_keys!10513 array!57024) (_values!5666 array!57022) (_vacant!2407 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4704)

(declare-fun valid!1777 (LongMapFixedSize!4704) Bool)

(assert (=> start!80338 (= res!633984 (valid!1777 thiss!1141))))

(assert (=> start!80338 e!530444))

(declare-fun e!530442 () Bool)

(assert (=> start!80338 e!530442))

(assert (=> start!80338 true))

(declare-fun b!943366 () Bool)

(declare-fun e!530440 () Bool)

(declare-fun tp_is_empty!20517 () Bool)

(assert (=> b!943366 (= e!530440 tp_is_empty!20517)))

(declare-fun e!530439 () Bool)

(declare-fun array_inv!21266 (array!57024) Bool)

(declare-fun array_inv!21267 (array!57022) Bool)

(assert (=> b!943367 (= e!530442 (and tp!62533 tp_is_empty!20517 (array_inv!21266 (_keys!10513 thiss!1141)) (array_inv!21267 (_values!5666 thiss!1141)) e!530439))))

(declare-fun mapNonEmpty!32597 () Bool)

(declare-fun mapRes!32597 () Bool)

(declare-fun tp!62534 () Bool)

(declare-fun e!530443 () Bool)

(assert (=> mapNonEmpty!32597 (= mapRes!32597 (and tp!62534 e!530443))))

(declare-fun mapValue!32597 () ValueCell!9777)

(declare-fun mapRest!32597 () (Array (_ BitVec 32) ValueCell!9777))

(declare-fun mapKey!32597 () (_ BitVec 32))

(assert (=> mapNonEmpty!32597 (= (arr!27433 (_values!5666 thiss!1141)) (store mapRest!32597 mapKey!32597 mapValue!32597))))

(declare-fun b!943368 () Bool)

(assert (=> b!943368 (= e!530439 (and e!530440 mapRes!32597))))

(declare-fun condMapEmpty!32597 () Bool)

(declare-fun mapDefault!32597 () ValueCell!9777)

(assert (=> b!943368 (= condMapEmpty!32597 (= (arr!27433 (_values!5666 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9777)) mapDefault!32597)))))

(declare-fun b!943369 () Bool)

(assert (=> b!943369 (= e!530443 tp_is_empty!20517)))

(declare-fun mapIsEmpty!32597 () Bool)

(assert (=> mapIsEmpty!32597 mapRes!32597))

(declare-fun b!943370 () Bool)

(declare-fun res!633981 () Bool)

(assert (=> b!943370 (=> (not res!633981) (not e!530444))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9044 0))(
  ( (MissingZero!9044 (index!38546 (_ BitVec 32))) (Found!9044 (index!38547 (_ BitVec 32))) (Intermediate!9044 (undefined!9856 Bool) (index!38548 (_ BitVec 32)) (x!81014 (_ BitVec 32))) (Undefined!9044) (MissingVacant!9044 (index!38549 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57024 (_ BitVec 32)) SeekEntryResult!9044)

(assert (=> b!943370 (= res!633981 (not ((_ is Found!9044) (seekEntry!0 key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))))

(declare-fun b!943371 () Bool)

(declare-fun res!633983 () Bool)

(assert (=> b!943371 (=> (not res!633983) (not e!530444))))

(declare-datatypes ((tuple2!13548 0))(
  ( (tuple2!13549 (_1!6784 (_ BitVec 64)) (_2!6784 V!32321)) )
))
(declare-datatypes ((List!19387 0))(
  ( (Nil!19384) (Cons!19383 (h!20533 tuple2!13548) (t!27710 List!19387)) )
))
(declare-datatypes ((ListLongMap!12259 0))(
  ( (ListLongMap!12260 (toList!6145 List!19387)) )
))
(declare-fun contains!5166 (ListLongMap!12259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3333 (array!57024 array!57022 (_ BitVec 32) (_ BitVec 32) V!32321 V!32321 (_ BitVec 32) Int) ListLongMap!12259)

(assert (=> b!943371 (= res!633983 (contains!5166 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)) key!756))))

(declare-fun b!943372 () Bool)

(declare-fun res!633982 () Bool)

(assert (=> b!943372 (=> (not res!633982) (not e!530444))))

(assert (=> b!943372 (= res!633982 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943373 () Bool)

(assert (=> b!943373 (= e!530444 (not (and (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))) (bvslt (size!27900 (_keys!10513 thiss!1141)) #b01111111111111111111111111111111))))))

(declare-fun arrayContainsKey!0 (array!57024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!943373 (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31819 0))(
  ( (Unit!31820) )
))
(declare-fun lt!425208 () Unit!31819)

(declare-fun lemmaKeyInListMapIsInArray!296 (array!57024 array!57022 (_ BitVec 32) (_ BitVec 32) V!32321 V!32321 (_ BitVec 64) Int) Unit!31819)

(assert (=> b!943373 (= lt!425208 (lemmaKeyInListMapIsInArray!296 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) key!756 (defaultEntry!5643 thiss!1141)))))

(assert (= (and start!80338 res!633984) b!943372))

(assert (= (and b!943372 res!633982) b!943370))

(assert (= (and b!943370 res!633981) b!943371))

(assert (= (and b!943371 res!633983) b!943373))

(assert (= (and b!943368 condMapEmpty!32597) mapIsEmpty!32597))

(assert (= (and b!943368 (not condMapEmpty!32597)) mapNonEmpty!32597))

(assert (= (and mapNonEmpty!32597 ((_ is ValueCellFull!9777) mapValue!32597)) b!943369))

(assert (= (and b!943368 ((_ is ValueCellFull!9777) mapDefault!32597)) b!943366))

(assert (= b!943367 b!943368))

(assert (= start!80338 b!943367))

(declare-fun m!877613 () Bool)

(assert (=> b!943371 m!877613))

(assert (=> b!943371 m!877613))

(declare-fun m!877615 () Bool)

(assert (=> b!943371 m!877615))

(declare-fun m!877617 () Bool)

(assert (=> mapNonEmpty!32597 m!877617))

(declare-fun m!877619 () Bool)

(assert (=> b!943370 m!877619))

(declare-fun m!877621 () Bool)

(assert (=> b!943367 m!877621))

(declare-fun m!877623 () Bool)

(assert (=> b!943367 m!877623))

(declare-fun m!877625 () Bool)

(assert (=> b!943373 m!877625))

(declare-fun m!877627 () Bool)

(assert (=> b!943373 m!877627))

(declare-fun m!877629 () Bool)

(assert (=> start!80338 m!877629))

(check-sat (not start!80338) (not b!943370) (not b!943367) (not b!943373) (not mapNonEmpty!32597) b_and!29439 (not b_next!18009) (not b!943371) tp_is_empty!20517)
(check-sat b_and!29439 (not b_next!18009))
(get-model)

(declare-fun d!114145 () Bool)

(assert (=> d!114145 (= (array_inv!21266 (_keys!10513 thiss!1141)) (bvsge (size!27900 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!943367 d!114145))

(declare-fun d!114147 () Bool)

(assert (=> d!114147 (= (array_inv!21267 (_values!5666 thiss!1141)) (bvsge (size!27899 (_values!5666 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!943367 d!114147))

(declare-fun d!114149 () Bool)

(declare-fun lt!425220 () SeekEntryResult!9044)

(assert (=> d!114149 (and (or ((_ is MissingVacant!9044) lt!425220) (not ((_ is Found!9044) lt!425220)) (and (bvsge (index!38547 lt!425220) #b00000000000000000000000000000000) (bvslt (index!38547 lt!425220) (size!27900 (_keys!10513 thiss!1141))))) (not ((_ is MissingVacant!9044) lt!425220)) (or (not ((_ is Found!9044) lt!425220)) (= (select (arr!27434 (_keys!10513 thiss!1141)) (index!38547 lt!425220)) key!756)))))

(declare-fun e!530471 () SeekEntryResult!9044)

(assert (=> d!114149 (= lt!425220 e!530471)))

(declare-fun c!98169 () Bool)

(declare-fun lt!425223 () SeekEntryResult!9044)

(assert (=> d!114149 (= c!98169 (and ((_ is Intermediate!9044) lt!425223) (undefined!9856 lt!425223)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57024 (_ BitVec 32)) SeekEntryResult!9044)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114149 (= lt!425223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27266 thiss!1141)) key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114149 (validMask!0 (mask!27266 thiss!1141))))

(assert (=> d!114149 (= (seekEntry!0 key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)) lt!425220)))

(declare-fun b!943410 () Bool)

(declare-fun e!530469 () SeekEntryResult!9044)

(assert (=> b!943410 (= e!530469 (Found!9044 (index!38548 lt!425223)))))

(declare-fun b!943411 () Bool)

(declare-fun e!530470 () SeekEntryResult!9044)

(declare-fun lt!425222 () SeekEntryResult!9044)

(assert (=> b!943411 (= e!530470 (ite ((_ is MissingVacant!9044) lt!425222) (MissingZero!9044 (index!38549 lt!425222)) lt!425222))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57024 (_ BitVec 32)) SeekEntryResult!9044)

(assert (=> b!943411 (= lt!425222 (seekKeyOrZeroReturnVacant!0 (x!81014 lt!425223) (index!38548 lt!425223) (index!38548 lt!425223) key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))

(declare-fun b!943412 () Bool)

(declare-fun c!98168 () Bool)

(declare-fun lt!425221 () (_ BitVec 64))

(assert (=> b!943412 (= c!98168 (= lt!425221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!943412 (= e!530469 e!530470)))

(declare-fun b!943413 () Bool)

(assert (=> b!943413 (= e!530471 e!530469)))

(assert (=> b!943413 (= lt!425221 (select (arr!27434 (_keys!10513 thiss!1141)) (index!38548 lt!425223)))))

(declare-fun c!98167 () Bool)

(assert (=> b!943413 (= c!98167 (= lt!425221 key!756))))

(declare-fun b!943414 () Bool)

(assert (=> b!943414 (= e!530470 (MissingZero!9044 (index!38548 lt!425223)))))

(declare-fun b!943415 () Bool)

(assert (=> b!943415 (= e!530471 Undefined!9044)))

(assert (= (and d!114149 c!98169) b!943415))

(assert (= (and d!114149 (not c!98169)) b!943413))

(assert (= (and b!943413 c!98167) b!943410))

(assert (= (and b!943413 (not c!98167)) b!943412))

(assert (= (and b!943412 c!98168) b!943414))

(assert (= (and b!943412 (not c!98168)) b!943411))

(declare-fun m!877649 () Bool)

(assert (=> d!114149 m!877649))

(declare-fun m!877651 () Bool)

(assert (=> d!114149 m!877651))

(assert (=> d!114149 m!877651))

(declare-fun m!877653 () Bool)

(assert (=> d!114149 m!877653))

(declare-fun m!877655 () Bool)

(assert (=> d!114149 m!877655))

(declare-fun m!877657 () Bool)

(assert (=> b!943411 m!877657))

(declare-fun m!877659 () Bool)

(assert (=> b!943413 m!877659))

(assert (=> b!943370 d!114149))

(declare-fun d!114151 () Bool)

(declare-fun res!634003 () Bool)

(declare-fun e!530474 () Bool)

(assert (=> d!114151 (=> (not res!634003) (not e!530474))))

(declare-fun simpleValid!347 (LongMapFixedSize!4704) Bool)

(assert (=> d!114151 (= res!634003 (simpleValid!347 thiss!1141))))

(assert (=> d!114151 (= (valid!1777 thiss!1141) e!530474)))

(declare-fun b!943422 () Bool)

(declare-fun res!634004 () Bool)

(assert (=> b!943422 (=> (not res!634004) (not e!530474))))

(declare-fun arrayCountValidKeys!0 (array!57024 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!943422 (= res!634004 (= (arrayCountValidKeys!0 (_keys!10513 thiss!1141) #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))) (_size!2407 thiss!1141)))))

(declare-fun b!943423 () Bool)

(declare-fun res!634005 () Bool)

(assert (=> b!943423 (=> (not res!634005) (not e!530474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57024 (_ BitVec 32)) Bool)

(assert (=> b!943423 (= res!634005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))

(declare-fun b!943424 () Bool)

(declare-datatypes ((List!19389 0))(
  ( (Nil!19386) (Cons!19385 (h!20535 (_ BitVec 64)) (t!27714 List!19389)) )
))
(declare-fun arrayNoDuplicates!0 (array!57024 (_ BitVec 32) List!19389) Bool)

(assert (=> b!943424 (= e!530474 (arrayNoDuplicates!0 (_keys!10513 thiss!1141) #b00000000000000000000000000000000 Nil!19386))))

(assert (= (and d!114151 res!634003) b!943422))

(assert (= (and b!943422 res!634004) b!943423))

(assert (= (and b!943423 res!634005) b!943424))

(declare-fun m!877661 () Bool)

(assert (=> d!114151 m!877661))

(declare-fun m!877663 () Bool)

(assert (=> b!943422 m!877663))

(declare-fun m!877665 () Bool)

(assert (=> b!943423 m!877665))

(declare-fun m!877667 () Bool)

(assert (=> b!943424 m!877667))

(assert (=> start!80338 d!114151))

(declare-fun d!114153 () Bool)

(declare-fun e!530480 () Bool)

(assert (=> d!114153 e!530480))

(declare-fun res!634008 () Bool)

(assert (=> d!114153 (=> res!634008 e!530480)))

(declare-fun lt!425234 () Bool)

(assert (=> d!114153 (= res!634008 (not lt!425234))))

(declare-fun lt!425235 () Bool)

(assert (=> d!114153 (= lt!425234 lt!425235)))

(declare-fun lt!425232 () Unit!31819)

(declare-fun e!530479 () Unit!31819)

(assert (=> d!114153 (= lt!425232 e!530479)))

(declare-fun c!98172 () Bool)

(assert (=> d!114153 (= c!98172 lt!425235)))

(declare-fun containsKey!453 (List!19387 (_ BitVec 64)) Bool)

(assert (=> d!114153 (= lt!425235 (containsKey!453 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))

(assert (=> d!114153 (= (contains!5166 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)) key!756) lt!425234)))

(declare-fun b!943431 () Bool)

(declare-fun lt!425233 () Unit!31819)

(assert (=> b!943431 (= e!530479 lt!425233)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!348 (List!19387 (_ BitVec 64)) Unit!31819)

(assert (=> b!943431 (= lt!425233 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))

(declare-datatypes ((Option!494 0))(
  ( (Some!493 (v!12842 V!32321)) (None!492) )
))
(declare-fun isDefined!358 (Option!494) Bool)

(declare-fun getValueByKey!488 (List!19387 (_ BitVec 64)) Option!494)

(assert (=> b!943431 (isDefined!358 (getValueByKey!488 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))

(declare-fun b!943432 () Bool)

(declare-fun Unit!31821 () Unit!31819)

(assert (=> b!943432 (= e!530479 Unit!31821)))

(declare-fun b!943433 () Bool)

(assert (=> b!943433 (= e!530480 (isDefined!358 (getValueByKey!488 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756)))))

(assert (= (and d!114153 c!98172) b!943431))

(assert (= (and d!114153 (not c!98172)) b!943432))

(assert (= (and d!114153 (not res!634008)) b!943433))

(declare-fun m!877669 () Bool)

(assert (=> d!114153 m!877669))

(declare-fun m!877671 () Bool)

(assert (=> b!943431 m!877671))

(declare-fun m!877673 () Bool)

(assert (=> b!943431 m!877673))

(assert (=> b!943431 m!877673))

(declare-fun m!877675 () Bool)

(assert (=> b!943431 m!877675))

(assert (=> b!943433 m!877673))

(assert (=> b!943433 m!877673))

(assert (=> b!943433 m!877675))

(assert (=> b!943371 d!114153))

(declare-fun b!943476 () Bool)

(declare-fun e!530512 () ListLongMap!12259)

(declare-fun e!530513 () ListLongMap!12259)

(assert (=> b!943476 (= e!530512 e!530513)))

(declare-fun c!98190 () Bool)

(assert (=> b!943476 (= c!98190 (and (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40978 () Bool)

(declare-fun c!98185 () Bool)

(declare-fun call!40982 () ListLongMap!12259)

(declare-fun call!40980 () ListLongMap!12259)

(declare-fun call!40984 () ListLongMap!12259)

(declare-fun call!40985 () ListLongMap!12259)

(declare-fun +!2815 (ListLongMap!12259 tuple2!13548) ListLongMap!12259)

(assert (=> bm!40978 (= call!40982 (+!2815 (ite c!98185 call!40985 (ite c!98190 call!40984 call!40980)) (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))

(declare-fun b!943477 () Bool)

(declare-fun e!530515 () Bool)

(declare-fun e!530514 () Bool)

(assert (=> b!943477 (= e!530515 e!530514)))

(declare-fun res!634032 () Bool)

(assert (=> b!943477 (=> (not res!634032) (not e!530514))))

(declare-fun lt!425292 () ListLongMap!12259)

(assert (=> b!943477 (= res!634032 (contains!5166 lt!425292 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!943477 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943478 () Bool)

(declare-fun e!530510 () ListLongMap!12259)

(declare-fun call!40981 () ListLongMap!12259)

(assert (=> b!943478 (= e!530510 call!40981)))

(declare-fun bm!40979 () Bool)

(assert (=> bm!40979 (= call!40980 call!40984)))

(declare-fun b!943479 () Bool)

(declare-fun e!530518 () Bool)

(declare-fun call!40986 () Bool)

(assert (=> b!943479 (= e!530518 (not call!40986))))

(declare-fun b!943480 () Bool)

(declare-fun c!98187 () Bool)

(assert (=> b!943480 (= c!98187 (and (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!943480 (= e!530513 e!530510)))

(declare-fun b!943481 () Bool)

(declare-fun e!530517 () Bool)

(assert (=> b!943481 (= e!530517 e!530518)))

(declare-fun c!98189 () Bool)

(assert (=> b!943481 (= c!98189 (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40980 () Bool)

(declare-fun call!40983 () Bool)

(assert (=> bm!40980 (= call!40983 (contains!5166 lt!425292 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!943482 () Bool)

(declare-fun e!530519 () Bool)

(assert (=> b!943482 (= e!530518 e!530519)))

(declare-fun res!634034 () Bool)

(assert (=> b!943482 (= res!634034 call!40986)))

(assert (=> b!943482 (=> (not res!634034) (not e!530519))))

(declare-fun b!943483 () Bool)

(assert (=> b!943483 (= e!530513 call!40981)))

(declare-fun b!943484 () Bool)

(declare-fun e!530507 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!943484 (= e!530507 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!943485 () Bool)

(declare-fun e!530516 () Bool)

(declare-fun apply!901 (ListLongMap!12259 (_ BitVec 64)) V!32321)

(assert (=> b!943485 (= e!530516 (= (apply!901 lt!425292 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5479 thiss!1141)))))

(declare-fun b!943486 () Bool)

(assert (=> b!943486 (= e!530519 (= (apply!901 lt!425292 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5479 thiss!1141)))))

(declare-fun b!943487 () Bool)

(declare-fun res!634031 () Bool)

(assert (=> b!943487 (=> (not res!634031) (not e!530517))))

(assert (=> b!943487 (= res!634031 e!530515)))

(declare-fun res!634033 () Bool)

(assert (=> b!943487 (=> res!634033 e!530515)))

(declare-fun e!530508 () Bool)

(assert (=> b!943487 (= res!634033 (not e!530508))))

(declare-fun res!634029 () Bool)

(assert (=> b!943487 (=> (not res!634029) (not e!530508))))

(assert (=> b!943487 (= res!634029 (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943488 () Bool)

(declare-fun e!530511 () Bool)

(assert (=> b!943488 (= e!530511 (not call!40983))))

(declare-fun b!943489 () Bool)

(assert (=> b!943489 (= e!530511 e!530516)))

(declare-fun res!634027 () Bool)

(assert (=> b!943489 (= res!634027 call!40983)))

(assert (=> b!943489 (=> (not res!634027) (not e!530516))))

(declare-fun b!943490 () Bool)

(declare-fun res!634028 () Bool)

(assert (=> b!943490 (=> (not res!634028) (not e!530517))))

(assert (=> b!943490 (= res!634028 e!530511)))

(declare-fun c!98186 () Bool)

(assert (=> b!943490 (= c!98186 (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40977 () Bool)

(assert (=> bm!40977 (= call!40984 call!40985)))

(declare-fun d!114155 () Bool)

(assert (=> d!114155 e!530517))

(declare-fun res!634035 () Bool)

(assert (=> d!114155 (=> (not res!634035) (not e!530517))))

(assert (=> d!114155 (= res!634035 (or (bvsge #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))))

(declare-fun lt!425281 () ListLongMap!12259)

(assert (=> d!114155 (= lt!425292 lt!425281)))

(declare-fun lt!425286 () Unit!31819)

(declare-fun e!530509 () Unit!31819)

(assert (=> d!114155 (= lt!425286 e!530509)))

(declare-fun c!98188 () Bool)

(assert (=> d!114155 (= c!98188 e!530507)))

(declare-fun res!634030 () Bool)

(assert (=> d!114155 (=> (not res!634030) (not e!530507))))

(assert (=> d!114155 (= res!634030 (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> d!114155 (= lt!425281 e!530512)))

(assert (=> d!114155 (= c!98185 (and (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114155 (validMask!0 (mask!27266 thiss!1141))))

(assert (=> d!114155 (= (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)) lt!425292)))

(declare-fun b!943491 () Bool)

(assert (=> b!943491 (= e!530508 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!943492 () Bool)

(assert (=> b!943492 (= e!530512 (+!2815 call!40982 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))

(declare-fun b!943493 () Bool)

(declare-fun lt!425299 () Unit!31819)

(assert (=> b!943493 (= e!530509 lt!425299)))

(declare-fun lt!425293 () ListLongMap!12259)

(declare-fun getCurrentListMapNoExtraKeys!3321 (array!57024 array!57022 (_ BitVec 32) (_ BitVec 32) V!32321 V!32321 (_ BitVec 32) Int) ListLongMap!12259)

(assert (=> b!943493 (= lt!425293 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))

(declare-fun lt!425301 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425301 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425295 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425295 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425287 () Unit!31819)

(declare-fun addStillContains!571 (ListLongMap!12259 (_ BitVec 64) V!32321 (_ BitVec 64)) Unit!31819)

(assert (=> b!943493 (= lt!425287 (addStillContains!571 lt!425293 lt!425301 (zeroValue!5479 thiss!1141) lt!425295))))

(assert (=> b!943493 (contains!5166 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))) lt!425295)))

(declare-fun lt!425291 () Unit!31819)

(assert (=> b!943493 (= lt!425291 lt!425287)))

(declare-fun lt!425297 () ListLongMap!12259)

(assert (=> b!943493 (= lt!425297 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))

(declare-fun lt!425290 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425290 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425296 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425296 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425282 () Unit!31819)

(declare-fun addApplyDifferent!445 (ListLongMap!12259 (_ BitVec 64) V!32321 (_ BitVec 64)) Unit!31819)

(assert (=> b!943493 (= lt!425282 (addApplyDifferent!445 lt!425297 lt!425290 (minValue!5479 thiss!1141) lt!425296))))

(assert (=> b!943493 (= (apply!901 (+!2815 lt!425297 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))) lt!425296) (apply!901 lt!425297 lt!425296))))

(declare-fun lt!425288 () Unit!31819)

(assert (=> b!943493 (= lt!425288 lt!425282)))

(declare-fun lt!425280 () ListLongMap!12259)

(assert (=> b!943493 (= lt!425280 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))

(declare-fun lt!425294 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425294 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425284 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425284 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425285 () Unit!31819)

(assert (=> b!943493 (= lt!425285 (addApplyDifferent!445 lt!425280 lt!425294 (zeroValue!5479 thiss!1141) lt!425284))))

(assert (=> b!943493 (= (apply!901 (+!2815 lt!425280 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))) lt!425284) (apply!901 lt!425280 lt!425284))))

(declare-fun lt!425283 () Unit!31819)

(assert (=> b!943493 (= lt!425283 lt!425285)))

(declare-fun lt!425298 () ListLongMap!12259)

(assert (=> b!943493 (= lt!425298 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))

(declare-fun lt!425289 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425289 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!425300 () (_ BitVec 64))

(assert (=> b!943493 (= lt!425300 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!943493 (= lt!425299 (addApplyDifferent!445 lt!425298 lt!425289 (minValue!5479 thiss!1141) lt!425300))))

(assert (=> b!943493 (= (apply!901 (+!2815 lt!425298 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))) lt!425300) (apply!901 lt!425298 lt!425300))))

(declare-fun b!943494 () Bool)

(assert (=> b!943494 (= e!530510 call!40980)))

(declare-fun b!943495 () Bool)

(declare-fun get!14451 (ValueCell!9777 V!32321) V!32321)

(declare-fun dynLambda!1654 (Int (_ BitVec 64)) V!32321)

(assert (=> b!943495 (= e!530514 (= (apply!901 lt!425292 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)) (get!14451 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!943495 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27899 (_values!5666 thiss!1141))))))

(assert (=> b!943495 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943496 () Bool)

(declare-fun Unit!31822 () Unit!31819)

(assert (=> b!943496 (= e!530509 Unit!31822)))

(declare-fun bm!40981 () Bool)

(assert (=> bm!40981 (= call!40981 call!40982)))

(declare-fun bm!40982 () Bool)

(assert (=> bm!40982 (= call!40985 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))

(declare-fun bm!40983 () Bool)

(assert (=> bm!40983 (= call!40986 (contains!5166 lt!425292 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!114155 c!98185) b!943492))

(assert (= (and d!114155 (not c!98185)) b!943476))

(assert (= (and b!943476 c!98190) b!943483))

(assert (= (and b!943476 (not c!98190)) b!943480))

(assert (= (and b!943480 c!98187) b!943478))

(assert (= (and b!943480 (not c!98187)) b!943494))

(assert (= (or b!943478 b!943494) bm!40979))

(assert (= (or b!943483 bm!40979) bm!40977))

(assert (= (or b!943483 b!943478) bm!40981))

(assert (= (or b!943492 bm!40977) bm!40982))

(assert (= (or b!943492 bm!40981) bm!40978))

(assert (= (and d!114155 res!634030) b!943484))

(assert (= (and d!114155 c!98188) b!943493))

(assert (= (and d!114155 (not c!98188)) b!943496))

(assert (= (and d!114155 res!634035) b!943487))

(assert (= (and b!943487 res!634029) b!943491))

(assert (= (and b!943487 (not res!634033)) b!943477))

(assert (= (and b!943477 res!634032) b!943495))

(assert (= (and b!943487 res!634031) b!943490))

(assert (= (and b!943490 c!98186) b!943489))

(assert (= (and b!943490 (not c!98186)) b!943488))

(assert (= (and b!943489 res!634027) b!943485))

(assert (= (or b!943489 b!943488) bm!40980))

(assert (= (and b!943490 res!634028) b!943481))

(assert (= (and b!943481 c!98189) b!943482))

(assert (= (and b!943481 (not c!98189)) b!943479))

(assert (= (and b!943482 res!634034) b!943486))

(assert (= (or b!943482 b!943479) bm!40983))

(declare-fun b_lambda!14309 () Bool)

(assert (=> (not b_lambda!14309) (not b!943495)))

(declare-fun t!27713 () Bool)

(declare-fun tb!6175 () Bool)

(assert (=> (and b!943367 (= (defaultEntry!5643 thiss!1141) (defaultEntry!5643 thiss!1141)) t!27713) tb!6175))

(declare-fun result!12203 () Bool)

(assert (=> tb!6175 (= result!12203 tp_is_empty!20517)))

(assert (=> b!943495 t!27713))

(declare-fun b_and!29443 () Bool)

(assert (= b_and!29439 (and (=> t!27713 result!12203) b_and!29443)))

(declare-fun m!877677 () Bool)

(assert (=> bm!40983 m!877677))

(declare-fun m!877679 () Bool)

(assert (=> b!943477 m!877679))

(assert (=> b!943477 m!877679))

(declare-fun m!877681 () Bool)

(assert (=> b!943477 m!877681))

(declare-fun m!877683 () Bool)

(assert (=> b!943495 m!877683))

(declare-fun m!877685 () Bool)

(assert (=> b!943495 m!877685))

(assert (=> b!943495 m!877679))

(assert (=> b!943495 m!877679))

(declare-fun m!877687 () Bool)

(assert (=> b!943495 m!877687))

(assert (=> b!943495 m!877683))

(assert (=> b!943495 m!877685))

(declare-fun m!877689 () Bool)

(assert (=> b!943495 m!877689))

(declare-fun m!877691 () Bool)

(assert (=> b!943486 m!877691))

(declare-fun m!877693 () Bool)

(assert (=> bm!40980 m!877693))

(declare-fun m!877695 () Bool)

(assert (=> bm!40978 m!877695))

(declare-fun m!877697 () Bool)

(assert (=> bm!40982 m!877697))

(declare-fun m!877699 () Bool)

(assert (=> b!943492 m!877699))

(assert (=> b!943484 m!877679))

(assert (=> b!943484 m!877679))

(declare-fun m!877701 () Bool)

(assert (=> b!943484 m!877701))

(assert (=> d!114155 m!877655))

(declare-fun m!877703 () Bool)

(assert (=> b!943493 m!877703))

(assert (=> b!943493 m!877697))

(declare-fun m!877705 () Bool)

(assert (=> b!943493 m!877705))

(assert (=> b!943493 m!877705))

(declare-fun m!877707 () Bool)

(assert (=> b!943493 m!877707))

(declare-fun m!877709 () Bool)

(assert (=> b!943493 m!877709))

(declare-fun m!877711 () Bool)

(assert (=> b!943493 m!877711))

(declare-fun m!877713 () Bool)

(assert (=> b!943493 m!877713))

(declare-fun m!877715 () Bool)

(assert (=> b!943493 m!877715))

(assert (=> b!943493 m!877679))

(declare-fun m!877717 () Bool)

(assert (=> b!943493 m!877717))

(declare-fun m!877719 () Bool)

(assert (=> b!943493 m!877719))

(declare-fun m!877721 () Bool)

(assert (=> b!943493 m!877721))

(assert (=> b!943493 m!877721))

(declare-fun m!877723 () Bool)

(assert (=> b!943493 m!877723))

(declare-fun m!877725 () Bool)

(assert (=> b!943493 m!877725))

(assert (=> b!943493 m!877703))

(declare-fun m!877727 () Bool)

(assert (=> b!943493 m!877727))

(declare-fun m!877729 () Bool)

(assert (=> b!943493 m!877729))

(assert (=> b!943493 m!877717))

(declare-fun m!877731 () Bool)

(assert (=> b!943493 m!877731))

(declare-fun m!877733 () Bool)

(assert (=> b!943485 m!877733))

(assert (=> b!943491 m!877679))

(assert (=> b!943491 m!877679))

(assert (=> b!943491 m!877701))

(assert (=> b!943371 d!114155))

(declare-fun d!114157 () Bool)

(declare-fun res!634040 () Bool)

(declare-fun e!530524 () Bool)

(assert (=> d!114157 (=> res!634040 e!530524)))

(assert (=> d!114157 (= res!634040 (= (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114157 (= (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 #b00000000000000000000000000000000) e!530524)))

(declare-fun b!943503 () Bool)

(declare-fun e!530525 () Bool)

(assert (=> b!943503 (= e!530524 e!530525)))

(declare-fun res!634041 () Bool)

(assert (=> b!943503 (=> (not res!634041) (not e!530525))))

(assert (=> b!943503 (= res!634041 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943504 () Bool)

(assert (=> b!943504 (= e!530525 (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114157 (not res!634040)) b!943503))

(assert (= (and b!943503 res!634041) b!943504))

(assert (=> d!114157 m!877679))

(declare-fun m!877735 () Bool)

(assert (=> b!943504 m!877735))

(assert (=> b!943373 d!114157))

(declare-fun d!114159 () Bool)

(declare-fun e!530528 () Bool)

(assert (=> d!114159 e!530528))

(declare-fun c!98193 () Bool)

(assert (=> d!114159 (= c!98193 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!425304 () Unit!31819)

(declare-fun choose!1573 (array!57024 array!57022 (_ BitVec 32) (_ BitVec 32) V!32321 V!32321 (_ BitVec 64) Int) Unit!31819)

(assert (=> d!114159 (= lt!425304 (choose!1573 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) key!756 (defaultEntry!5643 thiss!1141)))))

(assert (=> d!114159 (validMask!0 (mask!27266 thiss!1141))))

(assert (=> d!114159 (= (lemmaKeyInListMapIsInArray!296 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) key!756 (defaultEntry!5643 thiss!1141)) lt!425304)))

(declare-fun b!943509 () Bool)

(assert (=> b!943509 (= e!530528 (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!943510 () Bool)

(assert (=> b!943510 (= e!530528 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!114159 c!98193) b!943509))

(assert (= (and d!114159 (not c!98193)) b!943510))

(declare-fun m!877737 () Bool)

(assert (=> d!114159 m!877737))

(assert (=> d!114159 m!877655))

(assert (=> b!943509 m!877625))

(assert (=> b!943373 d!114159))

(declare-fun b!943517 () Bool)

(declare-fun e!530534 () Bool)

(assert (=> b!943517 (= e!530534 tp_is_empty!20517)))

(declare-fun b!943518 () Bool)

(declare-fun e!530533 () Bool)

(assert (=> b!943518 (= e!530533 tp_is_empty!20517)))

(declare-fun mapNonEmpty!32603 () Bool)

(declare-fun mapRes!32603 () Bool)

(declare-fun tp!62543 () Bool)

(assert (=> mapNonEmpty!32603 (= mapRes!32603 (and tp!62543 e!530534))))

(declare-fun mapRest!32603 () (Array (_ BitVec 32) ValueCell!9777))

(declare-fun mapValue!32603 () ValueCell!9777)

(declare-fun mapKey!32603 () (_ BitVec 32))

(assert (=> mapNonEmpty!32603 (= mapRest!32597 (store mapRest!32603 mapKey!32603 mapValue!32603))))

(declare-fun condMapEmpty!32603 () Bool)

(declare-fun mapDefault!32603 () ValueCell!9777)

(assert (=> mapNonEmpty!32597 (= condMapEmpty!32603 (= mapRest!32597 ((as const (Array (_ BitVec 32) ValueCell!9777)) mapDefault!32603)))))

(assert (=> mapNonEmpty!32597 (= tp!62534 (and e!530533 mapRes!32603))))

(declare-fun mapIsEmpty!32603 () Bool)

(assert (=> mapIsEmpty!32603 mapRes!32603))

(assert (= (and mapNonEmpty!32597 condMapEmpty!32603) mapIsEmpty!32603))

(assert (= (and mapNonEmpty!32597 (not condMapEmpty!32603)) mapNonEmpty!32603))

(assert (= (and mapNonEmpty!32603 ((_ is ValueCellFull!9777) mapValue!32603)) b!943517))

(assert (= (and mapNonEmpty!32597 ((_ is ValueCellFull!9777) mapDefault!32603)) b!943518))

(declare-fun m!877739 () Bool)

(assert (=> mapNonEmpty!32603 m!877739))

(declare-fun b_lambda!14311 () Bool)

(assert (= b_lambda!14309 (or (and b!943367 b_free!18009) b_lambda!14311)))

(check-sat (not b!943423) (not b!943477) (not b!943485) (not d!114151) (not mapNonEmpty!32603) (not d!114159) (not b!943424) (not b!943509) (not b!943495) (not b!943504) (not d!114149) (not b!943411) (not b!943484) tp_is_empty!20517 (not d!114155) (not b!943433) (not b!943491) (not b!943486) (not bm!40983) (not b!943422) (not b!943492) (not bm!40978) (not bm!40982) (not bm!40980) (not b!943493) b_and!29443 (not b_lambda!14311) (not d!114153) (not b_next!18009) (not b!943431))
(check-sat b_and!29443 (not b_next!18009))
(get-model)

(declare-fun d!114161 () Bool)

(assert (=> d!114161 (= (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!943491 d!114161))

(declare-fun b!943538 () Bool)

(declare-fun e!530546 () SeekEntryResult!9044)

(declare-fun e!530548 () SeekEntryResult!9044)

(assert (=> b!943538 (= e!530546 e!530548)))

(declare-fun c!98200 () Bool)

(declare-fun lt!425309 () (_ BitVec 64))

(assert (=> b!943538 (= c!98200 (or (= lt!425309 key!756) (= (bvadd lt!425309 lt!425309) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!943539 () Bool)

(declare-fun lt!425310 () SeekEntryResult!9044)

(assert (=> b!943539 (and (bvsge (index!38548 lt!425310) #b00000000000000000000000000000000) (bvslt (index!38548 lt!425310) (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun e!530545 () Bool)

(assert (=> b!943539 (= e!530545 (= (select (arr!27434 (_keys!10513 thiss!1141)) (index!38548 lt!425310)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!943540 () Bool)

(declare-fun e!530549 () Bool)

(assert (=> b!943540 (= e!530549 (bvsge (x!81014 lt!425310) #b01111111111111111111111111111110))))

(declare-fun b!943541 () Bool)

(assert (=> b!943541 (and (bvsge (index!38548 lt!425310) #b00000000000000000000000000000000) (bvslt (index!38548 lt!425310) (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun res!634048 () Bool)

(assert (=> b!943541 (= res!634048 (= (select (arr!27434 (_keys!10513 thiss!1141)) (index!38548 lt!425310)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!943541 (=> res!634048 e!530545)))

(declare-fun b!943542 () Bool)

(assert (=> b!943542 (= e!530548 (Intermediate!9044 false (toIndex!0 key!756 (mask!27266 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!943543 () Bool)

(assert (=> b!943543 (= e!530546 (Intermediate!9044 true (toIndex!0 key!756 (mask!27266 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!114163 () Bool)

(assert (=> d!114163 e!530549))

(declare-fun c!98202 () Bool)

(assert (=> d!114163 (= c!98202 (and ((_ is Intermediate!9044) lt!425310) (undefined!9856 lt!425310)))))

(assert (=> d!114163 (= lt!425310 e!530546)))

(declare-fun c!98201 () Bool)

(assert (=> d!114163 (= c!98201 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114163 (= lt!425309 (select (arr!27434 (_keys!10513 thiss!1141)) (toIndex!0 key!756 (mask!27266 thiss!1141))))))

(assert (=> d!114163 (validMask!0 (mask!27266 thiss!1141))))

(assert (=> d!114163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27266 thiss!1141)) key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)) lt!425310)))

(declare-fun b!943537 () Bool)

(assert (=> b!943537 (and (bvsge (index!38548 lt!425310) #b00000000000000000000000000000000) (bvslt (index!38548 lt!425310) (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun res!634049 () Bool)

(assert (=> b!943537 (= res!634049 (= (select (arr!27434 (_keys!10513 thiss!1141)) (index!38548 lt!425310)) key!756))))

(assert (=> b!943537 (=> res!634049 e!530545)))

(declare-fun e!530547 () Bool)

(assert (=> b!943537 (= e!530547 e!530545)))

(declare-fun b!943544 () Bool)

(assert (=> b!943544 (= e!530549 e!530547)))

(declare-fun res!634050 () Bool)

(assert (=> b!943544 (= res!634050 (and ((_ is Intermediate!9044) lt!425310) (not (undefined!9856 lt!425310)) (bvslt (x!81014 lt!425310) #b01111111111111111111111111111110) (bvsge (x!81014 lt!425310) #b00000000000000000000000000000000) (bvsge (x!81014 lt!425310) #b00000000000000000000000000000000)))))

(assert (=> b!943544 (=> (not res!634050) (not e!530547))))

(declare-fun b!943545 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!943545 (= e!530548 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27266 thiss!1141)) #b00000000000000000000000000000000 (mask!27266 thiss!1141)) key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))

(assert (= (and d!114163 c!98201) b!943543))

(assert (= (and d!114163 (not c!98201)) b!943538))

(assert (= (and b!943538 c!98200) b!943542))

(assert (= (and b!943538 (not c!98200)) b!943545))

(assert (= (and d!114163 c!98202) b!943540))

(assert (= (and d!114163 (not c!98202)) b!943544))

(assert (= (and b!943544 res!634050) b!943537))

(assert (= (and b!943537 (not res!634049)) b!943541))

(assert (= (and b!943541 (not res!634048)) b!943539))

(assert (=> b!943545 m!877651))

(declare-fun m!877741 () Bool)

(assert (=> b!943545 m!877741))

(assert (=> b!943545 m!877741))

(declare-fun m!877743 () Bool)

(assert (=> b!943545 m!877743))

(declare-fun m!877745 () Bool)

(assert (=> b!943537 m!877745))

(assert (=> b!943541 m!877745))

(assert (=> b!943539 m!877745))

(assert (=> d!114163 m!877651))

(declare-fun m!877747 () Bool)

(assert (=> d!114163 m!877747))

(assert (=> d!114163 m!877655))

(assert (=> d!114149 d!114163))

(declare-fun d!114165 () Bool)

(declare-fun lt!425316 () (_ BitVec 32))

(declare-fun lt!425315 () (_ BitVec 32))

(assert (=> d!114165 (= lt!425316 (bvmul (bvxor lt!425315 (bvlshr lt!425315 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114165 (= lt!425315 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114165 (and (bvsge (mask!27266 thiss!1141) #b00000000000000000000000000000000) (let ((res!634051 (let ((h!20536 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81031 (bvmul (bvxor h!20536 (bvlshr h!20536 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81031 (bvlshr x!81031 #b00000000000000000000000000001101)) (mask!27266 thiss!1141)))))) (and (bvslt res!634051 (bvadd (mask!27266 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!634051 #b00000000000000000000000000000000))))))

(assert (=> d!114165 (= (toIndex!0 key!756 (mask!27266 thiss!1141)) (bvand (bvxor lt!425316 (bvlshr lt!425316 #b00000000000000000000000000001101)) (mask!27266 thiss!1141)))))

(assert (=> d!114149 d!114165))

(declare-fun d!114167 () Bool)

(assert (=> d!114167 (= (validMask!0 (mask!27266 thiss!1141)) (and (or (= (mask!27266 thiss!1141) #b00000000000000000000000000000111) (= (mask!27266 thiss!1141) #b00000000000000000000000000001111) (= (mask!27266 thiss!1141) #b00000000000000000000000000011111) (= (mask!27266 thiss!1141) #b00000000000000000000000000111111) (= (mask!27266 thiss!1141) #b00000000000000000000000001111111) (= (mask!27266 thiss!1141) #b00000000000000000000000011111111) (= (mask!27266 thiss!1141) #b00000000000000000000000111111111) (= (mask!27266 thiss!1141) #b00000000000000000000001111111111) (= (mask!27266 thiss!1141) #b00000000000000000000011111111111) (= (mask!27266 thiss!1141) #b00000000000000000000111111111111) (= (mask!27266 thiss!1141) #b00000000000000000001111111111111) (= (mask!27266 thiss!1141) #b00000000000000000011111111111111) (= (mask!27266 thiss!1141) #b00000000000000000111111111111111) (= (mask!27266 thiss!1141) #b00000000000000001111111111111111) (= (mask!27266 thiss!1141) #b00000000000000011111111111111111) (= (mask!27266 thiss!1141) #b00000000000000111111111111111111) (= (mask!27266 thiss!1141) #b00000000000001111111111111111111) (= (mask!27266 thiss!1141) #b00000000000011111111111111111111) (= (mask!27266 thiss!1141) #b00000000000111111111111111111111) (= (mask!27266 thiss!1141) #b00000000001111111111111111111111) (= (mask!27266 thiss!1141) #b00000000011111111111111111111111) (= (mask!27266 thiss!1141) #b00000000111111111111111111111111) (= (mask!27266 thiss!1141) #b00000001111111111111111111111111) (= (mask!27266 thiss!1141) #b00000011111111111111111111111111) (= (mask!27266 thiss!1141) #b00000111111111111111111111111111) (= (mask!27266 thiss!1141) #b00001111111111111111111111111111) (= (mask!27266 thiss!1141) #b00011111111111111111111111111111) (= (mask!27266 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27266 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> d!114149 d!114167))

(assert (=> d!114155 d!114167))

(declare-fun d!114169 () Bool)

(declare-fun get!14452 (Option!494) V!32321)

(assert (=> d!114169 (= (apply!901 lt!425292 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14452 (getValueByKey!488 (toList!6145 lt!425292) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26512 () Bool)

(assert (= bs!26512 d!114169))

(declare-fun m!877749 () Bool)

(assert (=> bs!26512 m!877749))

(assert (=> bs!26512 m!877749))

(declare-fun m!877751 () Bool)

(assert (=> bs!26512 m!877751))

(assert (=> b!943486 d!114169))

(assert (=> b!943484 d!114161))

(declare-fun d!114171 () Bool)

(declare-fun res!634056 () Bool)

(declare-fun e!530554 () Bool)

(assert (=> d!114171 (=> res!634056 e!530554)))

(assert (=> d!114171 (= res!634056 (and ((_ is Cons!19383) (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))) (= (_1!6784 (h!20533 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))))) key!756)))))

(assert (=> d!114171 (= (containsKey!453 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756) e!530554)))

(declare-fun b!943550 () Bool)

(declare-fun e!530555 () Bool)

(assert (=> b!943550 (= e!530554 e!530555)))

(declare-fun res!634057 () Bool)

(assert (=> b!943550 (=> (not res!634057) (not e!530555))))

(assert (=> b!943550 (= res!634057 (and (or (not ((_ is Cons!19383) (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))))) (bvsle (_1!6784 (h!20533 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))))) key!756)) ((_ is Cons!19383) (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))) (bvslt (_1!6784 (h!20533 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))))) key!756)))))

(declare-fun b!943551 () Bool)

(assert (=> b!943551 (= e!530555 (containsKey!453 (t!27710 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))) key!756))))

(assert (= (and d!114171 (not res!634056)) b!943550))

(assert (= (and b!943550 res!634057) b!943551))

(declare-fun m!877753 () Bool)

(assert (=> b!943551 m!877753))

(assert (=> d!114153 d!114171))

(declare-fun d!114173 () Bool)

(assert (=> d!114173 (= (apply!901 lt!425292 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14452 (getValueByKey!488 (toList!6145 lt!425292) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26513 () Bool)

(assert (= bs!26513 d!114173))

(declare-fun m!877755 () Bool)

(assert (=> bs!26513 m!877755))

(assert (=> bs!26513 m!877755))

(declare-fun m!877757 () Bool)

(assert (=> bs!26513 m!877757))

(assert (=> b!943485 d!114173))

(declare-fun d!114175 () Bool)

(declare-fun e!530557 () Bool)

(assert (=> d!114175 e!530557))

(declare-fun res!634058 () Bool)

(assert (=> d!114175 (=> res!634058 e!530557)))

(declare-fun lt!425319 () Bool)

(assert (=> d!114175 (= res!634058 (not lt!425319))))

(declare-fun lt!425320 () Bool)

(assert (=> d!114175 (= lt!425319 lt!425320)))

(declare-fun lt!425317 () Unit!31819)

(declare-fun e!530556 () Unit!31819)

(assert (=> d!114175 (= lt!425317 e!530556)))

(declare-fun c!98203 () Bool)

(assert (=> d!114175 (= c!98203 lt!425320)))

(assert (=> d!114175 (= lt!425320 (containsKey!453 (toList!6145 lt!425292) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114175 (= (contains!5166 lt!425292 #b0000000000000000000000000000000000000000000000000000000000000000) lt!425319)))

(declare-fun b!943552 () Bool)

(declare-fun lt!425318 () Unit!31819)

(assert (=> b!943552 (= e!530556 lt!425318)))

(assert (=> b!943552 (= lt!425318 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!6145 lt!425292) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!943552 (isDefined!358 (getValueByKey!488 (toList!6145 lt!425292) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!943553 () Bool)

(declare-fun Unit!31823 () Unit!31819)

(assert (=> b!943553 (= e!530556 Unit!31823)))

(declare-fun b!943554 () Bool)

(assert (=> b!943554 (= e!530557 (isDefined!358 (getValueByKey!488 (toList!6145 lt!425292) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114175 c!98203) b!943552))

(assert (= (and d!114175 (not c!98203)) b!943553))

(assert (= (and d!114175 (not res!634058)) b!943554))

(declare-fun m!877759 () Bool)

(assert (=> d!114175 m!877759))

(declare-fun m!877761 () Bool)

(assert (=> b!943552 m!877761))

(assert (=> b!943552 m!877755))

(assert (=> b!943552 m!877755))

(declare-fun m!877763 () Bool)

(assert (=> b!943552 m!877763))

(assert (=> b!943554 m!877755))

(assert (=> b!943554 m!877755))

(assert (=> b!943554 m!877763))

(assert (=> bm!40980 d!114175))

(declare-fun d!114177 () Bool)

(assert (=> d!114177 (isDefined!358 (getValueByKey!488 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))

(declare-fun lt!425323 () Unit!31819)

(declare-fun choose!1574 (List!19387 (_ BitVec 64)) Unit!31819)

(assert (=> d!114177 (= lt!425323 (choose!1574 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))

(declare-fun e!530560 () Bool)

(assert (=> d!114177 e!530560))

(declare-fun res!634061 () Bool)

(assert (=> d!114177 (=> (not res!634061) (not e!530560))))

(declare-fun isStrictlySorted!501 (List!19387) Bool)

(assert (=> d!114177 (= res!634061 (isStrictlySorted!501 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))))

(assert (=> d!114177 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756) lt!425323)))

(declare-fun b!943557 () Bool)

(assert (=> b!943557 (= e!530560 (containsKey!453 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))

(assert (= (and d!114177 res!634061) b!943557))

(assert (=> d!114177 m!877673))

(assert (=> d!114177 m!877673))

(assert (=> d!114177 m!877675))

(declare-fun m!877765 () Bool)

(assert (=> d!114177 m!877765))

(declare-fun m!877767 () Bool)

(assert (=> d!114177 m!877767))

(assert (=> b!943557 m!877669))

(assert (=> b!943431 d!114177))

(declare-fun d!114179 () Bool)

(declare-fun isEmpty!705 (Option!494) Bool)

(assert (=> d!114179 (= (isDefined!358 (getValueByKey!488 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756)) (not (isEmpty!705 (getValueByKey!488 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756))))))

(declare-fun bs!26514 () Bool)

(assert (= bs!26514 d!114179))

(assert (=> bs!26514 m!877673))

(declare-fun m!877769 () Bool)

(assert (=> bs!26514 m!877769))

(assert (=> b!943431 d!114179))

(declare-fun b!943569 () Bool)

(declare-fun e!530566 () Option!494)

(assert (=> b!943569 (= e!530566 None!492)))

(declare-fun b!943568 () Bool)

(assert (=> b!943568 (= e!530566 (getValueByKey!488 (t!27710 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))) key!756))))

(declare-fun b!943566 () Bool)

(declare-fun e!530565 () Option!494)

(assert (=> b!943566 (= e!530565 (Some!493 (_2!6784 (h!20533 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))))))))

(declare-fun d!114181 () Bool)

(declare-fun c!98208 () Bool)

(assert (=> d!114181 (= c!98208 (and ((_ is Cons!19383) (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))) (= (_1!6784 (h!20533 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))))) key!756)))))

(assert (=> d!114181 (= (getValueByKey!488 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))) key!756) e!530565)))

(declare-fun b!943567 () Bool)

(assert (=> b!943567 (= e!530565 e!530566)))

(declare-fun c!98209 () Bool)

(assert (=> b!943567 (= c!98209 (and ((_ is Cons!19383) (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)))) (not (= (_1!6784 (h!20533 (toList!6145 (getCurrentListMap!3333 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141))))) key!756))))))

(assert (= (and d!114181 c!98208) b!943566))

(assert (= (and d!114181 (not c!98208)) b!943567))

(assert (= (and b!943567 c!98209) b!943568))

(assert (= (and b!943567 (not c!98209)) b!943569))

(declare-fun m!877771 () Bool)

(assert (=> b!943568 m!877771))

(assert (=> b!943431 d!114181))

(assert (=> b!943433 d!114179))

(assert (=> b!943433 d!114181))

(declare-fun b!943582 () Bool)

(declare-fun e!530573 () SeekEntryResult!9044)

(assert (=> b!943582 (= e!530573 (MissingVacant!9044 (index!38548 lt!425223)))))

(declare-fun b!943583 () Bool)

(declare-fun e!530575 () SeekEntryResult!9044)

(assert (=> b!943583 (= e!530575 Undefined!9044)))

(declare-fun b!943584 () Bool)

(declare-fun e!530574 () SeekEntryResult!9044)

(assert (=> b!943584 (= e!530575 e!530574)))

(declare-fun c!98217 () Bool)

(declare-fun lt!425328 () (_ BitVec 64))

(assert (=> b!943584 (= c!98217 (= lt!425328 key!756))))

(declare-fun b!943585 () Bool)

(assert (=> b!943585 (= e!530573 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81014 lt!425223) #b00000000000000000000000000000001) (nextIndex!0 (index!38548 lt!425223) (x!81014 lt!425223) (mask!27266 thiss!1141)) (index!38548 lt!425223) key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))

(declare-fun b!943586 () Bool)

(declare-fun c!98218 () Bool)

(assert (=> b!943586 (= c!98218 (= lt!425328 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!943586 (= e!530574 e!530573)))

(declare-fun b!943587 () Bool)

(assert (=> b!943587 (= e!530574 (Found!9044 (index!38548 lt!425223)))))

(declare-fun d!114183 () Bool)

(declare-fun lt!425329 () SeekEntryResult!9044)

(assert (=> d!114183 (and (or ((_ is Undefined!9044) lt!425329) (not ((_ is Found!9044) lt!425329)) (and (bvsge (index!38547 lt!425329) #b00000000000000000000000000000000) (bvslt (index!38547 lt!425329) (size!27900 (_keys!10513 thiss!1141))))) (or ((_ is Undefined!9044) lt!425329) ((_ is Found!9044) lt!425329) (not ((_ is MissingVacant!9044) lt!425329)) (not (= (index!38549 lt!425329) (index!38548 lt!425223))) (and (bvsge (index!38549 lt!425329) #b00000000000000000000000000000000) (bvslt (index!38549 lt!425329) (size!27900 (_keys!10513 thiss!1141))))) (or ((_ is Undefined!9044) lt!425329) (ite ((_ is Found!9044) lt!425329) (= (select (arr!27434 (_keys!10513 thiss!1141)) (index!38547 lt!425329)) key!756) (and ((_ is MissingVacant!9044) lt!425329) (= (index!38549 lt!425329) (index!38548 lt!425223)) (= (select (arr!27434 (_keys!10513 thiss!1141)) (index!38549 lt!425329)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114183 (= lt!425329 e!530575)))

(declare-fun c!98216 () Bool)

(assert (=> d!114183 (= c!98216 (bvsge (x!81014 lt!425223) #b01111111111111111111111111111110))))

(assert (=> d!114183 (= lt!425328 (select (arr!27434 (_keys!10513 thiss!1141)) (index!38548 lt!425223)))))

(assert (=> d!114183 (validMask!0 (mask!27266 thiss!1141))))

(assert (=> d!114183 (= (seekKeyOrZeroReturnVacant!0 (x!81014 lt!425223) (index!38548 lt!425223) (index!38548 lt!425223) key!756 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)) lt!425329)))

(assert (= (and d!114183 c!98216) b!943583))

(assert (= (and d!114183 (not c!98216)) b!943584))

(assert (= (and b!943584 c!98217) b!943587))

(assert (= (and b!943584 (not c!98217)) b!943586))

(assert (= (and b!943586 c!98218) b!943582))

(assert (= (and b!943586 (not c!98218)) b!943585))

(declare-fun m!877773 () Bool)

(assert (=> b!943585 m!877773))

(assert (=> b!943585 m!877773))

(declare-fun m!877775 () Bool)

(assert (=> b!943585 m!877775))

(declare-fun m!877777 () Bool)

(assert (=> d!114183 m!877777))

(declare-fun m!877779 () Bool)

(assert (=> d!114183 m!877779))

(assert (=> d!114183 m!877659))

(assert (=> d!114183 m!877655))

(assert (=> b!943411 d!114183))

(declare-fun b!943598 () Bool)

(declare-fun e!530587 () Bool)

(declare-fun call!40989 () Bool)

(assert (=> b!943598 (= e!530587 call!40989)))

(declare-fun b!943599 () Bool)

(assert (=> b!943599 (= e!530587 call!40989)))

(declare-fun bm!40986 () Bool)

(declare-fun c!98221 () Bool)

(assert (=> bm!40986 (= call!40989 (arrayNoDuplicates!0 (_keys!10513 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98221 (Cons!19385 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000) Nil!19386) Nil!19386)))))

(declare-fun b!943600 () Bool)

(declare-fun e!530586 () Bool)

(assert (=> b!943600 (= e!530586 e!530587)))

(assert (=> b!943600 (= c!98221 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!943602 () Bool)

(declare-fun e!530584 () Bool)

(assert (=> b!943602 (= e!530584 e!530586)))

(declare-fun res!634069 () Bool)

(assert (=> b!943602 (=> (not res!634069) (not e!530586))))

(declare-fun e!530585 () Bool)

(assert (=> b!943602 (= res!634069 (not e!530585))))

(declare-fun res!634068 () Bool)

(assert (=> b!943602 (=> (not res!634068) (not e!530585))))

(assert (=> b!943602 (= res!634068 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114185 () Bool)

(declare-fun res!634070 () Bool)

(assert (=> d!114185 (=> res!634070 e!530584)))

(assert (=> d!114185 (= res!634070 (bvsge #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> d!114185 (= (arrayNoDuplicates!0 (_keys!10513 thiss!1141) #b00000000000000000000000000000000 Nil!19386) e!530584)))

(declare-fun b!943601 () Bool)

(declare-fun contains!5168 (List!19389 (_ BitVec 64)) Bool)

(assert (=> b!943601 (= e!530585 (contains!5168 Nil!19386 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114185 (not res!634070)) b!943602))

(assert (= (and b!943602 res!634068) b!943601))

(assert (= (and b!943602 res!634069) b!943600))

(assert (= (and b!943600 c!98221) b!943598))

(assert (= (and b!943600 (not c!98221)) b!943599))

(assert (= (or b!943598 b!943599) bm!40986))

(assert (=> bm!40986 m!877679))

(declare-fun m!877781 () Bool)

(assert (=> bm!40986 m!877781))

(assert (=> b!943600 m!877679))

(assert (=> b!943600 m!877679))

(assert (=> b!943600 m!877701))

(assert (=> b!943602 m!877679))

(assert (=> b!943602 m!877679))

(assert (=> b!943602 m!877701))

(assert (=> b!943601 m!877679))

(assert (=> b!943601 m!877679))

(declare-fun m!877783 () Bool)

(assert (=> b!943601 m!877783))

(assert (=> b!943424 d!114185))

(declare-fun d!114187 () Bool)

(declare-fun e!530589 () Bool)

(assert (=> d!114187 e!530589))

(declare-fun res!634071 () Bool)

(assert (=> d!114187 (=> res!634071 e!530589)))

(declare-fun lt!425332 () Bool)

(assert (=> d!114187 (= res!634071 (not lt!425332))))

(declare-fun lt!425333 () Bool)

(assert (=> d!114187 (= lt!425332 lt!425333)))

(declare-fun lt!425330 () Unit!31819)

(declare-fun e!530588 () Unit!31819)

(assert (=> d!114187 (= lt!425330 e!530588)))

(declare-fun c!98222 () Bool)

(assert (=> d!114187 (= c!98222 lt!425333)))

(assert (=> d!114187 (= lt!425333 (containsKey!453 (toList!6145 lt!425292) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114187 (= (contains!5166 lt!425292 #b1000000000000000000000000000000000000000000000000000000000000000) lt!425332)))

(declare-fun b!943603 () Bool)

(declare-fun lt!425331 () Unit!31819)

(assert (=> b!943603 (= e!530588 lt!425331)))

(assert (=> b!943603 (= lt!425331 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!6145 lt!425292) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!943603 (isDefined!358 (getValueByKey!488 (toList!6145 lt!425292) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!943604 () Bool)

(declare-fun Unit!31824 () Unit!31819)

(assert (=> b!943604 (= e!530588 Unit!31824)))

(declare-fun b!943605 () Bool)

(assert (=> b!943605 (= e!530589 (isDefined!358 (getValueByKey!488 (toList!6145 lt!425292) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114187 c!98222) b!943603))

(assert (= (and d!114187 (not c!98222)) b!943604))

(assert (= (and d!114187 (not res!634071)) b!943605))

(declare-fun m!877785 () Bool)

(assert (=> d!114187 m!877785))

(declare-fun m!877787 () Bool)

(assert (=> b!943603 m!877787))

(assert (=> b!943603 m!877749))

(assert (=> b!943603 m!877749))

(declare-fun m!877789 () Bool)

(assert (=> b!943603 m!877789))

(assert (=> b!943605 m!877749))

(assert (=> b!943605 m!877749))

(assert (=> b!943605 m!877789))

(assert (=> bm!40983 d!114187))

(assert (=> b!943509 d!114157))

(declare-fun d!114189 () Bool)

(declare-fun e!530609 () Bool)

(assert (=> d!114189 e!530609))

(declare-fun res!634080 () Bool)

(assert (=> d!114189 (=> (not res!634080) (not e!530609))))

(declare-fun lt!425350 () ListLongMap!12259)

(assert (=> d!114189 (= res!634080 (not (contains!5166 lt!425350 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!530604 () ListLongMap!12259)

(assert (=> d!114189 (= lt!425350 e!530604)))

(declare-fun c!98231 () Bool)

(assert (=> d!114189 (= c!98231 (bvsge #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> d!114189 (validMask!0 (mask!27266 thiss!1141))))

(assert (=> d!114189 (= (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5643 thiss!1141)) lt!425350)))

(declare-fun b!943630 () Bool)

(declare-fun e!530606 () Bool)

(assert (=> b!943630 (= e!530606 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!943630 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!943631 () Bool)

(assert (=> b!943631 (= e!530604 (ListLongMap!12260 Nil!19384))))

(declare-fun b!943632 () Bool)

(declare-fun e!530610 () Bool)

(assert (=> b!943632 (= e!530610 (= lt!425350 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5643 thiss!1141))))))

(declare-fun b!943633 () Bool)

(declare-fun isEmpty!706 (ListLongMap!12259) Bool)

(assert (=> b!943633 (= e!530610 (isEmpty!706 lt!425350))))

(declare-fun b!943634 () Bool)

(declare-fun e!530607 () Bool)

(assert (=> b!943634 (= e!530607 e!530610)))

(declare-fun c!98233 () Bool)

(assert (=> b!943634 (= c!98233 (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943635 () Bool)

(assert (=> b!943635 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> b!943635 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27899 (_values!5666 thiss!1141))))))

(declare-fun e!530608 () Bool)

(assert (=> b!943635 (= e!530608 (= (apply!901 lt!425350 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)) (get!14451 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943636 () Bool)

(declare-fun res!634082 () Bool)

(assert (=> b!943636 (=> (not res!634082) (not e!530609))))

(assert (=> b!943636 (= res!634082 (not (contains!5166 lt!425350 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!943637 () Bool)

(declare-fun e!530605 () ListLongMap!12259)

(declare-fun call!40992 () ListLongMap!12259)

(assert (=> b!943637 (= e!530605 call!40992)))

(declare-fun b!943638 () Bool)

(assert (=> b!943638 (= e!530609 e!530607)))

(declare-fun c!98234 () Bool)

(assert (=> b!943638 (= c!98234 e!530606)))

(declare-fun res!634083 () Bool)

(assert (=> b!943638 (=> (not res!634083) (not e!530606))))

(assert (=> b!943638 (= res!634083 (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943639 () Bool)

(assert (=> b!943639 (= e!530604 e!530605)))

(declare-fun c!98232 () Bool)

(assert (=> b!943639 (= c!98232 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!943640 () Bool)

(assert (=> b!943640 (= e!530607 e!530608)))

(assert (=> b!943640 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun res!634081 () Bool)

(assert (=> b!943640 (= res!634081 (contains!5166 lt!425350 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!943640 (=> (not res!634081) (not e!530608))))

(declare-fun b!943641 () Bool)

(declare-fun lt!425354 () Unit!31819)

(declare-fun lt!425349 () Unit!31819)

(assert (=> b!943641 (= lt!425354 lt!425349)))

(declare-fun lt!425348 () (_ BitVec 64))

(declare-fun lt!425351 () V!32321)

(declare-fun lt!425353 () (_ BitVec 64))

(declare-fun lt!425352 () ListLongMap!12259)

(assert (=> b!943641 (not (contains!5166 (+!2815 lt!425352 (tuple2!13549 lt!425353 lt!425351)) lt!425348))))

(declare-fun addStillNotContains!224 (ListLongMap!12259 (_ BitVec 64) V!32321 (_ BitVec 64)) Unit!31819)

(assert (=> b!943641 (= lt!425349 (addStillNotContains!224 lt!425352 lt!425353 lt!425351 lt!425348))))

(assert (=> b!943641 (= lt!425348 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!943641 (= lt!425351 (get!14451 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!943641 (= lt!425353 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!943641 (= lt!425352 call!40992)))

(assert (=> b!943641 (= e!530605 (+!2815 call!40992 (tuple2!13549 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000) (get!14451 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!40989 () Bool)

(assert (=> bm!40989 (= call!40992 (getCurrentListMapNoExtraKeys!3321 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5643 thiss!1141)))))

(assert (= (and d!114189 c!98231) b!943631))

(assert (= (and d!114189 (not c!98231)) b!943639))

(assert (= (and b!943639 c!98232) b!943641))

(assert (= (and b!943639 (not c!98232)) b!943637))

(assert (= (or b!943641 b!943637) bm!40989))

(assert (= (and d!114189 res!634080) b!943636))

(assert (= (and b!943636 res!634082) b!943638))

(assert (= (and b!943638 res!634083) b!943630))

(assert (= (and b!943638 c!98234) b!943640))

(assert (= (and b!943638 (not c!98234)) b!943634))

(assert (= (and b!943640 res!634081) b!943635))

(assert (= (and b!943634 c!98233) b!943632))

(assert (= (and b!943634 (not c!98233)) b!943633))

(declare-fun b_lambda!14313 () Bool)

(assert (=> (not b_lambda!14313) (not b!943635)))

(assert (=> b!943635 t!27713))

(declare-fun b_and!29445 () Bool)

(assert (= b_and!29443 (and (=> t!27713 result!12203) b_and!29445)))

(declare-fun b_lambda!14315 () Bool)

(assert (=> (not b_lambda!14315) (not b!943641)))

(assert (=> b!943641 t!27713))

(declare-fun b_and!29447 () Bool)

(assert (= b_and!29445 (and (=> t!27713 result!12203) b_and!29447)))

(assert (=> b!943640 m!877679))

(assert (=> b!943640 m!877679))

(declare-fun m!877791 () Bool)

(assert (=> b!943640 m!877791))

(declare-fun m!877793 () Bool)

(assert (=> b!943632 m!877793))

(assert (=> bm!40989 m!877793))

(declare-fun m!877795 () Bool)

(assert (=> b!943633 m!877795))

(assert (=> b!943639 m!877679))

(assert (=> b!943639 m!877679))

(assert (=> b!943639 m!877701))

(assert (=> b!943641 m!877683))

(declare-fun m!877797 () Bool)

(assert (=> b!943641 m!877797))

(declare-fun m!877799 () Bool)

(assert (=> b!943641 m!877799))

(assert (=> b!943641 m!877797))

(declare-fun m!877801 () Bool)

(assert (=> b!943641 m!877801))

(declare-fun m!877803 () Bool)

(assert (=> b!943641 m!877803))

(assert (=> b!943641 m!877685))

(assert (=> b!943641 m!877683))

(assert (=> b!943641 m!877685))

(assert (=> b!943641 m!877689))

(assert (=> b!943641 m!877679))

(declare-fun m!877805 () Bool)

(assert (=> b!943636 m!877805))

(assert (=> b!943630 m!877679))

(assert (=> b!943630 m!877679))

(assert (=> b!943630 m!877701))

(assert (=> b!943635 m!877683))

(assert (=> b!943635 m!877685))

(assert (=> b!943635 m!877679))

(declare-fun m!877807 () Bool)

(assert (=> b!943635 m!877807))

(assert (=> b!943635 m!877683))

(assert (=> b!943635 m!877685))

(assert (=> b!943635 m!877689))

(assert (=> b!943635 m!877679))

(declare-fun m!877809 () Bool)

(assert (=> d!114189 m!877809))

(assert (=> d!114189 m!877655))

(assert (=> bm!40982 d!114189))

(declare-fun b!943650 () Bool)

(declare-fun e!530615 () (_ BitVec 32))

(declare-fun call!40995 () (_ BitVec 32))

(assert (=> b!943650 (= e!530615 call!40995)))

(declare-fun d!114191 () Bool)

(declare-fun lt!425357 () (_ BitVec 32))

(assert (=> d!114191 (and (bvsge lt!425357 #b00000000000000000000000000000000) (bvsle lt!425357 (bvsub (size!27900 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!530616 () (_ BitVec 32))

(assert (=> d!114191 (= lt!425357 e!530616)))

(declare-fun c!98240 () Bool)

(assert (=> d!114191 (= c!98240 (bvsge #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> d!114191 (and (bvsle #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!27900 (_keys!10513 thiss!1141)) (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> d!114191 (= (arrayCountValidKeys!0 (_keys!10513 thiss!1141) #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))) lt!425357)))

(declare-fun b!943651 () Bool)

(assert (=> b!943651 (= e!530615 (bvadd #b00000000000000000000000000000001 call!40995))))

(declare-fun b!943652 () Bool)

(assert (=> b!943652 (= e!530616 e!530615)))

(declare-fun c!98239 () Bool)

(assert (=> b!943652 (= c!98239 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!943653 () Bool)

(assert (=> b!943653 (= e!530616 #b00000000000000000000000000000000)))

(declare-fun bm!40992 () Bool)

(assert (=> bm!40992 (= call!40995 (arrayCountValidKeys!0 (_keys!10513 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27900 (_keys!10513 thiss!1141))))))

(assert (= (and d!114191 c!98240) b!943653))

(assert (= (and d!114191 (not c!98240)) b!943652))

(assert (= (and b!943652 c!98239) b!943651))

(assert (= (and b!943652 (not c!98239)) b!943650))

(assert (= (or b!943651 b!943650) bm!40992))

(assert (=> b!943652 m!877679))

(assert (=> b!943652 m!877679))

(assert (=> b!943652 m!877701))

(declare-fun m!877811 () Bool)

(assert (=> bm!40992 m!877811))

(assert (=> b!943422 d!114191))

(declare-fun d!114193 () Bool)

(assert (=> d!114193 (= (apply!901 lt!425292 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)) (get!14452 (getValueByKey!488 (toList!6145 lt!425292) (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26515 () Bool)

(assert (= bs!26515 d!114193))

(assert (=> bs!26515 m!877679))

(declare-fun m!877813 () Bool)

(assert (=> bs!26515 m!877813))

(assert (=> bs!26515 m!877813))

(declare-fun m!877815 () Bool)

(assert (=> bs!26515 m!877815))

(assert (=> b!943495 d!114193))

(declare-fun d!114195 () Bool)

(declare-fun c!98243 () Bool)

(assert (=> d!114195 (= c!98243 ((_ is ValueCellFull!9777) (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!530619 () V!32321)

(assert (=> d!114195 (= (get!14451 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!530619)))

(declare-fun b!943658 () Bool)

(declare-fun get!14453 (ValueCell!9777 V!32321) V!32321)

(assert (=> b!943658 (= e!530619 (get!14453 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!943659 () Bool)

(declare-fun get!14454 (ValueCell!9777 V!32321) V!32321)

(assert (=> b!943659 (= e!530619 (get!14454 (select (arr!27433 (_values!5666 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1654 (defaultEntry!5643 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114195 c!98243) b!943658))

(assert (= (and d!114195 (not c!98243)) b!943659))

(assert (=> b!943658 m!877683))

(assert (=> b!943658 m!877685))

(declare-fun m!877817 () Bool)

(assert (=> b!943658 m!877817))

(assert (=> b!943659 m!877683))

(assert (=> b!943659 m!877685))

(declare-fun m!877819 () Bool)

(assert (=> b!943659 m!877819))

(assert (=> b!943495 d!114195))

(declare-fun d!114197 () Bool)

(declare-fun res!634095 () Bool)

(declare-fun e!530622 () Bool)

(assert (=> d!114197 (=> (not res!634095) (not e!530622))))

(assert (=> d!114197 (= res!634095 (validMask!0 (mask!27266 thiss!1141)))))

(assert (=> d!114197 (= (simpleValid!347 thiss!1141) e!530622)))

(declare-fun b!943668 () Bool)

(declare-fun res!634092 () Bool)

(assert (=> b!943668 (=> (not res!634092) (not e!530622))))

(assert (=> b!943668 (= res!634092 (and (= (size!27899 (_values!5666 thiss!1141)) (bvadd (mask!27266 thiss!1141) #b00000000000000000000000000000001)) (= (size!27900 (_keys!10513 thiss!1141)) (size!27899 (_values!5666 thiss!1141))) (bvsge (_size!2407 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2407 thiss!1141) (bvadd (mask!27266 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun b!943670 () Bool)

(declare-fun res!634093 () Bool)

(assert (=> b!943670 (=> (not res!634093) (not e!530622))))

(declare-fun size!27903 (LongMapFixedSize!4704) (_ BitVec 32))

(assert (=> b!943670 (= res!634093 (= (size!27903 thiss!1141) (bvadd (_size!2407 thiss!1141) (bvsdiv (bvadd (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!943671 () Bool)

(assert (=> b!943671 (= e!530622 (and (bvsge (extraKeys!5375 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5375 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2407 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!943669 () Bool)

(declare-fun res!634094 () Bool)

(assert (=> b!943669 (=> (not res!634094) (not e!530622))))

(assert (=> b!943669 (= res!634094 (bvsge (size!27903 thiss!1141) (_size!2407 thiss!1141)))))

(assert (= (and d!114197 res!634095) b!943668))

(assert (= (and b!943668 res!634092) b!943669))

(assert (= (and b!943669 res!634094) b!943670))

(assert (= (and b!943670 res!634093) b!943671))

(assert (=> d!114197 m!877655))

(declare-fun m!877821 () Bool)

(assert (=> b!943670 m!877821))

(assert (=> b!943669 m!877821))

(assert (=> d!114151 d!114197))

(declare-fun bm!40995 () Bool)

(declare-fun call!40998 () Bool)

(assert (=> bm!40995 (= call!40998 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10513 thiss!1141) (mask!27266 thiss!1141)))))

(declare-fun b!943680 () Bool)

(declare-fun e!530631 () Bool)

(assert (=> b!943680 (= e!530631 call!40998)))

(declare-fun b!943682 () Bool)

(declare-fun e!530629 () Bool)

(assert (=> b!943682 (= e!530629 e!530631)))

(declare-fun lt!425365 () (_ BitVec 64))

(assert (=> b!943682 (= lt!425365 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!425366 () Unit!31819)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57024 (_ BitVec 64) (_ BitVec 32)) Unit!31819)

(assert (=> b!943682 (= lt!425366 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10513 thiss!1141) lt!425365 #b00000000000000000000000000000000))))

(assert (=> b!943682 (arrayContainsKey!0 (_keys!10513 thiss!1141) lt!425365 #b00000000000000000000000000000000)))

(declare-fun lt!425364 () Unit!31819)

(assert (=> b!943682 (= lt!425364 lt!425366)))

(declare-fun res!634101 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57024 (_ BitVec 32)) SeekEntryResult!9044)

(assert (=> b!943682 (= res!634101 (= (seekEntryOrOpen!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000) (_keys!10513 thiss!1141) (mask!27266 thiss!1141)) (Found!9044 #b00000000000000000000000000000000)))))

(assert (=> b!943682 (=> (not res!634101) (not e!530631))))

(declare-fun b!943683 () Bool)

(assert (=> b!943683 (= e!530629 call!40998)))

(declare-fun b!943681 () Bool)

(declare-fun e!530630 () Bool)

(assert (=> b!943681 (= e!530630 e!530629)))

(declare-fun c!98246 () Bool)

(assert (=> b!943681 (= c!98246 (validKeyInArray!0 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114199 () Bool)

(declare-fun res!634100 () Bool)

(assert (=> d!114199 (=> res!634100 e!530630)))

(assert (=> d!114199 (= res!634100 (bvsge #b00000000000000000000000000000000 (size!27900 (_keys!10513 thiss!1141))))))

(assert (=> d!114199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10513 thiss!1141) (mask!27266 thiss!1141)) e!530630)))

(assert (= (and d!114199 (not res!634100)) b!943681))

(assert (= (and b!943681 c!98246) b!943682))

(assert (= (and b!943681 (not c!98246)) b!943683))

(assert (= (and b!943682 res!634101) b!943680))

(assert (= (or b!943680 b!943683) bm!40995))

(declare-fun m!877823 () Bool)

(assert (=> bm!40995 m!877823))

(assert (=> b!943682 m!877679))

(declare-fun m!877825 () Bool)

(assert (=> b!943682 m!877825))

(declare-fun m!877827 () Bool)

(assert (=> b!943682 m!877827))

(assert (=> b!943682 m!877679))

(declare-fun m!877829 () Bool)

(assert (=> b!943682 m!877829))

(assert (=> b!943681 m!877679))

(assert (=> b!943681 m!877679))

(assert (=> b!943681 m!877701))

(assert (=> b!943423 d!114199))

(declare-fun d!114201 () Bool)

(declare-fun e!530633 () Bool)

(assert (=> d!114201 e!530633))

(declare-fun res!634102 () Bool)

(assert (=> d!114201 (=> res!634102 e!530633)))

(declare-fun lt!425369 () Bool)

(assert (=> d!114201 (= res!634102 (not lt!425369))))

(declare-fun lt!425370 () Bool)

(assert (=> d!114201 (= lt!425369 lt!425370)))

(declare-fun lt!425367 () Unit!31819)

(declare-fun e!530632 () Unit!31819)

(assert (=> d!114201 (= lt!425367 e!530632)))

(declare-fun c!98247 () Bool)

(assert (=> d!114201 (= c!98247 lt!425370)))

(assert (=> d!114201 (= lt!425370 (containsKey!453 (toList!6145 lt!425292) (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114201 (= (contains!5166 lt!425292 (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)) lt!425369)))

(declare-fun b!943684 () Bool)

(declare-fun lt!425368 () Unit!31819)

(assert (=> b!943684 (= e!530632 lt!425368)))

(assert (=> b!943684 (= lt!425368 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!6145 lt!425292) (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!943684 (isDefined!358 (getValueByKey!488 (toList!6145 lt!425292) (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!943685 () Bool)

(declare-fun Unit!31825 () Unit!31819)

(assert (=> b!943685 (= e!530632 Unit!31825)))

(declare-fun b!943686 () Bool)

(assert (=> b!943686 (= e!530633 (isDefined!358 (getValueByKey!488 (toList!6145 lt!425292) (select (arr!27434 (_keys!10513 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!114201 c!98247) b!943684))

(assert (= (and d!114201 (not c!98247)) b!943685))

(assert (= (and d!114201 (not res!634102)) b!943686))

(assert (=> d!114201 m!877679))

(declare-fun m!877831 () Bool)

(assert (=> d!114201 m!877831))

(assert (=> b!943684 m!877679))

(declare-fun m!877833 () Bool)

(assert (=> b!943684 m!877833))

(assert (=> b!943684 m!877679))

(assert (=> b!943684 m!877813))

(assert (=> b!943684 m!877813))

(declare-fun m!877835 () Bool)

(assert (=> b!943684 m!877835))

(assert (=> b!943686 m!877679))

(assert (=> b!943686 m!877813))

(assert (=> b!943686 m!877813))

(assert (=> b!943686 m!877835))

(assert (=> b!943477 d!114201))

(declare-fun d!114203 () Bool)

(declare-fun e!530636 () Bool)

(assert (=> d!114203 e!530636))

(declare-fun c!98250 () Bool)

(assert (=> d!114203 (= c!98250 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!114203 true))

(declare-fun _$15!101 () Unit!31819)

(assert (=> d!114203 (= (choose!1573 (_keys!10513 thiss!1141) (_values!5666 thiss!1141) (mask!27266 thiss!1141) (extraKeys!5375 thiss!1141) (zeroValue!5479 thiss!1141) (minValue!5479 thiss!1141) key!756 (defaultEntry!5643 thiss!1141)) _$15!101)))

(declare-fun b!943691 () Bool)

(assert (=> b!943691 (= e!530636 (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!943692 () Bool)

(assert (=> b!943692 (= e!530636 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5375 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!114203 c!98250) b!943691))

(assert (= (and d!114203 (not c!98250)) b!943692))

(assert (=> b!943691 m!877625))

(assert (=> d!114159 d!114203))

(assert (=> d!114159 d!114167))

(declare-fun d!114205 () Bool)

(declare-fun e!530639 () Bool)

(assert (=> d!114205 e!530639))

(declare-fun res!634107 () Bool)

(assert (=> d!114205 (=> (not res!634107) (not e!530639))))

(declare-fun lt!425380 () ListLongMap!12259)

(assert (=> d!114205 (= res!634107 (contains!5166 lt!425380 (_1!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))))

(declare-fun lt!425381 () List!19387)

(assert (=> d!114205 (= lt!425380 (ListLongMap!12260 lt!425381))))

(declare-fun lt!425379 () Unit!31819)

(declare-fun lt!425382 () Unit!31819)

(assert (=> d!114205 (= lt!425379 lt!425382)))

(assert (=> d!114205 (= (getValueByKey!488 lt!425381 (_1!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))) (Some!493 (_2!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!262 (List!19387 (_ BitVec 64) V!32321) Unit!31819)

(assert (=> d!114205 (= lt!425382 (lemmaContainsTupThenGetReturnValue!262 lt!425381 (_1!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))) (_2!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))))

(declare-fun insertStrictlySorted!318 (List!19387 (_ BitVec 64) V!32321) List!19387)

(assert (=> d!114205 (= lt!425381 (insertStrictlySorted!318 (toList!6145 (ite c!98185 call!40985 (ite c!98190 call!40984 call!40980))) (_1!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))) (_2!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))))

(assert (=> d!114205 (= (+!2815 (ite c!98185 call!40985 (ite c!98190 call!40984 call!40980)) (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))) lt!425380)))

(declare-fun b!943697 () Bool)

(declare-fun res!634108 () Bool)

(assert (=> b!943697 (=> (not res!634108) (not e!530639))))

(assert (=> b!943697 (= res!634108 (= (getValueByKey!488 (toList!6145 lt!425380) (_1!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))) (Some!493 (_2!6784 (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))))

(declare-fun b!943698 () Bool)

(declare-fun contains!5169 (List!19387 tuple2!13548) Bool)

(assert (=> b!943698 (= e!530639 (contains!5169 (toList!6145 lt!425380) (ite (or c!98185 c!98190) (tuple2!13549 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5479 thiss!1141)) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))

(assert (= (and d!114205 res!634107) b!943697))

(assert (= (and b!943697 res!634108) b!943698))

(declare-fun m!877837 () Bool)

(assert (=> d!114205 m!877837))

(declare-fun m!877839 () Bool)

(assert (=> d!114205 m!877839))

(declare-fun m!877841 () Bool)

(assert (=> d!114205 m!877841))

(declare-fun m!877843 () Bool)

(assert (=> d!114205 m!877843))

(declare-fun m!877845 () Bool)

(assert (=> b!943697 m!877845))

(declare-fun m!877847 () Bool)

(assert (=> b!943698 m!877847))

(assert (=> bm!40978 d!114205))

(declare-fun d!114207 () Bool)

(declare-fun e!530640 () Bool)

(assert (=> d!114207 e!530640))

(declare-fun res!634109 () Bool)

(assert (=> d!114207 (=> (not res!634109) (not e!530640))))

(declare-fun lt!425384 () ListLongMap!12259)

(assert (=> d!114207 (= res!634109 (contains!5166 lt!425384 (_1!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))

(declare-fun lt!425385 () List!19387)

(assert (=> d!114207 (= lt!425384 (ListLongMap!12260 lt!425385))))

(declare-fun lt!425383 () Unit!31819)

(declare-fun lt!425386 () Unit!31819)

(assert (=> d!114207 (= lt!425383 lt!425386)))

(assert (=> d!114207 (= (getValueByKey!488 lt!425385 (_1!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))

(assert (=> d!114207 (= lt!425386 (lemmaContainsTupThenGetReturnValue!262 lt!425385 (_1!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))

(assert (=> d!114207 (= lt!425385 (insertStrictlySorted!318 (toList!6145 call!40982) (_1!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))))))

(assert (=> d!114207 (= (+!2815 call!40982 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))) lt!425384)))

(declare-fun b!943699 () Bool)

(declare-fun res!634110 () Bool)

(assert (=> b!943699 (=> (not res!634110) (not e!530640))))

(assert (=> b!943699 (= res!634110 (= (getValueByKey!488 (toList!6145 lt!425384) (_1!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))))

(declare-fun b!943700 () Bool)

(assert (=> b!943700 (= e!530640 (contains!5169 (toList!6145 lt!425384) (tuple2!13549 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5479 thiss!1141))))))

(assert (= (and d!114207 res!634109) b!943699))

(assert (= (and b!943699 res!634110) b!943700))

(declare-fun m!877849 () Bool)

(assert (=> d!114207 m!877849))

(declare-fun m!877851 () Bool)

(assert (=> d!114207 m!877851))

(declare-fun m!877853 () Bool)

(assert (=> d!114207 m!877853))

(declare-fun m!877855 () Bool)

(assert (=> d!114207 m!877855))

(declare-fun m!877857 () Bool)

(assert (=> b!943699 m!877857))

(declare-fun m!877859 () Bool)

(assert (=> b!943700 m!877859))

(assert (=> b!943492 d!114207))

(declare-fun d!114209 () Bool)

(declare-fun res!634111 () Bool)

(declare-fun e!530641 () Bool)

(assert (=> d!114209 (=> res!634111 e!530641)))

(assert (=> d!114209 (= res!634111 (= (select (arr!27434 (_keys!10513 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!114209 (= (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!530641)))

(declare-fun b!943701 () Bool)

(declare-fun e!530642 () Bool)

(assert (=> b!943701 (= e!530641 e!530642)))

(declare-fun res!634112 () Bool)

(assert (=> b!943701 (=> (not res!634112) (not e!530642))))

(assert (=> b!943701 (= res!634112 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!27900 (_keys!10513 thiss!1141))))))

(declare-fun b!943702 () Bool)

(assert (=> b!943702 (= e!530642 (arrayContainsKey!0 (_keys!10513 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!114209 (not res!634111)) b!943701))

(assert (= (and b!943701 res!634112) b!943702))

(declare-fun m!877861 () Bool)

(assert (=> d!114209 m!877861))

(declare-fun m!877863 () Bool)

(assert (=> b!943702 m!877863))

(assert (=> b!943504 d!114209))

(declare-fun d!114211 () Bool)

(declare-fun e!530644 () Bool)

(assert (=> d!114211 e!530644))

(declare-fun res!634113 () Bool)

(assert (=> d!114211 (=> res!634113 e!530644)))

(declare-fun lt!425389 () Bool)

(assert (=> d!114211 (= res!634113 (not lt!425389))))

(declare-fun lt!425390 () Bool)

(assert (=> d!114211 (= lt!425389 lt!425390)))

(declare-fun lt!425387 () Unit!31819)

(declare-fun e!530643 () Unit!31819)

(assert (=> d!114211 (= lt!425387 e!530643)))

(declare-fun c!98251 () Bool)

(assert (=> d!114211 (= c!98251 lt!425390)))

(assert (=> d!114211 (= lt!425390 (containsKey!453 (toList!6145 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))) lt!425295))))

(assert (=> d!114211 (= (contains!5166 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))) lt!425295) lt!425389)))

(declare-fun b!943703 () Bool)

(declare-fun lt!425388 () Unit!31819)

(assert (=> b!943703 (= e!530643 lt!425388)))

(assert (=> b!943703 (= lt!425388 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!6145 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))) lt!425295))))

(assert (=> b!943703 (isDefined!358 (getValueByKey!488 (toList!6145 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))) lt!425295))))

(declare-fun b!943704 () Bool)

(declare-fun Unit!31826 () Unit!31819)

(assert (=> b!943704 (= e!530643 Unit!31826)))

(declare-fun b!943705 () Bool)

(assert (=> b!943705 (= e!530644 (isDefined!358 (getValueByKey!488 (toList!6145 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))) lt!425295)))))

(assert (= (and d!114211 c!98251) b!943703))

(assert (= (and d!114211 (not c!98251)) b!943704))

(assert (= (and d!114211 (not res!634113)) b!943705))

(declare-fun m!877865 () Bool)

(assert (=> d!114211 m!877865))

(declare-fun m!877867 () Bool)

(assert (=> b!943703 m!877867))

(declare-fun m!877869 () Bool)

(assert (=> b!943703 m!877869))

(assert (=> b!943703 m!877869))

(declare-fun m!877871 () Bool)

(assert (=> b!943703 m!877871))

(assert (=> b!943705 m!877869))

(assert (=> b!943705 m!877869))

(assert (=> b!943705 m!877871))

(assert (=> b!943493 d!114211))

(declare-fun d!114213 () Bool)

(assert (=> d!114213 (= (apply!901 (+!2815 lt!425298 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))) lt!425300) (get!14452 (getValueByKey!488 (toList!6145 (+!2815 lt!425298 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))) lt!425300)))))

(declare-fun bs!26516 () Bool)

(assert (= bs!26516 d!114213))

(declare-fun m!877873 () Bool)

(assert (=> bs!26516 m!877873))

(assert (=> bs!26516 m!877873))

(declare-fun m!877875 () Bool)

(assert (=> bs!26516 m!877875))

(assert (=> b!943493 d!114213))

(declare-fun d!114215 () Bool)

(assert (=> d!114215 (= (apply!901 lt!425280 lt!425284) (get!14452 (getValueByKey!488 (toList!6145 lt!425280) lt!425284)))))

(declare-fun bs!26517 () Bool)

(assert (= bs!26517 d!114215))

(declare-fun m!877877 () Bool)

(assert (=> bs!26517 m!877877))

(assert (=> bs!26517 m!877877))

(declare-fun m!877879 () Bool)

(assert (=> bs!26517 m!877879))

(assert (=> b!943493 d!114215))

(declare-fun d!114217 () Bool)

(assert (=> d!114217 (= (apply!901 (+!2815 lt!425280 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))) lt!425284) (get!14452 (getValueByKey!488 (toList!6145 (+!2815 lt!425280 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))) lt!425284)))))

(declare-fun bs!26518 () Bool)

(assert (= bs!26518 d!114217))

(declare-fun m!877881 () Bool)

(assert (=> bs!26518 m!877881))

(assert (=> bs!26518 m!877881))

(declare-fun m!877883 () Bool)

(assert (=> bs!26518 m!877883))

(assert (=> b!943493 d!114217))

(declare-fun d!114219 () Bool)

(assert (=> d!114219 (= (apply!901 lt!425297 lt!425296) (get!14452 (getValueByKey!488 (toList!6145 lt!425297) lt!425296)))))

(declare-fun bs!26519 () Bool)

(assert (= bs!26519 d!114219))

(declare-fun m!877885 () Bool)

(assert (=> bs!26519 m!877885))

(assert (=> bs!26519 m!877885))

(declare-fun m!877887 () Bool)

(assert (=> bs!26519 m!877887))

(assert (=> b!943493 d!114219))

(declare-fun d!114221 () Bool)

(assert (=> d!114221 (= (apply!901 (+!2815 lt!425297 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))) lt!425296) (get!14452 (getValueByKey!488 (toList!6145 (+!2815 lt!425297 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))) lt!425296)))))

(declare-fun bs!26520 () Bool)

(assert (= bs!26520 d!114221))

(declare-fun m!877889 () Bool)

(assert (=> bs!26520 m!877889))

(assert (=> bs!26520 m!877889))

(declare-fun m!877891 () Bool)

(assert (=> bs!26520 m!877891))

(assert (=> b!943493 d!114221))

(declare-fun d!114223 () Bool)

(assert (=> d!114223 (= (apply!901 (+!2815 lt!425297 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))) lt!425296) (apply!901 lt!425297 lt!425296))))

(declare-fun lt!425393 () Unit!31819)

(declare-fun choose!1575 (ListLongMap!12259 (_ BitVec 64) V!32321 (_ BitVec 64)) Unit!31819)

(assert (=> d!114223 (= lt!425393 (choose!1575 lt!425297 lt!425290 (minValue!5479 thiss!1141) lt!425296))))

(declare-fun e!530647 () Bool)

(assert (=> d!114223 e!530647))

(declare-fun res!634116 () Bool)

(assert (=> d!114223 (=> (not res!634116) (not e!530647))))

(assert (=> d!114223 (= res!634116 (contains!5166 lt!425297 lt!425296))))

(assert (=> d!114223 (= (addApplyDifferent!445 lt!425297 lt!425290 (minValue!5479 thiss!1141) lt!425296) lt!425393)))

(declare-fun b!943709 () Bool)

(assert (=> b!943709 (= e!530647 (not (= lt!425296 lt!425290)))))

(assert (= (and d!114223 res!634116) b!943709))

(assert (=> d!114223 m!877705))

(declare-fun m!877893 () Bool)

(assert (=> d!114223 m!877893))

(assert (=> d!114223 m!877725))

(declare-fun m!877895 () Bool)

(assert (=> d!114223 m!877895))

(assert (=> d!114223 m!877705))

(assert (=> d!114223 m!877707))

(assert (=> b!943493 d!114223))

(declare-fun d!114225 () Bool)

(assert (=> d!114225 (= (apply!901 (+!2815 lt!425280 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))) lt!425284) (apply!901 lt!425280 lt!425284))))

(declare-fun lt!425394 () Unit!31819)

(assert (=> d!114225 (= lt!425394 (choose!1575 lt!425280 lt!425294 (zeroValue!5479 thiss!1141) lt!425284))))

(declare-fun e!530648 () Bool)

(assert (=> d!114225 e!530648))

(declare-fun res!634117 () Bool)

(assert (=> d!114225 (=> (not res!634117) (not e!530648))))

(assert (=> d!114225 (= res!634117 (contains!5166 lt!425280 lt!425284))))

(assert (=> d!114225 (= (addApplyDifferent!445 lt!425280 lt!425294 (zeroValue!5479 thiss!1141) lt!425284) lt!425394)))

(declare-fun b!943710 () Bool)

(assert (=> b!943710 (= e!530648 (not (= lt!425284 lt!425294)))))

(assert (= (and d!114225 res!634117) b!943710))

(assert (=> d!114225 m!877717))

(declare-fun m!877897 () Bool)

(assert (=> d!114225 m!877897))

(assert (=> d!114225 m!877719))

(declare-fun m!877899 () Bool)

(assert (=> d!114225 m!877899))

(assert (=> d!114225 m!877717))

(assert (=> d!114225 m!877731))

(assert (=> b!943493 d!114225))

(declare-fun d!114227 () Bool)

(declare-fun e!530649 () Bool)

(assert (=> d!114227 e!530649))

(declare-fun res!634118 () Bool)

(assert (=> d!114227 (=> (not res!634118) (not e!530649))))

(declare-fun lt!425396 () ListLongMap!12259)

(assert (=> d!114227 (= res!634118 (contains!5166 lt!425396 (_1!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))))))

(declare-fun lt!425397 () List!19387)

(assert (=> d!114227 (= lt!425396 (ListLongMap!12260 lt!425397))))

(declare-fun lt!425395 () Unit!31819)

(declare-fun lt!425398 () Unit!31819)

(assert (=> d!114227 (= lt!425395 lt!425398)))

(assert (=> d!114227 (= (getValueByKey!488 lt!425397 (_1!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))))))

(assert (=> d!114227 (= lt!425398 (lemmaContainsTupThenGetReturnValue!262 lt!425397 (_1!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))))))

(assert (=> d!114227 (= lt!425397 (insertStrictlySorted!318 (toList!6145 lt!425297) (_1!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))))))

(assert (=> d!114227 (= (+!2815 lt!425297 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))) lt!425396)))

(declare-fun b!943711 () Bool)

(declare-fun res!634119 () Bool)

(assert (=> b!943711 (=> (not res!634119) (not e!530649))))

(assert (=> b!943711 (= res!634119 (= (getValueByKey!488 (toList!6145 lt!425396) (_1!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))))))))

(declare-fun b!943712 () Bool)

(assert (=> b!943712 (= e!530649 (contains!5169 (toList!6145 lt!425396) (tuple2!13549 lt!425290 (minValue!5479 thiss!1141))))))

(assert (= (and d!114227 res!634118) b!943711))

(assert (= (and b!943711 res!634119) b!943712))

(declare-fun m!877901 () Bool)

(assert (=> d!114227 m!877901))

(declare-fun m!877903 () Bool)

(assert (=> d!114227 m!877903))

(declare-fun m!877905 () Bool)

(assert (=> d!114227 m!877905))

(declare-fun m!877907 () Bool)

(assert (=> d!114227 m!877907))

(declare-fun m!877909 () Bool)

(assert (=> b!943711 m!877909))

(declare-fun m!877911 () Bool)

(assert (=> b!943712 m!877911))

(assert (=> b!943493 d!114227))

(declare-fun d!114229 () Bool)

(assert (=> d!114229 (= (apply!901 (+!2815 lt!425298 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))) lt!425300) (apply!901 lt!425298 lt!425300))))

(declare-fun lt!425399 () Unit!31819)

(assert (=> d!114229 (= lt!425399 (choose!1575 lt!425298 lt!425289 (minValue!5479 thiss!1141) lt!425300))))

(declare-fun e!530650 () Bool)

(assert (=> d!114229 e!530650))

(declare-fun res!634120 () Bool)

(assert (=> d!114229 (=> (not res!634120) (not e!530650))))

(assert (=> d!114229 (= res!634120 (contains!5166 lt!425298 lt!425300))))

(assert (=> d!114229 (= (addApplyDifferent!445 lt!425298 lt!425289 (minValue!5479 thiss!1141) lt!425300) lt!425399)))

(declare-fun b!943713 () Bool)

(assert (=> b!943713 (= e!530650 (not (= lt!425300 lt!425289)))))

(assert (= (and d!114229 res!634120) b!943713))

(assert (=> d!114229 m!877703))

(declare-fun m!877913 () Bool)

(assert (=> d!114229 m!877913))

(assert (=> d!114229 m!877713))

(declare-fun m!877915 () Bool)

(assert (=> d!114229 m!877915))

(assert (=> d!114229 m!877703))

(assert (=> d!114229 m!877727))

(assert (=> b!943493 d!114229))

(declare-fun d!114231 () Bool)

(assert (=> d!114231 (= (apply!901 lt!425298 lt!425300) (get!14452 (getValueByKey!488 (toList!6145 lt!425298) lt!425300)))))

(declare-fun bs!26521 () Bool)

(assert (= bs!26521 d!114231))

(declare-fun m!877917 () Bool)

(assert (=> bs!26521 m!877917))

(assert (=> bs!26521 m!877917))

(declare-fun m!877919 () Bool)

(assert (=> bs!26521 m!877919))

(assert (=> b!943493 d!114231))

(declare-fun d!114233 () Bool)

(declare-fun e!530651 () Bool)

(assert (=> d!114233 e!530651))

(declare-fun res!634121 () Bool)

(assert (=> d!114233 (=> (not res!634121) (not e!530651))))

(declare-fun lt!425401 () ListLongMap!12259)

(assert (=> d!114233 (= res!634121 (contains!5166 lt!425401 (_1!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))))))

(declare-fun lt!425402 () List!19387)

(assert (=> d!114233 (= lt!425401 (ListLongMap!12260 lt!425402))))

(declare-fun lt!425400 () Unit!31819)

(declare-fun lt!425403 () Unit!31819)

(assert (=> d!114233 (= lt!425400 lt!425403)))

(assert (=> d!114233 (= (getValueByKey!488 lt!425402 (_1!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))))))

(assert (=> d!114233 (= lt!425403 (lemmaContainsTupThenGetReturnValue!262 lt!425402 (_1!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))))))

(assert (=> d!114233 (= lt!425402 (insertStrictlySorted!318 (toList!6145 lt!425293) (_1!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))))))

(assert (=> d!114233 (= (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))) lt!425401)))

(declare-fun b!943714 () Bool)

(declare-fun res!634122 () Bool)

(assert (=> b!943714 (=> (not res!634122) (not e!530651))))

(assert (=> b!943714 (= res!634122 (= (getValueByKey!488 (toList!6145 lt!425401) (_1!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))))))))

(declare-fun b!943715 () Bool)

(assert (=> b!943715 (= e!530651 (contains!5169 (toList!6145 lt!425401) (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))))))

(assert (= (and d!114233 res!634121) b!943714))

(assert (= (and b!943714 res!634122) b!943715))

(declare-fun m!877921 () Bool)

(assert (=> d!114233 m!877921))

(declare-fun m!877923 () Bool)

(assert (=> d!114233 m!877923))

(declare-fun m!877925 () Bool)

(assert (=> d!114233 m!877925))

(declare-fun m!877927 () Bool)

(assert (=> d!114233 m!877927))

(declare-fun m!877929 () Bool)

(assert (=> b!943714 m!877929))

(declare-fun m!877931 () Bool)

(assert (=> b!943715 m!877931))

(assert (=> b!943493 d!114233))

(declare-fun d!114235 () Bool)

(declare-fun e!530652 () Bool)

(assert (=> d!114235 e!530652))

(declare-fun res!634123 () Bool)

(assert (=> d!114235 (=> (not res!634123) (not e!530652))))

(declare-fun lt!425405 () ListLongMap!12259)

(assert (=> d!114235 (= res!634123 (contains!5166 lt!425405 (_1!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))))))

(declare-fun lt!425406 () List!19387)

(assert (=> d!114235 (= lt!425405 (ListLongMap!12260 lt!425406))))

(declare-fun lt!425404 () Unit!31819)

(declare-fun lt!425407 () Unit!31819)

(assert (=> d!114235 (= lt!425404 lt!425407)))

(assert (=> d!114235 (= (getValueByKey!488 lt!425406 (_1!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))))))

(assert (=> d!114235 (= lt!425407 (lemmaContainsTupThenGetReturnValue!262 lt!425406 (_1!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))))))

(assert (=> d!114235 (= lt!425406 (insertStrictlySorted!318 (toList!6145 lt!425298) (_1!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))))))

(assert (=> d!114235 (= (+!2815 lt!425298 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))) lt!425405)))

(declare-fun b!943716 () Bool)

(declare-fun res!634124 () Bool)

(assert (=> b!943716 (=> (not res!634124) (not e!530652))))

(assert (=> b!943716 (= res!634124 (= (getValueByKey!488 (toList!6145 lt!425405) (_1!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))))))))

(declare-fun b!943717 () Bool)

(assert (=> b!943717 (= e!530652 (contains!5169 (toList!6145 lt!425405) (tuple2!13549 lt!425289 (minValue!5479 thiss!1141))))))

(assert (= (and d!114235 res!634123) b!943716))

(assert (= (and b!943716 res!634124) b!943717))

(declare-fun m!877933 () Bool)

(assert (=> d!114235 m!877933))

(declare-fun m!877935 () Bool)

(assert (=> d!114235 m!877935))

(declare-fun m!877937 () Bool)

(assert (=> d!114235 m!877937))

(declare-fun m!877939 () Bool)

(assert (=> d!114235 m!877939))

(declare-fun m!877941 () Bool)

(assert (=> b!943716 m!877941))

(declare-fun m!877943 () Bool)

(assert (=> b!943717 m!877943))

(assert (=> b!943493 d!114235))

(declare-fun d!114237 () Bool)

(assert (=> d!114237 (contains!5166 (+!2815 lt!425293 (tuple2!13549 lt!425301 (zeroValue!5479 thiss!1141))) lt!425295)))

(declare-fun lt!425410 () Unit!31819)

(declare-fun choose!1576 (ListLongMap!12259 (_ BitVec 64) V!32321 (_ BitVec 64)) Unit!31819)

(assert (=> d!114237 (= lt!425410 (choose!1576 lt!425293 lt!425301 (zeroValue!5479 thiss!1141) lt!425295))))

(assert (=> d!114237 (contains!5166 lt!425293 lt!425295)))

(assert (=> d!114237 (= (addStillContains!571 lt!425293 lt!425301 (zeroValue!5479 thiss!1141) lt!425295) lt!425410)))

(declare-fun bs!26522 () Bool)

(assert (= bs!26522 d!114237))

(assert (=> bs!26522 m!877721))

(assert (=> bs!26522 m!877721))

(assert (=> bs!26522 m!877723))

(declare-fun m!877945 () Bool)

(assert (=> bs!26522 m!877945))

(declare-fun m!877947 () Bool)

(assert (=> bs!26522 m!877947))

(assert (=> b!943493 d!114237))

(assert (=> b!943493 d!114189))

(declare-fun d!114239 () Bool)

(declare-fun e!530653 () Bool)

(assert (=> d!114239 e!530653))

(declare-fun res!634125 () Bool)

(assert (=> d!114239 (=> (not res!634125) (not e!530653))))

(declare-fun lt!425412 () ListLongMap!12259)

(assert (=> d!114239 (= res!634125 (contains!5166 lt!425412 (_1!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))))))

(declare-fun lt!425413 () List!19387)

(assert (=> d!114239 (= lt!425412 (ListLongMap!12260 lt!425413))))

(declare-fun lt!425411 () Unit!31819)

(declare-fun lt!425414 () Unit!31819)

(assert (=> d!114239 (= lt!425411 lt!425414)))

(assert (=> d!114239 (= (getValueByKey!488 lt!425413 (_1!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))))))

(assert (=> d!114239 (= lt!425414 (lemmaContainsTupThenGetReturnValue!262 lt!425413 (_1!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))))))

(assert (=> d!114239 (= lt!425413 (insertStrictlySorted!318 (toList!6145 lt!425280) (_1!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))) (_2!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))))))

(assert (=> d!114239 (= (+!2815 lt!425280 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))) lt!425412)))

(declare-fun b!943719 () Bool)

(declare-fun res!634126 () Bool)

(assert (=> b!943719 (=> (not res!634126) (not e!530653))))

(assert (=> b!943719 (= res!634126 (= (getValueByKey!488 (toList!6145 lt!425412) (_1!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141)))) (Some!493 (_2!6784 (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))))))))

(declare-fun b!943720 () Bool)

(assert (=> b!943720 (= e!530653 (contains!5169 (toList!6145 lt!425412) (tuple2!13549 lt!425294 (zeroValue!5479 thiss!1141))))))

(assert (= (and d!114239 res!634125) b!943719))

(assert (= (and b!943719 res!634126) b!943720))

(declare-fun m!877949 () Bool)

(assert (=> d!114239 m!877949))

(declare-fun m!877951 () Bool)

(assert (=> d!114239 m!877951))

(declare-fun m!877953 () Bool)

(assert (=> d!114239 m!877953))

(declare-fun m!877955 () Bool)

(assert (=> d!114239 m!877955))

(declare-fun m!877957 () Bool)

(assert (=> b!943719 m!877957))

(declare-fun m!877959 () Bool)

(assert (=> b!943720 m!877959))

(assert (=> b!943493 d!114239))

(declare-fun b!943721 () Bool)

(declare-fun e!530655 () Bool)

(assert (=> b!943721 (= e!530655 tp_is_empty!20517)))

(declare-fun b!943722 () Bool)

(declare-fun e!530654 () Bool)

(assert (=> b!943722 (= e!530654 tp_is_empty!20517)))

(declare-fun mapNonEmpty!32604 () Bool)

(declare-fun mapRes!32604 () Bool)

(declare-fun tp!62544 () Bool)

(assert (=> mapNonEmpty!32604 (= mapRes!32604 (and tp!62544 e!530655))))

(declare-fun mapKey!32604 () (_ BitVec 32))

(declare-fun mapRest!32604 () (Array (_ BitVec 32) ValueCell!9777))

(declare-fun mapValue!32604 () ValueCell!9777)

(assert (=> mapNonEmpty!32604 (= mapRest!32603 (store mapRest!32604 mapKey!32604 mapValue!32604))))

(declare-fun condMapEmpty!32604 () Bool)

(declare-fun mapDefault!32604 () ValueCell!9777)

(assert (=> mapNonEmpty!32603 (= condMapEmpty!32604 (= mapRest!32603 ((as const (Array (_ BitVec 32) ValueCell!9777)) mapDefault!32604)))))

(assert (=> mapNonEmpty!32603 (= tp!62543 (and e!530654 mapRes!32604))))

(declare-fun mapIsEmpty!32604 () Bool)

(assert (=> mapIsEmpty!32604 mapRes!32604))

(assert (= (and mapNonEmpty!32603 condMapEmpty!32604) mapIsEmpty!32604))

(assert (= (and mapNonEmpty!32603 (not condMapEmpty!32604)) mapNonEmpty!32604))

(assert (= (and mapNonEmpty!32604 ((_ is ValueCellFull!9777) mapValue!32604)) b!943721))

(assert (= (and mapNonEmpty!32603 ((_ is ValueCellFull!9777) mapDefault!32604)) b!943722))

(declare-fun m!877961 () Bool)

(assert (=> mapNonEmpty!32604 m!877961))

(declare-fun b_lambda!14317 () Bool)

(assert (= b_lambda!14315 (or (and b!943367 b_free!18009) b_lambda!14317)))

(declare-fun b_lambda!14319 () Bool)

(assert (= b_lambda!14313 (or (and b!943367 b_free!18009) b_lambda!14319)))

(check-sat (not b!943630) (not d!114235) (not d!114183) (not b!943639) (not b!943551) (not b!943585) (not b!943691) (not b!943568) (not b!943605) (not d!114187) (not mapNonEmpty!32604) (not b!943554) (not b!943681) (not b!943669) (not d!114225) (not b!943714) (not b!943640) (not b!943652) (not b!943635) (not d!114193) (not d!114237) (not b!943686) (not b!943601) tp_is_empty!20517 (not b!943703) (not d!114189) (not d!114223) (not d!114173) (not b!943636) (not b!943602) (not d!114179) (not d!114205) (not d!114227) (not b_lambda!14317) (not bm!40995) (not d!114201) (not d!114213) (not d!114215) (not b!943715) (not d!114231) (not b!943702) (not bm!40986) b_and!29447 (not b!943633) (not b!943641) (not b_lambda!14319) (not bm!40989) (not b!943711) (not b!943716) (not b!943705) (not b!943682) (not b!943552) (not d!114217) (not d!114211) (not d!114239) (not d!114175) (not b!943697) (not b!943659) (not d!114197) (not d!114229) (not b!943684) (not b!943698) (not b!943632) (not d!114177) (not b!943670) (not b!943658) (not d!114169) (not d!114233) (not b!943557) (not b_lambda!14311) (not d!114207) (not b!943712) (not d!114163) (not b!943545) (not bm!40992) (not b!943719) (not b!943717) (not d!114221) (not b!943699) (not b!943600) (not b!943603) (not d!114219) (not b!943720) (not b_next!18009) (not b!943700))
(check-sat b_and!29447 (not b_next!18009))

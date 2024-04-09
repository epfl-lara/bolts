; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23064 () Bool)

(assert start!23064)

(declare-fun b!241473 () Bool)

(declare-fun b_free!6489 () Bool)

(declare-fun b_next!6489 () Bool)

(assert (=> b!241473 (= b_free!6489 (not b_next!6489))))

(declare-fun tp!22675 () Bool)

(declare-fun b_and!13479 () Bool)

(assert (=> b!241473 (= tp!22675 b_and!13479)))

(declare-fun bm!22467 () Bool)

(declare-fun call!22471 () Bool)

(declare-datatypes ((V!8115 0))(
  ( (V!8116 (val!3220 Int)) )
))
(declare-datatypes ((ValueCell!2832 0))(
  ( (ValueCellFull!2832 (v!5255 V!8115)) (EmptyCell!2832) )
))
(declare-datatypes ((array!11982 0))(
  ( (array!11983 (arr!5691 (Array (_ BitVec 32) ValueCell!2832)) (size!6033 (_ BitVec 32))) )
))
(declare-datatypes ((array!11984 0))(
  ( (array!11985 (arr!5692 (Array (_ BitVec 32) (_ BitVec 64))) (size!6034 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3564 0))(
  ( (LongMapFixedSize!3565 (defaultEntry!4475 Int) (mask!10546 (_ BitVec 32)) (extraKeys!4212 (_ BitVec 32)) (zeroValue!4316 V!8115) (minValue!4316 V!8115) (_size!1831 (_ BitVec 32)) (_keys!6581 array!11984) (_values!4458 array!11982) (_vacant!1831 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3564)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22467 (= call!22471 (arrayContainsKey!0 (_keys!6581 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241469 () Bool)

(declare-fun e!156723 () Bool)

(declare-fun e!156717 () Bool)

(assert (=> b!241469 (= e!156723 e!156717)))

(declare-fun res!118386 () Bool)

(assert (=> b!241469 (=> (not res!118386) (not e!156717))))

(declare-datatypes ((SeekEntryResult!1066 0))(
  ( (MissingZero!1066 (index!6434 (_ BitVec 32))) (Found!1066 (index!6435 (_ BitVec 32))) (Intermediate!1066 (undefined!1878 Bool) (index!6436 (_ BitVec 32)) (x!24228 (_ BitVec 32))) (Undefined!1066) (MissingVacant!1066 (index!6437 (_ BitVec 32))) )
))
(declare-fun lt!121409 () SeekEntryResult!1066)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!241469 (= res!118386 (or (= lt!121409 (MissingZero!1066 index!297)) (= lt!121409 (MissingVacant!1066 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11984 (_ BitVec 32)) SeekEntryResult!1066)

(assert (=> b!241469 (= lt!121409 (seekEntryOrOpen!0 key!932 (_keys!6581 thiss!1504) (mask!10546 thiss!1504)))))

(declare-fun b!241470 () Bool)

(declare-fun e!156715 () Bool)

(declare-fun e!156724 () Bool)

(assert (=> b!241470 (= e!156715 e!156724)))

(declare-fun res!118379 () Bool)

(declare-fun call!22470 () Bool)

(assert (=> b!241470 (= res!118379 call!22470)))

(assert (=> b!241470 (=> (not res!118379) (not e!156724))))

(declare-fun b!241471 () Bool)

(declare-datatypes ((Unit!7433 0))(
  ( (Unit!7434) )
))
(declare-fun e!156722 () Unit!7433)

(declare-fun Unit!7435 () Unit!7433)

(assert (=> b!241471 (= e!156722 Unit!7435)))

(declare-fun b!241472 () Bool)

(declare-fun res!118385 () Bool)

(assert (=> b!241472 (= res!118385 (= (select (arr!5692 (_keys!6581 thiss!1504)) (index!6437 lt!121409)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241472 (=> (not res!118385) (not e!156724))))

(declare-fun tp_is_empty!6351 () Bool)

(declare-fun e!156721 () Bool)

(declare-fun e!156716 () Bool)

(declare-fun array_inv!3757 (array!11984) Bool)

(declare-fun array_inv!3758 (array!11982) Bool)

(assert (=> b!241473 (= e!156716 (and tp!22675 tp_is_empty!6351 (array_inv!3757 (_keys!6581 thiss!1504)) (array_inv!3758 (_values!4458 thiss!1504)) e!156721))))

(declare-fun b!241474 () Bool)

(declare-fun e!156718 () Bool)

(assert (=> b!241474 (= e!156718 tp_is_empty!6351)))

(declare-fun b!241475 () Bool)

(declare-fun e!156725 () Bool)

(declare-fun mapRes!10762 () Bool)

(assert (=> b!241475 (= e!156721 (and e!156725 mapRes!10762))))

(declare-fun condMapEmpty!10762 () Bool)

(declare-fun mapDefault!10762 () ValueCell!2832)

(assert (=> b!241475 (= condMapEmpty!10762 (= (arr!5691 (_values!4458 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2832)) mapDefault!10762)))))

(declare-fun b!241476 () Bool)

(declare-fun c!40247 () Bool)

(get-info :version)

(assert (=> b!241476 (= c!40247 ((_ is MissingVacant!1066) lt!121409))))

(declare-fun e!156713 () Bool)

(assert (=> b!241476 (= e!156713 e!156715)))

(declare-fun mapNonEmpty!10762 () Bool)

(declare-fun tp!22674 () Bool)

(assert (=> mapNonEmpty!10762 (= mapRes!10762 (and tp!22674 e!156718))))

(declare-fun mapValue!10762 () ValueCell!2832)

(declare-fun mapKey!10762 () (_ BitVec 32))

(declare-fun mapRest!10762 () (Array (_ BitVec 32) ValueCell!2832))

(assert (=> mapNonEmpty!10762 (= (arr!5691 (_values!4458 thiss!1504)) (store mapRest!10762 mapKey!10762 mapValue!10762))))

(declare-fun b!241477 () Bool)

(declare-fun e!156726 () Bool)

(assert (=> b!241477 (= e!156726 false)))

(declare-fun lt!121410 () Unit!7433)

(assert (=> b!241477 (= lt!121410 e!156722)))

(declare-fun c!40244 () Bool)

(assert (=> b!241477 (= c!40244 (arrayContainsKey!0 (_keys!6581 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241478 () Bool)

(declare-fun e!156714 () Bool)

(assert (=> b!241478 (= e!156714 (not call!22471))))

(declare-fun b!241479 () Bool)

(assert (=> b!241479 (= e!156725 tp_is_empty!6351)))

(declare-fun b!241468 () Bool)

(declare-fun res!118383 () Bool)

(assert (=> b!241468 (=> (not res!118383) (not e!156714))))

(assert (=> b!241468 (= res!118383 (= (select (arr!5692 (_keys!6581 thiss!1504)) (index!6434 lt!121409)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!118384 () Bool)

(assert (=> start!23064 (=> (not res!118384) (not e!156723))))

(declare-fun valid!1393 (LongMapFixedSize!3564) Bool)

(assert (=> start!23064 (= res!118384 (valid!1393 thiss!1504))))

(assert (=> start!23064 e!156723))

(assert (=> start!23064 e!156716))

(assert (=> start!23064 true))

(declare-fun b!241480 () Bool)

(declare-fun e!156720 () Unit!7433)

(declare-fun lt!121405 () Unit!7433)

(assert (=> b!241480 (= e!156720 lt!121405)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!356 (array!11984 array!11982 (_ BitVec 32) (_ BitVec 32) V!8115 V!8115 (_ BitVec 64) Int) Unit!7433)

(assert (=> b!241480 (= lt!121405 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!356 (_keys!6581 thiss!1504) (_values!4458 thiss!1504) (mask!10546 thiss!1504) (extraKeys!4212 thiss!1504) (zeroValue!4316 thiss!1504) (minValue!4316 thiss!1504) key!932 (defaultEntry!4475 thiss!1504)))))

(declare-fun c!40245 () Bool)

(assert (=> b!241480 (= c!40245 ((_ is MissingZero!1066) lt!121409))))

(assert (=> b!241480 e!156713))

(declare-fun b!241481 () Bool)

(declare-fun res!118380 () Bool)

(assert (=> b!241481 (=> (not res!118380) (not e!156714))))

(assert (=> b!241481 (= res!118380 call!22470)))

(assert (=> b!241481 (= e!156713 e!156714)))

(declare-fun b!241482 () Bool)

(assert (=> b!241482 (= e!156715 ((_ is Undefined!1066) lt!121409))))

(declare-fun b!241483 () Bool)

(assert (=> b!241483 (= e!156724 (not call!22471))))

(declare-fun b!241484 () Bool)

(declare-fun Unit!7436 () Unit!7433)

(assert (=> b!241484 (= e!156722 Unit!7436)))

(declare-fun lt!121407 () Unit!7433)

(declare-fun lemmaArrayContainsKeyThenInListMap!153 (array!11984 array!11982 (_ BitVec 32) (_ BitVec 32) V!8115 V!8115 (_ BitVec 64) (_ BitVec 32) Int) Unit!7433)

(assert (=> b!241484 (= lt!121407 (lemmaArrayContainsKeyThenInListMap!153 (_keys!6581 thiss!1504) (_values!4458 thiss!1504) (mask!10546 thiss!1504) (extraKeys!4212 thiss!1504) (zeroValue!4316 thiss!1504) (minValue!4316 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4475 thiss!1504)))))

(assert (=> b!241484 false))

(declare-fun bm!22468 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22468 (= call!22470 (inRange!0 (ite c!40245 (index!6434 lt!121409) (index!6437 lt!121409)) (mask!10546 thiss!1504)))))

(declare-fun mapIsEmpty!10762 () Bool)

(assert (=> mapIsEmpty!10762 mapRes!10762))

(declare-fun b!241485 () Bool)

(declare-fun Unit!7437 () Unit!7433)

(assert (=> b!241485 (= e!156720 Unit!7437)))

(declare-fun lt!121408 () Unit!7433)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!349 (array!11984 array!11982 (_ BitVec 32) (_ BitVec 32) V!8115 V!8115 (_ BitVec 64) Int) Unit!7433)

(assert (=> b!241485 (= lt!121408 (lemmaInListMapThenSeekEntryOrOpenFindsIt!349 (_keys!6581 thiss!1504) (_values!4458 thiss!1504) (mask!10546 thiss!1504) (extraKeys!4212 thiss!1504) (zeroValue!4316 thiss!1504) (minValue!4316 thiss!1504) key!932 (defaultEntry!4475 thiss!1504)))))

(assert (=> b!241485 false))

(declare-fun b!241486 () Bool)

(declare-fun res!118381 () Bool)

(assert (=> b!241486 (=> (not res!118381) (not e!156723))))

(assert (=> b!241486 (= res!118381 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!241487 () Bool)

(assert (=> b!241487 (= e!156717 e!156726)))

(declare-fun res!118382 () Bool)

(assert (=> b!241487 (=> (not res!118382) (not e!156726))))

(assert (=> b!241487 (= res!118382 (inRange!0 index!297 (mask!10546 thiss!1504)))))

(declare-fun lt!121406 () Unit!7433)

(assert (=> b!241487 (= lt!121406 e!156720)))

(declare-fun c!40246 () Bool)

(declare-datatypes ((tuple2!4740 0))(
  ( (tuple2!4741 (_1!2380 (_ BitVec 64)) (_2!2380 V!8115)) )
))
(declare-datatypes ((List!3644 0))(
  ( (Nil!3641) (Cons!3640 (h!4297 tuple2!4740) (t!8649 List!3644)) )
))
(declare-datatypes ((ListLongMap!3667 0))(
  ( (ListLongMap!3668 (toList!1849 List!3644)) )
))
(declare-fun contains!1733 (ListLongMap!3667 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1372 (array!11984 array!11982 (_ BitVec 32) (_ BitVec 32) V!8115 V!8115 (_ BitVec 32) Int) ListLongMap!3667)

(assert (=> b!241487 (= c!40246 (contains!1733 (getCurrentListMap!1372 (_keys!6581 thiss!1504) (_values!4458 thiss!1504) (mask!10546 thiss!1504) (extraKeys!4212 thiss!1504) (zeroValue!4316 thiss!1504) (minValue!4316 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4475 thiss!1504)) key!932))))

(assert (= (and start!23064 res!118384) b!241486))

(assert (= (and b!241486 res!118381) b!241469))

(assert (= (and b!241469 res!118386) b!241487))

(assert (= (and b!241487 c!40246) b!241485))

(assert (= (and b!241487 (not c!40246)) b!241480))

(assert (= (and b!241480 c!40245) b!241481))

(assert (= (and b!241480 (not c!40245)) b!241476))

(assert (= (and b!241481 res!118380) b!241468))

(assert (= (and b!241468 res!118383) b!241478))

(assert (= (and b!241476 c!40247) b!241470))

(assert (= (and b!241476 (not c!40247)) b!241482))

(assert (= (and b!241470 res!118379) b!241472))

(assert (= (and b!241472 res!118385) b!241483))

(assert (= (or b!241481 b!241470) bm!22468))

(assert (= (or b!241478 b!241483) bm!22467))

(assert (= (and b!241487 res!118382) b!241477))

(assert (= (and b!241477 c!40244) b!241484))

(assert (= (and b!241477 (not c!40244)) b!241471))

(assert (= (and b!241475 condMapEmpty!10762) mapIsEmpty!10762))

(assert (= (and b!241475 (not condMapEmpty!10762)) mapNonEmpty!10762))

(assert (= (and mapNonEmpty!10762 ((_ is ValueCellFull!2832) mapValue!10762)) b!241474))

(assert (= (and b!241475 ((_ is ValueCellFull!2832) mapDefault!10762)) b!241479))

(assert (= b!241473 b!241475))

(assert (= start!23064 b!241473))

(declare-fun m!260695 () Bool)

(assert (=> mapNonEmpty!10762 m!260695))

(declare-fun m!260697 () Bool)

(assert (=> b!241473 m!260697))

(declare-fun m!260699 () Bool)

(assert (=> b!241473 m!260699))

(declare-fun m!260701 () Bool)

(assert (=> start!23064 m!260701))

(declare-fun m!260703 () Bool)

(assert (=> b!241469 m!260703))

(declare-fun m!260705 () Bool)

(assert (=> b!241472 m!260705))

(declare-fun m!260707 () Bool)

(assert (=> b!241487 m!260707))

(declare-fun m!260709 () Bool)

(assert (=> b!241487 m!260709))

(assert (=> b!241487 m!260709))

(declare-fun m!260711 () Bool)

(assert (=> b!241487 m!260711))

(declare-fun m!260713 () Bool)

(assert (=> b!241485 m!260713))

(declare-fun m!260715 () Bool)

(assert (=> b!241484 m!260715))

(declare-fun m!260717 () Bool)

(assert (=> bm!22467 m!260717))

(declare-fun m!260719 () Bool)

(assert (=> bm!22468 m!260719))

(declare-fun m!260721 () Bool)

(assert (=> b!241468 m!260721))

(assert (=> b!241477 m!260717))

(declare-fun m!260723 () Bool)

(assert (=> b!241480 m!260723))

(check-sat (not bm!22468) tp_is_empty!6351 (not b!241480) (not bm!22467) (not b!241485) (not b!241484) (not start!23064) (not b!241477) (not mapNonEmpty!10762) (not b_next!6489) (not b!241487) b_and!13479 (not b!241473) (not b!241469))
(check-sat b_and!13479 (not b_next!6489))

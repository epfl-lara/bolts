; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23160 () Bool)

(assert start!23160)

(declare-fun b!242722 () Bool)

(declare-fun b_free!6513 () Bool)

(declare-fun b_next!6513 () Bool)

(assert (=> b!242722 (= b_free!6513 (not b_next!6513))))

(declare-fun tp!22755 () Bool)

(declare-fun b_and!13509 () Bool)

(assert (=> b!242722 (= tp!22755 b_and!13509)))

(declare-fun bm!22620 () Bool)

(declare-fun call!22624 () Bool)

(declare-datatypes ((V!8147 0))(
  ( (V!8148 (val!3232 Int)) )
))
(declare-datatypes ((ValueCell!2844 0))(
  ( (ValueCellFull!2844 (v!5271 V!8147)) (EmptyCell!2844) )
))
(declare-datatypes ((array!12036 0))(
  ( (array!12037 (arr!5715 (Array (_ BitVec 32) ValueCell!2844)) (size!6057 (_ BitVec 32))) )
))
(declare-datatypes ((array!12038 0))(
  ( (array!12039 (arr!5716 (Array (_ BitVec 32) (_ BitVec 64))) (size!6058 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3588 0))(
  ( (LongMapFixedSize!3589 (defaultEntry!4499 Int) (mask!10584 (_ BitVec 32)) (extraKeys!4236 (_ BitVec 32)) (zeroValue!4340 V!8147) (minValue!4340 V!8147) (_size!1843 (_ BitVec 32)) (_keys!6608 array!12038) (_values!4482 array!12036) (_vacant!1843 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3588)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22620 (= call!22624 (arrayContainsKey!0 (_keys!6608 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242714 () Bool)

(declare-fun res!118956 () Bool)

(declare-fun e!157539 () Bool)

(assert (=> b!242714 (=> (not res!118956) (not e!157539))))

(declare-datatypes ((List!3658 0))(
  ( (Nil!3655) (Cons!3654 (h!4311 (_ BitVec 64)) (t!8669 List!3658)) )
))
(declare-fun contains!1745 (List!3658 (_ BitVec 64)) Bool)

(assert (=> b!242714 (= res!118956 (not (contains!1745 Nil!3655 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!242715 () Bool)

(declare-fun e!157547 () Bool)

(declare-fun tp_is_empty!6375 () Bool)

(assert (=> b!242715 (= e!157547 tp_is_empty!6375)))

(declare-fun b!242716 () Bool)

(declare-fun res!118955 () Bool)

(assert (=> b!242716 (=> (not res!118955) (not e!157539))))

(declare-fun noDuplicate!92 (List!3658) Bool)

(assert (=> b!242716 (= res!118955 (noDuplicate!92 Nil!3655))))

(declare-fun b!242717 () Bool)

(declare-fun e!157544 () Bool)

(assert (=> b!242717 (= e!157544 e!157539)))

(declare-fun res!118957 () Bool)

(assert (=> b!242717 (=> (not res!118957) (not e!157539))))

(assert (=> b!242717 (= res!118957 (and (bvslt (size!6058 (_keys!6608 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504)))))))

(declare-datatypes ((Unit!7484 0))(
  ( (Unit!7485) )
))
(declare-fun lt!121931 () Unit!7484)

(declare-fun e!157541 () Unit!7484)

(assert (=> b!242717 (= lt!121931 e!157541)))

(declare-fun c!40496 () Bool)

(assert (=> b!242717 (= c!40496 (arrayContainsKey!0 (_keys!6608 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242718 () Bool)

(declare-fun c!40497 () Bool)

(declare-datatypes ((SeekEntryResult!1077 0))(
  ( (MissingZero!1077 (index!6478 (_ BitVec 32))) (Found!1077 (index!6479 (_ BitVec 32))) (Intermediate!1077 (undefined!1889 Bool) (index!6480 (_ BitVec 32)) (x!24301 (_ BitVec 32))) (Undefined!1077) (MissingVacant!1077 (index!6481 (_ BitVec 32))) )
))
(declare-fun lt!121935 () SeekEntryResult!1077)

(get-info :version)

(assert (=> b!242718 (= c!40497 ((_ is MissingVacant!1077) lt!121935))))

(declare-fun e!157536 () Bool)

(declare-fun e!157540 () Bool)

(assert (=> b!242718 (= e!157536 e!157540)))

(declare-fun bm!22621 () Bool)

(declare-fun call!22623 () Bool)

(declare-fun c!40498 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22621 (= call!22623 (inRange!0 (ite c!40498 (index!6478 lt!121935) (index!6481 lt!121935)) (mask!10584 thiss!1504)))))

(declare-fun b!242719 () Bool)

(declare-fun e!157533 () Unit!7484)

(declare-fun Unit!7486 () Unit!7484)

(assert (=> b!242719 (= e!157533 Unit!7486)))

(declare-fun lt!121936 () Unit!7484)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!357 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 64) Int) Unit!7484)

(assert (=> b!242719 (= lt!121936 (lemmaInListMapThenSeekEntryOrOpenFindsIt!357 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 (defaultEntry!4499 thiss!1504)))))

(assert (=> b!242719 false))

(declare-fun b!242720 () Bool)

(declare-fun e!157545 () Bool)

(declare-fun e!157542 () Bool)

(declare-fun mapRes!10807 () Bool)

(assert (=> b!242720 (= e!157545 (and e!157542 mapRes!10807))))

(declare-fun condMapEmpty!10807 () Bool)

(declare-fun mapDefault!10807 () ValueCell!2844)

(assert (=> b!242720 (= condMapEmpty!10807 (= (arr!5715 (_values!4482 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2844)) mapDefault!10807)))))

(declare-fun b!242721 () Bool)

(declare-fun Unit!7487 () Unit!7484)

(assert (=> b!242721 (= e!157541 Unit!7487)))

(declare-fun e!157543 () Bool)

(declare-fun array_inv!3773 (array!12038) Bool)

(declare-fun array_inv!3774 (array!12036) Bool)

(assert (=> b!242722 (= e!157543 (and tp!22755 tp_is_empty!6375 (array_inv!3773 (_keys!6608 thiss!1504)) (array_inv!3774 (_values!4482 thiss!1504)) e!157545))))

(declare-fun mapNonEmpty!10807 () Bool)

(declare-fun tp!22756 () Bool)

(assert (=> mapNonEmpty!10807 (= mapRes!10807 (and tp!22756 e!157547))))

(declare-fun mapKey!10807 () (_ BitVec 32))

(declare-fun mapRest!10807 () (Array (_ BitVec 32) ValueCell!2844))

(declare-fun mapValue!10807 () ValueCell!2844)

(assert (=> mapNonEmpty!10807 (= (arr!5715 (_values!4482 thiss!1504)) (store mapRest!10807 mapKey!10807 mapValue!10807))))

(declare-fun b!242723 () Bool)

(declare-fun res!118951 () Bool)

(assert (=> b!242723 (=> (not res!118951) (not e!157539))))

(assert (=> b!242723 (= res!118951 (not (contains!1745 Nil!3655 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!242724 () Bool)

(assert (=> b!242724 (= e!157540 ((_ is Undefined!1077) lt!121935))))

(declare-fun res!118959 () Bool)

(declare-fun e!157546 () Bool)

(assert (=> start!23160 (=> (not res!118959) (not e!157546))))

(declare-fun valid!1399 (LongMapFixedSize!3588) Bool)

(assert (=> start!23160 (= res!118959 (valid!1399 thiss!1504))))

(assert (=> start!23160 e!157546))

(assert (=> start!23160 e!157543))

(assert (=> start!23160 true))

(declare-fun b!242725 () Bool)

(declare-fun e!157531 () Bool)

(assert (=> b!242725 (= e!157540 e!157531)))

(declare-fun res!118953 () Bool)

(assert (=> b!242725 (= res!118953 call!22623)))

(assert (=> b!242725 (=> (not res!118953) (not e!157531))))

(declare-fun b!242726 () Bool)

(declare-fun e!157534 () Bool)

(assert (=> b!242726 (= e!157534 (contains!1745 Nil!3655 key!932))))

(declare-fun mapIsEmpty!10807 () Bool)

(assert (=> mapIsEmpty!10807 mapRes!10807))

(declare-fun b!242727 () Bool)

(assert (=> b!242727 (= e!157539 e!157534)))

(declare-fun res!118958 () Bool)

(assert (=> b!242727 (=> res!118958 e!157534)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!242727 (= res!118958 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!242728 () Bool)

(declare-fun res!118948 () Bool)

(assert (=> b!242728 (= res!118948 (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6481 lt!121935)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242728 (=> (not res!118948) (not e!157531))))

(declare-fun b!242729 () Bool)

(declare-fun res!118947 () Bool)

(assert (=> b!242729 (=> (not res!118947) (not e!157546))))

(assert (=> b!242729 (= res!118947 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!242730 () Bool)

(declare-fun lt!121934 () Unit!7484)

(assert (=> b!242730 (= e!157533 lt!121934)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!364 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 64) Int) Unit!7484)

(assert (=> b!242730 (= lt!121934 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!364 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 (defaultEntry!4499 thiss!1504)))))

(assert (=> b!242730 (= c!40498 ((_ is MissingZero!1077) lt!121935))))

(assert (=> b!242730 e!157536))

(declare-fun b!242731 () Bool)

(assert (=> b!242731 (= e!157542 tp_is_empty!6375)))

(declare-fun b!242732 () Bool)

(declare-fun res!118960 () Bool)

(declare-fun e!157538 () Bool)

(assert (=> b!242732 (=> (not res!118960) (not e!157538))))

(assert (=> b!242732 (= res!118960 (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6478 lt!121935)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242733 () Bool)

(declare-fun res!118954 () Bool)

(assert (=> b!242733 (=> (not res!118954) (not e!157538))))

(assert (=> b!242733 (= res!118954 call!22623)))

(assert (=> b!242733 (= e!157536 e!157538)))

(declare-fun b!242734 () Bool)

(declare-fun e!157532 () Bool)

(assert (=> b!242734 (= e!157532 e!157544)))

(declare-fun res!118949 () Bool)

(assert (=> b!242734 (=> (not res!118949) (not e!157544))))

(assert (=> b!242734 (= res!118949 (inRange!0 index!297 (mask!10584 thiss!1504)))))

(declare-fun lt!121933 () Unit!7484)

(assert (=> b!242734 (= lt!121933 e!157533)))

(declare-fun c!40499 () Bool)

(declare-datatypes ((tuple2!4756 0))(
  ( (tuple2!4757 (_1!2388 (_ BitVec 64)) (_2!2388 V!8147)) )
))
(declare-datatypes ((List!3659 0))(
  ( (Nil!3656) (Cons!3655 (h!4312 tuple2!4756) (t!8670 List!3659)) )
))
(declare-datatypes ((ListLongMap!3683 0))(
  ( (ListLongMap!3684 (toList!1857 List!3659)) )
))
(declare-fun contains!1746 (ListLongMap!3683 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1380 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 32) Int) ListLongMap!3683)

(assert (=> b!242734 (= c!40499 (contains!1746 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)) key!932))))

(declare-fun b!242735 () Bool)

(declare-fun Unit!7488 () Unit!7484)

(assert (=> b!242735 (= e!157541 Unit!7488)))

(declare-fun lt!121932 () Unit!7484)

(declare-fun lemmaArrayContainsKeyThenInListMap!161 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 64) (_ BitVec 32) Int) Unit!7484)

(assert (=> b!242735 (= lt!121932 (lemmaArrayContainsKeyThenInListMap!161 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(assert (=> b!242735 false))

(declare-fun b!242736 () Bool)

(declare-fun res!118961 () Bool)

(assert (=> b!242736 (=> (not res!118961) (not e!157539))))

(declare-fun e!157537 () Bool)

(assert (=> b!242736 (= res!118961 e!157537)))

(declare-fun res!118950 () Bool)

(assert (=> b!242736 (=> res!118950 e!157537)))

(assert (=> b!242736 (= res!118950 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!242737 () Bool)

(assert (=> b!242737 (= e!157531 (not call!22624))))

(declare-fun b!242738 () Bool)

(assert (=> b!242738 (= e!157546 e!157532)))

(declare-fun res!118952 () Bool)

(assert (=> b!242738 (=> (not res!118952) (not e!157532))))

(assert (=> b!242738 (= res!118952 (or (= lt!121935 (MissingZero!1077 index!297)) (= lt!121935 (MissingVacant!1077 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12038 (_ BitVec 32)) SeekEntryResult!1077)

(assert (=> b!242738 (= lt!121935 (seekEntryOrOpen!0 key!932 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)))))

(declare-fun b!242739 () Bool)

(assert (=> b!242739 (= e!157538 (not call!22624))))

(declare-fun b!242740 () Bool)

(assert (=> b!242740 (= e!157537 (not (contains!1745 Nil!3655 key!932)))))

(assert (= (and start!23160 res!118959) b!242729))

(assert (= (and b!242729 res!118947) b!242738))

(assert (= (and b!242738 res!118952) b!242734))

(assert (= (and b!242734 c!40499) b!242719))

(assert (= (and b!242734 (not c!40499)) b!242730))

(assert (= (and b!242730 c!40498) b!242733))

(assert (= (and b!242730 (not c!40498)) b!242718))

(assert (= (and b!242733 res!118954) b!242732))

(assert (= (and b!242732 res!118960) b!242739))

(assert (= (and b!242718 c!40497) b!242725))

(assert (= (and b!242718 (not c!40497)) b!242724))

(assert (= (and b!242725 res!118953) b!242728))

(assert (= (and b!242728 res!118948) b!242737))

(assert (= (or b!242733 b!242725) bm!22621))

(assert (= (or b!242739 b!242737) bm!22620))

(assert (= (and b!242734 res!118949) b!242717))

(assert (= (and b!242717 c!40496) b!242735))

(assert (= (and b!242717 (not c!40496)) b!242721))

(assert (= (and b!242717 res!118957) b!242716))

(assert (= (and b!242716 res!118955) b!242723))

(assert (= (and b!242723 res!118951) b!242714))

(assert (= (and b!242714 res!118956) b!242736))

(assert (= (and b!242736 (not res!118950)) b!242740))

(assert (= (and b!242736 res!118961) b!242727))

(assert (= (and b!242727 (not res!118958)) b!242726))

(assert (= (and b!242720 condMapEmpty!10807) mapIsEmpty!10807))

(assert (= (and b!242720 (not condMapEmpty!10807)) mapNonEmpty!10807))

(assert (= (and mapNonEmpty!10807 ((_ is ValueCellFull!2844) mapValue!10807)) b!242715))

(assert (= (and b!242720 ((_ is ValueCellFull!2844) mapDefault!10807)) b!242731))

(assert (= b!242722 b!242720))

(assert (= start!23160 b!242722))

(declare-fun m!261435 () Bool)

(assert (=> b!242738 m!261435))

(declare-fun m!261437 () Bool)

(assert (=> b!242730 m!261437))

(declare-fun m!261439 () Bool)

(assert (=> mapNonEmpty!10807 m!261439))

(declare-fun m!261441 () Bool)

(assert (=> b!242740 m!261441))

(declare-fun m!261443 () Bool)

(assert (=> bm!22620 m!261443))

(declare-fun m!261445 () Bool)

(assert (=> bm!22621 m!261445))

(declare-fun m!261447 () Bool)

(assert (=> b!242722 m!261447))

(declare-fun m!261449 () Bool)

(assert (=> b!242722 m!261449))

(declare-fun m!261451 () Bool)

(assert (=> b!242719 m!261451))

(declare-fun m!261453 () Bool)

(assert (=> b!242734 m!261453))

(declare-fun m!261455 () Bool)

(assert (=> b!242734 m!261455))

(assert (=> b!242734 m!261455))

(declare-fun m!261457 () Bool)

(assert (=> b!242734 m!261457))

(assert (=> b!242717 m!261443))

(declare-fun m!261459 () Bool)

(assert (=> b!242714 m!261459))

(declare-fun m!261461 () Bool)

(assert (=> b!242732 m!261461))

(declare-fun m!261463 () Bool)

(assert (=> start!23160 m!261463))

(assert (=> b!242726 m!261441))

(declare-fun m!261465 () Bool)

(assert (=> b!242735 m!261465))

(declare-fun m!261467 () Bool)

(assert (=> b!242716 m!261467))

(declare-fun m!261469 () Bool)

(assert (=> b!242728 m!261469))

(declare-fun m!261471 () Bool)

(assert (=> b!242723 m!261471))

(check-sat (not b!242726) (not b!242722) (not b!242719) (not b!242738) (not b!242716) (not bm!22620) b_and!13509 (not b!242730) (not b!242740) (not b!242717) (not b!242714) tp_is_empty!6375 (not b_next!6513) (not start!23160) (not mapNonEmpty!10807) (not b!242735) (not b!242734) (not bm!22621) (not b!242723))
(check-sat b_and!13509 (not b_next!6513))
(get-model)

(declare-fun b!242834 () Bool)

(declare-fun c!40518 () Bool)

(declare-fun lt!121962 () (_ BitVec 64))

(assert (=> b!242834 (= c!40518 (= lt!121962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157605 () SeekEntryResult!1077)

(declare-fun e!157606 () SeekEntryResult!1077)

(assert (=> b!242834 (= e!157605 e!157606)))

(declare-fun b!242835 () Bool)

(declare-fun e!157607 () SeekEntryResult!1077)

(assert (=> b!242835 (= e!157607 e!157605)))

(declare-fun lt!121961 () SeekEntryResult!1077)

(assert (=> b!242835 (= lt!121962 (select (arr!5716 (_keys!6608 thiss!1504)) (index!6480 lt!121961)))))

(declare-fun c!40519 () Bool)

(assert (=> b!242835 (= c!40519 (= lt!121962 key!932))))

(declare-fun b!242836 () Bool)

(assert (=> b!242836 (= e!157607 Undefined!1077)))

(declare-fun b!242837 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12038 (_ BitVec 32)) SeekEntryResult!1077)

(assert (=> b!242837 (= e!157606 (seekKeyOrZeroReturnVacant!0 (x!24301 lt!121961) (index!6480 lt!121961) (index!6480 lt!121961) key!932 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)))))

(declare-fun b!242838 () Bool)

(assert (=> b!242838 (= e!157606 (MissingZero!1077 (index!6480 lt!121961)))))

(declare-fun b!242839 () Bool)

(assert (=> b!242839 (= e!157605 (Found!1077 (index!6480 lt!121961)))))

(declare-fun d!59915 () Bool)

(declare-fun lt!121963 () SeekEntryResult!1077)

(assert (=> d!59915 (and (or ((_ is Undefined!1077) lt!121963) (not ((_ is Found!1077) lt!121963)) (and (bvsge (index!6479 lt!121963) #b00000000000000000000000000000000) (bvslt (index!6479 lt!121963) (size!6058 (_keys!6608 thiss!1504))))) (or ((_ is Undefined!1077) lt!121963) ((_ is Found!1077) lt!121963) (not ((_ is MissingZero!1077) lt!121963)) (and (bvsge (index!6478 lt!121963) #b00000000000000000000000000000000) (bvslt (index!6478 lt!121963) (size!6058 (_keys!6608 thiss!1504))))) (or ((_ is Undefined!1077) lt!121963) ((_ is Found!1077) lt!121963) ((_ is MissingZero!1077) lt!121963) (not ((_ is MissingVacant!1077) lt!121963)) (and (bvsge (index!6481 lt!121963) #b00000000000000000000000000000000) (bvslt (index!6481 lt!121963) (size!6058 (_keys!6608 thiss!1504))))) (or ((_ is Undefined!1077) lt!121963) (ite ((_ is Found!1077) lt!121963) (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6479 lt!121963)) key!932) (ite ((_ is MissingZero!1077) lt!121963) (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6478 lt!121963)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1077) lt!121963) (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6481 lt!121963)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59915 (= lt!121963 e!157607)))

(declare-fun c!40520 () Bool)

(assert (=> d!59915 (= c!40520 (and ((_ is Intermediate!1077) lt!121961) (undefined!1889 lt!121961)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12038 (_ BitVec 32)) SeekEntryResult!1077)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59915 (= lt!121961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10584 thiss!1504)) key!932 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59915 (validMask!0 (mask!10584 thiss!1504))))

(assert (=> d!59915 (= (seekEntryOrOpen!0 key!932 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)) lt!121963)))

(assert (= (and d!59915 c!40520) b!242836))

(assert (= (and d!59915 (not c!40520)) b!242835))

(assert (= (and b!242835 c!40519) b!242839))

(assert (= (and b!242835 (not c!40519)) b!242834))

(assert (= (and b!242834 c!40518) b!242838))

(assert (= (and b!242834 (not c!40518)) b!242837))

(declare-fun m!261511 () Bool)

(assert (=> b!242835 m!261511))

(declare-fun m!261513 () Bool)

(assert (=> b!242837 m!261513))

(declare-fun m!261515 () Bool)

(assert (=> d!59915 m!261515))

(declare-fun m!261517 () Bool)

(assert (=> d!59915 m!261517))

(declare-fun m!261519 () Bool)

(assert (=> d!59915 m!261519))

(declare-fun m!261521 () Bool)

(assert (=> d!59915 m!261521))

(declare-fun m!261523 () Bool)

(assert (=> d!59915 m!261523))

(declare-fun m!261525 () Bool)

(assert (=> d!59915 m!261525))

(assert (=> d!59915 m!261519))

(assert (=> b!242738 d!59915))

(declare-fun d!59917 () Bool)

(declare-fun e!157610 () Bool)

(assert (=> d!59917 e!157610))

(declare-fun res!119012 () Bool)

(assert (=> d!59917 (=> (not res!119012) (not e!157610))))

(declare-fun lt!121969 () SeekEntryResult!1077)

(assert (=> d!59917 (= res!119012 ((_ is Found!1077) lt!121969))))

(assert (=> d!59917 (= lt!121969 (seekEntryOrOpen!0 key!932 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)))))

(declare-fun lt!121968 () Unit!7484)

(declare-fun choose!1139 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 64) Int) Unit!7484)

(assert (=> d!59917 (= lt!121968 (choose!1139 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 (defaultEntry!4499 thiss!1504)))))

(assert (=> d!59917 (validMask!0 (mask!10584 thiss!1504))))

(assert (=> d!59917 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!357 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 (defaultEntry!4499 thiss!1504)) lt!121968)))

(declare-fun b!242844 () Bool)

(declare-fun res!119011 () Bool)

(assert (=> b!242844 (=> (not res!119011) (not e!157610))))

(assert (=> b!242844 (= res!119011 (inRange!0 (index!6479 lt!121969) (mask!10584 thiss!1504)))))

(declare-fun b!242845 () Bool)

(assert (=> b!242845 (= e!157610 (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6479 lt!121969)) key!932))))

(assert (=> b!242845 (and (bvsge (index!6479 lt!121969) #b00000000000000000000000000000000) (bvslt (index!6479 lt!121969) (size!6058 (_keys!6608 thiss!1504))))))

(assert (= (and d!59917 res!119012) b!242844))

(assert (= (and b!242844 res!119011) b!242845))

(assert (=> d!59917 m!261435))

(declare-fun m!261527 () Bool)

(assert (=> d!59917 m!261527))

(assert (=> d!59917 m!261525))

(declare-fun m!261529 () Bool)

(assert (=> b!242844 m!261529))

(declare-fun m!261531 () Bool)

(assert (=> b!242845 m!261531))

(assert (=> b!242719 d!59917))

(declare-fun d!59919 () Bool)

(assert (=> d!59919 (= (inRange!0 (ite c!40498 (index!6478 lt!121935) (index!6481 lt!121935)) (mask!10584 thiss!1504)) (and (bvsge (ite c!40498 (index!6478 lt!121935) (index!6481 lt!121935)) #b00000000000000000000000000000000) (bvslt (ite c!40498 (index!6478 lt!121935) (index!6481 lt!121935)) (bvadd (mask!10584 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22621 d!59919))

(declare-fun d!59921 () Bool)

(declare-fun res!119017 () Bool)

(declare-fun e!157615 () Bool)

(assert (=> d!59921 (=> res!119017 e!157615)))

(assert (=> d!59921 (= res!119017 (= (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59921 (= (arrayContainsKey!0 (_keys!6608 thiss!1504) key!932 #b00000000000000000000000000000000) e!157615)))

(declare-fun b!242850 () Bool)

(declare-fun e!157616 () Bool)

(assert (=> b!242850 (= e!157615 e!157616)))

(declare-fun res!119018 () Bool)

(assert (=> b!242850 (=> (not res!119018) (not e!157616))))

(assert (=> b!242850 (= res!119018 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6058 (_keys!6608 thiss!1504))))))

(declare-fun b!242851 () Bool)

(assert (=> b!242851 (= e!157616 (arrayContainsKey!0 (_keys!6608 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59921 (not res!119017)) b!242850))

(assert (= (and b!242850 res!119018) b!242851))

(declare-fun m!261533 () Bool)

(assert (=> d!59921 m!261533))

(declare-fun m!261535 () Bool)

(assert (=> b!242851 m!261535))

(assert (=> b!242717 d!59921))

(declare-fun d!59923 () Bool)

(declare-fun lt!121972 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!158 (List!3658) (InoxSet (_ BitVec 64)))

(assert (=> d!59923 (= lt!121972 (select (content!158 Nil!3655) key!932))))

(declare-fun e!157621 () Bool)

(assert (=> d!59923 (= lt!121972 e!157621)))

(declare-fun res!119024 () Bool)

(assert (=> d!59923 (=> (not res!119024) (not e!157621))))

(assert (=> d!59923 (= res!119024 ((_ is Cons!3654) Nil!3655))))

(assert (=> d!59923 (= (contains!1745 Nil!3655 key!932) lt!121972)))

(declare-fun b!242856 () Bool)

(declare-fun e!157622 () Bool)

(assert (=> b!242856 (= e!157621 e!157622)))

(declare-fun res!119023 () Bool)

(assert (=> b!242856 (=> res!119023 e!157622)))

(assert (=> b!242856 (= res!119023 (= (h!4311 Nil!3655) key!932))))

(declare-fun b!242857 () Bool)

(assert (=> b!242857 (= e!157622 (contains!1745 (t!8669 Nil!3655) key!932))))

(assert (= (and d!59923 res!119024) b!242856))

(assert (= (and b!242856 (not res!119023)) b!242857))

(declare-fun m!261537 () Bool)

(assert (=> d!59923 m!261537))

(declare-fun m!261539 () Bool)

(assert (=> d!59923 m!261539))

(declare-fun m!261541 () Bool)

(assert (=> b!242857 m!261541))

(assert (=> b!242726 d!59923))

(declare-fun d!59925 () Bool)

(assert (=> d!59925 (= (inRange!0 index!297 (mask!10584 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10584 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!242734 d!59925))

(declare-fun d!59927 () Bool)

(declare-fun e!157628 () Bool)

(assert (=> d!59927 e!157628))

(declare-fun res!119027 () Bool)

(assert (=> d!59927 (=> res!119027 e!157628)))

(declare-fun lt!121983 () Bool)

(assert (=> d!59927 (= res!119027 (not lt!121983))))

(declare-fun lt!121981 () Bool)

(assert (=> d!59927 (= lt!121983 lt!121981)))

(declare-fun lt!121984 () Unit!7484)

(declare-fun e!157627 () Unit!7484)

(assert (=> d!59927 (= lt!121984 e!157627)))

(declare-fun c!40523 () Bool)

(assert (=> d!59927 (= c!40523 lt!121981)))

(declare-fun containsKey!274 (List!3659 (_ BitVec 64)) Bool)

(assert (=> d!59927 (= lt!121981 (containsKey!274 (toList!1857 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504))) key!932))))

(assert (=> d!59927 (= (contains!1746 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)) key!932) lt!121983)))

(declare-fun b!242864 () Bool)

(declare-fun lt!121982 () Unit!7484)

(assert (=> b!242864 (= e!157627 lt!121982)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!223 (List!3659 (_ BitVec 64)) Unit!7484)

(assert (=> b!242864 (= lt!121982 (lemmaContainsKeyImpliesGetValueByKeyDefined!223 (toList!1857 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504))) key!932))))

(declare-datatypes ((Option!288 0))(
  ( (Some!287 (v!5274 V!8147)) (None!286) )
))
(declare-fun isDefined!224 (Option!288) Bool)

(declare-fun getValueByKey!282 (List!3659 (_ BitVec 64)) Option!288)

(assert (=> b!242864 (isDefined!224 (getValueByKey!282 (toList!1857 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504))) key!932))))

(declare-fun b!242865 () Bool)

(declare-fun Unit!7494 () Unit!7484)

(assert (=> b!242865 (= e!157627 Unit!7494)))

(declare-fun b!242866 () Bool)

(assert (=> b!242866 (= e!157628 (isDefined!224 (getValueByKey!282 (toList!1857 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504))) key!932)))))

(assert (= (and d!59927 c!40523) b!242864))

(assert (= (and d!59927 (not c!40523)) b!242865))

(assert (= (and d!59927 (not res!119027)) b!242866))

(declare-fun m!261543 () Bool)

(assert (=> d!59927 m!261543))

(declare-fun m!261545 () Bool)

(assert (=> b!242864 m!261545))

(declare-fun m!261547 () Bool)

(assert (=> b!242864 m!261547))

(assert (=> b!242864 m!261547))

(declare-fun m!261549 () Bool)

(assert (=> b!242864 m!261549))

(assert (=> b!242866 m!261547))

(assert (=> b!242866 m!261547))

(assert (=> b!242866 m!261549))

(assert (=> b!242734 d!59927))

(declare-fun b!242909 () Bool)

(declare-fun c!40539 () Bool)

(assert (=> b!242909 (= c!40539 (and (not (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!157663 () ListLongMap!3683)

(declare-fun e!157656 () ListLongMap!3683)

(assert (=> b!242909 (= e!157663 e!157656)))

(declare-fun b!242910 () Bool)

(declare-fun e!157658 () Bool)

(declare-fun lt!122033 () ListLongMap!3683)

(declare-fun apply!225 (ListLongMap!3683 (_ BitVec 64)) V!8147)

(assert (=> b!242910 (= e!157658 (= (apply!225 lt!122033 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4340 thiss!1504)))))

(declare-fun b!242911 () Bool)

(declare-fun e!157659 () Unit!7484)

(declare-fun lt!122038 () Unit!7484)

(assert (=> b!242911 (= e!157659 lt!122038)))

(declare-fun lt!122032 () ListLongMap!3683)

(declare-fun getCurrentListMapNoExtraKeys!544 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 32) Int) ListLongMap!3683)

(assert (=> b!242911 (= lt!122032 (getCurrentListMapNoExtraKeys!544 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(declare-fun lt!122029 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122029 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122050 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122050 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122041 () Unit!7484)

(declare-fun addStillContains!201 (ListLongMap!3683 (_ BitVec 64) V!8147 (_ BitVec 64)) Unit!7484)

(assert (=> b!242911 (= lt!122041 (addStillContains!201 lt!122032 lt!122029 (zeroValue!4340 thiss!1504) lt!122050))))

(declare-fun +!647 (ListLongMap!3683 tuple2!4756) ListLongMap!3683)

(assert (=> b!242911 (contains!1746 (+!647 lt!122032 (tuple2!4757 lt!122029 (zeroValue!4340 thiss!1504))) lt!122050)))

(declare-fun lt!122035 () Unit!7484)

(assert (=> b!242911 (= lt!122035 lt!122041)))

(declare-fun lt!122045 () ListLongMap!3683)

(assert (=> b!242911 (= lt!122045 (getCurrentListMapNoExtraKeys!544 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(declare-fun lt!122043 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122043 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122044 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122044 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122034 () Unit!7484)

(declare-fun addApplyDifferent!201 (ListLongMap!3683 (_ BitVec 64) V!8147 (_ BitVec 64)) Unit!7484)

(assert (=> b!242911 (= lt!122034 (addApplyDifferent!201 lt!122045 lt!122043 (minValue!4340 thiss!1504) lt!122044))))

(assert (=> b!242911 (= (apply!225 (+!647 lt!122045 (tuple2!4757 lt!122043 (minValue!4340 thiss!1504))) lt!122044) (apply!225 lt!122045 lt!122044))))

(declare-fun lt!122040 () Unit!7484)

(assert (=> b!242911 (= lt!122040 lt!122034)))

(declare-fun lt!122037 () ListLongMap!3683)

(assert (=> b!242911 (= lt!122037 (getCurrentListMapNoExtraKeys!544 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(declare-fun lt!122049 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122049 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122036 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122036 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122031 () Unit!7484)

(assert (=> b!242911 (= lt!122031 (addApplyDifferent!201 lt!122037 lt!122049 (zeroValue!4340 thiss!1504) lt!122036))))

(assert (=> b!242911 (= (apply!225 (+!647 lt!122037 (tuple2!4757 lt!122049 (zeroValue!4340 thiss!1504))) lt!122036) (apply!225 lt!122037 lt!122036))))

(declare-fun lt!122042 () Unit!7484)

(assert (=> b!242911 (= lt!122042 lt!122031)))

(declare-fun lt!122048 () ListLongMap!3683)

(assert (=> b!242911 (= lt!122048 (getCurrentListMapNoExtraKeys!544 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(declare-fun lt!122030 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122030 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122039 () (_ BitVec 64))

(assert (=> b!242911 (= lt!122039 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242911 (= lt!122038 (addApplyDifferent!201 lt!122048 lt!122030 (minValue!4340 thiss!1504) lt!122039))))

(assert (=> b!242911 (= (apply!225 (+!647 lt!122048 (tuple2!4757 lt!122030 (minValue!4340 thiss!1504))) lt!122039) (apply!225 lt!122048 lt!122039))))

(declare-fun b!242913 () Bool)

(declare-fun call!22650 () ListLongMap!3683)

(assert (=> b!242913 (= e!157656 call!22650)))

(declare-fun b!242914 () Bool)

(declare-fun e!157660 () ListLongMap!3683)

(declare-fun call!22647 () ListLongMap!3683)

(assert (=> b!242914 (= e!157660 (+!647 call!22647 (tuple2!4757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4340 thiss!1504))))))

(declare-fun b!242915 () Bool)

(declare-fun e!157665 () Bool)

(declare-fun call!22648 () Bool)

(assert (=> b!242915 (= e!157665 (not call!22648))))

(declare-fun b!242916 () Bool)

(declare-fun Unit!7495 () Unit!7484)

(assert (=> b!242916 (= e!157659 Unit!7495)))

(declare-fun b!242917 () Bool)

(declare-fun call!22645 () ListLongMap!3683)

(assert (=> b!242917 (= e!157656 call!22645)))

(declare-fun b!242918 () Bool)

(assert (=> b!242918 (= e!157663 call!22650)))

(declare-fun bm!22642 () Bool)

(declare-fun call!22651 () ListLongMap!3683)

(assert (=> bm!22642 (= call!22651 (getCurrentListMapNoExtraKeys!544 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(declare-fun b!242919 () Bool)

(declare-fun res!119051 () Bool)

(declare-fun e!157661 () Bool)

(assert (=> b!242919 (=> (not res!119051) (not e!157661))))

(assert (=> b!242919 (= res!119051 e!157665)))

(declare-fun c!40536 () Bool)

(assert (=> b!242919 (= c!40536 (not (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!22643 () Bool)

(declare-fun call!22649 () ListLongMap!3683)

(assert (=> bm!22643 (= call!22649 call!22651)))

(declare-fun bm!22644 () Bool)

(declare-fun c!40541 () Bool)

(declare-fun c!40540 () Bool)

(assert (=> bm!22644 (= call!22647 (+!647 (ite c!40541 call!22651 (ite c!40540 call!22649 call!22645)) (ite (or c!40541 c!40540) (tuple2!4757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4340 thiss!1504)) (tuple2!4757 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4340 thiss!1504)))))))

(declare-fun bm!22645 () Bool)

(assert (=> bm!22645 (= call!22648 (contains!1746 lt!122033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242920 () Bool)

(declare-fun e!157655 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!242920 (= e!157655 (validKeyInArray!0 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!242921 () Bool)

(declare-fun res!119052 () Bool)

(assert (=> b!242921 (=> (not res!119052) (not e!157661))))

(declare-fun e!157657 () Bool)

(assert (=> b!242921 (= res!119052 e!157657)))

(declare-fun res!119047 () Bool)

(assert (=> b!242921 (=> res!119047 e!157657)))

(assert (=> b!242921 (= res!119047 (not e!157655))))

(declare-fun res!119049 () Bool)

(assert (=> b!242921 (=> (not res!119049) (not e!157655))))

(assert (=> b!242921 (= res!119049 (bvslt #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))))))

(declare-fun d!59929 () Bool)

(assert (=> d!59929 e!157661))

(declare-fun res!119046 () Bool)

(assert (=> d!59929 (=> (not res!119046) (not e!157661))))

(assert (=> d!59929 (= res!119046 (or (bvsge #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))))))))

(declare-fun lt!122047 () ListLongMap!3683)

(assert (=> d!59929 (= lt!122033 lt!122047)))

(declare-fun lt!122046 () Unit!7484)

(assert (=> d!59929 (= lt!122046 e!157659)))

(declare-fun c!40537 () Bool)

(declare-fun e!157667 () Bool)

(assert (=> d!59929 (= c!40537 e!157667)))

(declare-fun res!119053 () Bool)

(assert (=> d!59929 (=> (not res!119053) (not e!157667))))

(assert (=> d!59929 (= res!119053 (bvslt #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))))))

(assert (=> d!59929 (= lt!122047 e!157660)))

(assert (=> d!59929 (= c!40541 (and (not (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59929 (validMask!0 (mask!10584 thiss!1504))))

(assert (=> d!59929 (= (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)) lt!122033)))

(declare-fun b!242912 () Bool)

(declare-fun e!157666 () Bool)

(declare-fun get!2936 (ValueCell!2844 V!8147) V!8147)

(declare-fun dynLambda!563 (Int (_ BitVec 64)) V!8147)

(assert (=> b!242912 (= e!157666 (= (apply!225 lt!122033 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000)) (get!2936 (select (arr!5715 (_values!4482 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!563 (defaultEntry!4499 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!242912 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6057 (_values!4482 thiss!1504))))))

(assert (=> b!242912 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))))))

(declare-fun bm!22646 () Bool)

(assert (=> bm!22646 (= call!22650 call!22647)))

(declare-fun b!242922 () Bool)

(declare-fun e!157664 () Bool)

(declare-fun e!157662 () Bool)

(assert (=> b!242922 (= e!157664 e!157662)))

(declare-fun res!119050 () Bool)

(declare-fun call!22646 () Bool)

(assert (=> b!242922 (= res!119050 call!22646)))

(assert (=> b!242922 (=> (not res!119050) (not e!157662))))

(declare-fun b!242923 () Bool)

(assert (=> b!242923 (= e!157664 (not call!22646))))

(declare-fun bm!22647 () Bool)

(assert (=> bm!22647 (= call!22646 (contains!1746 lt!122033 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242924 () Bool)

(assert (=> b!242924 (= e!157665 e!157658)))

(declare-fun res!119054 () Bool)

(assert (=> b!242924 (= res!119054 call!22648)))

(assert (=> b!242924 (=> (not res!119054) (not e!157658))))

(declare-fun bm!22648 () Bool)

(assert (=> bm!22648 (= call!22645 call!22649)))

(declare-fun b!242925 () Bool)

(assert (=> b!242925 (= e!157660 e!157663)))

(assert (=> b!242925 (= c!40540 (and (not (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!242926 () Bool)

(assert (=> b!242926 (= e!157657 e!157666)))

(declare-fun res!119048 () Bool)

(assert (=> b!242926 (=> (not res!119048) (not e!157666))))

(assert (=> b!242926 (= res!119048 (contains!1746 lt!122033 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!242926 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))))))

(declare-fun b!242927 () Bool)

(assert (=> b!242927 (= e!157661 e!157664)))

(declare-fun c!40538 () Bool)

(assert (=> b!242927 (= c!40538 (not (= (bvand (extraKeys!4236 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!242928 () Bool)

(assert (=> b!242928 (= e!157667 (validKeyInArray!0 (select (arr!5716 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!242929 () Bool)

(assert (=> b!242929 (= e!157662 (= (apply!225 lt!122033 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4340 thiss!1504)))))

(assert (= (and d!59929 c!40541) b!242914))

(assert (= (and d!59929 (not c!40541)) b!242925))

(assert (= (and b!242925 c!40540) b!242918))

(assert (= (and b!242925 (not c!40540)) b!242909))

(assert (= (and b!242909 c!40539) b!242913))

(assert (= (and b!242909 (not c!40539)) b!242917))

(assert (= (or b!242913 b!242917) bm!22648))

(assert (= (or b!242918 bm!22648) bm!22643))

(assert (= (or b!242918 b!242913) bm!22646))

(assert (= (or b!242914 bm!22643) bm!22642))

(assert (= (or b!242914 bm!22646) bm!22644))

(assert (= (and d!59929 res!119053) b!242928))

(assert (= (and d!59929 c!40537) b!242911))

(assert (= (and d!59929 (not c!40537)) b!242916))

(assert (= (and d!59929 res!119046) b!242921))

(assert (= (and b!242921 res!119049) b!242920))

(assert (= (and b!242921 (not res!119047)) b!242926))

(assert (= (and b!242926 res!119048) b!242912))

(assert (= (and b!242921 res!119052) b!242919))

(assert (= (and b!242919 c!40536) b!242924))

(assert (= (and b!242919 (not c!40536)) b!242915))

(assert (= (and b!242924 res!119054) b!242910))

(assert (= (or b!242924 b!242915) bm!22645))

(assert (= (and b!242919 res!119051) b!242927))

(assert (= (and b!242927 c!40538) b!242922))

(assert (= (and b!242927 (not c!40538)) b!242923))

(assert (= (and b!242922 res!119050) b!242929))

(assert (= (or b!242922 b!242923) bm!22647))

(declare-fun b_lambda!8033 () Bool)

(assert (=> (not b_lambda!8033) (not b!242912)))

(declare-fun t!8674 () Bool)

(declare-fun tb!2971 () Bool)

(assert (=> (and b!242722 (= (defaultEntry!4499 thiss!1504) (defaultEntry!4499 thiss!1504)) t!8674) tb!2971))

(declare-fun result!5219 () Bool)

(assert (=> tb!2971 (= result!5219 tp_is_empty!6375)))

(assert (=> b!242912 t!8674))

(declare-fun b_and!13513 () Bool)

(assert (= b_and!13509 (and (=> t!8674 result!5219) b_and!13513)))

(assert (=> b!242920 m!261533))

(assert (=> b!242920 m!261533))

(declare-fun m!261551 () Bool)

(assert (=> b!242920 m!261551))

(declare-fun m!261553 () Bool)

(assert (=> b!242914 m!261553))

(declare-fun m!261555 () Bool)

(assert (=> bm!22647 m!261555))

(declare-fun m!261557 () Bool)

(assert (=> bm!22644 m!261557))

(assert (=> b!242928 m!261533))

(assert (=> b!242928 m!261533))

(assert (=> b!242928 m!261551))

(declare-fun m!261559 () Bool)

(assert (=> bm!22642 m!261559))

(declare-fun m!261561 () Bool)

(assert (=> b!242912 m!261561))

(assert (=> b!242912 m!261533))

(assert (=> b!242912 m!261561))

(declare-fun m!261563 () Bool)

(assert (=> b!242912 m!261563))

(declare-fun m!261565 () Bool)

(assert (=> b!242912 m!261565))

(assert (=> b!242912 m!261533))

(declare-fun m!261567 () Bool)

(assert (=> b!242912 m!261567))

(assert (=> b!242912 m!261563))

(declare-fun m!261569 () Bool)

(assert (=> b!242911 m!261569))

(declare-fun m!261571 () Bool)

(assert (=> b!242911 m!261571))

(declare-fun m!261573 () Bool)

(assert (=> b!242911 m!261573))

(declare-fun m!261575 () Bool)

(assert (=> b!242911 m!261575))

(declare-fun m!261577 () Bool)

(assert (=> b!242911 m!261577))

(declare-fun m!261579 () Bool)

(assert (=> b!242911 m!261579))

(declare-fun m!261581 () Bool)

(assert (=> b!242911 m!261581))

(declare-fun m!261583 () Bool)

(assert (=> b!242911 m!261583))

(declare-fun m!261585 () Bool)

(assert (=> b!242911 m!261585))

(declare-fun m!261587 () Bool)

(assert (=> b!242911 m!261587))

(declare-fun m!261589 () Bool)

(assert (=> b!242911 m!261589))

(assert (=> b!242911 m!261587))

(declare-fun m!261591 () Bool)

(assert (=> b!242911 m!261591))

(assert (=> b!242911 m!261581))

(declare-fun m!261593 () Bool)

(assert (=> b!242911 m!261593))

(assert (=> b!242911 m!261559))

(assert (=> b!242911 m!261533))

(declare-fun m!261595 () Bool)

(assert (=> b!242911 m!261595))

(assert (=> b!242911 m!261571))

(assert (=> b!242911 m!261591))

(declare-fun m!261597 () Bool)

(assert (=> b!242911 m!261597))

(assert (=> b!242926 m!261533))

(assert (=> b!242926 m!261533))

(declare-fun m!261599 () Bool)

(assert (=> b!242926 m!261599))

(declare-fun m!261601 () Bool)

(assert (=> bm!22645 m!261601))

(declare-fun m!261603 () Bool)

(assert (=> b!242910 m!261603))

(declare-fun m!261605 () Bool)

(assert (=> b!242929 m!261605))

(assert (=> d!59929 m!261525))

(assert (=> b!242734 d!59929))

(declare-fun d!59931 () Bool)

(declare-fun res!119059 () Bool)

(declare-fun e!157672 () Bool)

(assert (=> d!59931 (=> res!119059 e!157672)))

(assert (=> d!59931 (= res!119059 ((_ is Nil!3655) Nil!3655))))

(assert (=> d!59931 (= (noDuplicate!92 Nil!3655) e!157672)))

(declare-fun b!242936 () Bool)

(declare-fun e!157673 () Bool)

(assert (=> b!242936 (= e!157672 e!157673)))

(declare-fun res!119060 () Bool)

(assert (=> b!242936 (=> (not res!119060) (not e!157673))))

(assert (=> b!242936 (= res!119060 (not (contains!1745 (t!8669 Nil!3655) (h!4311 Nil!3655))))))

(declare-fun b!242937 () Bool)

(assert (=> b!242937 (= e!157673 (noDuplicate!92 (t!8669 Nil!3655)))))

(assert (= (and d!59931 (not res!119059)) b!242936))

(assert (= (and b!242936 res!119060) b!242937))

(declare-fun m!261607 () Bool)

(assert (=> b!242936 m!261607))

(declare-fun m!261609 () Bool)

(assert (=> b!242937 m!261609))

(assert (=> b!242716 d!59931))

(declare-fun d!59933 () Bool)

(declare-fun res!119067 () Bool)

(declare-fun e!157676 () Bool)

(assert (=> d!59933 (=> (not res!119067) (not e!157676))))

(declare-fun simpleValid!247 (LongMapFixedSize!3588) Bool)

(assert (=> d!59933 (= res!119067 (simpleValid!247 thiss!1504))))

(assert (=> d!59933 (= (valid!1399 thiss!1504) e!157676)))

(declare-fun b!242944 () Bool)

(declare-fun res!119068 () Bool)

(assert (=> b!242944 (=> (not res!119068) (not e!157676))))

(declare-fun arrayCountValidKeys!0 (array!12038 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!242944 (= res!119068 (= (arrayCountValidKeys!0 (_keys!6608 thiss!1504) #b00000000000000000000000000000000 (size!6058 (_keys!6608 thiss!1504))) (_size!1843 thiss!1504)))))

(declare-fun b!242945 () Bool)

(declare-fun res!119069 () Bool)

(assert (=> b!242945 (=> (not res!119069) (not e!157676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12038 (_ BitVec 32)) Bool)

(assert (=> b!242945 (= res!119069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)))))

(declare-fun b!242946 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12038 (_ BitVec 32) List!3658) Bool)

(assert (=> b!242946 (= e!157676 (arrayNoDuplicates!0 (_keys!6608 thiss!1504) #b00000000000000000000000000000000 Nil!3655))))

(assert (= (and d!59933 res!119067) b!242944))

(assert (= (and b!242944 res!119068) b!242945))

(assert (= (and b!242945 res!119069) b!242946))

(declare-fun m!261611 () Bool)

(assert (=> d!59933 m!261611))

(declare-fun m!261613 () Bool)

(assert (=> b!242944 m!261613))

(declare-fun m!261615 () Bool)

(assert (=> b!242945 m!261615))

(declare-fun m!261617 () Bool)

(assert (=> b!242946 m!261617))

(assert (=> start!23160 d!59933))

(declare-fun d!59935 () Bool)

(assert (=> d!59935 (contains!1746 (getCurrentListMap!1380 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)) key!932)))

(declare-fun lt!122053 () Unit!7484)

(declare-fun choose!1140 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 64) (_ BitVec 32) Int) Unit!7484)

(assert (=> d!59935 (= lt!122053 (choose!1140 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)))))

(assert (=> d!59935 (validMask!0 (mask!10584 thiss!1504))))

(assert (=> d!59935 (= (lemmaArrayContainsKeyThenInListMap!161 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4499 thiss!1504)) lt!122053)))

(declare-fun bs!8866 () Bool)

(assert (= bs!8866 d!59935))

(assert (=> bs!8866 m!261455))

(assert (=> bs!8866 m!261455))

(assert (=> bs!8866 m!261457))

(declare-fun m!261619 () Bool)

(assert (=> bs!8866 m!261619))

(assert (=> bs!8866 m!261525))

(assert (=> b!242735 d!59935))

(declare-fun d!59937 () Bool)

(declare-fun lt!122054 () Bool)

(assert (=> d!59937 (= lt!122054 (select (content!158 Nil!3655) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157677 () Bool)

(assert (=> d!59937 (= lt!122054 e!157677)))

(declare-fun res!119071 () Bool)

(assert (=> d!59937 (=> (not res!119071) (not e!157677))))

(assert (=> d!59937 (= res!119071 ((_ is Cons!3654) Nil!3655))))

(assert (=> d!59937 (= (contains!1745 Nil!3655 #b0000000000000000000000000000000000000000000000000000000000000000) lt!122054)))

(declare-fun b!242947 () Bool)

(declare-fun e!157678 () Bool)

(assert (=> b!242947 (= e!157677 e!157678)))

(declare-fun res!119070 () Bool)

(assert (=> b!242947 (=> res!119070 e!157678)))

(assert (=> b!242947 (= res!119070 (= (h!4311 Nil!3655) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242948 () Bool)

(assert (=> b!242948 (= e!157678 (contains!1745 (t!8669 Nil!3655) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59937 res!119071) b!242947))

(assert (= (and b!242947 (not res!119070)) b!242948))

(assert (=> d!59937 m!261537))

(declare-fun m!261621 () Bool)

(assert (=> d!59937 m!261621))

(declare-fun m!261623 () Bool)

(assert (=> b!242948 m!261623))

(assert (=> b!242723 d!59937))

(assert (=> bm!22620 d!59921))

(declare-fun d!59939 () Bool)

(declare-fun lt!122055 () Bool)

(assert (=> d!59939 (= lt!122055 (select (content!158 Nil!3655) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157679 () Bool)

(assert (=> d!59939 (= lt!122055 e!157679)))

(declare-fun res!119073 () Bool)

(assert (=> d!59939 (=> (not res!119073) (not e!157679))))

(assert (=> d!59939 (= res!119073 ((_ is Cons!3654) Nil!3655))))

(assert (=> d!59939 (= (contains!1745 Nil!3655 #b1000000000000000000000000000000000000000000000000000000000000000) lt!122055)))

(declare-fun b!242949 () Bool)

(declare-fun e!157680 () Bool)

(assert (=> b!242949 (= e!157679 e!157680)))

(declare-fun res!119072 () Bool)

(assert (=> b!242949 (=> res!119072 e!157680)))

(assert (=> b!242949 (= res!119072 (= (h!4311 Nil!3655) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242950 () Bool)

(assert (=> b!242950 (= e!157680 (contains!1745 (t!8669 Nil!3655) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59939 res!119073) b!242949))

(assert (= (and b!242949 (not res!119072)) b!242950))

(assert (=> d!59939 m!261537))

(declare-fun m!261625 () Bool)

(assert (=> d!59939 m!261625))

(declare-fun m!261627 () Bool)

(assert (=> b!242950 m!261627))

(assert (=> b!242714 d!59939))

(declare-fun bm!22653 () Bool)

(declare-fun call!22657 () Bool)

(assert (=> bm!22653 (= call!22657 (arrayContainsKey!0 (_keys!6608 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun lt!122060 () SeekEntryResult!1077)

(declare-fun c!40546 () Bool)

(declare-fun call!22656 () Bool)

(declare-fun bm!22654 () Bool)

(assert (=> bm!22654 (= call!22656 (inRange!0 (ite c!40546 (index!6478 lt!122060) (index!6481 lt!122060)) (mask!10584 thiss!1504)))))

(declare-fun b!242968 () Bool)

(declare-fun e!157692 () Bool)

(assert (=> b!242968 (= e!157692 ((_ is Undefined!1077) lt!122060))))

(declare-fun b!242969 () Bool)

(declare-fun e!157690 () Bool)

(assert (=> b!242969 (= e!157690 (not call!22657))))

(declare-fun b!242970 () Bool)

(declare-fun e!157689 () Bool)

(declare-fun e!157691 () Bool)

(assert (=> b!242970 (= e!157689 e!157691)))

(declare-fun res!119085 () Bool)

(assert (=> b!242970 (= res!119085 call!22656)))

(assert (=> b!242970 (=> (not res!119085) (not e!157691))))

(declare-fun b!242971 () Bool)

(assert (=> b!242971 (= e!157691 (not call!22657))))

(declare-fun b!242972 () Bool)

(declare-fun res!119083 () Bool)

(assert (=> b!242972 (=> (not res!119083) (not e!157690))))

(assert (=> b!242972 (= res!119083 call!22656)))

(assert (=> b!242972 (= e!157692 e!157690)))

(declare-fun b!242967 () Bool)

(assert (=> b!242967 (and (bvsge (index!6478 lt!122060) #b00000000000000000000000000000000) (bvslt (index!6478 lt!122060) (size!6058 (_keys!6608 thiss!1504))))))

(declare-fun res!119082 () Bool)

(assert (=> b!242967 (= res!119082 (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6478 lt!122060)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242967 (=> (not res!119082) (not e!157691))))

(declare-fun d!59941 () Bool)

(assert (=> d!59941 e!157689))

(assert (=> d!59941 (= c!40546 ((_ is MissingZero!1077) lt!122060))))

(assert (=> d!59941 (= lt!122060 (seekEntryOrOpen!0 key!932 (_keys!6608 thiss!1504) (mask!10584 thiss!1504)))))

(declare-fun lt!122061 () Unit!7484)

(declare-fun choose!1141 (array!12038 array!12036 (_ BitVec 32) (_ BitVec 32) V!8147 V!8147 (_ BitVec 64) Int) Unit!7484)

(assert (=> d!59941 (= lt!122061 (choose!1141 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 (defaultEntry!4499 thiss!1504)))))

(assert (=> d!59941 (validMask!0 (mask!10584 thiss!1504))))

(assert (=> d!59941 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!364 (_keys!6608 thiss!1504) (_values!4482 thiss!1504) (mask!10584 thiss!1504) (extraKeys!4236 thiss!1504) (zeroValue!4340 thiss!1504) (minValue!4340 thiss!1504) key!932 (defaultEntry!4499 thiss!1504)) lt!122061)))

(declare-fun b!242973 () Bool)

(declare-fun res!119084 () Bool)

(assert (=> b!242973 (=> (not res!119084) (not e!157690))))

(assert (=> b!242973 (= res!119084 (= (select (arr!5716 (_keys!6608 thiss!1504)) (index!6481 lt!122060)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242973 (and (bvsge (index!6481 lt!122060) #b00000000000000000000000000000000) (bvslt (index!6481 lt!122060) (size!6058 (_keys!6608 thiss!1504))))))

(declare-fun b!242974 () Bool)

(assert (=> b!242974 (= e!157689 e!157692)))

(declare-fun c!40547 () Bool)

(assert (=> b!242974 (= c!40547 ((_ is MissingVacant!1077) lt!122060))))

(assert (= (and d!59941 c!40546) b!242970))

(assert (= (and d!59941 (not c!40546)) b!242974))

(assert (= (and b!242970 res!119085) b!242967))

(assert (= (and b!242967 res!119082) b!242971))

(assert (= (and b!242974 c!40547) b!242972))

(assert (= (and b!242974 (not c!40547)) b!242968))

(assert (= (and b!242972 res!119083) b!242973))

(assert (= (and b!242973 res!119084) b!242969))

(assert (= (or b!242970 b!242972) bm!22654))

(assert (= (or b!242971 b!242969) bm!22653))

(declare-fun m!261629 () Bool)

(assert (=> b!242967 m!261629))

(declare-fun m!261631 () Bool)

(assert (=> b!242973 m!261631))

(declare-fun m!261633 () Bool)

(assert (=> bm!22654 m!261633))

(assert (=> bm!22653 m!261443))

(assert (=> d!59941 m!261435))

(declare-fun m!261635 () Bool)

(assert (=> d!59941 m!261635))

(assert (=> d!59941 m!261525))

(assert (=> b!242730 d!59941))

(declare-fun d!59943 () Bool)

(assert (=> d!59943 (= (array_inv!3773 (_keys!6608 thiss!1504)) (bvsge (size!6058 (_keys!6608 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242722 d!59943))

(declare-fun d!59945 () Bool)

(assert (=> d!59945 (= (array_inv!3774 (_values!4482 thiss!1504)) (bvsge (size!6057 (_values!4482 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242722 d!59945))

(assert (=> b!242740 d!59923))

(declare-fun condMapEmpty!10813 () Bool)

(declare-fun mapDefault!10813 () ValueCell!2844)

(assert (=> mapNonEmpty!10807 (= condMapEmpty!10813 (= mapRest!10807 ((as const (Array (_ BitVec 32) ValueCell!2844)) mapDefault!10813)))))

(declare-fun e!157698 () Bool)

(declare-fun mapRes!10813 () Bool)

(assert (=> mapNonEmpty!10807 (= tp!22756 (and e!157698 mapRes!10813))))

(declare-fun b!242981 () Bool)

(declare-fun e!157697 () Bool)

(assert (=> b!242981 (= e!157697 tp_is_empty!6375)))

(declare-fun mapIsEmpty!10813 () Bool)

(assert (=> mapIsEmpty!10813 mapRes!10813))

(declare-fun b!242982 () Bool)

(assert (=> b!242982 (= e!157698 tp_is_empty!6375)))

(declare-fun mapNonEmpty!10813 () Bool)

(declare-fun tp!22765 () Bool)

(assert (=> mapNonEmpty!10813 (= mapRes!10813 (and tp!22765 e!157697))))

(declare-fun mapValue!10813 () ValueCell!2844)

(declare-fun mapRest!10813 () (Array (_ BitVec 32) ValueCell!2844))

(declare-fun mapKey!10813 () (_ BitVec 32))

(assert (=> mapNonEmpty!10813 (= mapRest!10807 (store mapRest!10813 mapKey!10813 mapValue!10813))))

(assert (= (and mapNonEmpty!10807 condMapEmpty!10813) mapIsEmpty!10813))

(assert (= (and mapNonEmpty!10807 (not condMapEmpty!10813)) mapNonEmpty!10813))

(assert (= (and mapNonEmpty!10813 ((_ is ValueCellFull!2844) mapValue!10813)) b!242981))

(assert (= (and mapNonEmpty!10807 ((_ is ValueCellFull!2844) mapDefault!10813)) b!242982))

(declare-fun m!261637 () Bool)

(assert (=> mapNonEmpty!10813 m!261637))

(declare-fun b_lambda!8035 () Bool)

(assert (= b_lambda!8033 (or (and b!242722 b_free!6513) b_lambda!8035)))

(check-sat (not d!59917) (not bm!22654) (not b!242926) (not b!242866) (not d!59941) (not b!242844) (not b!242857) (not b!242864) b_and!13513 (not d!59929) (not b!242950) (not d!59939) (not d!59915) (not b!242928) (not b!242851) (not b!242837) (not b_next!6513) (not b_lambda!8035) tp_is_empty!6375 (not b!242914) (not d!59933) (not b!242945) (not bm!22644) (not bm!22653) (not b!242910) (not d!59937) (not b!242946) (not bm!22647) (not b!242948) (not d!59923) (not b!242936) (not d!59927) (not bm!22645) (not b!242920) (not b!242929) (not b!242911) (not bm!22642) (not b!242944) (not b!242912) (not b!242937) (not mapNonEmpty!10813) (not d!59935))
(check-sat b_and!13513 (not b_next!6513))

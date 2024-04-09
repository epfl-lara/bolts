; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23098 () Bool)

(assert start!23098)

(declare-fun b!241983 () Bool)

(declare-fun b_free!6501 () Bool)

(declare-fun b_next!6501 () Bool)

(assert (=> b!241983 (= b_free!6501 (not b_next!6501))))

(declare-fun tp!22714 () Bool)

(declare-fun b_and!13493 () Bool)

(assert (=> b!241983 (= tp!22714 b_and!13493)))

(declare-fun b!241978 () Bool)

(declare-fun e!157060 () Bool)

(declare-fun e!157056 () Bool)

(assert (=> b!241978 (= e!157060 e!157056)))

(declare-fun res!118595 () Bool)

(assert (=> b!241978 (=> (not res!118595) (not e!157056))))

(declare-datatypes ((V!8131 0))(
  ( (V!8132 (val!3226 Int)) )
))
(declare-datatypes ((ValueCell!2838 0))(
  ( (ValueCellFull!2838 (v!5262 V!8131)) (EmptyCell!2838) )
))
(declare-datatypes ((array!12008 0))(
  ( (array!12009 (arr!5703 (Array (_ BitVec 32) ValueCell!2838)) (size!6045 (_ BitVec 32))) )
))
(declare-datatypes ((array!12010 0))(
  ( (array!12011 (arr!5704 (Array (_ BitVec 32) (_ BitVec 64))) (size!6046 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3576 0))(
  ( (LongMapFixedSize!3577 (defaultEntry!4485 Int) (mask!10562 (_ BitVec 32)) (extraKeys!4222 (_ BitVec 32)) (zeroValue!4326 V!8131) (minValue!4326 V!8131) (_size!1837 (_ BitVec 32)) (_keys!6592 array!12010) (_values!4468 array!12008) (_vacant!1837 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3576)

(assert (=> b!241978 (= res!118595 (and (bvslt (size!6046 (_keys!6592 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504)))))))

(declare-datatypes ((Unit!7457 0))(
  ( (Unit!7458) )
))
(declare-fun lt!121615 () Unit!7457)

(declare-fun e!157059 () Unit!7457)

(assert (=> b!241978 (= lt!121615 e!157059)))

(declare-fun c!40354 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!241978 (= c!40354 (arrayContainsKey!0 (_keys!6592 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241979 () Bool)

(declare-fun e!157062 () Unit!7457)

(declare-fun Unit!7459 () Unit!7457)

(assert (=> b!241979 (= e!157062 Unit!7459)))

(declare-fun lt!121616 () Unit!7457)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!354 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 64) Int) Unit!7457)

(assert (=> b!241979 (= lt!121616 (lemmaInListMapThenSeekEntryOrOpenFindsIt!354 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 (defaultEntry!4485 thiss!1504)))))

(assert (=> b!241979 false))

(declare-fun mapIsEmpty!10783 () Bool)

(declare-fun mapRes!10783 () Bool)

(assert (=> mapIsEmpty!10783 mapRes!10783))

(declare-fun mapNonEmpty!10783 () Bool)

(declare-fun tp!22713 () Bool)

(declare-fun e!157065 () Bool)

(assert (=> mapNonEmpty!10783 (= mapRes!10783 (and tp!22713 e!157065))))

(declare-fun mapValue!10783 () ValueCell!2838)

(declare-fun mapKey!10783 () (_ BitVec 32))

(declare-fun mapRest!10783 () (Array (_ BitVec 32) ValueCell!2838))

(assert (=> mapNonEmpty!10783 (= (arr!5703 (_values!4468 thiss!1504)) (store mapRest!10783 mapKey!10783 mapValue!10783))))

(declare-fun b!241980 () Bool)

(declare-fun res!118592 () Bool)

(declare-fun e!157068 () Bool)

(assert (=> b!241980 (=> (not res!118592) (not e!157068))))

(assert (=> b!241980 (= res!118592 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!241981 () Bool)

(declare-fun e!157055 () Bool)

(declare-datatypes ((SeekEntryResult!1072 0))(
  ( (MissingZero!1072 (index!6458 (_ BitVec 32))) (Found!1072 (index!6459 (_ BitVec 32))) (Intermediate!1072 (undefined!1884 Bool) (index!6460 (_ BitVec 32)) (x!24260 (_ BitVec 32))) (Undefined!1072) (MissingVacant!1072 (index!6461 (_ BitVec 32))) )
))
(declare-fun lt!121618 () SeekEntryResult!1072)

(get-info :version)

(assert (=> b!241981 (= e!157055 ((_ is Undefined!1072) lt!121618))))

(declare-fun b!241982 () Bool)

(declare-fun e!157064 () Bool)

(declare-fun call!22534 () Bool)

(assert (=> b!241982 (= e!157064 (not call!22534))))

(declare-fun tp_is_empty!6363 () Bool)

(declare-fun e!157061 () Bool)

(declare-fun e!157067 () Bool)

(declare-fun array_inv!3765 (array!12010) Bool)

(declare-fun array_inv!3766 (array!12008) Bool)

(assert (=> b!241983 (= e!157061 (and tp!22714 tp_is_empty!6363 (array_inv!3765 (_keys!6592 thiss!1504)) (array_inv!3766 (_values!4468 thiss!1504)) e!157067))))

(declare-fun b!241984 () Bool)

(declare-fun c!40353 () Bool)

(assert (=> b!241984 (= c!40353 ((_ is MissingVacant!1072) lt!121618))))

(declare-fun e!157058 () Bool)

(assert (=> b!241984 (= e!157058 e!157055)))

(declare-fun b!241985 () Bool)

(declare-fun e!157066 () Bool)

(assert (=> b!241985 (= e!157066 tp_is_empty!6363)))

(declare-fun b!241986 () Bool)

(declare-fun Unit!7460 () Unit!7457)

(assert (=> b!241986 (= e!157059 Unit!7460)))

(declare-fun b!241987 () Bool)

(declare-fun Unit!7461 () Unit!7457)

(assert (=> b!241987 (= e!157059 Unit!7461)))

(declare-fun lt!121619 () Unit!7457)

(declare-fun lemmaArrayContainsKeyThenInListMap!156 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 64) (_ BitVec 32) Int) Unit!7457)

(assert (=> b!241987 (= lt!121619 (lemmaArrayContainsKeyThenInListMap!156 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(assert (=> b!241987 false))

(declare-fun b!241988 () Bool)

(declare-fun res!118594 () Bool)

(assert (=> b!241988 (=> (not res!118594) (not e!157064))))

(assert (=> b!241988 (= res!118594 (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6458 lt!121618)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241989 () Bool)

(declare-fun e!157057 () Bool)

(assert (=> b!241989 (= e!157057 e!157060)))

(declare-fun res!118596 () Bool)

(assert (=> b!241989 (=> (not res!118596) (not e!157060))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!241989 (= res!118596 (inRange!0 index!297 (mask!10562 thiss!1504)))))

(declare-fun lt!121617 () Unit!7457)

(assert (=> b!241989 (= lt!121617 e!157062)))

(declare-fun c!40352 () Bool)

(declare-datatypes ((tuple2!4748 0))(
  ( (tuple2!4749 (_1!2384 (_ BitVec 64)) (_2!2384 V!8131)) )
))
(declare-datatypes ((List!3650 0))(
  ( (Nil!3647) (Cons!3646 (h!4303 tuple2!4748) (t!8657 List!3650)) )
))
(declare-datatypes ((ListLongMap!3675 0))(
  ( (ListLongMap!3676 (toList!1853 List!3650)) )
))
(declare-fun contains!1737 (ListLongMap!3675 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1376 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 32) Int) ListLongMap!3675)

(assert (=> b!241989 (= c!40352 (contains!1737 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)) key!932))))

(declare-fun b!241990 () Bool)

(declare-fun e!157054 () Bool)

(assert (=> b!241990 (= e!157055 e!157054)))

(declare-fun res!118593 () Bool)

(declare-fun call!22533 () Bool)

(assert (=> b!241990 (= res!118593 call!22533)))

(assert (=> b!241990 (=> (not res!118593) (not e!157054))))

(declare-fun res!118599 () Bool)

(assert (=> start!23098 (=> (not res!118599) (not e!157068))))

(declare-fun valid!1396 (LongMapFixedSize!3576) Bool)

(assert (=> start!23098 (= res!118599 (valid!1396 thiss!1504))))

(assert (=> start!23098 e!157068))

(assert (=> start!23098 e!157061))

(assert (=> start!23098 true))

(declare-fun b!241991 () Bool)

(declare-fun lt!121620 () Unit!7457)

(assert (=> b!241991 (= e!157062 lt!121620)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!360 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 64) Int) Unit!7457)

(assert (=> b!241991 (= lt!121620 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!360 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 (defaultEntry!4485 thiss!1504)))))

(declare-fun c!40355 () Bool)

(assert (=> b!241991 (= c!40355 ((_ is MissingZero!1072) lt!121618))))

(assert (=> b!241991 e!157058))

(declare-fun b!241992 () Bool)

(assert (=> b!241992 (= e!157065 tp_is_empty!6363)))

(declare-fun b!241993 () Bool)

(declare-fun res!118591 () Bool)

(assert (=> b!241993 (= res!118591 (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6461 lt!121618)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241993 (=> (not res!118591) (not e!157054))))

(declare-fun b!241994 () Bool)

(declare-fun res!118597 () Bool)

(assert (=> b!241994 (=> (not res!118597) (not e!157064))))

(assert (=> b!241994 (= res!118597 call!22533)))

(assert (=> b!241994 (= e!157058 e!157064)))

(declare-fun b!241995 () Bool)

(assert (=> b!241995 (= e!157068 e!157057)))

(declare-fun res!118598 () Bool)

(assert (=> b!241995 (=> (not res!118598) (not e!157057))))

(assert (=> b!241995 (= res!118598 (or (= lt!121618 (MissingZero!1072 index!297)) (= lt!121618 (MissingVacant!1072 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12010 (_ BitVec 32)) SeekEntryResult!1072)

(assert (=> b!241995 (= lt!121618 (seekEntryOrOpen!0 key!932 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)))))

(declare-fun b!241996 () Bool)

(declare-datatypes ((List!3651 0))(
  ( (Nil!3648) (Cons!3647 (h!4304 (_ BitVec 64)) (t!8658 List!3651)) )
))
(declare-fun noDuplicate!88 (List!3651) Bool)

(assert (=> b!241996 (= e!157056 (not (noDuplicate!88 Nil!3648)))))

(declare-fun bm!22530 () Bool)

(assert (=> bm!22530 (= call!22534 (arrayContainsKey!0 (_keys!6592 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241997 () Bool)

(assert (=> b!241997 (= e!157054 (not call!22534))))

(declare-fun b!241998 () Bool)

(assert (=> b!241998 (= e!157067 (and e!157066 mapRes!10783))))

(declare-fun condMapEmpty!10783 () Bool)

(declare-fun mapDefault!10783 () ValueCell!2838)

(assert (=> b!241998 (= condMapEmpty!10783 (= (arr!5703 (_values!4468 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2838)) mapDefault!10783)))))

(declare-fun bm!22531 () Bool)

(assert (=> bm!22531 (= call!22533 (inRange!0 (ite c!40355 (index!6458 lt!121618) (index!6461 lt!121618)) (mask!10562 thiss!1504)))))

(assert (= (and start!23098 res!118599) b!241980))

(assert (= (and b!241980 res!118592) b!241995))

(assert (= (and b!241995 res!118598) b!241989))

(assert (= (and b!241989 c!40352) b!241979))

(assert (= (and b!241989 (not c!40352)) b!241991))

(assert (= (and b!241991 c!40355) b!241994))

(assert (= (and b!241991 (not c!40355)) b!241984))

(assert (= (and b!241994 res!118597) b!241988))

(assert (= (and b!241988 res!118594) b!241982))

(assert (= (and b!241984 c!40353) b!241990))

(assert (= (and b!241984 (not c!40353)) b!241981))

(assert (= (and b!241990 res!118593) b!241993))

(assert (= (and b!241993 res!118591) b!241997))

(assert (= (or b!241994 b!241990) bm!22531))

(assert (= (or b!241982 b!241997) bm!22530))

(assert (= (and b!241989 res!118596) b!241978))

(assert (= (and b!241978 c!40354) b!241987))

(assert (= (and b!241978 (not c!40354)) b!241986))

(assert (= (and b!241978 res!118595) b!241996))

(assert (= (and b!241998 condMapEmpty!10783) mapIsEmpty!10783))

(assert (= (and b!241998 (not condMapEmpty!10783)) mapNonEmpty!10783))

(assert (= (and mapNonEmpty!10783 ((_ is ValueCellFull!2838) mapValue!10783)) b!241992))

(assert (= (and b!241998 ((_ is ValueCellFull!2838) mapDefault!10783)) b!241985))

(assert (= b!241983 b!241998))

(assert (= start!23098 b!241983))

(declare-fun m!260987 () Bool)

(assert (=> b!241993 m!260987))

(declare-fun m!260989 () Bool)

(assert (=> b!241979 m!260989))

(declare-fun m!260991 () Bool)

(assert (=> b!241988 m!260991))

(declare-fun m!260993 () Bool)

(assert (=> b!241989 m!260993))

(declare-fun m!260995 () Bool)

(assert (=> b!241989 m!260995))

(assert (=> b!241989 m!260995))

(declare-fun m!260997 () Bool)

(assert (=> b!241989 m!260997))

(declare-fun m!260999 () Bool)

(assert (=> b!241991 m!260999))

(declare-fun m!261001 () Bool)

(assert (=> bm!22530 m!261001))

(declare-fun m!261003 () Bool)

(assert (=> b!241996 m!261003))

(declare-fun m!261005 () Bool)

(assert (=> start!23098 m!261005))

(declare-fun m!261007 () Bool)

(assert (=> b!241995 m!261007))

(declare-fun m!261009 () Bool)

(assert (=> bm!22531 m!261009))

(assert (=> b!241978 m!261001))

(declare-fun m!261011 () Bool)

(assert (=> b!241987 m!261011))

(declare-fun m!261013 () Bool)

(assert (=> mapNonEmpty!10783 m!261013))

(declare-fun m!261015 () Bool)

(assert (=> b!241983 m!261015))

(declare-fun m!261017 () Bool)

(assert (=> b!241983 m!261017))

(check-sat (not b!241979) (not b!241989) (not bm!22531) (not mapNonEmpty!10783) (not start!23098) (not b!241991) (not b!241978) (not b_next!6501) (not b!241995) (not b!241983) b_and!13493 (not b!241987) tp_is_empty!6363 (not bm!22530) (not b!241996))
(check-sat b_and!13493 (not b_next!6501))
(get-model)

(declare-fun d!59855 () Bool)

(declare-fun res!118631 () Bool)

(declare-fun e!157118 () Bool)

(assert (=> d!59855 (=> res!118631 e!157118)))

(assert (=> d!59855 (= res!118631 (= (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59855 (= (arrayContainsKey!0 (_keys!6592 thiss!1504) key!932 #b00000000000000000000000000000000) e!157118)))

(declare-fun b!242066 () Bool)

(declare-fun e!157119 () Bool)

(assert (=> b!242066 (= e!157118 e!157119)))

(declare-fun res!118632 () Bool)

(assert (=> b!242066 (=> (not res!118632) (not e!157119))))

(assert (=> b!242066 (= res!118632 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6046 (_keys!6592 thiss!1504))))))

(declare-fun b!242067 () Bool)

(assert (=> b!242067 (= e!157119 (arrayContainsKey!0 (_keys!6592 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59855 (not res!118631)) b!242066))

(assert (= (and b!242066 res!118632) b!242067))

(declare-fun m!261051 () Bool)

(assert (=> d!59855 m!261051))

(declare-fun m!261053 () Bool)

(assert (=> b!242067 m!261053))

(assert (=> bm!22530 d!59855))

(assert (=> b!241978 d!59855))

(declare-fun d!59857 () Bool)

(assert (=> d!59857 (contains!1737 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)) key!932)))

(declare-fun lt!121641 () Unit!7457)

(declare-fun choose!1133 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 64) (_ BitVec 32) Int) Unit!7457)

(assert (=> d!59857 (= lt!121641 (choose!1133 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59857 (validMask!0 (mask!10562 thiss!1504))))

(assert (=> d!59857 (= (lemmaArrayContainsKeyThenInListMap!156 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)) lt!121641)))

(declare-fun bs!8858 () Bool)

(assert (= bs!8858 d!59857))

(assert (=> bs!8858 m!260995))

(assert (=> bs!8858 m!260995))

(assert (=> bs!8858 m!260997))

(declare-fun m!261055 () Bool)

(assert (=> bs!8858 m!261055))

(declare-fun m!261057 () Bool)

(assert (=> bs!8858 m!261057))

(assert (=> b!241987 d!59857))

(declare-fun d!59859 () Bool)

(declare-fun e!157122 () Bool)

(assert (=> d!59859 e!157122))

(declare-fun res!118638 () Bool)

(assert (=> d!59859 (=> (not res!118638) (not e!157122))))

(declare-fun lt!121646 () SeekEntryResult!1072)

(assert (=> d!59859 (= res!118638 ((_ is Found!1072) lt!121646))))

(assert (=> d!59859 (= lt!121646 (seekEntryOrOpen!0 key!932 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)))))

(declare-fun lt!121647 () Unit!7457)

(declare-fun choose!1134 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 64) Int) Unit!7457)

(assert (=> d!59859 (= lt!121647 (choose!1134 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 (defaultEntry!4485 thiss!1504)))))

(assert (=> d!59859 (validMask!0 (mask!10562 thiss!1504))))

(assert (=> d!59859 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!354 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 (defaultEntry!4485 thiss!1504)) lt!121647)))

(declare-fun b!242072 () Bool)

(declare-fun res!118637 () Bool)

(assert (=> b!242072 (=> (not res!118637) (not e!157122))))

(assert (=> b!242072 (= res!118637 (inRange!0 (index!6459 lt!121646) (mask!10562 thiss!1504)))))

(declare-fun b!242073 () Bool)

(assert (=> b!242073 (= e!157122 (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6459 lt!121646)) key!932))))

(assert (=> b!242073 (and (bvsge (index!6459 lt!121646) #b00000000000000000000000000000000) (bvslt (index!6459 lt!121646) (size!6046 (_keys!6592 thiss!1504))))))

(assert (= (and d!59859 res!118638) b!242072))

(assert (= (and b!242072 res!118637) b!242073))

(assert (=> d!59859 m!261007))

(declare-fun m!261059 () Bool)

(assert (=> d!59859 m!261059))

(assert (=> d!59859 m!261057))

(declare-fun m!261061 () Bool)

(assert (=> b!242072 m!261061))

(declare-fun m!261063 () Bool)

(assert (=> b!242073 m!261063))

(assert (=> b!241979 d!59859))

(declare-fun d!59861 () Bool)

(assert (=> d!59861 (= (array_inv!3765 (_keys!6592 thiss!1504)) (bvsge (size!6046 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241983 d!59861))

(declare-fun d!59863 () Bool)

(assert (=> d!59863 (= (array_inv!3766 (_values!4468 thiss!1504)) (bvsge (size!6045 (_values!4468 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241983 d!59863))

(declare-fun d!59865 () Bool)

(declare-fun res!118645 () Bool)

(declare-fun e!157125 () Bool)

(assert (=> d!59865 (=> (not res!118645) (not e!157125))))

(declare-fun simpleValid!245 (LongMapFixedSize!3576) Bool)

(assert (=> d!59865 (= res!118645 (simpleValid!245 thiss!1504))))

(assert (=> d!59865 (= (valid!1396 thiss!1504) e!157125)))

(declare-fun b!242080 () Bool)

(declare-fun res!118646 () Bool)

(assert (=> b!242080 (=> (not res!118646) (not e!157125))))

(declare-fun arrayCountValidKeys!0 (array!12010 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!242080 (= res!118646 (= (arrayCountValidKeys!0 (_keys!6592 thiss!1504) #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))) (_size!1837 thiss!1504)))))

(declare-fun b!242081 () Bool)

(declare-fun res!118647 () Bool)

(assert (=> b!242081 (=> (not res!118647) (not e!157125))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12010 (_ BitVec 32)) Bool)

(assert (=> b!242081 (= res!118647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)))))

(declare-fun b!242082 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12010 (_ BitVec 32) List!3651) Bool)

(assert (=> b!242082 (= e!157125 (arrayNoDuplicates!0 (_keys!6592 thiss!1504) #b00000000000000000000000000000000 Nil!3648))))

(assert (= (and d!59865 res!118645) b!242080))

(assert (= (and b!242080 res!118646) b!242081))

(assert (= (and b!242081 res!118647) b!242082))

(declare-fun m!261065 () Bool)

(assert (=> d!59865 m!261065))

(declare-fun m!261067 () Bool)

(assert (=> b!242080 m!261067))

(declare-fun m!261069 () Bool)

(assert (=> b!242081 m!261069))

(declare-fun m!261071 () Bool)

(assert (=> b!242082 m!261071))

(assert (=> start!23098 d!59865))

(declare-fun d!59867 () Bool)

(assert (=> d!59867 (= (inRange!0 index!297 (mask!10562 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10562 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!241989 d!59867))

(declare-fun d!59869 () Bool)

(declare-fun e!157130 () Bool)

(assert (=> d!59869 e!157130))

(declare-fun res!118650 () Bool)

(assert (=> d!59869 (=> res!118650 e!157130)))

(declare-fun lt!121657 () Bool)

(assert (=> d!59869 (= res!118650 (not lt!121657))))

(declare-fun lt!121659 () Bool)

(assert (=> d!59869 (= lt!121657 lt!121659)))

(declare-fun lt!121656 () Unit!7457)

(declare-fun e!157131 () Unit!7457)

(assert (=> d!59869 (= lt!121656 e!157131)))

(declare-fun c!40370 () Bool)

(assert (=> d!59869 (= c!40370 lt!121659)))

(declare-fun containsKey!272 (List!3650 (_ BitVec 64)) Bool)

(assert (=> d!59869 (= lt!121659 (containsKey!272 (toList!1853 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504))) key!932))))

(assert (=> d!59869 (= (contains!1737 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)) key!932) lt!121657)))

(declare-fun b!242089 () Bool)

(declare-fun lt!121658 () Unit!7457)

(assert (=> b!242089 (= e!157131 lt!121658)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!221 (List!3650 (_ BitVec 64)) Unit!7457)

(assert (=> b!242089 (= lt!121658 (lemmaContainsKeyImpliesGetValueByKeyDefined!221 (toList!1853 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504))) key!932))))

(declare-datatypes ((Option!286 0))(
  ( (Some!285 (v!5264 V!8131)) (None!284) )
))
(declare-fun isDefined!222 (Option!286) Bool)

(declare-fun getValueByKey!280 (List!3650 (_ BitVec 64)) Option!286)

(assert (=> b!242089 (isDefined!222 (getValueByKey!280 (toList!1853 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504))) key!932))))

(declare-fun b!242090 () Bool)

(declare-fun Unit!7466 () Unit!7457)

(assert (=> b!242090 (= e!157131 Unit!7466)))

(declare-fun b!242091 () Bool)

(assert (=> b!242091 (= e!157130 (isDefined!222 (getValueByKey!280 (toList!1853 (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504))) key!932)))))

(assert (= (and d!59869 c!40370) b!242089))

(assert (= (and d!59869 (not c!40370)) b!242090))

(assert (= (and d!59869 (not res!118650)) b!242091))

(declare-fun m!261073 () Bool)

(assert (=> d!59869 m!261073))

(declare-fun m!261075 () Bool)

(assert (=> b!242089 m!261075))

(declare-fun m!261077 () Bool)

(assert (=> b!242089 m!261077))

(assert (=> b!242089 m!261077))

(declare-fun m!261079 () Bool)

(assert (=> b!242089 m!261079))

(assert (=> b!242091 m!261077))

(assert (=> b!242091 m!261077))

(assert (=> b!242091 m!261079))

(assert (=> b!241989 d!59869))

(declare-fun b!242134 () Bool)

(declare-fun e!157159 () Bool)

(declare-fun call!22560 () Bool)

(assert (=> b!242134 (= e!157159 (not call!22560))))

(declare-fun b!242135 () Bool)

(declare-fun c!40385 () Bool)

(assert (=> b!242135 (= c!40385 (and (not (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!157160 () ListLongMap!3675)

(declare-fun e!157164 () ListLongMap!3675)

(assert (=> b!242135 (= e!157160 e!157164)))

(declare-fun bm!22552 () Bool)

(declare-fun call!22557 () Bool)

(declare-fun lt!121708 () ListLongMap!3675)

(assert (=> bm!22552 (= call!22557 (contains!1737 lt!121708 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242137 () Bool)

(declare-fun e!157166 () Unit!7457)

(declare-fun lt!121704 () Unit!7457)

(assert (=> b!242137 (= e!157166 lt!121704)))

(declare-fun lt!121716 () ListLongMap!3675)

(declare-fun getCurrentListMapNoExtraKeys!542 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 32) Int) ListLongMap!3675)

(assert (=> b!242137 (= lt!121716 (getCurrentListMapNoExtraKeys!542 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(declare-fun lt!121724 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121724 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121709 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121709 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121711 () Unit!7457)

(declare-fun addStillContains!199 (ListLongMap!3675 (_ BitVec 64) V!8131 (_ BitVec 64)) Unit!7457)

(assert (=> b!242137 (= lt!121711 (addStillContains!199 lt!121716 lt!121724 (zeroValue!4326 thiss!1504) lt!121709))))

(declare-fun +!645 (ListLongMap!3675 tuple2!4748) ListLongMap!3675)

(assert (=> b!242137 (contains!1737 (+!645 lt!121716 (tuple2!4749 lt!121724 (zeroValue!4326 thiss!1504))) lt!121709)))

(declare-fun lt!121707 () Unit!7457)

(assert (=> b!242137 (= lt!121707 lt!121711)))

(declare-fun lt!121721 () ListLongMap!3675)

(assert (=> b!242137 (= lt!121721 (getCurrentListMapNoExtraKeys!542 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(declare-fun lt!121718 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121718 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121712 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121712 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121720 () Unit!7457)

(declare-fun addApplyDifferent!199 (ListLongMap!3675 (_ BitVec 64) V!8131 (_ BitVec 64)) Unit!7457)

(assert (=> b!242137 (= lt!121720 (addApplyDifferent!199 lt!121721 lt!121718 (minValue!4326 thiss!1504) lt!121712))))

(declare-fun apply!223 (ListLongMap!3675 (_ BitVec 64)) V!8131)

(assert (=> b!242137 (= (apply!223 (+!645 lt!121721 (tuple2!4749 lt!121718 (minValue!4326 thiss!1504))) lt!121712) (apply!223 lt!121721 lt!121712))))

(declare-fun lt!121713 () Unit!7457)

(assert (=> b!242137 (= lt!121713 lt!121720)))

(declare-fun lt!121725 () ListLongMap!3675)

(assert (=> b!242137 (= lt!121725 (getCurrentListMapNoExtraKeys!542 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(declare-fun lt!121715 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121715 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121705 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121705 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121719 () Unit!7457)

(assert (=> b!242137 (= lt!121719 (addApplyDifferent!199 lt!121725 lt!121715 (zeroValue!4326 thiss!1504) lt!121705))))

(assert (=> b!242137 (= (apply!223 (+!645 lt!121725 (tuple2!4749 lt!121715 (zeroValue!4326 thiss!1504))) lt!121705) (apply!223 lt!121725 lt!121705))))

(declare-fun lt!121714 () Unit!7457)

(assert (=> b!242137 (= lt!121714 lt!121719)))

(declare-fun lt!121710 () ListLongMap!3675)

(assert (=> b!242137 (= lt!121710 (getCurrentListMapNoExtraKeys!542 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(declare-fun lt!121722 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121722 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121706 () (_ BitVec 64))

(assert (=> b!242137 (= lt!121706 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242137 (= lt!121704 (addApplyDifferent!199 lt!121710 lt!121722 (minValue!4326 thiss!1504) lt!121706))))

(assert (=> b!242137 (= (apply!223 (+!645 lt!121710 (tuple2!4749 lt!121722 (minValue!4326 thiss!1504))) lt!121706) (apply!223 lt!121710 lt!121706))))

(declare-fun b!242138 () Bool)

(declare-fun e!157158 () Bool)

(assert (=> b!242138 (= e!157158 (= (apply!223 lt!121708 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4326 thiss!1504)))))

(declare-fun b!242139 () Bool)

(declare-fun call!22561 () ListLongMap!3675)

(assert (=> b!242139 (= e!157164 call!22561)))

(declare-fun b!242140 () Bool)

(declare-fun e!157169 () ListLongMap!3675)

(assert (=> b!242140 (= e!157169 e!157160)))

(declare-fun c!40384 () Bool)

(assert (=> b!242140 (= c!40384 (and (not (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22553 () Bool)

(declare-fun call!22559 () ListLongMap!3675)

(declare-fun call!22556 () ListLongMap!3675)

(assert (=> bm!22553 (= call!22559 call!22556)))

(declare-fun b!242141 () Bool)

(declare-fun e!157163 () Bool)

(assert (=> b!242141 (= e!157163 e!157158)))

(declare-fun res!118669 () Bool)

(assert (=> b!242141 (= res!118669 call!22557)))

(assert (=> b!242141 (=> (not res!118669) (not e!157158))))

(declare-fun b!242142 () Bool)

(declare-fun e!157170 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!242142 (= e!157170 (validKeyInArray!0 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!242143 () Bool)

(declare-fun e!157168 () Bool)

(assert (=> b!242143 (= e!157168 e!157159)))

(declare-fun c!40388 () Bool)

(assert (=> b!242143 (= c!40388 (not (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!242144 () Bool)

(declare-fun res!118670 () Bool)

(assert (=> b!242144 (=> (not res!118670) (not e!157168))))

(assert (=> b!242144 (= res!118670 e!157163)))

(declare-fun c!40387 () Bool)

(assert (=> b!242144 (= c!40387 (not (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!22558 () ListLongMap!3675)

(declare-fun call!22555 () ListLongMap!3675)

(declare-fun c!40386 () Bool)

(declare-fun bm!22554 () Bool)

(assert (=> bm!22554 (= call!22556 (+!645 (ite c!40386 call!22558 (ite c!40384 call!22555 call!22561)) (ite (or c!40386 c!40384) (tuple2!4749 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4326 thiss!1504)) (tuple2!4749 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4326 thiss!1504)))))))

(declare-fun b!242136 () Bool)

(assert (=> b!242136 (= e!157164 call!22559)))

(declare-fun d!59871 () Bool)

(assert (=> d!59871 e!157168))

(declare-fun res!118674 () Bool)

(assert (=> d!59871 (=> (not res!118674) (not e!157168))))

(assert (=> d!59871 (= res!118674 (or (bvsge #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))))))))

(declare-fun lt!121717 () ListLongMap!3675)

(assert (=> d!59871 (= lt!121708 lt!121717)))

(declare-fun lt!121723 () Unit!7457)

(assert (=> d!59871 (= lt!121723 e!157166)))

(declare-fun c!40383 () Bool)

(declare-fun e!157162 () Bool)

(assert (=> d!59871 (= c!40383 e!157162)))

(declare-fun res!118677 () Bool)

(assert (=> d!59871 (=> (not res!118677) (not e!157162))))

(assert (=> d!59871 (= res!118677 (bvslt #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))))))

(assert (=> d!59871 (= lt!121717 e!157169)))

(assert (=> d!59871 (= c!40386 (and (not (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4222 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59871 (validMask!0 (mask!10562 thiss!1504))))

(assert (=> d!59871 (= (getCurrentListMap!1376 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)) lt!121708)))

(declare-fun b!242145 () Bool)

(declare-fun Unit!7467 () Unit!7457)

(assert (=> b!242145 (= e!157166 Unit!7467)))

(declare-fun bm!22555 () Bool)

(assert (=> bm!22555 (= call!22558 (getCurrentListMapNoExtraKeys!542 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4485 thiss!1504)))))

(declare-fun b!242146 () Bool)

(declare-fun e!157161 () Bool)

(assert (=> b!242146 (= e!157159 e!157161)))

(declare-fun res!118671 () Bool)

(assert (=> b!242146 (= res!118671 call!22560)))

(assert (=> b!242146 (=> (not res!118671) (not e!157161))))

(declare-fun b!242147 () Bool)

(declare-fun res!118676 () Bool)

(assert (=> b!242147 (=> (not res!118676) (not e!157168))))

(declare-fun e!157165 () Bool)

(assert (=> b!242147 (= res!118676 e!157165)))

(declare-fun res!118672 () Bool)

(assert (=> b!242147 (=> res!118672 e!157165)))

(assert (=> b!242147 (= res!118672 (not e!157170))))

(declare-fun res!118673 () Bool)

(assert (=> b!242147 (=> (not res!118673) (not e!157170))))

(assert (=> b!242147 (= res!118673 (bvslt #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))))))

(declare-fun b!242148 () Bool)

(declare-fun e!157167 () Bool)

(declare-fun get!2930 (ValueCell!2838 V!8131) V!8131)

(declare-fun dynLambda!561 (Int (_ BitVec 64)) V!8131)

(assert (=> b!242148 (= e!157167 (= (apply!223 lt!121708 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000)) (get!2930 (select (arr!5703 (_values!4468 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!561 (defaultEntry!4485 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!242148 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6045 (_values!4468 thiss!1504))))))

(assert (=> b!242148 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))))))

(declare-fun b!242149 () Bool)

(assert (=> b!242149 (= e!157169 (+!645 call!22556 (tuple2!4749 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4326 thiss!1504))))))

(declare-fun bm!22556 () Bool)

(assert (=> bm!22556 (= call!22555 call!22558)))

(declare-fun b!242150 () Bool)

(assert (=> b!242150 (= e!157160 call!22559)))

(declare-fun b!242151 () Bool)

(assert (=> b!242151 (= e!157161 (= (apply!223 lt!121708 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4326 thiss!1504)))))

(declare-fun bm!22557 () Bool)

(assert (=> bm!22557 (= call!22561 call!22555)))

(declare-fun b!242152 () Bool)

(assert (=> b!242152 (= e!157165 e!157167)))

(declare-fun res!118675 () Bool)

(assert (=> b!242152 (=> (not res!118675) (not e!157167))))

(assert (=> b!242152 (= res!118675 (contains!1737 lt!121708 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!242152 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6046 (_keys!6592 thiss!1504))))))

(declare-fun b!242153 () Bool)

(assert (=> b!242153 (= e!157163 (not call!22557))))

(declare-fun b!242154 () Bool)

(assert (=> b!242154 (= e!157162 (validKeyInArray!0 (select (arr!5704 (_keys!6592 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22558 () Bool)

(assert (=> bm!22558 (= call!22560 (contains!1737 lt!121708 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59871 c!40386) b!242149))

(assert (= (and d!59871 (not c!40386)) b!242140))

(assert (= (and b!242140 c!40384) b!242150))

(assert (= (and b!242140 (not c!40384)) b!242135))

(assert (= (and b!242135 c!40385) b!242136))

(assert (= (and b!242135 (not c!40385)) b!242139))

(assert (= (or b!242136 b!242139) bm!22557))

(assert (= (or b!242150 bm!22557) bm!22556))

(assert (= (or b!242150 b!242136) bm!22553))

(assert (= (or b!242149 bm!22556) bm!22555))

(assert (= (or b!242149 bm!22553) bm!22554))

(assert (= (and d!59871 res!118677) b!242154))

(assert (= (and d!59871 c!40383) b!242137))

(assert (= (and d!59871 (not c!40383)) b!242145))

(assert (= (and d!59871 res!118674) b!242147))

(assert (= (and b!242147 res!118673) b!242142))

(assert (= (and b!242147 (not res!118672)) b!242152))

(assert (= (and b!242152 res!118675) b!242148))

(assert (= (and b!242147 res!118676) b!242144))

(assert (= (and b!242144 c!40387) b!242141))

(assert (= (and b!242144 (not c!40387)) b!242153))

(assert (= (and b!242141 res!118669) b!242138))

(assert (= (or b!242141 b!242153) bm!22552))

(assert (= (and b!242144 res!118670) b!242143))

(assert (= (and b!242143 c!40388) b!242146))

(assert (= (and b!242143 (not c!40388)) b!242134))

(assert (= (and b!242146 res!118671) b!242151))

(assert (= (or b!242146 b!242134) bm!22558))

(declare-fun b_lambda!8025 () Bool)

(assert (=> (not b_lambda!8025) (not b!242148)))

(declare-fun t!8661 () Bool)

(declare-fun tb!2967 () Bool)

(assert (=> (and b!241983 (= (defaultEntry!4485 thiss!1504) (defaultEntry!4485 thiss!1504)) t!8661) tb!2967))

(declare-fun result!5207 () Bool)

(assert (=> tb!2967 (= result!5207 tp_is_empty!6363)))

(assert (=> b!242148 t!8661))

(declare-fun b_and!13497 () Bool)

(assert (= b_and!13493 (and (=> t!8661 result!5207) b_and!13497)))

(declare-fun m!261081 () Bool)

(assert (=> bm!22558 m!261081))

(assert (=> d!59871 m!261057))

(assert (=> b!242154 m!261051))

(assert (=> b!242154 m!261051))

(declare-fun m!261083 () Bool)

(assert (=> b!242154 m!261083))

(declare-fun m!261085 () Bool)

(assert (=> bm!22554 m!261085))

(declare-fun m!261087 () Bool)

(assert (=> b!242149 m!261087))

(assert (=> b!242142 m!261051))

(assert (=> b!242142 m!261051))

(assert (=> b!242142 m!261083))

(declare-fun m!261089 () Bool)

(assert (=> bm!22555 m!261089))

(declare-fun m!261091 () Bool)

(assert (=> b!242151 m!261091))

(assert (=> b!242152 m!261051))

(assert (=> b!242152 m!261051))

(declare-fun m!261093 () Bool)

(assert (=> b!242152 m!261093))

(declare-fun m!261095 () Bool)

(assert (=> b!242138 m!261095))

(assert (=> b!242148 m!261051))

(declare-fun m!261097 () Bool)

(assert (=> b!242148 m!261097))

(declare-fun m!261099 () Bool)

(assert (=> b!242148 m!261099))

(declare-fun m!261101 () Bool)

(assert (=> b!242148 m!261101))

(declare-fun m!261103 () Bool)

(assert (=> b!242148 m!261103))

(assert (=> b!242148 m!261051))

(assert (=> b!242148 m!261099))

(assert (=> b!242148 m!261101))

(declare-fun m!261105 () Bool)

(assert (=> b!242137 m!261105))

(declare-fun m!261107 () Bool)

(assert (=> b!242137 m!261107))

(declare-fun m!261109 () Bool)

(assert (=> b!242137 m!261109))

(declare-fun m!261111 () Bool)

(assert (=> b!242137 m!261111))

(declare-fun m!261113 () Bool)

(assert (=> b!242137 m!261113))

(declare-fun m!261115 () Bool)

(assert (=> b!242137 m!261115))

(declare-fun m!261117 () Bool)

(assert (=> b!242137 m!261117))

(assert (=> b!242137 m!261089))

(declare-fun m!261119 () Bool)

(assert (=> b!242137 m!261119))

(declare-fun m!261121 () Bool)

(assert (=> b!242137 m!261121))

(declare-fun m!261123 () Bool)

(assert (=> b!242137 m!261123))

(declare-fun m!261125 () Bool)

(assert (=> b!242137 m!261125))

(assert (=> b!242137 m!261107))

(declare-fun m!261127 () Bool)

(assert (=> b!242137 m!261127))

(declare-fun m!261129 () Bool)

(assert (=> b!242137 m!261129))

(declare-fun m!261131 () Bool)

(assert (=> b!242137 m!261131))

(assert (=> b!242137 m!261051))

(assert (=> b!242137 m!261129))

(declare-fun m!261133 () Bool)

(assert (=> b!242137 m!261133))

(assert (=> b!242137 m!261123))

(assert (=> b!242137 m!261113))

(declare-fun m!261135 () Bool)

(assert (=> bm!22552 m!261135))

(assert (=> b!241989 d!59871))

(declare-fun d!59873 () Bool)

(assert (=> d!59873 (= (inRange!0 (ite c!40355 (index!6458 lt!121618) (index!6461 lt!121618)) (mask!10562 thiss!1504)) (and (bvsge (ite c!40355 (index!6458 lt!121618) (index!6461 lt!121618)) #b00000000000000000000000000000000) (bvslt (ite c!40355 (index!6458 lt!121618) (index!6461 lt!121618)) (bvadd (mask!10562 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22531 d!59873))

(declare-fun b!242169 () Bool)

(declare-fun e!157178 () SeekEntryResult!1072)

(declare-fun e!157179 () SeekEntryResult!1072)

(assert (=> b!242169 (= e!157178 e!157179)))

(declare-fun lt!121734 () (_ BitVec 64))

(declare-fun lt!121733 () SeekEntryResult!1072)

(assert (=> b!242169 (= lt!121734 (select (arr!5704 (_keys!6592 thiss!1504)) (index!6460 lt!121733)))))

(declare-fun c!40396 () Bool)

(assert (=> b!242169 (= c!40396 (= lt!121734 key!932))))

(declare-fun d!59875 () Bool)

(declare-fun lt!121732 () SeekEntryResult!1072)

(assert (=> d!59875 (and (or ((_ is Undefined!1072) lt!121732) (not ((_ is Found!1072) lt!121732)) (and (bvsge (index!6459 lt!121732) #b00000000000000000000000000000000) (bvslt (index!6459 lt!121732) (size!6046 (_keys!6592 thiss!1504))))) (or ((_ is Undefined!1072) lt!121732) ((_ is Found!1072) lt!121732) (not ((_ is MissingZero!1072) lt!121732)) (and (bvsge (index!6458 lt!121732) #b00000000000000000000000000000000) (bvslt (index!6458 lt!121732) (size!6046 (_keys!6592 thiss!1504))))) (or ((_ is Undefined!1072) lt!121732) ((_ is Found!1072) lt!121732) ((_ is MissingZero!1072) lt!121732) (not ((_ is MissingVacant!1072) lt!121732)) (and (bvsge (index!6461 lt!121732) #b00000000000000000000000000000000) (bvslt (index!6461 lt!121732) (size!6046 (_keys!6592 thiss!1504))))) (or ((_ is Undefined!1072) lt!121732) (ite ((_ is Found!1072) lt!121732) (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6459 lt!121732)) key!932) (ite ((_ is MissingZero!1072) lt!121732) (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6458 lt!121732)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1072) lt!121732) (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6461 lt!121732)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59875 (= lt!121732 e!157178)))

(declare-fun c!40397 () Bool)

(assert (=> d!59875 (= c!40397 (and ((_ is Intermediate!1072) lt!121733) (undefined!1884 lt!121733)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12010 (_ BitVec 32)) SeekEntryResult!1072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59875 (= lt!121733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10562 thiss!1504)) key!932 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)))))

(assert (=> d!59875 (validMask!0 (mask!10562 thiss!1504))))

(assert (=> d!59875 (= (seekEntryOrOpen!0 key!932 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)) lt!121732)))

(declare-fun b!242170 () Bool)

(assert (=> b!242170 (= e!157178 Undefined!1072)))

(declare-fun e!157177 () SeekEntryResult!1072)

(declare-fun b!242171 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12010 (_ BitVec 32)) SeekEntryResult!1072)

(assert (=> b!242171 (= e!157177 (seekKeyOrZeroReturnVacant!0 (x!24260 lt!121733) (index!6460 lt!121733) (index!6460 lt!121733) key!932 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)))))

(declare-fun b!242172 () Bool)

(assert (=> b!242172 (= e!157177 (MissingZero!1072 (index!6460 lt!121733)))))

(declare-fun b!242173 () Bool)

(declare-fun c!40395 () Bool)

(assert (=> b!242173 (= c!40395 (= lt!121734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242173 (= e!157179 e!157177)))

(declare-fun b!242174 () Bool)

(assert (=> b!242174 (= e!157179 (Found!1072 (index!6460 lt!121733)))))

(assert (= (and d!59875 c!40397) b!242170))

(assert (= (and d!59875 (not c!40397)) b!242169))

(assert (= (and b!242169 c!40396) b!242174))

(assert (= (and b!242169 (not c!40396)) b!242173))

(assert (= (and b!242173 c!40395) b!242172))

(assert (= (and b!242173 (not c!40395)) b!242171))

(declare-fun m!261137 () Bool)

(assert (=> b!242169 m!261137))

(declare-fun m!261139 () Bool)

(assert (=> d!59875 m!261139))

(declare-fun m!261141 () Bool)

(assert (=> d!59875 m!261141))

(assert (=> d!59875 m!261057))

(declare-fun m!261143 () Bool)

(assert (=> d!59875 m!261143))

(assert (=> d!59875 m!261143))

(declare-fun m!261145 () Bool)

(assert (=> d!59875 m!261145))

(declare-fun m!261147 () Bool)

(assert (=> d!59875 m!261147))

(declare-fun m!261149 () Bool)

(assert (=> b!242171 m!261149))

(assert (=> b!241995 d!59875))

(declare-fun d!59877 () Bool)

(declare-fun res!118682 () Bool)

(declare-fun e!157184 () Bool)

(assert (=> d!59877 (=> res!118682 e!157184)))

(assert (=> d!59877 (= res!118682 ((_ is Nil!3648) Nil!3648))))

(assert (=> d!59877 (= (noDuplicate!88 Nil!3648) e!157184)))

(declare-fun b!242179 () Bool)

(declare-fun e!157185 () Bool)

(assert (=> b!242179 (= e!157184 e!157185)))

(declare-fun res!118683 () Bool)

(assert (=> b!242179 (=> (not res!118683) (not e!157185))))

(declare-fun contains!1739 (List!3651 (_ BitVec 64)) Bool)

(assert (=> b!242179 (= res!118683 (not (contains!1739 (t!8658 Nil!3648) (h!4304 Nil!3648))))))

(declare-fun b!242180 () Bool)

(assert (=> b!242180 (= e!157185 (noDuplicate!88 (t!8658 Nil!3648)))))

(assert (= (and d!59877 (not res!118682)) b!242179))

(assert (= (and b!242179 res!118683) b!242180))

(declare-fun m!261151 () Bool)

(assert (=> b!242179 m!261151))

(declare-fun m!261153 () Bool)

(assert (=> b!242180 m!261153))

(assert (=> b!241996 d!59877))

(declare-fun bm!22563 () Bool)

(declare-fun call!22567 () Bool)

(assert (=> bm!22563 (= call!22567 (arrayContainsKey!0 (_keys!6592 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242197 () Bool)

(declare-fun e!157197 () Bool)

(assert (=> b!242197 (= e!157197 (not call!22567))))

(declare-fun lt!121739 () SeekEntryResult!1072)

(declare-fun c!40403 () Bool)

(declare-fun bm!22564 () Bool)

(declare-fun call!22566 () Bool)

(assert (=> bm!22564 (= call!22566 (inRange!0 (ite c!40403 (index!6458 lt!121739) (index!6461 lt!121739)) (mask!10562 thiss!1504)))))

(declare-fun b!242199 () Bool)

(declare-fun res!118692 () Bool)

(assert (=> b!242199 (=> (not res!118692) (not e!157197))))

(assert (=> b!242199 (= res!118692 (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6461 lt!121739)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242199 (and (bvsge (index!6461 lt!121739) #b00000000000000000000000000000000) (bvslt (index!6461 lt!121739) (size!6046 (_keys!6592 thiss!1504))))))

(declare-fun b!242200 () Bool)

(declare-fun e!157194 () Bool)

(declare-fun e!157196 () Bool)

(assert (=> b!242200 (= e!157194 e!157196)))

(declare-fun c!40402 () Bool)

(assert (=> b!242200 (= c!40402 ((_ is MissingVacant!1072) lt!121739))))

(declare-fun b!242201 () Bool)

(declare-fun res!118695 () Bool)

(assert (=> b!242201 (=> (not res!118695) (not e!157197))))

(assert (=> b!242201 (= res!118695 call!22566)))

(assert (=> b!242201 (= e!157196 e!157197)))

(declare-fun d!59879 () Bool)

(assert (=> d!59879 e!157194))

(assert (=> d!59879 (= c!40403 ((_ is MissingZero!1072) lt!121739))))

(assert (=> d!59879 (= lt!121739 (seekEntryOrOpen!0 key!932 (_keys!6592 thiss!1504) (mask!10562 thiss!1504)))))

(declare-fun lt!121740 () Unit!7457)

(declare-fun choose!1135 (array!12010 array!12008 (_ BitVec 32) (_ BitVec 32) V!8131 V!8131 (_ BitVec 64) Int) Unit!7457)

(assert (=> d!59879 (= lt!121740 (choose!1135 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 (defaultEntry!4485 thiss!1504)))))

(assert (=> d!59879 (validMask!0 (mask!10562 thiss!1504))))

(assert (=> d!59879 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!360 (_keys!6592 thiss!1504) (_values!4468 thiss!1504) (mask!10562 thiss!1504) (extraKeys!4222 thiss!1504) (zeroValue!4326 thiss!1504) (minValue!4326 thiss!1504) key!932 (defaultEntry!4485 thiss!1504)) lt!121740)))

(declare-fun b!242198 () Bool)

(assert (=> b!242198 (= e!157196 ((_ is Undefined!1072) lt!121739))))

(declare-fun b!242202 () Bool)

(declare-fun e!157195 () Bool)

(assert (=> b!242202 (= e!157195 (not call!22567))))

(declare-fun b!242203 () Bool)

(assert (=> b!242203 (= e!157194 e!157195)))

(declare-fun res!118693 () Bool)

(assert (=> b!242203 (= res!118693 call!22566)))

(assert (=> b!242203 (=> (not res!118693) (not e!157195))))

(declare-fun b!242204 () Bool)

(assert (=> b!242204 (and (bvsge (index!6458 lt!121739) #b00000000000000000000000000000000) (bvslt (index!6458 lt!121739) (size!6046 (_keys!6592 thiss!1504))))))

(declare-fun res!118694 () Bool)

(assert (=> b!242204 (= res!118694 (= (select (arr!5704 (_keys!6592 thiss!1504)) (index!6458 lt!121739)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242204 (=> (not res!118694) (not e!157195))))

(assert (= (and d!59879 c!40403) b!242203))

(assert (= (and d!59879 (not c!40403)) b!242200))

(assert (= (and b!242203 res!118693) b!242204))

(assert (= (and b!242204 res!118694) b!242202))

(assert (= (and b!242200 c!40402) b!242201))

(assert (= (and b!242200 (not c!40402)) b!242198))

(assert (= (and b!242201 res!118695) b!242199))

(assert (= (and b!242199 res!118692) b!242197))

(assert (= (or b!242203 b!242201) bm!22564))

(assert (= (or b!242202 b!242197) bm!22563))

(assert (=> d!59879 m!261007))

(declare-fun m!261155 () Bool)

(assert (=> d!59879 m!261155))

(assert (=> d!59879 m!261057))

(declare-fun m!261157 () Bool)

(assert (=> b!242204 m!261157))

(declare-fun m!261159 () Bool)

(assert (=> b!242199 m!261159))

(assert (=> bm!22563 m!261001))

(declare-fun m!261161 () Bool)

(assert (=> bm!22564 m!261161))

(assert (=> b!241991 d!59879))

(declare-fun b!242212 () Bool)

(declare-fun e!157202 () Bool)

(assert (=> b!242212 (= e!157202 tp_is_empty!6363)))

(declare-fun mapIsEmpty!10789 () Bool)

(declare-fun mapRes!10789 () Bool)

(assert (=> mapIsEmpty!10789 mapRes!10789))

(declare-fun mapNonEmpty!10789 () Bool)

(declare-fun tp!22723 () Bool)

(declare-fun e!157203 () Bool)

(assert (=> mapNonEmpty!10789 (= mapRes!10789 (and tp!22723 e!157203))))

(declare-fun mapKey!10789 () (_ BitVec 32))

(declare-fun mapValue!10789 () ValueCell!2838)

(declare-fun mapRest!10789 () (Array (_ BitVec 32) ValueCell!2838))

(assert (=> mapNonEmpty!10789 (= mapRest!10783 (store mapRest!10789 mapKey!10789 mapValue!10789))))

(declare-fun condMapEmpty!10789 () Bool)

(declare-fun mapDefault!10789 () ValueCell!2838)

(assert (=> mapNonEmpty!10783 (= condMapEmpty!10789 (= mapRest!10783 ((as const (Array (_ BitVec 32) ValueCell!2838)) mapDefault!10789)))))

(assert (=> mapNonEmpty!10783 (= tp!22713 (and e!157202 mapRes!10789))))

(declare-fun b!242211 () Bool)

(assert (=> b!242211 (= e!157203 tp_is_empty!6363)))

(assert (= (and mapNonEmpty!10783 condMapEmpty!10789) mapIsEmpty!10789))

(assert (= (and mapNonEmpty!10783 (not condMapEmpty!10789)) mapNonEmpty!10789))

(assert (= (and mapNonEmpty!10789 ((_ is ValueCellFull!2838) mapValue!10789)) b!242211))

(assert (= (and mapNonEmpty!10783 ((_ is ValueCellFull!2838) mapDefault!10789)) b!242212))

(declare-fun m!261163 () Bool)

(assert (=> mapNonEmpty!10789 m!261163))

(declare-fun b_lambda!8027 () Bool)

(assert (= b_lambda!8025 (or (and b!241983 b_free!6501) b_lambda!8027)))

(check-sat (not b!242154) tp_is_empty!6363 (not b!242152) (not bm!22555) (not bm!22554) (not b!242171) (not b!242081) (not d!59859) (not b!242180) (not bm!22552) (not d!59875) (not b!242151) (not bm!22563) (not b!242067) (not d!59869) (not b!242091) (not b!242072) (not b!242142) (not b!242082) (not d!59871) (not b!242137) (not b!242148) (not b!242080) (not b!242089) (not b_lambda!8027) (not d!59865) (not b!242138) b_and!13497 (not b!242149) (not b!242179) (not mapNonEmpty!10789) (not bm!22564) (not d!59857) (not b_next!6501) (not bm!22558) (not d!59879))
(check-sat b_and!13497 (not b_next!6501))

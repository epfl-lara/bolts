; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23302 () Bool)

(assert start!23302)

(declare-fun b!244726 () Bool)

(declare-fun b_free!6543 () Bool)

(declare-fun b_next!6543 () Bool)

(assert (=> b!244726 (= b_free!6543 (not b_next!6543))))

(declare-fun tp!22857 () Bool)

(declare-fun b_and!13547 () Bool)

(assert (=> b!244726 (= tp!22857 b_and!13547)))

(declare-fun b!244701 () Bool)

(declare-fun res!120056 () Bool)

(declare-fun e!158786 () Bool)

(assert (=> b!244701 (=> (not res!120056) (not e!158786))))

(declare-datatypes ((List!3682 0))(
  ( (Nil!3679) (Cons!3678 (h!4335 (_ BitVec 64)) (t!8701 List!3682)) )
))
(declare-fun contains!1767 (List!3682 (_ BitVec 64)) Bool)

(assert (=> b!244701 (= res!120056 (not (contains!1767 Nil!3679 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244702 () Bool)

(declare-fun e!158789 () Bool)

(assert (=> b!244702 (= e!158789 e!158786)))

(declare-fun res!120051 () Bool)

(assert (=> b!244702 (=> (not res!120051) (not e!158786))))

(declare-datatypes ((V!8187 0))(
  ( (V!8188 (val!3247 Int)) )
))
(declare-datatypes ((ValueCell!2859 0))(
  ( (ValueCellFull!2859 (v!5294 V!8187)) (EmptyCell!2859) )
))
(declare-datatypes ((array!12104 0))(
  ( (array!12105 (arr!5745 (Array (_ BitVec 32) ValueCell!2859)) (size!6087 (_ BitVec 32))) )
))
(declare-datatypes ((array!12106 0))(
  ( (array!12107 (arr!5746 (Array (_ BitVec 32) (_ BitVec 64))) (size!6088 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3618 0))(
  ( (LongMapFixedSize!3619 (defaultEntry!4530 Int) (mask!10633 (_ BitVec 32)) (extraKeys!4267 (_ BitVec 32)) (zeroValue!4371 V!8187) (minValue!4371 V!8187) (_size!1858 (_ BitVec 32)) (_keys!6643 array!12106) (_values!4513 array!12104) (_vacant!1858 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3618)

(assert (=> b!244702 (= res!120051 (and (bvslt (size!6088 (_keys!6643 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6088 (_keys!6643 thiss!1504)))))))

(declare-datatypes ((Unit!7553 0))(
  ( (Unit!7554) )
))
(declare-fun lt!122648 () Unit!7553)

(declare-fun e!158782 () Unit!7553)

(assert (=> b!244702 (= lt!122648 e!158782)))

(declare-fun c!40831 () Bool)

(declare-fun lt!122645 () Bool)

(assert (=> b!244702 (= c!40831 lt!122645)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!244702 (= lt!122645 (arrayContainsKey!0 (_keys!6643 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244703 () Bool)

(declare-fun e!158780 () Bool)

(declare-datatypes ((SeekEntryResult!1092 0))(
  ( (MissingZero!1092 (index!6538 (_ BitVec 32))) (Found!1092 (index!6539 (_ BitVec 32))) (Intermediate!1092 (undefined!1904 Bool) (index!6540 (_ BitVec 32)) (x!24396 (_ BitVec 32))) (Undefined!1092) (MissingVacant!1092 (index!6541 (_ BitVec 32))) )
))
(declare-fun lt!122643 () SeekEntryResult!1092)

(get-info :version)

(assert (=> b!244703 (= e!158780 ((_ is Undefined!1092) lt!122643))))

(declare-fun b!244704 () Bool)

(declare-fun Unit!7555 () Unit!7553)

(assert (=> b!244704 (= e!158782 Unit!7555)))

(declare-fun b!244705 () Bool)

(declare-fun res!120061 () Bool)

(assert (=> b!244705 (=> (not res!120061) (not e!158786))))

(declare-fun noDuplicate!103 (List!3682) Bool)

(assert (=> b!244705 (= res!120061 (noDuplicate!103 Nil!3679))))

(declare-fun b!244706 () Bool)

(declare-fun e!158788 () Bool)

(declare-fun tp_is_empty!6405 () Bool)

(assert (=> b!244706 (= e!158788 tp_is_empty!6405)))

(declare-fun res!120053 () Bool)

(declare-fun e!158790 () Bool)

(assert (=> start!23302 (=> (not res!120053) (not e!158790))))

(declare-fun valid!1410 (LongMapFixedSize!3618) Bool)

(assert (=> start!23302 (= res!120053 (valid!1410 thiss!1504))))

(assert (=> start!23302 e!158790))

(declare-fun e!158785 () Bool)

(assert (=> start!23302 e!158785))

(assert (=> start!23302 true))

(declare-fun b!244707 () Bool)

(declare-fun res!120062 () Bool)

(declare-fun e!158781 () Bool)

(assert (=> b!244707 (=> (not res!120062) (not e!158781))))

(assert (=> b!244707 (= res!120062 (= (select (arr!5746 (_keys!6643 thiss!1504)) (index!6538 lt!122643)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244708 () Bool)

(declare-fun res!120060 () Bool)

(assert (=> b!244708 (=> (not res!120060) (not e!158786))))

(assert (=> b!244708 (= res!120060 (not (contains!1767 Nil!3679 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244709 () Bool)

(declare-fun c!40830 () Bool)

(assert (=> b!244709 (= c!40830 ((_ is MissingVacant!1092) lt!122643))))

(declare-fun e!158776 () Bool)

(assert (=> b!244709 (= e!158776 e!158780)))

(declare-fun b!244710 () Bool)

(declare-fun res!120054 () Bool)

(assert (=> b!244710 (=> (not res!120054) (not e!158786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244710 (= res!120054 (validKeyInArray!0 key!932))))

(declare-fun b!244711 () Bool)

(declare-fun e!158778 () Unit!7553)

(declare-fun lt!122644 () Unit!7553)

(assert (=> b!244711 (= e!158778 lt!122644)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!372 (array!12106 array!12104 (_ BitVec 32) (_ BitVec 32) V!8187 V!8187 (_ BitVec 64) Int) Unit!7553)

(assert (=> b!244711 (= lt!122644 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!372 (_keys!6643 thiss!1504) (_values!4513 thiss!1504) (mask!10633 thiss!1504) (extraKeys!4267 thiss!1504) (zeroValue!4371 thiss!1504) (minValue!4371 thiss!1504) key!932 (defaultEntry!4530 thiss!1504)))))

(declare-fun c!40832 () Bool)

(assert (=> b!244711 (= c!40832 ((_ is MissingZero!1092) lt!122643))))

(assert (=> b!244711 e!158776))

(declare-fun mapIsEmpty!10864 () Bool)

(declare-fun mapRes!10864 () Bool)

(assert (=> mapIsEmpty!10864 mapRes!10864))

(declare-fun b!244712 () Bool)

(declare-fun call!22831 () Bool)

(assert (=> b!244712 (= e!158781 (not call!22831))))

(declare-fun b!244713 () Bool)

(declare-fun e!158783 () Bool)

(assert (=> b!244713 (= e!158783 tp_is_empty!6405)))

(declare-fun b!244714 () Bool)

(declare-fun e!158774 () Bool)

(assert (=> b!244714 (= e!158774 e!158789)))

(declare-fun res!120063 () Bool)

(assert (=> b!244714 (=> (not res!120063) (not e!158789))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!244714 (= res!120063 (inRange!0 index!297 (mask!10633 thiss!1504)))))

(declare-fun lt!122647 () Unit!7553)

(assert (=> b!244714 (= lt!122647 e!158778)))

(declare-fun c!40829 () Bool)

(declare-datatypes ((tuple2!4776 0))(
  ( (tuple2!4777 (_1!2398 (_ BitVec 64)) (_2!2398 V!8187)) )
))
(declare-datatypes ((List!3683 0))(
  ( (Nil!3680) (Cons!3679 (h!4336 tuple2!4776) (t!8702 List!3683)) )
))
(declare-datatypes ((ListLongMap!3703 0))(
  ( (ListLongMap!3704 (toList!1867 List!3683)) )
))
(declare-fun contains!1768 (ListLongMap!3703 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1390 (array!12106 array!12104 (_ BitVec 32) (_ BitVec 32) V!8187 V!8187 (_ BitVec 32) Int) ListLongMap!3703)

(assert (=> b!244714 (= c!40829 (contains!1768 (getCurrentListMap!1390 (_keys!6643 thiss!1504) (_values!4513 thiss!1504) (mask!10633 thiss!1504) (extraKeys!4267 thiss!1504) (zeroValue!4371 thiss!1504) (minValue!4371 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4530 thiss!1504)) key!932))))

(declare-fun b!244715 () Bool)

(assert (=> b!244715 (= e!158790 e!158774)))

(declare-fun res!120057 () Bool)

(assert (=> b!244715 (=> (not res!120057) (not e!158774))))

(assert (=> b!244715 (= res!120057 (or (= lt!122643 (MissingZero!1092 index!297)) (= lt!122643 (MissingVacant!1092 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12106 (_ BitVec 32)) SeekEntryResult!1092)

(assert (=> b!244715 (= lt!122643 (seekEntryOrOpen!0 key!932 (_keys!6643 thiss!1504) (mask!10633 thiss!1504)))))

(declare-fun b!244716 () Bool)

(declare-fun e!158777 () Bool)

(assert (=> b!244716 (= e!158777 (not call!22831))))

(declare-fun bm!22827 () Bool)

(declare-fun call!22830 () Bool)

(assert (=> bm!22827 (= call!22830 (inRange!0 (ite c!40832 (index!6538 lt!122643) (index!6541 lt!122643)) (mask!10633 thiss!1504)))))

(declare-fun b!244717 () Bool)

(declare-fun e!158775 () Bool)

(assert (=> b!244717 (= e!158775 (contains!1767 Nil!3679 key!932))))

(declare-fun b!244718 () Bool)

(declare-fun Unit!7556 () Unit!7553)

(assert (=> b!244718 (= e!158782 Unit!7556)))

(declare-fun lt!122646 () Unit!7553)

(declare-fun lemmaArrayContainsKeyThenInListMap!172 (array!12106 array!12104 (_ BitVec 32) (_ BitVec 32) V!8187 V!8187 (_ BitVec 64) (_ BitVec 32) Int) Unit!7553)

(assert (=> b!244718 (= lt!122646 (lemmaArrayContainsKeyThenInListMap!172 (_keys!6643 thiss!1504) (_values!4513 thiss!1504) (mask!10633 thiss!1504) (extraKeys!4267 thiss!1504) (zeroValue!4371 thiss!1504) (minValue!4371 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4530 thiss!1504)))))

(assert (=> b!244718 false))

(declare-fun b!244719 () Bool)

(declare-fun e!158773 () Bool)

(declare-fun e!158779 () Bool)

(assert (=> b!244719 (= e!158773 e!158779)))

(declare-fun res!120065 () Bool)

(assert (=> b!244719 (=> (not res!120065) (not e!158779))))

(assert (=> b!244719 (= res!120065 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!244720 () Bool)

(assert (=> b!244720 (= e!158780 e!158777)))

(declare-fun res!120064 () Bool)

(assert (=> b!244720 (= res!120064 call!22830)))

(assert (=> b!244720 (=> (not res!120064) (not e!158777))))

(declare-fun b!244721 () Bool)

(assert (=> b!244721 (= e!158786 lt!122645)))

(declare-fun b!244722 () Bool)

(declare-fun e!158787 () Bool)

(assert (=> b!244722 (= e!158787 (and e!158783 mapRes!10864))))

(declare-fun condMapEmpty!10864 () Bool)

(declare-fun mapDefault!10864 () ValueCell!2859)

(assert (=> b!244722 (= condMapEmpty!10864 (= (arr!5745 (_values!4513 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2859)) mapDefault!10864)))))

(declare-fun b!244723 () Bool)

(declare-fun res!120050 () Bool)

(assert (=> b!244723 (=> (not res!120050) (not e!158786))))

(assert (=> b!244723 (= res!120050 e!158773)))

(declare-fun res!120049 () Bool)

(assert (=> b!244723 (=> res!120049 e!158773)))

(assert (=> b!244723 (= res!120049 e!158775)))

(declare-fun res!120052 () Bool)

(assert (=> b!244723 (=> (not res!120052) (not e!158775))))

(assert (=> b!244723 (= res!120052 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!244724 () Bool)

(declare-fun Unit!7557 () Unit!7553)

(assert (=> b!244724 (= e!158778 Unit!7557)))

(declare-fun lt!122649 () Unit!7553)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!369 (array!12106 array!12104 (_ BitVec 32) (_ BitVec 32) V!8187 V!8187 (_ BitVec 64) Int) Unit!7553)

(assert (=> b!244724 (= lt!122649 (lemmaInListMapThenSeekEntryOrOpenFindsIt!369 (_keys!6643 thiss!1504) (_values!4513 thiss!1504) (mask!10633 thiss!1504) (extraKeys!4267 thiss!1504) (zeroValue!4371 thiss!1504) (minValue!4371 thiss!1504) key!932 (defaultEntry!4530 thiss!1504)))))

(assert (=> b!244724 false))

(declare-fun b!244725 () Bool)

(declare-fun res!120066 () Bool)

(assert (=> b!244725 (=> (not res!120066) (not e!158781))))

(assert (=> b!244725 (= res!120066 call!22830)))

(assert (=> b!244725 (= e!158776 e!158781)))

(declare-fun array_inv!3789 (array!12106) Bool)

(declare-fun array_inv!3790 (array!12104) Bool)

(assert (=> b!244726 (= e!158785 (and tp!22857 tp_is_empty!6405 (array_inv!3789 (_keys!6643 thiss!1504)) (array_inv!3790 (_values!4513 thiss!1504)) e!158787))))

(declare-fun b!244727 () Bool)

(declare-fun res!120048 () Bool)

(assert (=> b!244727 (=> (not res!120048) (not e!158786))))

(declare-fun arrayNoDuplicates!0 (array!12106 (_ BitVec 32) List!3682) Bool)

(assert (=> b!244727 (= res!120048 (arrayNoDuplicates!0 (_keys!6643 thiss!1504) #b00000000000000000000000000000000 Nil!3679))))

(declare-fun mapNonEmpty!10864 () Bool)

(declare-fun tp!22858 () Bool)

(assert (=> mapNonEmpty!10864 (= mapRes!10864 (and tp!22858 e!158788))))

(declare-fun mapValue!10864 () ValueCell!2859)

(declare-fun mapKey!10864 () (_ BitVec 32))

(declare-fun mapRest!10864 () (Array (_ BitVec 32) ValueCell!2859))

(assert (=> mapNonEmpty!10864 (= (arr!5745 (_values!4513 thiss!1504)) (store mapRest!10864 mapKey!10864 mapValue!10864))))

(declare-fun bm!22828 () Bool)

(assert (=> bm!22828 (= call!22831 (arrayContainsKey!0 (_keys!6643 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244728 () Bool)

(assert (=> b!244728 (= e!158779 (not (contains!1767 Nil!3679 key!932)))))

(declare-fun b!244729 () Bool)

(declare-fun res!120055 () Bool)

(assert (=> b!244729 (=> (not res!120055) (not e!158786))))

(assert (=> b!244729 (= res!120055 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6088 (_keys!6643 thiss!1504)))))))

(declare-fun b!244730 () Bool)

(declare-fun res!120058 () Bool)

(assert (=> b!244730 (= res!120058 (= (select (arr!5746 (_keys!6643 thiss!1504)) (index!6541 lt!122643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244730 (=> (not res!120058) (not e!158777))))

(declare-fun b!244731 () Bool)

(declare-fun res!120059 () Bool)

(assert (=> b!244731 (=> (not res!120059) (not e!158790))))

(assert (=> b!244731 (= res!120059 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!23302 res!120053) b!244731))

(assert (= (and b!244731 res!120059) b!244715))

(assert (= (and b!244715 res!120057) b!244714))

(assert (= (and b!244714 c!40829) b!244724))

(assert (= (and b!244714 (not c!40829)) b!244711))

(assert (= (and b!244711 c!40832) b!244725))

(assert (= (and b!244711 (not c!40832)) b!244709))

(assert (= (and b!244725 res!120066) b!244707))

(assert (= (and b!244707 res!120062) b!244712))

(assert (= (and b!244709 c!40830) b!244720))

(assert (= (and b!244709 (not c!40830)) b!244703))

(assert (= (and b!244720 res!120064) b!244730))

(assert (= (and b!244730 res!120058) b!244716))

(assert (= (or b!244725 b!244720) bm!22827))

(assert (= (or b!244712 b!244716) bm!22828))

(assert (= (and b!244714 res!120063) b!244702))

(assert (= (and b!244702 c!40831) b!244718))

(assert (= (and b!244702 (not c!40831)) b!244704))

(assert (= (and b!244702 res!120051) b!244705))

(assert (= (and b!244705 res!120061) b!244701))

(assert (= (and b!244701 res!120056) b!244708))

(assert (= (and b!244708 res!120060) b!244723))

(assert (= (and b!244723 res!120052) b!244717))

(assert (= (and b!244723 (not res!120049)) b!244719))

(assert (= (and b!244719 res!120065) b!244728))

(assert (= (and b!244723 res!120050) b!244727))

(assert (= (and b!244727 res!120048) b!244729))

(assert (= (and b!244729 res!120055) b!244710))

(assert (= (and b!244710 res!120054) b!244721))

(assert (= (and b!244722 condMapEmpty!10864) mapIsEmpty!10864))

(assert (= (and b!244722 (not condMapEmpty!10864)) mapNonEmpty!10864))

(assert (= (and mapNonEmpty!10864 ((_ is ValueCellFull!2859) mapValue!10864)) b!244706))

(assert (= (and b!244722 ((_ is ValueCellFull!2859) mapDefault!10864)) b!244713))

(assert (= b!244726 b!244722))

(assert (= start!23302 b!244726))

(declare-fun m!262557 () Bool)

(assert (=> mapNonEmpty!10864 m!262557))

(declare-fun m!262559 () Bool)

(assert (=> b!244707 m!262559))

(declare-fun m!262561 () Bool)

(assert (=> b!244714 m!262561))

(declare-fun m!262563 () Bool)

(assert (=> b!244714 m!262563))

(assert (=> b!244714 m!262563))

(declare-fun m!262565 () Bool)

(assert (=> b!244714 m!262565))

(declare-fun m!262567 () Bool)

(assert (=> b!244727 m!262567))

(declare-fun m!262569 () Bool)

(assert (=> start!23302 m!262569))

(declare-fun m!262571 () Bool)

(assert (=> b!244702 m!262571))

(declare-fun m!262573 () Bool)

(assert (=> bm!22827 m!262573))

(declare-fun m!262575 () Bool)

(assert (=> b!244728 m!262575))

(declare-fun m!262577 () Bool)

(assert (=> b!244705 m!262577))

(declare-fun m!262579 () Bool)

(assert (=> b!244730 m!262579))

(declare-fun m!262581 () Bool)

(assert (=> b!244724 m!262581))

(declare-fun m!262583 () Bool)

(assert (=> b!244711 m!262583))

(declare-fun m!262585 () Bool)

(assert (=> b!244710 m!262585))

(declare-fun m!262587 () Bool)

(assert (=> b!244708 m!262587))

(declare-fun m!262589 () Bool)

(assert (=> b!244726 m!262589))

(declare-fun m!262591 () Bool)

(assert (=> b!244726 m!262591))

(assert (=> b!244717 m!262575))

(declare-fun m!262593 () Bool)

(assert (=> b!244715 m!262593))

(declare-fun m!262595 () Bool)

(assert (=> b!244701 m!262595))

(declare-fun m!262597 () Bool)

(assert (=> b!244718 m!262597))

(assert (=> bm!22828 m!262571))

(check-sat (not mapNonEmpty!10864) (not b_next!6543) (not b!244728) (not b!244727) (not b!244718) (not b!244714) (not start!23302) (not b!244710) (not b!244702) tp_is_empty!6405 (not bm!22828) (not b!244717) (not bm!22827) (not b!244701) (not b!244705) (not b!244711) b_and!13547 (not b!244724) (not b!244708) (not b!244715) (not b!244726))
(check-sat b_and!13547 (not b_next!6543))

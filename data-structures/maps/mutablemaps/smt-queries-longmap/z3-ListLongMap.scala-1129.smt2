; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23226 () Bool)

(assert start!23226)

(declare-fun b!243576 () Bool)

(declare-fun b_free!6525 () Bool)

(declare-fun b_next!6525 () Bool)

(assert (=> b!243576 (= b_free!6525 (not b_next!6525))))

(declare-fun tp!22797 () Bool)

(declare-fun b_and!13525 () Bool)

(assert (=> b!243576 (= tp!22797 b_and!13525)))

(declare-fun b!243551 () Bool)

(declare-datatypes ((Unit!7510 0))(
  ( (Unit!7511) )
))
(declare-fun e!158076 () Unit!7510)

(declare-fun Unit!7512 () Unit!7510)

(assert (=> b!243551 (= e!158076 Unit!7512)))

(declare-fun lt!122261 () Unit!7510)

(declare-datatypes ((V!8163 0))(
  ( (V!8164 (val!3238 Int)) )
))
(declare-datatypes ((ValueCell!2850 0))(
  ( (ValueCellFull!2850 (v!5281 V!8163)) (EmptyCell!2850) )
))
(declare-datatypes ((array!12064 0))(
  ( (array!12065 (arr!5727 (Array (_ BitVec 32) ValueCell!2850)) (size!6069 (_ BitVec 32))) )
))
(declare-datatypes ((array!12066 0))(
  ( (array!12067 (arr!5728 (Array (_ BitVec 32) (_ BitVec 64))) (size!6070 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3600 0))(
  ( (LongMapFixedSize!3601 (defaultEntry!4513 Int) (mask!10606 (_ BitVec 32)) (extraKeys!4250 (_ BitVec 32)) (zeroValue!4354 V!8163) (minValue!4354 V!8163) (_size!1849 (_ BitVec 32)) (_keys!6624 array!12066) (_values!4496 array!12064) (_vacant!1849 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3600)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!361 (array!12066 array!12064 (_ BitVec 32) (_ BitVec 32) V!8163 V!8163 (_ BitVec 64) Int) Unit!7510)

(assert (=> b!243551 (= lt!122261 (lemmaInListMapThenSeekEntryOrOpenFindsIt!361 (_keys!6624 thiss!1504) (_values!4496 thiss!1504) (mask!10606 thiss!1504) (extraKeys!4250 thiss!1504) (zeroValue!4354 thiss!1504) (minValue!4354 thiss!1504) key!932 (defaultEntry!4513 thiss!1504)))))

(assert (=> b!243551 false))

(declare-fun b!243552 () Bool)

(declare-fun e!158075 () Bool)

(declare-datatypes ((List!3667 0))(
  ( (Nil!3664) (Cons!3663 (h!4320 (_ BitVec 64)) (t!8682 List!3667)) )
))
(declare-fun contains!1753 (List!3667 (_ BitVec 64)) Bool)

(assert (=> b!243552 (= e!158075 (not (contains!1753 Nil!3664 key!932)))))

(declare-fun b!243553 () Bool)

(declare-fun e!158071 () Bool)

(declare-fun call!22717 () Bool)

(assert (=> b!243553 (= e!158071 (not call!22717))))

(declare-fun b!243554 () Bool)

(declare-fun lt!122262 () Unit!7510)

(assert (=> b!243554 (= e!158076 lt!122262)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!367 (array!12066 array!12064 (_ BitVec 32) (_ BitVec 32) V!8163 V!8163 (_ BitVec 64) Int) Unit!7510)

(assert (=> b!243554 (= lt!122262 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!367 (_keys!6624 thiss!1504) (_values!4496 thiss!1504) (mask!10606 thiss!1504) (extraKeys!4250 thiss!1504) (zeroValue!4354 thiss!1504) (minValue!4354 thiss!1504) key!932 (defaultEntry!4513 thiss!1504)))))

(declare-fun c!40645 () Bool)

(declare-datatypes ((SeekEntryResult!1083 0))(
  ( (MissingZero!1083 (index!6502 (_ BitVec 32))) (Found!1083 (index!6503 (_ BitVec 32))) (Intermediate!1083 (undefined!1895 Bool) (index!6504 (_ BitVec 32)) (x!24343 (_ BitVec 32))) (Undefined!1083) (MissingVacant!1083 (index!6505 (_ BitVec 32))) )
))
(declare-fun lt!122264 () SeekEntryResult!1083)

(get-info :version)

(assert (=> b!243554 (= c!40645 ((_ is MissingZero!1083) lt!122264))))

(declare-fun e!158068 () Bool)

(assert (=> b!243554 e!158068))

(declare-fun b!243555 () Bool)

(declare-fun e!158079 () Bool)

(declare-fun e!158066 () Bool)

(declare-fun mapRes!10831 () Bool)

(assert (=> b!243555 (= e!158079 (and e!158066 mapRes!10831))))

(declare-fun condMapEmpty!10831 () Bool)

(declare-fun mapDefault!10831 () ValueCell!2850)

(assert (=> b!243555 (= condMapEmpty!10831 (= (arr!5727 (_values!4496 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2850)) mapDefault!10831)))))

(declare-fun b!243556 () Bool)

(declare-fun res!119398 () Bool)

(declare-fun e!158063 () Bool)

(assert (=> b!243556 (=> (not res!119398) (not e!158063))))

(assert (=> b!243556 (= res!119398 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!243557 () Bool)

(declare-fun res!119412 () Bool)

(declare-fun e!158065 () Bool)

(assert (=> b!243557 (=> (not res!119412) (not e!158065))))

(declare-fun call!22716 () Bool)

(assert (=> b!243557 (= res!119412 call!22716)))

(assert (=> b!243557 (= e!158068 e!158065)))

(declare-fun b!243558 () Bool)

(declare-fun tp_is_empty!6387 () Bool)

(assert (=> b!243558 (= e!158066 tp_is_empty!6387)))

(declare-fun b!243559 () Bool)

(declare-fun e!158074 () Bool)

(assert (=> b!243559 (= e!158074 ((_ is Undefined!1083) lt!122264))))

(declare-fun b!243560 () Bool)

(declare-fun e!158078 () Bool)

(declare-fun e!158073 () Bool)

(assert (=> b!243560 (= e!158078 e!158073)))

(declare-fun res!119405 () Bool)

(assert (=> b!243560 (=> (not res!119405) (not e!158073))))

(assert (=> b!243560 (= res!119405 (and (bvslt (size!6070 (_keys!6624 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6070 (_keys!6624 thiss!1504)))))))

(declare-fun lt!122263 () Unit!7510)

(declare-fun e!158077 () Unit!7510)

(assert (=> b!243560 (= lt!122263 e!158077)))

(declare-fun c!40644 () Bool)

(declare-fun arrayContainsKey!0 (array!12066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!243560 (= c!40644 (arrayContainsKey!0 (_keys!6624 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243561 () Bool)

(declare-fun Unit!7513 () Unit!7510)

(assert (=> b!243561 (= e!158077 Unit!7513)))

(declare-fun lt!122259 () Unit!7510)

(declare-fun lemmaArrayContainsKeyThenInListMap!166 (array!12066 array!12064 (_ BitVec 32) (_ BitVec 32) V!8163 V!8163 (_ BitVec 64) (_ BitVec 32) Int) Unit!7510)

(assert (=> b!243561 (= lt!122259 (lemmaArrayContainsKeyThenInListMap!166 (_keys!6624 thiss!1504) (_values!4496 thiss!1504) (mask!10606 thiss!1504) (extraKeys!4250 thiss!1504) (zeroValue!4354 thiss!1504) (minValue!4354 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4513 thiss!1504)))))

(assert (=> b!243561 false))

(declare-fun b!243562 () Bool)

(assert (=> b!243562 (= e!158074 e!158071)))

(declare-fun res!119399 () Bool)

(assert (=> b!243562 (= res!119399 call!22716)))

(assert (=> b!243562 (=> (not res!119399) (not e!158071))))

(declare-fun b!243563 () Bool)

(declare-fun c!40643 () Bool)

(assert (=> b!243563 (= c!40643 ((_ is MissingVacant!1083) lt!122264))))

(assert (=> b!243563 (= e!158068 e!158074)))

(declare-fun b!243564 () Bool)

(declare-fun e!158067 () Bool)

(assert (=> b!243564 (= e!158067 (contains!1753 Nil!3664 key!932))))

(declare-fun b!243565 () Bool)

(declare-fun e!158072 () Bool)

(assert (=> b!243565 (= e!158072 e!158075)))

(declare-fun res!119401 () Bool)

(assert (=> b!243565 (=> (not res!119401) (not e!158075))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!243565 (= res!119401 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun bm!22713 () Bool)

(assert (=> bm!22713 (= call!22717 (arrayContainsKey!0 (_keys!6624 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243566 () Bool)

(declare-fun res!119403 () Bool)

(assert (=> b!243566 (=> (not res!119403) (not e!158073))))

(assert (=> b!243566 (= res!119403 (not (contains!1753 Nil!3664 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!10831 () Bool)

(assert (=> mapIsEmpty!10831 mapRes!10831))

(declare-fun b!243567 () Bool)

(declare-fun res!119406 () Bool)

(assert (=> b!243567 (=> (not res!119406) (not e!158073))))

(assert (=> b!243567 (= res!119406 e!158072)))

(declare-fun res!119408 () Bool)

(assert (=> b!243567 (=> res!119408 e!158072)))

(assert (=> b!243567 (= res!119408 e!158067)))

(declare-fun res!119410 () Bool)

(assert (=> b!243567 (=> (not res!119410) (not e!158067))))

(assert (=> b!243567 (= res!119410 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!243568 () Bool)

(declare-fun e!158070 () Bool)

(assert (=> b!243568 (= e!158070 e!158078)))

(declare-fun res!119402 () Bool)

(assert (=> b!243568 (=> (not res!119402) (not e!158078))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!243568 (= res!119402 (inRange!0 index!297 (mask!10606 thiss!1504)))))

(declare-fun lt!122260 () Unit!7510)

(assert (=> b!243568 (= lt!122260 e!158076)))

(declare-fun c!40646 () Bool)

(declare-datatypes ((tuple2!4762 0))(
  ( (tuple2!4763 (_1!2391 (_ BitVec 64)) (_2!2391 V!8163)) )
))
(declare-datatypes ((List!3668 0))(
  ( (Nil!3665) (Cons!3664 (h!4321 tuple2!4762) (t!8683 List!3668)) )
))
(declare-datatypes ((ListLongMap!3689 0))(
  ( (ListLongMap!3690 (toList!1860 List!3668)) )
))
(declare-fun contains!1754 (ListLongMap!3689 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1383 (array!12066 array!12064 (_ BitVec 32) (_ BitVec 32) V!8163 V!8163 (_ BitVec 32) Int) ListLongMap!3689)

(assert (=> b!243568 (= c!40646 (contains!1754 (getCurrentListMap!1383 (_keys!6624 thiss!1504) (_values!4496 thiss!1504) (mask!10606 thiss!1504) (extraKeys!4250 thiss!1504) (zeroValue!4354 thiss!1504) (minValue!4354 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4513 thiss!1504)) key!932))))

(declare-fun bm!22714 () Bool)

(assert (=> bm!22714 (= call!22716 (inRange!0 (ite c!40645 (index!6502 lt!122264) (index!6505 lt!122264)) (mask!10606 thiss!1504)))))

(declare-fun b!243569 () Bool)

(assert (=> b!243569 (= e!158073 false)))

(declare-fun lt!122258 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12066 (_ BitVec 32) List!3667) Bool)

(assert (=> b!243569 (= lt!122258 (arrayNoDuplicates!0 (_keys!6624 thiss!1504) #b00000000000000000000000000000000 Nil!3664))))

(declare-fun res!119400 () Bool)

(assert (=> start!23226 (=> (not res!119400) (not e!158063))))

(declare-fun valid!1403 (LongMapFixedSize!3600) Bool)

(assert (=> start!23226 (= res!119400 (valid!1403 thiss!1504))))

(assert (=> start!23226 e!158063))

(declare-fun e!158064 () Bool)

(assert (=> start!23226 e!158064))

(assert (=> start!23226 true))

(declare-fun b!243570 () Bool)

(declare-fun res!119409 () Bool)

(assert (=> b!243570 (=> (not res!119409) (not e!158065))))

(assert (=> b!243570 (= res!119409 (= (select (arr!5728 (_keys!6624 thiss!1504)) (index!6502 lt!122264)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243571 () Bool)

(declare-fun res!119411 () Bool)

(assert (=> b!243571 (=> (not res!119411) (not e!158073))))

(declare-fun noDuplicate!97 (List!3667) Bool)

(assert (=> b!243571 (= res!119411 (noDuplicate!97 Nil!3664))))

(declare-fun b!243572 () Bool)

(declare-fun Unit!7514 () Unit!7510)

(assert (=> b!243572 (= e!158077 Unit!7514)))

(declare-fun b!243573 () Bool)

(declare-fun res!119404 () Bool)

(assert (=> b!243573 (= res!119404 (= (select (arr!5728 (_keys!6624 thiss!1504)) (index!6505 lt!122264)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243573 (=> (not res!119404) (not e!158071))))

(declare-fun b!243574 () Bool)

(declare-fun e!158069 () Bool)

(assert (=> b!243574 (= e!158069 tp_is_empty!6387)))

(declare-fun b!243575 () Bool)

(assert (=> b!243575 (= e!158063 e!158070)))

(declare-fun res!119407 () Bool)

(assert (=> b!243575 (=> (not res!119407) (not e!158070))))

(assert (=> b!243575 (= res!119407 (or (= lt!122264 (MissingZero!1083 index!297)) (= lt!122264 (MissingVacant!1083 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12066 (_ BitVec 32)) SeekEntryResult!1083)

(assert (=> b!243575 (= lt!122264 (seekEntryOrOpen!0 key!932 (_keys!6624 thiss!1504) (mask!10606 thiss!1504)))))

(declare-fun array_inv!3779 (array!12066) Bool)

(declare-fun array_inv!3780 (array!12064) Bool)

(assert (=> b!243576 (= e!158064 (and tp!22797 tp_is_empty!6387 (array_inv!3779 (_keys!6624 thiss!1504)) (array_inv!3780 (_values!4496 thiss!1504)) e!158079))))

(declare-fun mapNonEmpty!10831 () Bool)

(declare-fun tp!22798 () Bool)

(assert (=> mapNonEmpty!10831 (= mapRes!10831 (and tp!22798 e!158069))))

(declare-fun mapRest!10831 () (Array (_ BitVec 32) ValueCell!2850))

(declare-fun mapValue!10831 () ValueCell!2850)

(declare-fun mapKey!10831 () (_ BitVec 32))

(assert (=> mapNonEmpty!10831 (= (arr!5727 (_values!4496 thiss!1504)) (store mapRest!10831 mapKey!10831 mapValue!10831))))

(declare-fun b!243577 () Bool)

(assert (=> b!243577 (= e!158065 (not call!22717))))

(declare-fun b!243578 () Bool)

(declare-fun res!119413 () Bool)

(assert (=> b!243578 (=> (not res!119413) (not e!158073))))

(assert (=> b!243578 (= res!119413 (not (contains!1753 Nil!3664 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!23226 res!119400) b!243556))

(assert (= (and b!243556 res!119398) b!243575))

(assert (= (and b!243575 res!119407) b!243568))

(assert (= (and b!243568 c!40646) b!243551))

(assert (= (and b!243568 (not c!40646)) b!243554))

(assert (= (and b!243554 c!40645) b!243557))

(assert (= (and b!243554 (not c!40645)) b!243563))

(assert (= (and b!243557 res!119412) b!243570))

(assert (= (and b!243570 res!119409) b!243577))

(assert (= (and b!243563 c!40643) b!243562))

(assert (= (and b!243563 (not c!40643)) b!243559))

(assert (= (and b!243562 res!119399) b!243573))

(assert (= (and b!243573 res!119404) b!243553))

(assert (= (or b!243557 b!243562) bm!22714))

(assert (= (or b!243577 b!243553) bm!22713))

(assert (= (and b!243568 res!119402) b!243560))

(assert (= (and b!243560 c!40644) b!243561))

(assert (= (and b!243560 (not c!40644)) b!243572))

(assert (= (and b!243560 res!119405) b!243571))

(assert (= (and b!243571 res!119411) b!243578))

(assert (= (and b!243578 res!119413) b!243566))

(assert (= (and b!243566 res!119403) b!243567))

(assert (= (and b!243567 res!119410) b!243564))

(assert (= (and b!243567 (not res!119408)) b!243565))

(assert (= (and b!243565 res!119401) b!243552))

(assert (= (and b!243567 res!119406) b!243569))

(assert (= (and b!243555 condMapEmpty!10831) mapIsEmpty!10831))

(assert (= (and b!243555 (not condMapEmpty!10831)) mapNonEmpty!10831))

(assert (= (and mapNonEmpty!10831 ((_ is ValueCellFull!2850) mapValue!10831)) b!243574))

(assert (= (and b!243555 ((_ is ValueCellFull!2850) mapDefault!10831)) b!243558))

(assert (= b!243576 b!243555))

(assert (= start!23226 b!243576))

(declare-fun m!261929 () Bool)

(assert (=> b!243571 m!261929))

(declare-fun m!261931 () Bool)

(assert (=> bm!22714 m!261931))

(declare-fun m!261933 () Bool)

(assert (=> b!243568 m!261933))

(declare-fun m!261935 () Bool)

(assert (=> b!243568 m!261935))

(assert (=> b!243568 m!261935))

(declare-fun m!261937 () Bool)

(assert (=> b!243568 m!261937))

(declare-fun m!261939 () Bool)

(assert (=> bm!22713 m!261939))

(declare-fun m!261941 () Bool)

(assert (=> b!243552 m!261941))

(declare-fun m!261943 () Bool)

(assert (=> b!243561 m!261943))

(declare-fun m!261945 () Bool)

(assert (=> b!243566 m!261945))

(declare-fun m!261947 () Bool)

(assert (=> start!23226 m!261947))

(assert (=> b!243560 m!261939))

(declare-fun m!261949 () Bool)

(assert (=> b!243570 m!261949))

(declare-fun m!261951 () Bool)

(assert (=> mapNonEmpty!10831 m!261951))

(declare-fun m!261953 () Bool)

(assert (=> b!243551 m!261953))

(assert (=> b!243564 m!261941))

(declare-fun m!261955 () Bool)

(assert (=> b!243575 m!261955))

(declare-fun m!261957 () Bool)

(assert (=> b!243578 m!261957))

(declare-fun m!261959 () Bool)

(assert (=> b!243569 m!261959))

(declare-fun m!261961 () Bool)

(assert (=> b!243573 m!261961))

(declare-fun m!261963 () Bool)

(assert (=> b!243554 m!261963))

(declare-fun m!261965 () Bool)

(assert (=> b!243576 m!261965))

(declare-fun m!261967 () Bool)

(assert (=> b!243576 m!261967))

(check-sat (not b!243561) (not b!243566) (not b!243560) (not b!243578) (not b!243568) (not b!243554) (not start!23226) (not bm!22713) (not b!243569) b_and!13525 (not b!243551) (not b!243552) (not b!243571) (not b!243575) (not bm!22714) (not mapNonEmpty!10831) (not b!243576) tp_is_empty!6387 (not b_next!6525) (not b!243564))
(check-sat b_and!13525 (not b_next!6525))

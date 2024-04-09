; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23070 () Bool)

(assert start!23070)

(declare-fun b!241652 () Bool)

(declare-fun b_free!6495 () Bool)

(declare-fun b_next!6495 () Bool)

(assert (=> b!241652 (= b_free!6495 (not b_next!6495))))

(declare-fun tp!22692 () Bool)

(declare-fun b_and!13485 () Bool)

(assert (=> b!241652 (= tp!22692 b_and!13485)))

(declare-fun b!241648 () Bool)

(declare-fun res!118451 () Bool)

(declare-datatypes ((V!8123 0))(
  ( (V!8124 (val!3223 Int)) )
))
(declare-datatypes ((ValueCell!2835 0))(
  ( (ValueCellFull!2835 (v!5258 V!8123)) (EmptyCell!2835) )
))
(declare-datatypes ((array!11994 0))(
  ( (array!11995 (arr!5697 (Array (_ BitVec 32) ValueCell!2835)) (size!6039 (_ BitVec 32))) )
))
(declare-datatypes ((array!11996 0))(
  ( (array!11997 (arr!5698 (Array (_ BitVec 32) (_ BitVec 64))) (size!6040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3570 0))(
  ( (LongMapFixedSize!3571 (defaultEntry!4478 Int) (mask!10551 (_ BitVec 32)) (extraKeys!4215 (_ BitVec 32)) (zeroValue!4319 V!8123) (minValue!4319 V!8123) (_size!1834 (_ BitVec 32)) (_keys!6584 array!11996) (_values!4461 array!11994) (_vacant!1834 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3570)

(declare-datatypes ((SeekEntryResult!1069 0))(
  ( (MissingZero!1069 (index!6446 (_ BitVec 32))) (Found!1069 (index!6447 (_ BitVec 32))) (Intermediate!1069 (undefined!1881 Bool) (index!6448 (_ BitVec 32)) (x!24239 (_ BitVec 32))) (Undefined!1069) (MissingVacant!1069 (index!6449 (_ BitVec 32))) )
))
(declare-fun lt!121460 () SeekEntryResult!1069)

(assert (=> b!241648 (= res!118451 (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6449 lt!121460)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156839 () Bool)

(assert (=> b!241648 (=> (not res!118451) (not e!156839))))

(declare-fun b!241649 () Bool)

(declare-datatypes ((Unit!7441 0))(
  ( (Unit!7442) )
))
(declare-fun e!156847 () Unit!7441)

(declare-fun Unit!7443 () Unit!7441)

(assert (=> b!241649 (= e!156847 Unit!7443)))

(declare-fun b!241651 () Bool)

(declare-fun e!156844 () Bool)

(declare-fun tp_is_empty!6357 () Bool)

(assert (=> b!241651 (= e!156844 tp_is_empty!6357)))

(declare-fun mapNonEmpty!10771 () Bool)

(declare-fun mapRes!10771 () Bool)

(declare-fun tp!22693 () Bool)

(declare-fun e!156840 () Bool)

(assert (=> mapNonEmpty!10771 (= mapRes!10771 (and tp!22693 e!156840))))

(declare-fun mapKey!10771 () (_ BitVec 32))

(declare-fun mapValue!10771 () ValueCell!2835)

(declare-fun mapRest!10771 () (Array (_ BitVec 32) ValueCell!2835))

(assert (=> mapNonEmpty!10771 (= (arr!5697 (_values!4461 thiss!1504)) (store mapRest!10771 mapKey!10771 mapValue!10771))))

(declare-fun e!156850 () Bool)

(declare-fun e!156843 () Bool)

(declare-fun array_inv!3763 (array!11996) Bool)

(declare-fun array_inv!3764 (array!11994) Bool)

(assert (=> b!241652 (= e!156843 (and tp!22692 tp_is_empty!6357 (array_inv!3763 (_keys!6584 thiss!1504)) (array_inv!3764 (_values!4461 thiss!1504)) e!156850))))

(declare-fun b!241653 () Bool)

(declare-fun e!156851 () Bool)

(declare-fun e!156842 () Bool)

(assert (=> b!241653 (= e!156851 e!156842)))

(declare-fun res!118458 () Bool)

(assert (=> b!241653 (=> (not res!118458) (not e!156842))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!241653 (= res!118458 (inRange!0 index!297 (mask!10551 thiss!1504)))))

(declare-fun lt!121459 () Unit!7441)

(declare-fun e!156848 () Unit!7441)

(assert (=> b!241653 (= lt!121459 e!156848)))

(declare-fun c!40280 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4742 0))(
  ( (tuple2!4743 (_1!2381 (_ BitVec 64)) (_2!2381 V!8123)) )
))
(declare-datatypes ((List!3645 0))(
  ( (Nil!3642) (Cons!3641 (h!4298 tuple2!4742) (t!8650 List!3645)) )
))
(declare-datatypes ((ListLongMap!3669 0))(
  ( (ListLongMap!3670 (toList!1850 List!3645)) )
))
(declare-fun contains!1734 (ListLongMap!3669 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1373 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 32) Int) ListLongMap!3669)

(assert (=> b!241653 (= c!40280 (contains!1734 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10771 () Bool)

(assert (=> mapIsEmpty!10771 mapRes!10771))

(declare-fun b!241654 () Bool)

(assert (=> b!241654 (= e!156842 (and (bvslt (size!6040 (_keys!6584 thiss!1504)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504)))))))

(declare-fun lt!121461 () Unit!7441)

(assert (=> b!241654 (= lt!121461 e!156847)))

(declare-fun c!40283 () Bool)

(declare-fun arrayContainsKey!0 (array!11996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!241654 (= c!40283 (arrayContainsKey!0 (_keys!6584 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241655 () Bool)

(declare-fun e!156846 () Bool)

(get-info :version)

(assert (=> b!241655 (= e!156846 ((_ is Undefined!1069) lt!121460))))

(declare-fun b!241656 () Bool)

(assert (=> b!241656 (= e!156850 (and e!156844 mapRes!10771))))

(declare-fun condMapEmpty!10771 () Bool)

(declare-fun mapDefault!10771 () ValueCell!2835)

(assert (=> b!241656 (= condMapEmpty!10771 (= (arr!5697 (_values!4461 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2835)) mapDefault!10771)))))

(declare-fun b!241657 () Bool)

(declare-fun call!22488 () Bool)

(assert (=> b!241657 (= e!156839 (not call!22488))))

(declare-fun b!241658 () Bool)

(assert (=> b!241658 (= e!156840 tp_is_empty!6357)))

(declare-fun b!241659 () Bool)

(declare-fun Unit!7444 () Unit!7441)

(assert (=> b!241659 (= e!156847 Unit!7444)))

(declare-fun lt!121462 () Unit!7441)

(declare-fun lemmaArrayContainsKeyThenInListMap!154 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 64) (_ BitVec 32) Int) Unit!7441)

(assert (=> b!241659 (= lt!121462 (lemmaArrayContainsKeyThenInListMap!154 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(assert (=> b!241659 false))

(declare-fun res!118456 () Bool)

(declare-fun e!156849 () Bool)

(assert (=> start!23070 (=> (not res!118456) (not e!156849))))

(declare-fun valid!1394 (LongMapFixedSize!3570) Bool)

(assert (=> start!23070 (= res!118456 (valid!1394 thiss!1504))))

(assert (=> start!23070 e!156849))

(assert (=> start!23070 e!156843))

(assert (=> start!23070 true))

(declare-fun b!241650 () Bool)

(declare-fun res!118455 () Bool)

(declare-fun e!156845 () Bool)

(assert (=> b!241650 (=> (not res!118455) (not e!156845))))

(assert (=> b!241650 (= res!118455 (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6446 lt!121460)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!22489 () Bool)

(declare-fun bm!22485 () Bool)

(declare-fun c!40282 () Bool)

(assert (=> bm!22485 (= call!22489 (inRange!0 (ite c!40282 (index!6446 lt!121460) (index!6449 lt!121460)) (mask!10551 thiss!1504)))))

(declare-fun b!241660 () Bool)

(declare-fun c!40281 () Bool)

(assert (=> b!241660 (= c!40281 ((_ is MissingVacant!1069) lt!121460))))

(declare-fun e!156852 () Bool)

(assert (=> b!241660 (= e!156852 e!156846)))

(declare-fun b!241661 () Bool)

(assert (=> b!241661 (= e!156849 e!156851)))

(declare-fun res!118457 () Bool)

(assert (=> b!241661 (=> (not res!118457) (not e!156851))))

(assert (=> b!241661 (= res!118457 (or (= lt!121460 (MissingZero!1069 index!297)) (= lt!121460 (MissingVacant!1069 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11996 (_ BitVec 32)) SeekEntryResult!1069)

(assert (=> b!241661 (= lt!121460 (seekEntryOrOpen!0 key!932 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)))))

(declare-fun b!241662 () Bool)

(declare-fun Unit!7445 () Unit!7441)

(assert (=> b!241662 (= e!156848 Unit!7445)))

(declare-fun lt!121464 () Unit!7441)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!351 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 64) Int) Unit!7441)

(assert (=> b!241662 (= lt!121464 (lemmaInListMapThenSeekEntryOrOpenFindsIt!351 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 (defaultEntry!4478 thiss!1504)))))

(assert (=> b!241662 false))

(declare-fun b!241663 () Bool)

(declare-fun res!118452 () Bool)

(assert (=> b!241663 (=> (not res!118452) (not e!156849))))

(assert (=> b!241663 (= res!118452 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!241664 () Bool)

(assert (=> b!241664 (= e!156845 (not call!22488))))

(declare-fun b!241665 () Bool)

(declare-fun res!118454 () Bool)

(assert (=> b!241665 (=> (not res!118454) (not e!156845))))

(assert (=> b!241665 (= res!118454 call!22489)))

(assert (=> b!241665 (= e!156852 e!156845)))

(declare-fun bm!22486 () Bool)

(assert (=> bm!22486 (= call!22488 (arrayContainsKey!0 (_keys!6584 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241666 () Bool)

(assert (=> b!241666 (= e!156846 e!156839)))

(declare-fun res!118453 () Bool)

(assert (=> b!241666 (= res!118453 call!22489)))

(assert (=> b!241666 (=> (not res!118453) (not e!156839))))

(declare-fun b!241667 () Bool)

(declare-fun lt!121463 () Unit!7441)

(assert (=> b!241667 (= e!156848 lt!121463)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!357 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 64) Int) Unit!7441)

(assert (=> b!241667 (= lt!121463 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!357 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 (defaultEntry!4478 thiss!1504)))))

(assert (=> b!241667 (= c!40282 ((_ is MissingZero!1069) lt!121460))))

(assert (=> b!241667 e!156852))

(assert (= (and start!23070 res!118456) b!241663))

(assert (= (and b!241663 res!118452) b!241661))

(assert (= (and b!241661 res!118457) b!241653))

(assert (= (and b!241653 c!40280) b!241662))

(assert (= (and b!241653 (not c!40280)) b!241667))

(assert (= (and b!241667 c!40282) b!241665))

(assert (= (and b!241667 (not c!40282)) b!241660))

(assert (= (and b!241665 res!118454) b!241650))

(assert (= (and b!241650 res!118455) b!241664))

(assert (= (and b!241660 c!40281) b!241666))

(assert (= (and b!241660 (not c!40281)) b!241655))

(assert (= (and b!241666 res!118453) b!241648))

(assert (= (and b!241648 res!118451) b!241657))

(assert (= (or b!241665 b!241666) bm!22485))

(assert (= (or b!241664 b!241657) bm!22486))

(assert (= (and b!241653 res!118458) b!241654))

(assert (= (and b!241654 c!40283) b!241659))

(assert (= (and b!241654 (not c!40283)) b!241649))

(assert (= (and b!241656 condMapEmpty!10771) mapIsEmpty!10771))

(assert (= (and b!241656 (not condMapEmpty!10771)) mapNonEmpty!10771))

(assert (= (and mapNonEmpty!10771 ((_ is ValueCellFull!2835) mapValue!10771)) b!241658))

(assert (= (and b!241656 ((_ is ValueCellFull!2835) mapDefault!10771)) b!241651))

(assert (= b!241652 b!241656))

(assert (= start!23070 b!241652))

(declare-fun m!260785 () Bool)

(assert (=> bm!22485 m!260785))

(declare-fun m!260787 () Bool)

(assert (=> b!241652 m!260787))

(declare-fun m!260789 () Bool)

(assert (=> b!241652 m!260789))

(declare-fun m!260791 () Bool)

(assert (=> b!241659 m!260791))

(declare-fun m!260793 () Bool)

(assert (=> b!241650 m!260793))

(declare-fun m!260795 () Bool)

(assert (=> b!241648 m!260795))

(declare-fun m!260797 () Bool)

(assert (=> b!241654 m!260797))

(declare-fun m!260799 () Bool)

(assert (=> mapNonEmpty!10771 m!260799))

(assert (=> bm!22486 m!260797))

(declare-fun m!260801 () Bool)

(assert (=> b!241662 m!260801))

(declare-fun m!260803 () Bool)

(assert (=> b!241653 m!260803))

(declare-fun m!260805 () Bool)

(assert (=> b!241653 m!260805))

(assert (=> b!241653 m!260805))

(declare-fun m!260807 () Bool)

(assert (=> b!241653 m!260807))

(declare-fun m!260809 () Bool)

(assert (=> b!241661 m!260809))

(declare-fun m!260811 () Bool)

(assert (=> b!241667 m!260811))

(declare-fun m!260813 () Bool)

(assert (=> start!23070 m!260813))

(check-sat (not b!241661) (not bm!22486) (not b!241652) tp_is_empty!6357 (not b!241659) (not b_next!6495) (not b!241662) b_and!13485 (not b!241667) (not b!241654) (not b!241653) (not start!23070) (not bm!22485) (not mapNonEmpty!10771))
(check-sat b_and!13485 (not b_next!6495))
(get-model)

(declare-fun d!59829 () Bool)

(assert (=> d!59829 (= (inRange!0 index!297 (mask!10551 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10551 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!241653 d!59829))

(declare-fun d!59831 () Bool)

(declare-fun e!156900 () Bool)

(assert (=> d!59831 e!156900))

(declare-fun res!118485 () Bool)

(assert (=> d!59831 (=> res!118485 e!156900)))

(declare-fun lt!121492 () Bool)

(assert (=> d!59831 (= res!118485 (not lt!121492))))

(declare-fun lt!121493 () Bool)

(assert (=> d!59831 (= lt!121492 lt!121493)))

(declare-fun lt!121494 () Unit!7441)

(declare-fun e!156899 () Unit!7441)

(assert (=> d!59831 (= lt!121494 e!156899)))

(declare-fun c!40298 () Bool)

(assert (=> d!59831 (= c!40298 lt!121493)))

(declare-fun containsKey!271 (List!3645 (_ BitVec 64)) Bool)

(assert (=> d!59831 (= lt!121493 (containsKey!271 (toList!1850 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504))) key!932))))

(assert (=> d!59831 (= (contains!1734 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)) key!932) lt!121492)))

(declare-fun b!241734 () Bool)

(declare-fun lt!121491 () Unit!7441)

(assert (=> b!241734 (= e!156899 lt!121491)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!220 (List!3645 (_ BitVec 64)) Unit!7441)

(assert (=> b!241734 (= lt!121491 (lemmaContainsKeyImpliesGetValueByKeyDefined!220 (toList!1850 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504))) key!932))))

(declare-datatypes ((Option!285 0))(
  ( (Some!284 (v!5260 V!8123)) (None!283) )
))
(declare-fun isDefined!221 (Option!285) Bool)

(declare-fun getValueByKey!279 (List!3645 (_ BitVec 64)) Option!285)

(assert (=> b!241734 (isDefined!221 (getValueByKey!279 (toList!1850 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504))) key!932))))

(declare-fun b!241735 () Bool)

(declare-fun Unit!7451 () Unit!7441)

(assert (=> b!241735 (= e!156899 Unit!7451)))

(declare-fun b!241736 () Bool)

(assert (=> b!241736 (= e!156900 (isDefined!221 (getValueByKey!279 (toList!1850 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504))) key!932)))))

(assert (= (and d!59831 c!40298) b!241734))

(assert (= (and d!59831 (not c!40298)) b!241735))

(assert (= (and d!59831 (not res!118485)) b!241736))

(declare-fun m!260845 () Bool)

(assert (=> d!59831 m!260845))

(declare-fun m!260847 () Bool)

(assert (=> b!241734 m!260847))

(declare-fun m!260849 () Bool)

(assert (=> b!241734 m!260849))

(assert (=> b!241734 m!260849))

(declare-fun m!260851 () Bool)

(assert (=> b!241734 m!260851))

(assert (=> b!241736 m!260849))

(assert (=> b!241736 m!260849))

(assert (=> b!241736 m!260851))

(assert (=> b!241653 d!59831))

(declare-fun bm!22507 () Bool)

(declare-fun call!22511 () Bool)

(declare-fun lt!121551 () ListLongMap!3669)

(assert (=> bm!22507 (= call!22511 (contains!1734 lt!121551 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241779 () Bool)

(declare-fun e!156929 () Bool)

(declare-fun e!156930 () Bool)

(assert (=> b!241779 (= e!156929 e!156930)))

(declare-fun res!118510 () Bool)

(declare-fun call!22516 () Bool)

(assert (=> b!241779 (= res!118510 call!22516)))

(assert (=> b!241779 (=> (not res!118510) (not e!156930))))

(declare-fun b!241780 () Bool)

(assert (=> b!241780 (= e!156929 (not call!22516))))

(declare-fun b!241781 () Bool)

(declare-fun e!156939 () Unit!7441)

(declare-fun lt!121544 () Unit!7441)

(assert (=> b!241781 (= e!156939 lt!121544)))

(declare-fun lt!121548 () ListLongMap!3669)

(declare-fun getCurrentListMapNoExtraKeys!541 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 32) Int) ListLongMap!3669)

(assert (=> b!241781 (= lt!121548 (getCurrentListMapNoExtraKeys!541 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(declare-fun lt!121545 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121550 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121550 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121556 () Unit!7441)

(declare-fun addStillContains!198 (ListLongMap!3669 (_ BitVec 64) V!8123 (_ BitVec 64)) Unit!7441)

(assert (=> b!241781 (= lt!121556 (addStillContains!198 lt!121548 lt!121545 (zeroValue!4319 thiss!1504) lt!121550))))

(declare-fun +!644 (ListLongMap!3669 tuple2!4742) ListLongMap!3669)

(assert (=> b!241781 (contains!1734 (+!644 lt!121548 (tuple2!4743 lt!121545 (zeroValue!4319 thiss!1504))) lt!121550)))

(declare-fun lt!121560 () Unit!7441)

(assert (=> b!241781 (= lt!121560 lt!121556)))

(declare-fun lt!121554 () ListLongMap!3669)

(assert (=> b!241781 (= lt!121554 (getCurrentListMapNoExtraKeys!541 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(declare-fun lt!121552 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121552 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121543 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121543 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121555 () Unit!7441)

(declare-fun addApplyDifferent!198 (ListLongMap!3669 (_ BitVec 64) V!8123 (_ BitVec 64)) Unit!7441)

(assert (=> b!241781 (= lt!121555 (addApplyDifferent!198 lt!121554 lt!121552 (minValue!4319 thiss!1504) lt!121543))))

(declare-fun apply!222 (ListLongMap!3669 (_ BitVec 64)) V!8123)

(assert (=> b!241781 (= (apply!222 (+!644 lt!121554 (tuple2!4743 lt!121552 (minValue!4319 thiss!1504))) lt!121543) (apply!222 lt!121554 lt!121543))))

(declare-fun lt!121540 () Unit!7441)

(assert (=> b!241781 (= lt!121540 lt!121555)))

(declare-fun lt!121546 () ListLongMap!3669)

(assert (=> b!241781 (= lt!121546 (getCurrentListMapNoExtraKeys!541 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(declare-fun lt!121539 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121539 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121557 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121557 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121553 () Unit!7441)

(assert (=> b!241781 (= lt!121553 (addApplyDifferent!198 lt!121546 lt!121539 (zeroValue!4319 thiss!1504) lt!121557))))

(assert (=> b!241781 (= (apply!222 (+!644 lt!121546 (tuple2!4743 lt!121539 (zeroValue!4319 thiss!1504))) lt!121557) (apply!222 lt!121546 lt!121557))))

(declare-fun lt!121541 () Unit!7441)

(assert (=> b!241781 (= lt!121541 lt!121553)))

(declare-fun lt!121549 () ListLongMap!3669)

(assert (=> b!241781 (= lt!121549 (getCurrentListMapNoExtraKeys!541 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(declare-fun lt!121559 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121559 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121558 () (_ BitVec 64))

(assert (=> b!241781 (= lt!121558 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241781 (= lt!121544 (addApplyDifferent!198 lt!121549 lt!121559 (minValue!4319 thiss!1504) lt!121558))))

(assert (=> b!241781 (= (apply!222 (+!644 lt!121549 (tuple2!4743 lt!121559 (minValue!4319 thiss!1504))) lt!121558) (apply!222 lt!121549 lt!121558))))

(declare-fun b!241782 () Bool)

(declare-fun e!156934 () ListLongMap!3669)

(declare-fun call!22510 () ListLongMap!3669)

(assert (=> b!241782 (= e!156934 call!22510)))

(declare-fun bm!22509 () Bool)

(declare-fun call!22514 () ListLongMap!3669)

(declare-fun call!22512 () ListLongMap!3669)

(assert (=> bm!22509 (= call!22514 call!22512)))

(declare-fun bm!22510 () Bool)

(assert (=> bm!22510 (= call!22512 (getCurrentListMapNoExtraKeys!541 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(declare-fun b!241783 () Bool)

(declare-fun e!156938 () Bool)

(declare-fun e!156932 () Bool)

(assert (=> b!241783 (= e!156938 e!156932)))

(declare-fun res!118512 () Bool)

(assert (=> b!241783 (= res!118512 call!22511)))

(assert (=> b!241783 (=> (not res!118512) (not e!156932))))

(declare-fun b!241784 () Bool)

(declare-fun res!118506 () Bool)

(declare-fun e!156931 () Bool)

(assert (=> b!241784 (=> (not res!118506) (not e!156931))))

(declare-fun e!156927 () Bool)

(assert (=> b!241784 (= res!118506 e!156927)))

(declare-fun res!118509 () Bool)

(assert (=> b!241784 (=> res!118509 e!156927)))

(declare-fun e!156933 () Bool)

(assert (=> b!241784 (= res!118509 (not e!156933))))

(declare-fun res!118507 () Bool)

(assert (=> b!241784 (=> (not res!118507) (not e!156933))))

(assert (=> b!241784 (= res!118507 (bvslt #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))))))

(declare-fun b!241785 () Bool)

(assert (=> b!241785 (= e!156932 (= (apply!222 lt!121551 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4319 thiss!1504)))))

(declare-fun bm!22508 () Bool)

(assert (=> bm!22508 (= call!22516 (contains!1734 lt!121551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!59833 () Bool)

(assert (=> d!59833 e!156931))

(declare-fun res!118511 () Bool)

(assert (=> d!59833 (=> (not res!118511) (not e!156931))))

(assert (=> d!59833 (= res!118511 (or (bvsge #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))))))))

(declare-fun lt!121542 () ListLongMap!3669)

(assert (=> d!59833 (= lt!121551 lt!121542)))

(declare-fun lt!121547 () Unit!7441)

(assert (=> d!59833 (= lt!121547 e!156939)))

(declare-fun c!40313 () Bool)

(declare-fun e!156937 () Bool)

(assert (=> d!59833 (= c!40313 e!156937)))

(declare-fun res!118508 () Bool)

(assert (=> d!59833 (=> (not res!118508) (not e!156937))))

(assert (=> d!59833 (= res!118508 (bvslt #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))))))

(declare-fun e!156928 () ListLongMap!3669)

(assert (=> d!59833 (= lt!121542 e!156928)))

(declare-fun c!40314 () Bool)

(assert (=> d!59833 (= c!40314 (and (not (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59833 (validMask!0 (mask!10551 thiss!1504))))

(assert (=> d!59833 (= (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)) lt!121551)))

(declare-fun b!241786 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!241786 (= e!156933 (validKeyInArray!0 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241787 () Bool)

(assert (=> b!241787 (= e!156930 (= (apply!222 lt!121551 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4319 thiss!1504)))))

(declare-fun b!241788 () Bool)

(declare-fun e!156936 () Bool)

(declare-fun get!2927 (ValueCell!2835 V!8123) V!8123)

(declare-fun dynLambda!560 (Int (_ BitVec 64)) V!8123)

(assert (=> b!241788 (= e!156936 (= (apply!222 lt!121551 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000)) (get!2927 (select (arr!5697 (_values!4461 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!560 (defaultEntry!4478 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!241788 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6039 (_values!4461 thiss!1504))))))

(assert (=> b!241788 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))))))

(declare-fun bm!22511 () Bool)

(declare-fun call!22515 () ListLongMap!3669)

(declare-fun call!22513 () ListLongMap!3669)

(assert (=> bm!22511 (= call!22515 call!22513)))

(declare-fun b!241789 () Bool)

(declare-fun e!156935 () ListLongMap!3669)

(assert (=> b!241789 (= e!156935 call!22515)))

(declare-fun bm!22512 () Bool)

(declare-fun c!40315 () Bool)

(assert (=> bm!22512 (= call!22513 (+!644 (ite c!40314 call!22512 (ite c!40315 call!22514 call!22510)) (ite (or c!40314 c!40315) (tuple2!4743 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4319 thiss!1504)) (tuple2!4743 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4319 thiss!1504)))))))

(declare-fun b!241790 () Bool)

(assert (=> b!241790 (= e!156931 e!156938)))

(declare-fun c!40311 () Bool)

(assert (=> b!241790 (= c!40311 (not (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!241791 () Bool)

(declare-fun c!40316 () Bool)

(assert (=> b!241791 (= c!40316 (and (not (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!241791 (= e!156935 e!156934)))

(declare-fun b!241792 () Bool)

(assert (=> b!241792 (= e!156928 (+!644 call!22513 (tuple2!4743 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4319 thiss!1504))))))

(declare-fun b!241793 () Bool)

(declare-fun Unit!7452 () Unit!7441)

(assert (=> b!241793 (= e!156939 Unit!7452)))

(declare-fun b!241794 () Bool)

(assert (=> b!241794 (= e!156934 call!22515)))

(declare-fun b!241795 () Bool)

(assert (=> b!241795 (= e!156928 e!156935)))

(assert (=> b!241795 (= c!40315 (and (not (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22513 () Bool)

(assert (=> bm!22513 (= call!22510 call!22514)))

(declare-fun b!241796 () Bool)

(assert (=> b!241796 (= e!156937 (validKeyInArray!0 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!241797 () Bool)

(declare-fun res!118504 () Bool)

(assert (=> b!241797 (=> (not res!118504) (not e!156931))))

(assert (=> b!241797 (= res!118504 e!156929)))

(declare-fun c!40312 () Bool)

(assert (=> b!241797 (= c!40312 (not (= (bvand (extraKeys!4215 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!241798 () Bool)

(assert (=> b!241798 (= e!156938 (not call!22511))))

(declare-fun b!241799 () Bool)

(assert (=> b!241799 (= e!156927 e!156936)))

(declare-fun res!118505 () Bool)

(assert (=> b!241799 (=> (not res!118505) (not e!156936))))

(assert (=> b!241799 (= res!118505 (contains!1734 lt!121551 (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!241799 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))))))

(assert (= (and d!59833 c!40314) b!241792))

(assert (= (and d!59833 (not c!40314)) b!241795))

(assert (= (and b!241795 c!40315) b!241789))

(assert (= (and b!241795 (not c!40315)) b!241791))

(assert (= (and b!241791 c!40316) b!241794))

(assert (= (and b!241791 (not c!40316)) b!241782))

(assert (= (or b!241794 b!241782) bm!22513))

(assert (= (or b!241789 bm!22513) bm!22509))

(assert (= (or b!241789 b!241794) bm!22511))

(assert (= (or b!241792 bm!22509) bm!22510))

(assert (= (or b!241792 bm!22511) bm!22512))

(assert (= (and d!59833 res!118508) b!241796))

(assert (= (and d!59833 c!40313) b!241781))

(assert (= (and d!59833 (not c!40313)) b!241793))

(assert (= (and d!59833 res!118511) b!241784))

(assert (= (and b!241784 res!118507) b!241786))

(assert (= (and b!241784 (not res!118509)) b!241799))

(assert (= (and b!241799 res!118505) b!241788))

(assert (= (and b!241784 res!118506) b!241797))

(assert (= (and b!241797 c!40312) b!241779))

(assert (= (and b!241797 (not c!40312)) b!241780))

(assert (= (and b!241779 res!118510) b!241787))

(assert (= (or b!241779 b!241780) bm!22508))

(assert (= (and b!241797 res!118504) b!241790))

(assert (= (and b!241790 c!40311) b!241783))

(assert (= (and b!241790 (not c!40311)) b!241798))

(assert (= (and b!241783 res!118512) b!241785))

(assert (= (or b!241783 b!241798) bm!22507))

(declare-fun b_lambda!8021 () Bool)

(assert (=> (not b_lambda!8021) (not b!241788)))

(declare-fun t!8653 () Bool)

(declare-fun tb!2965 () Bool)

(assert (=> (and b!241652 (= (defaultEntry!4478 thiss!1504) (defaultEntry!4478 thiss!1504)) t!8653) tb!2965))

(declare-fun result!5201 () Bool)

(assert (=> tb!2965 (= result!5201 tp_is_empty!6357)))

(assert (=> b!241788 t!8653))

(declare-fun b_and!13489 () Bool)

(assert (= b_and!13485 (and (=> t!8653 result!5201) b_and!13489)))

(declare-fun m!260853 () Bool)

(assert (=> bm!22508 m!260853))

(declare-fun m!260855 () Bool)

(assert (=> b!241785 m!260855))

(declare-fun m!260857 () Bool)

(assert (=> bm!22507 m!260857))

(declare-fun m!260859 () Bool)

(assert (=> b!241792 m!260859))

(declare-fun m!260861 () Bool)

(assert (=> b!241786 m!260861))

(assert (=> b!241786 m!260861))

(declare-fun m!260863 () Bool)

(assert (=> b!241786 m!260863))

(declare-fun m!260865 () Bool)

(assert (=> d!59833 m!260865))

(declare-fun m!260867 () Bool)

(assert (=> b!241787 m!260867))

(declare-fun m!260869 () Bool)

(assert (=> bm!22512 m!260869))

(declare-fun m!260871 () Bool)

(assert (=> bm!22510 m!260871))

(declare-fun m!260873 () Bool)

(assert (=> b!241781 m!260873))

(declare-fun m!260875 () Bool)

(assert (=> b!241781 m!260875))

(declare-fun m!260877 () Bool)

(assert (=> b!241781 m!260877))

(assert (=> b!241781 m!260873))

(declare-fun m!260879 () Bool)

(assert (=> b!241781 m!260879))

(declare-fun m!260881 () Bool)

(assert (=> b!241781 m!260881))

(declare-fun m!260883 () Bool)

(assert (=> b!241781 m!260883))

(declare-fun m!260885 () Bool)

(assert (=> b!241781 m!260885))

(declare-fun m!260887 () Bool)

(assert (=> b!241781 m!260887))

(declare-fun m!260889 () Bool)

(assert (=> b!241781 m!260889))

(declare-fun m!260891 () Bool)

(assert (=> b!241781 m!260891))

(declare-fun m!260893 () Bool)

(assert (=> b!241781 m!260893))

(assert (=> b!241781 m!260861))

(declare-fun m!260895 () Bool)

(assert (=> b!241781 m!260895))

(assert (=> b!241781 m!260875))

(declare-fun m!260897 () Bool)

(assert (=> b!241781 m!260897))

(assert (=> b!241781 m!260897))

(declare-fun m!260899 () Bool)

(assert (=> b!241781 m!260899))

(declare-fun m!260901 () Bool)

(assert (=> b!241781 m!260901))

(assert (=> b!241781 m!260889))

(assert (=> b!241781 m!260871))

(assert (=> b!241796 m!260861))

(assert (=> b!241796 m!260861))

(assert (=> b!241796 m!260863))

(assert (=> b!241799 m!260861))

(assert (=> b!241799 m!260861))

(declare-fun m!260903 () Bool)

(assert (=> b!241799 m!260903))

(declare-fun m!260905 () Bool)

(assert (=> b!241788 m!260905))

(assert (=> b!241788 m!260861))

(declare-fun m!260907 () Bool)

(assert (=> b!241788 m!260907))

(assert (=> b!241788 m!260861))

(declare-fun m!260909 () Bool)

(assert (=> b!241788 m!260909))

(assert (=> b!241788 m!260909))

(assert (=> b!241788 m!260905))

(declare-fun m!260911 () Bool)

(assert (=> b!241788 m!260911))

(assert (=> b!241653 d!59833))

(declare-fun d!59835 () Bool)

(declare-fun e!156942 () Bool)

(assert (=> d!59835 e!156942))

(declare-fun res!118518 () Bool)

(assert (=> d!59835 (=> (not res!118518) (not e!156942))))

(declare-fun lt!121565 () SeekEntryResult!1069)

(assert (=> d!59835 (= res!118518 ((_ is Found!1069) lt!121565))))

(assert (=> d!59835 (= lt!121565 (seekEntryOrOpen!0 key!932 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)))))

(declare-fun lt!121566 () Unit!7441)

(declare-fun choose!1130 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 64) Int) Unit!7441)

(assert (=> d!59835 (= lt!121566 (choose!1130 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 (defaultEntry!4478 thiss!1504)))))

(assert (=> d!59835 (validMask!0 (mask!10551 thiss!1504))))

(assert (=> d!59835 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!351 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 (defaultEntry!4478 thiss!1504)) lt!121566)))

(declare-fun b!241806 () Bool)

(declare-fun res!118517 () Bool)

(assert (=> b!241806 (=> (not res!118517) (not e!156942))))

(assert (=> b!241806 (= res!118517 (inRange!0 (index!6447 lt!121565) (mask!10551 thiss!1504)))))

(declare-fun b!241807 () Bool)

(assert (=> b!241807 (= e!156942 (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6447 lt!121565)) key!932))))

(assert (=> b!241807 (and (bvsge (index!6447 lt!121565) #b00000000000000000000000000000000) (bvslt (index!6447 lt!121565) (size!6040 (_keys!6584 thiss!1504))))))

(assert (= (and d!59835 res!118518) b!241806))

(assert (= (and b!241806 res!118517) b!241807))

(assert (=> d!59835 m!260809))

(declare-fun m!260913 () Bool)

(assert (=> d!59835 m!260913))

(assert (=> d!59835 m!260865))

(declare-fun m!260915 () Bool)

(assert (=> b!241806 m!260915))

(declare-fun m!260917 () Bool)

(assert (=> b!241807 m!260917))

(assert (=> b!241662 d!59835))

(declare-fun d!59837 () Bool)

(declare-fun lt!121574 () SeekEntryResult!1069)

(assert (=> d!59837 (and (or ((_ is Undefined!1069) lt!121574) (not ((_ is Found!1069) lt!121574)) (and (bvsge (index!6447 lt!121574) #b00000000000000000000000000000000) (bvslt (index!6447 lt!121574) (size!6040 (_keys!6584 thiss!1504))))) (or ((_ is Undefined!1069) lt!121574) ((_ is Found!1069) lt!121574) (not ((_ is MissingZero!1069) lt!121574)) (and (bvsge (index!6446 lt!121574) #b00000000000000000000000000000000) (bvslt (index!6446 lt!121574) (size!6040 (_keys!6584 thiss!1504))))) (or ((_ is Undefined!1069) lt!121574) ((_ is Found!1069) lt!121574) ((_ is MissingZero!1069) lt!121574) (not ((_ is MissingVacant!1069) lt!121574)) (and (bvsge (index!6449 lt!121574) #b00000000000000000000000000000000) (bvslt (index!6449 lt!121574) (size!6040 (_keys!6584 thiss!1504))))) (or ((_ is Undefined!1069) lt!121574) (ite ((_ is Found!1069) lt!121574) (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6447 lt!121574)) key!932) (ite ((_ is MissingZero!1069) lt!121574) (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6446 lt!121574)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1069) lt!121574) (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6449 lt!121574)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!156949 () SeekEntryResult!1069)

(assert (=> d!59837 (= lt!121574 e!156949)))

(declare-fun c!40324 () Bool)

(declare-fun lt!121573 () SeekEntryResult!1069)

(assert (=> d!59837 (= c!40324 (and ((_ is Intermediate!1069) lt!121573) (undefined!1881 lt!121573)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11996 (_ BitVec 32)) SeekEntryResult!1069)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59837 (= lt!121573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10551 thiss!1504)) key!932 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)))))

(assert (=> d!59837 (validMask!0 (mask!10551 thiss!1504))))

(assert (=> d!59837 (= (seekEntryOrOpen!0 key!932 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)) lt!121574)))

(declare-fun b!241820 () Bool)

(assert (=> b!241820 (= e!156949 Undefined!1069)))

(declare-fun b!241821 () Bool)

(declare-fun e!156950 () SeekEntryResult!1069)

(assert (=> b!241821 (= e!156950 (MissingZero!1069 (index!6448 lt!121573)))))

(declare-fun b!241822 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11996 (_ BitVec 32)) SeekEntryResult!1069)

(assert (=> b!241822 (= e!156950 (seekKeyOrZeroReturnVacant!0 (x!24239 lt!121573) (index!6448 lt!121573) (index!6448 lt!121573) key!932 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)))))

(declare-fun b!241823 () Bool)

(declare-fun e!156951 () SeekEntryResult!1069)

(assert (=> b!241823 (= e!156949 e!156951)))

(declare-fun lt!121575 () (_ BitVec 64))

(assert (=> b!241823 (= lt!121575 (select (arr!5698 (_keys!6584 thiss!1504)) (index!6448 lt!121573)))))

(declare-fun c!40325 () Bool)

(assert (=> b!241823 (= c!40325 (= lt!121575 key!932))))

(declare-fun b!241824 () Bool)

(declare-fun c!40323 () Bool)

(assert (=> b!241824 (= c!40323 (= lt!121575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241824 (= e!156951 e!156950)))

(declare-fun b!241825 () Bool)

(assert (=> b!241825 (= e!156951 (Found!1069 (index!6448 lt!121573)))))

(assert (= (and d!59837 c!40324) b!241820))

(assert (= (and d!59837 (not c!40324)) b!241823))

(assert (= (and b!241823 c!40325) b!241825))

(assert (= (and b!241823 (not c!40325)) b!241824))

(assert (= (and b!241824 c!40323) b!241821))

(assert (= (and b!241824 (not c!40323)) b!241822))

(declare-fun m!260919 () Bool)

(assert (=> d!59837 m!260919))

(declare-fun m!260921 () Bool)

(assert (=> d!59837 m!260921))

(assert (=> d!59837 m!260919))

(declare-fun m!260923 () Bool)

(assert (=> d!59837 m!260923))

(assert (=> d!59837 m!260865))

(declare-fun m!260925 () Bool)

(assert (=> d!59837 m!260925))

(declare-fun m!260927 () Bool)

(assert (=> d!59837 m!260927))

(declare-fun m!260929 () Bool)

(assert (=> b!241822 m!260929))

(declare-fun m!260931 () Bool)

(assert (=> b!241823 m!260931))

(assert (=> b!241661 d!59837))

(declare-fun d!59839 () Bool)

(assert (=> d!59839 (contains!1734 (getCurrentListMap!1373 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)) key!932)))

(declare-fun lt!121578 () Unit!7441)

(declare-fun choose!1131 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 64) (_ BitVec 32) Int) Unit!7441)

(assert (=> d!59839 (= lt!121578 (choose!1131 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)))))

(assert (=> d!59839 (validMask!0 (mask!10551 thiss!1504))))

(assert (=> d!59839 (= (lemmaArrayContainsKeyThenInListMap!154 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4478 thiss!1504)) lt!121578)))

(declare-fun bs!8854 () Bool)

(assert (= bs!8854 d!59839))

(assert (=> bs!8854 m!260805))

(assert (=> bs!8854 m!260805))

(assert (=> bs!8854 m!260807))

(declare-fun m!260933 () Bool)

(assert (=> bs!8854 m!260933))

(assert (=> bs!8854 m!260865))

(assert (=> b!241659 d!59839))

(declare-fun b!241842 () Bool)

(declare-fun e!156963 () Bool)

(declare-fun e!156962 () Bool)

(assert (=> b!241842 (= e!156963 e!156962)))

(declare-fun res!118528 () Bool)

(declare-fun call!22522 () Bool)

(assert (=> b!241842 (= res!118528 call!22522)))

(assert (=> b!241842 (=> (not res!118528) (not e!156962))))

(declare-fun b!241843 () Bool)

(declare-fun e!156961 () Bool)

(assert (=> b!241843 (= e!156963 e!156961)))

(declare-fun c!40330 () Bool)

(declare-fun lt!121583 () SeekEntryResult!1069)

(assert (=> b!241843 (= c!40330 ((_ is MissingVacant!1069) lt!121583))))

(declare-fun b!241844 () Bool)

(assert (=> b!241844 (and (bvsge (index!6446 lt!121583) #b00000000000000000000000000000000) (bvslt (index!6446 lt!121583) (size!6040 (_keys!6584 thiss!1504))))))

(declare-fun res!118527 () Bool)

(assert (=> b!241844 (= res!118527 (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6446 lt!121583)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241844 (=> (not res!118527) (not e!156962))))

(declare-fun b!241845 () Bool)

(declare-fun res!118530 () Bool)

(declare-fun e!156960 () Bool)

(assert (=> b!241845 (=> (not res!118530) (not e!156960))))

(assert (=> b!241845 (= res!118530 (= (select (arr!5698 (_keys!6584 thiss!1504)) (index!6449 lt!121583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241845 (and (bvsge (index!6449 lt!121583) #b00000000000000000000000000000000) (bvslt (index!6449 lt!121583) (size!6040 (_keys!6584 thiss!1504))))))

(declare-fun b!241846 () Bool)

(declare-fun call!22521 () Bool)

(assert (=> b!241846 (= e!156960 (not call!22521))))

(declare-fun bm!22518 () Bool)

(assert (=> bm!22518 (= call!22521 (arrayContainsKey!0 (_keys!6584 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun d!59841 () Bool)

(assert (=> d!59841 e!156963))

(declare-fun c!40331 () Bool)

(assert (=> d!59841 (= c!40331 ((_ is MissingZero!1069) lt!121583))))

(assert (=> d!59841 (= lt!121583 (seekEntryOrOpen!0 key!932 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)))))

(declare-fun lt!121584 () Unit!7441)

(declare-fun choose!1132 (array!11996 array!11994 (_ BitVec 32) (_ BitVec 32) V!8123 V!8123 (_ BitVec 64) Int) Unit!7441)

(assert (=> d!59841 (= lt!121584 (choose!1132 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 (defaultEntry!4478 thiss!1504)))))

(assert (=> d!59841 (validMask!0 (mask!10551 thiss!1504))))

(assert (=> d!59841 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!357 (_keys!6584 thiss!1504) (_values!4461 thiss!1504) (mask!10551 thiss!1504) (extraKeys!4215 thiss!1504) (zeroValue!4319 thiss!1504) (minValue!4319 thiss!1504) key!932 (defaultEntry!4478 thiss!1504)) lt!121584)))

(declare-fun b!241847 () Bool)

(declare-fun res!118529 () Bool)

(assert (=> b!241847 (=> (not res!118529) (not e!156960))))

(assert (=> b!241847 (= res!118529 call!22522)))

(assert (=> b!241847 (= e!156961 e!156960)))

(declare-fun bm!22519 () Bool)

(assert (=> bm!22519 (= call!22522 (inRange!0 (ite c!40331 (index!6446 lt!121583) (index!6449 lt!121583)) (mask!10551 thiss!1504)))))

(declare-fun b!241848 () Bool)

(assert (=> b!241848 (= e!156962 (not call!22521))))

(declare-fun b!241849 () Bool)

(assert (=> b!241849 (= e!156961 ((_ is Undefined!1069) lt!121583))))

(assert (= (and d!59841 c!40331) b!241842))

(assert (= (and d!59841 (not c!40331)) b!241843))

(assert (= (and b!241842 res!118528) b!241844))

(assert (= (and b!241844 res!118527) b!241848))

(assert (= (and b!241843 c!40330) b!241847))

(assert (= (and b!241843 (not c!40330)) b!241849))

(assert (= (and b!241847 res!118529) b!241845))

(assert (= (and b!241845 res!118530) b!241846))

(assert (= (or b!241842 b!241847) bm!22519))

(assert (= (or b!241848 b!241846) bm!22518))

(assert (=> bm!22518 m!260797))

(declare-fun m!260935 () Bool)

(assert (=> b!241844 m!260935))

(assert (=> d!59841 m!260809))

(declare-fun m!260937 () Bool)

(assert (=> d!59841 m!260937))

(assert (=> d!59841 m!260865))

(declare-fun m!260939 () Bool)

(assert (=> bm!22519 m!260939))

(declare-fun m!260941 () Bool)

(assert (=> b!241845 m!260941))

(assert (=> b!241667 d!59841))

(declare-fun d!59843 () Bool)

(assert (=> d!59843 (= (inRange!0 (ite c!40282 (index!6446 lt!121460) (index!6449 lt!121460)) (mask!10551 thiss!1504)) (and (bvsge (ite c!40282 (index!6446 lt!121460) (index!6449 lt!121460)) #b00000000000000000000000000000000) (bvslt (ite c!40282 (index!6446 lt!121460) (index!6449 lt!121460)) (bvadd (mask!10551 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22485 d!59843))

(declare-fun d!59845 () Bool)

(declare-fun res!118535 () Bool)

(declare-fun e!156968 () Bool)

(assert (=> d!59845 (=> res!118535 e!156968)))

(assert (=> d!59845 (= res!118535 (= (select (arr!5698 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59845 (= (arrayContainsKey!0 (_keys!6584 thiss!1504) key!932 #b00000000000000000000000000000000) e!156968)))

(declare-fun b!241854 () Bool)

(declare-fun e!156969 () Bool)

(assert (=> b!241854 (= e!156968 e!156969)))

(declare-fun res!118536 () Bool)

(assert (=> b!241854 (=> (not res!118536) (not e!156969))))

(assert (=> b!241854 (= res!118536 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6040 (_keys!6584 thiss!1504))))))

(declare-fun b!241855 () Bool)

(assert (=> b!241855 (= e!156969 (arrayContainsKey!0 (_keys!6584 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59845 (not res!118535)) b!241854))

(assert (= (and b!241854 res!118536) b!241855))

(assert (=> d!59845 m!260861))

(declare-fun m!260943 () Bool)

(assert (=> b!241855 m!260943))

(assert (=> b!241654 d!59845))

(declare-fun d!59847 () Bool)

(assert (=> d!59847 (= (array_inv!3763 (_keys!6584 thiss!1504)) (bvsge (size!6040 (_keys!6584 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241652 d!59847))

(declare-fun d!59849 () Bool)

(assert (=> d!59849 (= (array_inv!3764 (_values!4461 thiss!1504)) (bvsge (size!6039 (_values!4461 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!241652 d!59849))

(assert (=> bm!22486 d!59845))

(declare-fun d!59851 () Bool)

(declare-fun res!118543 () Bool)

(declare-fun e!156972 () Bool)

(assert (=> d!59851 (=> (not res!118543) (not e!156972))))

(declare-fun simpleValid!244 (LongMapFixedSize!3570) Bool)

(assert (=> d!59851 (= res!118543 (simpleValid!244 thiss!1504))))

(assert (=> d!59851 (= (valid!1394 thiss!1504) e!156972)))

(declare-fun b!241862 () Bool)

(declare-fun res!118544 () Bool)

(assert (=> b!241862 (=> (not res!118544) (not e!156972))))

(declare-fun arrayCountValidKeys!0 (array!11996 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!241862 (= res!118544 (= (arrayCountValidKeys!0 (_keys!6584 thiss!1504) #b00000000000000000000000000000000 (size!6040 (_keys!6584 thiss!1504))) (_size!1834 thiss!1504)))))

(declare-fun b!241863 () Bool)

(declare-fun res!118545 () Bool)

(assert (=> b!241863 (=> (not res!118545) (not e!156972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11996 (_ BitVec 32)) Bool)

(assert (=> b!241863 (= res!118545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6584 thiss!1504) (mask!10551 thiss!1504)))))

(declare-fun b!241864 () Bool)

(declare-datatypes ((List!3647 0))(
  ( (Nil!3644) (Cons!3643 (h!4300 (_ BitVec 64)) (t!8654 List!3647)) )
))
(declare-fun arrayNoDuplicates!0 (array!11996 (_ BitVec 32) List!3647) Bool)

(assert (=> b!241864 (= e!156972 (arrayNoDuplicates!0 (_keys!6584 thiss!1504) #b00000000000000000000000000000000 Nil!3644))))

(assert (= (and d!59851 res!118543) b!241862))

(assert (= (and b!241862 res!118544) b!241863))

(assert (= (and b!241863 res!118545) b!241864))

(declare-fun m!260945 () Bool)

(assert (=> d!59851 m!260945))

(declare-fun m!260947 () Bool)

(assert (=> b!241862 m!260947))

(declare-fun m!260949 () Bool)

(assert (=> b!241863 m!260949))

(declare-fun m!260951 () Bool)

(assert (=> b!241864 m!260951))

(assert (=> start!23070 d!59851))

(declare-fun b!241871 () Bool)

(declare-fun e!156978 () Bool)

(assert (=> b!241871 (= e!156978 tp_is_empty!6357)))

(declare-fun condMapEmpty!10777 () Bool)

(declare-fun mapDefault!10777 () ValueCell!2835)

(assert (=> mapNonEmpty!10771 (= condMapEmpty!10777 (= mapRest!10771 ((as const (Array (_ BitVec 32) ValueCell!2835)) mapDefault!10777)))))

(declare-fun e!156977 () Bool)

(declare-fun mapRes!10777 () Bool)

(assert (=> mapNonEmpty!10771 (= tp!22693 (and e!156977 mapRes!10777))))

(declare-fun mapIsEmpty!10777 () Bool)

(assert (=> mapIsEmpty!10777 mapRes!10777))

(declare-fun b!241872 () Bool)

(assert (=> b!241872 (= e!156977 tp_is_empty!6357)))

(declare-fun mapNonEmpty!10777 () Bool)

(declare-fun tp!22702 () Bool)

(assert (=> mapNonEmpty!10777 (= mapRes!10777 (and tp!22702 e!156978))))

(declare-fun mapRest!10777 () (Array (_ BitVec 32) ValueCell!2835))

(declare-fun mapKey!10777 () (_ BitVec 32))

(declare-fun mapValue!10777 () ValueCell!2835)

(assert (=> mapNonEmpty!10777 (= mapRest!10771 (store mapRest!10777 mapKey!10777 mapValue!10777))))

(assert (= (and mapNonEmpty!10771 condMapEmpty!10777) mapIsEmpty!10777))

(assert (= (and mapNonEmpty!10771 (not condMapEmpty!10777)) mapNonEmpty!10777))

(assert (= (and mapNonEmpty!10777 ((_ is ValueCellFull!2835) mapValue!10777)) b!241871))

(assert (= (and mapNonEmpty!10771 ((_ is ValueCellFull!2835) mapDefault!10777)) b!241872))

(declare-fun m!260953 () Bool)

(assert (=> mapNonEmpty!10777 m!260953))

(declare-fun b_lambda!8023 () Bool)

(assert (= b_lambda!8021 (or (and b!241652 b_free!6495) b_lambda!8023)))

(check-sat (not d!59841) (not b!241806) (not b!241787) tp_is_empty!6357 (not b!241736) (not b!241786) (not bm!22507) (not mapNonEmpty!10777) (not b!241822) (not b_next!6495) (not bm!22518) (not b!241855) (not d!59831) (not b!241781) (not b!241788) (not b!241792) (not d!59833) (not b!241796) (not d!59851) (not b!241864) (not d!59835) b_and!13489 (not bm!22508) (not bm!22512) (not d!59837) (not b_lambda!8023) (not bm!22510) (not b!241785) (not d!59839) (not b!241862) (not bm!22519) (not b!241863) (not b!241799) (not b!241734))
(check-sat b_and!13489 (not b_next!6495))

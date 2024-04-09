; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19810 () Bool)

(assert start!19810)

(declare-fun b!193945 () Bool)

(declare-fun b_free!4719 () Bool)

(declare-fun b_next!4719 () Bool)

(assert (=> b!193945 (= b_free!4719 (not b_next!4719))))

(declare-fun tp!17026 () Bool)

(declare-fun b_and!11451 () Bool)

(assert (=> b!193945 (= tp!17026 b_and!11451)))

(declare-fun b!193938 () Bool)

(declare-fun e!127619 () Bool)

(declare-fun e!127622 () Bool)

(assert (=> b!193938 (= e!127619 (not e!127622))))

(declare-fun res!91679 () Bool)

(assert (=> b!193938 (=> (not res!91679) (not e!127622))))

(declare-datatypes ((V!5635 0))(
  ( (V!5636 (val!2290 Int)) )
))
(declare-datatypes ((ValueCell!1902 0))(
  ( (ValueCellFull!1902 (v!4248 V!5635)) (EmptyCell!1902) )
))
(declare-datatypes ((array!8232 0))(
  ( (array!8233 (arr!3874 (Array (_ BitVec 32) (_ BitVec 64))) (size!4198 (_ BitVec 32))) )
))
(declare-datatypes ((array!8234 0))(
  ( (array!8235 (arr!3875 (Array (_ BitVec 32) ValueCell!1902)) (size!4199 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2712 0))(
  ( (LongMapFixedSize!2713 (defaultEntry!3960 Int) (mask!9223 (_ BitVec 32)) (extraKeys!3697 (_ BitVec 32)) (zeroValue!3801 V!5635) (minValue!3801 V!5635) (_size!1405 (_ BitVec 32)) (_keys!5954 array!8232) (_values!3943 array!8234) (_vacant!1405 (_ BitVec 32))) )
))
(declare-fun lt!96693 () LongMapFixedSize!2712)

(declare-fun valid!1105 (LongMapFixedSize!2712) Bool)

(assert (=> b!193938 (= res!91679 (valid!1105 lt!96693))))

(declare-datatypes ((tuple2!3556 0))(
  ( (tuple2!3557 (_1!1788 (_ BitVec 64)) (_2!1788 V!5635)) )
))
(declare-datatypes ((List!2469 0))(
  ( (Nil!2466) (Cons!2465 (h!3106 tuple2!3556) (t!7403 List!2469)) )
))
(declare-datatypes ((ListLongMap!2487 0))(
  ( (ListLongMap!2488 (toList!1259 List!2469)) )
))
(declare-fun lt!96691 () ListLongMap!2487)

(declare-fun thiss!1248 () LongMapFixedSize!2712)

(declare-datatypes ((SeekEntryResult!704 0))(
  ( (MissingZero!704 (index!4986 (_ BitVec 32))) (Found!704 (index!4987 (_ BitVec 32))) (Intermediate!704 (undefined!1516 Bool) (index!4988 (_ BitVec 32)) (x!20700 (_ BitVec 32))) (Undefined!704) (MissingVacant!704 (index!4989 (_ BitVec 32))) )
))
(declare-fun lt!96699 () SeekEntryResult!704)

(declare-fun contains!1378 (ListLongMap!2487 (_ BitVec 64)) Bool)

(assert (=> b!193938 (contains!1378 lt!96691 (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))

(declare-datatypes ((Unit!5875 0))(
  ( (Unit!5876) )
))
(declare-fun lt!96692 () Unit!5875)

(declare-fun lt!96703 () array!8234)

(declare-fun lemmaValidKeyInArrayIsInListMap!144 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 32) Int) Unit!5875)

(assert (=> b!193938 (= lt!96692 (lemmaValidKeyInArrayIsInListMap!144 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) (defaultEntry!3960 thiss!1248)))))

(assert (=> b!193938 (= lt!96693 (LongMapFixedSize!2713 (defaultEntry!3960 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (_size!1405 thiss!1248) (_keys!5954 thiss!1248) lt!96703 (_vacant!1405 thiss!1248)))))

(declare-fun lt!96694 () ListLongMap!2487)

(assert (=> b!193938 (= lt!96694 lt!96691)))

(declare-fun getCurrentListMap!902 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 32) Int) ListLongMap!2487)

(assert (=> b!193938 (= lt!96691 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96698 () ListLongMap!2487)

(declare-fun lt!96700 () tuple2!3556)

(declare-fun +!317 (ListLongMap!2487 tuple2!3556) ListLongMap!2487)

(assert (=> b!193938 (= lt!96694 (+!317 lt!96698 lt!96700))))

(declare-fun v!309 () V!5635)

(assert (=> b!193938 (= lt!96703 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!193938 (= lt!96700 (tuple2!3557 key!828 v!309))))

(declare-fun lt!96695 () Unit!5875)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!123 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 32) (_ BitVec 64) V!5635 Int) Unit!5875)

(assert (=> b!193938 (= lt!96695 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!123 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) key!828 v!309 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96702 () Unit!5875)

(declare-fun e!127620 () Unit!5875)

(assert (=> b!193938 (= lt!96702 e!127620)))

(declare-fun c!34963 () Bool)

(assert (=> b!193938 (= c!34963 (contains!1378 lt!96698 key!828))))

(assert (=> b!193938 (= lt!96698 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun b!193939 () Bool)

(declare-fun res!91677 () Bool)

(declare-fun e!127616 () Bool)

(assert (=> b!193939 (=> (not res!91677) (not e!127616))))

(assert (=> b!193939 (= res!91677 (not (= key!828 (bvneg key!828))))))

(declare-fun b!193940 () Bool)

(declare-fun Unit!5877 () Unit!5875)

(assert (=> b!193940 (= e!127620 Unit!5877)))

(declare-fun lt!96701 () Unit!5875)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!194 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 64) Int) Unit!5875)

(assert (=> b!193940 (= lt!96701 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!194 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)))))

(assert (=> b!193940 false))

(declare-fun res!91681 () Bool)

(assert (=> start!19810 (=> (not res!91681) (not e!127616))))

(assert (=> start!19810 (= res!91681 (valid!1105 thiss!1248))))

(assert (=> start!19810 e!127616))

(declare-fun e!127621 () Bool)

(assert (=> start!19810 e!127621))

(assert (=> start!19810 true))

(declare-fun tp_is_empty!4491 () Bool)

(assert (=> start!19810 tp_is_empty!4491))

(declare-fun b!193941 () Bool)

(declare-fun e!127613 () Bool)

(assert (=> b!193941 (= e!127613 tp_is_empty!4491)))

(declare-fun b!193942 () Bool)

(assert (=> b!193942 (= e!127616 e!127619)))

(declare-fun res!91678 () Bool)

(assert (=> b!193942 (=> (not res!91678) (not e!127619))))

(get-info :version)

(assert (=> b!193942 (= res!91678 (and (not ((_ is Undefined!704) lt!96699)) (not ((_ is MissingVacant!704) lt!96699)) (not ((_ is MissingZero!704) lt!96699)) ((_ is Found!704) lt!96699)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8232 (_ BitVec 32)) SeekEntryResult!704)

(assert (=> b!193942 (= lt!96699 (seekEntryOrOpen!0 key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun mapNonEmpty!7769 () Bool)

(declare-fun mapRes!7769 () Bool)

(declare-fun tp!17027 () Bool)

(assert (=> mapNonEmpty!7769 (= mapRes!7769 (and tp!17027 e!127613))))

(declare-fun mapKey!7769 () (_ BitVec 32))

(declare-fun mapRest!7769 () (Array (_ BitVec 32) ValueCell!1902))

(declare-fun mapValue!7769 () ValueCell!1902)

(assert (=> mapNonEmpty!7769 (= (arr!3875 (_values!3943 thiss!1248)) (store mapRest!7769 mapKey!7769 mapValue!7769))))

(declare-fun e!127617 () Bool)

(declare-fun b!193943 () Bool)

(assert (=> b!193943 (= e!127617 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)) key!828))))

(declare-fun mapIsEmpty!7769 () Bool)

(assert (=> mapIsEmpty!7769 mapRes!7769))

(declare-fun b!193944 () Bool)

(declare-fun e!127623 () Bool)

(declare-fun e!127618 () Bool)

(assert (=> b!193944 (= e!127623 (and e!127618 mapRes!7769))))

(declare-fun condMapEmpty!7769 () Bool)

(declare-fun mapDefault!7769 () ValueCell!1902)

(assert (=> b!193944 (= condMapEmpty!7769 (= (arr!3875 (_values!3943 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1902)) mapDefault!7769)))))

(declare-fun array_inv!2503 (array!8232) Bool)

(declare-fun array_inv!2504 (array!8234) Bool)

(assert (=> b!193945 (= e!127621 (and tp!17026 tp_is_empty!4491 (array_inv!2503 (_keys!5954 thiss!1248)) (array_inv!2504 (_values!3943 thiss!1248)) e!127623))))

(declare-fun b!193946 () Bool)

(assert (=> b!193946 (= e!127618 tp_is_empty!4491)))

(declare-fun b!193947 () Bool)

(declare-fun lt!96696 () Unit!5875)

(assert (=> b!193947 (= e!127620 lt!96696)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!187 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 64) Int) Unit!5875)

(assert (=> b!193947 (= lt!96696 (lemmaInListMapThenSeekEntryOrOpenFindsIt!187 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)))))

(declare-fun res!91680 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193947 (= res!91680 (inRange!0 (index!4987 lt!96699) (mask!9223 thiss!1248)))))

(assert (=> b!193947 (=> (not res!91680) (not e!127617))))

(assert (=> b!193947 e!127617))

(declare-fun b!193948 () Bool)

(declare-fun e!127615 () Bool)

(assert (=> b!193948 (= e!127622 e!127615)))

(declare-fun res!91676 () Bool)

(assert (=> b!193948 (=> (not res!91676) (not e!127615))))

(declare-fun lt!96697 () ListLongMap!2487)

(assert (=> b!193948 (= res!91676 (contains!1378 lt!96697 key!828))))

(declare-fun map!2028 (LongMapFixedSize!2712) ListLongMap!2487)

(assert (=> b!193948 (= lt!96697 (map!2028 lt!96693))))

(declare-fun b!193949 () Bool)

(assert (=> b!193949 (= e!127615 (= lt!96697 (+!317 (map!2028 thiss!1248) lt!96700)))))

(assert (= (and start!19810 res!91681) b!193939))

(assert (= (and b!193939 res!91677) b!193942))

(assert (= (and b!193942 res!91678) b!193938))

(assert (= (and b!193938 c!34963) b!193947))

(assert (= (and b!193938 (not c!34963)) b!193940))

(assert (= (and b!193947 res!91680) b!193943))

(assert (= (and b!193938 res!91679) b!193948))

(assert (= (and b!193948 res!91676) b!193949))

(assert (= (and b!193944 condMapEmpty!7769) mapIsEmpty!7769))

(assert (= (and b!193944 (not condMapEmpty!7769)) mapNonEmpty!7769))

(assert (= (and mapNonEmpty!7769 ((_ is ValueCellFull!1902) mapValue!7769)) b!193941))

(assert (= (and b!193944 ((_ is ValueCellFull!1902) mapDefault!7769)) b!193946))

(assert (= b!193945 b!193944))

(assert (= start!19810 b!193945))

(declare-fun m!220707 () Bool)

(assert (=> b!193945 m!220707))

(declare-fun m!220709 () Bool)

(assert (=> b!193945 m!220709))

(declare-fun m!220711 () Bool)

(assert (=> b!193948 m!220711))

(declare-fun m!220713 () Bool)

(assert (=> b!193948 m!220713))

(declare-fun m!220715 () Bool)

(assert (=> b!193947 m!220715))

(declare-fun m!220717 () Bool)

(assert (=> b!193947 m!220717))

(declare-fun m!220719 () Bool)

(assert (=> mapNonEmpty!7769 m!220719))

(declare-fun m!220721 () Bool)

(assert (=> b!193938 m!220721))

(declare-fun m!220723 () Bool)

(assert (=> b!193938 m!220723))

(declare-fun m!220725 () Bool)

(assert (=> b!193938 m!220725))

(declare-fun m!220727 () Bool)

(assert (=> b!193938 m!220727))

(declare-fun m!220729 () Bool)

(assert (=> b!193938 m!220729))

(declare-fun m!220731 () Bool)

(assert (=> b!193938 m!220731))

(declare-fun m!220733 () Bool)

(assert (=> b!193938 m!220733))

(declare-fun m!220735 () Bool)

(assert (=> b!193938 m!220735))

(declare-fun m!220737 () Bool)

(assert (=> b!193938 m!220737))

(assert (=> b!193938 m!220737))

(declare-fun m!220739 () Bool)

(assert (=> b!193938 m!220739))

(assert (=> b!193943 m!220737))

(declare-fun m!220741 () Bool)

(assert (=> b!193940 m!220741))

(declare-fun m!220743 () Bool)

(assert (=> b!193949 m!220743))

(assert (=> b!193949 m!220743))

(declare-fun m!220745 () Bool)

(assert (=> b!193949 m!220745))

(declare-fun m!220747 () Bool)

(assert (=> start!19810 m!220747))

(declare-fun m!220749 () Bool)

(assert (=> b!193942 m!220749))

(check-sat (not b!193942) (not b!193945) (not mapNonEmpty!7769) (not b_next!4719) (not b!193947) (not b!193940) (not b!193948) tp_is_empty!4491 (not start!19810) (not b!193938) b_and!11451 (not b!193949))
(check-sat b_and!11451 (not b_next!4719))
(get-model)

(declare-fun d!56555 () Bool)

(declare-fun e!127659 () Bool)

(assert (=> d!56555 e!127659))

(declare-fun res!91704 () Bool)

(assert (=> d!56555 (=> (not res!91704) (not e!127659))))

(declare-fun lt!96751 () ListLongMap!2487)

(assert (=> d!56555 (= res!91704 (contains!1378 lt!96751 (_1!1788 lt!96700)))))

(declare-fun lt!96754 () List!2469)

(assert (=> d!56555 (= lt!96751 (ListLongMap!2488 lt!96754))))

(declare-fun lt!96752 () Unit!5875)

(declare-fun lt!96753 () Unit!5875)

(assert (=> d!56555 (= lt!96752 lt!96753)))

(declare-datatypes ((Option!250 0))(
  ( (Some!249 (v!4252 V!5635)) (None!248) )
))
(declare-fun getValueByKey!244 (List!2469 (_ BitVec 64)) Option!250)

(assert (=> d!56555 (= (getValueByKey!244 lt!96754 (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700)))))

(declare-fun lemmaContainsTupThenGetReturnValue!133 (List!2469 (_ BitVec 64) V!5635) Unit!5875)

(assert (=> d!56555 (= lt!96753 (lemmaContainsTupThenGetReturnValue!133 lt!96754 (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun insertStrictlySorted!135 (List!2469 (_ BitVec 64) V!5635) List!2469)

(assert (=> d!56555 (= lt!96754 (insertStrictlySorted!135 (toList!1259 (map!2028 thiss!1248)) (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(assert (=> d!56555 (= (+!317 (map!2028 thiss!1248) lt!96700) lt!96751)))

(declare-fun b!193990 () Bool)

(declare-fun res!91705 () Bool)

(assert (=> b!193990 (=> (not res!91705) (not e!127659))))

(assert (=> b!193990 (= res!91705 (= (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700))))))

(declare-fun b!193991 () Bool)

(declare-fun contains!1380 (List!2469 tuple2!3556) Bool)

(assert (=> b!193991 (= e!127659 (contains!1380 (toList!1259 lt!96751) lt!96700))))

(assert (= (and d!56555 res!91704) b!193990))

(assert (= (and b!193990 res!91705) b!193991))

(declare-fun m!220795 () Bool)

(assert (=> d!56555 m!220795))

(declare-fun m!220797 () Bool)

(assert (=> d!56555 m!220797))

(declare-fun m!220799 () Bool)

(assert (=> d!56555 m!220799))

(declare-fun m!220801 () Bool)

(assert (=> d!56555 m!220801))

(declare-fun m!220803 () Bool)

(assert (=> b!193990 m!220803))

(declare-fun m!220805 () Bool)

(assert (=> b!193991 m!220805))

(assert (=> b!193949 d!56555))

(declare-fun d!56557 () Bool)

(assert (=> d!56557 (= (map!2028 thiss!1248) (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun bs!7727 () Bool)

(assert (= bs!7727 d!56557))

(assert (=> bs!7727 m!220725))

(assert (=> b!193949 d!56557))

(declare-fun d!56559 () Bool)

(declare-fun e!127665 () Bool)

(assert (=> d!56559 e!127665))

(declare-fun res!91708 () Bool)

(assert (=> d!56559 (=> res!91708 e!127665)))

(declare-fun lt!96763 () Bool)

(assert (=> d!56559 (= res!91708 (not lt!96763))))

(declare-fun lt!96764 () Bool)

(assert (=> d!56559 (= lt!96763 lt!96764)))

(declare-fun lt!96765 () Unit!5875)

(declare-fun e!127664 () Unit!5875)

(assert (=> d!56559 (= lt!96765 e!127664)))

(declare-fun c!34969 () Bool)

(assert (=> d!56559 (= c!34969 lt!96764)))

(declare-fun containsKey!248 (List!2469 (_ BitVec 64)) Bool)

(assert (=> d!56559 (= lt!96764 (containsKey!248 (toList!1259 lt!96697) key!828))))

(assert (=> d!56559 (= (contains!1378 lt!96697 key!828) lt!96763)))

(declare-fun b!193998 () Bool)

(declare-fun lt!96766 () Unit!5875)

(assert (=> b!193998 (= e!127664 lt!96766)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!197 (List!2469 (_ BitVec 64)) Unit!5875)

(assert (=> b!193998 (= lt!96766 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96697) key!828))))

(declare-fun isDefined!198 (Option!250) Bool)

(assert (=> b!193998 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96697) key!828))))

(declare-fun b!193999 () Bool)

(declare-fun Unit!5881 () Unit!5875)

(assert (=> b!193999 (= e!127664 Unit!5881)))

(declare-fun b!194000 () Bool)

(assert (=> b!194000 (= e!127665 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96697) key!828)))))

(assert (= (and d!56559 c!34969) b!193998))

(assert (= (and d!56559 (not c!34969)) b!193999))

(assert (= (and d!56559 (not res!91708)) b!194000))

(declare-fun m!220807 () Bool)

(assert (=> d!56559 m!220807))

(declare-fun m!220809 () Bool)

(assert (=> b!193998 m!220809))

(declare-fun m!220811 () Bool)

(assert (=> b!193998 m!220811))

(assert (=> b!193998 m!220811))

(declare-fun m!220813 () Bool)

(assert (=> b!193998 m!220813))

(assert (=> b!194000 m!220811))

(assert (=> b!194000 m!220811))

(assert (=> b!194000 m!220813))

(assert (=> b!193948 d!56559))

(declare-fun d!56561 () Bool)

(assert (=> d!56561 (= (map!2028 lt!96693) (getCurrentListMap!902 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)))))

(declare-fun bs!7728 () Bool)

(assert (= bs!7728 d!56561))

(declare-fun m!220815 () Bool)

(assert (=> bs!7728 m!220815))

(assert (=> b!193948 d!56561))

(declare-fun d!56563 () Bool)

(declare-fun res!91715 () Bool)

(declare-fun e!127668 () Bool)

(assert (=> d!56563 (=> (not res!91715) (not e!127668))))

(declare-fun simpleValid!203 (LongMapFixedSize!2712) Bool)

(assert (=> d!56563 (= res!91715 (simpleValid!203 thiss!1248))))

(assert (=> d!56563 (= (valid!1105 thiss!1248) e!127668)))

(declare-fun b!194007 () Bool)

(declare-fun res!91716 () Bool)

(assert (=> b!194007 (=> (not res!91716) (not e!127668))))

(declare-fun arrayCountValidKeys!0 (array!8232 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!194007 (= res!91716 (= (arrayCountValidKeys!0 (_keys!5954 thiss!1248) #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))) (_size!1405 thiss!1248)))))

(declare-fun b!194008 () Bool)

(declare-fun res!91717 () Bool)

(assert (=> b!194008 (=> (not res!91717) (not e!127668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8232 (_ BitVec 32)) Bool)

(assert (=> b!194008 (= res!91717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194009 () Bool)

(declare-datatypes ((List!2471 0))(
  ( (Nil!2468) (Cons!2467 (h!3108 (_ BitVec 64)) (t!7407 List!2471)) )
))
(declare-fun arrayNoDuplicates!0 (array!8232 (_ BitVec 32) List!2471) Bool)

(assert (=> b!194009 (= e!127668 (arrayNoDuplicates!0 (_keys!5954 thiss!1248) #b00000000000000000000000000000000 Nil!2468))))

(assert (= (and d!56563 res!91715) b!194007))

(assert (= (and b!194007 res!91716) b!194008))

(assert (= (and b!194008 res!91717) b!194009))

(declare-fun m!220817 () Bool)

(assert (=> d!56563 m!220817))

(declare-fun m!220819 () Bool)

(assert (=> b!194007 m!220819))

(declare-fun m!220821 () Bool)

(assert (=> b!194008 m!220821))

(declare-fun m!220823 () Bool)

(assert (=> b!194009 m!220823))

(assert (=> start!19810 d!56563))

(declare-fun b!194026 () Bool)

(declare-fun e!127679 () Bool)

(declare-fun call!19613 () Bool)

(assert (=> b!194026 (= e!127679 (not call!19613))))

(declare-fun b!194027 () Bool)

(declare-fun e!127677 () Bool)

(declare-fun lt!96771 () SeekEntryResult!704)

(assert (=> b!194027 (= e!127677 ((_ is Undefined!704) lt!96771))))

(declare-fun b!194028 () Bool)

(declare-fun res!91727 () Bool)

(assert (=> b!194028 (=> (not res!91727) (not e!127679))))

(declare-fun call!19612 () Bool)

(assert (=> b!194028 (= res!91727 call!19612)))

(assert (=> b!194028 (= e!127677 e!127679)))

(declare-fun b!194029 () Bool)

(assert (=> b!194029 (and (bvsge (index!4986 lt!96771) #b00000000000000000000000000000000) (bvslt (index!4986 lt!96771) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!91728 () Bool)

(assert (=> b!194029 (= res!91728 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4986 lt!96771)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127678 () Bool)

(assert (=> b!194029 (=> (not res!91728) (not e!127678))))

(declare-fun b!194030 () Bool)

(declare-fun e!127680 () Bool)

(assert (=> b!194030 (= e!127680 e!127677)))

(declare-fun c!34975 () Bool)

(assert (=> b!194030 (= c!34975 ((_ is MissingVacant!704) lt!96771))))

(declare-fun bm!19609 () Bool)

(declare-fun arrayContainsKey!0 (array!8232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19609 (= call!19613 (arrayContainsKey!0 (_keys!5954 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!194031 () Bool)

(assert (=> b!194031 (= e!127680 e!127678)))

(declare-fun res!91726 () Bool)

(assert (=> b!194031 (= res!91726 call!19612)))

(assert (=> b!194031 (=> (not res!91726) (not e!127678))))

(declare-fun b!194032 () Bool)

(declare-fun res!91729 () Bool)

(assert (=> b!194032 (=> (not res!91729) (not e!127679))))

(assert (=> b!194032 (= res!91729 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4989 lt!96771)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194032 (and (bvsge (index!4989 lt!96771) #b00000000000000000000000000000000) (bvslt (index!4989 lt!96771) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun d!56565 () Bool)

(assert (=> d!56565 e!127680))

(declare-fun c!34974 () Bool)

(assert (=> d!56565 (= c!34974 ((_ is MissingZero!704) lt!96771))))

(assert (=> d!56565 (= lt!96771 (seekEntryOrOpen!0 key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun lt!96772 () Unit!5875)

(declare-fun choose!1071 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 64) Int) Unit!5875)

(assert (=> d!56565 (= lt!96772 (choose!1071 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!56565 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56565 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!194 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)) lt!96772)))

(declare-fun bm!19610 () Bool)

(assert (=> bm!19610 (= call!19612 (inRange!0 (ite c!34974 (index!4986 lt!96771) (index!4989 lt!96771)) (mask!9223 thiss!1248)))))

(declare-fun b!194033 () Bool)

(assert (=> b!194033 (= e!127678 (not call!19613))))

(assert (= (and d!56565 c!34974) b!194031))

(assert (= (and d!56565 (not c!34974)) b!194030))

(assert (= (and b!194031 res!91726) b!194029))

(assert (= (and b!194029 res!91728) b!194033))

(assert (= (and b!194030 c!34975) b!194028))

(assert (= (and b!194030 (not c!34975)) b!194027))

(assert (= (and b!194028 res!91727) b!194032))

(assert (= (and b!194032 res!91729) b!194026))

(assert (= (or b!194031 b!194028) bm!19610))

(assert (= (or b!194033 b!194026) bm!19609))

(declare-fun m!220825 () Bool)

(assert (=> bm!19610 m!220825))

(declare-fun m!220827 () Bool)

(assert (=> b!194032 m!220827))

(declare-fun m!220829 () Bool)

(assert (=> bm!19609 m!220829))

(assert (=> d!56565 m!220749))

(declare-fun m!220831 () Bool)

(assert (=> d!56565 m!220831))

(declare-fun m!220833 () Bool)

(assert (=> d!56565 m!220833))

(declare-fun m!220835 () Bool)

(assert (=> b!194029 m!220835))

(assert (=> b!193940 d!56565))

(declare-fun d!56567 () Bool)

(declare-fun res!91730 () Bool)

(declare-fun e!127681 () Bool)

(assert (=> d!56567 (=> (not res!91730) (not e!127681))))

(assert (=> d!56567 (= res!91730 (simpleValid!203 lt!96693))))

(assert (=> d!56567 (= (valid!1105 lt!96693) e!127681)))

(declare-fun b!194034 () Bool)

(declare-fun res!91731 () Bool)

(assert (=> b!194034 (=> (not res!91731) (not e!127681))))

(assert (=> b!194034 (= res!91731 (= (arrayCountValidKeys!0 (_keys!5954 lt!96693) #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))) (_size!1405 lt!96693)))))

(declare-fun b!194035 () Bool)

(declare-fun res!91732 () Bool)

(assert (=> b!194035 (=> (not res!91732) (not e!127681))))

(assert (=> b!194035 (= res!91732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5954 lt!96693) (mask!9223 lt!96693)))))

(declare-fun b!194036 () Bool)

(assert (=> b!194036 (= e!127681 (arrayNoDuplicates!0 (_keys!5954 lt!96693) #b00000000000000000000000000000000 Nil!2468))))

(assert (= (and d!56567 res!91730) b!194034))

(assert (= (and b!194034 res!91731) b!194035))

(assert (= (and b!194035 res!91732) b!194036))

(declare-fun m!220837 () Bool)

(assert (=> d!56567 m!220837))

(declare-fun m!220839 () Bool)

(assert (=> b!194034 m!220839))

(declare-fun m!220841 () Bool)

(assert (=> b!194035 m!220841))

(declare-fun m!220843 () Bool)

(assert (=> b!194036 m!220843))

(assert (=> b!193938 d!56567))

(declare-fun bm!19625 () Bool)

(declare-fun call!19633 () Bool)

(declare-fun lt!96830 () ListLongMap!2487)

(assert (=> bm!19625 (= call!19633 (contains!1378 lt!96830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194079 () Bool)

(declare-fun e!127710 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!194079 (= e!127710 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194080 () Bool)

(declare-fun e!127714 () Bool)

(declare-fun apply!188 (ListLongMap!2487 (_ BitVec 64)) V!5635)

(assert (=> b!194080 (= e!127714 (= (apply!188 lt!96830 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3801 thiss!1248)))))

(declare-fun b!194081 () Bool)

(declare-fun e!127720 () Bool)

(declare-fun call!19634 () Bool)

(assert (=> b!194081 (= e!127720 (not call!19634))))

(declare-fun b!194082 () Bool)

(declare-fun e!127709 () ListLongMap!2487)

(declare-fun call!19628 () ListLongMap!2487)

(assert (=> b!194082 (= e!127709 call!19628)))

(declare-fun call!19630 () ListLongMap!2487)

(declare-fun call!19631 () ListLongMap!2487)

(declare-fun call!19632 () ListLongMap!2487)

(declare-fun bm!19626 () Bool)

(declare-fun c!34990 () Bool)

(declare-fun c!34991 () Bool)

(assert (=> bm!19626 (= call!19632 (+!317 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194083 () Bool)

(declare-fun call!19629 () ListLongMap!2487)

(assert (=> b!194083 (= e!127709 call!19629)))

(declare-fun b!194084 () Bool)

(declare-fun e!127719 () Unit!5875)

(declare-fun lt!96826 () Unit!5875)

(assert (=> b!194084 (= e!127719 lt!96826)))

(declare-fun lt!96821 () ListLongMap!2487)

(declare-fun getCurrentListMapNoExtraKeys!218 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 32) Int) ListLongMap!2487)

(assert (=> b!194084 (= lt!96821 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96837 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96837 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96817 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96817 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96828 () Unit!5875)

(declare-fun addStillContains!164 (ListLongMap!2487 (_ BitVec 64) V!5635 (_ BitVec 64)) Unit!5875)

(assert (=> b!194084 (= lt!96828 (addStillContains!164 lt!96821 lt!96837 (zeroValue!3801 thiss!1248) lt!96817))))

(assert (=> b!194084 (contains!1378 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) lt!96817)))

(declare-fun lt!96836 () Unit!5875)

(assert (=> b!194084 (= lt!96836 lt!96828)))

(declare-fun lt!96823 () ListLongMap!2487)

(assert (=> b!194084 (= lt!96823 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96831 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96831 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96835 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96835 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96832 () Unit!5875)

(declare-fun addApplyDifferent!164 (ListLongMap!2487 (_ BitVec 64) V!5635 (_ BitVec 64)) Unit!5875)

(assert (=> b!194084 (= lt!96832 (addApplyDifferent!164 lt!96823 lt!96831 (minValue!3801 thiss!1248) lt!96835))))

(assert (=> b!194084 (= (apply!188 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) lt!96835) (apply!188 lt!96823 lt!96835))))

(declare-fun lt!96818 () Unit!5875)

(assert (=> b!194084 (= lt!96818 lt!96832)))

(declare-fun lt!96833 () ListLongMap!2487)

(assert (=> b!194084 (= lt!96833 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96824 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96824 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96819 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96819 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96834 () Unit!5875)

(assert (=> b!194084 (= lt!96834 (addApplyDifferent!164 lt!96833 lt!96824 (zeroValue!3801 thiss!1248) lt!96819))))

(assert (=> b!194084 (= (apply!188 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) lt!96819) (apply!188 lt!96833 lt!96819))))

(declare-fun lt!96822 () Unit!5875)

(assert (=> b!194084 (= lt!96822 lt!96834)))

(declare-fun lt!96838 () ListLongMap!2487)

(assert (=> b!194084 (= lt!96838 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96829 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96829 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96820 () (_ BitVec 64))

(assert (=> b!194084 (= lt!96820 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!194084 (= lt!96826 (addApplyDifferent!164 lt!96838 lt!96829 (minValue!3801 thiss!1248) lt!96820))))

(assert (=> b!194084 (= (apply!188 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) lt!96820) (apply!188 lt!96838 lt!96820))))

(declare-fun e!127711 () Bool)

(declare-fun b!194085 () Bool)

(declare-fun get!2238 (ValueCell!1902 V!5635) V!5635)

(declare-fun dynLambda!526 (Int (_ BitVec 64)) V!5635)

(assert (=> b!194085 (= e!127711 (= (apply!188 lt!96830 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!194085 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 lt!96703)))))

(assert (=> b!194085 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun d!56569 () Bool)

(declare-fun e!127712 () Bool)

(assert (=> d!56569 e!127712))

(declare-fun res!91759 () Bool)

(assert (=> d!56569 (=> (not res!91759) (not e!127712))))

(assert (=> d!56569 (= res!91759 (or (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))))

(declare-fun lt!96827 () ListLongMap!2487)

(assert (=> d!56569 (= lt!96830 lt!96827)))

(declare-fun lt!96825 () Unit!5875)

(assert (=> d!56569 (= lt!96825 e!127719)))

(declare-fun c!34993 () Bool)

(assert (=> d!56569 (= c!34993 e!127710)))

(declare-fun res!91754 () Bool)

(assert (=> d!56569 (=> (not res!91754) (not e!127710))))

(assert (=> d!56569 (= res!91754 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun e!127718 () ListLongMap!2487)

(assert (=> d!56569 (= lt!96827 e!127718)))

(assert (=> d!56569 (= c!34990 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56569 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56569 (= (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) lt!96830)))

(declare-fun bm!19627 () Bool)

(assert (=> bm!19627 (= call!19634 (contains!1378 lt!96830 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194086 () Bool)

(declare-fun e!127708 () ListLongMap!2487)

(assert (=> b!194086 (= e!127708 call!19629)))

(declare-fun bm!19628 () Bool)

(assert (=> bm!19628 (= call!19629 call!19632)))

(declare-fun bm!19629 () Bool)

(assert (=> bm!19629 (= call!19628 call!19630)))

(declare-fun bm!19630 () Bool)

(assert (=> bm!19630 (= call!19631 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194087 () Bool)

(assert (=> b!194087 (= e!127718 (+!317 call!19632 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun b!194088 () Bool)

(declare-fun e!127717 () Bool)

(assert (=> b!194088 (= e!127717 e!127711)))

(declare-fun res!91751 () Bool)

(assert (=> b!194088 (=> (not res!91751) (not e!127711))))

(assert (=> b!194088 (= res!91751 (contains!1378 lt!96830 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194089 () Bool)

(assert (=> b!194089 (= e!127718 e!127708)))

(assert (=> b!194089 (= c!34991 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194090 () Bool)

(declare-fun res!91757 () Bool)

(assert (=> b!194090 (=> (not res!91757) (not e!127712))))

(assert (=> b!194090 (= res!91757 e!127717)))

(declare-fun res!91752 () Bool)

(assert (=> b!194090 (=> res!91752 e!127717)))

(declare-fun e!127713 () Bool)

(assert (=> b!194090 (= res!91752 (not e!127713))))

(declare-fun res!91753 () Bool)

(assert (=> b!194090 (=> (not res!91753) (not e!127713))))

(assert (=> b!194090 (= res!91753 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194091 () Bool)

(declare-fun e!127715 () Bool)

(assert (=> b!194091 (= e!127720 e!127715)))

(declare-fun res!91756 () Bool)

(assert (=> b!194091 (= res!91756 call!19634)))

(assert (=> b!194091 (=> (not res!91756) (not e!127715))))

(declare-fun b!194092 () Bool)

(assert (=> b!194092 (= e!127715 (= (apply!188 lt!96830 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3801 thiss!1248)))))

(declare-fun bm!19631 () Bool)

(assert (=> bm!19631 (= call!19630 call!19631)))

(declare-fun b!194093 () Bool)

(declare-fun res!91755 () Bool)

(assert (=> b!194093 (=> (not res!91755) (not e!127712))))

(declare-fun e!127716 () Bool)

(assert (=> b!194093 (= res!91755 e!127716)))

(declare-fun c!34992 () Bool)

(assert (=> b!194093 (= c!34992 (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!194094 () Bool)

(declare-fun c!34988 () Bool)

(assert (=> b!194094 (= c!34988 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!194094 (= e!127708 e!127709)))

(declare-fun b!194095 () Bool)

(assert (=> b!194095 (= e!127713 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194096 () Bool)

(assert (=> b!194096 (= e!127716 e!127714)))

(declare-fun res!91758 () Bool)

(assert (=> b!194096 (= res!91758 call!19633)))

(assert (=> b!194096 (=> (not res!91758) (not e!127714))))

(declare-fun b!194097 () Bool)

(assert (=> b!194097 (= e!127712 e!127720)))

(declare-fun c!34989 () Bool)

(assert (=> b!194097 (= c!34989 (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194098 () Bool)

(assert (=> b!194098 (= e!127716 (not call!19633))))

(declare-fun b!194099 () Bool)

(declare-fun Unit!5882 () Unit!5875)

(assert (=> b!194099 (= e!127719 Unit!5882)))

(assert (= (and d!56569 c!34990) b!194087))

(assert (= (and d!56569 (not c!34990)) b!194089))

(assert (= (and b!194089 c!34991) b!194086))

(assert (= (and b!194089 (not c!34991)) b!194094))

(assert (= (and b!194094 c!34988) b!194083))

(assert (= (and b!194094 (not c!34988)) b!194082))

(assert (= (or b!194083 b!194082) bm!19629))

(assert (= (or b!194086 bm!19629) bm!19631))

(assert (= (or b!194086 b!194083) bm!19628))

(assert (= (or b!194087 bm!19631) bm!19630))

(assert (= (or b!194087 bm!19628) bm!19626))

(assert (= (and d!56569 res!91754) b!194079))

(assert (= (and d!56569 c!34993) b!194084))

(assert (= (and d!56569 (not c!34993)) b!194099))

(assert (= (and d!56569 res!91759) b!194090))

(assert (= (and b!194090 res!91753) b!194095))

(assert (= (and b!194090 (not res!91752)) b!194088))

(assert (= (and b!194088 res!91751) b!194085))

(assert (= (and b!194090 res!91757) b!194093))

(assert (= (and b!194093 c!34992) b!194096))

(assert (= (and b!194093 (not c!34992)) b!194098))

(assert (= (and b!194096 res!91758) b!194080))

(assert (= (or b!194096 b!194098) bm!19625))

(assert (= (and b!194093 res!91755) b!194097))

(assert (= (and b!194097 c!34989) b!194091))

(assert (= (and b!194097 (not c!34989)) b!194081))

(assert (= (and b!194091 res!91756) b!194092))

(assert (= (or b!194091 b!194081) bm!19627))

(declare-fun b_lambda!7509 () Bool)

(assert (=> (not b_lambda!7509) (not b!194085)))

(declare-fun t!7406 () Bool)

(declare-fun tb!2895 () Bool)

(assert (=> (and b!193945 (= (defaultEntry!3960 thiss!1248) (defaultEntry!3960 thiss!1248)) t!7406) tb!2895))

(declare-fun result!4947 () Bool)

(assert (=> tb!2895 (= result!4947 tp_is_empty!4491)))

(assert (=> b!194085 t!7406))

(declare-fun b_and!11455 () Bool)

(assert (= b_and!11451 (and (=> t!7406 result!4947) b_and!11455)))

(declare-fun m!220845 () Bool)

(assert (=> bm!19630 m!220845))

(declare-fun m!220847 () Bool)

(assert (=> b!194080 m!220847))

(declare-fun m!220849 () Bool)

(assert (=> bm!19627 m!220849))

(assert (=> d!56569 m!220833))

(declare-fun m!220851 () Bool)

(assert (=> b!194087 m!220851))

(declare-fun m!220853 () Bool)

(assert (=> bm!19626 m!220853))

(declare-fun m!220855 () Bool)

(assert (=> b!194079 m!220855))

(assert (=> b!194079 m!220855))

(declare-fun m!220857 () Bool)

(assert (=> b!194079 m!220857))

(assert (=> b!194095 m!220855))

(assert (=> b!194095 m!220855))

(assert (=> b!194095 m!220857))

(assert (=> b!194085 m!220855))

(declare-fun m!220859 () Bool)

(assert (=> b!194085 m!220859))

(assert (=> b!194085 m!220855))

(declare-fun m!220861 () Bool)

(assert (=> b!194085 m!220861))

(declare-fun m!220863 () Bool)

(assert (=> b!194085 m!220863))

(assert (=> b!194085 m!220863))

(assert (=> b!194085 m!220859))

(declare-fun m!220865 () Bool)

(assert (=> b!194085 m!220865))

(declare-fun m!220867 () Bool)

(assert (=> b!194092 m!220867))

(declare-fun m!220869 () Bool)

(assert (=> b!194084 m!220869))

(declare-fun m!220871 () Bool)

(assert (=> b!194084 m!220871))

(declare-fun m!220873 () Bool)

(assert (=> b!194084 m!220873))

(declare-fun m!220875 () Bool)

(assert (=> b!194084 m!220875))

(declare-fun m!220877 () Bool)

(assert (=> b!194084 m!220877))

(declare-fun m!220879 () Bool)

(assert (=> b!194084 m!220879))

(declare-fun m!220881 () Bool)

(assert (=> b!194084 m!220881))

(declare-fun m!220883 () Bool)

(assert (=> b!194084 m!220883))

(declare-fun m!220885 () Bool)

(assert (=> b!194084 m!220885))

(assert (=> b!194084 m!220855))

(declare-fun m!220887 () Bool)

(assert (=> b!194084 m!220887))

(assert (=> b!194084 m!220871))

(assert (=> b!194084 m!220845))

(assert (=> b!194084 m!220883))

(declare-fun m!220889 () Bool)

(assert (=> b!194084 m!220889))

(declare-fun m!220891 () Bool)

(assert (=> b!194084 m!220891))

(assert (=> b!194084 m!220875))

(declare-fun m!220893 () Bool)

(assert (=> b!194084 m!220893))

(declare-fun m!220895 () Bool)

(assert (=> b!194084 m!220895))

(assert (=> b!194084 m!220879))

(declare-fun m!220897 () Bool)

(assert (=> b!194084 m!220897))

(assert (=> b!194088 m!220855))

(assert (=> b!194088 m!220855))

(declare-fun m!220899 () Bool)

(assert (=> b!194088 m!220899))

(declare-fun m!220901 () Bool)

(assert (=> bm!19625 m!220901))

(assert (=> b!193938 d!56569))

(declare-fun d!56571 () Bool)

(declare-fun e!127721 () Bool)

(assert (=> d!56571 e!127721))

(declare-fun res!91760 () Bool)

(assert (=> d!56571 (=> (not res!91760) (not e!127721))))

(declare-fun lt!96839 () ListLongMap!2487)

(assert (=> d!56571 (= res!91760 (contains!1378 lt!96839 (_1!1788 lt!96700)))))

(declare-fun lt!96842 () List!2469)

(assert (=> d!56571 (= lt!96839 (ListLongMap!2488 lt!96842))))

(declare-fun lt!96840 () Unit!5875)

(declare-fun lt!96841 () Unit!5875)

(assert (=> d!56571 (= lt!96840 lt!96841)))

(assert (=> d!56571 (= (getValueByKey!244 lt!96842 (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700)))))

(assert (=> d!56571 (= lt!96841 (lemmaContainsTupThenGetReturnValue!133 lt!96842 (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(assert (=> d!56571 (= lt!96842 (insertStrictlySorted!135 (toList!1259 lt!96698) (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(assert (=> d!56571 (= (+!317 lt!96698 lt!96700) lt!96839)))

(declare-fun b!194102 () Bool)

(declare-fun res!91761 () Bool)

(assert (=> b!194102 (=> (not res!91761) (not e!127721))))

(assert (=> b!194102 (= res!91761 (= (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700))))))

(declare-fun b!194103 () Bool)

(assert (=> b!194103 (= e!127721 (contains!1380 (toList!1259 lt!96839) lt!96700))))

(assert (= (and d!56571 res!91760) b!194102))

(assert (= (and b!194102 res!91761) b!194103))

(declare-fun m!220903 () Bool)

(assert (=> d!56571 m!220903))

(declare-fun m!220905 () Bool)

(assert (=> d!56571 m!220905))

(declare-fun m!220907 () Bool)

(assert (=> d!56571 m!220907))

(declare-fun m!220909 () Bool)

(assert (=> d!56571 m!220909))

(declare-fun m!220911 () Bool)

(assert (=> b!194102 m!220911))

(declare-fun m!220913 () Bool)

(assert (=> b!194103 m!220913))

(assert (=> b!193938 d!56571))

(declare-fun d!56573 () Bool)

(declare-fun e!127723 () Bool)

(assert (=> d!56573 e!127723))

(declare-fun res!91762 () Bool)

(assert (=> d!56573 (=> res!91762 e!127723)))

(declare-fun lt!96843 () Bool)

(assert (=> d!56573 (= res!91762 (not lt!96843))))

(declare-fun lt!96844 () Bool)

(assert (=> d!56573 (= lt!96843 lt!96844)))

(declare-fun lt!96845 () Unit!5875)

(declare-fun e!127722 () Unit!5875)

(assert (=> d!56573 (= lt!96845 e!127722)))

(declare-fun c!34994 () Bool)

(assert (=> d!56573 (= c!34994 lt!96844)))

(assert (=> d!56573 (= lt!96844 (containsKey!248 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (=> d!56573 (= (contains!1378 lt!96691 (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) lt!96843)))

(declare-fun b!194104 () Bool)

(declare-fun lt!96846 () Unit!5875)

(assert (=> b!194104 (= e!127722 lt!96846)))

(assert (=> b!194104 (= lt!96846 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (=> b!194104 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun b!194105 () Bool)

(declare-fun Unit!5883 () Unit!5875)

(assert (=> b!194105 (= e!127722 Unit!5883)))

(declare-fun b!194106 () Bool)

(assert (=> b!194106 (= e!127723 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (= (and d!56573 c!34994) b!194104))

(assert (= (and d!56573 (not c!34994)) b!194105))

(assert (= (and d!56573 (not res!91762)) b!194106))

(assert (=> d!56573 m!220737))

(declare-fun m!220915 () Bool)

(assert (=> d!56573 m!220915))

(assert (=> b!194104 m!220737))

(declare-fun m!220917 () Bool)

(assert (=> b!194104 m!220917))

(assert (=> b!194104 m!220737))

(declare-fun m!220919 () Bool)

(assert (=> b!194104 m!220919))

(assert (=> b!194104 m!220919))

(declare-fun m!220921 () Bool)

(assert (=> b!194104 m!220921))

(assert (=> b!194106 m!220737))

(assert (=> b!194106 m!220919))

(assert (=> b!194106 m!220919))

(assert (=> b!194106 m!220921))

(assert (=> b!193938 d!56573))

(declare-fun d!56575 () Bool)

(declare-fun e!127726 () Bool)

(assert (=> d!56575 e!127726))

(declare-fun res!91765 () Bool)

(assert (=> d!56575 (=> (not res!91765) (not e!127726))))

(assert (=> d!56575 (= res!91765 (and (bvsge (index!4987 lt!96699) #b00000000000000000000000000000000) (bvslt (index!4987 lt!96699) (size!4198 (_keys!5954 thiss!1248)))))))

(declare-fun lt!96849 () Unit!5875)

(declare-fun choose!1072 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 32) Int) Unit!5875)

(assert (=> d!56575 (= lt!96849 (choose!1072 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) (defaultEntry!3960 thiss!1248)))))

(assert (=> d!56575 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56575 (= (lemmaValidKeyInArrayIsInListMap!144 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) (defaultEntry!3960 thiss!1248)) lt!96849)))

(declare-fun b!194109 () Bool)

(assert (=> b!194109 (= e!127726 (contains!1378 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (= (and d!56575 res!91765) b!194109))

(declare-fun m!220923 () Bool)

(assert (=> d!56575 m!220923))

(assert (=> d!56575 m!220833))

(assert (=> b!194109 m!220727))

(assert (=> b!194109 m!220737))

(assert (=> b!194109 m!220727))

(assert (=> b!194109 m!220737))

(declare-fun m!220925 () Bool)

(assert (=> b!194109 m!220925))

(assert (=> b!193938 d!56575))

(declare-fun d!56577 () Bool)

(declare-fun e!127728 () Bool)

(assert (=> d!56577 e!127728))

(declare-fun res!91766 () Bool)

(assert (=> d!56577 (=> res!91766 e!127728)))

(declare-fun lt!96850 () Bool)

(assert (=> d!56577 (= res!91766 (not lt!96850))))

(declare-fun lt!96851 () Bool)

(assert (=> d!56577 (= lt!96850 lt!96851)))

(declare-fun lt!96852 () Unit!5875)

(declare-fun e!127727 () Unit!5875)

(assert (=> d!56577 (= lt!96852 e!127727)))

(declare-fun c!34995 () Bool)

(assert (=> d!56577 (= c!34995 lt!96851)))

(assert (=> d!56577 (= lt!96851 (containsKey!248 (toList!1259 lt!96698) key!828))))

(assert (=> d!56577 (= (contains!1378 lt!96698 key!828) lt!96850)))

(declare-fun b!194110 () Bool)

(declare-fun lt!96853 () Unit!5875)

(assert (=> b!194110 (= e!127727 lt!96853)))

(assert (=> b!194110 (= lt!96853 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96698) key!828))))

(assert (=> b!194110 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96698) key!828))))

(declare-fun b!194111 () Bool)

(declare-fun Unit!5884 () Unit!5875)

(assert (=> b!194111 (= e!127727 Unit!5884)))

(declare-fun b!194112 () Bool)

(assert (=> b!194112 (= e!127728 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96698) key!828)))))

(assert (= (and d!56577 c!34995) b!194110))

(assert (= (and d!56577 (not c!34995)) b!194111))

(assert (= (and d!56577 (not res!91766)) b!194112))

(declare-fun m!220927 () Bool)

(assert (=> d!56577 m!220927))

(declare-fun m!220929 () Bool)

(assert (=> b!194110 m!220929))

(declare-fun m!220931 () Bool)

(assert (=> b!194110 m!220931))

(assert (=> b!194110 m!220931))

(declare-fun m!220933 () Bool)

(assert (=> b!194110 m!220933))

(assert (=> b!194112 m!220931))

(assert (=> b!194112 m!220931))

(assert (=> b!194112 m!220933))

(assert (=> b!193938 d!56577))

(declare-fun bm!19632 () Bool)

(declare-fun call!19640 () Bool)

(declare-fun lt!96867 () ListLongMap!2487)

(assert (=> bm!19632 (= call!19640 (contains!1378 lt!96867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194113 () Bool)

(declare-fun e!127731 () Bool)

(assert (=> b!194113 (= e!127731 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194114 () Bool)

(declare-fun e!127735 () Bool)

(assert (=> b!194114 (= e!127735 (= (apply!188 lt!96867 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3801 thiss!1248)))))

(declare-fun b!194115 () Bool)

(declare-fun e!127741 () Bool)

(declare-fun call!19641 () Bool)

(assert (=> b!194115 (= e!127741 (not call!19641))))

(declare-fun b!194116 () Bool)

(declare-fun e!127730 () ListLongMap!2487)

(declare-fun call!19635 () ListLongMap!2487)

(assert (=> b!194116 (= e!127730 call!19635)))

(declare-fun c!34999 () Bool)

(declare-fun call!19639 () ListLongMap!2487)

(declare-fun call!19638 () ListLongMap!2487)

(declare-fun call!19637 () ListLongMap!2487)

(declare-fun c!34998 () Bool)

(declare-fun bm!19633 () Bool)

(assert (=> bm!19633 (= call!19639 (+!317 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194117 () Bool)

(declare-fun call!19636 () ListLongMap!2487)

(assert (=> b!194117 (= e!127730 call!19636)))

(declare-fun b!194118 () Bool)

(declare-fun e!127740 () Unit!5875)

(declare-fun lt!96863 () Unit!5875)

(assert (=> b!194118 (= e!127740 lt!96863)))

(declare-fun lt!96858 () ListLongMap!2487)

(assert (=> b!194118 (= lt!96858 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96874 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96874 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96854 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96854 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96865 () Unit!5875)

(assert (=> b!194118 (= lt!96865 (addStillContains!164 lt!96858 lt!96874 (zeroValue!3801 thiss!1248) lt!96854))))

(assert (=> b!194118 (contains!1378 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) lt!96854)))

(declare-fun lt!96873 () Unit!5875)

(assert (=> b!194118 (= lt!96873 lt!96865)))

(declare-fun lt!96860 () ListLongMap!2487)

(assert (=> b!194118 (= lt!96860 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96868 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96868 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96872 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96872 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96869 () Unit!5875)

(assert (=> b!194118 (= lt!96869 (addApplyDifferent!164 lt!96860 lt!96868 (minValue!3801 thiss!1248) lt!96872))))

(assert (=> b!194118 (= (apply!188 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) lt!96872) (apply!188 lt!96860 lt!96872))))

(declare-fun lt!96855 () Unit!5875)

(assert (=> b!194118 (= lt!96855 lt!96869)))

(declare-fun lt!96870 () ListLongMap!2487)

(assert (=> b!194118 (= lt!96870 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96861 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96861 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96856 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96856 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96871 () Unit!5875)

(assert (=> b!194118 (= lt!96871 (addApplyDifferent!164 lt!96870 lt!96861 (zeroValue!3801 thiss!1248) lt!96856))))

(assert (=> b!194118 (= (apply!188 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) lt!96856) (apply!188 lt!96870 lt!96856))))

(declare-fun lt!96859 () Unit!5875)

(assert (=> b!194118 (= lt!96859 lt!96871)))

(declare-fun lt!96875 () ListLongMap!2487)

(assert (=> b!194118 (= lt!96875 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96866 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96866 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96857 () (_ BitVec 64))

(assert (=> b!194118 (= lt!96857 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!194118 (= lt!96863 (addApplyDifferent!164 lt!96875 lt!96866 (minValue!3801 thiss!1248) lt!96857))))

(assert (=> b!194118 (= (apply!188 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) lt!96857) (apply!188 lt!96875 lt!96857))))

(declare-fun b!194119 () Bool)

(declare-fun e!127732 () Bool)

(assert (=> b!194119 (= e!127732 (= (apply!188 lt!96867 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!194119 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 (_values!3943 thiss!1248))))))

(assert (=> b!194119 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun d!56579 () Bool)

(declare-fun e!127733 () Bool)

(assert (=> d!56579 e!127733))

(declare-fun res!91775 () Bool)

(assert (=> d!56579 (=> (not res!91775) (not e!127733))))

(assert (=> d!56579 (= res!91775 (or (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))))

(declare-fun lt!96864 () ListLongMap!2487)

(assert (=> d!56579 (= lt!96867 lt!96864)))

(declare-fun lt!96862 () Unit!5875)

(assert (=> d!56579 (= lt!96862 e!127740)))

(declare-fun c!35001 () Bool)

(assert (=> d!56579 (= c!35001 e!127731)))

(declare-fun res!91770 () Bool)

(assert (=> d!56579 (=> (not res!91770) (not e!127731))))

(assert (=> d!56579 (= res!91770 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun e!127739 () ListLongMap!2487)

(assert (=> d!56579 (= lt!96864 e!127739)))

(assert (=> d!56579 (= c!34998 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56579 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56579 (= (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) lt!96867)))

(declare-fun bm!19634 () Bool)

(assert (=> bm!19634 (= call!19641 (contains!1378 lt!96867 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194120 () Bool)

(declare-fun e!127729 () ListLongMap!2487)

(assert (=> b!194120 (= e!127729 call!19636)))

(declare-fun bm!19635 () Bool)

(assert (=> bm!19635 (= call!19636 call!19639)))

(declare-fun bm!19636 () Bool)

(assert (=> bm!19636 (= call!19635 call!19637)))

(declare-fun bm!19637 () Bool)

(assert (=> bm!19637 (= call!19638 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194121 () Bool)

(assert (=> b!194121 (= e!127739 (+!317 call!19639 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun b!194122 () Bool)

(declare-fun e!127738 () Bool)

(assert (=> b!194122 (= e!127738 e!127732)))

(declare-fun res!91767 () Bool)

(assert (=> b!194122 (=> (not res!91767) (not e!127732))))

(assert (=> b!194122 (= res!91767 (contains!1378 lt!96867 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194122 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194123 () Bool)

(assert (=> b!194123 (= e!127739 e!127729)))

(assert (=> b!194123 (= c!34999 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194124 () Bool)

(declare-fun res!91773 () Bool)

(assert (=> b!194124 (=> (not res!91773) (not e!127733))))

(assert (=> b!194124 (= res!91773 e!127738)))

(declare-fun res!91768 () Bool)

(assert (=> b!194124 (=> res!91768 e!127738)))

(declare-fun e!127734 () Bool)

(assert (=> b!194124 (= res!91768 (not e!127734))))

(declare-fun res!91769 () Bool)

(assert (=> b!194124 (=> (not res!91769) (not e!127734))))

(assert (=> b!194124 (= res!91769 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194125 () Bool)

(declare-fun e!127736 () Bool)

(assert (=> b!194125 (= e!127741 e!127736)))

(declare-fun res!91772 () Bool)

(assert (=> b!194125 (= res!91772 call!19641)))

(assert (=> b!194125 (=> (not res!91772) (not e!127736))))

(declare-fun b!194126 () Bool)

(assert (=> b!194126 (= e!127736 (= (apply!188 lt!96867 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3801 thiss!1248)))))

(declare-fun bm!19638 () Bool)

(assert (=> bm!19638 (= call!19637 call!19638)))

(declare-fun b!194127 () Bool)

(declare-fun res!91771 () Bool)

(assert (=> b!194127 (=> (not res!91771) (not e!127733))))

(declare-fun e!127737 () Bool)

(assert (=> b!194127 (= res!91771 e!127737)))

(declare-fun c!35000 () Bool)

(assert (=> b!194127 (= c!35000 (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!194128 () Bool)

(declare-fun c!34996 () Bool)

(assert (=> b!194128 (= c!34996 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!194128 (= e!127729 e!127730)))

(declare-fun b!194129 () Bool)

(assert (=> b!194129 (= e!127734 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194130 () Bool)

(assert (=> b!194130 (= e!127737 e!127735)))

(declare-fun res!91774 () Bool)

(assert (=> b!194130 (= res!91774 call!19640)))

(assert (=> b!194130 (=> (not res!91774) (not e!127735))))

(declare-fun b!194131 () Bool)

(assert (=> b!194131 (= e!127733 e!127741)))

(declare-fun c!34997 () Bool)

(assert (=> b!194131 (= c!34997 (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194132 () Bool)

(assert (=> b!194132 (= e!127737 (not call!19640))))

(declare-fun b!194133 () Bool)

(declare-fun Unit!5885 () Unit!5875)

(assert (=> b!194133 (= e!127740 Unit!5885)))

(assert (= (and d!56579 c!34998) b!194121))

(assert (= (and d!56579 (not c!34998)) b!194123))

(assert (= (and b!194123 c!34999) b!194120))

(assert (= (and b!194123 (not c!34999)) b!194128))

(assert (= (and b!194128 c!34996) b!194117))

(assert (= (and b!194128 (not c!34996)) b!194116))

(assert (= (or b!194117 b!194116) bm!19636))

(assert (= (or b!194120 bm!19636) bm!19638))

(assert (= (or b!194120 b!194117) bm!19635))

(assert (= (or b!194121 bm!19638) bm!19637))

(assert (= (or b!194121 bm!19635) bm!19633))

(assert (= (and d!56579 res!91770) b!194113))

(assert (= (and d!56579 c!35001) b!194118))

(assert (= (and d!56579 (not c!35001)) b!194133))

(assert (= (and d!56579 res!91775) b!194124))

(assert (= (and b!194124 res!91769) b!194129))

(assert (= (and b!194124 (not res!91768)) b!194122))

(assert (= (and b!194122 res!91767) b!194119))

(assert (= (and b!194124 res!91773) b!194127))

(assert (= (and b!194127 c!35000) b!194130))

(assert (= (and b!194127 (not c!35000)) b!194132))

(assert (= (and b!194130 res!91774) b!194114))

(assert (= (or b!194130 b!194132) bm!19632))

(assert (= (and b!194127 res!91771) b!194131))

(assert (= (and b!194131 c!34997) b!194125))

(assert (= (and b!194131 (not c!34997)) b!194115))

(assert (= (and b!194125 res!91772) b!194126))

(assert (= (or b!194125 b!194115) bm!19634))

(declare-fun b_lambda!7511 () Bool)

(assert (=> (not b_lambda!7511) (not b!194119)))

(assert (=> b!194119 t!7406))

(declare-fun b_and!11457 () Bool)

(assert (= b_and!11455 (and (=> t!7406 result!4947) b_and!11457)))

(declare-fun m!220935 () Bool)

(assert (=> bm!19637 m!220935))

(declare-fun m!220937 () Bool)

(assert (=> b!194114 m!220937))

(declare-fun m!220939 () Bool)

(assert (=> bm!19634 m!220939))

(assert (=> d!56579 m!220833))

(declare-fun m!220941 () Bool)

(assert (=> b!194121 m!220941))

(declare-fun m!220943 () Bool)

(assert (=> bm!19633 m!220943))

(assert (=> b!194113 m!220855))

(assert (=> b!194113 m!220855))

(assert (=> b!194113 m!220857))

(assert (=> b!194129 m!220855))

(assert (=> b!194129 m!220855))

(assert (=> b!194129 m!220857))

(assert (=> b!194119 m!220855))

(assert (=> b!194119 m!220859))

(assert (=> b!194119 m!220855))

(declare-fun m!220945 () Bool)

(assert (=> b!194119 m!220945))

(declare-fun m!220947 () Bool)

(assert (=> b!194119 m!220947))

(assert (=> b!194119 m!220947))

(assert (=> b!194119 m!220859))

(declare-fun m!220949 () Bool)

(assert (=> b!194119 m!220949))

(declare-fun m!220951 () Bool)

(assert (=> b!194126 m!220951))

(declare-fun m!220953 () Bool)

(assert (=> b!194118 m!220953))

(declare-fun m!220955 () Bool)

(assert (=> b!194118 m!220955))

(declare-fun m!220957 () Bool)

(assert (=> b!194118 m!220957))

(declare-fun m!220959 () Bool)

(assert (=> b!194118 m!220959))

(declare-fun m!220961 () Bool)

(assert (=> b!194118 m!220961))

(declare-fun m!220963 () Bool)

(assert (=> b!194118 m!220963))

(declare-fun m!220965 () Bool)

(assert (=> b!194118 m!220965))

(declare-fun m!220967 () Bool)

(assert (=> b!194118 m!220967))

(declare-fun m!220969 () Bool)

(assert (=> b!194118 m!220969))

(assert (=> b!194118 m!220855))

(declare-fun m!220971 () Bool)

(assert (=> b!194118 m!220971))

(assert (=> b!194118 m!220955))

(assert (=> b!194118 m!220935))

(assert (=> b!194118 m!220967))

(declare-fun m!220973 () Bool)

(assert (=> b!194118 m!220973))

(declare-fun m!220975 () Bool)

(assert (=> b!194118 m!220975))

(assert (=> b!194118 m!220959))

(declare-fun m!220977 () Bool)

(assert (=> b!194118 m!220977))

(declare-fun m!220979 () Bool)

(assert (=> b!194118 m!220979))

(assert (=> b!194118 m!220963))

(declare-fun m!220981 () Bool)

(assert (=> b!194118 m!220981))

(assert (=> b!194122 m!220855))

(assert (=> b!194122 m!220855))

(declare-fun m!220983 () Bool)

(assert (=> b!194122 m!220983))

(declare-fun m!220985 () Bool)

(assert (=> bm!19632 m!220985))

(assert (=> b!193938 d!56579))

(declare-fun d!56581 () Bool)

(declare-fun e!127744 () Bool)

(assert (=> d!56581 e!127744))

(declare-fun res!91778 () Bool)

(assert (=> d!56581 (=> (not res!91778) (not e!127744))))

(assert (=> d!56581 (= res!91778 (and (bvsge (index!4987 lt!96699) #b00000000000000000000000000000000) (bvslt (index!4987 lt!96699) (size!4199 (_values!3943 thiss!1248)))))))

(declare-fun lt!96878 () Unit!5875)

(declare-fun choose!1073 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 32) (_ BitVec 64) V!5635 Int) Unit!5875)

(assert (=> d!56581 (= lt!96878 (choose!1073 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) key!828 v!309 (defaultEntry!3960 thiss!1248)))))

(assert (=> d!56581 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56581 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!123 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) key!828 v!309 (defaultEntry!3960 thiss!1248)) lt!96878)))

(declare-fun b!194136 () Bool)

(assert (=> b!194136 (= e!127744 (= (+!317 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) (tuple2!3557 key!828 v!309)) (getCurrentListMap!902 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))))

(assert (= (and d!56581 res!91778) b!194136))

(declare-fun m!220987 () Bool)

(assert (=> d!56581 m!220987))

(assert (=> d!56581 m!220833))

(assert (=> b!194136 m!220725))

(assert (=> b!194136 m!220725))

(declare-fun m!220989 () Bool)

(assert (=> b!194136 m!220989))

(assert (=> b!194136 m!220731))

(declare-fun m!220991 () Bool)

(assert (=> b!194136 m!220991))

(assert (=> b!193938 d!56581))

(declare-fun d!56583 () Bool)

(declare-fun e!127747 () Bool)

(assert (=> d!56583 e!127747))

(declare-fun res!91783 () Bool)

(assert (=> d!56583 (=> (not res!91783) (not e!127747))))

(declare-fun lt!96883 () SeekEntryResult!704)

(assert (=> d!56583 (= res!91783 ((_ is Found!704) lt!96883))))

(assert (=> d!56583 (= lt!96883 (seekEntryOrOpen!0 key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun lt!96884 () Unit!5875)

(declare-fun choose!1074 (array!8232 array!8234 (_ BitVec 32) (_ BitVec 32) V!5635 V!5635 (_ BitVec 64) Int) Unit!5875)

(assert (=> d!56583 (= lt!96884 (choose!1074 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)))))

(assert (=> d!56583 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56583 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!187 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)) lt!96884)))

(declare-fun b!194141 () Bool)

(declare-fun res!91784 () Bool)

(assert (=> b!194141 (=> (not res!91784) (not e!127747))))

(assert (=> b!194141 (= res!91784 (inRange!0 (index!4987 lt!96883) (mask!9223 thiss!1248)))))

(declare-fun b!194142 () Bool)

(assert (=> b!194142 (= e!127747 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96883)) key!828))))

(assert (=> b!194142 (and (bvsge (index!4987 lt!96883) #b00000000000000000000000000000000) (bvslt (index!4987 lt!96883) (size!4198 (_keys!5954 thiss!1248))))))

(assert (= (and d!56583 res!91783) b!194141))

(assert (= (and b!194141 res!91784) b!194142))

(assert (=> d!56583 m!220749))

(declare-fun m!220993 () Bool)

(assert (=> d!56583 m!220993))

(assert (=> d!56583 m!220833))

(declare-fun m!220995 () Bool)

(assert (=> b!194141 m!220995))

(declare-fun m!220997 () Bool)

(assert (=> b!194142 m!220997))

(assert (=> b!193947 d!56583))

(declare-fun d!56585 () Bool)

(assert (=> d!56585 (= (inRange!0 (index!4987 lt!96699) (mask!9223 thiss!1248)) (and (bvsge (index!4987 lt!96699) #b00000000000000000000000000000000) (bvslt (index!4987 lt!96699) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!193947 d!56585))

(declare-fun d!56587 () Bool)

(assert (=> d!56587 (= (array_inv!2503 (_keys!5954 thiss!1248)) (bvsge (size!4198 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193945 d!56587))

(declare-fun d!56589 () Bool)

(assert (=> d!56589 (= (array_inv!2504 (_values!3943 thiss!1248)) (bvsge (size!4199 (_values!3943 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193945 d!56589))

(declare-fun b!194155 () Bool)

(declare-fun e!127755 () SeekEntryResult!704)

(declare-fun e!127754 () SeekEntryResult!704)

(assert (=> b!194155 (= e!127755 e!127754)))

(declare-fun lt!96892 () (_ BitVec 64))

(declare-fun lt!96891 () SeekEntryResult!704)

(assert (=> b!194155 (= lt!96892 (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!96891)))))

(declare-fun c!35008 () Bool)

(assert (=> b!194155 (= c!35008 (= lt!96892 key!828))))

(declare-fun e!127756 () SeekEntryResult!704)

(declare-fun b!194156 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8232 (_ BitVec 32)) SeekEntryResult!704)

(assert (=> b!194156 (= e!127756 (seekKeyOrZeroReturnVacant!0 (x!20700 lt!96891) (index!4988 lt!96891) (index!4988 lt!96891) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194157 () Bool)

(declare-fun c!35009 () Bool)

(assert (=> b!194157 (= c!35009 (= lt!96892 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194157 (= e!127754 e!127756)))

(declare-fun b!194158 () Bool)

(assert (=> b!194158 (= e!127755 Undefined!704)))

(declare-fun d!56591 () Bool)

(declare-fun lt!96893 () SeekEntryResult!704)

(assert (=> d!56591 (and (or ((_ is Undefined!704) lt!96893) (not ((_ is Found!704) lt!96893)) (and (bvsge (index!4987 lt!96893) #b00000000000000000000000000000000) (bvslt (index!4987 lt!96893) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!96893) ((_ is Found!704) lt!96893) (not ((_ is MissingZero!704) lt!96893)) (and (bvsge (index!4986 lt!96893) #b00000000000000000000000000000000) (bvslt (index!4986 lt!96893) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!96893) ((_ is Found!704) lt!96893) ((_ is MissingZero!704) lt!96893) (not ((_ is MissingVacant!704) lt!96893)) (and (bvsge (index!4989 lt!96893) #b00000000000000000000000000000000) (bvslt (index!4989 lt!96893) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!96893) (ite ((_ is Found!704) lt!96893) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96893)) key!828) (ite ((_ is MissingZero!704) lt!96893) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4986 lt!96893)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!704) lt!96893) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4989 lt!96893)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56591 (= lt!96893 e!127755)))

(declare-fun c!35010 () Bool)

(assert (=> d!56591 (= c!35010 (and ((_ is Intermediate!704) lt!96891) (undefined!1516 lt!96891)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8232 (_ BitVec 32)) SeekEntryResult!704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56591 (= lt!96891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9223 thiss!1248)) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(assert (=> d!56591 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56591 (= (seekEntryOrOpen!0 key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) lt!96893)))

(declare-fun b!194159 () Bool)

(assert (=> b!194159 (= e!127754 (Found!704 (index!4988 lt!96891)))))

(declare-fun b!194160 () Bool)

(assert (=> b!194160 (= e!127756 (MissingZero!704 (index!4988 lt!96891)))))

(assert (= (and d!56591 c!35010) b!194158))

(assert (= (and d!56591 (not c!35010)) b!194155))

(assert (= (and b!194155 c!35008) b!194159))

(assert (= (and b!194155 (not c!35008)) b!194157))

(assert (= (and b!194157 c!35009) b!194160))

(assert (= (and b!194157 (not c!35009)) b!194156))

(declare-fun m!220999 () Bool)

(assert (=> b!194155 m!220999))

(declare-fun m!221001 () Bool)

(assert (=> b!194156 m!221001))

(declare-fun m!221003 () Bool)

(assert (=> d!56591 m!221003))

(declare-fun m!221005 () Bool)

(assert (=> d!56591 m!221005))

(declare-fun m!221007 () Bool)

(assert (=> d!56591 m!221007))

(assert (=> d!56591 m!220833))

(declare-fun m!221009 () Bool)

(assert (=> d!56591 m!221009))

(declare-fun m!221011 () Bool)

(assert (=> d!56591 m!221011))

(assert (=> d!56591 m!221005))

(assert (=> b!193942 d!56591))

(declare-fun mapIsEmpty!7775 () Bool)

(declare-fun mapRes!7775 () Bool)

(assert (=> mapIsEmpty!7775 mapRes!7775))

(declare-fun b!194168 () Bool)

(declare-fun e!127761 () Bool)

(assert (=> b!194168 (= e!127761 tp_is_empty!4491)))

(declare-fun condMapEmpty!7775 () Bool)

(declare-fun mapDefault!7775 () ValueCell!1902)

(assert (=> mapNonEmpty!7769 (= condMapEmpty!7775 (= mapRest!7769 ((as const (Array (_ BitVec 32) ValueCell!1902)) mapDefault!7775)))))

(assert (=> mapNonEmpty!7769 (= tp!17027 (and e!127761 mapRes!7775))))

(declare-fun mapNonEmpty!7775 () Bool)

(declare-fun tp!17036 () Bool)

(declare-fun e!127762 () Bool)

(assert (=> mapNonEmpty!7775 (= mapRes!7775 (and tp!17036 e!127762))))

(declare-fun mapRest!7775 () (Array (_ BitVec 32) ValueCell!1902))

(declare-fun mapKey!7775 () (_ BitVec 32))

(declare-fun mapValue!7775 () ValueCell!1902)

(assert (=> mapNonEmpty!7775 (= mapRest!7769 (store mapRest!7775 mapKey!7775 mapValue!7775))))

(declare-fun b!194167 () Bool)

(assert (=> b!194167 (= e!127762 tp_is_empty!4491)))

(assert (= (and mapNonEmpty!7769 condMapEmpty!7775) mapIsEmpty!7775))

(assert (= (and mapNonEmpty!7769 (not condMapEmpty!7775)) mapNonEmpty!7775))

(assert (= (and mapNonEmpty!7775 ((_ is ValueCellFull!1902) mapValue!7775)) b!194167))

(assert (= (and mapNonEmpty!7769 ((_ is ValueCellFull!1902) mapDefault!7775)) b!194168))

(declare-fun m!221013 () Bool)

(assert (=> mapNonEmpty!7775 m!221013))

(declare-fun b_lambda!7513 () Bool)

(assert (= b_lambda!7509 (or (and b!193945 b_free!4719) b_lambda!7513)))

(declare-fun b_lambda!7515 () Bool)

(assert (= b_lambda!7511 (or (and b!193945 b_free!4719) b_lambda!7515)))

(check-sat (not d!56561) (not d!56571) (not bm!19632) (not b!194095) tp_is_empty!4491 (not b!194122) (not b!194035) (not d!56575) (not d!56583) (not b!194119) (not b!193990) (not b!194114) (not bm!19633) (not b!194085) (not bm!19609) (not b!194102) (not b!194112) (not b!194156) (not b!194136) (not b!194008) (not b!194084) (not d!56565) (not mapNonEmpty!7775) (not b!194036) (not bm!19610) (not b!194113) (not b!194109) (not d!56555) (not b!194103) (not b!194129) (not d!56581) (not b!194000) (not b_next!4719) (not d!56569) (not b!194079) (not d!56563) (not d!56557) (not bm!19625) (not b_lambda!7513) (not d!56591) (not b!194126) (not b!193991) (not b!194080) (not d!56567) (not bm!19634) (not b!194141) (not b!193998) (not b!194092) (not d!56559) (not b!194104) (not d!56573) (not b!194087) (not d!56577) (not bm!19627) b_and!11457 (not b!194118) (not b!194088) (not b!194106) (not bm!19630) (not d!56579) (not b!194034) (not b!194110) (not b!194009) (not b!194121) (not bm!19626) (not b_lambda!7515) (not bm!19637) (not b!194007))
(check-sat b_and!11457 (not b_next!4719))
(get-model)

(declare-fun d!56593 () Bool)

(assert (=> d!56593 (= (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!194113 d!56593))

(declare-fun b!194179 () Bool)

(declare-fun res!91793 () Bool)

(declare-fun e!127765 () Bool)

(assert (=> b!194179 (=> (not res!91793) (not e!127765))))

(declare-fun size!4202 (LongMapFixedSize!2712) (_ BitVec 32))

(assert (=> b!194179 (= res!91793 (= (size!4202 thiss!1248) (bvadd (_size!1405 thiss!1248) (bvsdiv (bvadd (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!194178 () Bool)

(declare-fun res!91795 () Bool)

(assert (=> b!194178 (=> (not res!91795) (not e!127765))))

(assert (=> b!194178 (= res!91795 (bvsge (size!4202 thiss!1248) (_size!1405 thiss!1248)))))

(declare-fun d!56595 () Bool)

(declare-fun res!91794 () Bool)

(assert (=> d!56595 (=> (not res!91794) (not e!127765))))

(assert (=> d!56595 (= res!91794 (validMask!0 (mask!9223 thiss!1248)))))

(assert (=> d!56595 (= (simpleValid!203 thiss!1248) e!127765)))

(declare-fun b!194177 () Bool)

(declare-fun res!91796 () Bool)

(assert (=> b!194177 (=> (not res!91796) (not e!127765))))

(assert (=> b!194177 (= res!91796 (and (= (size!4199 (_values!3943 thiss!1248)) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001)) (= (size!4198 (_keys!5954 thiss!1248)) (size!4199 (_values!3943 thiss!1248))) (bvsge (_size!1405 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1405 thiss!1248) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!194180 () Bool)

(assert (=> b!194180 (= e!127765 (and (bvsge (extraKeys!3697 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3697 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1405 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!56595 res!91794) b!194177))

(assert (= (and b!194177 res!91796) b!194178))

(assert (= (and b!194178 res!91795) b!194179))

(assert (= (and b!194179 res!91793) b!194180))

(declare-fun m!221015 () Bool)

(assert (=> b!194179 m!221015))

(assert (=> b!194178 m!221015))

(assert (=> d!56595 m!220833))

(assert (=> d!56563 d!56595))

(declare-fun d!56597 () Bool)

(declare-fun e!127767 () Bool)

(assert (=> d!56597 e!127767))

(declare-fun res!91797 () Bool)

(assert (=> d!56597 (=> res!91797 e!127767)))

(declare-fun lt!96894 () Bool)

(assert (=> d!56597 (= res!91797 (not lt!96894))))

(declare-fun lt!96895 () Bool)

(assert (=> d!56597 (= lt!96894 lt!96895)))

(declare-fun lt!96896 () Unit!5875)

(declare-fun e!127766 () Unit!5875)

(assert (=> d!56597 (= lt!96896 e!127766)))

(declare-fun c!35011 () Bool)

(assert (=> d!56597 (= c!35011 lt!96895)))

(assert (=> d!56597 (= lt!96895 (containsKey!248 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (=> d!56597 (= (contains!1378 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) lt!96894)))

(declare-fun b!194181 () Bool)

(declare-fun lt!96897 () Unit!5875)

(assert (=> b!194181 (= e!127766 lt!96897)))

(assert (=> b!194181 (= lt!96897 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (=> b!194181 (isDefined!198 (getValueByKey!244 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun b!194182 () Bool)

(declare-fun Unit!5886 () Unit!5875)

(assert (=> b!194182 (= e!127766 Unit!5886)))

(declare-fun b!194183 () Bool)

(assert (=> b!194183 (= e!127767 (isDefined!198 (getValueByKey!244 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (= (and d!56597 c!35011) b!194181))

(assert (= (and d!56597 (not c!35011)) b!194182))

(assert (= (and d!56597 (not res!91797)) b!194183))

(assert (=> d!56597 m!220737))

(declare-fun m!221017 () Bool)

(assert (=> d!56597 m!221017))

(assert (=> b!194181 m!220737))

(declare-fun m!221019 () Bool)

(assert (=> b!194181 m!221019))

(assert (=> b!194181 m!220737))

(declare-fun m!221021 () Bool)

(assert (=> b!194181 m!221021))

(assert (=> b!194181 m!221021))

(declare-fun m!221023 () Bool)

(assert (=> b!194181 m!221023))

(assert (=> b!194183 m!220737))

(assert (=> b!194183 m!221021))

(assert (=> b!194183 m!221021))

(assert (=> b!194183 m!221023))

(assert (=> b!194109 d!56597))

(assert (=> b!194109 d!56569))

(declare-fun b!194192 () Bool)

(declare-fun e!127776 () Bool)

(declare-fun e!127775 () Bool)

(assert (=> b!194192 (= e!127776 e!127775)))

(declare-fun c!35014 () Bool)

(assert (=> b!194192 (= c!35014 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194193 () Bool)

(declare-fun e!127774 () Bool)

(declare-fun call!19644 () Bool)

(assert (=> b!194193 (= e!127774 call!19644)))

(declare-fun b!194194 () Bool)

(assert (=> b!194194 (= e!127775 e!127774)))

(declare-fun lt!96904 () (_ BitVec 64))

(assert (=> b!194194 (= lt!96904 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96906 () Unit!5875)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8232 (_ BitVec 64) (_ BitVec 32)) Unit!5875)

(assert (=> b!194194 (= lt!96906 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5954 thiss!1248) lt!96904 #b00000000000000000000000000000000))))

(assert (=> b!194194 (arrayContainsKey!0 (_keys!5954 thiss!1248) lt!96904 #b00000000000000000000000000000000)))

(declare-fun lt!96905 () Unit!5875)

(assert (=> b!194194 (= lt!96905 lt!96906)))

(declare-fun res!91802 () Bool)

(assert (=> b!194194 (= res!91802 (= (seekEntryOrOpen!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) (Found!704 #b00000000000000000000000000000000)))))

(assert (=> b!194194 (=> (not res!91802) (not e!127774))))

(declare-fun d!56599 () Bool)

(declare-fun res!91803 () Bool)

(assert (=> d!56599 (=> res!91803 e!127776)))

(assert (=> d!56599 (= res!91803 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56599 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) e!127776)))

(declare-fun bm!19641 () Bool)

(assert (=> bm!19641 (= call!19644 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194195 () Bool)

(assert (=> b!194195 (= e!127775 call!19644)))

(assert (= (and d!56599 (not res!91803)) b!194192))

(assert (= (and b!194192 c!35014) b!194194))

(assert (= (and b!194192 (not c!35014)) b!194195))

(assert (= (and b!194194 res!91802) b!194193))

(assert (= (or b!194193 b!194195) bm!19641))

(assert (=> b!194192 m!220855))

(assert (=> b!194192 m!220855))

(assert (=> b!194192 m!220857))

(assert (=> b!194194 m!220855))

(declare-fun m!221025 () Bool)

(assert (=> b!194194 m!221025))

(declare-fun m!221027 () Bool)

(assert (=> b!194194 m!221027))

(assert (=> b!194194 m!220855))

(declare-fun m!221029 () Bool)

(assert (=> b!194194 m!221029))

(declare-fun m!221031 () Bool)

(assert (=> bm!19641 m!221031))

(assert (=> b!194008 d!56599))

(declare-fun b!194214 () Bool)

(declare-fun e!127788 () Bool)

(declare-fun e!127789 () Bool)

(assert (=> b!194214 (= e!127788 e!127789)))

(declare-fun res!91812 () Bool)

(declare-fun lt!96912 () SeekEntryResult!704)

(assert (=> b!194214 (= res!91812 (and ((_ is Intermediate!704) lt!96912) (not (undefined!1516 lt!96912)) (bvslt (x!20700 lt!96912) #b01111111111111111111111111111110) (bvsge (x!20700 lt!96912) #b00000000000000000000000000000000) (bvsge (x!20700 lt!96912) #b00000000000000000000000000000000)))))

(assert (=> b!194214 (=> (not res!91812) (not e!127789))))

(declare-fun b!194215 () Bool)

(declare-fun e!127791 () SeekEntryResult!704)

(assert (=> b!194215 (= e!127791 (Intermediate!704 true (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!194216 () Bool)

(declare-fun e!127790 () SeekEntryResult!704)

(assert (=> b!194216 (= e!127791 e!127790)))

(declare-fun c!35021 () Bool)

(declare-fun lt!96911 () (_ BitVec 64))

(assert (=> b!194216 (= c!35021 (or (= lt!96911 key!828) (= (bvadd lt!96911 lt!96911) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!194217 () Bool)

(assert (=> b!194217 (and (bvsge (index!4988 lt!96912) #b00000000000000000000000000000000) (bvslt (index!4988 lt!96912) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!91811 () Bool)

(assert (=> b!194217 (= res!91811 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!96912)) key!828))))

(declare-fun e!127787 () Bool)

(assert (=> b!194217 (=> res!91811 e!127787)))

(assert (=> b!194217 (= e!127789 e!127787)))

(declare-fun b!194218 () Bool)

(assert (=> b!194218 (= e!127790 (Intermediate!704 false (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!194219 () Bool)

(assert (=> b!194219 (= e!127788 (bvsge (x!20700 lt!96912) #b01111111111111111111111111111110))))

(declare-fun d!56601 () Bool)

(assert (=> d!56601 e!127788))

(declare-fun c!35023 () Bool)

(assert (=> d!56601 (= c!35023 (and ((_ is Intermediate!704) lt!96912) (undefined!1516 lt!96912)))))

(assert (=> d!56601 (= lt!96912 e!127791)))

(declare-fun c!35022 () Bool)

(assert (=> d!56601 (= c!35022 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!56601 (= lt!96911 (select (arr!3874 (_keys!5954 thiss!1248)) (toIndex!0 key!828 (mask!9223 thiss!1248))))))

(assert (=> d!56601 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9223 thiss!1248)) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) lt!96912)))

(declare-fun b!194220 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!194220 (= e!127790 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194221 () Bool)

(assert (=> b!194221 (and (bvsge (index!4988 lt!96912) #b00000000000000000000000000000000) (bvslt (index!4988 lt!96912) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!91810 () Bool)

(assert (=> b!194221 (= res!91810 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!96912)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194221 (=> res!91810 e!127787)))

(declare-fun b!194222 () Bool)

(assert (=> b!194222 (and (bvsge (index!4988 lt!96912) #b00000000000000000000000000000000) (bvslt (index!4988 lt!96912) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!194222 (= e!127787 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!96912)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!56601 c!35022) b!194215))

(assert (= (and d!56601 (not c!35022)) b!194216))

(assert (= (and b!194216 c!35021) b!194218))

(assert (= (and b!194216 (not c!35021)) b!194220))

(assert (= (and d!56601 c!35023) b!194219))

(assert (= (and d!56601 (not c!35023)) b!194214))

(assert (= (and b!194214 res!91812) b!194217))

(assert (= (and b!194217 (not res!91811)) b!194221))

(assert (= (and b!194221 (not res!91810)) b!194222))

(assert (=> b!194220 m!221005))

(declare-fun m!221033 () Bool)

(assert (=> b!194220 m!221033))

(assert (=> b!194220 m!221033))

(declare-fun m!221035 () Bool)

(assert (=> b!194220 m!221035))

(assert (=> d!56601 m!221005))

(declare-fun m!221037 () Bool)

(assert (=> d!56601 m!221037))

(assert (=> d!56601 m!220833))

(declare-fun m!221039 () Bool)

(assert (=> b!194221 m!221039))

(assert (=> b!194222 m!221039))

(assert (=> b!194217 m!221039))

(assert (=> d!56591 d!56601))

(declare-fun d!56603 () Bool)

(declare-fun lt!96918 () (_ BitVec 32))

(declare-fun lt!96917 () (_ BitVec 32))

(assert (=> d!56603 (= lt!96918 (bvmul (bvxor lt!96917 (bvlshr lt!96917 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!56603 (= lt!96917 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!56603 (and (bvsge (mask!9223 thiss!1248) #b00000000000000000000000000000000) (let ((res!91813 (let ((h!3109 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20724 (bvmul (bvxor h!3109 (bvlshr h!3109 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20724 (bvlshr x!20724 #b00000000000000000000000000001101)) (mask!9223 thiss!1248)))))) (and (bvslt res!91813 (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!91813 #b00000000000000000000000000000000))))))

(assert (=> d!56603 (= (toIndex!0 key!828 (mask!9223 thiss!1248)) (bvand (bvxor lt!96918 (bvlshr lt!96918 #b00000000000000000000000000001101)) (mask!9223 thiss!1248)))))

(assert (=> d!56591 d!56603))

(declare-fun d!56605 () Bool)

(assert (=> d!56605 (= (validMask!0 (mask!9223 thiss!1248)) (and (or (= (mask!9223 thiss!1248) #b00000000000000000000000000000111) (= (mask!9223 thiss!1248) #b00000000000000000000000000001111) (= (mask!9223 thiss!1248) #b00000000000000000000000000011111) (= (mask!9223 thiss!1248) #b00000000000000000000000000111111) (= (mask!9223 thiss!1248) #b00000000000000000000000001111111) (= (mask!9223 thiss!1248) #b00000000000000000000000011111111) (= (mask!9223 thiss!1248) #b00000000000000000000000111111111) (= (mask!9223 thiss!1248) #b00000000000000000000001111111111) (= (mask!9223 thiss!1248) #b00000000000000000000011111111111) (= (mask!9223 thiss!1248) #b00000000000000000000111111111111) (= (mask!9223 thiss!1248) #b00000000000000000001111111111111) (= (mask!9223 thiss!1248) #b00000000000000000011111111111111) (= (mask!9223 thiss!1248) #b00000000000000000111111111111111) (= (mask!9223 thiss!1248) #b00000000000000001111111111111111) (= (mask!9223 thiss!1248) #b00000000000000011111111111111111) (= (mask!9223 thiss!1248) #b00000000000000111111111111111111) (= (mask!9223 thiss!1248) #b00000000000001111111111111111111) (= (mask!9223 thiss!1248) #b00000000000011111111111111111111) (= (mask!9223 thiss!1248) #b00000000000111111111111111111111) (= (mask!9223 thiss!1248) #b00000000001111111111111111111111) (= (mask!9223 thiss!1248) #b00000000011111111111111111111111) (= (mask!9223 thiss!1248) #b00000000111111111111111111111111) (= (mask!9223 thiss!1248) #b00000001111111111111111111111111) (= (mask!9223 thiss!1248) #b00000011111111111111111111111111) (= (mask!9223 thiss!1248) #b00000111111111111111111111111111) (= (mask!9223 thiss!1248) #b00001111111111111111111111111111) (= (mask!9223 thiss!1248) #b00011111111111111111111111111111) (= (mask!9223 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9223 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> d!56591 d!56605))

(declare-fun d!56607 () Bool)

(declare-fun e!127792 () Bool)

(assert (=> d!56607 e!127792))

(declare-fun res!91814 () Bool)

(assert (=> d!56607 (=> (not res!91814) (not e!127792))))

(declare-fun lt!96919 () ListLongMap!2487)

(assert (=> d!56607 (= res!91814 (contains!1378 lt!96919 (_1!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun lt!96922 () List!2469)

(assert (=> d!56607 (= lt!96919 (ListLongMap!2488 lt!96922))))

(declare-fun lt!96920 () Unit!5875)

(declare-fun lt!96921 () Unit!5875)

(assert (=> d!56607 (= lt!96920 lt!96921)))

(assert (=> d!56607 (= (getValueByKey!244 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309))) (Some!249 (_2!1788 (tuple2!3557 key!828 v!309))))))

(assert (=> d!56607 (= lt!96921 (lemmaContainsTupThenGetReturnValue!133 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))))))

(assert (=> d!56607 (= lt!96922 (insertStrictlySorted!135 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))))))

(assert (=> d!56607 (= (+!317 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) (tuple2!3557 key!828 v!309)) lt!96919)))

(declare-fun b!194223 () Bool)

(declare-fun res!91815 () Bool)

(assert (=> b!194223 (=> (not res!91815) (not e!127792))))

(assert (=> b!194223 (= res!91815 (= (getValueByKey!244 (toList!1259 lt!96919) (_1!1788 (tuple2!3557 key!828 v!309))) (Some!249 (_2!1788 (tuple2!3557 key!828 v!309)))))))

(declare-fun b!194224 () Bool)

(assert (=> b!194224 (= e!127792 (contains!1380 (toList!1259 lt!96919) (tuple2!3557 key!828 v!309)))))

(assert (= (and d!56607 res!91814) b!194223))

(assert (= (and b!194223 res!91815) b!194224))

(declare-fun m!221041 () Bool)

(assert (=> d!56607 m!221041))

(declare-fun m!221043 () Bool)

(assert (=> d!56607 m!221043))

(declare-fun m!221045 () Bool)

(assert (=> d!56607 m!221045))

(declare-fun m!221047 () Bool)

(assert (=> d!56607 m!221047))

(declare-fun m!221049 () Bool)

(assert (=> b!194223 m!221049))

(declare-fun m!221051 () Bool)

(assert (=> b!194224 m!221051))

(assert (=> b!194136 d!56607))

(assert (=> b!194136 d!56579))

(declare-fun bm!19642 () Bool)

(declare-fun call!19650 () Bool)

(declare-fun lt!96936 () ListLongMap!2487)

(assert (=> bm!19642 (= call!19650 (contains!1378 lt!96936 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194225 () Bool)

(declare-fun e!127795 () Bool)

(assert (=> b!194225 (= e!127795 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194226 () Bool)

(declare-fun e!127799 () Bool)

(assert (=> b!194226 (= e!127799 (= (apply!188 lt!96936 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3801 thiss!1248)))))

(declare-fun b!194227 () Bool)

(declare-fun e!127805 () Bool)

(declare-fun call!19651 () Bool)

(assert (=> b!194227 (= e!127805 (not call!19651))))

(declare-fun b!194228 () Bool)

(declare-fun e!127794 () ListLongMap!2487)

(declare-fun call!19645 () ListLongMap!2487)

(assert (=> b!194228 (= e!127794 call!19645)))

(declare-fun c!35026 () Bool)

(declare-fun c!35027 () Bool)

(declare-fun call!19647 () ListLongMap!2487)

(declare-fun bm!19643 () Bool)

(declare-fun call!19649 () ListLongMap!2487)

(declare-fun call!19648 () ListLongMap!2487)

(assert (=> bm!19643 (= call!19649 (+!317 (ite c!35026 call!19648 (ite c!35027 call!19647 call!19645)) (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194229 () Bool)

(declare-fun call!19646 () ListLongMap!2487)

(assert (=> b!194229 (= e!127794 call!19646)))

(declare-fun b!194230 () Bool)

(declare-fun e!127804 () Unit!5875)

(declare-fun lt!96932 () Unit!5875)

(assert (=> b!194230 (= e!127804 lt!96932)))

(declare-fun lt!96927 () ListLongMap!2487)

(assert (=> b!194230 (= lt!96927 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96943 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96943 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96923 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96923 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96934 () Unit!5875)

(assert (=> b!194230 (= lt!96934 (addStillContains!164 lt!96927 lt!96943 (zeroValue!3801 thiss!1248) lt!96923))))

(assert (=> b!194230 (contains!1378 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))) lt!96923)))

(declare-fun lt!96942 () Unit!5875)

(assert (=> b!194230 (= lt!96942 lt!96934)))

(declare-fun lt!96929 () ListLongMap!2487)

(assert (=> b!194230 (= lt!96929 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96937 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96937 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96941 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96941 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96938 () Unit!5875)

(assert (=> b!194230 (= lt!96938 (addApplyDifferent!164 lt!96929 lt!96937 (minValue!3801 thiss!1248) lt!96941))))

(assert (=> b!194230 (= (apply!188 (+!317 lt!96929 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))) lt!96941) (apply!188 lt!96929 lt!96941))))

(declare-fun lt!96924 () Unit!5875)

(assert (=> b!194230 (= lt!96924 lt!96938)))

(declare-fun lt!96939 () ListLongMap!2487)

(assert (=> b!194230 (= lt!96939 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96930 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96930 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96925 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96925 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96940 () Unit!5875)

(assert (=> b!194230 (= lt!96940 (addApplyDifferent!164 lt!96939 lt!96930 (zeroValue!3801 thiss!1248) lt!96925))))

(assert (=> b!194230 (= (apply!188 (+!317 lt!96939 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))) lt!96925) (apply!188 lt!96939 lt!96925))))

(declare-fun lt!96928 () Unit!5875)

(assert (=> b!194230 (= lt!96928 lt!96940)))

(declare-fun lt!96944 () ListLongMap!2487)

(assert (=> b!194230 (= lt!96944 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun lt!96935 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96935 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96926 () (_ BitVec 64))

(assert (=> b!194230 (= lt!96926 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!194230 (= lt!96932 (addApplyDifferent!164 lt!96944 lt!96935 (minValue!3801 thiss!1248) lt!96926))))

(assert (=> b!194230 (= (apply!188 (+!317 lt!96944 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))) lt!96926) (apply!188 lt!96944 lt!96926))))

(declare-fun e!127796 () Bool)

(declare-fun b!194231 () Bool)

(assert (=> b!194231 (= e!127796 (= (apply!188 lt!96936 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!194231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))))))))

(assert (=> b!194231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun d!56609 () Bool)

(declare-fun e!127797 () Bool)

(assert (=> d!56609 e!127797))

(declare-fun res!91824 () Bool)

(assert (=> d!56609 (=> (not res!91824) (not e!127797))))

(assert (=> d!56609 (= res!91824 (or (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))))

(declare-fun lt!96933 () ListLongMap!2487)

(assert (=> d!56609 (= lt!96936 lt!96933)))

(declare-fun lt!96931 () Unit!5875)

(assert (=> d!56609 (= lt!96931 e!127804)))

(declare-fun c!35029 () Bool)

(assert (=> d!56609 (= c!35029 e!127795)))

(declare-fun res!91819 () Bool)

(assert (=> d!56609 (=> (not res!91819) (not e!127795))))

(assert (=> d!56609 (= res!91819 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun e!127803 () ListLongMap!2487)

(assert (=> d!56609 (= lt!96933 e!127803)))

(assert (=> d!56609 (= c!35026 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56609 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56609 (= (getCurrentListMap!902 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) lt!96936)))

(declare-fun bm!19644 () Bool)

(assert (=> bm!19644 (= call!19651 (contains!1378 lt!96936 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194232 () Bool)

(declare-fun e!127793 () ListLongMap!2487)

(assert (=> b!194232 (= e!127793 call!19646)))

(declare-fun bm!19645 () Bool)

(assert (=> bm!19645 (= call!19646 call!19649)))

(declare-fun bm!19646 () Bool)

(assert (=> bm!19646 (= call!19645 call!19647)))

(declare-fun bm!19647 () Bool)

(assert (=> bm!19647 (= call!19648 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194233 () Bool)

(assert (=> b!194233 (= e!127803 (+!317 call!19649 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun b!194234 () Bool)

(declare-fun e!127802 () Bool)

(assert (=> b!194234 (= e!127802 e!127796)))

(declare-fun res!91816 () Bool)

(assert (=> b!194234 (=> (not res!91816) (not e!127796))))

(assert (=> b!194234 (= res!91816 (contains!1378 lt!96936 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194235 () Bool)

(assert (=> b!194235 (= e!127803 e!127793)))

(assert (=> b!194235 (= c!35027 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194236 () Bool)

(declare-fun res!91822 () Bool)

(assert (=> b!194236 (=> (not res!91822) (not e!127797))))

(assert (=> b!194236 (= res!91822 e!127802)))

(declare-fun res!91817 () Bool)

(assert (=> b!194236 (=> res!91817 e!127802)))

(declare-fun e!127798 () Bool)

(assert (=> b!194236 (= res!91817 (not e!127798))))

(declare-fun res!91818 () Bool)

(assert (=> b!194236 (=> (not res!91818) (not e!127798))))

(assert (=> b!194236 (= res!91818 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194237 () Bool)

(declare-fun e!127800 () Bool)

(assert (=> b!194237 (= e!127805 e!127800)))

(declare-fun res!91821 () Bool)

(assert (=> b!194237 (= res!91821 call!19651)))

(assert (=> b!194237 (=> (not res!91821) (not e!127800))))

(declare-fun b!194238 () Bool)

(assert (=> b!194238 (= e!127800 (= (apply!188 lt!96936 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3801 thiss!1248)))))

(declare-fun bm!19648 () Bool)

(assert (=> bm!19648 (= call!19647 call!19648)))

(declare-fun b!194239 () Bool)

(declare-fun res!91820 () Bool)

(assert (=> b!194239 (=> (not res!91820) (not e!127797))))

(declare-fun e!127801 () Bool)

(assert (=> b!194239 (= res!91820 e!127801)))

(declare-fun c!35028 () Bool)

(assert (=> b!194239 (= c!35028 (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!194240 () Bool)

(declare-fun c!35024 () Bool)

(assert (=> b!194240 (= c!35024 (and (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!194240 (= e!127793 e!127794)))

(declare-fun b!194241 () Bool)

(assert (=> b!194241 (= e!127798 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194242 () Bool)

(assert (=> b!194242 (= e!127801 e!127799)))

(declare-fun res!91823 () Bool)

(assert (=> b!194242 (= res!91823 call!19650)))

(assert (=> b!194242 (=> (not res!91823) (not e!127799))))

(declare-fun b!194243 () Bool)

(assert (=> b!194243 (= e!127797 e!127805)))

(declare-fun c!35025 () Bool)

(assert (=> b!194243 (= c!35025 (not (= (bvand (extraKeys!3697 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194244 () Bool)

(assert (=> b!194244 (= e!127801 (not call!19650))))

(declare-fun b!194245 () Bool)

(declare-fun Unit!5887 () Unit!5875)

(assert (=> b!194245 (= e!127804 Unit!5887)))

(assert (= (and d!56609 c!35026) b!194233))

(assert (= (and d!56609 (not c!35026)) b!194235))

(assert (= (and b!194235 c!35027) b!194232))

(assert (= (and b!194235 (not c!35027)) b!194240))

(assert (= (and b!194240 c!35024) b!194229))

(assert (= (and b!194240 (not c!35024)) b!194228))

(assert (= (or b!194229 b!194228) bm!19646))

(assert (= (or b!194232 bm!19646) bm!19648))

(assert (= (or b!194232 b!194229) bm!19645))

(assert (= (or b!194233 bm!19648) bm!19647))

(assert (= (or b!194233 bm!19645) bm!19643))

(assert (= (and d!56609 res!91819) b!194225))

(assert (= (and d!56609 c!35029) b!194230))

(assert (= (and d!56609 (not c!35029)) b!194245))

(assert (= (and d!56609 res!91824) b!194236))

(assert (= (and b!194236 res!91818) b!194241))

(assert (= (and b!194236 (not res!91817)) b!194234))

(assert (= (and b!194234 res!91816) b!194231))

(assert (= (and b!194236 res!91822) b!194239))

(assert (= (and b!194239 c!35028) b!194242))

(assert (= (and b!194239 (not c!35028)) b!194244))

(assert (= (and b!194242 res!91823) b!194226))

(assert (= (or b!194242 b!194244) bm!19642))

(assert (= (and b!194239 res!91820) b!194243))

(assert (= (and b!194243 c!35025) b!194237))

(assert (= (and b!194243 (not c!35025)) b!194227))

(assert (= (and b!194237 res!91821) b!194238))

(assert (= (or b!194237 b!194227) bm!19644))

(declare-fun b_lambda!7517 () Bool)

(assert (=> (not b_lambda!7517) (not b!194231)))

(assert (=> b!194231 t!7406))

(declare-fun b_and!11459 () Bool)

(assert (= b_and!11457 (and (=> t!7406 result!4947) b_and!11459)))

(declare-fun m!221053 () Bool)

(assert (=> bm!19647 m!221053))

(declare-fun m!221055 () Bool)

(assert (=> b!194226 m!221055))

(declare-fun m!221057 () Bool)

(assert (=> bm!19644 m!221057))

(assert (=> d!56609 m!220833))

(declare-fun m!221059 () Bool)

(assert (=> b!194233 m!221059))

(declare-fun m!221061 () Bool)

(assert (=> bm!19643 m!221061))

(assert (=> b!194225 m!220855))

(assert (=> b!194225 m!220855))

(assert (=> b!194225 m!220857))

(assert (=> b!194241 m!220855))

(assert (=> b!194241 m!220855))

(assert (=> b!194241 m!220857))

(assert (=> b!194231 m!220855))

(assert (=> b!194231 m!220859))

(assert (=> b!194231 m!220855))

(declare-fun m!221063 () Bool)

(assert (=> b!194231 m!221063))

(declare-fun m!221065 () Bool)

(assert (=> b!194231 m!221065))

(assert (=> b!194231 m!221065))

(assert (=> b!194231 m!220859))

(declare-fun m!221067 () Bool)

(assert (=> b!194231 m!221067))

(declare-fun m!221069 () Bool)

(assert (=> b!194238 m!221069))

(declare-fun m!221071 () Bool)

(assert (=> b!194230 m!221071))

(declare-fun m!221073 () Bool)

(assert (=> b!194230 m!221073))

(declare-fun m!221075 () Bool)

(assert (=> b!194230 m!221075))

(declare-fun m!221077 () Bool)

(assert (=> b!194230 m!221077))

(declare-fun m!221079 () Bool)

(assert (=> b!194230 m!221079))

(declare-fun m!221081 () Bool)

(assert (=> b!194230 m!221081))

(declare-fun m!221083 () Bool)

(assert (=> b!194230 m!221083))

(declare-fun m!221085 () Bool)

(assert (=> b!194230 m!221085))

(declare-fun m!221087 () Bool)

(assert (=> b!194230 m!221087))

(assert (=> b!194230 m!220855))

(declare-fun m!221089 () Bool)

(assert (=> b!194230 m!221089))

(assert (=> b!194230 m!221073))

(assert (=> b!194230 m!221053))

(assert (=> b!194230 m!221085))

(declare-fun m!221091 () Bool)

(assert (=> b!194230 m!221091))

(declare-fun m!221093 () Bool)

(assert (=> b!194230 m!221093))

(assert (=> b!194230 m!221077))

(declare-fun m!221095 () Bool)

(assert (=> b!194230 m!221095))

(declare-fun m!221097 () Bool)

(assert (=> b!194230 m!221097))

(assert (=> b!194230 m!221081))

(declare-fun m!221099 () Bool)

(assert (=> b!194230 m!221099))

(assert (=> b!194234 m!220855))

(assert (=> b!194234 m!220855))

(declare-fun m!221101 () Bool)

(assert (=> b!194234 m!221101))

(declare-fun m!221103 () Bool)

(assert (=> bm!19642 m!221103))

(assert (=> b!194136 d!56609))

(assert (=> b!194079 d!56593))

(declare-fun b!194248 () Bool)

(declare-fun res!91825 () Bool)

(declare-fun e!127806 () Bool)

(assert (=> b!194248 (=> (not res!91825) (not e!127806))))

(assert (=> b!194248 (= res!91825 (= (size!4202 lt!96693) (bvadd (_size!1405 lt!96693) (bvsdiv (bvadd (extraKeys!3697 lt!96693) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!194247 () Bool)

(declare-fun res!91827 () Bool)

(assert (=> b!194247 (=> (not res!91827) (not e!127806))))

(assert (=> b!194247 (= res!91827 (bvsge (size!4202 lt!96693) (_size!1405 lt!96693)))))

(declare-fun d!56611 () Bool)

(declare-fun res!91826 () Bool)

(assert (=> d!56611 (=> (not res!91826) (not e!127806))))

(assert (=> d!56611 (= res!91826 (validMask!0 (mask!9223 lt!96693)))))

(assert (=> d!56611 (= (simpleValid!203 lt!96693) e!127806)))

(declare-fun b!194246 () Bool)

(declare-fun res!91828 () Bool)

(assert (=> b!194246 (=> (not res!91828) (not e!127806))))

(assert (=> b!194246 (= res!91828 (and (= (size!4199 (_values!3943 lt!96693)) (bvadd (mask!9223 lt!96693) #b00000000000000000000000000000001)) (= (size!4198 (_keys!5954 lt!96693)) (size!4199 (_values!3943 lt!96693))) (bvsge (_size!1405 lt!96693) #b00000000000000000000000000000000) (bvsle (_size!1405 lt!96693) (bvadd (mask!9223 lt!96693) #b00000000000000000000000000000001))))))

(declare-fun b!194249 () Bool)

(assert (=> b!194249 (= e!127806 (and (bvsge (extraKeys!3697 lt!96693) #b00000000000000000000000000000000) (bvsle (extraKeys!3697 lt!96693) #b00000000000000000000000000000011) (bvsge (_vacant!1405 lt!96693) #b00000000000000000000000000000000)))))

(assert (= (and d!56611 res!91826) b!194246))

(assert (= (and b!194246 res!91828) b!194247))

(assert (= (and b!194247 res!91827) b!194248))

(assert (= (and b!194248 res!91825) b!194249))

(declare-fun m!221105 () Bool)

(assert (=> b!194248 m!221105))

(assert (=> b!194247 m!221105))

(declare-fun m!221107 () Bool)

(assert (=> d!56611 m!221107))

(assert (=> d!56567 d!56611))

(declare-fun d!56613 () Bool)

(assert (=> d!56613 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96697) key!828))))

(declare-fun lt!96947 () Unit!5875)

(declare-fun choose!1075 (List!2469 (_ BitVec 64)) Unit!5875)

(assert (=> d!56613 (= lt!96947 (choose!1075 (toList!1259 lt!96697) key!828))))

(declare-fun e!127809 () Bool)

(assert (=> d!56613 e!127809))

(declare-fun res!91831 () Bool)

(assert (=> d!56613 (=> (not res!91831) (not e!127809))))

(declare-fun isStrictlySorted!352 (List!2469) Bool)

(assert (=> d!56613 (= res!91831 (isStrictlySorted!352 (toList!1259 lt!96697)))))

(assert (=> d!56613 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96697) key!828) lt!96947)))

(declare-fun b!194252 () Bool)

(assert (=> b!194252 (= e!127809 (containsKey!248 (toList!1259 lt!96697) key!828))))

(assert (= (and d!56613 res!91831) b!194252))

(assert (=> d!56613 m!220811))

(assert (=> d!56613 m!220811))

(assert (=> d!56613 m!220813))

(declare-fun m!221109 () Bool)

(assert (=> d!56613 m!221109))

(declare-fun m!221111 () Bool)

(assert (=> d!56613 m!221111))

(assert (=> b!194252 m!220807))

(assert (=> b!193998 d!56613))

(declare-fun d!56615 () Bool)

(declare-fun isEmpty!492 (Option!250) Bool)

(assert (=> d!56615 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96697) key!828)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96697) key!828))))))

(declare-fun bs!7729 () Bool)

(assert (= bs!7729 d!56615))

(assert (=> bs!7729 m!220811))

(declare-fun m!221113 () Bool)

(assert (=> bs!7729 m!221113))

(assert (=> b!193998 d!56615))

(declare-fun b!194262 () Bool)

(declare-fun e!127814 () Option!250)

(declare-fun e!127815 () Option!250)

(assert (=> b!194262 (= e!127814 e!127815)))

(declare-fun c!35035 () Bool)

(assert (=> b!194262 (= c!35035 (and ((_ is Cons!2465) (toList!1259 lt!96697)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96697))) key!828))))))

(declare-fun b!194261 () Bool)

(assert (=> b!194261 (= e!127814 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96697)))))))

(declare-fun b!194263 () Bool)

(assert (=> b!194263 (= e!127815 (getValueByKey!244 (t!7403 (toList!1259 lt!96697)) key!828))))

(declare-fun d!56617 () Bool)

(declare-fun c!35034 () Bool)

(assert (=> d!56617 (= c!35034 (and ((_ is Cons!2465) (toList!1259 lt!96697)) (= (_1!1788 (h!3106 (toList!1259 lt!96697))) key!828)))))

(assert (=> d!56617 (= (getValueByKey!244 (toList!1259 lt!96697) key!828) e!127814)))

(declare-fun b!194264 () Bool)

(assert (=> b!194264 (= e!127815 None!248)))

(assert (= (and d!56617 c!35034) b!194261))

(assert (= (and d!56617 (not c!35034)) b!194262))

(assert (= (and b!194262 c!35035) b!194263))

(assert (= (and b!194262 (not c!35035)) b!194264))

(declare-fun m!221115 () Bool)

(assert (=> b!194263 m!221115))

(assert (=> b!193998 d!56617))

(declare-fun d!56619 () Bool)

(declare-fun e!127816 () Bool)

(assert (=> d!56619 e!127816))

(declare-fun res!91832 () Bool)

(assert (=> d!56619 (=> (not res!91832) (not e!127816))))

(declare-fun lt!96948 () ListLongMap!2487)

(assert (=> d!56619 (= res!91832 (contains!1378 lt!96948 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun lt!96951 () List!2469)

(assert (=> d!56619 (= lt!96948 (ListLongMap!2488 lt!96951))))

(declare-fun lt!96949 () Unit!5875)

(declare-fun lt!96950 () Unit!5875)

(assert (=> d!56619 (= lt!96949 lt!96950)))

(assert (=> d!56619 (= (getValueByKey!244 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56619 (= lt!96950 (lemmaContainsTupThenGetReturnValue!133 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56619 (= lt!96951 (insertStrictlySorted!135 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56619 (= (+!317 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!96948)))

(declare-fun b!194265 () Bool)

(declare-fun res!91833 () Bool)

(assert (=> b!194265 (=> (not res!91833) (not e!127816))))

(assert (=> b!194265 (= res!91833 (= (getValueByKey!244 (toList!1259 lt!96948) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194266 () Bool)

(assert (=> b!194266 (= e!127816 (contains!1380 (toList!1259 lt!96948) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (= (and d!56619 res!91832) b!194265))

(assert (= (and b!194265 res!91833) b!194266))

(declare-fun m!221117 () Bool)

(assert (=> d!56619 m!221117))

(declare-fun m!221119 () Bool)

(assert (=> d!56619 m!221119))

(declare-fun m!221121 () Bool)

(assert (=> d!56619 m!221121))

(declare-fun m!221123 () Bool)

(assert (=> d!56619 m!221123))

(declare-fun m!221125 () Bool)

(assert (=> b!194265 m!221125))

(declare-fun m!221127 () Bool)

(assert (=> b!194266 m!221127))

(assert (=> bm!19633 d!56619))

(declare-fun d!56621 () Bool)

(declare-fun e!127818 () Bool)

(assert (=> d!56621 e!127818))

(declare-fun res!91834 () Bool)

(assert (=> d!56621 (=> res!91834 e!127818)))

(declare-fun lt!96952 () Bool)

(assert (=> d!56621 (= res!91834 (not lt!96952))))

(declare-fun lt!96953 () Bool)

(assert (=> d!56621 (= lt!96952 lt!96953)))

(declare-fun lt!96954 () Unit!5875)

(declare-fun e!127817 () Unit!5875)

(assert (=> d!56621 (= lt!96954 e!127817)))

(declare-fun c!35036 () Bool)

(assert (=> d!56621 (= c!35036 lt!96953)))

(assert (=> d!56621 (= lt!96953 (containsKey!248 (toList!1259 lt!96751) (_1!1788 lt!96700)))))

(assert (=> d!56621 (= (contains!1378 lt!96751 (_1!1788 lt!96700)) lt!96952)))

(declare-fun b!194267 () Bool)

(declare-fun lt!96955 () Unit!5875)

(assert (=> b!194267 (= e!127817 lt!96955)))

(assert (=> b!194267 (= lt!96955 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96751) (_1!1788 lt!96700)))))

(assert (=> b!194267 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700)))))

(declare-fun b!194268 () Bool)

(declare-fun Unit!5888 () Unit!5875)

(assert (=> b!194268 (= e!127817 Unit!5888)))

(declare-fun b!194269 () Bool)

(assert (=> b!194269 (= e!127818 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700))))))

(assert (= (and d!56621 c!35036) b!194267))

(assert (= (and d!56621 (not c!35036)) b!194268))

(assert (= (and d!56621 (not res!91834)) b!194269))

(declare-fun m!221129 () Bool)

(assert (=> d!56621 m!221129))

(declare-fun m!221131 () Bool)

(assert (=> b!194267 m!221131))

(assert (=> b!194267 m!220803))

(assert (=> b!194267 m!220803))

(declare-fun m!221133 () Bool)

(assert (=> b!194267 m!221133))

(assert (=> b!194269 m!220803))

(assert (=> b!194269 m!220803))

(assert (=> b!194269 m!221133))

(assert (=> d!56555 d!56621))

(declare-fun b!194271 () Bool)

(declare-fun e!127819 () Option!250)

(declare-fun e!127820 () Option!250)

(assert (=> b!194271 (= e!127819 e!127820)))

(declare-fun c!35038 () Bool)

(assert (=> b!194271 (= c!35038 (and ((_ is Cons!2465) lt!96754) (not (= (_1!1788 (h!3106 lt!96754)) (_1!1788 lt!96700)))))))

(declare-fun b!194270 () Bool)

(assert (=> b!194270 (= e!127819 (Some!249 (_2!1788 (h!3106 lt!96754))))))

(declare-fun b!194272 () Bool)

(assert (=> b!194272 (= e!127820 (getValueByKey!244 (t!7403 lt!96754) (_1!1788 lt!96700)))))

(declare-fun d!56623 () Bool)

(declare-fun c!35037 () Bool)

(assert (=> d!56623 (= c!35037 (and ((_ is Cons!2465) lt!96754) (= (_1!1788 (h!3106 lt!96754)) (_1!1788 lt!96700))))))

(assert (=> d!56623 (= (getValueByKey!244 lt!96754 (_1!1788 lt!96700)) e!127819)))

(declare-fun b!194273 () Bool)

(assert (=> b!194273 (= e!127820 None!248)))

(assert (= (and d!56623 c!35037) b!194270))

(assert (= (and d!56623 (not c!35037)) b!194271))

(assert (= (and b!194271 c!35038) b!194272))

(assert (= (and b!194271 (not c!35038)) b!194273))

(declare-fun m!221135 () Bool)

(assert (=> b!194272 m!221135))

(assert (=> d!56555 d!56623))

(declare-fun d!56625 () Bool)

(assert (=> d!56625 (= (getValueByKey!244 lt!96754 (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700)))))

(declare-fun lt!96958 () Unit!5875)

(declare-fun choose!1076 (List!2469 (_ BitVec 64) V!5635) Unit!5875)

(assert (=> d!56625 (= lt!96958 (choose!1076 lt!96754 (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun e!127823 () Bool)

(assert (=> d!56625 e!127823))

(declare-fun res!91839 () Bool)

(assert (=> d!56625 (=> (not res!91839) (not e!127823))))

(assert (=> d!56625 (= res!91839 (isStrictlySorted!352 lt!96754))))

(assert (=> d!56625 (= (lemmaContainsTupThenGetReturnValue!133 lt!96754 (_1!1788 lt!96700) (_2!1788 lt!96700)) lt!96958)))

(declare-fun b!194278 () Bool)

(declare-fun res!91840 () Bool)

(assert (=> b!194278 (=> (not res!91840) (not e!127823))))

(assert (=> b!194278 (= res!91840 (containsKey!248 lt!96754 (_1!1788 lt!96700)))))

(declare-fun b!194279 () Bool)

(assert (=> b!194279 (= e!127823 (contains!1380 lt!96754 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(assert (= (and d!56625 res!91839) b!194278))

(assert (= (and b!194278 res!91840) b!194279))

(assert (=> d!56625 m!220797))

(declare-fun m!221137 () Bool)

(assert (=> d!56625 m!221137))

(declare-fun m!221139 () Bool)

(assert (=> d!56625 m!221139))

(declare-fun m!221141 () Bool)

(assert (=> b!194278 m!221141))

(declare-fun m!221143 () Bool)

(assert (=> b!194279 m!221143))

(assert (=> d!56555 d!56625))

(declare-fun c!35048 () Bool)

(declare-fun e!127834 () List!2469)

(declare-fun call!19659 () List!2469)

(declare-fun bm!19655 () Bool)

(declare-fun $colon$colon!102 (List!2469 tuple2!3556) List!2469)

(assert (=> bm!19655 (= call!19659 ($colon$colon!102 e!127834 (ite c!35048 (h!3106 (toList!1259 (map!2028 thiss!1248))) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700)))))))

(declare-fun c!35047 () Bool)

(assert (=> bm!19655 (= c!35047 c!35048)))

(declare-fun b!194300 () Bool)

(declare-fun e!127838 () List!2469)

(declare-fun call!19658 () List!2469)

(assert (=> b!194300 (= e!127838 call!19658)))

(declare-fun b!194301 () Bool)

(declare-fun c!35049 () Bool)

(assert (=> b!194301 (= c!35049 (and ((_ is Cons!2465) (toList!1259 (map!2028 thiss!1248))) (bvsgt (_1!1788 (h!3106 (toList!1259 (map!2028 thiss!1248)))) (_1!1788 lt!96700))))))

(declare-fun e!127836 () List!2469)

(assert (=> b!194301 (= e!127838 e!127836)))

(declare-fun b!194302 () Bool)

(declare-fun e!127837 () Bool)

(declare-fun lt!96961 () List!2469)

(assert (=> b!194302 (= e!127837 (contains!1380 lt!96961 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun bm!19656 () Bool)

(declare-fun call!19660 () List!2469)

(assert (=> bm!19656 (= call!19660 call!19658)))

(declare-fun b!194303 () Bool)

(declare-fun e!127835 () List!2469)

(assert (=> b!194303 (= e!127835 e!127838)))

(declare-fun c!35050 () Bool)

(assert (=> b!194303 (= c!35050 (and ((_ is Cons!2465) (toList!1259 (map!2028 thiss!1248))) (= (_1!1788 (h!3106 (toList!1259 (map!2028 thiss!1248)))) (_1!1788 lt!96700))))))

(declare-fun d!56627 () Bool)

(assert (=> d!56627 e!127837))

(declare-fun res!91845 () Bool)

(assert (=> d!56627 (=> (not res!91845) (not e!127837))))

(assert (=> d!56627 (= res!91845 (isStrictlySorted!352 lt!96961))))

(assert (=> d!56627 (= lt!96961 e!127835)))

(assert (=> d!56627 (= c!35048 (and ((_ is Cons!2465) (toList!1259 (map!2028 thiss!1248))) (bvslt (_1!1788 (h!3106 (toList!1259 (map!2028 thiss!1248)))) (_1!1788 lt!96700))))))

(assert (=> d!56627 (isStrictlySorted!352 (toList!1259 (map!2028 thiss!1248)))))

(assert (=> d!56627 (= (insertStrictlySorted!135 (toList!1259 (map!2028 thiss!1248)) (_1!1788 lt!96700) (_2!1788 lt!96700)) lt!96961)))

(declare-fun bm!19657 () Bool)

(assert (=> bm!19657 (= call!19658 call!19659)))

(declare-fun b!194304 () Bool)

(assert (=> b!194304 (= e!127836 call!19660)))

(declare-fun b!194305 () Bool)

(assert (=> b!194305 (= e!127834 (insertStrictlySorted!135 (t!7403 (toList!1259 (map!2028 thiss!1248))) (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun b!194306 () Bool)

(assert (=> b!194306 (= e!127836 call!19660)))

(declare-fun b!194307 () Bool)

(declare-fun res!91846 () Bool)

(assert (=> b!194307 (=> (not res!91846) (not e!127837))))

(assert (=> b!194307 (= res!91846 (containsKey!248 lt!96961 (_1!1788 lt!96700)))))

(declare-fun b!194308 () Bool)

(assert (=> b!194308 (= e!127835 call!19659)))

(declare-fun b!194309 () Bool)

(assert (=> b!194309 (= e!127834 (ite c!35050 (t!7403 (toList!1259 (map!2028 thiss!1248))) (ite c!35049 (Cons!2465 (h!3106 (toList!1259 (map!2028 thiss!1248))) (t!7403 (toList!1259 (map!2028 thiss!1248)))) Nil!2466)))))

(assert (= (and d!56627 c!35048) b!194308))

(assert (= (and d!56627 (not c!35048)) b!194303))

(assert (= (and b!194303 c!35050) b!194300))

(assert (= (and b!194303 (not c!35050)) b!194301))

(assert (= (and b!194301 c!35049) b!194306))

(assert (= (and b!194301 (not c!35049)) b!194304))

(assert (= (or b!194306 b!194304) bm!19656))

(assert (= (or b!194300 bm!19656) bm!19657))

(assert (= (or b!194308 bm!19657) bm!19655))

(assert (= (and bm!19655 c!35047) b!194305))

(assert (= (and bm!19655 (not c!35047)) b!194309))

(assert (= (and d!56627 res!91845) b!194307))

(assert (= (and b!194307 res!91846) b!194302))

(declare-fun m!221145 () Bool)

(assert (=> bm!19655 m!221145))

(declare-fun m!221147 () Bool)

(assert (=> b!194307 m!221147))

(declare-fun m!221149 () Bool)

(assert (=> b!194302 m!221149))

(declare-fun m!221151 () Bool)

(assert (=> b!194305 m!221151))

(declare-fun m!221153 () Bool)

(assert (=> d!56627 m!221153))

(declare-fun m!221155 () Bool)

(assert (=> d!56627 m!221155))

(assert (=> d!56555 d!56627))

(declare-fun d!56629 () Bool)

(declare-fun res!91851 () Bool)

(declare-fun e!127843 () Bool)

(assert (=> d!56629 (=> res!91851 e!127843)))

(assert (=> d!56629 (= res!91851 (and ((_ is Cons!2465) (toList!1259 lt!96698)) (= (_1!1788 (h!3106 (toList!1259 lt!96698))) key!828)))))

(assert (=> d!56629 (= (containsKey!248 (toList!1259 lt!96698) key!828) e!127843)))

(declare-fun b!194314 () Bool)

(declare-fun e!127844 () Bool)

(assert (=> b!194314 (= e!127843 e!127844)))

(declare-fun res!91852 () Bool)

(assert (=> b!194314 (=> (not res!91852) (not e!127844))))

(assert (=> b!194314 (= res!91852 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96698))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96698))) key!828)) ((_ is Cons!2465) (toList!1259 lt!96698)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96698))) key!828)))))

(declare-fun b!194315 () Bool)

(assert (=> b!194315 (= e!127844 (containsKey!248 (t!7403 (toList!1259 lt!96698)) key!828))))

(assert (= (and d!56629 (not res!91851)) b!194314))

(assert (= (and b!194314 res!91852) b!194315))

(declare-fun m!221157 () Bool)

(assert (=> b!194315 m!221157))

(assert (=> d!56577 d!56629))

(assert (=> d!56579 d!56605))

(declare-fun d!56631 () Bool)

(declare-fun lt!96964 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!154 (List!2469) (InoxSet tuple2!3556))

(assert (=> d!56631 (= lt!96964 (select (content!154 (toList!1259 lt!96839)) lt!96700))))

(declare-fun e!127850 () Bool)

(assert (=> d!56631 (= lt!96964 e!127850)))

(declare-fun res!91857 () Bool)

(assert (=> d!56631 (=> (not res!91857) (not e!127850))))

(assert (=> d!56631 (= res!91857 ((_ is Cons!2465) (toList!1259 lt!96839)))))

(assert (=> d!56631 (= (contains!1380 (toList!1259 lt!96839) lt!96700) lt!96964)))

(declare-fun b!194320 () Bool)

(declare-fun e!127849 () Bool)

(assert (=> b!194320 (= e!127850 e!127849)))

(declare-fun res!91858 () Bool)

(assert (=> b!194320 (=> res!91858 e!127849)))

(assert (=> b!194320 (= res!91858 (= (h!3106 (toList!1259 lt!96839)) lt!96700))))

(declare-fun b!194321 () Bool)

(assert (=> b!194321 (= e!127849 (contains!1380 (t!7403 (toList!1259 lt!96839)) lt!96700))))

(assert (= (and d!56631 res!91857) b!194320))

(assert (= (and b!194320 (not res!91858)) b!194321))

(declare-fun m!221159 () Bool)

(assert (=> d!56631 m!221159))

(declare-fun m!221161 () Bool)

(assert (=> d!56631 m!221161))

(declare-fun m!221163 () Bool)

(assert (=> b!194321 m!221163))

(assert (=> b!194103 d!56631))

(assert (=> b!194000 d!56615))

(assert (=> b!194000 d!56617))

(declare-fun b!194346 () Bool)

(declare-fun e!127868 () ListLongMap!2487)

(declare-fun e!127869 () ListLongMap!2487)

(assert (=> b!194346 (= e!127868 e!127869)))

(declare-fun c!35062 () Bool)

(assert (=> b!194346 (= c!35062 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194348 () Bool)

(declare-fun e!127871 () Bool)

(declare-fun lt!96985 () ListLongMap!2487)

(declare-fun isEmpty!493 (ListLongMap!2487) Bool)

(assert (=> b!194348 (= e!127871 (isEmpty!493 lt!96985))))

(declare-fun b!194349 () Bool)

(declare-fun call!19663 () ListLongMap!2487)

(assert (=> b!194349 (= e!127869 call!19663)))

(declare-fun b!194350 () Bool)

(declare-fun e!127870 () Bool)

(declare-fun e!127866 () Bool)

(assert (=> b!194350 (= e!127870 e!127866)))

(assert (=> b!194350 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!91867 () Bool)

(assert (=> b!194350 (= res!91867 (contains!1378 lt!96985 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194350 (=> (not res!91867) (not e!127866))))

(declare-fun b!194351 () Bool)

(declare-fun e!127867 () Bool)

(assert (=> b!194351 (= e!127867 e!127870)))

(declare-fun c!35061 () Bool)

(declare-fun e!127865 () Bool)

(assert (=> b!194351 (= c!35061 e!127865)))

(declare-fun res!91868 () Bool)

(assert (=> b!194351 (=> (not res!91868) (not e!127865))))

(assert (=> b!194351 (= res!91868 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194352 () Bool)

(assert (=> b!194352 (= e!127865 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194352 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!194353 () Bool)

(assert (=> b!194353 (= e!127868 (ListLongMap!2488 Nil!2466))))

(declare-fun b!194354 () Bool)

(assert (=> b!194354 (= e!127871 (= lt!96985 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248))))))

(declare-fun bm!19660 () Bool)

(assert (=> bm!19660 (= call!19663 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194355 () Bool)

(assert (=> b!194355 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!194355 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 (_values!3943 thiss!1248))))))

(assert (=> b!194355 (= e!127866 (= (apply!188 lt!96985 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194347 () Bool)

(declare-fun lt!96982 () Unit!5875)

(declare-fun lt!96983 () Unit!5875)

(assert (=> b!194347 (= lt!96982 lt!96983)))

(declare-fun lt!96981 () (_ BitVec 64))

(declare-fun lt!96984 () ListLongMap!2487)

(declare-fun lt!96979 () (_ BitVec 64))

(declare-fun lt!96980 () V!5635)

(assert (=> b!194347 (not (contains!1378 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980)) lt!96979))))

(declare-fun addStillNotContains!99 (ListLongMap!2487 (_ BitVec 64) V!5635 (_ BitVec 64)) Unit!5875)

(assert (=> b!194347 (= lt!96983 (addStillNotContains!99 lt!96984 lt!96981 lt!96980 lt!96979))))

(assert (=> b!194347 (= lt!96979 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!194347 (= lt!96980 (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!194347 (= lt!96981 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!194347 (= lt!96984 call!19663)))

(assert (=> b!194347 (= e!127869 (+!317 call!19663 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!56633 () Bool)

(assert (=> d!56633 e!127867))

(declare-fun res!91870 () Bool)

(assert (=> d!56633 (=> (not res!91870) (not e!127867))))

(assert (=> d!56633 (= res!91870 (not (contains!1378 lt!96985 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56633 (= lt!96985 e!127868)))

(declare-fun c!35059 () Bool)

(assert (=> d!56633 (= c!35059 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56633 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56633 (= (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) lt!96985)))

(declare-fun b!194356 () Bool)

(assert (=> b!194356 (= e!127870 e!127871)))

(declare-fun c!35060 () Bool)

(assert (=> b!194356 (= c!35060 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194357 () Bool)

(declare-fun res!91869 () Bool)

(assert (=> b!194357 (=> (not res!91869) (not e!127867))))

(assert (=> b!194357 (= res!91869 (not (contains!1378 lt!96985 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56633 c!35059) b!194353))

(assert (= (and d!56633 (not c!35059)) b!194346))

(assert (= (and b!194346 c!35062) b!194347))

(assert (= (and b!194346 (not c!35062)) b!194349))

(assert (= (or b!194347 b!194349) bm!19660))

(assert (= (and d!56633 res!91870) b!194357))

(assert (= (and b!194357 res!91869) b!194351))

(assert (= (and b!194351 res!91868) b!194352))

(assert (= (and b!194351 c!35061) b!194350))

(assert (= (and b!194351 (not c!35061)) b!194356))

(assert (= (and b!194350 res!91867) b!194355))

(assert (= (and b!194356 c!35060) b!194354))

(assert (= (and b!194356 (not c!35060)) b!194348))

(declare-fun b_lambda!7519 () Bool)

(assert (=> (not b_lambda!7519) (not b!194355)))

(assert (=> b!194355 t!7406))

(declare-fun b_and!11461 () Bool)

(assert (= b_and!11459 (and (=> t!7406 result!4947) b_and!11461)))

(declare-fun b_lambda!7521 () Bool)

(assert (=> (not b_lambda!7521) (not b!194347)))

(assert (=> b!194347 t!7406))

(declare-fun b_and!11463 () Bool)

(assert (= b_and!11461 (and (=> t!7406 result!4947) b_and!11463)))

(declare-fun m!221165 () Bool)

(assert (=> d!56633 m!221165))

(assert (=> d!56633 m!220833))

(declare-fun m!221167 () Bool)

(assert (=> bm!19660 m!221167))

(declare-fun m!221169 () Bool)

(assert (=> b!194347 m!221169))

(declare-fun m!221171 () Bool)

(assert (=> b!194347 m!221171))

(assert (=> b!194347 m!220947))

(assert (=> b!194347 m!220859))

(assert (=> b!194347 m!220949))

(assert (=> b!194347 m!221171))

(declare-fun m!221173 () Bool)

(assert (=> b!194347 m!221173))

(assert (=> b!194347 m!220855))

(declare-fun m!221175 () Bool)

(assert (=> b!194347 m!221175))

(assert (=> b!194347 m!220859))

(assert (=> b!194347 m!220947))

(assert (=> b!194352 m!220855))

(assert (=> b!194352 m!220855))

(assert (=> b!194352 m!220857))

(declare-fun m!221177 () Bool)

(assert (=> b!194348 m!221177))

(assert (=> b!194350 m!220855))

(assert (=> b!194350 m!220855))

(declare-fun m!221179 () Bool)

(assert (=> b!194350 m!221179))

(declare-fun m!221181 () Bool)

(assert (=> b!194357 m!221181))

(assert (=> b!194354 m!221167))

(assert (=> b!194355 m!220947))

(assert (=> b!194355 m!220859))

(assert (=> b!194355 m!220949))

(assert (=> b!194355 m!220855))

(declare-fun m!221183 () Bool)

(assert (=> b!194355 m!221183))

(assert (=> b!194355 m!220855))

(assert (=> b!194355 m!220859))

(assert (=> b!194355 m!220947))

(assert (=> b!194346 m!220855))

(assert (=> b!194346 m!220855))

(assert (=> b!194346 m!220857))

(assert (=> b!194118 d!56633))

(declare-fun d!56635 () Bool)

(declare-fun get!2239 (Option!250) V!5635)

(assert (=> d!56635 (= (apply!188 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) lt!96857) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!96857)))))

(declare-fun bs!7730 () Bool)

(assert (= bs!7730 d!56635))

(declare-fun m!221185 () Bool)

(assert (=> bs!7730 m!221185))

(assert (=> bs!7730 m!221185))

(declare-fun m!221187 () Bool)

(assert (=> bs!7730 m!221187))

(assert (=> b!194118 d!56635))

(declare-fun d!56637 () Bool)

(assert (=> d!56637 (= (apply!188 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) lt!96857) (apply!188 lt!96875 lt!96857))))

(declare-fun lt!96988 () Unit!5875)

(declare-fun choose!1077 (ListLongMap!2487 (_ BitVec 64) V!5635 (_ BitVec 64)) Unit!5875)

(assert (=> d!56637 (= lt!96988 (choose!1077 lt!96875 lt!96866 (minValue!3801 thiss!1248) lt!96857))))

(declare-fun e!127874 () Bool)

(assert (=> d!56637 e!127874))

(declare-fun res!91873 () Bool)

(assert (=> d!56637 (=> (not res!91873) (not e!127874))))

(assert (=> d!56637 (= res!91873 (contains!1378 lt!96875 lt!96857))))

(assert (=> d!56637 (= (addApplyDifferent!164 lt!96875 lt!96866 (minValue!3801 thiss!1248) lt!96857) lt!96988)))

(declare-fun b!194361 () Bool)

(assert (=> b!194361 (= e!127874 (not (= lt!96857 lt!96866)))))

(assert (= (and d!56637 res!91873) b!194361))

(assert (=> d!56637 m!220963))

(assert (=> d!56637 m!220981))

(assert (=> d!56637 m!220963))

(declare-fun m!221189 () Bool)

(assert (=> d!56637 m!221189))

(declare-fun m!221191 () Bool)

(assert (=> d!56637 m!221191))

(assert (=> d!56637 m!220975))

(assert (=> b!194118 d!56637))

(declare-fun d!56639 () Bool)

(assert (=> d!56639 (= (apply!188 lt!96875 lt!96857) (get!2239 (getValueByKey!244 (toList!1259 lt!96875) lt!96857)))))

(declare-fun bs!7731 () Bool)

(assert (= bs!7731 d!56639))

(declare-fun m!221193 () Bool)

(assert (=> bs!7731 m!221193))

(assert (=> bs!7731 m!221193))

(declare-fun m!221195 () Bool)

(assert (=> bs!7731 m!221195))

(assert (=> b!194118 d!56639))

(declare-fun d!56641 () Bool)

(declare-fun e!127875 () Bool)

(assert (=> d!56641 e!127875))

(declare-fun res!91874 () Bool)

(assert (=> d!56641 (=> (not res!91874) (not e!127875))))

(declare-fun lt!96989 () ListLongMap!2487)

(assert (=> d!56641 (= res!91874 (contains!1378 lt!96989 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun lt!96992 () List!2469)

(assert (=> d!56641 (= lt!96989 (ListLongMap!2488 lt!96992))))

(declare-fun lt!96990 () Unit!5875)

(declare-fun lt!96991 () Unit!5875)

(assert (=> d!56641 (= lt!96990 lt!96991)))

(assert (=> d!56641 (= (getValueByKey!244 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(assert (=> d!56641 (= lt!96991 (lemmaContainsTupThenGetReturnValue!133 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(assert (=> d!56641 (= lt!96992 (insertStrictlySorted!135 (toList!1259 lt!96875) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(assert (=> d!56641 (= (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) lt!96989)))

(declare-fun b!194362 () Bool)

(declare-fun res!91875 () Bool)

(assert (=> b!194362 (=> (not res!91875) (not e!127875))))

(assert (=> b!194362 (= res!91875 (= (getValueByKey!244 (toList!1259 lt!96989) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(declare-fun b!194363 () Bool)

(assert (=> b!194363 (= e!127875 (contains!1380 (toList!1259 lt!96989) (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))

(assert (= (and d!56641 res!91874) b!194362))

(assert (= (and b!194362 res!91875) b!194363))

(declare-fun m!221197 () Bool)

(assert (=> d!56641 m!221197))

(declare-fun m!221199 () Bool)

(assert (=> d!56641 m!221199))

(declare-fun m!221201 () Bool)

(assert (=> d!56641 m!221201))

(declare-fun m!221203 () Bool)

(assert (=> d!56641 m!221203))

(declare-fun m!221205 () Bool)

(assert (=> b!194362 m!221205))

(declare-fun m!221207 () Bool)

(assert (=> b!194363 m!221207))

(assert (=> b!194118 d!56641))

(declare-fun d!56643 () Bool)

(assert (=> d!56643 (= (apply!188 lt!96870 lt!96856) (get!2239 (getValueByKey!244 (toList!1259 lt!96870) lt!96856)))))

(declare-fun bs!7732 () Bool)

(assert (= bs!7732 d!56643))

(declare-fun m!221209 () Bool)

(assert (=> bs!7732 m!221209))

(assert (=> bs!7732 m!221209))

(declare-fun m!221211 () Bool)

(assert (=> bs!7732 m!221211))

(assert (=> b!194118 d!56643))

(declare-fun d!56645 () Bool)

(assert (=> d!56645 (= (apply!188 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) lt!96872) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!96872)))))

(declare-fun bs!7733 () Bool)

(assert (= bs!7733 d!56645))

(declare-fun m!221213 () Bool)

(assert (=> bs!7733 m!221213))

(assert (=> bs!7733 m!221213))

(declare-fun m!221215 () Bool)

(assert (=> bs!7733 m!221215))

(assert (=> b!194118 d!56645))

(declare-fun d!56647 () Bool)

(assert (=> d!56647 (= (apply!188 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) lt!96872) (apply!188 lt!96860 lt!96872))))

(declare-fun lt!96993 () Unit!5875)

(assert (=> d!56647 (= lt!96993 (choose!1077 lt!96860 lt!96868 (minValue!3801 thiss!1248) lt!96872))))

(declare-fun e!127876 () Bool)

(assert (=> d!56647 e!127876))

(declare-fun res!91876 () Bool)

(assert (=> d!56647 (=> (not res!91876) (not e!127876))))

(assert (=> d!56647 (= res!91876 (contains!1378 lt!96860 lt!96872))))

(assert (=> d!56647 (= (addApplyDifferent!164 lt!96860 lt!96868 (minValue!3801 thiss!1248) lt!96872) lt!96993)))

(declare-fun b!194364 () Bool)

(assert (=> b!194364 (= e!127876 (not (= lt!96872 lt!96868)))))

(assert (= (and d!56647 res!91876) b!194364))

(assert (=> d!56647 m!220959))

(assert (=> d!56647 m!220961))

(assert (=> d!56647 m!220959))

(declare-fun m!221217 () Bool)

(assert (=> d!56647 m!221217))

(declare-fun m!221219 () Bool)

(assert (=> d!56647 m!221219))

(assert (=> d!56647 m!220977))

(assert (=> b!194118 d!56647))

(declare-fun d!56649 () Bool)

(assert (=> d!56649 (= (apply!188 lt!96860 lt!96872) (get!2239 (getValueByKey!244 (toList!1259 lt!96860) lt!96872)))))

(declare-fun bs!7734 () Bool)

(assert (= bs!7734 d!56649))

(declare-fun m!221221 () Bool)

(assert (=> bs!7734 m!221221))

(assert (=> bs!7734 m!221221))

(declare-fun m!221223 () Bool)

(assert (=> bs!7734 m!221223))

(assert (=> b!194118 d!56649))

(declare-fun d!56651 () Bool)

(assert (=> d!56651 (= (apply!188 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) lt!96856) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!96856)))))

(declare-fun bs!7735 () Bool)

(assert (= bs!7735 d!56651))

(declare-fun m!221225 () Bool)

(assert (=> bs!7735 m!221225))

(assert (=> bs!7735 m!221225))

(declare-fun m!221227 () Bool)

(assert (=> bs!7735 m!221227))

(assert (=> b!194118 d!56651))

(declare-fun d!56653 () Bool)

(declare-fun e!127877 () Bool)

(assert (=> d!56653 e!127877))

(declare-fun res!91877 () Bool)

(assert (=> d!56653 (=> (not res!91877) (not e!127877))))

(declare-fun lt!96994 () ListLongMap!2487)

(assert (=> d!56653 (= res!91877 (contains!1378 lt!96994 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun lt!96997 () List!2469)

(assert (=> d!56653 (= lt!96994 (ListLongMap!2488 lt!96997))))

(declare-fun lt!96995 () Unit!5875)

(declare-fun lt!96996 () Unit!5875)

(assert (=> d!56653 (= lt!96995 lt!96996)))

(assert (=> d!56653 (= (getValueByKey!244 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(assert (=> d!56653 (= lt!96996 (lemmaContainsTupThenGetReturnValue!133 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(assert (=> d!56653 (= lt!96997 (insertStrictlySorted!135 (toList!1259 lt!96860) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(assert (=> d!56653 (= (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) lt!96994)))

(declare-fun b!194365 () Bool)

(declare-fun res!91878 () Bool)

(assert (=> b!194365 (=> (not res!91878) (not e!127877))))

(assert (=> b!194365 (= res!91878 (= (getValueByKey!244 (toList!1259 lt!96994) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(declare-fun b!194366 () Bool)

(assert (=> b!194366 (= e!127877 (contains!1380 (toList!1259 lt!96994) (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))

(assert (= (and d!56653 res!91877) b!194365))

(assert (= (and b!194365 res!91878) b!194366))

(declare-fun m!221229 () Bool)

(assert (=> d!56653 m!221229))

(declare-fun m!221231 () Bool)

(assert (=> d!56653 m!221231))

(declare-fun m!221233 () Bool)

(assert (=> d!56653 m!221233))

(declare-fun m!221235 () Bool)

(assert (=> d!56653 m!221235))

(declare-fun m!221237 () Bool)

(assert (=> b!194365 m!221237))

(declare-fun m!221239 () Bool)

(assert (=> b!194366 m!221239))

(assert (=> b!194118 d!56653))

(declare-fun d!56655 () Bool)

(declare-fun e!127878 () Bool)

(assert (=> d!56655 e!127878))

(declare-fun res!91879 () Bool)

(assert (=> d!56655 (=> (not res!91879) (not e!127878))))

(declare-fun lt!96998 () ListLongMap!2487)

(assert (=> d!56655 (= res!91879 (contains!1378 lt!96998 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97001 () List!2469)

(assert (=> d!56655 (= lt!96998 (ListLongMap!2488 lt!97001))))

(declare-fun lt!96999 () Unit!5875)

(declare-fun lt!97000 () Unit!5875)

(assert (=> d!56655 (= lt!96999 lt!97000)))

(assert (=> d!56655 (= (getValueByKey!244 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56655 (= lt!97000 (lemmaContainsTupThenGetReturnValue!133 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56655 (= lt!97001 (insertStrictlySorted!135 (toList!1259 lt!96870) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56655 (= (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) lt!96998)))

(declare-fun b!194367 () Bool)

(declare-fun res!91880 () Bool)

(assert (=> b!194367 (=> (not res!91880) (not e!127878))))

(assert (=> b!194367 (= res!91880 (= (getValueByKey!244 (toList!1259 lt!96998) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(declare-fun b!194368 () Bool)

(assert (=> b!194368 (= e!127878 (contains!1380 (toList!1259 lt!96998) (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56655 res!91879) b!194367))

(assert (= (and b!194367 res!91880) b!194368))

(declare-fun m!221241 () Bool)

(assert (=> d!56655 m!221241))

(declare-fun m!221243 () Bool)

(assert (=> d!56655 m!221243))

(declare-fun m!221245 () Bool)

(assert (=> d!56655 m!221245))

(declare-fun m!221247 () Bool)

(assert (=> d!56655 m!221247))

(declare-fun m!221249 () Bool)

(assert (=> b!194367 m!221249))

(declare-fun m!221251 () Bool)

(assert (=> b!194368 m!221251))

(assert (=> b!194118 d!56655))

(declare-fun d!56657 () Bool)

(declare-fun e!127879 () Bool)

(assert (=> d!56657 e!127879))

(declare-fun res!91881 () Bool)

(assert (=> d!56657 (=> (not res!91881) (not e!127879))))

(declare-fun lt!97002 () ListLongMap!2487)

(assert (=> d!56657 (= res!91881 (contains!1378 lt!97002 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97005 () List!2469)

(assert (=> d!56657 (= lt!97002 (ListLongMap!2488 lt!97005))))

(declare-fun lt!97003 () Unit!5875)

(declare-fun lt!97004 () Unit!5875)

(assert (=> d!56657 (= lt!97003 lt!97004)))

(assert (=> d!56657 (= (getValueByKey!244 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56657 (= lt!97004 (lemmaContainsTupThenGetReturnValue!133 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56657 (= lt!97005 (insertStrictlySorted!135 (toList!1259 lt!96858) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56657 (= (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) lt!97002)))

(declare-fun b!194369 () Bool)

(declare-fun res!91882 () Bool)

(assert (=> b!194369 (=> (not res!91882) (not e!127879))))

(assert (=> b!194369 (= res!91882 (= (getValueByKey!244 (toList!1259 lt!97002) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(declare-fun b!194370 () Bool)

(assert (=> b!194370 (= e!127879 (contains!1380 (toList!1259 lt!97002) (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56657 res!91881) b!194369))

(assert (= (and b!194369 res!91882) b!194370))

(declare-fun m!221253 () Bool)

(assert (=> d!56657 m!221253))

(declare-fun m!221255 () Bool)

(assert (=> d!56657 m!221255))

(declare-fun m!221257 () Bool)

(assert (=> d!56657 m!221257))

(declare-fun m!221259 () Bool)

(assert (=> d!56657 m!221259))

(declare-fun m!221261 () Bool)

(assert (=> b!194369 m!221261))

(declare-fun m!221263 () Bool)

(assert (=> b!194370 m!221263))

(assert (=> b!194118 d!56657))

(declare-fun d!56659 () Bool)

(declare-fun e!127881 () Bool)

(assert (=> d!56659 e!127881))

(declare-fun res!91883 () Bool)

(assert (=> d!56659 (=> res!91883 e!127881)))

(declare-fun lt!97006 () Bool)

(assert (=> d!56659 (= res!91883 (not lt!97006))))

(declare-fun lt!97007 () Bool)

(assert (=> d!56659 (= lt!97006 lt!97007)))

(declare-fun lt!97008 () Unit!5875)

(declare-fun e!127880 () Unit!5875)

(assert (=> d!56659 (= lt!97008 e!127880)))

(declare-fun c!35063 () Bool)

(assert (=> d!56659 (= c!35063 lt!97007)))

(assert (=> d!56659 (= lt!97007 (containsKey!248 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))

(assert (=> d!56659 (= (contains!1378 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) lt!96854) lt!97006)))

(declare-fun b!194371 () Bool)

(declare-fun lt!97009 () Unit!5875)

(assert (=> b!194371 (= e!127880 lt!97009)))

(assert (=> b!194371 (= lt!97009 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))

(assert (=> b!194371 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))

(declare-fun b!194372 () Bool)

(declare-fun Unit!5889 () Unit!5875)

(assert (=> b!194372 (= e!127880 Unit!5889)))

(declare-fun b!194373 () Bool)

(assert (=> b!194373 (= e!127881 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854)))))

(assert (= (and d!56659 c!35063) b!194371))

(assert (= (and d!56659 (not c!35063)) b!194372))

(assert (= (and d!56659 (not res!91883)) b!194373))

(declare-fun m!221265 () Bool)

(assert (=> d!56659 m!221265))

(declare-fun m!221267 () Bool)

(assert (=> b!194371 m!221267))

(declare-fun m!221269 () Bool)

(assert (=> b!194371 m!221269))

(assert (=> b!194371 m!221269))

(declare-fun m!221271 () Bool)

(assert (=> b!194371 m!221271))

(assert (=> b!194373 m!221269))

(assert (=> b!194373 m!221269))

(assert (=> b!194373 m!221271))

(assert (=> b!194118 d!56659))

(declare-fun d!56661 () Bool)

(assert (=> d!56661 (= (apply!188 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) lt!96856) (apply!188 lt!96870 lt!96856))))

(declare-fun lt!97010 () Unit!5875)

(assert (=> d!56661 (= lt!97010 (choose!1077 lt!96870 lt!96861 (zeroValue!3801 thiss!1248) lt!96856))))

(declare-fun e!127882 () Bool)

(assert (=> d!56661 e!127882))

(declare-fun res!91884 () Bool)

(assert (=> d!56661 (=> (not res!91884) (not e!127882))))

(assert (=> d!56661 (= res!91884 (contains!1378 lt!96870 lt!96856))))

(assert (=> d!56661 (= (addApplyDifferent!164 lt!96870 lt!96861 (zeroValue!3801 thiss!1248) lt!96856) lt!97010)))

(declare-fun b!194374 () Bool)

(assert (=> b!194374 (= e!127882 (not (= lt!96856 lt!96861)))))

(assert (= (and d!56661 res!91884) b!194374))

(assert (=> d!56661 m!220967))

(assert (=> d!56661 m!220969))

(assert (=> d!56661 m!220967))

(declare-fun m!221273 () Bool)

(assert (=> d!56661 m!221273))

(declare-fun m!221275 () Bool)

(assert (=> d!56661 m!221275))

(assert (=> d!56661 m!220973))

(assert (=> b!194118 d!56661))

(declare-fun d!56663 () Bool)

(assert (=> d!56663 (contains!1378 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) lt!96854)))

(declare-fun lt!97013 () Unit!5875)

(declare-fun choose!1078 (ListLongMap!2487 (_ BitVec 64) V!5635 (_ BitVec 64)) Unit!5875)

(assert (=> d!56663 (= lt!97013 (choose!1078 lt!96858 lt!96874 (zeroValue!3801 thiss!1248) lt!96854))))

(assert (=> d!56663 (contains!1378 lt!96858 lt!96854)))

(assert (=> d!56663 (= (addStillContains!164 lt!96858 lt!96874 (zeroValue!3801 thiss!1248) lt!96854) lt!97013)))

(declare-fun bs!7736 () Bool)

(assert (= bs!7736 d!56663))

(assert (=> bs!7736 m!220955))

(assert (=> bs!7736 m!220955))

(assert (=> bs!7736 m!220957))

(declare-fun m!221277 () Bool)

(assert (=> bs!7736 m!221277))

(declare-fun m!221279 () Bool)

(assert (=> bs!7736 m!221279))

(assert (=> b!194118 d!56663))

(declare-fun d!56665 () Bool)

(declare-fun e!127883 () Bool)

(assert (=> d!56665 e!127883))

(declare-fun res!91885 () Bool)

(assert (=> d!56665 (=> (not res!91885) (not e!127883))))

(declare-fun lt!97014 () ListLongMap!2487)

(assert (=> d!56665 (= res!91885 (contains!1378 lt!97014 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun lt!97017 () List!2469)

(assert (=> d!56665 (= lt!97014 (ListLongMap!2488 lt!97017))))

(declare-fun lt!97015 () Unit!5875)

(declare-fun lt!97016 () Unit!5875)

(assert (=> d!56665 (= lt!97015 lt!97016)))

(assert (=> d!56665 (= (getValueByKey!244 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56665 (= lt!97016 (lemmaContainsTupThenGetReturnValue!133 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56665 (= lt!97017 (insertStrictlySorted!135 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56665 (= (+!317 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97014)))

(declare-fun b!194376 () Bool)

(declare-fun res!91886 () Bool)

(assert (=> b!194376 (=> (not res!91886) (not e!127883))))

(assert (=> b!194376 (= res!91886 (= (getValueByKey!244 (toList!1259 lt!97014) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194377 () Bool)

(assert (=> b!194377 (= e!127883 (contains!1380 (toList!1259 lt!97014) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (= (and d!56665 res!91885) b!194376))

(assert (= (and b!194376 res!91886) b!194377))

(declare-fun m!221281 () Bool)

(assert (=> d!56665 m!221281))

(declare-fun m!221283 () Bool)

(assert (=> d!56665 m!221283))

(declare-fun m!221285 () Bool)

(assert (=> d!56665 m!221285))

(declare-fun m!221287 () Bool)

(assert (=> d!56665 m!221287))

(declare-fun m!221289 () Bool)

(assert (=> b!194376 m!221289))

(declare-fun m!221291 () Bool)

(assert (=> b!194377 m!221291))

(assert (=> bm!19626 d!56665))

(declare-fun d!56667 () Bool)

(assert (=> d!56667 (= (inRange!0 (ite c!34974 (index!4986 lt!96771) (index!4989 lt!96771)) (mask!9223 thiss!1248)) (and (bvsge (ite c!34974 (index!4986 lt!96771) (index!4989 lt!96771)) #b00000000000000000000000000000000) (bvslt (ite c!34974 (index!4986 lt!96771) (index!4989 lt!96771)) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!19610 d!56667))

(declare-fun d!56669 () Bool)

(declare-fun e!127885 () Bool)

(assert (=> d!56669 e!127885))

(declare-fun res!91887 () Bool)

(assert (=> d!56669 (=> res!91887 e!127885)))

(declare-fun lt!97018 () Bool)

(assert (=> d!56669 (= res!91887 (not lt!97018))))

(declare-fun lt!97019 () Bool)

(assert (=> d!56669 (= lt!97018 lt!97019)))

(declare-fun lt!97020 () Unit!5875)

(declare-fun e!127884 () Unit!5875)

(assert (=> d!56669 (= lt!97020 e!127884)))

(declare-fun c!35064 () Bool)

(assert (=> d!56669 (= c!35064 lt!97019)))

(assert (=> d!56669 (= lt!97019 (containsKey!248 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56669 (= (contains!1378 lt!96867 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97018)))

(declare-fun b!194378 () Bool)

(declare-fun lt!97021 () Unit!5875)

(assert (=> b!194378 (= e!127884 lt!97021)))

(assert (=> b!194378 (= lt!97021 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194378 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194379 () Bool)

(declare-fun Unit!5890 () Unit!5875)

(assert (=> b!194379 (= e!127884 Unit!5890)))

(declare-fun b!194380 () Bool)

(assert (=> b!194380 (= e!127885 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56669 c!35064) b!194378))

(assert (= (and d!56669 (not c!35064)) b!194379))

(assert (= (and d!56669 (not res!91887)) b!194380))

(declare-fun m!221293 () Bool)

(assert (=> d!56669 m!221293))

(declare-fun m!221295 () Bool)

(assert (=> b!194378 m!221295))

(declare-fun m!221297 () Bool)

(assert (=> b!194378 m!221297))

(assert (=> b!194378 m!221297))

(declare-fun m!221299 () Bool)

(assert (=> b!194378 m!221299))

(assert (=> b!194380 m!221297))

(assert (=> b!194380 m!221297))

(assert (=> b!194380 m!221299))

(assert (=> bm!19634 d!56669))

(declare-fun d!56671 () Bool)

(assert (=> d!56671 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun lt!97022 () Unit!5875)

(assert (=> d!56671 (= lt!97022 (choose!1075 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun e!127886 () Bool)

(assert (=> d!56671 e!127886))

(declare-fun res!91888 () Bool)

(assert (=> d!56671 (=> (not res!91888) (not e!127886))))

(assert (=> d!56671 (= res!91888 (isStrictlySorted!352 (toList!1259 lt!96691)))))

(assert (=> d!56671 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) lt!97022)))

(declare-fun b!194381 () Bool)

(assert (=> b!194381 (= e!127886 (containsKey!248 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (= (and d!56671 res!91888) b!194381))

(assert (=> d!56671 m!220737))

(assert (=> d!56671 m!220919))

(assert (=> d!56671 m!220919))

(assert (=> d!56671 m!220921))

(assert (=> d!56671 m!220737))

(declare-fun m!221301 () Bool)

(assert (=> d!56671 m!221301))

(declare-fun m!221303 () Bool)

(assert (=> d!56671 m!221303))

(assert (=> b!194381 m!220737))

(assert (=> b!194381 m!220915))

(assert (=> b!194104 d!56671))

(declare-fun d!56673 () Bool)

(assert (=> d!56673 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))))

(declare-fun bs!7737 () Bool)

(assert (= bs!7737 d!56673))

(assert (=> bs!7737 m!220919))

(declare-fun m!221305 () Bool)

(assert (=> bs!7737 m!221305))

(assert (=> b!194104 d!56673))

(declare-fun b!194383 () Bool)

(declare-fun e!127887 () Option!250)

(declare-fun e!127888 () Option!250)

(assert (=> b!194383 (= e!127887 e!127888)))

(declare-fun c!35066 () Bool)

(assert (=> b!194383 (= c!35066 (and ((_ is Cons!2465) (toList!1259 lt!96691)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))))

(declare-fun b!194382 () Bool)

(assert (=> b!194382 (= e!127887 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96691)))))))

(declare-fun b!194384 () Bool)

(assert (=> b!194384 (= e!127888 (getValueByKey!244 (t!7403 (toList!1259 lt!96691)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun c!35065 () Bool)

(declare-fun d!56675 () Bool)

(assert (=> d!56675 (= c!35065 (and ((_ is Cons!2465) (toList!1259 lt!96691)) (= (_1!1788 (h!3106 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (=> d!56675 (= (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) e!127887)))

(declare-fun b!194385 () Bool)

(assert (=> b!194385 (= e!127888 None!248)))

(assert (= (and d!56675 c!35065) b!194382))

(assert (= (and d!56675 (not c!35065)) b!194383))

(assert (= (and b!194383 c!35066) b!194384))

(assert (= (and b!194383 (not c!35066)) b!194385))

(assert (=> b!194384 m!220737))

(declare-fun m!221307 () Bool)

(assert (=> b!194384 m!221307))

(assert (=> b!194104 d!56675))

(declare-fun d!56677 () Bool)

(assert (=> d!56677 (contains!1378 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) lt!96817)))

(declare-fun lt!97023 () Unit!5875)

(assert (=> d!56677 (= lt!97023 (choose!1078 lt!96821 lt!96837 (zeroValue!3801 thiss!1248) lt!96817))))

(assert (=> d!56677 (contains!1378 lt!96821 lt!96817)))

(assert (=> d!56677 (= (addStillContains!164 lt!96821 lt!96837 (zeroValue!3801 thiss!1248) lt!96817) lt!97023)))

(declare-fun bs!7738 () Bool)

(assert (= bs!7738 d!56677))

(assert (=> bs!7738 m!220871))

(assert (=> bs!7738 m!220871))

(assert (=> bs!7738 m!220873))

(declare-fun m!221309 () Bool)

(assert (=> bs!7738 m!221309))

(declare-fun m!221311 () Bool)

(assert (=> bs!7738 m!221311))

(assert (=> b!194084 d!56677))

(declare-fun d!56679 () Bool)

(assert (=> d!56679 (= (apply!188 lt!96838 lt!96820) (get!2239 (getValueByKey!244 (toList!1259 lt!96838) lt!96820)))))

(declare-fun bs!7739 () Bool)

(assert (= bs!7739 d!56679))

(declare-fun m!221313 () Bool)

(assert (=> bs!7739 m!221313))

(assert (=> bs!7739 m!221313))

(declare-fun m!221315 () Bool)

(assert (=> bs!7739 m!221315))

(assert (=> b!194084 d!56679))

(declare-fun d!56681 () Bool)

(declare-fun e!127889 () Bool)

(assert (=> d!56681 e!127889))

(declare-fun res!91889 () Bool)

(assert (=> d!56681 (=> (not res!91889) (not e!127889))))

(declare-fun lt!97024 () ListLongMap!2487)

(assert (=> d!56681 (= res!91889 (contains!1378 lt!97024 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97027 () List!2469)

(assert (=> d!56681 (= lt!97024 (ListLongMap!2488 lt!97027))))

(declare-fun lt!97025 () Unit!5875)

(declare-fun lt!97026 () Unit!5875)

(assert (=> d!56681 (= lt!97025 lt!97026)))

(assert (=> d!56681 (= (getValueByKey!244 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(assert (=> d!56681 (= lt!97026 (lemmaContainsTupThenGetReturnValue!133 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(assert (=> d!56681 (= lt!97027 (insertStrictlySorted!135 (toList!1259 lt!96838) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(assert (=> d!56681 (= (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) lt!97024)))

(declare-fun b!194386 () Bool)

(declare-fun res!91890 () Bool)

(assert (=> b!194386 (=> (not res!91890) (not e!127889))))

(assert (=> b!194386 (= res!91890 (= (getValueByKey!244 (toList!1259 lt!97024) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(declare-fun b!194387 () Bool)

(assert (=> b!194387 (= e!127889 (contains!1380 (toList!1259 lt!97024) (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))

(assert (= (and d!56681 res!91889) b!194386))

(assert (= (and b!194386 res!91890) b!194387))

(declare-fun m!221317 () Bool)

(assert (=> d!56681 m!221317))

(declare-fun m!221319 () Bool)

(assert (=> d!56681 m!221319))

(declare-fun m!221321 () Bool)

(assert (=> d!56681 m!221321))

(declare-fun m!221323 () Bool)

(assert (=> d!56681 m!221323))

(declare-fun m!221325 () Bool)

(assert (=> b!194386 m!221325))

(declare-fun m!221327 () Bool)

(assert (=> b!194387 m!221327))

(assert (=> b!194084 d!56681))

(declare-fun d!56683 () Bool)

(declare-fun e!127891 () Bool)

(assert (=> d!56683 e!127891))

(declare-fun res!91891 () Bool)

(assert (=> d!56683 (=> res!91891 e!127891)))

(declare-fun lt!97028 () Bool)

(assert (=> d!56683 (= res!91891 (not lt!97028))))

(declare-fun lt!97029 () Bool)

(assert (=> d!56683 (= lt!97028 lt!97029)))

(declare-fun lt!97030 () Unit!5875)

(declare-fun e!127890 () Unit!5875)

(assert (=> d!56683 (= lt!97030 e!127890)))

(declare-fun c!35067 () Bool)

(assert (=> d!56683 (= c!35067 lt!97029)))

(assert (=> d!56683 (= lt!97029 (containsKey!248 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))

(assert (=> d!56683 (= (contains!1378 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) lt!96817) lt!97028)))

(declare-fun b!194388 () Bool)

(declare-fun lt!97031 () Unit!5875)

(assert (=> b!194388 (= e!127890 lt!97031)))

(assert (=> b!194388 (= lt!97031 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))

(assert (=> b!194388 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))

(declare-fun b!194389 () Bool)

(declare-fun Unit!5891 () Unit!5875)

(assert (=> b!194389 (= e!127890 Unit!5891)))

(declare-fun b!194390 () Bool)

(assert (=> b!194390 (= e!127891 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817)))))

(assert (= (and d!56683 c!35067) b!194388))

(assert (= (and d!56683 (not c!35067)) b!194389))

(assert (= (and d!56683 (not res!91891)) b!194390))

(declare-fun m!221329 () Bool)

(assert (=> d!56683 m!221329))

(declare-fun m!221331 () Bool)

(assert (=> b!194388 m!221331))

(declare-fun m!221333 () Bool)

(assert (=> b!194388 m!221333))

(assert (=> b!194388 m!221333))

(declare-fun m!221335 () Bool)

(assert (=> b!194388 m!221335))

(assert (=> b!194390 m!221333))

(assert (=> b!194390 m!221333))

(assert (=> b!194390 m!221335))

(assert (=> b!194084 d!56683))

(declare-fun d!56685 () Bool)

(assert (=> d!56685 (= (apply!188 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) lt!96835) (apply!188 lt!96823 lt!96835))))

(declare-fun lt!97032 () Unit!5875)

(assert (=> d!56685 (= lt!97032 (choose!1077 lt!96823 lt!96831 (minValue!3801 thiss!1248) lt!96835))))

(declare-fun e!127892 () Bool)

(assert (=> d!56685 e!127892))

(declare-fun res!91892 () Bool)

(assert (=> d!56685 (=> (not res!91892) (not e!127892))))

(assert (=> d!56685 (= res!91892 (contains!1378 lt!96823 lt!96835))))

(assert (=> d!56685 (= (addApplyDifferent!164 lt!96823 lt!96831 (minValue!3801 thiss!1248) lt!96835) lt!97032)))

(declare-fun b!194391 () Bool)

(assert (=> b!194391 (= e!127892 (not (= lt!96835 lt!96831)))))

(assert (= (and d!56685 res!91892) b!194391))

(assert (=> d!56685 m!220875))

(assert (=> d!56685 m!220877))

(assert (=> d!56685 m!220875))

(declare-fun m!221337 () Bool)

(assert (=> d!56685 m!221337))

(declare-fun m!221339 () Bool)

(assert (=> d!56685 m!221339))

(assert (=> d!56685 m!220893))

(assert (=> b!194084 d!56685))

(declare-fun d!56687 () Bool)

(assert (=> d!56687 (= (apply!188 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) lt!96820) (apply!188 lt!96838 lt!96820))))

(declare-fun lt!97033 () Unit!5875)

(assert (=> d!56687 (= lt!97033 (choose!1077 lt!96838 lt!96829 (minValue!3801 thiss!1248) lt!96820))))

(declare-fun e!127893 () Bool)

(assert (=> d!56687 e!127893))

(declare-fun res!91893 () Bool)

(assert (=> d!56687 (=> (not res!91893) (not e!127893))))

(assert (=> d!56687 (= res!91893 (contains!1378 lt!96838 lt!96820))))

(assert (=> d!56687 (= (addApplyDifferent!164 lt!96838 lt!96829 (minValue!3801 thiss!1248) lt!96820) lt!97033)))

(declare-fun b!194392 () Bool)

(assert (=> b!194392 (= e!127893 (not (= lt!96820 lt!96829)))))

(assert (= (and d!56687 res!91893) b!194392))

(assert (=> d!56687 m!220879))

(assert (=> d!56687 m!220897))

(assert (=> d!56687 m!220879))

(declare-fun m!221341 () Bool)

(assert (=> d!56687 m!221341))

(declare-fun m!221343 () Bool)

(assert (=> d!56687 m!221343))

(assert (=> d!56687 m!220891))

(assert (=> b!194084 d!56687))

(declare-fun d!56689 () Bool)

(assert (=> d!56689 (= (apply!188 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) lt!96835) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!96835)))))

(declare-fun bs!7740 () Bool)

(assert (= bs!7740 d!56689))

(declare-fun m!221345 () Bool)

(assert (=> bs!7740 m!221345))

(assert (=> bs!7740 m!221345))

(declare-fun m!221347 () Bool)

(assert (=> bs!7740 m!221347))

(assert (=> b!194084 d!56689))

(declare-fun d!56691 () Bool)

(assert (=> d!56691 (= (apply!188 lt!96823 lt!96835) (get!2239 (getValueByKey!244 (toList!1259 lt!96823) lt!96835)))))

(declare-fun bs!7741 () Bool)

(assert (= bs!7741 d!56691))

(declare-fun m!221349 () Bool)

(assert (=> bs!7741 m!221349))

(assert (=> bs!7741 m!221349))

(declare-fun m!221351 () Bool)

(assert (=> bs!7741 m!221351))

(assert (=> b!194084 d!56691))

(declare-fun d!56693 () Bool)

(declare-fun e!127894 () Bool)

(assert (=> d!56693 e!127894))

(declare-fun res!91894 () Bool)

(assert (=> d!56693 (=> (not res!91894) (not e!127894))))

(declare-fun lt!97034 () ListLongMap!2487)

(assert (=> d!56693 (= res!91894 (contains!1378 lt!97034 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97037 () List!2469)

(assert (=> d!56693 (= lt!97034 (ListLongMap!2488 lt!97037))))

(declare-fun lt!97035 () Unit!5875)

(declare-fun lt!97036 () Unit!5875)

(assert (=> d!56693 (= lt!97035 lt!97036)))

(assert (=> d!56693 (= (getValueByKey!244 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(assert (=> d!56693 (= lt!97036 (lemmaContainsTupThenGetReturnValue!133 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(assert (=> d!56693 (= lt!97037 (insertStrictlySorted!135 (toList!1259 lt!96823) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(assert (=> d!56693 (= (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) lt!97034)))

(declare-fun b!194393 () Bool)

(declare-fun res!91895 () Bool)

(assert (=> b!194393 (=> (not res!91895) (not e!127894))))

(assert (=> b!194393 (= res!91895 (= (getValueByKey!244 (toList!1259 lt!97034) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(declare-fun b!194394 () Bool)

(assert (=> b!194394 (= e!127894 (contains!1380 (toList!1259 lt!97034) (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))

(assert (= (and d!56693 res!91894) b!194393))

(assert (= (and b!194393 res!91895) b!194394))

(declare-fun m!221353 () Bool)

(assert (=> d!56693 m!221353))

(declare-fun m!221355 () Bool)

(assert (=> d!56693 m!221355))

(declare-fun m!221357 () Bool)

(assert (=> d!56693 m!221357))

(declare-fun m!221359 () Bool)

(assert (=> d!56693 m!221359))

(declare-fun m!221361 () Bool)

(assert (=> b!194393 m!221361))

(declare-fun m!221363 () Bool)

(assert (=> b!194394 m!221363))

(assert (=> b!194084 d!56693))

(declare-fun d!56695 () Bool)

(assert (=> d!56695 (= (apply!188 lt!96833 lt!96819) (get!2239 (getValueByKey!244 (toList!1259 lt!96833) lt!96819)))))

(declare-fun bs!7742 () Bool)

(assert (= bs!7742 d!56695))

(declare-fun m!221365 () Bool)

(assert (=> bs!7742 m!221365))

(assert (=> bs!7742 m!221365))

(declare-fun m!221367 () Bool)

(assert (=> bs!7742 m!221367))

(assert (=> b!194084 d!56695))

(declare-fun d!56697 () Bool)

(declare-fun e!127895 () Bool)

(assert (=> d!56697 e!127895))

(declare-fun res!91896 () Bool)

(assert (=> d!56697 (=> (not res!91896) (not e!127895))))

(declare-fun lt!97038 () ListLongMap!2487)

(assert (=> d!56697 (= res!91896 (contains!1378 lt!97038 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97041 () List!2469)

(assert (=> d!56697 (= lt!97038 (ListLongMap!2488 lt!97041))))

(declare-fun lt!97039 () Unit!5875)

(declare-fun lt!97040 () Unit!5875)

(assert (=> d!56697 (= lt!97039 lt!97040)))

(assert (=> d!56697 (= (getValueByKey!244 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56697 (= lt!97040 (lemmaContainsTupThenGetReturnValue!133 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56697 (= lt!97041 (insertStrictlySorted!135 (toList!1259 lt!96821) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56697 (= (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) lt!97038)))

(declare-fun b!194395 () Bool)

(declare-fun res!91897 () Bool)

(assert (=> b!194395 (=> (not res!91897) (not e!127895))))

(assert (=> b!194395 (= res!91897 (= (getValueByKey!244 (toList!1259 lt!97038) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(declare-fun b!194396 () Bool)

(assert (=> b!194396 (= e!127895 (contains!1380 (toList!1259 lt!97038) (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56697 res!91896) b!194395))

(assert (= (and b!194395 res!91897) b!194396))

(declare-fun m!221369 () Bool)

(assert (=> d!56697 m!221369))

(declare-fun m!221371 () Bool)

(assert (=> d!56697 m!221371))

(declare-fun m!221373 () Bool)

(assert (=> d!56697 m!221373))

(declare-fun m!221375 () Bool)

(assert (=> d!56697 m!221375))

(declare-fun m!221377 () Bool)

(assert (=> b!194395 m!221377))

(declare-fun m!221379 () Bool)

(assert (=> b!194396 m!221379))

(assert (=> b!194084 d!56697))

(declare-fun d!56699 () Bool)

(declare-fun e!127896 () Bool)

(assert (=> d!56699 e!127896))

(declare-fun res!91898 () Bool)

(assert (=> d!56699 (=> (not res!91898) (not e!127896))))

(declare-fun lt!97042 () ListLongMap!2487)

(assert (=> d!56699 (= res!91898 (contains!1378 lt!97042 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97045 () List!2469)

(assert (=> d!56699 (= lt!97042 (ListLongMap!2488 lt!97045))))

(declare-fun lt!97043 () Unit!5875)

(declare-fun lt!97044 () Unit!5875)

(assert (=> d!56699 (= lt!97043 lt!97044)))

(assert (=> d!56699 (= (getValueByKey!244 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56699 (= lt!97044 (lemmaContainsTupThenGetReturnValue!133 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56699 (= lt!97045 (insertStrictlySorted!135 (toList!1259 lt!96833) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56699 (= (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) lt!97042)))

(declare-fun b!194397 () Bool)

(declare-fun res!91899 () Bool)

(assert (=> b!194397 (=> (not res!91899) (not e!127896))))

(assert (=> b!194397 (= res!91899 (= (getValueByKey!244 (toList!1259 lt!97042) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(declare-fun b!194398 () Bool)

(assert (=> b!194398 (= e!127896 (contains!1380 (toList!1259 lt!97042) (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56699 res!91898) b!194397))

(assert (= (and b!194397 res!91899) b!194398))

(declare-fun m!221381 () Bool)

(assert (=> d!56699 m!221381))

(declare-fun m!221383 () Bool)

(assert (=> d!56699 m!221383))

(declare-fun m!221385 () Bool)

(assert (=> d!56699 m!221385))

(declare-fun m!221387 () Bool)

(assert (=> d!56699 m!221387))

(declare-fun m!221389 () Bool)

(assert (=> b!194397 m!221389))

(declare-fun m!221391 () Bool)

(assert (=> b!194398 m!221391))

(assert (=> b!194084 d!56699))

(declare-fun d!56701 () Bool)

(assert (=> d!56701 (= (apply!188 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) lt!96820) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!96820)))))

(declare-fun bs!7743 () Bool)

(assert (= bs!7743 d!56701))

(declare-fun m!221393 () Bool)

(assert (=> bs!7743 m!221393))

(assert (=> bs!7743 m!221393))

(declare-fun m!221395 () Bool)

(assert (=> bs!7743 m!221395))

(assert (=> b!194084 d!56701))

(declare-fun d!56703 () Bool)

(assert (=> d!56703 (= (apply!188 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) lt!96819) (apply!188 lt!96833 lt!96819))))

(declare-fun lt!97046 () Unit!5875)

(assert (=> d!56703 (= lt!97046 (choose!1077 lt!96833 lt!96824 (zeroValue!3801 thiss!1248) lt!96819))))

(declare-fun e!127897 () Bool)

(assert (=> d!56703 e!127897))

(declare-fun res!91900 () Bool)

(assert (=> d!56703 (=> (not res!91900) (not e!127897))))

(assert (=> d!56703 (= res!91900 (contains!1378 lt!96833 lt!96819))))

(assert (=> d!56703 (= (addApplyDifferent!164 lt!96833 lt!96824 (zeroValue!3801 thiss!1248) lt!96819) lt!97046)))

(declare-fun b!194399 () Bool)

(assert (=> b!194399 (= e!127897 (not (= lt!96819 lt!96824)))))

(assert (= (and d!56703 res!91900) b!194399))

(assert (=> d!56703 m!220883))

(assert (=> d!56703 m!220885))

(assert (=> d!56703 m!220883))

(declare-fun m!221397 () Bool)

(assert (=> d!56703 m!221397))

(declare-fun m!221399 () Bool)

(assert (=> d!56703 m!221399))

(assert (=> d!56703 m!220889))

(assert (=> b!194084 d!56703))

(declare-fun d!56705 () Bool)

(assert (=> d!56705 (= (apply!188 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) lt!96819) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!96819)))))

(declare-fun bs!7744 () Bool)

(assert (= bs!7744 d!56705))

(declare-fun m!221401 () Bool)

(assert (=> bs!7744 m!221401))

(assert (=> bs!7744 m!221401))

(declare-fun m!221403 () Bool)

(assert (=> bs!7744 m!221403))

(assert (=> b!194084 d!56705))

(declare-fun b!194400 () Bool)

(declare-fun e!127901 () ListLongMap!2487)

(declare-fun e!127902 () ListLongMap!2487)

(assert (=> b!194400 (= e!127901 e!127902)))

(declare-fun c!35071 () Bool)

(assert (=> b!194400 (= c!35071 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194402 () Bool)

(declare-fun e!127904 () Bool)

(declare-fun lt!97053 () ListLongMap!2487)

(assert (=> b!194402 (= e!127904 (isEmpty!493 lt!97053))))

(declare-fun b!194403 () Bool)

(declare-fun call!19664 () ListLongMap!2487)

(assert (=> b!194403 (= e!127902 call!19664)))

(declare-fun b!194404 () Bool)

(declare-fun e!127903 () Bool)

(declare-fun e!127899 () Bool)

(assert (=> b!194404 (= e!127903 e!127899)))

(assert (=> b!194404 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!91901 () Bool)

(assert (=> b!194404 (= res!91901 (contains!1378 lt!97053 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194404 (=> (not res!91901) (not e!127899))))

(declare-fun b!194405 () Bool)

(declare-fun e!127900 () Bool)

(assert (=> b!194405 (= e!127900 e!127903)))

(declare-fun c!35070 () Bool)

(declare-fun e!127898 () Bool)

(assert (=> b!194405 (= c!35070 e!127898)))

(declare-fun res!91902 () Bool)

(assert (=> b!194405 (=> (not res!91902) (not e!127898))))

(assert (=> b!194405 (= res!91902 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194406 () Bool)

(assert (=> b!194406 (= e!127898 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194406 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!194407 () Bool)

(assert (=> b!194407 (= e!127901 (ListLongMap!2488 Nil!2466))))

(declare-fun b!194408 () Bool)

(assert (=> b!194408 (= e!127904 (= lt!97053 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248))))))

(declare-fun bm!19661 () Bool)

(assert (=> bm!19661 (= call!19664 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194409 () Bool)

(assert (=> b!194409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!194409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 lt!96703)))))

(assert (=> b!194409 (= e!127899 (= (apply!188 lt!97053 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194401 () Bool)

(declare-fun lt!97050 () Unit!5875)

(declare-fun lt!97051 () Unit!5875)

(assert (=> b!194401 (= lt!97050 lt!97051)))

(declare-fun lt!97048 () V!5635)

(declare-fun lt!97052 () ListLongMap!2487)

(declare-fun lt!97047 () (_ BitVec 64))

(declare-fun lt!97049 () (_ BitVec 64))

(assert (=> b!194401 (not (contains!1378 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048)) lt!97047))))

(assert (=> b!194401 (= lt!97051 (addStillNotContains!99 lt!97052 lt!97049 lt!97048 lt!97047))))

(assert (=> b!194401 (= lt!97047 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!194401 (= lt!97048 (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!194401 (= lt!97049 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!194401 (= lt!97052 call!19664)))

(assert (=> b!194401 (= e!127902 (+!317 call!19664 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!56707 () Bool)

(assert (=> d!56707 e!127900))

(declare-fun res!91904 () Bool)

(assert (=> d!56707 (=> (not res!91904) (not e!127900))))

(assert (=> d!56707 (= res!91904 (not (contains!1378 lt!97053 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56707 (= lt!97053 e!127901)))

(declare-fun c!35068 () Bool)

(assert (=> d!56707 (= c!35068 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56707 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56707 (= (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) lt!97053)))

(declare-fun b!194410 () Bool)

(assert (=> b!194410 (= e!127903 e!127904)))

(declare-fun c!35069 () Bool)

(assert (=> b!194410 (= c!35069 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194411 () Bool)

(declare-fun res!91903 () Bool)

(assert (=> b!194411 (=> (not res!91903) (not e!127900))))

(assert (=> b!194411 (= res!91903 (not (contains!1378 lt!97053 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56707 c!35068) b!194407))

(assert (= (and d!56707 (not c!35068)) b!194400))

(assert (= (and b!194400 c!35071) b!194401))

(assert (= (and b!194400 (not c!35071)) b!194403))

(assert (= (or b!194401 b!194403) bm!19661))

(assert (= (and d!56707 res!91904) b!194411))

(assert (= (and b!194411 res!91903) b!194405))

(assert (= (and b!194405 res!91902) b!194406))

(assert (= (and b!194405 c!35070) b!194404))

(assert (= (and b!194405 (not c!35070)) b!194410))

(assert (= (and b!194404 res!91901) b!194409))

(assert (= (and b!194410 c!35069) b!194408))

(assert (= (and b!194410 (not c!35069)) b!194402))

(declare-fun b_lambda!7523 () Bool)

(assert (=> (not b_lambda!7523) (not b!194409)))

(assert (=> b!194409 t!7406))

(declare-fun b_and!11465 () Bool)

(assert (= b_and!11463 (and (=> t!7406 result!4947) b_and!11465)))

(declare-fun b_lambda!7525 () Bool)

(assert (=> (not b_lambda!7525) (not b!194401)))

(assert (=> b!194401 t!7406))

(declare-fun b_and!11467 () Bool)

(assert (= b_and!11465 (and (=> t!7406 result!4947) b_and!11467)))

(declare-fun m!221405 () Bool)

(assert (=> d!56707 m!221405))

(assert (=> d!56707 m!220833))

(declare-fun m!221407 () Bool)

(assert (=> bm!19661 m!221407))

(declare-fun m!221409 () Bool)

(assert (=> b!194401 m!221409))

(declare-fun m!221411 () Bool)

(assert (=> b!194401 m!221411))

(assert (=> b!194401 m!220863))

(assert (=> b!194401 m!220859))

(assert (=> b!194401 m!220865))

(assert (=> b!194401 m!221411))

(declare-fun m!221413 () Bool)

(assert (=> b!194401 m!221413))

(assert (=> b!194401 m!220855))

(declare-fun m!221415 () Bool)

(assert (=> b!194401 m!221415))

(assert (=> b!194401 m!220859))

(assert (=> b!194401 m!220863))

(assert (=> b!194406 m!220855))

(assert (=> b!194406 m!220855))

(assert (=> b!194406 m!220857))

(declare-fun m!221417 () Bool)

(assert (=> b!194402 m!221417))

(assert (=> b!194404 m!220855))

(assert (=> b!194404 m!220855))

(declare-fun m!221419 () Bool)

(assert (=> b!194404 m!221419))

(declare-fun m!221421 () Bool)

(assert (=> b!194411 m!221421))

(assert (=> b!194408 m!221407))

(assert (=> b!194409 m!220863))

(assert (=> b!194409 m!220859))

(assert (=> b!194409 m!220865))

(assert (=> b!194409 m!220855))

(declare-fun m!221423 () Bool)

(assert (=> b!194409 m!221423))

(assert (=> b!194409 m!220855))

(assert (=> b!194409 m!220859))

(assert (=> b!194409 m!220863))

(assert (=> b!194400 m!220855))

(assert (=> b!194400 m!220855))

(assert (=> b!194400 m!220857))

(assert (=> b!194084 d!56707))

(declare-fun b!194412 () Bool)

(declare-fun e!127907 () Bool)

(declare-fun e!127906 () Bool)

(assert (=> b!194412 (= e!127907 e!127906)))

(declare-fun c!35072 () Bool)

(assert (=> b!194412 (= c!35072 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194413 () Bool)

(declare-fun e!127905 () Bool)

(declare-fun call!19665 () Bool)

(assert (=> b!194413 (= e!127905 call!19665)))

(declare-fun b!194414 () Bool)

(assert (=> b!194414 (= e!127906 e!127905)))

(declare-fun lt!97054 () (_ BitVec 64))

(assert (=> b!194414 (= lt!97054 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))

(declare-fun lt!97056 () Unit!5875)

(assert (=> b!194414 (= lt!97056 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5954 lt!96693) lt!97054 #b00000000000000000000000000000000))))

(assert (=> b!194414 (arrayContainsKey!0 (_keys!5954 lt!96693) lt!97054 #b00000000000000000000000000000000)))

(declare-fun lt!97055 () Unit!5875)

(assert (=> b!194414 (= lt!97055 lt!97056)))

(declare-fun res!91905 () Bool)

(assert (=> b!194414 (= res!91905 (= (seekEntryOrOpen!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) (_keys!5954 lt!96693) (mask!9223 lt!96693)) (Found!704 #b00000000000000000000000000000000)))))

(assert (=> b!194414 (=> (not res!91905) (not e!127905))))

(declare-fun d!56709 () Bool)

(declare-fun res!91906 () Bool)

(assert (=> d!56709 (=> res!91906 e!127907)))

(assert (=> d!56709 (= res!91906 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!56709 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5954 lt!96693) (mask!9223 lt!96693)) e!127907)))

(declare-fun bm!19662 () Bool)

(assert (=> bm!19662 (= call!19665 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5954 lt!96693) (mask!9223 lt!96693)))))

(declare-fun b!194415 () Bool)

(assert (=> b!194415 (= e!127906 call!19665)))

(assert (= (and d!56709 (not res!91906)) b!194412))

(assert (= (and b!194412 c!35072) b!194414))

(assert (= (and b!194412 (not c!35072)) b!194415))

(assert (= (and b!194414 res!91905) b!194413))

(assert (= (or b!194413 b!194415) bm!19662))

(declare-fun m!221425 () Bool)

(assert (=> b!194412 m!221425))

(assert (=> b!194412 m!221425))

(declare-fun m!221427 () Bool)

(assert (=> b!194412 m!221427))

(assert (=> b!194414 m!221425))

(declare-fun m!221429 () Bool)

(assert (=> b!194414 m!221429))

(declare-fun m!221431 () Bool)

(assert (=> b!194414 m!221431))

(assert (=> b!194414 m!221425))

(declare-fun m!221433 () Bool)

(assert (=> b!194414 m!221433))

(declare-fun m!221435 () Bool)

(assert (=> bm!19662 m!221435))

(assert (=> b!194035 d!56709))

(declare-fun b!194417 () Bool)

(declare-fun e!127908 () Option!250)

(declare-fun e!127909 () Option!250)

(assert (=> b!194417 (= e!127908 e!127909)))

(declare-fun c!35074 () Bool)

(assert (=> b!194417 (= c!35074 (and ((_ is Cons!2465) (toList!1259 lt!96751)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96751))) (_1!1788 lt!96700)))))))

(declare-fun b!194416 () Bool)

(assert (=> b!194416 (= e!127908 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96751)))))))

(declare-fun b!194418 () Bool)

(assert (=> b!194418 (= e!127909 (getValueByKey!244 (t!7403 (toList!1259 lt!96751)) (_1!1788 lt!96700)))))

(declare-fun d!56711 () Bool)

(declare-fun c!35073 () Bool)

(assert (=> d!56711 (= c!35073 (and ((_ is Cons!2465) (toList!1259 lt!96751)) (= (_1!1788 (h!3106 (toList!1259 lt!96751))) (_1!1788 lt!96700))))))

(assert (=> d!56711 (= (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700)) e!127908)))

(declare-fun b!194419 () Bool)

(assert (=> b!194419 (= e!127909 None!248)))

(assert (= (and d!56711 c!35073) b!194416))

(assert (= (and d!56711 (not c!35073)) b!194417))

(assert (= (and b!194417 c!35074) b!194418))

(assert (= (and b!194417 (not c!35074)) b!194419))

(declare-fun m!221437 () Bool)

(assert (=> b!194418 m!221437))

(assert (=> b!193990 d!56711))

(declare-fun d!56713 () Bool)

(declare-fun res!91907 () Bool)

(declare-fun e!127910 () Bool)

(assert (=> d!56713 (=> res!91907 e!127910)))

(assert (=> d!56713 (= res!91907 (and ((_ is Cons!2465) (toList!1259 lt!96697)) (= (_1!1788 (h!3106 (toList!1259 lt!96697))) key!828)))))

(assert (=> d!56713 (= (containsKey!248 (toList!1259 lt!96697) key!828) e!127910)))

(declare-fun b!194420 () Bool)

(declare-fun e!127911 () Bool)

(assert (=> b!194420 (= e!127910 e!127911)))

(declare-fun res!91908 () Bool)

(assert (=> b!194420 (=> (not res!91908) (not e!127911))))

(assert (=> b!194420 (= res!91908 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96697))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96697))) key!828)) ((_ is Cons!2465) (toList!1259 lt!96697)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96697))) key!828)))))

(declare-fun b!194421 () Bool)

(assert (=> b!194421 (= e!127911 (containsKey!248 (t!7403 (toList!1259 lt!96697)) key!828))))

(assert (= (and d!56713 (not res!91907)) b!194420))

(assert (= (and b!194420 res!91908) b!194421))

(declare-fun m!221439 () Bool)

(assert (=> b!194421 m!221439))

(assert (=> d!56559 d!56713))

(declare-fun d!56715 () Bool)

(declare-fun e!127912 () Bool)

(assert (=> d!56715 e!127912))

(declare-fun res!91909 () Bool)

(assert (=> d!56715 (=> (not res!91909) (not e!127912))))

(declare-fun lt!97057 () ListLongMap!2487)

(assert (=> d!56715 (= res!91909 (contains!1378 lt!97057 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97060 () List!2469)

(assert (=> d!56715 (= lt!97057 (ListLongMap!2488 lt!97060))))

(declare-fun lt!97058 () Unit!5875)

(declare-fun lt!97059 () Unit!5875)

(assert (=> d!56715 (= lt!97058 lt!97059)))

(assert (=> d!56715 (= (getValueByKey!244 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56715 (= lt!97059 (lemmaContainsTupThenGetReturnValue!133 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56715 (= lt!97060 (insertStrictlySorted!135 (toList!1259 call!19639) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56715 (= (+!317 call!19639 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) lt!97057)))

(declare-fun b!194422 () Bool)

(declare-fun res!91910 () Bool)

(assert (=> b!194422 (=> (not res!91910) (not e!127912))))

(assert (=> b!194422 (= res!91910 (= (getValueByKey!244 (toList!1259 lt!97057) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194423 () Bool)

(assert (=> b!194423 (= e!127912 (contains!1380 (toList!1259 lt!97057) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(assert (= (and d!56715 res!91909) b!194422))

(assert (= (and b!194422 res!91910) b!194423))

(declare-fun m!221441 () Bool)

(assert (=> d!56715 m!221441))

(declare-fun m!221443 () Bool)

(assert (=> d!56715 m!221443))

(declare-fun m!221445 () Bool)

(assert (=> d!56715 m!221445))

(declare-fun m!221447 () Bool)

(assert (=> d!56715 m!221447))

(declare-fun m!221449 () Bool)

(assert (=> b!194422 m!221449))

(declare-fun m!221451 () Bool)

(assert (=> b!194423 m!221451))

(assert (=> b!194121 d!56715))

(assert (=> d!56565 d!56591))

(declare-fun b!194440 () Bool)

(declare-fun e!127924 () Bool)

(declare-fun call!19671 () Bool)

(assert (=> b!194440 (= e!127924 (not call!19671))))

(declare-fun lt!97063 () SeekEntryResult!704)

(declare-fun c!35080 () Bool)

(declare-fun call!19670 () Bool)

(declare-fun bm!19667 () Bool)

(assert (=> bm!19667 (= call!19670 (inRange!0 (ite c!35080 (index!4986 lt!97063) (index!4989 lt!97063)) (mask!9223 thiss!1248)))))

(declare-fun d!56717 () Bool)

(declare-fun e!127923 () Bool)

(assert (=> d!56717 e!127923))

(assert (=> d!56717 (= c!35080 ((_ is MissingZero!704) lt!97063))))

(assert (=> d!56717 (= lt!97063 (seekEntryOrOpen!0 key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(assert (=> d!56717 true))

(declare-fun _$34!1084 () Unit!5875)

(assert (=> d!56717 (= (choose!1071 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)) _$34!1084)))

(declare-fun b!194441 () Bool)

(declare-fun e!127921 () Bool)

(assert (=> b!194441 (= e!127923 e!127921)))

(declare-fun c!35079 () Bool)

(assert (=> b!194441 (= c!35079 ((_ is MissingVacant!704) lt!97063))))

(declare-fun b!194442 () Bool)

(declare-fun res!91922 () Bool)

(declare-fun e!127922 () Bool)

(assert (=> b!194442 (=> (not res!91922) (not e!127922))))

(assert (=> b!194442 (= res!91922 call!19670)))

(assert (=> b!194442 (= e!127921 e!127922)))

(declare-fun b!194443 () Bool)

(assert (=> b!194443 (= e!127922 (not call!19671))))

(declare-fun b!194444 () Bool)

(declare-fun res!91920 () Bool)

(assert (=> b!194444 (=> (not res!91920) (not e!127922))))

(assert (=> b!194444 (= res!91920 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4989 lt!97063)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19668 () Bool)

(assert (=> bm!19668 (= call!19671 (arrayContainsKey!0 (_keys!5954 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!194445 () Bool)

(declare-fun res!91921 () Bool)

(assert (=> b!194445 (= res!91921 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4986 lt!97063)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194445 (=> (not res!91921) (not e!127924))))

(declare-fun b!194446 () Bool)

(assert (=> b!194446 (= e!127921 ((_ is Undefined!704) lt!97063))))

(declare-fun b!194447 () Bool)

(assert (=> b!194447 (= e!127923 e!127924)))

(declare-fun res!91919 () Bool)

(assert (=> b!194447 (= res!91919 call!19670)))

(assert (=> b!194447 (=> (not res!91919) (not e!127924))))

(assert (= (and d!56717 c!35080) b!194447))

(assert (= (and d!56717 (not c!35080)) b!194441))

(assert (= (and b!194447 res!91919) b!194445))

(assert (= (and b!194445 res!91921) b!194440))

(assert (= (and b!194441 c!35079) b!194442))

(assert (= (and b!194441 (not c!35079)) b!194446))

(assert (= (and b!194442 res!91922) b!194444))

(assert (= (and b!194444 res!91920) b!194443))

(assert (= (or b!194447 b!194442) bm!19667))

(assert (= (or b!194440 b!194443) bm!19668))

(assert (=> bm!19668 m!220829))

(declare-fun m!221453 () Bool)

(assert (=> b!194445 m!221453))

(declare-fun m!221455 () Bool)

(assert (=> bm!19667 m!221455))

(declare-fun m!221457 () Bool)

(assert (=> b!194444 m!221457))

(assert (=> d!56717 m!220749))

(assert (=> d!56565 d!56717))

(assert (=> d!56565 d!56605))

(declare-fun d!56719 () Bool)

(declare-fun e!127925 () Bool)

(assert (=> d!56719 e!127925))

(declare-fun res!91923 () Bool)

(assert (=> d!56719 (=> (not res!91923) (not e!127925))))

(declare-fun lt!97064 () ListLongMap!2487)

(assert (=> d!56719 (= res!91923 (contains!1378 lt!97064 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97067 () List!2469)

(assert (=> d!56719 (= lt!97064 (ListLongMap!2488 lt!97067))))

(declare-fun lt!97065 () Unit!5875)

(declare-fun lt!97066 () Unit!5875)

(assert (=> d!56719 (= lt!97065 lt!97066)))

(assert (=> d!56719 (= (getValueByKey!244 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56719 (= lt!97066 (lemmaContainsTupThenGetReturnValue!133 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56719 (= lt!97067 (insertStrictlySorted!135 (toList!1259 call!19632) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56719 (= (+!317 call!19632 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) lt!97064)))

(declare-fun b!194448 () Bool)

(declare-fun res!91924 () Bool)

(assert (=> b!194448 (=> (not res!91924) (not e!127925))))

(assert (=> b!194448 (= res!91924 (= (getValueByKey!244 (toList!1259 lt!97064) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194449 () Bool)

(assert (=> b!194449 (= e!127925 (contains!1380 (toList!1259 lt!97064) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(assert (= (and d!56719 res!91923) b!194448))

(assert (= (and b!194448 res!91924) b!194449))

(declare-fun m!221459 () Bool)

(assert (=> d!56719 m!221459))

(declare-fun m!221461 () Bool)

(assert (=> d!56719 m!221461))

(declare-fun m!221463 () Bool)

(assert (=> d!56719 m!221463))

(declare-fun m!221465 () Bool)

(assert (=> d!56719 m!221465))

(declare-fun m!221467 () Bool)

(assert (=> b!194448 m!221467))

(declare-fun m!221469 () Bool)

(assert (=> b!194449 m!221469))

(assert (=> b!194087 d!56719))

(declare-fun d!56721 () Bool)

(assert (=> d!56721 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96698) key!828))))

(declare-fun lt!97068 () Unit!5875)

(assert (=> d!56721 (= lt!97068 (choose!1075 (toList!1259 lt!96698) key!828))))

(declare-fun e!127926 () Bool)

(assert (=> d!56721 e!127926))

(declare-fun res!91925 () Bool)

(assert (=> d!56721 (=> (not res!91925) (not e!127926))))

(assert (=> d!56721 (= res!91925 (isStrictlySorted!352 (toList!1259 lt!96698)))))

(assert (=> d!56721 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96698) key!828) lt!97068)))

(declare-fun b!194450 () Bool)

(assert (=> b!194450 (= e!127926 (containsKey!248 (toList!1259 lt!96698) key!828))))

(assert (= (and d!56721 res!91925) b!194450))

(assert (=> d!56721 m!220931))

(assert (=> d!56721 m!220931))

(assert (=> d!56721 m!220933))

(declare-fun m!221471 () Bool)

(assert (=> d!56721 m!221471))

(declare-fun m!221473 () Bool)

(assert (=> d!56721 m!221473))

(assert (=> b!194450 m!220927))

(assert (=> b!194110 d!56721))

(declare-fun d!56723 () Bool)

(assert (=> d!56723 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96698) key!828)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96698) key!828))))))

(declare-fun bs!7745 () Bool)

(assert (= bs!7745 d!56723))

(assert (=> bs!7745 m!220931))

(declare-fun m!221475 () Bool)

(assert (=> bs!7745 m!221475))

(assert (=> b!194110 d!56723))

(declare-fun b!194452 () Bool)

(declare-fun e!127927 () Option!250)

(declare-fun e!127928 () Option!250)

(assert (=> b!194452 (= e!127927 e!127928)))

(declare-fun c!35082 () Bool)

(assert (=> b!194452 (= c!35082 (and ((_ is Cons!2465) (toList!1259 lt!96698)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96698))) key!828))))))

(declare-fun b!194451 () Bool)

(assert (=> b!194451 (= e!127927 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96698)))))))

(declare-fun b!194453 () Bool)

(assert (=> b!194453 (= e!127928 (getValueByKey!244 (t!7403 (toList!1259 lt!96698)) key!828))))

(declare-fun d!56725 () Bool)

(declare-fun c!35081 () Bool)

(assert (=> d!56725 (= c!35081 (and ((_ is Cons!2465) (toList!1259 lt!96698)) (= (_1!1788 (h!3106 (toList!1259 lt!96698))) key!828)))))

(assert (=> d!56725 (= (getValueByKey!244 (toList!1259 lt!96698) key!828) e!127927)))

(declare-fun b!194454 () Bool)

(assert (=> b!194454 (= e!127928 None!248)))

(assert (= (and d!56725 c!35081) b!194451))

(assert (= (and d!56725 (not c!35081)) b!194452))

(assert (= (and b!194452 c!35082) b!194453))

(assert (= (and b!194452 (not c!35082)) b!194454))

(declare-fun m!221477 () Bool)

(assert (=> b!194453 m!221477))

(assert (=> b!194110 d!56725))

(assert (=> b!194112 d!56723))

(assert (=> b!194112 d!56725))

(declare-fun d!56727 () Bool)

(assert (=> d!56727 (= (inRange!0 (index!4987 lt!96883) (mask!9223 thiss!1248)) (and (bvsge (index!4987 lt!96883) #b00000000000000000000000000000000) (bvslt (index!4987 lt!96883) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!194141 d!56727))

(assert (=> d!56569 d!56605))

(declare-fun d!56729 () Bool)

(assert (=> d!56729 (= (+!317 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) (tuple2!3557 key!828 v!309)) (getCurrentListMap!902 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))

(assert (=> d!56729 true))

(declare-fun _$5!158 () Unit!5875)

(assert (=> d!56729 (= (choose!1073 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) key!828 v!309 (defaultEntry!3960 thiss!1248)) _$5!158)))

(declare-fun bs!7746 () Bool)

(assert (= bs!7746 d!56729))

(assert (=> bs!7746 m!220725))

(assert (=> bs!7746 m!220725))

(assert (=> bs!7746 m!220989))

(assert (=> bs!7746 m!220731))

(assert (=> bs!7746 m!220991))

(assert (=> d!56581 d!56729))

(assert (=> d!56581 d!56605))

(declare-fun d!56731 () Bool)

(assert (=> d!56731 (= (apply!188 lt!96867 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7747 () Bool)

(assert (= bs!7747 d!56731))

(declare-fun m!221479 () Bool)

(assert (=> bs!7747 m!221479))

(assert (=> bs!7747 m!221479))

(declare-fun m!221481 () Bool)

(assert (=> bs!7747 m!221481))

(assert (=> b!194114 d!56731))

(declare-fun d!56733 () Bool)

(declare-fun e!127930 () Bool)

(assert (=> d!56733 e!127930))

(declare-fun res!91926 () Bool)

(assert (=> d!56733 (=> res!91926 e!127930)))

(declare-fun lt!97069 () Bool)

(assert (=> d!56733 (= res!91926 (not lt!97069))))

(declare-fun lt!97070 () Bool)

(assert (=> d!56733 (= lt!97069 lt!97070)))

(declare-fun lt!97071 () Unit!5875)

(declare-fun e!127929 () Unit!5875)

(assert (=> d!56733 (= lt!97071 e!127929)))

(declare-fun c!35083 () Bool)

(assert (=> d!56733 (= c!35083 lt!97070)))

(assert (=> d!56733 (= lt!97070 (containsKey!248 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56733 (= (contains!1378 lt!96830 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97069)))

(declare-fun b!194455 () Bool)

(declare-fun lt!97072 () Unit!5875)

(assert (=> b!194455 (= e!127929 lt!97072)))

(assert (=> b!194455 (= lt!97072 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194455 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194456 () Bool)

(declare-fun Unit!5892 () Unit!5875)

(assert (=> b!194456 (= e!127929 Unit!5892)))

(declare-fun b!194457 () Bool)

(assert (=> b!194457 (= e!127930 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56733 c!35083) b!194455))

(assert (= (and d!56733 (not c!35083)) b!194456))

(assert (= (and d!56733 (not res!91926)) b!194457))

(declare-fun m!221483 () Bool)

(assert (=> d!56733 m!221483))

(declare-fun m!221485 () Bool)

(assert (=> b!194455 m!221485))

(declare-fun m!221487 () Bool)

(assert (=> b!194455 m!221487))

(assert (=> b!194455 m!221487))

(declare-fun m!221489 () Bool)

(assert (=> b!194455 m!221489))

(assert (=> b!194457 m!221487))

(assert (=> b!194457 m!221487))

(assert (=> b!194457 m!221489))

(assert (=> bm!19625 d!56733))

(assert (=> b!194129 d!56593))

(declare-fun b!194466 () Bool)

(declare-fun e!127935 () (_ BitVec 32))

(declare-fun call!19674 () (_ BitVec 32))

(assert (=> b!194466 (= e!127935 (bvadd #b00000000000000000000000000000001 call!19674))))

(declare-fun b!194467 () Bool)

(declare-fun e!127936 () (_ BitVec 32))

(assert (=> b!194467 (= e!127936 #b00000000000000000000000000000000)))

(declare-fun d!56735 () Bool)

(declare-fun lt!97075 () (_ BitVec 32))

(assert (=> d!56735 (and (bvsge lt!97075 #b00000000000000000000000000000000) (bvsle lt!97075 (bvsub (size!4198 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56735 (= lt!97075 e!127936)))

(declare-fun c!35088 () Bool)

(assert (=> d!56735 (= c!35088 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56735 (and (bvsle #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4198 (_keys!5954 thiss!1248)) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56735 (= (arrayCountValidKeys!0 (_keys!5954 thiss!1248) #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))) lt!97075)))

(declare-fun bm!19671 () Bool)

(assert (=> bm!19671 (= call!19674 (arrayCountValidKeys!0 (_keys!5954 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194468 () Bool)

(assert (=> b!194468 (= e!127936 e!127935)))

(declare-fun c!35089 () Bool)

(assert (=> b!194468 (= c!35089 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194469 () Bool)

(assert (=> b!194469 (= e!127935 call!19674)))

(assert (= (and d!56735 c!35088) b!194467))

(assert (= (and d!56735 (not c!35088)) b!194468))

(assert (= (and b!194468 c!35089) b!194466))

(assert (= (and b!194468 (not c!35089)) b!194469))

(assert (= (or b!194466 b!194469) bm!19671))

(declare-fun m!221491 () Bool)

(assert (=> bm!19671 m!221491))

(assert (=> b!194468 m!220855))

(assert (=> b!194468 m!220855))

(assert (=> b!194468 m!220857))

(assert (=> b!194007 d!56735))

(declare-fun d!56737 () Bool)

(assert (=> d!56737 (= (apply!188 lt!96830 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7748 () Bool)

(assert (= bs!7748 d!56737))

(assert (=> bs!7748 m!221487))

(assert (=> bs!7748 m!221487))

(declare-fun m!221493 () Bool)

(assert (=> bs!7748 m!221493))

(assert (=> b!194080 d!56737))

(assert (=> b!194095 d!56593))

(declare-fun b!194480 () Bool)

(declare-fun e!127947 () Bool)

(declare-fun call!19677 () Bool)

(assert (=> b!194480 (= e!127947 call!19677)))

(declare-fun bm!19674 () Bool)

(declare-fun c!35092 () Bool)

(assert (=> bm!19674 (= call!19677 (arrayNoDuplicates!0 (_keys!5954 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35092 (Cons!2467 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) Nil!2468) Nil!2468)))))

(declare-fun b!194481 () Bool)

(declare-fun e!127946 () Bool)

(declare-fun contains!1381 (List!2471 (_ BitVec 64)) Bool)

(assert (=> b!194481 (= e!127946 (contains!1381 Nil!2468 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194482 () Bool)

(declare-fun e!127948 () Bool)

(assert (=> b!194482 (= e!127948 e!127947)))

(assert (=> b!194482 (= c!35092 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!56739 () Bool)

(declare-fun res!91935 () Bool)

(declare-fun e!127945 () Bool)

(assert (=> d!56739 (=> res!91935 e!127945)))

(assert (=> d!56739 (= res!91935 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56739 (= (arrayNoDuplicates!0 (_keys!5954 thiss!1248) #b00000000000000000000000000000000 Nil!2468) e!127945)))

(declare-fun b!194483 () Bool)

(assert (=> b!194483 (= e!127945 e!127948)))

(declare-fun res!91934 () Bool)

(assert (=> b!194483 (=> (not res!91934) (not e!127948))))

(assert (=> b!194483 (= res!91934 (not e!127946))))

(declare-fun res!91933 () Bool)

(assert (=> b!194483 (=> (not res!91933) (not e!127946))))

(assert (=> b!194483 (= res!91933 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194484 () Bool)

(assert (=> b!194484 (= e!127947 call!19677)))

(assert (= (and d!56739 (not res!91935)) b!194483))

(assert (= (and b!194483 res!91933) b!194481))

(assert (= (and b!194483 res!91934) b!194482))

(assert (= (and b!194482 c!35092) b!194484))

(assert (= (and b!194482 (not c!35092)) b!194480))

(assert (= (or b!194484 b!194480) bm!19674))

(assert (=> bm!19674 m!220855))

(declare-fun m!221495 () Bool)

(assert (=> bm!19674 m!221495))

(assert (=> b!194481 m!220855))

(assert (=> b!194481 m!220855))

(declare-fun m!221497 () Bool)

(assert (=> b!194481 m!221497))

(assert (=> b!194482 m!220855))

(assert (=> b!194482 m!220855))

(assert (=> b!194482 m!220857))

(assert (=> b!194483 m!220855))

(assert (=> b!194483 m!220855))

(assert (=> b!194483 m!220857))

(assert (=> b!194009 d!56739))

(declare-fun b!194486 () Bool)

(declare-fun e!127949 () Option!250)

(declare-fun e!127950 () Option!250)

(assert (=> b!194486 (= e!127949 e!127950)))

(declare-fun c!35094 () Bool)

(assert (=> b!194486 (= c!35094 (and ((_ is Cons!2465) (toList!1259 lt!96839)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96839))) (_1!1788 lt!96700)))))))

(declare-fun b!194485 () Bool)

(assert (=> b!194485 (= e!127949 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96839)))))))

(declare-fun b!194487 () Bool)

(assert (=> b!194487 (= e!127950 (getValueByKey!244 (t!7403 (toList!1259 lt!96839)) (_1!1788 lt!96700)))))

(declare-fun d!56741 () Bool)

(declare-fun c!35093 () Bool)

(assert (=> d!56741 (= c!35093 (and ((_ is Cons!2465) (toList!1259 lt!96839)) (= (_1!1788 (h!3106 (toList!1259 lt!96839))) (_1!1788 lt!96700))))))

(assert (=> d!56741 (= (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700)) e!127949)))

(declare-fun b!194488 () Bool)

(assert (=> b!194488 (= e!127950 None!248)))

(assert (= (and d!56741 c!35093) b!194485))

(assert (= (and d!56741 (not c!35093)) b!194486))

(assert (= (and b!194486 c!35094) b!194487))

(assert (= (and b!194486 (not c!35094)) b!194488))

(declare-fun m!221499 () Bool)

(assert (=> b!194487 m!221499))

(assert (=> b!194102 d!56741))

(declare-fun d!56743 () Bool)

(declare-fun res!91940 () Bool)

(declare-fun e!127955 () Bool)

(assert (=> d!56743 (=> res!91940 e!127955)))

(assert (=> d!56743 (= res!91940 (= (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!56743 (= (arrayContainsKey!0 (_keys!5954 thiss!1248) key!828 #b00000000000000000000000000000000) e!127955)))

(declare-fun b!194493 () Bool)

(declare-fun e!127956 () Bool)

(assert (=> b!194493 (= e!127955 e!127956)))

(declare-fun res!91941 () Bool)

(assert (=> b!194493 (=> (not res!91941) (not e!127956))))

(assert (=> b!194493 (= res!91941 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194494 () Bool)

(assert (=> b!194494 (= e!127956 (arrayContainsKey!0 (_keys!5954 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!56743 (not res!91940)) b!194493))

(assert (= (and b!194493 res!91941) b!194494))

(assert (=> d!56743 m!220855))

(declare-fun m!221501 () Bool)

(assert (=> b!194494 m!221501))

(assert (=> bm!19609 d!56743))

(declare-fun d!56745 () Bool)

(assert (=> d!56745 (= (apply!188 lt!96867 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2239 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7749 () Bool)

(assert (= bs!7749 d!56745))

(assert (=> bs!7749 m!220855))

(declare-fun m!221503 () Bool)

(assert (=> bs!7749 m!221503))

(assert (=> bs!7749 m!221503))

(declare-fun m!221505 () Bool)

(assert (=> bs!7749 m!221505))

(assert (=> b!194119 d!56745))

(declare-fun d!56747 () Bool)

(declare-fun c!35097 () Bool)

(assert (=> d!56747 (= c!35097 ((_ is ValueCellFull!1902) (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!127959 () V!5635)

(assert (=> d!56747 (= (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!127959)))

(declare-fun b!194499 () Bool)

(declare-fun get!2240 (ValueCell!1902 V!5635) V!5635)

(assert (=> b!194499 (= e!127959 (get!2240 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!194500 () Bool)

(declare-fun get!2241 (ValueCell!1902 V!5635) V!5635)

(assert (=> b!194500 (= e!127959 (get!2241 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56747 c!35097) b!194499))

(assert (= (and d!56747 (not c!35097)) b!194500))

(assert (=> b!194499 m!220947))

(assert (=> b!194499 m!220859))

(declare-fun m!221507 () Bool)

(assert (=> b!194499 m!221507))

(assert (=> b!194500 m!220947))

(assert (=> b!194500 m!220859))

(declare-fun m!221509 () Bool)

(assert (=> b!194500 m!221509))

(assert (=> b!194119 d!56747))

(declare-fun b!194501 () Bool)

(declare-fun e!127960 () (_ BitVec 32))

(declare-fun call!19678 () (_ BitVec 32))

(assert (=> b!194501 (= e!127960 (bvadd #b00000000000000000000000000000001 call!19678))))

(declare-fun b!194502 () Bool)

(declare-fun e!127961 () (_ BitVec 32))

(assert (=> b!194502 (= e!127961 #b00000000000000000000000000000000)))

(declare-fun d!56749 () Bool)

(declare-fun lt!97076 () (_ BitVec 32))

(assert (=> d!56749 (and (bvsge lt!97076 #b00000000000000000000000000000000) (bvsle lt!97076 (bvsub (size!4198 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (=> d!56749 (= lt!97076 e!127961)))

(declare-fun c!35098 () Bool)

(assert (=> d!56749 (= c!35098 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!56749 (and (bvsle #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4198 (_keys!5954 lt!96693)) (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!56749 (= (arrayCountValidKeys!0 (_keys!5954 lt!96693) #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))) lt!97076)))

(declare-fun bm!19675 () Bool)

(assert (=> bm!19675 (= call!19678 (arrayCountValidKeys!0 (_keys!5954 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!194503 () Bool)

(assert (=> b!194503 (= e!127961 e!127960)))

(declare-fun c!35099 () Bool)

(assert (=> b!194503 (= c!35099 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194504 () Bool)

(assert (=> b!194504 (= e!127960 call!19678)))

(assert (= (and d!56749 c!35098) b!194502))

(assert (= (and d!56749 (not c!35098)) b!194503))

(assert (= (and b!194503 c!35099) b!194501))

(assert (= (and b!194503 (not c!35099)) b!194504))

(assert (= (or b!194501 b!194504) bm!19675))

(declare-fun m!221511 () Bool)

(assert (=> bm!19675 m!221511))

(assert (=> b!194503 m!221425))

(assert (=> b!194503 m!221425))

(assert (=> b!194503 m!221427))

(assert (=> b!194034 d!56749))

(assert (=> d!56557 d!56579))

(declare-fun b!194517 () Bool)

(declare-fun e!127969 () SeekEntryResult!704)

(declare-fun e!127970 () SeekEntryResult!704)

(assert (=> b!194517 (= e!127969 e!127970)))

(declare-fun c!35107 () Bool)

(declare-fun lt!97081 () (_ BitVec 64))

(assert (=> b!194517 (= c!35107 (= lt!97081 key!828))))

(declare-fun b!194518 () Bool)

(declare-fun c!35108 () Bool)

(assert (=> b!194518 (= c!35108 (= lt!97081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127968 () SeekEntryResult!704)

(assert (=> b!194518 (= e!127970 e!127968)))

(declare-fun b!194519 () Bool)

(assert (=> b!194519 (= e!127970 (Found!704 (index!4988 lt!96891)))))

(declare-fun b!194520 () Bool)

(assert (=> b!194520 (= e!127969 Undefined!704)))

(declare-fun b!194521 () Bool)

(assert (=> b!194521 (= e!127968 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20700 lt!96891) #b00000000000000000000000000000001) (nextIndex!0 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248)) (index!4988 lt!96891) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194522 () Bool)

(assert (=> b!194522 (= e!127968 (MissingVacant!704 (index!4988 lt!96891)))))

(declare-fun d!56751 () Bool)

(declare-fun lt!97082 () SeekEntryResult!704)

(assert (=> d!56751 (and (or ((_ is Undefined!704) lt!97082) (not ((_ is Found!704) lt!97082)) (and (bvsge (index!4987 lt!97082) #b00000000000000000000000000000000) (bvslt (index!4987 lt!97082) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97082) ((_ is Found!704) lt!97082) (not ((_ is MissingVacant!704) lt!97082)) (not (= (index!4989 lt!97082) (index!4988 lt!96891))) (and (bvsge (index!4989 lt!97082) #b00000000000000000000000000000000) (bvslt (index!4989 lt!97082) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97082) (ite ((_ is Found!704) lt!97082) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!97082)) key!828) (and ((_ is MissingVacant!704) lt!97082) (= (index!4989 lt!97082) (index!4988 lt!96891)) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4989 lt!97082)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!56751 (= lt!97082 e!127969)))

(declare-fun c!35106 () Bool)

(assert (=> d!56751 (= c!35106 (bvsge (x!20700 lt!96891) #b01111111111111111111111111111110))))

(assert (=> d!56751 (= lt!97081 (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!96891)))))

(assert (=> d!56751 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56751 (= (seekKeyOrZeroReturnVacant!0 (x!20700 lt!96891) (index!4988 lt!96891) (index!4988 lt!96891) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) lt!97082)))

(assert (= (and d!56751 c!35106) b!194520))

(assert (= (and d!56751 (not c!35106)) b!194517))

(assert (= (and b!194517 c!35107) b!194519))

(assert (= (and b!194517 (not c!35107)) b!194518))

(assert (= (and b!194518 c!35108) b!194522))

(assert (= (and b!194518 (not c!35108)) b!194521))

(declare-fun m!221513 () Bool)

(assert (=> b!194521 m!221513))

(assert (=> b!194521 m!221513))

(declare-fun m!221515 () Bool)

(assert (=> b!194521 m!221515))

(declare-fun m!221517 () Bool)

(assert (=> d!56751 m!221517))

(declare-fun m!221519 () Bool)

(assert (=> d!56751 m!221519))

(assert (=> d!56751 m!220999))

(assert (=> d!56751 m!220833))

(assert (=> b!194156 d!56751))

(declare-fun d!56753 () Bool)

(assert (=> d!56753 (= (apply!188 lt!96830 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2239 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7750 () Bool)

(assert (= bs!7750 d!56753))

(assert (=> bs!7750 m!220855))

(declare-fun m!221521 () Bool)

(assert (=> bs!7750 m!221521))

(assert (=> bs!7750 m!221521))

(declare-fun m!221523 () Bool)

(assert (=> bs!7750 m!221523))

(assert (=> b!194085 d!56753))

(declare-fun d!56755 () Bool)

(declare-fun c!35109 () Bool)

(assert (=> d!56755 (= c!35109 ((_ is ValueCellFull!1902) (select (arr!3875 lt!96703) #b00000000000000000000000000000000)))))

(declare-fun e!127971 () V!5635)

(assert (=> d!56755 (= (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!127971)))

(declare-fun b!194523 () Bool)

(assert (=> b!194523 (= e!127971 (get!2240 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!194524 () Bool)

(assert (=> b!194524 (= e!127971 (get!2241 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56755 c!35109) b!194523))

(assert (= (and d!56755 (not c!35109)) b!194524))

(assert (=> b!194523 m!220863))

(assert (=> b!194523 m!220859))

(declare-fun m!221525 () Bool)

(assert (=> b!194523 m!221525))

(assert (=> b!194524 m!220863))

(assert (=> b!194524 m!220859))

(declare-fun m!221527 () Bool)

(assert (=> b!194524 m!221527))

(assert (=> b!194085 d!56755))

(declare-fun b!194525 () Bool)

(declare-fun e!127974 () Bool)

(declare-fun call!19679 () Bool)

(assert (=> b!194525 (= e!127974 call!19679)))

(declare-fun bm!19676 () Bool)

(declare-fun c!35110 () Bool)

(assert (=> bm!19676 (= call!19679 (arrayNoDuplicates!0 (_keys!5954 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35110 (Cons!2467 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) Nil!2468) Nil!2468)))))

(declare-fun b!194526 () Bool)

(declare-fun e!127973 () Bool)

(assert (=> b!194526 (= e!127973 (contains!1381 Nil!2468 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194527 () Bool)

(declare-fun e!127975 () Bool)

(assert (=> b!194527 (= e!127975 e!127974)))

(assert (=> b!194527 (= c!35110 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun d!56757 () Bool)

(declare-fun res!91944 () Bool)

(declare-fun e!127972 () Bool)

(assert (=> d!56757 (=> res!91944 e!127972)))

(assert (=> d!56757 (= res!91944 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!56757 (= (arrayNoDuplicates!0 (_keys!5954 lt!96693) #b00000000000000000000000000000000 Nil!2468) e!127972)))

(declare-fun b!194528 () Bool)

(assert (=> b!194528 (= e!127972 e!127975)))

(declare-fun res!91943 () Bool)

(assert (=> b!194528 (=> (not res!91943) (not e!127975))))

(assert (=> b!194528 (= res!91943 (not e!127973))))

(declare-fun res!91942 () Bool)

(assert (=> b!194528 (=> (not res!91942) (not e!127973))))

(assert (=> b!194528 (= res!91942 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194529 () Bool)

(assert (=> b!194529 (= e!127974 call!19679)))

(assert (= (and d!56757 (not res!91944)) b!194528))

(assert (= (and b!194528 res!91942) b!194526))

(assert (= (and b!194528 res!91943) b!194527))

(assert (= (and b!194527 c!35110) b!194529))

(assert (= (and b!194527 (not c!35110)) b!194525))

(assert (= (or b!194529 b!194525) bm!19676))

(assert (=> bm!19676 m!221425))

(declare-fun m!221529 () Bool)

(assert (=> bm!19676 m!221529))

(assert (=> b!194526 m!221425))

(assert (=> b!194526 m!221425))

(declare-fun m!221531 () Bool)

(assert (=> b!194526 m!221531))

(assert (=> b!194527 m!221425))

(assert (=> b!194527 m!221425))

(assert (=> b!194527 m!221427))

(assert (=> b!194528 m!221425))

(assert (=> b!194528 m!221425))

(assert (=> b!194528 m!221427))

(assert (=> b!194036 d!56757))

(assert (=> d!56583 d!56591))

(declare-fun d!56759 () Bool)

(declare-fun e!127978 () Bool)

(assert (=> d!56759 e!127978))

(declare-fun res!91950 () Bool)

(assert (=> d!56759 (=> (not res!91950) (not e!127978))))

(declare-fun lt!97085 () SeekEntryResult!704)

(assert (=> d!56759 (= res!91950 ((_ is Found!704) lt!97085))))

(assert (=> d!56759 (= lt!97085 (seekEntryOrOpen!0 key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(assert (=> d!56759 true))

(declare-fun _$33!150 () Unit!5875)

(assert (=> d!56759 (= (choose!1074 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) key!828 (defaultEntry!3960 thiss!1248)) _$33!150)))

(declare-fun b!194534 () Bool)

(declare-fun res!91949 () Bool)

(assert (=> b!194534 (=> (not res!91949) (not e!127978))))

(assert (=> b!194534 (= res!91949 (inRange!0 (index!4987 lt!97085) (mask!9223 thiss!1248)))))

(declare-fun b!194535 () Bool)

(assert (=> b!194535 (= e!127978 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!97085)) key!828))))

(assert (= (and d!56759 res!91950) b!194534))

(assert (= (and b!194534 res!91949) b!194535))

(assert (=> d!56759 m!220749))

(declare-fun m!221533 () Bool)

(assert (=> b!194534 m!221533))

(declare-fun m!221535 () Bool)

(assert (=> b!194535 m!221535))

(assert (=> d!56583 d!56759))

(assert (=> d!56583 d!56605))

(assert (=> b!194106 d!56673))

(assert (=> b!194106 d!56675))

(declare-fun d!56761 () Bool)

(declare-fun e!127980 () Bool)

(assert (=> d!56761 e!127980))

(declare-fun res!91951 () Bool)

(assert (=> d!56761 (=> res!91951 e!127980)))

(declare-fun lt!97086 () Bool)

(assert (=> d!56761 (= res!91951 (not lt!97086))))

(declare-fun lt!97087 () Bool)

(assert (=> d!56761 (= lt!97086 lt!97087)))

(declare-fun lt!97088 () Unit!5875)

(declare-fun e!127979 () Unit!5875)

(assert (=> d!56761 (= lt!97088 e!127979)))

(declare-fun c!35111 () Bool)

(assert (=> d!56761 (= c!35111 lt!97087)))

(assert (=> d!56761 (= lt!97087 (containsKey!248 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56761 (= (contains!1378 lt!96830 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97086)))

(declare-fun b!194536 () Bool)

(declare-fun lt!97089 () Unit!5875)

(assert (=> b!194536 (= e!127979 lt!97089)))

(assert (=> b!194536 (= lt!97089 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194536 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194537 () Bool)

(declare-fun Unit!5893 () Unit!5875)

(assert (=> b!194537 (= e!127979 Unit!5893)))

(declare-fun b!194538 () Bool)

(assert (=> b!194538 (= e!127980 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56761 c!35111) b!194536))

(assert (= (and d!56761 (not c!35111)) b!194537))

(assert (= (and d!56761 (not res!91951)) b!194538))

(declare-fun m!221537 () Bool)

(assert (=> d!56761 m!221537))

(declare-fun m!221539 () Bool)

(assert (=> b!194536 m!221539))

(declare-fun m!221541 () Bool)

(assert (=> b!194536 m!221541))

(assert (=> b!194536 m!221541))

(declare-fun m!221543 () Bool)

(assert (=> b!194536 m!221543))

(assert (=> b!194538 m!221541))

(assert (=> b!194538 m!221541))

(assert (=> b!194538 m!221543))

(assert (=> bm!19627 d!56761))

(assert (=> bm!19637 d!56633))

(declare-fun d!56763 () Bool)

(declare-fun lt!97090 () Bool)

(assert (=> d!56763 (= lt!97090 (select (content!154 (toList!1259 lt!96751)) lt!96700))))

(declare-fun e!127982 () Bool)

(assert (=> d!56763 (= lt!97090 e!127982)))

(declare-fun res!91952 () Bool)

(assert (=> d!56763 (=> (not res!91952) (not e!127982))))

(assert (=> d!56763 (= res!91952 ((_ is Cons!2465) (toList!1259 lt!96751)))))

(assert (=> d!56763 (= (contains!1380 (toList!1259 lt!96751) lt!96700) lt!97090)))

(declare-fun b!194539 () Bool)

(declare-fun e!127981 () Bool)

(assert (=> b!194539 (= e!127982 e!127981)))

(declare-fun res!91953 () Bool)

(assert (=> b!194539 (=> res!91953 e!127981)))

(assert (=> b!194539 (= res!91953 (= (h!3106 (toList!1259 lt!96751)) lt!96700))))

(declare-fun b!194540 () Bool)

(assert (=> b!194540 (= e!127981 (contains!1380 (t!7403 (toList!1259 lt!96751)) lt!96700))))

(assert (= (and d!56763 res!91952) b!194539))

(assert (= (and b!194539 (not res!91953)) b!194540))

(declare-fun m!221545 () Bool)

(assert (=> d!56763 m!221545))

(declare-fun m!221547 () Bool)

(assert (=> d!56763 m!221547))

(declare-fun m!221549 () Bool)

(assert (=> b!194540 m!221549))

(assert (=> b!193991 d!56763))

(declare-fun d!56765 () Bool)

(declare-fun e!127984 () Bool)

(assert (=> d!56765 e!127984))

(declare-fun res!91954 () Bool)

(assert (=> d!56765 (=> res!91954 e!127984)))

(declare-fun lt!97091 () Bool)

(assert (=> d!56765 (= res!91954 (not lt!97091))))

(declare-fun lt!97092 () Bool)

(assert (=> d!56765 (= lt!97091 lt!97092)))

(declare-fun lt!97093 () Unit!5875)

(declare-fun e!127983 () Unit!5875)

(assert (=> d!56765 (= lt!97093 e!127983)))

(declare-fun c!35112 () Bool)

(assert (=> d!56765 (= c!35112 lt!97092)))

(assert (=> d!56765 (= lt!97092 (containsKey!248 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56765 (= (contains!1378 lt!96867 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97091)))

(declare-fun b!194541 () Bool)

(declare-fun lt!97094 () Unit!5875)

(assert (=> b!194541 (= e!127983 lt!97094)))

(assert (=> b!194541 (= lt!97094 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194541 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194542 () Bool)

(declare-fun Unit!5894 () Unit!5875)

(assert (=> b!194542 (= e!127983 Unit!5894)))

(declare-fun b!194543 () Bool)

(assert (=> b!194543 (= e!127984 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56765 c!35112) b!194541))

(assert (= (and d!56765 (not c!35112)) b!194542))

(assert (= (and d!56765 (not res!91954)) b!194543))

(assert (=> d!56765 m!220855))

(declare-fun m!221551 () Bool)

(assert (=> d!56765 m!221551))

(assert (=> b!194541 m!220855))

(declare-fun m!221553 () Bool)

(assert (=> b!194541 m!221553))

(assert (=> b!194541 m!220855))

(assert (=> b!194541 m!221503))

(assert (=> b!194541 m!221503))

(declare-fun m!221555 () Bool)

(assert (=> b!194541 m!221555))

(assert (=> b!194543 m!220855))

(assert (=> b!194543 m!221503))

(assert (=> b!194543 m!221503))

(assert (=> b!194543 m!221555))

(assert (=> b!194122 d!56765))

(assert (=> bm!19630 d!56707))

(declare-fun bm!19677 () Bool)

(declare-fun call!19685 () Bool)

(declare-fun lt!97108 () ListLongMap!2487)

(assert (=> bm!19677 (= call!19685 (contains!1378 lt!97108 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194544 () Bool)

(declare-fun e!127987 () Bool)

(assert (=> b!194544 (= e!127987 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194545 () Bool)

(declare-fun e!127991 () Bool)

(assert (=> b!194545 (= e!127991 (= (apply!188 lt!97108 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3801 lt!96693)))))

(declare-fun b!194546 () Bool)

(declare-fun e!127997 () Bool)

(declare-fun call!19686 () Bool)

(assert (=> b!194546 (= e!127997 (not call!19686))))

(declare-fun b!194547 () Bool)

(declare-fun e!127986 () ListLongMap!2487)

(declare-fun call!19680 () ListLongMap!2487)

(assert (=> b!194547 (= e!127986 call!19680)))

(declare-fun call!19683 () ListLongMap!2487)

(declare-fun c!35116 () Bool)

(declare-fun c!35115 () Bool)

(declare-fun call!19682 () ListLongMap!2487)

(declare-fun bm!19678 () Bool)

(declare-fun call!19684 () ListLongMap!2487)

(assert (=> bm!19678 (= call!19684 (+!317 (ite c!35115 call!19683 (ite c!35116 call!19682 call!19680)) (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))

(declare-fun b!194548 () Bool)

(declare-fun call!19681 () ListLongMap!2487)

(assert (=> b!194548 (= e!127986 call!19681)))

(declare-fun b!194549 () Bool)

(declare-fun e!127996 () Unit!5875)

(declare-fun lt!97104 () Unit!5875)

(assert (=> b!194549 (= e!127996 lt!97104)))

(declare-fun lt!97099 () ListLongMap!2487)

(assert (=> b!194549 (= lt!97099 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)))))

(declare-fun lt!97115 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97115 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!97095 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97095 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))

(declare-fun lt!97106 () Unit!5875)

(assert (=> b!194549 (= lt!97106 (addStillContains!164 lt!97099 lt!97115 (zeroValue!3801 lt!96693) lt!97095))))

(assert (=> b!194549 (contains!1378 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))) lt!97095)))

(declare-fun lt!97114 () Unit!5875)

(assert (=> b!194549 (= lt!97114 lt!97106)))

(declare-fun lt!97101 () ListLongMap!2487)

(assert (=> b!194549 (= lt!97101 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)))))

(declare-fun lt!97109 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97109 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!97113 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97113 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))

(declare-fun lt!97110 () Unit!5875)

(assert (=> b!194549 (= lt!97110 (addApplyDifferent!164 lt!97101 lt!97109 (minValue!3801 lt!96693) lt!97113))))

(assert (=> b!194549 (= (apply!188 (+!317 lt!97101 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))) lt!97113) (apply!188 lt!97101 lt!97113))))

(declare-fun lt!97096 () Unit!5875)

(assert (=> b!194549 (= lt!97096 lt!97110)))

(declare-fun lt!97111 () ListLongMap!2487)

(assert (=> b!194549 (= lt!97111 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)))))

(declare-fun lt!97102 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97102 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!97097 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97097 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))

(declare-fun lt!97112 () Unit!5875)

(assert (=> b!194549 (= lt!97112 (addApplyDifferent!164 lt!97111 lt!97102 (zeroValue!3801 lt!96693) lt!97097))))

(assert (=> b!194549 (= (apply!188 (+!317 lt!97111 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))) lt!97097) (apply!188 lt!97111 lt!97097))))

(declare-fun lt!97100 () Unit!5875)

(assert (=> b!194549 (= lt!97100 lt!97112)))

(declare-fun lt!97116 () ListLongMap!2487)

(assert (=> b!194549 (= lt!97116 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)))))

(declare-fun lt!97107 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97107 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!97098 () (_ BitVec 64))

(assert (=> b!194549 (= lt!97098 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))

(assert (=> b!194549 (= lt!97104 (addApplyDifferent!164 lt!97116 lt!97107 (minValue!3801 lt!96693) lt!97098))))

(assert (=> b!194549 (= (apply!188 (+!317 lt!97116 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))) lt!97098) (apply!188 lt!97116 lt!97098))))

(declare-fun b!194550 () Bool)

(declare-fun e!127988 () Bool)

(assert (=> b!194550 (= e!127988 (= (apply!188 lt!97108 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!194550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 (_values!3943 lt!96693))))))

(assert (=> b!194550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun d!56767 () Bool)

(declare-fun e!127989 () Bool)

(assert (=> d!56767 e!127989))

(declare-fun res!91963 () Bool)

(assert (=> d!56767 (=> (not res!91963) (not e!127989))))

(assert (=> d!56767 (= res!91963 (or (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))))

(declare-fun lt!97105 () ListLongMap!2487)

(assert (=> d!56767 (= lt!97108 lt!97105)))

(declare-fun lt!97103 () Unit!5875)

(assert (=> d!56767 (= lt!97103 e!127996)))

(declare-fun c!35118 () Bool)

(assert (=> d!56767 (= c!35118 e!127987)))

(declare-fun res!91958 () Bool)

(assert (=> d!56767 (=> (not res!91958) (not e!127987))))

(assert (=> d!56767 (= res!91958 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun e!127995 () ListLongMap!2487)

(assert (=> d!56767 (= lt!97105 e!127995)))

(assert (=> d!56767 (= c!35115 (and (not (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56767 (validMask!0 (mask!9223 lt!96693))))

(assert (=> d!56767 (= (getCurrentListMap!902 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)) lt!97108)))

(declare-fun bm!19679 () Bool)

(assert (=> bm!19679 (= call!19686 (contains!1378 lt!97108 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194551 () Bool)

(declare-fun e!127985 () ListLongMap!2487)

(assert (=> b!194551 (= e!127985 call!19681)))

(declare-fun bm!19680 () Bool)

(assert (=> bm!19680 (= call!19681 call!19684)))

(declare-fun bm!19681 () Bool)

(assert (=> bm!19681 (= call!19680 call!19682)))

(declare-fun bm!19682 () Bool)

(assert (=> bm!19682 (= call!19683 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)))))

(declare-fun b!194552 () Bool)

(assert (=> b!194552 (= e!127995 (+!317 call!19684 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))

(declare-fun b!194553 () Bool)

(declare-fun e!127994 () Bool)

(assert (=> b!194553 (= e!127994 e!127988)))

(declare-fun res!91955 () Bool)

(assert (=> b!194553 (=> (not res!91955) (not e!127988))))

(assert (=> b!194553 (= res!91955 (contains!1378 lt!97108 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (=> b!194553 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!194554 () Bool)

(assert (=> b!194554 (= e!127995 e!127985)))

(assert (=> b!194554 (= c!35116 (and (not (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194555 () Bool)

(declare-fun res!91961 () Bool)

(assert (=> b!194555 (=> (not res!91961) (not e!127989))))

(assert (=> b!194555 (= res!91961 e!127994)))

(declare-fun res!91956 () Bool)

(assert (=> b!194555 (=> res!91956 e!127994)))

(declare-fun e!127990 () Bool)

(assert (=> b!194555 (= res!91956 (not e!127990))))

(declare-fun res!91957 () Bool)

(assert (=> b!194555 (=> (not res!91957) (not e!127990))))

(assert (=> b!194555 (= res!91957 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!194556 () Bool)

(declare-fun e!127992 () Bool)

(assert (=> b!194556 (= e!127997 e!127992)))

(declare-fun res!91960 () Bool)

(assert (=> b!194556 (= res!91960 call!19686)))

(assert (=> b!194556 (=> (not res!91960) (not e!127992))))

(declare-fun b!194557 () Bool)

(assert (=> b!194557 (= e!127992 (= (apply!188 lt!97108 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3801 lt!96693)))))

(declare-fun bm!19683 () Bool)

(assert (=> bm!19683 (= call!19682 call!19683)))

(declare-fun b!194558 () Bool)

(declare-fun res!91959 () Bool)

(assert (=> b!194558 (=> (not res!91959) (not e!127989))))

(declare-fun e!127993 () Bool)

(assert (=> b!194558 (= res!91959 e!127993)))

(declare-fun c!35117 () Bool)

(assert (=> b!194558 (= c!35117 (not (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!194559 () Bool)

(declare-fun c!35113 () Bool)

(assert (=> b!194559 (= c!35113 (and (not (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!194559 (= e!127985 e!127986)))

(declare-fun b!194560 () Bool)

(assert (=> b!194560 (= e!127990 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194561 () Bool)

(assert (=> b!194561 (= e!127993 e!127991)))

(declare-fun res!91962 () Bool)

(assert (=> b!194561 (= res!91962 call!19685)))

(assert (=> b!194561 (=> (not res!91962) (not e!127991))))

(declare-fun b!194562 () Bool)

(assert (=> b!194562 (= e!127989 e!127997)))

(declare-fun c!35114 () Bool)

(assert (=> b!194562 (= c!35114 (not (= (bvand (extraKeys!3697 lt!96693) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!194563 () Bool)

(assert (=> b!194563 (= e!127993 (not call!19685))))

(declare-fun b!194564 () Bool)

(declare-fun Unit!5895 () Unit!5875)

(assert (=> b!194564 (= e!127996 Unit!5895)))

(assert (= (and d!56767 c!35115) b!194552))

(assert (= (and d!56767 (not c!35115)) b!194554))

(assert (= (and b!194554 c!35116) b!194551))

(assert (= (and b!194554 (not c!35116)) b!194559))

(assert (= (and b!194559 c!35113) b!194548))

(assert (= (and b!194559 (not c!35113)) b!194547))

(assert (= (or b!194548 b!194547) bm!19681))

(assert (= (or b!194551 bm!19681) bm!19683))

(assert (= (or b!194551 b!194548) bm!19680))

(assert (= (or b!194552 bm!19683) bm!19682))

(assert (= (or b!194552 bm!19680) bm!19678))

(assert (= (and d!56767 res!91958) b!194544))

(assert (= (and d!56767 c!35118) b!194549))

(assert (= (and d!56767 (not c!35118)) b!194564))

(assert (= (and d!56767 res!91963) b!194555))

(assert (= (and b!194555 res!91957) b!194560))

(assert (= (and b!194555 (not res!91956)) b!194553))

(assert (= (and b!194553 res!91955) b!194550))

(assert (= (and b!194555 res!91961) b!194558))

(assert (= (and b!194558 c!35117) b!194561))

(assert (= (and b!194558 (not c!35117)) b!194563))

(assert (= (and b!194561 res!91962) b!194545))

(assert (= (or b!194561 b!194563) bm!19677))

(assert (= (and b!194558 res!91959) b!194562))

(assert (= (and b!194562 c!35114) b!194556))

(assert (= (and b!194562 (not c!35114)) b!194546))

(assert (= (and b!194556 res!91960) b!194557))

(assert (= (or b!194556 b!194546) bm!19679))

(declare-fun b_lambda!7527 () Bool)

(assert (=> (not b_lambda!7527) (not b!194550)))

(declare-fun tb!2897 () Bool)

(declare-fun t!7409 () Bool)

(assert (=> (and b!193945 (= (defaultEntry!3960 thiss!1248) (defaultEntry!3960 lt!96693)) t!7409) tb!2897))

(declare-fun result!4953 () Bool)

(assert (=> tb!2897 (= result!4953 tp_is_empty!4491)))

(assert (=> b!194550 t!7409))

(declare-fun b_and!11469 () Bool)

(assert (= b_and!11467 (and (=> t!7409 result!4953) b_and!11469)))

(declare-fun m!221557 () Bool)

(assert (=> bm!19682 m!221557))

(declare-fun m!221559 () Bool)

(assert (=> b!194545 m!221559))

(declare-fun m!221561 () Bool)

(assert (=> bm!19679 m!221561))

(assert (=> d!56767 m!221107))

(declare-fun m!221563 () Bool)

(assert (=> b!194552 m!221563))

(declare-fun m!221565 () Bool)

(assert (=> bm!19678 m!221565))

(assert (=> b!194544 m!221425))

(assert (=> b!194544 m!221425))

(assert (=> b!194544 m!221427))

(assert (=> b!194560 m!221425))

(assert (=> b!194560 m!221425))

(assert (=> b!194560 m!221427))

(assert (=> b!194550 m!221425))

(declare-fun m!221567 () Bool)

(assert (=> b!194550 m!221567))

(assert (=> b!194550 m!221425))

(declare-fun m!221569 () Bool)

(assert (=> b!194550 m!221569))

(declare-fun m!221571 () Bool)

(assert (=> b!194550 m!221571))

(assert (=> b!194550 m!221571))

(assert (=> b!194550 m!221567))

(declare-fun m!221573 () Bool)

(assert (=> b!194550 m!221573))

(declare-fun m!221575 () Bool)

(assert (=> b!194557 m!221575))

(declare-fun m!221577 () Bool)

(assert (=> b!194549 m!221577))

(declare-fun m!221579 () Bool)

(assert (=> b!194549 m!221579))

(declare-fun m!221581 () Bool)

(assert (=> b!194549 m!221581))

(declare-fun m!221583 () Bool)

(assert (=> b!194549 m!221583))

(declare-fun m!221585 () Bool)

(assert (=> b!194549 m!221585))

(declare-fun m!221587 () Bool)

(assert (=> b!194549 m!221587))

(declare-fun m!221589 () Bool)

(assert (=> b!194549 m!221589))

(declare-fun m!221591 () Bool)

(assert (=> b!194549 m!221591))

(declare-fun m!221593 () Bool)

(assert (=> b!194549 m!221593))

(assert (=> b!194549 m!221425))

(declare-fun m!221595 () Bool)

(assert (=> b!194549 m!221595))

(assert (=> b!194549 m!221579))

(assert (=> b!194549 m!221557))

(assert (=> b!194549 m!221591))

(declare-fun m!221597 () Bool)

(assert (=> b!194549 m!221597))

(declare-fun m!221599 () Bool)

(assert (=> b!194549 m!221599))

(assert (=> b!194549 m!221583))

(declare-fun m!221601 () Bool)

(assert (=> b!194549 m!221601))

(declare-fun m!221603 () Bool)

(assert (=> b!194549 m!221603))

(assert (=> b!194549 m!221587))

(declare-fun m!221605 () Bool)

(assert (=> b!194549 m!221605))

(assert (=> b!194553 m!221425))

(assert (=> b!194553 m!221425))

(declare-fun m!221607 () Bool)

(assert (=> b!194553 m!221607))

(declare-fun m!221609 () Bool)

(assert (=> bm!19677 m!221609))

(assert (=> d!56561 d!56767))

(declare-fun d!56769 () Bool)

(declare-fun e!127999 () Bool)

(assert (=> d!56769 e!127999))

(declare-fun res!91964 () Bool)

(assert (=> d!56769 (=> res!91964 e!127999)))

(declare-fun lt!97117 () Bool)

(assert (=> d!56769 (= res!91964 (not lt!97117))))

(declare-fun lt!97118 () Bool)

(assert (=> d!56769 (= lt!97117 lt!97118)))

(declare-fun lt!97119 () Unit!5875)

(declare-fun e!127998 () Unit!5875)

(assert (=> d!56769 (= lt!97119 e!127998)))

(declare-fun c!35119 () Bool)

(assert (=> d!56769 (= c!35119 lt!97118)))

(assert (=> d!56769 (= lt!97118 (containsKey!248 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56769 (= (contains!1378 lt!96830 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97117)))

(declare-fun b!194565 () Bool)

(declare-fun lt!97120 () Unit!5875)

(assert (=> b!194565 (= e!127998 lt!97120)))

(assert (=> b!194565 (= lt!97120 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194565 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194566 () Bool)

(declare-fun Unit!5896 () Unit!5875)

(assert (=> b!194566 (= e!127998 Unit!5896)))

(declare-fun b!194567 () Bool)

(assert (=> b!194567 (= e!127999 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56769 c!35119) b!194565))

(assert (= (and d!56769 (not c!35119)) b!194566))

(assert (= (and d!56769 (not res!91964)) b!194567))

(assert (=> d!56769 m!220855))

(declare-fun m!221611 () Bool)

(assert (=> d!56769 m!221611))

(assert (=> b!194565 m!220855))

(declare-fun m!221613 () Bool)

(assert (=> b!194565 m!221613))

(assert (=> b!194565 m!220855))

(assert (=> b!194565 m!221521))

(assert (=> b!194565 m!221521))

(declare-fun m!221615 () Bool)

(assert (=> b!194565 m!221615))

(assert (=> b!194567 m!220855))

(assert (=> b!194567 m!221521))

(assert (=> b!194567 m!221521))

(assert (=> b!194567 m!221615))

(assert (=> b!194088 d!56769))

(declare-fun d!56771 () Bool)

(declare-fun e!128001 () Bool)

(assert (=> d!56771 e!128001))

(declare-fun res!91965 () Bool)

(assert (=> d!56771 (=> res!91965 e!128001)))

(declare-fun lt!97121 () Bool)

(assert (=> d!56771 (= res!91965 (not lt!97121))))

(declare-fun lt!97122 () Bool)

(assert (=> d!56771 (= lt!97121 lt!97122)))

(declare-fun lt!97123 () Unit!5875)

(declare-fun e!128000 () Unit!5875)

(assert (=> d!56771 (= lt!97123 e!128000)))

(declare-fun c!35120 () Bool)

(assert (=> d!56771 (= c!35120 lt!97122)))

(assert (=> d!56771 (= lt!97122 (containsKey!248 (toList!1259 lt!96839) (_1!1788 lt!96700)))))

(assert (=> d!56771 (= (contains!1378 lt!96839 (_1!1788 lt!96700)) lt!97121)))

(declare-fun b!194568 () Bool)

(declare-fun lt!97124 () Unit!5875)

(assert (=> b!194568 (= e!128000 lt!97124)))

(assert (=> b!194568 (= lt!97124 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96839) (_1!1788 lt!96700)))))

(assert (=> b!194568 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700)))))

(declare-fun b!194569 () Bool)

(declare-fun Unit!5897 () Unit!5875)

(assert (=> b!194569 (= e!128000 Unit!5897)))

(declare-fun b!194570 () Bool)

(assert (=> b!194570 (= e!128001 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700))))))

(assert (= (and d!56771 c!35120) b!194568))

(assert (= (and d!56771 (not c!35120)) b!194569))

(assert (= (and d!56771 (not res!91965)) b!194570))

(declare-fun m!221617 () Bool)

(assert (=> d!56771 m!221617))

(declare-fun m!221619 () Bool)

(assert (=> b!194568 m!221619))

(assert (=> b!194568 m!220911))

(assert (=> b!194568 m!220911))

(declare-fun m!221621 () Bool)

(assert (=> b!194568 m!221621))

(assert (=> b!194570 m!220911))

(assert (=> b!194570 m!220911))

(assert (=> b!194570 m!221621))

(assert (=> d!56571 d!56771))

(declare-fun b!194572 () Bool)

(declare-fun e!128002 () Option!250)

(declare-fun e!128003 () Option!250)

(assert (=> b!194572 (= e!128002 e!128003)))

(declare-fun c!35122 () Bool)

(assert (=> b!194572 (= c!35122 (and ((_ is Cons!2465) lt!96842) (not (= (_1!1788 (h!3106 lt!96842)) (_1!1788 lt!96700)))))))

(declare-fun b!194571 () Bool)

(assert (=> b!194571 (= e!128002 (Some!249 (_2!1788 (h!3106 lt!96842))))))

(declare-fun b!194573 () Bool)

(assert (=> b!194573 (= e!128003 (getValueByKey!244 (t!7403 lt!96842) (_1!1788 lt!96700)))))

(declare-fun d!56773 () Bool)

(declare-fun c!35121 () Bool)

(assert (=> d!56773 (= c!35121 (and ((_ is Cons!2465) lt!96842) (= (_1!1788 (h!3106 lt!96842)) (_1!1788 lt!96700))))))

(assert (=> d!56773 (= (getValueByKey!244 lt!96842 (_1!1788 lt!96700)) e!128002)))

(declare-fun b!194574 () Bool)

(assert (=> b!194574 (= e!128003 None!248)))

(assert (= (and d!56773 c!35121) b!194571))

(assert (= (and d!56773 (not c!35121)) b!194572))

(assert (= (and b!194572 c!35122) b!194573))

(assert (= (and b!194572 (not c!35122)) b!194574))

(declare-fun m!221623 () Bool)

(assert (=> b!194573 m!221623))

(assert (=> d!56571 d!56773))

(declare-fun d!56775 () Bool)

(assert (=> d!56775 (= (getValueByKey!244 lt!96842 (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700)))))

(declare-fun lt!97125 () Unit!5875)

(assert (=> d!56775 (= lt!97125 (choose!1076 lt!96842 (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun e!128004 () Bool)

(assert (=> d!56775 e!128004))

(declare-fun res!91966 () Bool)

(assert (=> d!56775 (=> (not res!91966) (not e!128004))))

(assert (=> d!56775 (= res!91966 (isStrictlySorted!352 lt!96842))))

(assert (=> d!56775 (= (lemmaContainsTupThenGetReturnValue!133 lt!96842 (_1!1788 lt!96700) (_2!1788 lt!96700)) lt!97125)))

(declare-fun b!194575 () Bool)

(declare-fun res!91967 () Bool)

(assert (=> b!194575 (=> (not res!91967) (not e!128004))))

(assert (=> b!194575 (= res!91967 (containsKey!248 lt!96842 (_1!1788 lt!96700)))))

(declare-fun b!194576 () Bool)

(assert (=> b!194576 (= e!128004 (contains!1380 lt!96842 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(assert (= (and d!56775 res!91966) b!194575))

(assert (= (and b!194575 res!91967) b!194576))

(assert (=> d!56775 m!220905))

(declare-fun m!221625 () Bool)

(assert (=> d!56775 m!221625))

(declare-fun m!221627 () Bool)

(assert (=> d!56775 m!221627))

(declare-fun m!221629 () Bool)

(assert (=> b!194575 m!221629))

(declare-fun m!221631 () Bool)

(assert (=> b!194576 m!221631))

(assert (=> d!56571 d!56775))

(declare-fun bm!19684 () Bool)

(declare-fun call!19688 () List!2469)

(declare-fun e!128005 () List!2469)

(declare-fun c!35124 () Bool)

(assert (=> bm!19684 (= call!19688 ($colon$colon!102 e!128005 (ite c!35124 (h!3106 (toList!1259 lt!96698)) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700)))))))

(declare-fun c!35123 () Bool)

(assert (=> bm!19684 (= c!35123 c!35124)))

(declare-fun b!194577 () Bool)

(declare-fun e!128009 () List!2469)

(declare-fun call!19687 () List!2469)

(assert (=> b!194577 (= e!128009 call!19687)))

(declare-fun b!194578 () Bool)

(declare-fun c!35125 () Bool)

(assert (=> b!194578 (= c!35125 (and ((_ is Cons!2465) (toList!1259 lt!96698)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96698))) (_1!1788 lt!96700))))))

(declare-fun e!128007 () List!2469)

(assert (=> b!194578 (= e!128009 e!128007)))

(declare-fun b!194579 () Bool)

(declare-fun e!128008 () Bool)

(declare-fun lt!97126 () List!2469)

(assert (=> b!194579 (= e!128008 (contains!1380 lt!97126 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun bm!19685 () Bool)

(declare-fun call!19689 () List!2469)

(assert (=> bm!19685 (= call!19689 call!19687)))

(declare-fun b!194580 () Bool)

(declare-fun e!128006 () List!2469)

(assert (=> b!194580 (= e!128006 e!128009)))

(declare-fun c!35126 () Bool)

(assert (=> b!194580 (= c!35126 (and ((_ is Cons!2465) (toList!1259 lt!96698)) (= (_1!1788 (h!3106 (toList!1259 lt!96698))) (_1!1788 lt!96700))))))

(declare-fun d!56777 () Bool)

(assert (=> d!56777 e!128008))

(declare-fun res!91968 () Bool)

(assert (=> d!56777 (=> (not res!91968) (not e!128008))))

(assert (=> d!56777 (= res!91968 (isStrictlySorted!352 lt!97126))))

(assert (=> d!56777 (= lt!97126 e!128006)))

(assert (=> d!56777 (= c!35124 (and ((_ is Cons!2465) (toList!1259 lt!96698)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96698))) (_1!1788 lt!96700))))))

(assert (=> d!56777 (isStrictlySorted!352 (toList!1259 lt!96698))))

(assert (=> d!56777 (= (insertStrictlySorted!135 (toList!1259 lt!96698) (_1!1788 lt!96700) (_2!1788 lt!96700)) lt!97126)))

(declare-fun bm!19686 () Bool)

(assert (=> bm!19686 (= call!19687 call!19688)))

(declare-fun b!194581 () Bool)

(assert (=> b!194581 (= e!128007 call!19689)))

(declare-fun b!194582 () Bool)

(assert (=> b!194582 (= e!128005 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96698)) (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun b!194583 () Bool)

(assert (=> b!194583 (= e!128007 call!19689)))

(declare-fun b!194584 () Bool)

(declare-fun res!91969 () Bool)

(assert (=> b!194584 (=> (not res!91969) (not e!128008))))

(assert (=> b!194584 (= res!91969 (containsKey!248 lt!97126 (_1!1788 lt!96700)))))

(declare-fun b!194585 () Bool)

(assert (=> b!194585 (= e!128006 call!19688)))

(declare-fun b!194586 () Bool)

(assert (=> b!194586 (= e!128005 (ite c!35126 (t!7403 (toList!1259 lt!96698)) (ite c!35125 (Cons!2465 (h!3106 (toList!1259 lt!96698)) (t!7403 (toList!1259 lt!96698))) Nil!2466)))))

(assert (= (and d!56777 c!35124) b!194585))

(assert (= (and d!56777 (not c!35124)) b!194580))

(assert (= (and b!194580 c!35126) b!194577))

(assert (= (and b!194580 (not c!35126)) b!194578))

(assert (= (and b!194578 c!35125) b!194583))

(assert (= (and b!194578 (not c!35125)) b!194581))

(assert (= (or b!194583 b!194581) bm!19685))

(assert (= (or b!194577 bm!19685) bm!19686))

(assert (= (or b!194585 bm!19686) bm!19684))

(assert (= (and bm!19684 c!35123) b!194582))

(assert (= (and bm!19684 (not c!35123)) b!194586))

(assert (= (and d!56777 res!91968) b!194584))

(assert (= (and b!194584 res!91969) b!194579))

(declare-fun m!221633 () Bool)

(assert (=> bm!19684 m!221633))

(declare-fun m!221635 () Bool)

(assert (=> b!194584 m!221635))

(declare-fun m!221637 () Bool)

(assert (=> b!194579 m!221637))

(declare-fun m!221639 () Bool)

(assert (=> b!194582 m!221639))

(declare-fun m!221641 () Bool)

(assert (=> d!56777 m!221641))

(assert (=> d!56777 m!221473))

(assert (=> d!56571 d!56777))

(declare-fun d!56779 () Bool)

(assert (=> d!56779 (= (apply!188 lt!96867 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7751 () Bool)

(assert (= bs!7751 d!56779))

(assert (=> bs!7751 m!221297))

(assert (=> bs!7751 m!221297))

(declare-fun m!221643 () Bool)

(assert (=> bs!7751 m!221643))

(assert (=> b!194126 d!56779))

(declare-fun d!56781 () Bool)

(declare-fun e!128011 () Bool)

(assert (=> d!56781 e!128011))

(declare-fun res!91970 () Bool)

(assert (=> d!56781 (=> res!91970 e!128011)))

(declare-fun lt!97127 () Bool)

(assert (=> d!56781 (= res!91970 (not lt!97127))))

(declare-fun lt!97128 () Bool)

(assert (=> d!56781 (= lt!97127 lt!97128)))

(declare-fun lt!97129 () Unit!5875)

(declare-fun e!128010 () Unit!5875)

(assert (=> d!56781 (= lt!97129 e!128010)))

(declare-fun c!35127 () Bool)

(assert (=> d!56781 (= c!35127 lt!97128)))

(assert (=> d!56781 (= lt!97128 (containsKey!248 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56781 (= (contains!1378 lt!96867 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97127)))

(declare-fun b!194587 () Bool)

(declare-fun lt!97130 () Unit!5875)

(assert (=> b!194587 (= e!128010 lt!97130)))

(assert (=> b!194587 (= lt!97130 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194587 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194588 () Bool)

(declare-fun Unit!5898 () Unit!5875)

(assert (=> b!194588 (= e!128010 Unit!5898)))

(declare-fun b!194589 () Bool)

(assert (=> b!194589 (= e!128011 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56781 c!35127) b!194587))

(assert (= (and d!56781 (not c!35127)) b!194588))

(assert (= (and d!56781 (not res!91970)) b!194589))

(declare-fun m!221645 () Bool)

(assert (=> d!56781 m!221645))

(declare-fun m!221647 () Bool)

(assert (=> b!194587 m!221647))

(assert (=> b!194587 m!221479))

(assert (=> b!194587 m!221479))

(declare-fun m!221649 () Bool)

(assert (=> b!194587 m!221649))

(assert (=> b!194589 m!221479))

(assert (=> b!194589 m!221479))

(assert (=> b!194589 m!221649))

(assert (=> bm!19632 d!56781))

(declare-fun d!56783 () Bool)

(declare-fun res!91971 () Bool)

(declare-fun e!128012 () Bool)

(assert (=> d!56783 (=> res!91971 e!128012)))

(assert (=> d!56783 (= res!91971 (and ((_ is Cons!2465) (toList!1259 lt!96691)) (= (_1!1788 (h!3106 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (=> d!56783 (= (containsKey!248 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) e!128012)))

(declare-fun b!194590 () Bool)

(declare-fun e!128013 () Bool)

(assert (=> b!194590 (= e!128012 e!128013)))

(declare-fun res!91972 () Bool)

(assert (=> b!194590 (=> (not res!91972) (not e!128013))))

(assert (=> b!194590 (= res!91972 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96691))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))) ((_ is Cons!2465) (toList!1259 lt!96691)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(declare-fun b!194591 () Bool)

(assert (=> b!194591 (= e!128013 (containsKey!248 (t!7403 (toList!1259 lt!96691)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (= (and d!56783 (not res!91971)) b!194590))

(assert (= (and b!194590 res!91972) b!194591))

(assert (=> b!194591 m!220737))

(declare-fun m!221651 () Bool)

(assert (=> b!194591 m!221651))

(assert (=> d!56573 d!56783))

(declare-fun d!56785 () Bool)

(assert (=> d!56785 (contains!1378 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))

(assert (=> d!56785 true))

(declare-fun _$16!166 () Unit!5875)

(assert (=> d!56785 (= (choose!1072 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (index!4987 lt!96699) (defaultEntry!3960 thiss!1248)) _$16!166)))

(declare-fun bs!7752 () Bool)

(assert (= bs!7752 d!56785))

(assert (=> bs!7752 m!220727))

(assert (=> bs!7752 m!220737))

(assert (=> bs!7752 m!220727))

(assert (=> bs!7752 m!220737))

(assert (=> bs!7752 m!220925))

(assert (=> d!56575 d!56785))

(assert (=> d!56575 d!56605))

(declare-fun d!56787 () Bool)

(assert (=> d!56787 (= (apply!188 lt!96830 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7753 () Bool)

(assert (= bs!7753 d!56787))

(assert (=> bs!7753 m!221541))

(assert (=> bs!7753 m!221541))

(declare-fun m!221653 () Bool)

(assert (=> bs!7753 m!221653))

(assert (=> b!194092 d!56787))

(declare-fun mapIsEmpty!7776 () Bool)

(declare-fun mapRes!7776 () Bool)

(assert (=> mapIsEmpty!7776 mapRes!7776))

(declare-fun b!194593 () Bool)

(declare-fun e!128014 () Bool)

(assert (=> b!194593 (= e!128014 tp_is_empty!4491)))

(declare-fun condMapEmpty!7776 () Bool)

(declare-fun mapDefault!7776 () ValueCell!1902)

(assert (=> mapNonEmpty!7775 (= condMapEmpty!7776 (= mapRest!7775 ((as const (Array (_ BitVec 32) ValueCell!1902)) mapDefault!7776)))))

(assert (=> mapNonEmpty!7775 (= tp!17036 (and e!128014 mapRes!7776))))

(declare-fun mapNonEmpty!7776 () Bool)

(declare-fun tp!17037 () Bool)

(declare-fun e!128015 () Bool)

(assert (=> mapNonEmpty!7776 (= mapRes!7776 (and tp!17037 e!128015))))

(declare-fun mapRest!7776 () (Array (_ BitVec 32) ValueCell!1902))

(declare-fun mapValue!7776 () ValueCell!1902)

(declare-fun mapKey!7776 () (_ BitVec 32))

(assert (=> mapNonEmpty!7776 (= mapRest!7775 (store mapRest!7776 mapKey!7776 mapValue!7776))))

(declare-fun b!194592 () Bool)

(assert (=> b!194592 (= e!128015 tp_is_empty!4491)))

(assert (= (and mapNonEmpty!7775 condMapEmpty!7776) mapIsEmpty!7776))

(assert (= (and mapNonEmpty!7775 (not condMapEmpty!7776)) mapNonEmpty!7776))

(assert (= (and mapNonEmpty!7776 ((_ is ValueCellFull!1902) mapValue!7776)) b!194592))

(assert (= (and mapNonEmpty!7775 ((_ is ValueCellFull!1902) mapDefault!7776)) b!194593))

(declare-fun m!221655 () Bool)

(assert (=> mapNonEmpty!7776 m!221655))

(declare-fun b_lambda!7529 () Bool)

(assert (= b_lambda!7523 (or (and b!193945 b_free!4719) b_lambda!7529)))

(declare-fun b_lambda!7531 () Bool)

(assert (= b_lambda!7525 (or (and b!193945 b_free!4719) b_lambda!7531)))

(declare-fun b_lambda!7533 () Bool)

(assert (= b_lambda!7519 (or (and b!193945 b_free!4719) b_lambda!7533)))

(declare-fun b_lambda!7535 () Bool)

(assert (= b_lambda!7517 (or (and b!193945 b_free!4719) b_lambda!7535)))

(declare-fun b_lambda!7537 () Bool)

(assert (= b_lambda!7521 (or (and b!193945 b_free!4719) b_lambda!7537)))

(check-sat (not b!194348) (not b!194194) (not b_lambda!7529) (not d!56751) (not b!194380) (not b!194422) (not bm!19675) (not b!194178) (not bm!19679) (not b!194521) (not d!56627) (not d!56753) (not d!56655) (not d!56723) (not d!56705) (not b!194482) (not b!194230) (not bm!19677) (not b!194412) (not b!194402) (not d!56785) (not b!194455) (not b!194414) (not d!56657) (not b!194265) (not b!194346) (not d!56691) (not b!194315) (not b!194367) (not d!56659) (not b!194450) (not d!56607) (not b!194536) (not b!194411) (not b!194500) (not d!56595) (not bm!19642) (not b_lambda!7527) (not d!56611) (not b!194567) (not d!56761) (not d!56697) (not d!56715) (not d!56771) (not bm!19671) (not d!56649) (not b!194526) (not b!194272) (not b!194247) (not b!194553) (not d!56635) (not b!194352) (not b!194226) (not b!194223) (not b!194448) (not d!56707) (not bm!19667) (not b!194579) (not d!56633) (not b!194449) (not b!194365) (not b!194534) (not d!56737) (not b!194404) (not b!194252) (not b!194540) (not d!56651) (not d!56645) (not d!56631) (not bm!19684) (not b!194543) (not b!194418) (not d!56745) (not b!194528) (not b!194350) (not b!194233) (not b!194368) (not bm!19655) (not d!56597) (not b!194357) (not d!56763) (not d!56689) (not b!194568) (not b!194234) (not b!194552) (not b!194192) (not d!56769) (not d!56615) (not b!194302) (not b!194220) (not b!194321) (not d!56669) (not b!194575) (not d!56731) (not b!194371) (not d!56717) (not d!56685) (not b!194366) (not b!194181) (not d!56681) (not b!194224) (not b!194576) (not mapNonEmpty!7776) (not b!194587) (not d!56695) (not b!194468) (not d!56777) (not b!194394) (not b!194354) (not d!56671) (not bm!19668) (not b_next!4719) (not b!194487) (not b!194248) (not b!194557) (not d!56663) (not b!194584) (not b!194527) (not d!56677) (not b!194423) (not b!194384) (not b!194377) (not d!56687) (not b!194387) (not b!194378) (not d!56693) (not b!194238) (not b!194266) (not d!56775) (not d!56643) (not b!194397) (not bm!19661) (not b!194370) (not b!194494) (not d!56701) (not d!56601) (not d!56683) (not b_lambda!7513) (not d!56787) (not b!194523) (not d!56699) (not b!194307) (not b!194499) (not b!194565) (not b!194545) (not bm!19641) (not b!194369) (not d!56733) (not d!56721) (not bm!19644) b_and!11469 (not b_lambda!7531) (not d!56767) (not b!194481) (not b!194373) (not d!56609) (not b!194483) (not d!56661) (not b!194457) (not b!194570) (not b!194263) (not d!56639) (not b!194355) (not b_lambda!7537) (not b!194398) (not b!194406) (not d!56673) (not b!194305) (not b!194362) (not d!56679) (not d!56665) (not b!194409) (not b!194381) (not d!56759) (not d!56647) tp_is_empty!4491 (not d!56619) (not bm!19678) (not b!194400) (not b!194395) (not b!194388) (not b!194376) (not b!194408) (not b!194393) (not b!194183) (not bm!19647) (not b!194549) (not b!194390) (not d!56719) (not b!194278) (not d!56653) (not d!56637) (not d!56625) (not b!194589) (not bm!19676) (not b!194396) (not b!194279) (not b!194401) (not b!194267) (not b!194179) (not bm!19682) (not d!56765) (not d!56779) (not b!194591) (not bm!19662) (not d!56641) (not b!194544) (not b!194560) (not b!194453) (not d!56729) (not b!194582) (not b!194347) (not b!194503) (not b!194524) (not b!194421) (not b_lambda!7515) (not bm!19674) (not d!56703) (not b!194241) (not b_lambda!7535) (not b!194225) (not b!194386) (not b!194269) (not bm!19643) (not b!194541) (not d!56613) (not d!56781) (not d!56621) (not b!194363) (not b!194550) (not b_lambda!7533) (not bm!19660) (not b!194573) (not b!194231) (not b!194538))
(check-sat b_and!11469 (not b_next!4719))
(get-model)

(declare-fun lt!97131 () Bool)

(declare-fun d!56789 () Bool)

(assert (=> d!56789 (= lt!97131 (select (content!154 (toList!1259 lt!97014)) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun e!128017 () Bool)

(assert (=> d!56789 (= lt!97131 e!128017)))

(declare-fun res!91973 () Bool)

(assert (=> d!56789 (=> (not res!91973) (not e!128017))))

(assert (=> d!56789 (= res!91973 ((_ is Cons!2465) (toList!1259 lt!97014)))))

(assert (=> d!56789 (= (contains!1380 (toList!1259 lt!97014) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97131)))

(declare-fun b!194594 () Bool)

(declare-fun e!128016 () Bool)

(assert (=> b!194594 (= e!128017 e!128016)))

(declare-fun res!91974 () Bool)

(assert (=> b!194594 (=> res!91974 e!128016)))

(assert (=> b!194594 (= res!91974 (= (h!3106 (toList!1259 lt!97014)) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194595 () Bool)

(assert (=> b!194595 (= e!128016 (contains!1380 (t!7403 (toList!1259 lt!97014)) (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (= (and d!56789 res!91973) b!194594))

(assert (= (and b!194594 (not res!91974)) b!194595))

(declare-fun m!221657 () Bool)

(assert (=> d!56789 m!221657))

(declare-fun m!221659 () Bool)

(assert (=> d!56789 m!221659))

(declare-fun m!221661 () Bool)

(assert (=> b!194595 m!221661))

(assert (=> b!194377 d!56789))

(declare-fun d!56791 () Bool)

(declare-fun res!91975 () Bool)

(declare-fun e!128018 () Bool)

(assert (=> d!56791 (=> res!91975 e!128018)))

(assert (=> d!56791 (= res!91975 (and ((_ is Cons!2465) (toList!1259 lt!96839)) (= (_1!1788 (h!3106 (toList!1259 lt!96839))) (_1!1788 lt!96700))))))

(assert (=> d!56791 (= (containsKey!248 (toList!1259 lt!96839) (_1!1788 lt!96700)) e!128018)))

(declare-fun b!194596 () Bool)

(declare-fun e!128019 () Bool)

(assert (=> b!194596 (= e!128018 e!128019)))

(declare-fun res!91976 () Bool)

(assert (=> b!194596 (=> (not res!91976) (not e!128019))))

(assert (=> b!194596 (= res!91976 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96839))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96839))) (_1!1788 lt!96700))) ((_ is Cons!2465) (toList!1259 lt!96839)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96839))) (_1!1788 lt!96700))))))

(declare-fun b!194597 () Bool)

(assert (=> b!194597 (= e!128019 (containsKey!248 (t!7403 (toList!1259 lt!96839)) (_1!1788 lt!96700)))))

(assert (= (and d!56791 (not res!91975)) b!194596))

(assert (= (and b!194596 res!91976) b!194597))

(declare-fun m!221663 () Bool)

(assert (=> b!194597 m!221663))

(assert (=> d!56771 d!56791))

(declare-fun d!56793 () Bool)

(assert (=> d!56793 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!97132 () Unit!5875)

(assert (=> d!56793 (= lt!97132 (choose!1075 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128020 () Bool)

(assert (=> d!56793 e!128020))

(declare-fun res!91977 () Bool)

(assert (=> d!56793 (=> (not res!91977) (not e!128020))))

(assert (=> d!56793 (= res!91977 (isStrictlySorted!352 (toList!1259 lt!96867)))))

(assert (=> d!56793 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000) lt!97132)))

(declare-fun b!194598 () Bool)

(assert (=> b!194598 (= e!128020 (containsKey!248 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!56793 res!91977) b!194598))

(assert (=> d!56793 m!221297))

(assert (=> d!56793 m!221297))

(assert (=> d!56793 m!221299))

(declare-fun m!221665 () Bool)

(assert (=> d!56793 m!221665))

(declare-fun m!221667 () Bool)

(assert (=> d!56793 m!221667))

(assert (=> b!194598 m!221293))

(assert (=> b!194378 d!56793))

(declare-fun d!56795 () Bool)

(assert (=> d!56795 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7754 () Bool)

(assert (= bs!7754 d!56795))

(assert (=> bs!7754 m!221297))

(declare-fun m!221669 () Bool)

(assert (=> bs!7754 m!221669))

(assert (=> b!194378 d!56795))

(declare-fun b!194600 () Bool)

(declare-fun e!128021 () Option!250)

(declare-fun e!128022 () Option!250)

(assert (=> b!194600 (= e!128021 e!128022)))

(declare-fun c!35129 () Bool)

(assert (=> b!194600 (= c!35129 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96867))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194599 () Bool)

(assert (=> b!194599 (= e!128021 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96867)))))))

(declare-fun b!194601 () Bool)

(assert (=> b!194601 (= e!128022 (getValueByKey!244 (t!7403 (toList!1259 lt!96867)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!56797 () Bool)

(declare-fun c!35128 () Bool)

(assert (=> d!56797 (= c!35128 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (= (_1!1788 (h!3106 (toList!1259 lt!96867))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56797 (= (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000) e!128021)))

(declare-fun b!194602 () Bool)

(assert (=> b!194602 (= e!128022 None!248)))

(assert (= (and d!56797 c!35128) b!194599))

(assert (= (and d!56797 (not c!35128)) b!194600))

(assert (= (and b!194600 c!35129) b!194601))

(assert (= (and b!194600 (not c!35129)) b!194602))

(declare-fun m!221671 () Bool)

(assert (=> b!194601 m!221671))

(assert (=> b!194378 d!56797))

(declare-fun b!194604 () Bool)

(declare-fun e!128023 () Option!250)

(declare-fun e!128024 () Option!250)

(assert (=> b!194604 (= e!128023 e!128024)))

(declare-fun c!35131 () Bool)

(assert (=> b!194604 (= c!35131 (and ((_ is Cons!2465) (toList!1259 lt!97042)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97042))) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!194603 () Bool)

(assert (=> b!194603 (= e!128023 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97042)))))))

(declare-fun b!194605 () Bool)

(assert (=> b!194605 (= e!128024 (getValueByKey!244 (t!7403 (toList!1259 lt!97042)) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!56799 () Bool)

(declare-fun c!35130 () Bool)

(assert (=> d!56799 (= c!35130 (and ((_ is Cons!2465) (toList!1259 lt!97042)) (= (_1!1788 (h!3106 (toList!1259 lt!97042))) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!56799 (= (getValueByKey!244 (toList!1259 lt!97042) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) e!128023)))

(declare-fun b!194606 () Bool)

(assert (=> b!194606 (= e!128024 None!248)))

(assert (= (and d!56799 c!35130) b!194603))

(assert (= (and d!56799 (not c!35130)) b!194604))

(assert (= (and b!194604 c!35131) b!194605))

(assert (= (and b!194604 (not c!35131)) b!194606))

(declare-fun m!221673 () Bool)

(assert (=> b!194605 m!221673))

(assert (=> b!194397 d!56799))

(declare-fun b!194608 () Bool)

(declare-fun e!128025 () Option!250)

(declare-fun e!128026 () Option!250)

(assert (=> b!194608 (= e!128025 e!128026)))

(declare-fun c!35133 () Bool)

(assert (=> b!194608 (= c!35133 (and ((_ is Cons!2465) (toList!1259 lt!97064)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97064))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194607 () Bool)

(assert (=> b!194607 (= e!128025 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97064)))))))

(declare-fun b!194609 () Bool)

(assert (=> b!194609 (= e!128026 (getValueByKey!244 (t!7403 (toList!1259 lt!97064)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun d!56801 () Bool)

(declare-fun c!35132 () Bool)

(assert (=> d!56801 (= c!35132 (and ((_ is Cons!2465) (toList!1259 lt!97064)) (= (_1!1788 (h!3106 (toList!1259 lt!97064))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56801 (= (getValueByKey!244 (toList!1259 lt!97064) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) e!128025)))

(declare-fun b!194610 () Bool)

(assert (=> b!194610 (= e!128026 None!248)))

(assert (= (and d!56801 c!35132) b!194607))

(assert (= (and d!56801 (not c!35132)) b!194608))

(assert (= (and b!194608 c!35133) b!194609))

(assert (= (and b!194608 (not c!35133)) b!194610))

(declare-fun m!221675 () Bool)

(assert (=> b!194609 m!221675))

(assert (=> b!194448 d!56801))

(declare-fun d!56803 () Bool)

(assert (=> d!56803 (= ($colon$colon!102 e!127834 (ite c!35048 (h!3106 (toList!1259 (map!2028 thiss!1248))) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700)))) (Cons!2465 (ite c!35048 (h!3106 (toList!1259 (map!2028 thiss!1248))) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))) e!127834))))

(assert (=> bm!19655 d!56803))

(declare-fun d!56805 () Bool)

(declare-fun e!128028 () Bool)

(assert (=> d!56805 e!128028))

(declare-fun res!91978 () Bool)

(assert (=> d!56805 (=> res!91978 e!128028)))

(declare-fun lt!97133 () Bool)

(assert (=> d!56805 (= res!91978 (not lt!97133))))

(declare-fun lt!97134 () Bool)

(assert (=> d!56805 (= lt!97133 lt!97134)))

(declare-fun lt!97135 () Unit!5875)

(declare-fun e!128027 () Unit!5875)

(assert (=> d!56805 (= lt!97135 e!128027)))

(declare-fun c!35134 () Bool)

(assert (=> d!56805 (= c!35134 lt!97134)))

(assert (=> d!56805 (= lt!97134 (containsKey!248 (toList!1259 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980))) lt!96979))))

(assert (=> d!56805 (= (contains!1378 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980)) lt!96979) lt!97133)))

(declare-fun b!194611 () Bool)

(declare-fun lt!97136 () Unit!5875)

(assert (=> b!194611 (= e!128027 lt!97136)))

(assert (=> b!194611 (= lt!97136 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980))) lt!96979))))

(assert (=> b!194611 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980))) lt!96979))))

(declare-fun b!194612 () Bool)

(declare-fun Unit!5899 () Unit!5875)

(assert (=> b!194612 (= e!128027 Unit!5899)))

(declare-fun b!194613 () Bool)

(assert (=> b!194613 (= e!128028 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980))) lt!96979)))))

(assert (= (and d!56805 c!35134) b!194611))

(assert (= (and d!56805 (not c!35134)) b!194612))

(assert (= (and d!56805 (not res!91978)) b!194613))

(declare-fun m!221677 () Bool)

(assert (=> d!56805 m!221677))

(declare-fun m!221679 () Bool)

(assert (=> b!194611 m!221679))

(declare-fun m!221681 () Bool)

(assert (=> b!194611 m!221681))

(assert (=> b!194611 m!221681))

(declare-fun m!221683 () Bool)

(assert (=> b!194611 m!221683))

(assert (=> b!194613 m!221681))

(assert (=> b!194613 m!221681))

(assert (=> b!194613 m!221683))

(assert (=> b!194347 d!56805))

(declare-fun d!56807 () Bool)

(declare-fun e!128029 () Bool)

(assert (=> d!56807 e!128029))

(declare-fun res!91979 () Bool)

(assert (=> d!56807 (=> (not res!91979) (not e!128029))))

(declare-fun lt!97137 () ListLongMap!2487)

(assert (=> d!56807 (= res!91979 (contains!1378 lt!97137 (_1!1788 (tuple2!3557 lt!96981 lt!96980))))))

(declare-fun lt!97140 () List!2469)

(assert (=> d!56807 (= lt!97137 (ListLongMap!2488 lt!97140))))

(declare-fun lt!97138 () Unit!5875)

(declare-fun lt!97139 () Unit!5875)

(assert (=> d!56807 (= lt!97138 lt!97139)))

(assert (=> d!56807 (= (getValueByKey!244 lt!97140 (_1!1788 (tuple2!3557 lt!96981 lt!96980))) (Some!249 (_2!1788 (tuple2!3557 lt!96981 lt!96980))))))

(assert (=> d!56807 (= lt!97139 (lemmaContainsTupThenGetReturnValue!133 lt!97140 (_1!1788 (tuple2!3557 lt!96981 lt!96980)) (_2!1788 (tuple2!3557 lt!96981 lt!96980))))))

(assert (=> d!56807 (= lt!97140 (insertStrictlySorted!135 (toList!1259 lt!96984) (_1!1788 (tuple2!3557 lt!96981 lt!96980)) (_2!1788 (tuple2!3557 lt!96981 lt!96980))))))

(assert (=> d!56807 (= (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980)) lt!97137)))

(declare-fun b!194614 () Bool)

(declare-fun res!91980 () Bool)

(assert (=> b!194614 (=> (not res!91980) (not e!128029))))

(assert (=> b!194614 (= res!91980 (= (getValueByKey!244 (toList!1259 lt!97137) (_1!1788 (tuple2!3557 lt!96981 lt!96980))) (Some!249 (_2!1788 (tuple2!3557 lt!96981 lt!96980)))))))

(declare-fun b!194615 () Bool)

(assert (=> b!194615 (= e!128029 (contains!1380 (toList!1259 lt!97137) (tuple2!3557 lt!96981 lt!96980)))))

(assert (= (and d!56807 res!91979) b!194614))

(assert (= (and b!194614 res!91980) b!194615))

(declare-fun m!221685 () Bool)

(assert (=> d!56807 m!221685))

(declare-fun m!221687 () Bool)

(assert (=> d!56807 m!221687))

(declare-fun m!221689 () Bool)

(assert (=> d!56807 m!221689))

(declare-fun m!221691 () Bool)

(assert (=> d!56807 m!221691))

(declare-fun m!221693 () Bool)

(assert (=> b!194614 m!221693))

(declare-fun m!221695 () Bool)

(assert (=> b!194615 m!221695))

(assert (=> b!194347 d!56807))

(declare-fun d!56809 () Bool)

(assert (=> d!56809 (not (contains!1378 (+!317 lt!96984 (tuple2!3557 lt!96981 lt!96980)) lt!96979))))

(declare-fun lt!97143 () Unit!5875)

(declare-fun choose!1079 (ListLongMap!2487 (_ BitVec 64) V!5635 (_ BitVec 64)) Unit!5875)

(assert (=> d!56809 (= lt!97143 (choose!1079 lt!96984 lt!96981 lt!96980 lt!96979))))

(declare-fun e!128032 () Bool)

(assert (=> d!56809 e!128032))

(declare-fun res!91983 () Bool)

(assert (=> d!56809 (=> (not res!91983) (not e!128032))))

(assert (=> d!56809 (= res!91983 (not (contains!1378 lt!96984 lt!96979)))))

(assert (=> d!56809 (= (addStillNotContains!99 lt!96984 lt!96981 lt!96980 lt!96979) lt!97143)))

(declare-fun b!194619 () Bool)

(assert (=> b!194619 (= e!128032 (not (= lt!96981 lt!96979)))))

(assert (= (and d!56809 res!91983) b!194619))

(assert (=> d!56809 m!221171))

(assert (=> d!56809 m!221171))

(assert (=> d!56809 m!221173))

(declare-fun m!221697 () Bool)

(assert (=> d!56809 m!221697))

(declare-fun m!221699 () Bool)

(assert (=> d!56809 m!221699))

(assert (=> b!194347 d!56809))

(assert (=> b!194347 d!56747))

(declare-fun d!56811 () Bool)

(declare-fun e!128033 () Bool)

(assert (=> d!56811 e!128033))

(declare-fun res!91984 () Bool)

(assert (=> d!56811 (=> (not res!91984) (not e!128033))))

(declare-fun lt!97144 () ListLongMap!2487)

(assert (=> d!56811 (= res!91984 (contains!1378 lt!97144 (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!97147 () List!2469)

(assert (=> d!56811 (= lt!97144 (ListLongMap!2488 lt!97147))))

(declare-fun lt!97145 () Unit!5875)

(declare-fun lt!97146 () Unit!5875)

(assert (=> d!56811 (= lt!97145 lt!97146)))

(assert (=> d!56811 (= (getValueByKey!244 lt!97147 (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!249 (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56811 (= lt!97146 (lemmaContainsTupThenGetReturnValue!133 lt!97147 (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56811 (= lt!97147 (insertStrictlySorted!135 (toList!1259 call!19663) (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56811 (= (+!317 call!19663 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!97144)))

(declare-fun b!194620 () Bool)

(declare-fun res!91985 () Bool)

(assert (=> b!194620 (=> (not res!91985) (not e!128033))))

(assert (=> b!194620 (= res!91985 (= (getValueByKey!244 (toList!1259 lt!97144) (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!249 (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!194621 () Bool)

(assert (=> b!194621 (= e!128033 (contains!1380 (toList!1259 lt!97144) (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!56811 res!91984) b!194620))

(assert (= (and b!194620 res!91985) b!194621))

(declare-fun m!221701 () Bool)

(assert (=> d!56811 m!221701))

(declare-fun m!221703 () Bool)

(assert (=> d!56811 m!221703))

(declare-fun m!221705 () Bool)

(assert (=> d!56811 m!221705))

(declare-fun m!221707 () Bool)

(assert (=> d!56811 m!221707))

(declare-fun m!221709 () Bool)

(assert (=> b!194620 m!221709))

(declare-fun m!221711 () Bool)

(assert (=> b!194621 m!221711))

(assert (=> b!194347 d!56811))

(declare-fun d!56813 () Bool)

(declare-fun e!128034 () Bool)

(assert (=> d!56813 e!128034))

(declare-fun res!91986 () Bool)

(assert (=> d!56813 (=> (not res!91986) (not e!128034))))

(declare-fun lt!97148 () ListLongMap!2487)

(assert (=> d!56813 (= res!91986 (contains!1378 lt!97148 (_1!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97151 () List!2469)

(assert (=> d!56813 (= lt!97148 (ListLongMap!2488 lt!97151))))

(declare-fun lt!97149 () Unit!5875)

(declare-fun lt!97150 () Unit!5875)

(assert (=> d!56813 (= lt!97149 lt!97150)))

(assert (=> d!56813 (= (getValueByKey!244 lt!97151 (_1!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))))))

(assert (=> d!56813 (= lt!97150 (lemmaContainsTupThenGetReturnValue!133 lt!97151 (_1!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))))))

(assert (=> d!56813 (= lt!97151 (insertStrictlySorted!135 (toList!1259 lt!96929) (_1!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))))))

(assert (=> d!56813 (= (+!317 lt!96929 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))) lt!97148)))

(declare-fun b!194622 () Bool)

(declare-fun res!91987 () Bool)

(assert (=> b!194622 (=> (not res!91987) (not e!128034))))

(assert (=> b!194622 (= res!91987 (= (getValueByKey!244 (toList!1259 lt!97148) (_1!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))))))))

(declare-fun b!194623 () Bool)

(assert (=> b!194623 (= e!128034 (contains!1380 (toList!1259 lt!97148) (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))))))

(assert (= (and d!56813 res!91986) b!194622))

(assert (= (and b!194622 res!91987) b!194623))

(declare-fun m!221713 () Bool)

(assert (=> d!56813 m!221713))

(declare-fun m!221715 () Bool)

(assert (=> d!56813 m!221715))

(declare-fun m!221717 () Bool)

(assert (=> d!56813 m!221717))

(declare-fun m!221719 () Bool)

(assert (=> d!56813 m!221719))

(declare-fun m!221721 () Bool)

(assert (=> b!194622 m!221721))

(declare-fun m!221723 () Bool)

(assert (=> b!194623 m!221723))

(assert (=> b!194230 d!56813))

(declare-fun d!56815 () Bool)

(assert (=> d!56815 (= (apply!188 lt!96939 lt!96925) (get!2239 (getValueByKey!244 (toList!1259 lt!96939) lt!96925)))))

(declare-fun bs!7755 () Bool)

(assert (= bs!7755 d!56815))

(declare-fun m!221725 () Bool)

(assert (=> bs!7755 m!221725))

(assert (=> bs!7755 m!221725))

(declare-fun m!221727 () Bool)

(assert (=> bs!7755 m!221727))

(assert (=> b!194230 d!56815))

(declare-fun d!56817 () Bool)

(assert (=> d!56817 (= (apply!188 (+!317 lt!96939 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))) lt!96925) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96939 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))) lt!96925)))))

(declare-fun bs!7756 () Bool)

(assert (= bs!7756 d!56817))

(declare-fun m!221729 () Bool)

(assert (=> bs!7756 m!221729))

(assert (=> bs!7756 m!221729))

(declare-fun m!221731 () Bool)

(assert (=> bs!7756 m!221731))

(assert (=> b!194230 d!56817))

(declare-fun b!194624 () Bool)

(declare-fun e!128038 () ListLongMap!2487)

(declare-fun e!128039 () ListLongMap!2487)

(assert (=> b!194624 (= e!128038 e!128039)))

(declare-fun c!35138 () Bool)

(assert (=> b!194624 (= c!35138 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194626 () Bool)

(declare-fun e!128041 () Bool)

(declare-fun lt!97158 () ListLongMap!2487)

(assert (=> b!194626 (= e!128041 (isEmpty!493 lt!97158))))

(declare-fun b!194627 () Bool)

(declare-fun call!19690 () ListLongMap!2487)

(assert (=> b!194627 (= e!128039 call!19690)))

(declare-fun b!194628 () Bool)

(declare-fun e!128040 () Bool)

(declare-fun e!128036 () Bool)

(assert (=> b!194628 (= e!128040 e!128036)))

(assert (=> b!194628 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!91988 () Bool)

(assert (=> b!194628 (= res!91988 (contains!1378 lt!97158 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194628 (=> (not res!91988) (not e!128036))))

(declare-fun b!194629 () Bool)

(declare-fun e!128037 () Bool)

(assert (=> b!194629 (= e!128037 e!128040)))

(declare-fun c!35137 () Bool)

(declare-fun e!128035 () Bool)

(assert (=> b!194629 (= c!35137 e!128035)))

(declare-fun res!91989 () Bool)

(assert (=> b!194629 (=> (not res!91989) (not e!128035))))

(assert (=> b!194629 (= res!91989 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194630 () Bool)

(assert (=> b!194630 (= e!128035 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194630 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!194631 () Bool)

(assert (=> b!194631 (= e!128038 (ListLongMap!2488 Nil!2466))))

(declare-fun b!194632 () Bool)

(assert (=> b!194632 (= e!128041 (= lt!97158 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248))))))

(declare-fun bm!19687 () Bool)

(assert (=> bm!19687 (= call!19690 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194633 () Bool)

(assert (=> b!194633 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!194633 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))))))))

(assert (=> b!194633 (= e!128036 (= (apply!188 lt!97158 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194625 () Bool)

(declare-fun lt!97155 () Unit!5875)

(declare-fun lt!97156 () Unit!5875)

(assert (=> b!194625 (= lt!97155 lt!97156)))

(declare-fun lt!97153 () V!5635)

(declare-fun lt!97154 () (_ BitVec 64))

(declare-fun lt!97157 () ListLongMap!2487)

(declare-fun lt!97152 () (_ BitVec 64))

(assert (=> b!194625 (not (contains!1378 (+!317 lt!97157 (tuple2!3557 lt!97154 lt!97153)) lt!97152))))

(assert (=> b!194625 (= lt!97156 (addStillNotContains!99 lt!97157 lt!97154 lt!97153 lt!97152))))

(assert (=> b!194625 (= lt!97152 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!194625 (= lt!97153 (get!2238 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!194625 (= lt!97154 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!194625 (= lt!97157 call!19690)))

(assert (=> b!194625 (= e!128039 (+!317 call!19690 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!56819 () Bool)

(assert (=> d!56819 e!128037))

(declare-fun res!91991 () Bool)

(assert (=> d!56819 (=> (not res!91991) (not e!128037))))

(assert (=> d!56819 (= res!91991 (not (contains!1378 lt!97158 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56819 (= lt!97158 e!128038)))

(declare-fun c!35135 () Bool)

(assert (=> d!56819 (= c!35135 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56819 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56819 (= (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248))) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)) lt!97158)))

(declare-fun b!194634 () Bool)

(assert (=> b!194634 (= e!128040 e!128041)))

(declare-fun c!35136 () Bool)

(assert (=> b!194634 (= c!35136 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194635 () Bool)

(declare-fun res!91990 () Bool)

(assert (=> b!194635 (=> (not res!91990) (not e!128037))))

(assert (=> b!194635 (= res!91990 (not (contains!1378 lt!97158 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56819 c!35135) b!194631))

(assert (= (and d!56819 (not c!35135)) b!194624))

(assert (= (and b!194624 c!35138) b!194625))

(assert (= (and b!194624 (not c!35138)) b!194627))

(assert (= (or b!194625 b!194627) bm!19687))

(assert (= (and d!56819 res!91991) b!194635))

(assert (= (and b!194635 res!91990) b!194629))

(assert (= (and b!194629 res!91989) b!194630))

(assert (= (and b!194629 c!35137) b!194628))

(assert (= (and b!194629 (not c!35137)) b!194634))

(assert (= (and b!194628 res!91988) b!194633))

(assert (= (and b!194634 c!35136) b!194632))

(assert (= (and b!194634 (not c!35136)) b!194626))

(declare-fun b_lambda!7539 () Bool)

(assert (=> (not b_lambda!7539) (not b!194633)))

(assert (=> b!194633 t!7406))

(declare-fun b_and!11471 () Bool)

(assert (= b_and!11469 (and (=> t!7406 result!4947) b_and!11471)))

(declare-fun b_lambda!7541 () Bool)

(assert (=> (not b_lambda!7541) (not b!194625)))

(assert (=> b!194625 t!7406))

(declare-fun b_and!11473 () Bool)

(assert (= b_and!11471 (and (=> t!7406 result!4947) b_and!11473)))

(declare-fun m!221733 () Bool)

(assert (=> d!56819 m!221733))

(assert (=> d!56819 m!220833))

(declare-fun m!221735 () Bool)

(assert (=> bm!19687 m!221735))

(declare-fun m!221737 () Bool)

(assert (=> b!194625 m!221737))

(declare-fun m!221739 () Bool)

(assert (=> b!194625 m!221739))

(assert (=> b!194625 m!221065))

(assert (=> b!194625 m!220859))

(assert (=> b!194625 m!221067))

(assert (=> b!194625 m!221739))

(declare-fun m!221741 () Bool)

(assert (=> b!194625 m!221741))

(assert (=> b!194625 m!220855))

(declare-fun m!221743 () Bool)

(assert (=> b!194625 m!221743))

(assert (=> b!194625 m!220859))

(assert (=> b!194625 m!221065))

(assert (=> b!194630 m!220855))

(assert (=> b!194630 m!220855))

(assert (=> b!194630 m!220857))

(declare-fun m!221745 () Bool)

(assert (=> b!194626 m!221745))

(assert (=> b!194628 m!220855))

(assert (=> b!194628 m!220855))

(declare-fun m!221747 () Bool)

(assert (=> b!194628 m!221747))

(declare-fun m!221749 () Bool)

(assert (=> b!194635 m!221749))

(assert (=> b!194632 m!221735))

(assert (=> b!194633 m!221065))

(assert (=> b!194633 m!220859))

(assert (=> b!194633 m!221067))

(assert (=> b!194633 m!220855))

(declare-fun m!221751 () Bool)

(assert (=> b!194633 m!221751))

(assert (=> b!194633 m!220855))

(assert (=> b!194633 m!220859))

(assert (=> b!194633 m!221065))

(assert (=> b!194624 m!220855))

(assert (=> b!194624 m!220855))

(assert (=> b!194624 m!220857))

(assert (=> b!194230 d!56819))

(declare-fun d!56821 () Bool)

(assert (=> d!56821 (contains!1378 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))) lt!96923)))

(declare-fun lt!97159 () Unit!5875)

(assert (=> d!56821 (= lt!97159 (choose!1078 lt!96927 lt!96943 (zeroValue!3801 thiss!1248) lt!96923))))

(assert (=> d!56821 (contains!1378 lt!96927 lt!96923)))

(assert (=> d!56821 (= (addStillContains!164 lt!96927 lt!96943 (zeroValue!3801 thiss!1248) lt!96923) lt!97159)))

(declare-fun bs!7757 () Bool)

(assert (= bs!7757 d!56821))

(assert (=> bs!7757 m!221073))

(assert (=> bs!7757 m!221073))

(assert (=> bs!7757 m!221075))

(declare-fun m!221753 () Bool)

(assert (=> bs!7757 m!221753))

(declare-fun m!221755 () Bool)

(assert (=> bs!7757 m!221755))

(assert (=> b!194230 d!56821))

(declare-fun d!56823 () Bool)

(declare-fun e!128042 () Bool)

(assert (=> d!56823 e!128042))

(declare-fun res!91992 () Bool)

(assert (=> d!56823 (=> (not res!91992) (not e!128042))))

(declare-fun lt!97160 () ListLongMap!2487)

(assert (=> d!56823 (= res!91992 (contains!1378 lt!97160 (_1!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97163 () List!2469)

(assert (=> d!56823 (= lt!97160 (ListLongMap!2488 lt!97163))))

(declare-fun lt!97161 () Unit!5875)

(declare-fun lt!97162 () Unit!5875)

(assert (=> d!56823 (= lt!97161 lt!97162)))

(assert (=> d!56823 (= (getValueByKey!244 lt!97163 (_1!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56823 (= lt!97162 (lemmaContainsTupThenGetReturnValue!133 lt!97163 (_1!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56823 (= lt!97163 (insertStrictlySorted!135 (toList!1259 lt!96927) (_1!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56823 (= (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))) lt!97160)))

(declare-fun b!194636 () Bool)

(declare-fun res!91993 () Bool)

(assert (=> b!194636 (=> (not res!91993) (not e!128042))))

(assert (=> b!194636 (= res!91993 (= (getValueByKey!244 (toList!1259 lt!97160) (_1!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))))))))

(declare-fun b!194637 () Bool)

(assert (=> b!194637 (= e!128042 (contains!1380 (toList!1259 lt!97160) (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56823 res!91992) b!194636))

(assert (= (and b!194636 res!91993) b!194637))

(declare-fun m!221757 () Bool)

(assert (=> d!56823 m!221757))

(declare-fun m!221759 () Bool)

(assert (=> d!56823 m!221759))

(declare-fun m!221761 () Bool)

(assert (=> d!56823 m!221761))

(declare-fun m!221763 () Bool)

(assert (=> d!56823 m!221763))

(declare-fun m!221765 () Bool)

(assert (=> b!194636 m!221765))

(declare-fun m!221767 () Bool)

(assert (=> b!194637 m!221767))

(assert (=> b!194230 d!56823))

(declare-fun d!56825 () Bool)

(declare-fun e!128043 () Bool)

(assert (=> d!56825 e!128043))

(declare-fun res!91994 () Bool)

(assert (=> d!56825 (=> (not res!91994) (not e!128043))))

(declare-fun lt!97164 () ListLongMap!2487)

(assert (=> d!56825 (= res!91994 (contains!1378 lt!97164 (_1!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97167 () List!2469)

(assert (=> d!56825 (= lt!97164 (ListLongMap!2488 lt!97167))))

(declare-fun lt!97165 () Unit!5875)

(declare-fun lt!97166 () Unit!5875)

(assert (=> d!56825 (= lt!97165 lt!97166)))

(assert (=> d!56825 (= (getValueByKey!244 lt!97167 (_1!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56825 (= lt!97166 (lemmaContainsTupThenGetReturnValue!133 lt!97167 (_1!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56825 (= lt!97167 (insertStrictlySorted!135 (toList!1259 lt!96939) (_1!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56825 (= (+!317 lt!96939 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))) lt!97164)))

(declare-fun b!194638 () Bool)

(declare-fun res!91995 () Bool)

(assert (=> b!194638 (=> (not res!91995) (not e!128043))))

(assert (=> b!194638 (= res!91995 (= (getValueByKey!244 (toList!1259 lt!97164) (_1!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))))))))

(declare-fun b!194639 () Bool)

(assert (=> b!194639 (= e!128043 (contains!1380 (toList!1259 lt!97164) (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56825 res!91994) b!194638))

(assert (= (and b!194638 res!91995) b!194639))

(declare-fun m!221769 () Bool)

(assert (=> d!56825 m!221769))

(declare-fun m!221771 () Bool)

(assert (=> d!56825 m!221771))

(declare-fun m!221773 () Bool)

(assert (=> d!56825 m!221773))

(declare-fun m!221775 () Bool)

(assert (=> d!56825 m!221775))

(declare-fun m!221777 () Bool)

(assert (=> b!194638 m!221777))

(declare-fun m!221779 () Bool)

(assert (=> b!194639 m!221779))

(assert (=> b!194230 d!56825))

(declare-fun d!56827 () Bool)

(assert (=> d!56827 (= (apply!188 lt!96929 lt!96941) (get!2239 (getValueByKey!244 (toList!1259 lt!96929) lt!96941)))))

(declare-fun bs!7758 () Bool)

(assert (= bs!7758 d!56827))

(declare-fun m!221781 () Bool)

(assert (=> bs!7758 m!221781))

(assert (=> bs!7758 m!221781))

(declare-fun m!221783 () Bool)

(assert (=> bs!7758 m!221783))

(assert (=> b!194230 d!56827))

(declare-fun d!56829 () Bool)

(assert (=> d!56829 (= (apply!188 (+!317 lt!96944 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))) lt!96926) (apply!188 lt!96944 lt!96926))))

(declare-fun lt!97168 () Unit!5875)

(assert (=> d!56829 (= lt!97168 (choose!1077 lt!96944 lt!96935 (minValue!3801 thiss!1248) lt!96926))))

(declare-fun e!128044 () Bool)

(assert (=> d!56829 e!128044))

(declare-fun res!91996 () Bool)

(assert (=> d!56829 (=> (not res!91996) (not e!128044))))

(assert (=> d!56829 (= res!91996 (contains!1378 lt!96944 lt!96926))))

(assert (=> d!56829 (= (addApplyDifferent!164 lt!96944 lt!96935 (minValue!3801 thiss!1248) lt!96926) lt!97168)))

(declare-fun b!194640 () Bool)

(assert (=> b!194640 (= e!128044 (not (= lt!96926 lt!96935)))))

(assert (= (and d!56829 res!91996) b!194640))

(assert (=> d!56829 m!221081))

(assert (=> d!56829 m!221099))

(assert (=> d!56829 m!221081))

(declare-fun m!221785 () Bool)

(assert (=> d!56829 m!221785))

(declare-fun m!221787 () Bool)

(assert (=> d!56829 m!221787))

(assert (=> d!56829 m!221093))

(assert (=> b!194230 d!56829))

(declare-fun d!56831 () Bool)

(declare-fun e!128046 () Bool)

(assert (=> d!56831 e!128046))

(declare-fun res!91997 () Bool)

(assert (=> d!56831 (=> res!91997 e!128046)))

(declare-fun lt!97169 () Bool)

(assert (=> d!56831 (= res!91997 (not lt!97169))))

(declare-fun lt!97170 () Bool)

(assert (=> d!56831 (= lt!97169 lt!97170)))

(declare-fun lt!97171 () Unit!5875)

(declare-fun e!128045 () Unit!5875)

(assert (=> d!56831 (= lt!97171 e!128045)))

(declare-fun c!35139 () Bool)

(assert (=> d!56831 (= c!35139 lt!97170)))

(assert (=> d!56831 (= lt!97170 (containsKey!248 (toList!1259 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))) lt!96923))))

(assert (=> d!56831 (= (contains!1378 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248))) lt!96923) lt!97169)))

(declare-fun b!194641 () Bool)

(declare-fun lt!97172 () Unit!5875)

(assert (=> b!194641 (= e!128045 lt!97172)))

(assert (=> b!194641 (= lt!97172 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))) lt!96923))))

(assert (=> b!194641 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))) lt!96923))))

(declare-fun b!194642 () Bool)

(declare-fun Unit!5900 () Unit!5875)

(assert (=> b!194642 (= e!128045 Unit!5900)))

(declare-fun b!194643 () Bool)

(assert (=> b!194643 (= e!128046 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96927 (tuple2!3557 lt!96943 (zeroValue!3801 thiss!1248)))) lt!96923)))))

(assert (= (and d!56831 c!35139) b!194641))

(assert (= (and d!56831 (not c!35139)) b!194642))

(assert (= (and d!56831 (not res!91997)) b!194643))

(declare-fun m!221789 () Bool)

(assert (=> d!56831 m!221789))

(declare-fun m!221791 () Bool)

(assert (=> b!194641 m!221791))

(declare-fun m!221793 () Bool)

(assert (=> b!194641 m!221793))

(assert (=> b!194641 m!221793))

(declare-fun m!221795 () Bool)

(assert (=> b!194641 m!221795))

(assert (=> b!194643 m!221793))

(assert (=> b!194643 m!221793))

(assert (=> b!194643 m!221795))

(assert (=> b!194230 d!56831))

(declare-fun d!56833 () Bool)

(declare-fun e!128047 () Bool)

(assert (=> d!56833 e!128047))

(declare-fun res!91998 () Bool)

(assert (=> d!56833 (=> (not res!91998) (not e!128047))))

(declare-fun lt!97173 () ListLongMap!2487)

(assert (=> d!56833 (= res!91998 (contains!1378 lt!97173 (_1!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97176 () List!2469)

(assert (=> d!56833 (= lt!97173 (ListLongMap!2488 lt!97176))))

(declare-fun lt!97174 () Unit!5875)

(declare-fun lt!97175 () Unit!5875)

(assert (=> d!56833 (= lt!97174 lt!97175)))

(assert (=> d!56833 (= (getValueByKey!244 lt!97176 (_1!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))))))

(assert (=> d!56833 (= lt!97175 (lemmaContainsTupThenGetReturnValue!133 lt!97176 (_1!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))))))

(assert (=> d!56833 (= lt!97176 (insertStrictlySorted!135 (toList!1259 lt!96944) (_1!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))))))

(assert (=> d!56833 (= (+!317 lt!96944 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))) lt!97173)))

(declare-fun b!194644 () Bool)

(declare-fun res!91999 () Bool)

(assert (=> b!194644 (=> (not res!91999) (not e!128047))))

(assert (=> b!194644 (= res!91999 (= (getValueByKey!244 (toList!1259 lt!97173) (_1!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))))))))

(declare-fun b!194645 () Bool)

(assert (=> b!194645 (= e!128047 (contains!1380 (toList!1259 lt!97173) (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))))))

(assert (= (and d!56833 res!91998) b!194644))

(assert (= (and b!194644 res!91999) b!194645))

(declare-fun m!221797 () Bool)

(assert (=> d!56833 m!221797))

(declare-fun m!221799 () Bool)

(assert (=> d!56833 m!221799))

(declare-fun m!221801 () Bool)

(assert (=> d!56833 m!221801))

(declare-fun m!221803 () Bool)

(assert (=> d!56833 m!221803))

(declare-fun m!221805 () Bool)

(assert (=> b!194644 m!221805))

(declare-fun m!221807 () Bool)

(assert (=> b!194645 m!221807))

(assert (=> b!194230 d!56833))

(declare-fun d!56835 () Bool)

(assert (=> d!56835 (= (apply!188 lt!96944 lt!96926) (get!2239 (getValueByKey!244 (toList!1259 lt!96944) lt!96926)))))

(declare-fun bs!7759 () Bool)

(assert (= bs!7759 d!56835))

(declare-fun m!221809 () Bool)

(assert (=> bs!7759 m!221809))

(assert (=> bs!7759 m!221809))

(declare-fun m!221811 () Bool)

(assert (=> bs!7759 m!221811))

(assert (=> b!194230 d!56835))

(declare-fun d!56837 () Bool)

(assert (=> d!56837 (= (apply!188 (+!317 lt!96929 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))) lt!96941) (apply!188 lt!96929 lt!96941))))

(declare-fun lt!97177 () Unit!5875)

(assert (=> d!56837 (= lt!97177 (choose!1077 lt!96929 lt!96937 (minValue!3801 thiss!1248) lt!96941))))

(declare-fun e!128048 () Bool)

(assert (=> d!56837 e!128048))

(declare-fun res!92000 () Bool)

(assert (=> d!56837 (=> (not res!92000) (not e!128048))))

(assert (=> d!56837 (= res!92000 (contains!1378 lt!96929 lt!96941))))

(assert (=> d!56837 (= (addApplyDifferent!164 lt!96929 lt!96937 (minValue!3801 thiss!1248) lt!96941) lt!97177)))

(declare-fun b!194646 () Bool)

(assert (=> b!194646 (= e!128048 (not (= lt!96941 lt!96937)))))

(assert (= (and d!56837 res!92000) b!194646))

(assert (=> d!56837 m!221077))

(assert (=> d!56837 m!221079))

(assert (=> d!56837 m!221077))

(declare-fun m!221813 () Bool)

(assert (=> d!56837 m!221813))

(declare-fun m!221815 () Bool)

(assert (=> d!56837 m!221815))

(assert (=> d!56837 m!221095))

(assert (=> b!194230 d!56837))

(declare-fun d!56839 () Bool)

(assert (=> d!56839 (= (apply!188 (+!317 lt!96939 (tuple2!3557 lt!96930 (zeroValue!3801 thiss!1248))) lt!96925) (apply!188 lt!96939 lt!96925))))

(declare-fun lt!97178 () Unit!5875)

(assert (=> d!56839 (= lt!97178 (choose!1077 lt!96939 lt!96930 (zeroValue!3801 thiss!1248) lt!96925))))

(declare-fun e!128049 () Bool)

(assert (=> d!56839 e!128049))

(declare-fun res!92001 () Bool)

(assert (=> d!56839 (=> (not res!92001) (not e!128049))))

(assert (=> d!56839 (= res!92001 (contains!1378 lt!96939 lt!96925))))

(assert (=> d!56839 (= (addApplyDifferent!164 lt!96939 lt!96930 (zeroValue!3801 thiss!1248) lt!96925) lt!97178)))

(declare-fun b!194647 () Bool)

(assert (=> b!194647 (= e!128049 (not (= lt!96925 lt!96930)))))

(assert (= (and d!56839 res!92001) b!194647))

(assert (=> d!56839 m!221085))

(assert (=> d!56839 m!221087))

(assert (=> d!56839 m!221085))

(declare-fun m!221817 () Bool)

(assert (=> d!56839 m!221817))

(declare-fun m!221819 () Bool)

(assert (=> d!56839 m!221819))

(assert (=> d!56839 m!221091))

(assert (=> b!194230 d!56839))

(declare-fun d!56841 () Bool)

(assert (=> d!56841 (= (apply!188 (+!317 lt!96929 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248))) lt!96941) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96929 (tuple2!3557 lt!96937 (minValue!3801 thiss!1248)))) lt!96941)))))

(declare-fun bs!7760 () Bool)

(assert (= bs!7760 d!56841))

(declare-fun m!221821 () Bool)

(assert (=> bs!7760 m!221821))

(assert (=> bs!7760 m!221821))

(declare-fun m!221823 () Bool)

(assert (=> bs!7760 m!221823))

(assert (=> b!194230 d!56841))

(declare-fun d!56843 () Bool)

(assert (=> d!56843 (= (apply!188 (+!317 lt!96944 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248))) lt!96926) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96944 (tuple2!3557 lt!96935 (minValue!3801 thiss!1248)))) lt!96926)))))

(declare-fun bs!7761 () Bool)

(assert (= bs!7761 d!56843))

(declare-fun m!221825 () Bool)

(assert (=> bs!7761 m!221825))

(assert (=> bs!7761 m!221825))

(declare-fun m!221827 () Bool)

(assert (=> bs!7761 m!221827))

(assert (=> b!194230 d!56843))

(declare-fun d!56845 () Bool)

(assert (=> d!56845 (= (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96698) key!828)) (not ((_ is Some!249) (getValueByKey!244 (toList!1259 lt!96698) key!828))))))

(assert (=> d!56723 d!56845))

(declare-fun d!56847 () Bool)

(assert (=> d!56847 (= (size!4202 thiss!1248) (bvadd (_size!1405 thiss!1248) (bvsdiv (bvadd (extraKeys!3697 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!194179 d!56847))

(declare-fun d!56849 () Bool)

(declare-fun e!128051 () Bool)

(assert (=> d!56849 e!128051))

(declare-fun res!92002 () Bool)

(assert (=> d!56849 (=> res!92002 e!128051)))

(declare-fun lt!97179 () Bool)

(assert (=> d!56849 (= res!92002 (not lt!97179))))

(declare-fun lt!97180 () Bool)

(assert (=> d!56849 (= lt!97179 lt!97180)))

(declare-fun lt!97181 () Unit!5875)

(declare-fun e!128050 () Unit!5875)

(assert (=> d!56849 (= lt!97181 e!128050)))

(declare-fun c!35140 () Bool)

(assert (=> d!56849 (= c!35140 lt!97180)))

(assert (=> d!56849 (= lt!97180 (containsKey!248 (toList!1259 lt!97053) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56849 (= (contains!1378 lt!97053 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97179)))

(declare-fun b!194648 () Bool)

(declare-fun lt!97182 () Unit!5875)

(assert (=> b!194648 (= e!128050 lt!97182)))

(assert (=> b!194648 (= lt!97182 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97053) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194648 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97053) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194649 () Bool)

(declare-fun Unit!5901 () Unit!5875)

(assert (=> b!194649 (= e!128050 Unit!5901)))

(declare-fun b!194650 () Bool)

(assert (=> b!194650 (= e!128051 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97053) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56849 c!35140) b!194648))

(assert (= (and d!56849 (not c!35140)) b!194649))

(assert (= (and d!56849 (not res!92002)) b!194650))

(assert (=> d!56849 m!220855))

(declare-fun m!221829 () Bool)

(assert (=> d!56849 m!221829))

(assert (=> b!194648 m!220855))

(declare-fun m!221831 () Bool)

(assert (=> b!194648 m!221831))

(assert (=> b!194648 m!220855))

(declare-fun m!221833 () Bool)

(assert (=> b!194648 m!221833))

(assert (=> b!194648 m!221833))

(declare-fun m!221835 () Bool)

(assert (=> b!194648 m!221835))

(assert (=> b!194650 m!220855))

(assert (=> b!194650 m!221833))

(assert (=> b!194650 m!221833))

(assert (=> b!194650 m!221835))

(assert (=> b!194404 d!56849))

(declare-fun d!56851 () Bool)

(declare-fun res!92003 () Bool)

(declare-fun e!128052 () Bool)

(assert (=> d!56851 (=> res!92003 e!128052)))

(assert (=> d!56851 (= res!92003 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (= (_1!1788 (h!3106 (toList!1259 lt!96867))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56851 (= (containsKey!248 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000) e!128052)))

(declare-fun b!194651 () Bool)

(declare-fun e!128053 () Bool)

(assert (=> b!194651 (= e!128052 e!128053)))

(declare-fun res!92004 () Bool)

(assert (=> b!194651 (=> (not res!92004) (not e!128053))))

(assert (=> b!194651 (= res!92004 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96867))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96867))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2465) (toList!1259 lt!96867)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96867))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!194652 () Bool)

(assert (=> b!194652 (= e!128053 (containsKey!248 (t!7403 (toList!1259 lt!96867)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!56851 (not res!92003)) b!194651))

(assert (= (and b!194651 res!92004) b!194652))

(declare-fun m!221837 () Bool)

(assert (=> b!194652 m!221837))

(assert (=> d!56781 d!56851))

(declare-fun b!194654 () Bool)

(declare-fun e!128054 () Option!250)

(declare-fun e!128055 () Option!250)

(assert (=> b!194654 (= e!128054 e!128055)))

(declare-fun c!35142 () Bool)

(assert (=> b!194654 (= c!35142 (and ((_ is Cons!2465) (toList!1259 lt!96994)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96994))) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194653 () Bool)

(assert (=> b!194653 (= e!128054 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96994)))))))

(declare-fun b!194655 () Bool)

(assert (=> b!194655 (= e!128055 (getValueByKey!244 (t!7403 (toList!1259 lt!96994)) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun d!56853 () Bool)

(declare-fun c!35141 () Bool)

(assert (=> d!56853 (= c!35141 (and ((_ is Cons!2465) (toList!1259 lt!96994)) (= (_1!1788 (h!3106 (toList!1259 lt!96994))) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(assert (=> d!56853 (= (getValueByKey!244 (toList!1259 lt!96994) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) e!128054)))

(declare-fun b!194656 () Bool)

(assert (=> b!194656 (= e!128055 None!248)))

(assert (= (and d!56853 c!35141) b!194653))

(assert (= (and d!56853 (not c!35141)) b!194654))

(assert (= (and b!194654 c!35142) b!194655))

(assert (= (and b!194654 (not c!35142)) b!194656))

(declare-fun m!221839 () Bool)

(assert (=> b!194655 m!221839))

(assert (=> b!194365 d!56853))

(declare-fun d!56855 () Bool)

(assert (=> d!56855 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700)))))

(declare-fun lt!97183 () Unit!5875)

(assert (=> d!56855 (= lt!97183 (choose!1075 (toList!1259 lt!96839) (_1!1788 lt!96700)))))

(declare-fun e!128056 () Bool)

(assert (=> d!56855 e!128056))

(declare-fun res!92005 () Bool)

(assert (=> d!56855 (=> (not res!92005) (not e!128056))))

(assert (=> d!56855 (= res!92005 (isStrictlySorted!352 (toList!1259 lt!96839)))))

(assert (=> d!56855 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96839) (_1!1788 lt!96700)) lt!97183)))

(declare-fun b!194657 () Bool)

(assert (=> b!194657 (= e!128056 (containsKey!248 (toList!1259 lt!96839) (_1!1788 lt!96700)))))

(assert (= (and d!56855 res!92005) b!194657))

(assert (=> d!56855 m!220911))

(assert (=> d!56855 m!220911))

(assert (=> d!56855 m!221621))

(declare-fun m!221841 () Bool)

(assert (=> d!56855 m!221841))

(declare-fun m!221843 () Bool)

(assert (=> d!56855 m!221843))

(assert (=> b!194657 m!221617))

(assert (=> b!194568 d!56855))

(declare-fun d!56857 () Bool)

(assert (=> d!56857 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700))) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96839) (_1!1788 lt!96700)))))))

(declare-fun bs!7762 () Bool)

(assert (= bs!7762 d!56857))

(assert (=> bs!7762 m!220911))

(declare-fun m!221845 () Bool)

(assert (=> bs!7762 m!221845))

(assert (=> b!194568 d!56857))

(assert (=> b!194568 d!56741))

(declare-fun d!56859 () Bool)

(assert (=> d!56859 (= (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!96835)) (v!4252 (getValueByKey!244 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!96835)))))

(assert (=> d!56689 d!56859))

(declare-fun b!194659 () Bool)

(declare-fun e!128057 () Option!250)

(declare-fun e!128058 () Option!250)

(assert (=> b!194659 (= e!128057 e!128058)))

(declare-fun c!35144 () Bool)

(assert (=> b!194659 (= c!35144 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))) lt!96835))))))

(declare-fun b!194658 () Bool)

(assert (=> b!194658 (= e!128057 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))))

(declare-fun b!194660 () Bool)

(assert (=> b!194660 (= e!128058 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))) lt!96835))))

(declare-fun c!35143 () Bool)

(declare-fun d!56861 () Bool)

(assert (=> d!56861 (= c!35143 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))) lt!96835)))))

(assert (=> d!56861 (= (getValueByKey!244 (toList!1259 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!96835) e!128057)))

(declare-fun b!194661 () Bool)

(assert (=> b!194661 (= e!128058 None!248)))

(assert (= (and d!56861 c!35143) b!194658))

(assert (= (and d!56861 (not c!35143)) b!194659))

(assert (= (and b!194659 c!35144) b!194660))

(assert (= (and b!194659 (not c!35144)) b!194661))

(declare-fun m!221847 () Bool)

(assert (=> b!194660 m!221847))

(assert (=> d!56689 d!56861))

(declare-fun d!56863 () Bool)

(assert (=> d!56863 (arrayContainsKey!0 (_keys!5954 lt!96693) lt!97054 #b00000000000000000000000000000000)))

(declare-fun lt!97186 () Unit!5875)

(declare-fun choose!13 (array!8232 (_ BitVec 64) (_ BitVec 32)) Unit!5875)

(assert (=> d!56863 (= lt!97186 (choose!13 (_keys!5954 lt!96693) lt!97054 #b00000000000000000000000000000000))))

(assert (=> d!56863 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!56863 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5954 lt!96693) lt!97054 #b00000000000000000000000000000000) lt!97186)))

(declare-fun bs!7763 () Bool)

(assert (= bs!7763 d!56863))

(assert (=> bs!7763 m!221431))

(declare-fun m!221849 () Bool)

(assert (=> bs!7763 m!221849))

(assert (=> b!194414 d!56863))

(declare-fun d!56865 () Bool)

(declare-fun res!92006 () Bool)

(declare-fun e!128059 () Bool)

(assert (=> d!56865 (=> res!92006 e!128059)))

(assert (=> d!56865 (= res!92006 (= (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) lt!97054))))

(assert (=> d!56865 (= (arrayContainsKey!0 (_keys!5954 lt!96693) lt!97054 #b00000000000000000000000000000000) e!128059)))

(declare-fun b!194662 () Bool)

(declare-fun e!128060 () Bool)

(assert (=> b!194662 (= e!128059 e!128060)))

(declare-fun res!92007 () Bool)

(assert (=> b!194662 (=> (not res!92007) (not e!128060))))

(assert (=> b!194662 (= res!92007 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!194663 () Bool)

(assert (=> b!194663 (= e!128060 (arrayContainsKey!0 (_keys!5954 lt!96693) lt!97054 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!56865 (not res!92006)) b!194662))

(assert (= (and b!194662 res!92007) b!194663))

(assert (=> d!56865 m!221425))

(declare-fun m!221851 () Bool)

(assert (=> b!194663 m!221851))

(assert (=> b!194414 d!56865))

(declare-fun b!194664 () Bool)

(declare-fun e!128062 () SeekEntryResult!704)

(declare-fun e!128061 () SeekEntryResult!704)

(assert (=> b!194664 (= e!128062 e!128061)))

(declare-fun lt!97188 () (_ BitVec 64))

(declare-fun lt!97187 () SeekEntryResult!704)

(assert (=> b!194664 (= lt!97188 (select (arr!3874 (_keys!5954 lt!96693)) (index!4988 lt!97187)))))

(declare-fun c!35145 () Bool)

(assert (=> b!194664 (= c!35145 (= lt!97188 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194665 () Bool)

(declare-fun e!128063 () SeekEntryResult!704)

(assert (=> b!194665 (= e!128063 (seekKeyOrZeroReturnVacant!0 (x!20700 lt!97187) (index!4988 lt!97187) (index!4988 lt!97187) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) (_keys!5954 lt!96693) (mask!9223 lt!96693)))))

(declare-fun b!194666 () Bool)

(declare-fun c!35146 () Bool)

(assert (=> b!194666 (= c!35146 (= lt!97188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194666 (= e!128061 e!128063)))

(declare-fun b!194667 () Bool)

(assert (=> b!194667 (= e!128062 Undefined!704)))

(declare-fun d!56867 () Bool)

(declare-fun lt!97189 () SeekEntryResult!704)

(assert (=> d!56867 (and (or ((_ is Undefined!704) lt!97189) (not ((_ is Found!704) lt!97189)) (and (bvsge (index!4987 lt!97189) #b00000000000000000000000000000000) (bvslt (index!4987 lt!97189) (size!4198 (_keys!5954 lt!96693))))) (or ((_ is Undefined!704) lt!97189) ((_ is Found!704) lt!97189) (not ((_ is MissingZero!704) lt!97189)) (and (bvsge (index!4986 lt!97189) #b00000000000000000000000000000000) (bvslt (index!4986 lt!97189) (size!4198 (_keys!5954 lt!96693))))) (or ((_ is Undefined!704) lt!97189) ((_ is Found!704) lt!97189) ((_ is MissingZero!704) lt!97189) (not ((_ is MissingVacant!704) lt!97189)) (and (bvsge (index!4989 lt!97189) #b00000000000000000000000000000000) (bvslt (index!4989 lt!97189) (size!4198 (_keys!5954 lt!96693))))) (or ((_ is Undefined!704) lt!97189) (ite ((_ is Found!704) lt!97189) (= (select (arr!3874 (_keys!5954 lt!96693)) (index!4987 lt!97189)) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!704) lt!97189) (= (select (arr!3874 (_keys!5954 lt!96693)) (index!4986 lt!97189)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!704) lt!97189) (= (select (arr!3874 (_keys!5954 lt!96693)) (index!4989 lt!97189)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56867 (= lt!97189 e!128062)))

(declare-fun c!35147 () Bool)

(assert (=> d!56867 (= c!35147 (and ((_ is Intermediate!704) lt!97187) (undefined!1516 lt!97187)))))

(assert (=> d!56867 (= lt!97187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) (mask!9223 lt!96693)) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) (_keys!5954 lt!96693) (mask!9223 lt!96693)))))

(assert (=> d!56867 (validMask!0 (mask!9223 lt!96693))))

(assert (=> d!56867 (= (seekEntryOrOpen!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) (_keys!5954 lt!96693) (mask!9223 lt!96693)) lt!97189)))

(declare-fun b!194668 () Bool)

(assert (=> b!194668 (= e!128061 (Found!704 (index!4988 lt!97187)))))

(declare-fun b!194669 () Bool)

(assert (=> b!194669 (= e!128063 (MissingZero!704 (index!4988 lt!97187)))))

(assert (= (and d!56867 c!35147) b!194667))

(assert (= (and d!56867 (not c!35147)) b!194664))

(assert (= (and b!194664 c!35145) b!194668))

(assert (= (and b!194664 (not c!35145)) b!194666))

(assert (= (and b!194666 c!35146) b!194669))

(assert (= (and b!194666 (not c!35146)) b!194665))

(declare-fun m!221853 () Bool)

(assert (=> b!194664 m!221853))

(assert (=> b!194665 m!221425))

(declare-fun m!221855 () Bool)

(assert (=> b!194665 m!221855))

(declare-fun m!221857 () Bool)

(assert (=> d!56867 m!221857))

(declare-fun m!221859 () Bool)

(assert (=> d!56867 m!221859))

(assert (=> d!56867 m!221425))

(declare-fun m!221861 () Bool)

(assert (=> d!56867 m!221861))

(assert (=> d!56867 m!221107))

(declare-fun m!221863 () Bool)

(assert (=> d!56867 m!221863))

(declare-fun m!221865 () Bool)

(assert (=> d!56867 m!221865))

(assert (=> d!56867 m!221425))

(assert (=> d!56867 m!221859))

(assert (=> b!194414 d!56867))

(declare-fun d!56869 () Bool)

(assert (=> d!56869 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun bs!7764 () Bool)

(assert (= bs!7764 d!56869))

(assert (=> bs!7764 m!221521))

(declare-fun m!221867 () Bool)

(assert (=> bs!7764 m!221867))

(assert (=> b!194567 d!56869))

(declare-fun b!194671 () Bool)

(declare-fun e!128064 () Option!250)

(declare-fun e!128065 () Option!250)

(assert (=> b!194671 (= e!128064 e!128065)))

(declare-fun c!35149 () Bool)

(assert (=> b!194671 (= c!35149 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96830))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun b!194670 () Bool)

(assert (=> b!194670 (= e!128064 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96830)))))))

(declare-fun b!194672 () Bool)

(assert (=> b!194672 (= e!128065 (getValueByKey!244 (t!7403 (toList!1259 lt!96830)) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!56871 () Bool)

(declare-fun c!35148 () Bool)

(assert (=> d!56871 (= c!35148 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (= (_1!1788 (h!3106 (toList!1259 lt!96830))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!56871 (= (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) e!128064)))

(declare-fun b!194673 () Bool)

(assert (=> b!194673 (= e!128065 None!248)))

(assert (= (and d!56871 c!35148) b!194670))

(assert (= (and d!56871 (not c!35148)) b!194671))

(assert (= (and b!194671 c!35149) b!194672))

(assert (= (and b!194671 (not c!35149)) b!194673))

(assert (=> b!194672 m!220855))

(declare-fun m!221869 () Bool)

(assert (=> b!194672 m!221869))

(assert (=> b!194567 d!56871))

(assert (=> d!56613 d!56615))

(assert (=> d!56613 d!56617))

(declare-fun d!56873 () Bool)

(assert (=> d!56873 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96697) key!828))))

(assert (=> d!56873 true))

(declare-fun _$12!449 () Unit!5875)

(assert (=> d!56873 (= (choose!1075 (toList!1259 lt!96697) key!828) _$12!449)))

(declare-fun bs!7765 () Bool)

(assert (= bs!7765 d!56873))

(assert (=> bs!7765 m!220811))

(assert (=> bs!7765 m!220811))

(assert (=> bs!7765 m!220813))

(assert (=> d!56613 d!56873))

(declare-fun d!56875 () Bool)

(declare-fun res!92012 () Bool)

(declare-fun e!128070 () Bool)

(assert (=> d!56875 (=> res!92012 e!128070)))

(assert (=> d!56875 (= res!92012 (or ((_ is Nil!2466) (toList!1259 lt!96697)) ((_ is Nil!2466) (t!7403 (toList!1259 lt!96697)))))))

(assert (=> d!56875 (= (isStrictlySorted!352 (toList!1259 lt!96697)) e!128070)))

(declare-fun b!194678 () Bool)

(declare-fun e!128071 () Bool)

(assert (=> b!194678 (= e!128070 e!128071)))

(declare-fun res!92013 () Bool)

(assert (=> b!194678 (=> (not res!92013) (not e!128071))))

(assert (=> b!194678 (= res!92013 (bvslt (_1!1788 (h!3106 (toList!1259 lt!96697))) (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96697))))))))

(declare-fun b!194679 () Bool)

(assert (=> b!194679 (= e!128071 (isStrictlySorted!352 (t!7403 (toList!1259 lt!96697))))))

(assert (= (and d!56875 (not res!92012)) b!194678))

(assert (= (and b!194678 res!92013) b!194679))

(declare-fun m!221871 () Bool)

(assert (=> b!194679 m!221871))

(assert (=> d!56613 d!56875))

(declare-fun b!194681 () Bool)

(declare-fun e!128072 () Option!250)

(declare-fun e!128073 () Option!250)

(assert (=> b!194681 (= e!128072 e!128073)))

(declare-fun c!35151 () Bool)

(assert (=> b!194681 (= c!35151 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96691))) (not (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96691)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))))

(declare-fun b!194680 () Bool)

(assert (=> b!194680 (= e!128072 (Some!249 (_2!1788 (h!3106 (t!7403 (toList!1259 lt!96691))))))))

(declare-fun b!194682 () Bool)

(assert (=> b!194682 (= e!128073 (getValueByKey!244 (t!7403 (t!7403 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun c!35150 () Bool)

(declare-fun d!56877 () Bool)

(assert (=> d!56877 (= c!35150 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96691))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96691)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (=> d!56877 (= (getValueByKey!244 (t!7403 (toList!1259 lt!96691)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) e!128072)))

(declare-fun b!194683 () Bool)

(assert (=> b!194683 (= e!128073 None!248)))

(assert (= (and d!56877 c!35150) b!194680))

(assert (= (and d!56877 (not c!35150)) b!194681))

(assert (= (and b!194681 c!35151) b!194682))

(assert (= (and b!194681 (not c!35151)) b!194683))

(assert (=> b!194682 m!220737))

(declare-fun m!221873 () Bool)

(assert (=> b!194682 m!221873))

(assert (=> b!194384 d!56877))

(declare-fun b!194684 () Bool)

(declare-fun e!128074 () (_ BitVec 32))

(declare-fun call!19691 () (_ BitVec 32))

(assert (=> b!194684 (= e!128074 (bvadd #b00000000000000000000000000000001 call!19691))))

(declare-fun b!194685 () Bool)

(declare-fun e!128075 () (_ BitVec 32))

(assert (=> b!194685 (= e!128075 #b00000000000000000000000000000000)))

(declare-fun d!56879 () Bool)

(declare-fun lt!97190 () (_ BitVec 32))

(assert (=> d!56879 (and (bvsge lt!97190 #b00000000000000000000000000000000) (bvsle lt!97190 (bvsub (size!4198 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!56879 (= lt!97190 e!128075)))

(declare-fun c!35152 () Bool)

(assert (=> d!56879 (= c!35152 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!56879 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!4198 (_keys!5954 lt!96693)) (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!56879 (= (arrayCountValidKeys!0 (_keys!5954 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))) lt!97190)))

(declare-fun bm!19688 () Bool)

(assert (=> bm!19688 (= call!19691 (arrayCountValidKeys!0 (_keys!5954 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!194686 () Bool)

(assert (=> b!194686 (= e!128075 e!128074)))

(declare-fun c!35153 () Bool)

(assert (=> b!194686 (= c!35153 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!194687 () Bool)

(assert (=> b!194687 (= e!128074 call!19691)))

(assert (= (and d!56879 c!35152) b!194685))

(assert (= (and d!56879 (not c!35152)) b!194686))

(assert (= (and b!194686 c!35153) b!194684))

(assert (= (and b!194686 (not c!35153)) b!194687))

(assert (= (or b!194684 b!194687) bm!19688))

(declare-fun m!221875 () Bool)

(assert (=> bm!19688 m!221875))

(declare-fun m!221877 () Bool)

(assert (=> b!194686 m!221877))

(assert (=> b!194686 m!221877))

(declare-fun m!221879 () Bool)

(assert (=> b!194686 m!221879))

(assert (=> bm!19675 d!56879))

(declare-fun d!56881 () Bool)

(declare-fun e!128077 () Bool)

(assert (=> d!56881 e!128077))

(declare-fun res!92014 () Bool)

(assert (=> d!56881 (=> res!92014 e!128077)))

(declare-fun lt!97191 () Bool)

(assert (=> d!56881 (= res!92014 (not lt!97191))))

(declare-fun lt!97192 () Bool)

(assert (=> d!56881 (= lt!97191 lt!97192)))

(declare-fun lt!97193 () Unit!5875)

(declare-fun e!128076 () Unit!5875)

(assert (=> d!56881 (= lt!97193 e!128076)))

(declare-fun c!35154 () Bool)

(assert (=> d!56881 (= c!35154 lt!97192)))

(assert (=> d!56881 (= lt!97192 (containsKey!248 (toList!1259 lt!97042) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56881 (= (contains!1378 lt!97042 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!97191)))

(declare-fun b!194688 () Bool)

(declare-fun lt!97194 () Unit!5875)

(assert (=> b!194688 (= e!128076 lt!97194)))

(assert (=> b!194688 (= lt!97194 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97042) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(assert (=> b!194688 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97042) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194689 () Bool)

(declare-fun Unit!5902 () Unit!5875)

(assert (=> b!194689 (= e!128076 Unit!5902)))

(declare-fun b!194690 () Bool)

(assert (=> b!194690 (= e!128077 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97042) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!56881 c!35154) b!194688))

(assert (= (and d!56881 (not c!35154)) b!194689))

(assert (= (and d!56881 (not res!92014)) b!194690))

(declare-fun m!221881 () Bool)

(assert (=> d!56881 m!221881))

(declare-fun m!221883 () Bool)

(assert (=> b!194688 m!221883))

(assert (=> b!194688 m!221389))

(assert (=> b!194688 m!221389))

(declare-fun m!221885 () Bool)

(assert (=> b!194688 m!221885))

(assert (=> b!194690 m!221389))

(assert (=> b!194690 m!221389))

(assert (=> b!194690 m!221885))

(assert (=> d!56699 d!56881))

(declare-fun b!194692 () Bool)

(declare-fun e!128078 () Option!250)

(declare-fun e!128079 () Option!250)

(assert (=> b!194692 (= e!128078 e!128079)))

(declare-fun c!35156 () Bool)

(assert (=> b!194692 (= c!35156 (and ((_ is Cons!2465) lt!97045) (not (= (_1!1788 (h!3106 lt!97045)) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!194691 () Bool)

(assert (=> b!194691 (= e!128078 (Some!249 (_2!1788 (h!3106 lt!97045))))))

(declare-fun b!194693 () Bool)

(assert (=> b!194693 (= e!128079 (getValueByKey!244 (t!7403 lt!97045) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!56883 () Bool)

(declare-fun c!35155 () Bool)

(assert (=> d!56883 (= c!35155 (and ((_ is Cons!2465) lt!97045) (= (_1!1788 (h!3106 lt!97045)) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!56883 (= (getValueByKey!244 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) e!128078)))

(declare-fun b!194694 () Bool)

(assert (=> b!194694 (= e!128079 None!248)))

(assert (= (and d!56883 c!35155) b!194691))

(assert (= (and d!56883 (not c!35155)) b!194692))

(assert (= (and b!194692 c!35156) b!194693))

(assert (= (and b!194692 (not c!35156)) b!194694))

(declare-fun m!221887 () Bool)

(assert (=> b!194693 m!221887))

(assert (=> d!56699 d!56883))

(declare-fun d!56885 () Bool)

(assert (=> d!56885 (= (getValueByKey!244 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97195 () Unit!5875)

(assert (=> d!56885 (= lt!97195 (choose!1076 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun e!128080 () Bool)

(assert (=> d!56885 e!128080))

(declare-fun res!92015 () Bool)

(assert (=> d!56885 (=> (not res!92015) (not e!128080))))

(assert (=> d!56885 (= res!92015 (isStrictlySorted!352 lt!97045))))

(assert (=> d!56885 (= (lemmaContainsTupThenGetReturnValue!133 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!97195)))

(declare-fun b!194695 () Bool)

(declare-fun res!92016 () Bool)

(assert (=> b!194695 (=> (not res!92016) (not e!128080))))

(assert (=> b!194695 (= res!92016 (containsKey!248 lt!97045 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194696 () Bool)

(assert (=> b!194696 (= e!128080 (contains!1380 lt!97045 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!56885 res!92015) b!194695))

(assert (= (and b!194695 res!92016) b!194696))

(assert (=> d!56885 m!221383))

(declare-fun m!221889 () Bool)

(assert (=> d!56885 m!221889))

(declare-fun m!221891 () Bool)

(assert (=> d!56885 m!221891))

(declare-fun m!221893 () Bool)

(assert (=> b!194695 m!221893))

(declare-fun m!221895 () Bool)

(assert (=> b!194696 m!221895))

(assert (=> d!56699 d!56885))

(declare-fun e!128081 () List!2469)

(declare-fun bm!19689 () Bool)

(declare-fun call!19693 () List!2469)

(declare-fun c!35158 () Bool)

(assert (=> bm!19689 (= call!19693 ($colon$colon!102 e!128081 (ite c!35158 (h!3106 (toList!1259 lt!96833)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))))

(declare-fun c!35157 () Bool)

(assert (=> bm!19689 (= c!35157 c!35158)))

(declare-fun b!194697 () Bool)

(declare-fun e!128085 () List!2469)

(declare-fun call!19692 () List!2469)

(assert (=> b!194697 (= e!128085 call!19692)))

(declare-fun b!194698 () Bool)

(declare-fun c!35159 () Bool)

(assert (=> b!194698 (= c!35159 (and ((_ is Cons!2465) (toList!1259 lt!96833)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96833))) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(declare-fun e!128083 () List!2469)

(assert (=> b!194698 (= e!128085 e!128083)))

(declare-fun e!128084 () Bool)

(declare-fun lt!97196 () List!2469)

(declare-fun b!194699 () Bool)

(assert (=> b!194699 (= e!128084 (contains!1380 lt!97196 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(declare-fun bm!19690 () Bool)

(declare-fun call!19694 () List!2469)

(assert (=> bm!19690 (= call!19694 call!19692)))

(declare-fun b!194700 () Bool)

(declare-fun e!128082 () List!2469)

(assert (=> b!194700 (= e!128082 e!128085)))

(declare-fun c!35160 () Bool)

(assert (=> b!194700 (= c!35160 (and ((_ is Cons!2465) (toList!1259 lt!96833)) (= (_1!1788 (h!3106 (toList!1259 lt!96833))) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(declare-fun d!56887 () Bool)

(assert (=> d!56887 e!128084))

(declare-fun res!92017 () Bool)

(assert (=> d!56887 (=> (not res!92017) (not e!128084))))

(assert (=> d!56887 (= res!92017 (isStrictlySorted!352 lt!97196))))

(assert (=> d!56887 (= lt!97196 e!128082)))

(assert (=> d!56887 (= c!35158 (and ((_ is Cons!2465) (toList!1259 lt!96833)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96833))) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!56887 (isStrictlySorted!352 (toList!1259 lt!96833))))

(assert (=> d!56887 (= (insertStrictlySorted!135 (toList!1259 lt!96833) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!97196)))

(declare-fun bm!19691 () Bool)

(assert (=> bm!19691 (= call!19692 call!19693)))

(declare-fun b!194701 () Bool)

(assert (=> b!194701 (= e!128083 call!19694)))

(declare-fun b!194702 () Bool)

(assert (=> b!194702 (= e!128081 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96833)) (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194703 () Bool)

(assert (=> b!194703 (= e!128083 call!19694)))

(declare-fun b!194704 () Bool)

(declare-fun res!92018 () Bool)

(assert (=> b!194704 (=> (not res!92018) (not e!128084))))

(assert (=> b!194704 (= res!92018 (containsKey!248 lt!97196 (_1!1788 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194705 () Bool)

(assert (=> b!194705 (= e!128082 call!19693)))

(declare-fun b!194706 () Bool)

(assert (=> b!194706 (= e!128081 (ite c!35160 (t!7403 (toList!1259 lt!96833)) (ite c!35159 (Cons!2465 (h!3106 (toList!1259 lt!96833)) (t!7403 (toList!1259 lt!96833))) Nil!2466)))))

(assert (= (and d!56887 c!35158) b!194705))

(assert (= (and d!56887 (not c!35158)) b!194700))

(assert (= (and b!194700 c!35160) b!194697))

(assert (= (and b!194700 (not c!35160)) b!194698))

(assert (= (and b!194698 c!35159) b!194703))

(assert (= (and b!194698 (not c!35159)) b!194701))

(assert (= (or b!194703 b!194701) bm!19690))

(assert (= (or b!194697 bm!19690) bm!19691))

(assert (= (or b!194705 bm!19691) bm!19689))

(assert (= (and bm!19689 c!35157) b!194702))

(assert (= (and bm!19689 (not c!35157)) b!194706))

(assert (= (and d!56887 res!92017) b!194704))

(assert (= (and b!194704 res!92018) b!194699))

(declare-fun m!221897 () Bool)

(assert (=> bm!19689 m!221897))

(declare-fun m!221899 () Bool)

(assert (=> b!194704 m!221899))

(declare-fun m!221901 () Bool)

(assert (=> b!194699 m!221901))

(declare-fun m!221903 () Bool)

(assert (=> b!194702 m!221903))

(declare-fun m!221905 () Bool)

(assert (=> d!56887 m!221905))

(declare-fun m!221907 () Bool)

(assert (=> d!56887 m!221907))

(assert (=> d!56699 d!56887))

(declare-fun d!56889 () Bool)

(assert (=> d!56889 (= (apply!188 lt!96985 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2239 (getValueByKey!244 (toList!1259 lt!96985) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7766 () Bool)

(assert (= bs!7766 d!56889))

(assert (=> bs!7766 m!220855))

(declare-fun m!221909 () Bool)

(assert (=> bs!7766 m!221909))

(assert (=> bs!7766 m!221909))

(declare-fun m!221911 () Bool)

(assert (=> bs!7766 m!221911))

(assert (=> b!194355 d!56889))

(assert (=> b!194355 d!56747))

(declare-fun d!56891 () Bool)

(declare-fun e!128087 () Bool)

(assert (=> d!56891 e!128087))

(declare-fun res!92019 () Bool)

(assert (=> d!56891 (=> res!92019 e!128087)))

(declare-fun lt!97197 () Bool)

(assert (=> d!56891 (= res!92019 (not lt!97197))))

(declare-fun lt!97198 () Bool)

(assert (=> d!56891 (= lt!97197 lt!97198)))

(declare-fun lt!97199 () Unit!5875)

(declare-fun e!128086 () Unit!5875)

(assert (=> d!56891 (= lt!97199 e!128086)))

(declare-fun c!35161 () Bool)

(assert (=> d!56891 (= c!35161 lt!97198)))

(assert (=> d!56891 (= lt!97198 (containsKey!248 (toList!1259 lt!97064) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!56891 (= (contains!1378 lt!97064 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97197)))

(declare-fun b!194707 () Bool)

(declare-fun lt!97200 () Unit!5875)

(assert (=> b!194707 (= e!128086 lt!97200)))

(assert (=> b!194707 (= lt!97200 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97064) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> b!194707 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97064) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194708 () Bool)

(declare-fun Unit!5903 () Unit!5875)

(assert (=> b!194708 (= e!128086 Unit!5903)))

(declare-fun b!194709 () Bool)

(assert (=> b!194709 (= e!128087 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97064) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (= (and d!56891 c!35161) b!194707))

(assert (= (and d!56891 (not c!35161)) b!194708))

(assert (= (and d!56891 (not res!92019)) b!194709))

(declare-fun m!221913 () Bool)

(assert (=> d!56891 m!221913))

(declare-fun m!221915 () Bool)

(assert (=> b!194707 m!221915))

(assert (=> b!194707 m!221467))

(assert (=> b!194707 m!221467))

(declare-fun m!221917 () Bool)

(assert (=> b!194707 m!221917))

(assert (=> b!194709 m!221467))

(assert (=> b!194709 m!221467))

(assert (=> b!194709 m!221917))

(assert (=> d!56719 d!56891))

(declare-fun b!194711 () Bool)

(declare-fun e!128088 () Option!250)

(declare-fun e!128089 () Option!250)

(assert (=> b!194711 (= e!128088 e!128089)))

(declare-fun c!35163 () Bool)

(assert (=> b!194711 (= c!35163 (and ((_ is Cons!2465) lt!97067) (not (= (_1!1788 (h!3106 lt!97067)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194710 () Bool)

(assert (=> b!194710 (= e!128088 (Some!249 (_2!1788 (h!3106 lt!97067))))))

(declare-fun b!194712 () Bool)

(assert (=> b!194712 (= e!128089 (getValueByKey!244 (t!7403 lt!97067) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun d!56893 () Bool)

(declare-fun c!35162 () Bool)

(assert (=> d!56893 (= c!35162 (and ((_ is Cons!2465) lt!97067) (= (_1!1788 (h!3106 lt!97067)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56893 (= (getValueByKey!244 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) e!128088)))

(declare-fun b!194713 () Bool)

(assert (=> b!194713 (= e!128089 None!248)))

(assert (= (and d!56893 c!35162) b!194710))

(assert (= (and d!56893 (not c!35162)) b!194711))

(assert (= (and b!194711 c!35163) b!194712))

(assert (= (and b!194711 (not c!35163)) b!194713))

(declare-fun m!221919 () Bool)

(assert (=> b!194712 m!221919))

(assert (=> d!56719 d!56893))

(declare-fun d!56895 () Bool)

(assert (=> d!56895 (= (getValueByKey!244 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97201 () Unit!5875)

(assert (=> d!56895 (= lt!97201 (choose!1076 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun e!128090 () Bool)

(assert (=> d!56895 e!128090))

(declare-fun res!92020 () Bool)

(assert (=> d!56895 (=> (not res!92020) (not e!128090))))

(assert (=> d!56895 (= res!92020 (isStrictlySorted!352 lt!97067))))

(assert (=> d!56895 (= (lemmaContainsTupThenGetReturnValue!133 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97201)))

(declare-fun b!194714 () Bool)

(declare-fun res!92021 () Bool)

(assert (=> b!194714 (=> (not res!92021) (not e!128090))))

(assert (=> b!194714 (= res!92021 (containsKey!248 lt!97067 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194715 () Bool)

(assert (=> b!194715 (= e!128090 (contains!1380 lt!97067 (tuple2!3557 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (= (and d!56895 res!92020) b!194714))

(assert (= (and b!194714 res!92021) b!194715))

(assert (=> d!56895 m!221461))

(declare-fun m!221921 () Bool)

(assert (=> d!56895 m!221921))

(declare-fun m!221923 () Bool)

(assert (=> d!56895 m!221923))

(declare-fun m!221925 () Bool)

(assert (=> b!194714 m!221925))

(declare-fun m!221927 () Bool)

(assert (=> b!194715 m!221927))

(assert (=> d!56719 d!56895))

(declare-fun bm!19692 () Bool)

(declare-fun c!35165 () Bool)

(declare-fun call!19696 () List!2469)

(declare-fun e!128091 () List!2469)

(assert (=> bm!19692 (= call!19696 ($colon$colon!102 e!128091 (ite c!35165 (h!3106 (toList!1259 call!19632)) (tuple2!3557 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun c!35164 () Bool)

(assert (=> bm!19692 (= c!35164 c!35165)))

(declare-fun b!194716 () Bool)

(declare-fun e!128095 () List!2469)

(declare-fun call!19695 () List!2469)

(assert (=> b!194716 (= e!128095 call!19695)))

(declare-fun b!194717 () Bool)

(declare-fun c!35166 () Bool)

(assert (=> b!194717 (= c!35166 (and ((_ is Cons!2465) (toList!1259 call!19632)) (bvsgt (_1!1788 (h!3106 (toList!1259 call!19632))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun e!128093 () List!2469)

(assert (=> b!194717 (= e!128095 e!128093)))

(declare-fun b!194718 () Bool)

(declare-fun e!128094 () Bool)

(declare-fun lt!97202 () List!2469)

(assert (=> b!194718 (= e!128094 (contains!1380 lt!97202 (tuple2!3557 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun bm!19693 () Bool)

(declare-fun call!19697 () List!2469)

(assert (=> bm!19693 (= call!19697 call!19695)))

(declare-fun b!194719 () Bool)

(declare-fun e!128092 () List!2469)

(assert (=> b!194719 (= e!128092 e!128095)))

(declare-fun c!35167 () Bool)

(assert (=> b!194719 (= c!35167 (and ((_ is Cons!2465) (toList!1259 call!19632)) (= (_1!1788 (h!3106 (toList!1259 call!19632))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun d!56897 () Bool)

(assert (=> d!56897 e!128094))

(declare-fun res!92022 () Bool)

(assert (=> d!56897 (=> (not res!92022) (not e!128094))))

(assert (=> d!56897 (= res!92022 (isStrictlySorted!352 lt!97202))))

(assert (=> d!56897 (= lt!97202 e!128092)))

(assert (=> d!56897 (= c!35165 (and ((_ is Cons!2465) (toList!1259 call!19632)) (bvslt (_1!1788 (h!3106 (toList!1259 call!19632))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56897 (isStrictlySorted!352 (toList!1259 call!19632))))

(assert (=> d!56897 (= (insertStrictlySorted!135 (toList!1259 call!19632) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97202)))

(declare-fun bm!19694 () Bool)

(assert (=> bm!19694 (= call!19695 call!19696)))

(declare-fun b!194720 () Bool)

(assert (=> b!194720 (= e!128093 call!19697)))

(declare-fun b!194721 () Bool)

(assert (=> b!194721 (= e!128091 (insertStrictlySorted!135 (t!7403 (toList!1259 call!19632)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194722 () Bool)

(assert (=> b!194722 (= e!128093 call!19697)))

(declare-fun b!194723 () Bool)

(declare-fun res!92023 () Bool)

(assert (=> b!194723 (=> (not res!92023) (not e!128094))))

(assert (=> b!194723 (= res!92023 (containsKey!248 lt!97202 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!194724 () Bool)

(assert (=> b!194724 (= e!128092 call!19696)))

(declare-fun b!194725 () Bool)

(assert (=> b!194725 (= e!128091 (ite c!35167 (t!7403 (toList!1259 call!19632)) (ite c!35166 (Cons!2465 (h!3106 (toList!1259 call!19632)) (t!7403 (toList!1259 call!19632))) Nil!2466)))))

(assert (= (and d!56897 c!35165) b!194724))

(assert (= (and d!56897 (not c!35165)) b!194719))

(assert (= (and b!194719 c!35167) b!194716))

(assert (= (and b!194719 (not c!35167)) b!194717))

(assert (= (and b!194717 c!35166) b!194722))

(assert (= (and b!194717 (not c!35166)) b!194720))

(assert (= (or b!194722 b!194720) bm!19693))

(assert (= (or b!194716 bm!19693) bm!19694))

(assert (= (or b!194724 bm!19694) bm!19692))

(assert (= (and bm!19692 c!35164) b!194721))

(assert (= (and bm!19692 (not c!35164)) b!194725))

(assert (= (and d!56897 res!92022) b!194723))

(assert (= (and b!194723 res!92023) b!194718))

(declare-fun m!221929 () Bool)

(assert (=> bm!19692 m!221929))

(declare-fun m!221931 () Bool)

(assert (=> b!194723 m!221931))

(declare-fun m!221933 () Bool)

(assert (=> b!194718 m!221933))

(declare-fun m!221935 () Bool)

(assert (=> b!194721 m!221935))

(declare-fun m!221937 () Bool)

(assert (=> d!56897 m!221937))

(declare-fun m!221939 () Bool)

(assert (=> d!56897 m!221939))

(assert (=> d!56719 d!56897))

(assert (=> d!56663 d!56659))

(assert (=> d!56663 d!56657))

(declare-fun d!56899 () Bool)

(assert (=> d!56899 (contains!1378 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) lt!96854)))

(assert (=> d!56899 true))

(declare-fun _$35!415 () Unit!5875)

(assert (=> d!56899 (= (choose!1078 lt!96858 lt!96874 (zeroValue!3801 thiss!1248) lt!96854) _$35!415)))

(declare-fun bs!7767 () Bool)

(assert (= bs!7767 d!56899))

(assert (=> bs!7767 m!220955))

(assert (=> bs!7767 m!220955))

(assert (=> bs!7767 m!220957))

(assert (=> d!56663 d!56899))

(declare-fun d!56901 () Bool)

(declare-fun e!128097 () Bool)

(assert (=> d!56901 e!128097))

(declare-fun res!92024 () Bool)

(assert (=> d!56901 (=> res!92024 e!128097)))

(declare-fun lt!97203 () Bool)

(assert (=> d!56901 (= res!92024 (not lt!97203))))

(declare-fun lt!97204 () Bool)

(assert (=> d!56901 (= lt!97203 lt!97204)))

(declare-fun lt!97205 () Unit!5875)

(declare-fun e!128096 () Unit!5875)

(assert (=> d!56901 (= lt!97205 e!128096)))

(declare-fun c!35168 () Bool)

(assert (=> d!56901 (= c!35168 lt!97204)))

(assert (=> d!56901 (= lt!97204 (containsKey!248 (toList!1259 lt!96858) lt!96854))))

(assert (=> d!56901 (= (contains!1378 lt!96858 lt!96854) lt!97203)))

(declare-fun b!194727 () Bool)

(declare-fun lt!97206 () Unit!5875)

(assert (=> b!194727 (= e!128096 lt!97206)))

(assert (=> b!194727 (= lt!97206 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96858) lt!96854))))

(assert (=> b!194727 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96858) lt!96854))))

(declare-fun b!194728 () Bool)

(declare-fun Unit!5904 () Unit!5875)

(assert (=> b!194728 (= e!128096 Unit!5904)))

(declare-fun b!194729 () Bool)

(assert (=> b!194729 (= e!128097 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96858) lt!96854)))))

(assert (= (and d!56901 c!35168) b!194727))

(assert (= (and d!56901 (not c!35168)) b!194728))

(assert (= (and d!56901 (not res!92024)) b!194729))

(declare-fun m!221941 () Bool)

(assert (=> d!56901 m!221941))

(declare-fun m!221943 () Bool)

(assert (=> b!194727 m!221943))

(declare-fun m!221945 () Bool)

(assert (=> b!194727 m!221945))

(assert (=> b!194727 m!221945))

(declare-fun m!221947 () Bool)

(assert (=> b!194727 m!221947))

(assert (=> b!194729 m!221945))

(assert (=> b!194729 m!221945))

(assert (=> b!194729 m!221947))

(assert (=> d!56663 d!56901))

(declare-fun d!56903 () Bool)

(assert (=> d!56903 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!97207 () Unit!5875)

(assert (=> d!56903 (= lt!97207 (choose!1075 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128098 () Bool)

(assert (=> d!56903 e!128098))

(declare-fun res!92025 () Bool)

(assert (=> d!56903 (=> (not res!92025) (not e!128098))))

(assert (=> d!56903 (= res!92025 (isStrictlySorted!352 (toList!1259 lt!96867)))))

(assert (=> d!56903 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000) lt!97207)))

(declare-fun b!194730 () Bool)

(assert (=> b!194730 (= e!128098 (containsKey!248 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!56903 res!92025) b!194730))

(assert (=> d!56903 m!221479))

(assert (=> d!56903 m!221479))

(assert (=> d!56903 m!221649))

(declare-fun m!221949 () Bool)

(assert (=> d!56903 m!221949))

(assert (=> d!56903 m!221667))

(assert (=> b!194730 m!221645))

(assert (=> b!194587 d!56903))

(declare-fun d!56905 () Bool)

(assert (=> d!56905 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7768 () Bool)

(assert (= bs!7768 d!56905))

(assert (=> bs!7768 m!221479))

(declare-fun m!221951 () Bool)

(assert (=> bs!7768 m!221951))

(assert (=> b!194587 d!56905))

(declare-fun b!194732 () Bool)

(declare-fun e!128099 () Option!250)

(declare-fun e!128100 () Option!250)

(assert (=> b!194732 (= e!128099 e!128100)))

(declare-fun c!35170 () Bool)

(assert (=> b!194732 (= c!35170 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96867))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194731 () Bool)

(assert (=> b!194731 (= e!128099 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96867)))))))

(declare-fun b!194733 () Bool)

(assert (=> b!194733 (= e!128100 (getValueByKey!244 (t!7403 (toList!1259 lt!96867)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!56907 () Bool)

(declare-fun c!35169 () Bool)

(assert (=> d!56907 (= c!35169 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (= (_1!1788 (h!3106 (toList!1259 lt!96867))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56907 (= (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000) e!128099)))

(declare-fun b!194734 () Bool)

(assert (=> b!194734 (= e!128100 None!248)))

(assert (= (and d!56907 c!35169) b!194731))

(assert (= (and d!56907 (not c!35169)) b!194732))

(assert (= (and b!194732 c!35170) b!194733))

(assert (= (and b!194732 (not c!35170)) b!194734))

(declare-fun m!221953 () Bool)

(assert (=> b!194733 m!221953))

(assert (=> b!194587 d!56907))

(assert (=> b!194482 d!56593))

(declare-fun d!56909 () Bool)

(assert (=> d!56909 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96875) lt!96857)) (v!4252 (getValueByKey!244 (toList!1259 lt!96875) lt!96857)))))

(assert (=> d!56639 d!56909))

(declare-fun b!194736 () Bool)

(declare-fun e!128101 () Option!250)

(declare-fun e!128102 () Option!250)

(assert (=> b!194736 (= e!128101 e!128102)))

(declare-fun c!35172 () Bool)

(assert (=> b!194736 (= c!35172 (and ((_ is Cons!2465) (toList!1259 lt!96875)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96875))) lt!96857))))))

(declare-fun b!194735 () Bool)

(assert (=> b!194735 (= e!128101 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96875)))))))

(declare-fun b!194737 () Bool)

(assert (=> b!194737 (= e!128102 (getValueByKey!244 (t!7403 (toList!1259 lt!96875)) lt!96857))))

(declare-fun d!56911 () Bool)

(declare-fun c!35171 () Bool)

(assert (=> d!56911 (= c!35171 (and ((_ is Cons!2465) (toList!1259 lt!96875)) (= (_1!1788 (h!3106 (toList!1259 lt!96875))) lt!96857)))))

(assert (=> d!56911 (= (getValueByKey!244 (toList!1259 lt!96875) lt!96857) e!128101)))

(declare-fun b!194738 () Bool)

(assert (=> b!194738 (= e!128102 None!248)))

(assert (= (and d!56911 c!35171) b!194735))

(assert (= (and d!56911 (not c!35171)) b!194736))

(assert (= (and b!194736 c!35172) b!194737))

(assert (= (and b!194736 (not c!35172)) b!194738))

(declare-fun m!221955 () Bool)

(assert (=> b!194737 m!221955))

(assert (=> d!56639 d!56911))

(declare-fun d!56913 () Bool)

(assert (=> d!56913 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96823) lt!96835)) (v!4252 (getValueByKey!244 (toList!1259 lt!96823) lt!96835)))))

(assert (=> d!56691 d!56913))

(declare-fun b!194740 () Bool)

(declare-fun e!128103 () Option!250)

(declare-fun e!128104 () Option!250)

(assert (=> b!194740 (= e!128103 e!128104)))

(declare-fun c!35174 () Bool)

(assert (=> b!194740 (= c!35174 (and ((_ is Cons!2465) (toList!1259 lt!96823)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96823))) lt!96835))))))

(declare-fun b!194739 () Bool)

(assert (=> b!194739 (= e!128103 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96823)))))))

(declare-fun b!194741 () Bool)

(assert (=> b!194741 (= e!128104 (getValueByKey!244 (t!7403 (toList!1259 lt!96823)) lt!96835))))

(declare-fun d!56915 () Bool)

(declare-fun c!35173 () Bool)

(assert (=> d!56915 (= c!35173 (and ((_ is Cons!2465) (toList!1259 lt!96823)) (= (_1!1788 (h!3106 (toList!1259 lt!96823))) lt!96835)))))

(assert (=> d!56915 (= (getValueByKey!244 (toList!1259 lt!96823) lt!96835) e!128103)))

(declare-fun b!194742 () Bool)

(assert (=> b!194742 (= e!128104 None!248)))

(assert (= (and d!56915 c!35173) b!194739))

(assert (= (and d!56915 (not c!35173)) b!194740))

(assert (= (and b!194740 c!35174) b!194741))

(assert (= (and b!194740 (not c!35174)) b!194742))

(declare-fun m!221957 () Bool)

(assert (=> b!194741 m!221957))

(assert (=> d!56691 d!56915))

(declare-fun b!194743 () Bool)

(declare-fun e!128105 () (_ BitVec 32))

(declare-fun call!19698 () (_ BitVec 32))

(assert (=> b!194743 (= e!128105 (bvadd #b00000000000000000000000000000001 call!19698))))

(declare-fun b!194744 () Bool)

(declare-fun e!128106 () (_ BitVec 32))

(assert (=> b!194744 (= e!128106 #b00000000000000000000000000000000)))

(declare-fun d!56917 () Bool)

(declare-fun lt!97208 () (_ BitVec 32))

(assert (=> d!56917 (and (bvsge lt!97208 #b00000000000000000000000000000000) (bvsle lt!97208 (bvsub (size!4198 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!56917 (= lt!97208 e!128106)))

(declare-fun c!35175 () Bool)

(assert (=> d!56917 (= c!35175 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56917 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!4198 (_keys!5954 thiss!1248)) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56917 (= (arrayCountValidKeys!0 (_keys!5954 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))) lt!97208)))

(declare-fun bm!19695 () Bool)

(assert (=> bm!19695 (= call!19698 (arrayCountValidKeys!0 (_keys!5954 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194745 () Bool)

(assert (=> b!194745 (= e!128106 e!128105)))

(declare-fun c!35176 () Bool)

(assert (=> b!194745 (= c!35176 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!194746 () Bool)

(assert (=> b!194746 (= e!128105 call!19698)))

(assert (= (and d!56917 c!35175) b!194744))

(assert (= (and d!56917 (not c!35175)) b!194745))

(assert (= (and b!194745 c!35176) b!194743))

(assert (= (and b!194745 (not c!35176)) b!194746))

(assert (= (or b!194743 b!194746) bm!19695))

(declare-fun m!221959 () Bool)

(assert (=> bm!19695 m!221959))

(declare-fun m!221961 () Bool)

(assert (=> b!194745 m!221961))

(assert (=> b!194745 m!221961))

(declare-fun m!221963 () Bool)

(assert (=> b!194745 m!221963))

(assert (=> bm!19671 d!56917))

(assert (=> b!194241 d!56593))

(declare-fun d!56919 () Bool)

(assert (=> d!56919 (= (isDefined!198 (getValueByKey!244 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))) (not (isEmpty!492 (getValueByKey!244 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))))

(declare-fun bs!7769 () Bool)

(assert (= bs!7769 d!56919))

(assert (=> bs!7769 m!221021))

(declare-fun m!221965 () Bool)

(assert (=> bs!7769 m!221965))

(assert (=> b!194183 d!56919))

(declare-fun b!194748 () Bool)

(declare-fun e!128107 () Option!250)

(declare-fun e!128108 () Option!250)

(assert (=> b!194748 (= e!128107 e!128108)))

(declare-fun c!35178 () Bool)

(assert (=> b!194748 (= c!35178 (and ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (not (= (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))))

(declare-fun b!194747 () Bool)

(assert (=> b!194747 (= e!128107 (Some!249 (_2!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))))))

(declare-fun b!194749 () Bool)

(assert (=> b!194749 (= e!128108 (getValueByKey!244 (t!7403 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun c!35177 () Bool)

(declare-fun d!56921 () Bool)

(assert (=> d!56921 (= c!35177 (and ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (= (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (=> d!56921 (= (getValueByKey!244 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) e!128107)))

(declare-fun b!194750 () Bool)

(assert (=> b!194750 (= e!128108 None!248)))

(assert (= (and d!56921 c!35177) b!194747))

(assert (= (and d!56921 (not c!35177)) b!194748))

(assert (= (and b!194748 c!35178) b!194749))

(assert (= (and b!194748 (not c!35178)) b!194750))

(assert (=> b!194749 m!220737))

(declare-fun m!221967 () Bool)

(assert (=> b!194749 m!221967))

(assert (=> b!194183 d!56921))

(assert (=> d!56751 d!56605))

(declare-fun d!56923 () Bool)

(declare-fun e!128110 () Bool)

(assert (=> d!56923 e!128110))

(declare-fun res!92026 () Bool)

(assert (=> d!56923 (=> res!92026 e!128110)))

(declare-fun lt!97209 () Bool)

(assert (=> d!56923 (= res!92026 (not lt!97209))))

(declare-fun lt!97210 () Bool)

(assert (=> d!56923 (= lt!97209 lt!97210)))

(declare-fun lt!97211 () Unit!5875)

(declare-fun e!128109 () Unit!5875)

(assert (=> d!56923 (= lt!97211 e!128109)))

(declare-fun c!35179 () Bool)

(assert (=> d!56923 (= c!35179 lt!97210)))

(assert (=> d!56923 (= lt!97210 (containsKey!248 (toList!1259 lt!96998) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!56923 (= (contains!1378 lt!96998 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!97209)))

(declare-fun b!194751 () Bool)

(declare-fun lt!97212 () Unit!5875)

(assert (=> b!194751 (= e!128109 lt!97212)))

(assert (=> b!194751 (= lt!97212 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96998) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(assert (=> b!194751 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96998) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194752 () Bool)

(declare-fun Unit!5905 () Unit!5875)

(assert (=> b!194752 (= e!128109 Unit!5905)))

(declare-fun b!194753 () Bool)

(assert (=> b!194753 (= e!128110 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96998) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!56923 c!35179) b!194751))

(assert (= (and d!56923 (not c!35179)) b!194752))

(assert (= (and d!56923 (not res!92026)) b!194753))

(declare-fun m!221969 () Bool)

(assert (=> d!56923 m!221969))

(declare-fun m!221971 () Bool)

(assert (=> b!194751 m!221971))

(assert (=> b!194751 m!221249))

(assert (=> b!194751 m!221249))

(declare-fun m!221973 () Bool)

(assert (=> b!194751 m!221973))

(assert (=> b!194753 m!221249))

(assert (=> b!194753 m!221249))

(assert (=> b!194753 m!221973))

(assert (=> d!56655 d!56923))

(declare-fun b!194755 () Bool)

(declare-fun e!128111 () Option!250)

(declare-fun e!128112 () Option!250)

(assert (=> b!194755 (= e!128111 e!128112)))

(declare-fun c!35181 () Bool)

(assert (=> b!194755 (= c!35181 (and ((_ is Cons!2465) lt!97001) (not (= (_1!1788 (h!3106 lt!97001)) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!194754 () Bool)

(assert (=> b!194754 (= e!128111 (Some!249 (_2!1788 (h!3106 lt!97001))))))

(declare-fun b!194756 () Bool)

(assert (=> b!194756 (= e!128112 (getValueByKey!244 (t!7403 lt!97001) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun c!35180 () Bool)

(declare-fun d!56925 () Bool)

(assert (=> d!56925 (= c!35180 (and ((_ is Cons!2465) lt!97001) (= (_1!1788 (h!3106 lt!97001)) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!56925 (= (getValueByKey!244 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) e!128111)))

(declare-fun b!194757 () Bool)

(assert (=> b!194757 (= e!128112 None!248)))

(assert (= (and d!56925 c!35180) b!194754))

(assert (= (and d!56925 (not c!35180)) b!194755))

(assert (= (and b!194755 c!35181) b!194756))

(assert (= (and b!194755 (not c!35181)) b!194757))

(declare-fun m!221975 () Bool)

(assert (=> b!194756 m!221975))

(assert (=> d!56655 d!56925))

(declare-fun d!56927 () Bool)

(assert (=> d!56927 (= (getValueByKey!244 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97213 () Unit!5875)

(assert (=> d!56927 (= lt!97213 (choose!1076 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun e!128113 () Bool)

(assert (=> d!56927 e!128113))

(declare-fun res!92027 () Bool)

(assert (=> d!56927 (=> (not res!92027) (not e!128113))))

(assert (=> d!56927 (= res!92027 (isStrictlySorted!352 lt!97001))))

(assert (=> d!56927 (= (lemmaContainsTupThenGetReturnValue!133 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!97213)))

(declare-fun b!194758 () Bool)

(declare-fun res!92028 () Bool)

(assert (=> b!194758 (=> (not res!92028) (not e!128113))))

(assert (=> b!194758 (= res!92028 (containsKey!248 lt!97001 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194759 () Bool)

(assert (=> b!194759 (= e!128113 (contains!1380 lt!97001 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!56927 res!92027) b!194758))

(assert (= (and b!194758 res!92028) b!194759))

(assert (=> d!56927 m!221243))

(declare-fun m!221977 () Bool)

(assert (=> d!56927 m!221977))

(declare-fun m!221979 () Bool)

(assert (=> d!56927 m!221979))

(declare-fun m!221981 () Bool)

(assert (=> b!194758 m!221981))

(declare-fun m!221983 () Bool)

(assert (=> b!194759 m!221983))

(assert (=> d!56655 d!56927))

(declare-fun e!128114 () List!2469)

(declare-fun c!35183 () Bool)

(declare-fun call!19700 () List!2469)

(declare-fun bm!19696 () Bool)

(assert (=> bm!19696 (= call!19700 ($colon$colon!102 e!128114 (ite c!35183 (h!3106 (toList!1259 lt!96870)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))))

(declare-fun c!35182 () Bool)

(assert (=> bm!19696 (= c!35182 c!35183)))

(declare-fun b!194760 () Bool)

(declare-fun e!128118 () List!2469)

(declare-fun call!19699 () List!2469)

(assert (=> b!194760 (= e!128118 call!19699)))

(declare-fun b!194761 () Bool)

(declare-fun c!35184 () Bool)

(assert (=> b!194761 (= c!35184 (and ((_ is Cons!2465) (toList!1259 lt!96870)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96870))) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(declare-fun e!128116 () List!2469)

(assert (=> b!194761 (= e!128118 e!128116)))

(declare-fun e!128117 () Bool)

(declare-fun lt!97214 () List!2469)

(declare-fun b!194762 () Bool)

(assert (=> b!194762 (= e!128117 (contains!1380 lt!97214 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(declare-fun bm!19697 () Bool)

(declare-fun call!19701 () List!2469)

(assert (=> bm!19697 (= call!19701 call!19699)))

(declare-fun b!194763 () Bool)

(declare-fun e!128115 () List!2469)

(assert (=> b!194763 (= e!128115 e!128118)))

(declare-fun c!35185 () Bool)

(assert (=> b!194763 (= c!35185 (and ((_ is Cons!2465) (toList!1259 lt!96870)) (= (_1!1788 (h!3106 (toList!1259 lt!96870))) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(declare-fun d!56929 () Bool)

(assert (=> d!56929 e!128117))

(declare-fun res!92029 () Bool)

(assert (=> d!56929 (=> (not res!92029) (not e!128117))))

(assert (=> d!56929 (= res!92029 (isStrictlySorted!352 lt!97214))))

(assert (=> d!56929 (= lt!97214 e!128115)))

(assert (=> d!56929 (= c!35183 (and ((_ is Cons!2465) (toList!1259 lt!96870)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96870))) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!56929 (isStrictlySorted!352 (toList!1259 lt!96870))))

(assert (=> d!56929 (= (insertStrictlySorted!135 (toList!1259 lt!96870) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!97214)))

(declare-fun bm!19698 () Bool)

(assert (=> bm!19698 (= call!19699 call!19700)))

(declare-fun b!194764 () Bool)

(assert (=> b!194764 (= e!128116 call!19701)))

(declare-fun b!194765 () Bool)

(assert (=> b!194765 (= e!128114 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96870)) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194766 () Bool)

(assert (=> b!194766 (= e!128116 call!19701)))

(declare-fun b!194767 () Bool)

(declare-fun res!92030 () Bool)

(assert (=> b!194767 (=> (not res!92030) (not e!128117))))

(assert (=> b!194767 (= res!92030 (containsKey!248 lt!97214 (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194768 () Bool)

(assert (=> b!194768 (= e!128115 call!19700)))

(declare-fun b!194769 () Bool)

(assert (=> b!194769 (= e!128114 (ite c!35185 (t!7403 (toList!1259 lt!96870)) (ite c!35184 (Cons!2465 (h!3106 (toList!1259 lt!96870)) (t!7403 (toList!1259 lt!96870))) Nil!2466)))))

(assert (= (and d!56929 c!35183) b!194768))

(assert (= (and d!56929 (not c!35183)) b!194763))

(assert (= (and b!194763 c!35185) b!194760))

(assert (= (and b!194763 (not c!35185)) b!194761))

(assert (= (and b!194761 c!35184) b!194766))

(assert (= (and b!194761 (not c!35184)) b!194764))

(assert (= (or b!194766 b!194764) bm!19697))

(assert (= (or b!194760 bm!19697) bm!19698))

(assert (= (or b!194768 bm!19698) bm!19696))

(assert (= (and bm!19696 c!35182) b!194765))

(assert (= (and bm!19696 (not c!35182)) b!194769))

(assert (= (and d!56929 res!92029) b!194767))

(assert (= (and b!194767 res!92030) b!194762))

(declare-fun m!221985 () Bool)

(assert (=> bm!19696 m!221985))

(declare-fun m!221987 () Bool)

(assert (=> b!194767 m!221987))

(declare-fun m!221989 () Bool)

(assert (=> b!194762 m!221989))

(declare-fun m!221991 () Bool)

(assert (=> b!194765 m!221991))

(declare-fun m!221993 () Bool)

(assert (=> d!56929 m!221993))

(declare-fun m!221995 () Bool)

(assert (=> d!56929 m!221995))

(assert (=> d!56655 d!56929))

(declare-fun d!56931 () Bool)

(declare-fun lt!97215 () Bool)

(assert (=> d!56931 (= lt!97215 (select (content!154 lt!97126) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun e!128120 () Bool)

(assert (=> d!56931 (= lt!97215 e!128120)))

(declare-fun res!92031 () Bool)

(assert (=> d!56931 (=> (not res!92031) (not e!128120))))

(assert (=> d!56931 (= res!92031 ((_ is Cons!2465) lt!97126))))

(assert (=> d!56931 (= (contains!1380 lt!97126 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))) lt!97215)))

(declare-fun b!194770 () Bool)

(declare-fun e!128119 () Bool)

(assert (=> b!194770 (= e!128120 e!128119)))

(declare-fun res!92032 () Bool)

(assert (=> b!194770 (=> res!92032 e!128119)))

(assert (=> b!194770 (= res!92032 (= (h!3106 lt!97126) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun b!194771 () Bool)

(assert (=> b!194771 (= e!128119 (contains!1380 (t!7403 lt!97126) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(assert (= (and d!56931 res!92031) b!194770))

(assert (= (and b!194770 (not res!92032)) b!194771))

(declare-fun m!221997 () Bool)

(assert (=> d!56931 m!221997))

(declare-fun m!221999 () Bool)

(assert (=> d!56931 m!221999))

(declare-fun m!222001 () Bool)

(assert (=> b!194771 m!222001))

(assert (=> b!194579 d!56931))

(assert (=> d!56625 d!56623))

(declare-fun d!56933 () Bool)

(assert (=> d!56933 (= (getValueByKey!244 lt!96754 (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700)))))

(assert (=> d!56933 true))

(declare-fun _$22!539 () Unit!5875)

(assert (=> d!56933 (= (choose!1076 lt!96754 (_1!1788 lt!96700) (_2!1788 lt!96700)) _$22!539)))

(declare-fun bs!7770 () Bool)

(assert (= bs!7770 d!56933))

(assert (=> bs!7770 m!220797))

(assert (=> d!56625 d!56933))

(declare-fun d!56935 () Bool)

(declare-fun res!92033 () Bool)

(declare-fun e!128121 () Bool)

(assert (=> d!56935 (=> res!92033 e!128121)))

(assert (=> d!56935 (= res!92033 (or ((_ is Nil!2466) lt!96754) ((_ is Nil!2466) (t!7403 lt!96754))))))

(assert (=> d!56935 (= (isStrictlySorted!352 lt!96754) e!128121)))

(declare-fun b!194772 () Bool)

(declare-fun e!128122 () Bool)

(assert (=> b!194772 (= e!128121 e!128122)))

(declare-fun res!92034 () Bool)

(assert (=> b!194772 (=> (not res!92034) (not e!128122))))

(assert (=> b!194772 (= res!92034 (bvslt (_1!1788 (h!3106 lt!96754)) (_1!1788 (h!3106 (t!7403 lt!96754)))))))

(declare-fun b!194773 () Bool)

(assert (=> b!194773 (= e!128122 (isStrictlySorted!352 (t!7403 lt!96754)))))

(assert (= (and d!56935 (not res!92033)) b!194772))

(assert (= (and b!194772 res!92034) b!194773))

(declare-fun m!222003 () Bool)

(assert (=> b!194773 m!222003))

(assert (=> d!56625 d!56935))

(declare-fun d!56937 () Bool)

(declare-fun e!128124 () Bool)

(assert (=> d!56937 e!128124))

(declare-fun res!92035 () Bool)

(assert (=> d!56937 (=> res!92035 e!128124)))

(declare-fun lt!97216 () Bool)

(assert (=> d!56937 (= res!92035 (not lt!97216))))

(declare-fun lt!97217 () Bool)

(assert (=> d!56937 (= lt!97216 lt!97217)))

(declare-fun lt!97218 () Unit!5875)

(declare-fun e!128123 () Unit!5875)

(assert (=> d!56937 (= lt!97218 e!128123)))

(declare-fun c!35186 () Bool)

(assert (=> d!56937 (= c!35186 lt!97217)))

(assert (=> d!56937 (= lt!97217 (containsKey!248 (toList!1259 lt!96989) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(assert (=> d!56937 (= (contains!1378 lt!96989 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!97216)))

(declare-fun b!194774 () Bool)

(declare-fun lt!97219 () Unit!5875)

(assert (=> b!194774 (= e!128123 lt!97219)))

(assert (=> b!194774 (= lt!97219 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96989) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(assert (=> b!194774 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96989) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun b!194775 () Bool)

(declare-fun Unit!5906 () Unit!5875)

(assert (=> b!194775 (= e!128123 Unit!5906)))

(declare-fun b!194776 () Bool)

(assert (=> b!194776 (= e!128124 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96989) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(assert (= (and d!56937 c!35186) b!194774))

(assert (= (and d!56937 (not c!35186)) b!194775))

(assert (= (and d!56937 (not res!92035)) b!194776))

(declare-fun m!222005 () Bool)

(assert (=> d!56937 m!222005))

(declare-fun m!222007 () Bool)

(assert (=> b!194774 m!222007))

(assert (=> b!194774 m!221205))

(assert (=> b!194774 m!221205))

(declare-fun m!222009 () Bool)

(assert (=> b!194774 m!222009))

(assert (=> b!194776 m!221205))

(assert (=> b!194776 m!221205))

(assert (=> b!194776 m!222009))

(assert (=> d!56641 d!56937))

(declare-fun b!194778 () Bool)

(declare-fun e!128125 () Option!250)

(declare-fun e!128126 () Option!250)

(assert (=> b!194778 (= e!128125 e!128126)))

(declare-fun c!35188 () Bool)

(assert (=> b!194778 (= c!35188 (and ((_ is Cons!2465) lt!96992) (not (= (_1!1788 (h!3106 lt!96992)) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194777 () Bool)

(assert (=> b!194777 (= e!128125 (Some!249 (_2!1788 (h!3106 lt!96992))))))

(declare-fun b!194779 () Bool)

(assert (=> b!194779 (= e!128126 (getValueByKey!244 (t!7403 lt!96992) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun d!56939 () Bool)

(declare-fun c!35187 () Bool)

(assert (=> d!56939 (= c!35187 (and ((_ is Cons!2465) lt!96992) (= (_1!1788 (h!3106 lt!96992)) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(assert (=> d!56939 (= (getValueByKey!244 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) e!128125)))

(declare-fun b!194780 () Bool)

(assert (=> b!194780 (= e!128126 None!248)))

(assert (= (and d!56939 c!35187) b!194777))

(assert (= (and d!56939 (not c!35187)) b!194778))

(assert (= (and b!194778 c!35188) b!194779))

(assert (= (and b!194778 (not c!35188)) b!194780))

(declare-fun m!222011 () Bool)

(assert (=> b!194779 m!222011))

(assert (=> d!56641 d!56939))

(declare-fun d!56941 () Bool)

(assert (=> d!56941 (= (getValueByKey!244 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97220 () Unit!5875)

(assert (=> d!56941 (= lt!97220 (choose!1076 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun e!128127 () Bool)

(assert (=> d!56941 e!128127))

(declare-fun res!92036 () Bool)

(assert (=> d!56941 (=> (not res!92036) (not e!128127))))

(assert (=> d!56941 (= res!92036 (isStrictlySorted!352 lt!96992))))

(assert (=> d!56941 (= (lemmaContainsTupThenGetReturnValue!133 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!97220)))

(declare-fun b!194781 () Bool)

(declare-fun res!92037 () Bool)

(assert (=> b!194781 (=> (not res!92037) (not e!128127))))

(assert (=> b!194781 (= res!92037 (containsKey!248 lt!96992 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun b!194782 () Bool)

(assert (=> b!194782 (= e!128127 (contains!1380 lt!96992 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(assert (= (and d!56941 res!92036) b!194781))

(assert (= (and b!194781 res!92037) b!194782))

(assert (=> d!56941 m!221199))

(declare-fun m!222013 () Bool)

(assert (=> d!56941 m!222013))

(declare-fun m!222015 () Bool)

(assert (=> d!56941 m!222015))

(declare-fun m!222017 () Bool)

(assert (=> b!194781 m!222017))

(declare-fun m!222019 () Bool)

(assert (=> b!194782 m!222019))

(assert (=> d!56641 d!56941))

(declare-fun bm!19699 () Bool)

(declare-fun call!19703 () List!2469)

(declare-fun e!128128 () List!2469)

(declare-fun c!35190 () Bool)

(assert (=> bm!19699 (= call!19703 ($colon$colon!102 e!128128 (ite c!35190 (h!3106 (toList!1259 lt!96875)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))))

(declare-fun c!35189 () Bool)

(assert (=> bm!19699 (= c!35189 c!35190)))

(declare-fun b!194783 () Bool)

(declare-fun e!128132 () List!2469)

(declare-fun call!19702 () List!2469)

(assert (=> b!194783 (= e!128132 call!19702)))

(declare-fun b!194784 () Bool)

(declare-fun c!35191 () Bool)

(assert (=> b!194784 (= c!35191 (and ((_ is Cons!2465) (toList!1259 lt!96875)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96875))) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(declare-fun e!128130 () List!2469)

(assert (=> b!194784 (= e!128132 e!128130)))

(declare-fun lt!97221 () List!2469)

(declare-fun e!128131 () Bool)

(declare-fun b!194785 () Bool)

(assert (=> b!194785 (= e!128131 (contains!1380 lt!97221 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(declare-fun bm!19700 () Bool)

(declare-fun call!19704 () List!2469)

(assert (=> bm!19700 (= call!19704 call!19702)))

(declare-fun b!194786 () Bool)

(declare-fun e!128129 () List!2469)

(assert (=> b!194786 (= e!128129 e!128132)))

(declare-fun c!35192 () Bool)

(assert (=> b!194786 (= c!35192 (and ((_ is Cons!2465) (toList!1259 lt!96875)) (= (_1!1788 (h!3106 (toList!1259 lt!96875))) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(declare-fun d!56943 () Bool)

(assert (=> d!56943 e!128131))

(declare-fun res!92038 () Bool)

(assert (=> d!56943 (=> (not res!92038) (not e!128131))))

(assert (=> d!56943 (= res!92038 (isStrictlySorted!352 lt!97221))))

(assert (=> d!56943 (= lt!97221 e!128129)))

(assert (=> d!56943 (= c!35190 (and ((_ is Cons!2465) (toList!1259 lt!96875)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96875))) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(assert (=> d!56943 (isStrictlySorted!352 (toList!1259 lt!96875))))

(assert (=> d!56943 (= (insertStrictlySorted!135 (toList!1259 lt!96875) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!97221)))

(declare-fun bm!19701 () Bool)

(assert (=> bm!19701 (= call!19702 call!19703)))

(declare-fun b!194787 () Bool)

(assert (=> b!194787 (= e!128130 call!19704)))

(declare-fun b!194788 () Bool)

(assert (=> b!194788 (= e!128128 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96875)) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun b!194789 () Bool)

(assert (=> b!194789 (= e!128130 call!19704)))

(declare-fun b!194790 () Bool)

(declare-fun res!92039 () Bool)

(assert (=> b!194790 (=> (not res!92039) (not e!128131))))

(assert (=> b!194790 (= res!92039 (containsKey!248 lt!97221 (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun b!194791 () Bool)

(assert (=> b!194791 (= e!128129 call!19703)))

(declare-fun b!194792 () Bool)

(assert (=> b!194792 (= e!128128 (ite c!35192 (t!7403 (toList!1259 lt!96875)) (ite c!35191 (Cons!2465 (h!3106 (toList!1259 lt!96875)) (t!7403 (toList!1259 lt!96875))) Nil!2466)))))

(assert (= (and d!56943 c!35190) b!194791))

(assert (= (and d!56943 (not c!35190)) b!194786))

(assert (= (and b!194786 c!35192) b!194783))

(assert (= (and b!194786 (not c!35192)) b!194784))

(assert (= (and b!194784 c!35191) b!194789))

(assert (= (and b!194784 (not c!35191)) b!194787))

(assert (= (or b!194789 b!194787) bm!19700))

(assert (= (or b!194783 bm!19700) bm!19701))

(assert (= (or b!194791 bm!19701) bm!19699))

(assert (= (and bm!19699 c!35189) b!194788))

(assert (= (and bm!19699 (not c!35189)) b!194792))

(assert (= (and d!56943 res!92038) b!194790))

(assert (= (and b!194790 res!92039) b!194785))

(declare-fun m!222021 () Bool)

(assert (=> bm!19699 m!222021))

(declare-fun m!222023 () Bool)

(assert (=> b!194790 m!222023))

(declare-fun m!222025 () Bool)

(assert (=> b!194785 m!222025))

(declare-fun m!222027 () Bool)

(assert (=> b!194788 m!222027))

(declare-fun m!222029 () Bool)

(assert (=> d!56943 m!222029))

(declare-fun m!222031 () Bool)

(assert (=> d!56943 m!222031))

(assert (=> d!56641 d!56943))

(assert (=> d!56687 d!56679))

(assert (=> d!56687 d!56681))

(declare-fun d!56945 () Bool)

(declare-fun e!128134 () Bool)

(assert (=> d!56945 e!128134))

(declare-fun res!92040 () Bool)

(assert (=> d!56945 (=> res!92040 e!128134)))

(declare-fun lt!97222 () Bool)

(assert (=> d!56945 (= res!92040 (not lt!97222))))

(declare-fun lt!97223 () Bool)

(assert (=> d!56945 (= lt!97222 lt!97223)))

(declare-fun lt!97224 () Unit!5875)

(declare-fun e!128133 () Unit!5875)

(assert (=> d!56945 (= lt!97224 e!128133)))

(declare-fun c!35193 () Bool)

(assert (=> d!56945 (= c!35193 lt!97223)))

(assert (=> d!56945 (= lt!97223 (containsKey!248 (toList!1259 lt!96838) lt!96820))))

(assert (=> d!56945 (= (contains!1378 lt!96838 lt!96820) lt!97222)))

(declare-fun b!194793 () Bool)

(declare-fun lt!97225 () Unit!5875)

(assert (=> b!194793 (= e!128133 lt!97225)))

(assert (=> b!194793 (= lt!97225 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96838) lt!96820))))

(assert (=> b!194793 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96838) lt!96820))))

(declare-fun b!194794 () Bool)

(declare-fun Unit!5907 () Unit!5875)

(assert (=> b!194794 (= e!128133 Unit!5907)))

(declare-fun b!194795 () Bool)

(assert (=> b!194795 (= e!128134 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96838) lt!96820)))))

(assert (= (and d!56945 c!35193) b!194793))

(assert (= (and d!56945 (not c!35193)) b!194794))

(assert (= (and d!56945 (not res!92040)) b!194795))

(declare-fun m!222033 () Bool)

(assert (=> d!56945 m!222033))

(declare-fun m!222035 () Bool)

(assert (=> b!194793 m!222035))

(assert (=> b!194793 m!221313))

(assert (=> b!194793 m!221313))

(declare-fun m!222037 () Bool)

(assert (=> b!194793 m!222037))

(assert (=> b!194795 m!221313))

(assert (=> b!194795 m!221313))

(assert (=> b!194795 m!222037))

(assert (=> d!56687 d!56945))

(assert (=> d!56687 d!56701))

(declare-fun d!56947 () Bool)

(assert (=> d!56947 (= (apply!188 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) lt!96820) (apply!188 lt!96838 lt!96820))))

(assert (=> d!56947 true))

(declare-fun _$34!1087 () Unit!5875)

(assert (=> d!56947 (= (choose!1077 lt!96838 lt!96829 (minValue!3801 thiss!1248) lt!96820) _$34!1087)))

(declare-fun bs!7771 () Bool)

(assert (= bs!7771 d!56947))

(assert (=> bs!7771 m!220879))

(assert (=> bs!7771 m!220879))

(assert (=> bs!7771 m!220897))

(assert (=> bs!7771 m!220891))

(assert (=> d!56687 d!56947))

(assert (=> b!194346 d!56593))

(declare-fun d!56949 () Bool)

(assert (=> d!56949 (= (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!96857)) (v!4252 (getValueByKey!244 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!96857)))))

(assert (=> d!56635 d!56949))

(declare-fun b!194798 () Bool)

(declare-fun e!128135 () Option!250)

(declare-fun e!128136 () Option!250)

(assert (=> b!194798 (= e!128135 e!128136)))

(declare-fun c!35195 () Bool)

(assert (=> b!194798 (= c!35195 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))) lt!96857))))))

(declare-fun b!194797 () Bool)

(assert (=> b!194797 (= e!128135 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))))

(declare-fun b!194799 () Bool)

(assert (=> b!194799 (= e!128136 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))) lt!96857))))

(declare-fun d!56951 () Bool)

(declare-fun c!35194 () Bool)

(assert (=> d!56951 (= c!35194 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))) lt!96857)))))

(assert (=> d!56951 (= (getValueByKey!244 (toList!1259 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) lt!96857) e!128135)))

(declare-fun b!194800 () Bool)

(assert (=> b!194800 (= e!128136 None!248)))

(assert (= (and d!56951 c!35194) b!194797))

(assert (= (and d!56951 (not c!35194)) b!194798))

(assert (= (and b!194798 c!35195) b!194799))

(assert (= (and b!194798 (not c!35195)) b!194800))

(declare-fun m!222039 () Bool)

(assert (=> b!194799 m!222039))

(assert (=> d!56635 d!56951))

(assert (=> d!56661 d!56655))

(assert (=> d!56661 d!56643))

(declare-fun d!56953 () Bool)

(assert (=> d!56953 (= (apply!188 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) lt!96856) (apply!188 lt!96870 lt!96856))))

(assert (=> d!56953 true))

(declare-fun _$34!1088 () Unit!5875)

(assert (=> d!56953 (= (choose!1077 lt!96870 lt!96861 (zeroValue!3801 thiss!1248) lt!96856) _$34!1088)))

(declare-fun bs!7772 () Bool)

(assert (= bs!7772 d!56953))

(assert (=> bs!7772 m!220967))

(assert (=> bs!7772 m!220967))

(assert (=> bs!7772 m!220969))

(assert (=> bs!7772 m!220973))

(assert (=> d!56661 d!56953))

(declare-fun d!56955 () Bool)

(declare-fun e!128138 () Bool)

(assert (=> d!56955 e!128138))

(declare-fun res!92041 () Bool)

(assert (=> d!56955 (=> res!92041 e!128138)))

(declare-fun lt!97226 () Bool)

(assert (=> d!56955 (= res!92041 (not lt!97226))))

(declare-fun lt!97227 () Bool)

(assert (=> d!56955 (= lt!97226 lt!97227)))

(declare-fun lt!97228 () Unit!5875)

(declare-fun e!128137 () Unit!5875)

(assert (=> d!56955 (= lt!97228 e!128137)))

(declare-fun c!35196 () Bool)

(assert (=> d!56955 (= c!35196 lt!97227)))

(assert (=> d!56955 (= lt!97227 (containsKey!248 (toList!1259 lt!96870) lt!96856))))

(assert (=> d!56955 (= (contains!1378 lt!96870 lt!96856) lt!97226)))

(declare-fun b!194801 () Bool)

(declare-fun lt!97229 () Unit!5875)

(assert (=> b!194801 (= e!128137 lt!97229)))

(assert (=> b!194801 (= lt!97229 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96870) lt!96856))))

(assert (=> b!194801 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96870) lt!96856))))

(declare-fun b!194802 () Bool)

(declare-fun Unit!5908 () Unit!5875)

(assert (=> b!194802 (= e!128137 Unit!5908)))

(declare-fun b!194803 () Bool)

(assert (=> b!194803 (= e!128138 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96870) lt!96856)))))

(assert (= (and d!56955 c!35196) b!194801))

(assert (= (and d!56955 (not c!35196)) b!194802))

(assert (= (and d!56955 (not res!92041)) b!194803))

(declare-fun m!222041 () Bool)

(assert (=> d!56955 m!222041))

(declare-fun m!222043 () Bool)

(assert (=> b!194801 m!222043))

(assert (=> b!194801 m!221209))

(assert (=> b!194801 m!221209))

(declare-fun m!222045 () Bool)

(assert (=> b!194801 m!222045))

(assert (=> b!194803 m!221209))

(assert (=> b!194803 m!221209))

(assert (=> b!194803 m!222045))

(assert (=> d!56661 d!56955))

(assert (=> d!56661 d!56651))

(assert (=> b!194178 d!56847))

(declare-fun b!194805 () Bool)

(declare-fun e!128139 () Option!250)

(declare-fun e!128140 () Option!250)

(assert (=> b!194805 (= e!128139 e!128140)))

(declare-fun c!35198 () Bool)

(assert (=> b!194805 (= c!35198 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96697))) (not (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96697)))) key!828))))))

(declare-fun b!194804 () Bool)

(assert (=> b!194804 (= e!128139 (Some!249 (_2!1788 (h!3106 (t!7403 (toList!1259 lt!96697))))))))

(declare-fun b!194806 () Bool)

(assert (=> b!194806 (= e!128140 (getValueByKey!244 (t!7403 (t!7403 (toList!1259 lt!96697))) key!828))))

(declare-fun d!56957 () Bool)

(declare-fun c!35197 () Bool)

(assert (=> d!56957 (= c!35197 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96697))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96697)))) key!828)))))

(assert (=> d!56957 (= (getValueByKey!244 (t!7403 (toList!1259 lt!96697)) key!828) e!128139)))

(declare-fun b!194807 () Bool)

(assert (=> b!194807 (= e!128140 None!248)))

(assert (= (and d!56957 c!35197) b!194804))

(assert (= (and d!56957 (not c!35197)) b!194805))

(assert (= (and b!194805 c!35198) b!194806))

(assert (= (and b!194805 (not c!35198)) b!194807))

(declare-fun m!222047 () Bool)

(assert (=> b!194806 m!222047))

(assert (=> b!194263 d!56957))

(declare-fun d!56959 () Bool)

(assert (=> d!56959 (= (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!194527 d!56959))

(assert (=> b!194528 d!56959))

(declare-fun b!194808 () Bool)

(declare-fun e!128142 () SeekEntryResult!704)

(declare-fun e!128143 () SeekEntryResult!704)

(assert (=> b!194808 (= e!128142 e!128143)))

(declare-fun c!35200 () Bool)

(declare-fun lt!97230 () (_ BitVec 64))

(assert (=> b!194808 (= c!35200 (= lt!97230 key!828))))

(declare-fun b!194809 () Bool)

(declare-fun c!35201 () Bool)

(assert (=> b!194809 (= c!35201 (= lt!97230 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128141 () SeekEntryResult!704)

(assert (=> b!194809 (= e!128143 e!128141)))

(declare-fun b!194810 () Bool)

(assert (=> b!194810 (= e!128143 (Found!704 (nextIndex!0 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248))))))

(declare-fun b!194811 () Bool)

(assert (=> b!194811 (= e!128142 Undefined!704)))

(declare-fun b!194812 () Bool)

(assert (=> b!194812 (= e!128141 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20700 lt!96891) #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248)) (bvadd (x!20700 lt!96891) #b00000000000000000000000000000001) (mask!9223 thiss!1248)) (index!4988 lt!96891) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194813 () Bool)

(assert (=> b!194813 (= e!128141 (MissingVacant!704 (index!4988 lt!96891)))))

(declare-fun lt!97231 () SeekEntryResult!704)

(declare-fun d!56961 () Bool)

(assert (=> d!56961 (and (or ((_ is Undefined!704) lt!97231) (not ((_ is Found!704) lt!97231)) (and (bvsge (index!4987 lt!97231) #b00000000000000000000000000000000) (bvslt (index!4987 lt!97231) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97231) ((_ is Found!704) lt!97231) (not ((_ is MissingVacant!704) lt!97231)) (not (= (index!4989 lt!97231) (index!4988 lt!96891))) (and (bvsge (index!4989 lt!97231) #b00000000000000000000000000000000) (bvslt (index!4989 lt!97231) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97231) (ite ((_ is Found!704) lt!97231) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!97231)) key!828) (and ((_ is MissingVacant!704) lt!97231) (= (index!4989 lt!97231) (index!4988 lt!96891)) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4989 lt!97231)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!56961 (= lt!97231 e!128142)))

(declare-fun c!35199 () Bool)

(assert (=> d!56961 (= c!35199 (bvsge (bvadd (x!20700 lt!96891) #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!56961 (= lt!97230 (select (arr!3874 (_keys!5954 thiss!1248)) (nextIndex!0 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248))))))

(assert (=> d!56961 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56961 (= (seekKeyOrZeroReturnVacant!0 (bvadd (x!20700 lt!96891) #b00000000000000000000000000000001) (nextIndex!0 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248)) (index!4988 lt!96891) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) lt!97231)))

(assert (= (and d!56961 c!35199) b!194811))

(assert (= (and d!56961 (not c!35199)) b!194808))

(assert (= (and b!194808 c!35200) b!194810))

(assert (= (and b!194808 (not c!35200)) b!194809))

(assert (= (and b!194809 c!35201) b!194813))

(assert (= (and b!194809 (not c!35201)) b!194812))

(assert (=> b!194812 m!221513))

(declare-fun m!222049 () Bool)

(assert (=> b!194812 m!222049))

(assert (=> b!194812 m!222049))

(declare-fun m!222051 () Bool)

(assert (=> b!194812 m!222051))

(declare-fun m!222053 () Bool)

(assert (=> d!56961 m!222053))

(declare-fun m!222055 () Bool)

(assert (=> d!56961 m!222055))

(assert (=> d!56961 m!221513))

(declare-fun m!222057 () Bool)

(assert (=> d!56961 m!222057))

(assert (=> d!56961 m!220833))

(assert (=> b!194521 d!56961))

(declare-fun d!56963 () Bool)

(declare-fun lt!97234 () (_ BitVec 32))

(assert (=> d!56963 (and (bvsge lt!97234 #b00000000000000000000000000000000) (bvslt lt!97234 (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56963 (= lt!97234 (choose!52 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248)))))

(assert (=> d!56963 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56963 (= (nextIndex!0 (index!4988 lt!96891) (x!20700 lt!96891) (mask!9223 thiss!1248)) lt!97234)))

(declare-fun bs!7773 () Bool)

(assert (= bs!7773 d!56963))

(declare-fun m!222059 () Bool)

(assert (=> bs!7773 m!222059))

(assert (=> bs!7773 m!220833))

(assert (=> b!194521 d!56963))

(assert (=> b!194252 d!56713))

(declare-fun d!56965 () Bool)

(declare-fun e!128145 () Bool)

(assert (=> d!56965 e!128145))

(declare-fun res!92042 () Bool)

(assert (=> d!56965 (=> res!92042 e!128145)))

(declare-fun lt!97235 () Bool)

(assert (=> d!56965 (= res!92042 (not lt!97235))))

(declare-fun lt!97236 () Bool)

(assert (=> d!56965 (= lt!97235 lt!97236)))

(declare-fun lt!97237 () Unit!5875)

(declare-fun e!128144 () Unit!5875)

(assert (=> d!56965 (= lt!97237 e!128144)))

(declare-fun c!35202 () Bool)

(assert (=> d!56965 (= c!35202 lt!97236)))

(assert (=> d!56965 (= lt!97236 (containsKey!248 (toList!1259 lt!97014) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!56965 (= (contains!1378 lt!97014 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) lt!97235)))

(declare-fun b!194814 () Bool)

(declare-fun lt!97238 () Unit!5875)

(assert (=> b!194814 (= e!128144 lt!97238)))

(assert (=> b!194814 (= lt!97238 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97014) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> b!194814 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97014) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194815 () Bool)

(declare-fun Unit!5909 () Unit!5875)

(assert (=> b!194815 (= e!128144 Unit!5909)))

(declare-fun b!194816 () Bool)

(assert (=> b!194816 (= e!128145 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97014) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (= (and d!56965 c!35202) b!194814))

(assert (= (and d!56965 (not c!35202)) b!194815))

(assert (= (and d!56965 (not res!92042)) b!194816))

(declare-fun m!222061 () Bool)

(assert (=> d!56965 m!222061))

(declare-fun m!222063 () Bool)

(assert (=> b!194814 m!222063))

(assert (=> b!194814 m!221289))

(assert (=> b!194814 m!221289))

(declare-fun m!222065 () Bool)

(assert (=> b!194814 m!222065))

(assert (=> b!194816 m!221289))

(assert (=> b!194816 m!221289))

(assert (=> b!194816 m!222065))

(assert (=> d!56665 d!56965))

(declare-fun b!194818 () Bool)

(declare-fun e!128146 () Option!250)

(declare-fun e!128147 () Option!250)

(assert (=> b!194818 (= e!128146 e!128147)))

(declare-fun c!35204 () Bool)

(assert (=> b!194818 (= c!35204 (and ((_ is Cons!2465) lt!97017) (not (= (_1!1788 (h!3106 lt!97017)) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))))

(declare-fun b!194817 () Bool)

(assert (=> b!194817 (= e!128146 (Some!249 (_2!1788 (h!3106 lt!97017))))))

(declare-fun b!194819 () Bool)

(assert (=> b!194819 (= e!128147 (getValueByKey!244 (t!7403 lt!97017) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun c!35203 () Bool)

(declare-fun d!56967 () Bool)

(assert (=> d!56967 (= c!35203 (and ((_ is Cons!2465) lt!97017) (= (_1!1788 (h!3106 lt!97017)) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (=> d!56967 (= (getValueByKey!244 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) e!128146)))

(declare-fun b!194820 () Bool)

(assert (=> b!194820 (= e!128147 None!248)))

(assert (= (and d!56967 c!35203) b!194817))

(assert (= (and d!56967 (not c!35203)) b!194818))

(assert (= (and b!194818 c!35204) b!194819))

(assert (= (and b!194818 (not c!35204)) b!194820))

(declare-fun m!222067 () Bool)

(assert (=> b!194819 m!222067))

(assert (=> d!56665 d!56967))

(declare-fun d!56969 () Bool)

(assert (=> d!56969 (= (getValueByKey!244 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun lt!97239 () Unit!5875)

(assert (=> d!56969 (= lt!97239 (choose!1076 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun e!128148 () Bool)

(assert (=> d!56969 e!128148))

(declare-fun res!92043 () Bool)

(assert (=> d!56969 (=> (not res!92043) (not e!128148))))

(assert (=> d!56969 (= res!92043 (isStrictlySorted!352 lt!97017))))

(assert (=> d!56969 (= (lemmaContainsTupThenGetReturnValue!133 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) lt!97239)))

(declare-fun b!194821 () Bool)

(declare-fun res!92044 () Bool)

(assert (=> b!194821 (=> (not res!92044) (not e!128148))))

(assert (=> b!194821 (= res!92044 (containsKey!248 lt!97017 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194822 () Bool)

(assert (=> b!194822 (= e!128148 (contains!1380 lt!97017 (tuple2!3557 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (= (and d!56969 res!92043) b!194821))

(assert (= (and b!194821 res!92044) b!194822))

(assert (=> d!56969 m!221283))

(declare-fun m!222069 () Bool)

(assert (=> d!56969 m!222069))

(declare-fun m!222071 () Bool)

(assert (=> d!56969 m!222071))

(declare-fun m!222073 () Bool)

(assert (=> b!194821 m!222073))

(declare-fun m!222075 () Bool)

(assert (=> b!194822 m!222075))

(assert (=> d!56665 d!56969))

(declare-fun bm!19702 () Bool)

(declare-fun e!128149 () List!2469)

(declare-fun c!35206 () Bool)

(declare-fun call!19706 () List!2469)

(assert (=> bm!19702 (= call!19706 ($colon$colon!102 e!128149 (ite c!35206 (h!3106 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (tuple2!3557 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))))

(declare-fun c!35205 () Bool)

(assert (=> bm!19702 (= c!35205 c!35206)))

(declare-fun b!194823 () Bool)

(declare-fun e!128153 () List!2469)

(declare-fun call!19705 () List!2469)

(assert (=> b!194823 (= e!128153 call!19705)))

(declare-fun b!194824 () Bool)

(declare-fun c!35207 () Bool)

(assert (=> b!194824 (= c!35207 (and ((_ is Cons!2465) (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (bvsgt (_1!1788 (h!3106 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun e!128151 () List!2469)

(assert (=> b!194824 (= e!128153 e!128151)))

(declare-fun e!128152 () Bool)

(declare-fun b!194825 () Bool)

(declare-fun lt!97240 () List!2469)

(assert (=> b!194825 (= e!128152 (contains!1380 lt!97240 (tuple2!3557 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun bm!19703 () Bool)

(declare-fun call!19707 () List!2469)

(assert (=> bm!19703 (= call!19707 call!19705)))

(declare-fun b!194826 () Bool)

(declare-fun e!128150 () List!2469)

(assert (=> b!194826 (= e!128150 e!128153)))

(declare-fun c!35208 () Bool)

(assert (=> b!194826 (= c!35208 (and ((_ is Cons!2465) (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (= (_1!1788 (h!3106 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun d!56971 () Bool)

(assert (=> d!56971 e!128152))

(declare-fun res!92045 () Bool)

(assert (=> d!56971 (=> (not res!92045) (not e!128152))))

(assert (=> d!56971 (= res!92045 (isStrictlySorted!352 lt!97240))))

(assert (=> d!56971 (= lt!97240 e!128150)))

(assert (=> d!56971 (= c!35206 (and ((_ is Cons!2465) (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (bvslt (_1!1788 (h!3106 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (=> d!56971 (isStrictlySorted!352 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))))))

(assert (=> d!56971 (= (insertStrictlySorted!135 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) lt!97240)))

(declare-fun bm!19704 () Bool)

(assert (=> bm!19704 (= call!19705 call!19706)))

(declare-fun b!194827 () Bool)

(assert (=> b!194827 (= e!128151 call!19707)))

(declare-fun b!194828 () Bool)

(assert (=> b!194828 (= e!128149 (insertStrictlySorted!135 (t!7403 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194829 () Bool)

(assert (=> b!194829 (= e!128151 call!19707)))

(declare-fun b!194830 () Bool)

(declare-fun res!92046 () Bool)

(assert (=> b!194830 (=> (not res!92046) (not e!128152))))

(assert (=> b!194830 (= res!92046 (containsKey!248 lt!97240 (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194831 () Bool)

(assert (=> b!194831 (= e!128150 call!19706)))

(declare-fun b!194832 () Bool)

(assert (=> b!194832 (= e!128149 (ite c!35208 (t!7403 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (ite c!35207 (Cons!2465 (h!3106 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628)))) (t!7403 (toList!1259 (ite c!34990 call!19631 (ite c!34991 call!19630 call!19628))))) Nil!2466)))))

(assert (= (and d!56971 c!35206) b!194831))

(assert (= (and d!56971 (not c!35206)) b!194826))

(assert (= (and b!194826 c!35208) b!194823))

(assert (= (and b!194826 (not c!35208)) b!194824))

(assert (= (and b!194824 c!35207) b!194829))

(assert (= (and b!194824 (not c!35207)) b!194827))

(assert (= (or b!194829 b!194827) bm!19703))

(assert (= (or b!194823 bm!19703) bm!19704))

(assert (= (or b!194831 bm!19704) bm!19702))

(assert (= (and bm!19702 c!35205) b!194828))

(assert (= (and bm!19702 (not c!35205)) b!194832))

(assert (= (and d!56971 res!92045) b!194830))

(assert (= (and b!194830 res!92046) b!194825))

(declare-fun m!222077 () Bool)

(assert (=> bm!19702 m!222077))

(declare-fun m!222079 () Bool)

(assert (=> b!194830 m!222079))

(declare-fun m!222081 () Bool)

(assert (=> b!194825 m!222081))

(declare-fun m!222083 () Bool)

(assert (=> b!194828 m!222083))

(declare-fun m!222085 () Bool)

(assert (=> d!56971 m!222085))

(declare-fun m!222087 () Bool)

(assert (=> d!56971 m!222087))

(assert (=> d!56665 d!56971))

(declare-fun d!56973 () Bool)

(declare-fun res!92047 () Bool)

(declare-fun e!128154 () Bool)

(assert (=> d!56973 (=> res!92047 e!128154)))

(assert (=> d!56973 (= res!92047 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96691))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96691)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (=> d!56973 (= (containsKey!248 (t!7403 (toList!1259 lt!96691)) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) e!128154)))

(declare-fun b!194833 () Bool)

(declare-fun e!128155 () Bool)

(assert (=> b!194833 (= e!128154 e!128155)))

(declare-fun res!92048 () Bool)

(assert (=> b!194833 (=> (not res!92048) (not e!128155))))

(assert (=> b!194833 (= res!92048 (and (or (not ((_ is Cons!2465) (t!7403 (toList!1259 lt!96691)))) (bvsle (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96691)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))) ((_ is Cons!2465) (t!7403 (toList!1259 lt!96691))) (bvslt (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96691)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(declare-fun b!194834 () Bool)

(assert (=> b!194834 (= e!128155 (containsKey!248 (t!7403 (t!7403 (toList!1259 lt!96691))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (= (and d!56973 (not res!92047)) b!194833))

(assert (= (and b!194833 res!92048) b!194834))

(assert (=> b!194834 m!220737))

(declare-fun m!222089 () Bool)

(assert (=> b!194834 m!222089))

(assert (=> b!194591 d!56973))

(declare-fun d!56975 () Bool)

(declare-fun lt!97241 () Bool)

(assert (=> d!56975 (= lt!97241 (select (content!154 (toList!1259 lt!96998)) (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))

(declare-fun e!128157 () Bool)

(assert (=> d!56975 (= lt!97241 e!128157)))

(declare-fun res!92049 () Bool)

(assert (=> d!56975 (=> (not res!92049) (not e!128157))))

(assert (=> d!56975 (= res!92049 ((_ is Cons!2465) (toList!1259 lt!96998)))))

(assert (=> d!56975 (= (contains!1380 (toList!1259 lt!96998) (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))) lt!97241)))

(declare-fun b!194835 () Bool)

(declare-fun e!128156 () Bool)

(assert (=> b!194835 (= e!128157 e!128156)))

(declare-fun res!92050 () Bool)

(assert (=> b!194835 (=> res!92050 e!128156)))

(assert (=> b!194835 (= res!92050 (= (h!3106 (toList!1259 lt!96998)) (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))

(declare-fun b!194836 () Bool)

(assert (=> b!194836 (= e!128156 (contains!1380 (t!7403 (toList!1259 lt!96998)) (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!56975 res!92049) b!194835))

(assert (= (and b!194835 (not res!92050)) b!194836))

(declare-fun m!222091 () Bool)

(assert (=> d!56975 m!222091))

(declare-fun m!222093 () Bool)

(assert (=> d!56975 m!222093))

(declare-fun m!222095 () Bool)

(assert (=> b!194836 m!222095))

(assert (=> b!194368 d!56975))

(declare-fun d!56977 () Bool)

(declare-fun lt!97242 () Bool)

(assert (=> d!56977 (= lt!97242 (select (content!154 (toList!1259 lt!96989)) (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))

(declare-fun e!128159 () Bool)

(assert (=> d!56977 (= lt!97242 e!128159)))

(declare-fun res!92051 () Bool)

(assert (=> d!56977 (=> (not res!92051) (not e!128159))))

(assert (=> d!56977 (= res!92051 ((_ is Cons!2465) (toList!1259 lt!96989)))))

(assert (=> d!56977 (= (contains!1380 (toList!1259 lt!96989) (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) lt!97242)))

(declare-fun b!194837 () Bool)

(declare-fun e!128158 () Bool)

(assert (=> b!194837 (= e!128159 e!128158)))

(declare-fun res!92052 () Bool)

(assert (=> b!194837 (=> res!92052 e!128158)))

(assert (=> b!194837 (= res!92052 (= (h!3106 (toList!1259 lt!96989)) (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))

(declare-fun b!194838 () Bool)

(assert (=> b!194838 (= e!128158 (contains!1380 (t!7403 (toList!1259 lt!96989)) (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))

(assert (= (and d!56977 res!92051) b!194837))

(assert (= (and b!194837 (not res!92052)) b!194838))

(declare-fun m!222097 () Bool)

(assert (=> d!56977 m!222097))

(declare-fun m!222099 () Bool)

(assert (=> d!56977 m!222099))

(declare-fun m!222101 () Bool)

(assert (=> b!194838 m!222101))

(assert (=> b!194363 d!56977))

(declare-fun call!19709 () List!2469)

(declare-fun e!128160 () List!2469)

(declare-fun bm!19705 () Bool)

(declare-fun c!35210 () Bool)

(assert (=> bm!19705 (= call!19709 ($colon$colon!102 e!128160 (ite c!35210 (h!3106 (t!7403 (toList!1259 (map!2028 thiss!1248)))) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700)))))))

(declare-fun c!35209 () Bool)

(assert (=> bm!19705 (= c!35209 c!35210)))

(declare-fun b!194839 () Bool)

(declare-fun e!128164 () List!2469)

(declare-fun call!19708 () List!2469)

(assert (=> b!194839 (= e!128164 call!19708)))

(declare-fun b!194840 () Bool)

(declare-fun c!35211 () Bool)

(assert (=> b!194840 (= c!35211 (and ((_ is Cons!2465) (t!7403 (toList!1259 (map!2028 thiss!1248)))) (bvsgt (_1!1788 (h!3106 (t!7403 (toList!1259 (map!2028 thiss!1248))))) (_1!1788 lt!96700))))))

(declare-fun e!128162 () List!2469)

(assert (=> b!194840 (= e!128164 e!128162)))

(declare-fun b!194841 () Bool)

(declare-fun e!128163 () Bool)

(declare-fun lt!97243 () List!2469)

(assert (=> b!194841 (= e!128163 (contains!1380 lt!97243 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun bm!19706 () Bool)

(declare-fun call!19710 () List!2469)

(assert (=> bm!19706 (= call!19710 call!19708)))

(declare-fun b!194842 () Bool)

(declare-fun e!128161 () List!2469)

(assert (=> b!194842 (= e!128161 e!128164)))

(declare-fun c!35212 () Bool)

(assert (=> b!194842 (= c!35212 (and ((_ is Cons!2465) (t!7403 (toList!1259 (map!2028 thiss!1248)))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 (map!2028 thiss!1248))))) (_1!1788 lt!96700))))))

(declare-fun d!56979 () Bool)

(assert (=> d!56979 e!128163))

(declare-fun res!92053 () Bool)

(assert (=> d!56979 (=> (not res!92053) (not e!128163))))

(assert (=> d!56979 (= res!92053 (isStrictlySorted!352 lt!97243))))

(assert (=> d!56979 (= lt!97243 e!128161)))

(assert (=> d!56979 (= c!35210 (and ((_ is Cons!2465) (t!7403 (toList!1259 (map!2028 thiss!1248)))) (bvslt (_1!1788 (h!3106 (t!7403 (toList!1259 (map!2028 thiss!1248))))) (_1!1788 lt!96700))))))

(assert (=> d!56979 (isStrictlySorted!352 (t!7403 (toList!1259 (map!2028 thiss!1248))))))

(assert (=> d!56979 (= (insertStrictlySorted!135 (t!7403 (toList!1259 (map!2028 thiss!1248))) (_1!1788 lt!96700) (_2!1788 lt!96700)) lt!97243)))

(declare-fun bm!19707 () Bool)

(assert (=> bm!19707 (= call!19708 call!19709)))

(declare-fun b!194843 () Bool)

(assert (=> b!194843 (= e!128162 call!19710)))

(declare-fun b!194844 () Bool)

(assert (=> b!194844 (= e!128160 (insertStrictlySorted!135 (t!7403 (t!7403 (toList!1259 (map!2028 thiss!1248)))) (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun b!194845 () Bool)

(assert (=> b!194845 (= e!128162 call!19710)))

(declare-fun b!194846 () Bool)

(declare-fun res!92054 () Bool)

(assert (=> b!194846 (=> (not res!92054) (not e!128163))))

(assert (=> b!194846 (= res!92054 (containsKey!248 lt!97243 (_1!1788 lt!96700)))))

(declare-fun b!194847 () Bool)

(assert (=> b!194847 (= e!128161 call!19709)))

(declare-fun b!194848 () Bool)

(assert (=> b!194848 (= e!128160 (ite c!35212 (t!7403 (t!7403 (toList!1259 (map!2028 thiss!1248)))) (ite c!35211 (Cons!2465 (h!3106 (t!7403 (toList!1259 (map!2028 thiss!1248)))) (t!7403 (t!7403 (toList!1259 (map!2028 thiss!1248))))) Nil!2466)))))

(assert (= (and d!56979 c!35210) b!194847))

(assert (= (and d!56979 (not c!35210)) b!194842))

(assert (= (and b!194842 c!35212) b!194839))

(assert (= (and b!194842 (not c!35212)) b!194840))

(assert (= (and b!194840 c!35211) b!194845))

(assert (= (and b!194840 (not c!35211)) b!194843))

(assert (= (or b!194845 b!194843) bm!19706))

(assert (= (or b!194839 bm!19706) bm!19707))

(assert (= (or b!194847 bm!19707) bm!19705))

(assert (= (and bm!19705 c!35209) b!194844))

(assert (= (and bm!19705 (not c!35209)) b!194848))

(assert (= (and d!56979 res!92053) b!194846))

(assert (= (and b!194846 res!92054) b!194841))

(declare-fun m!222103 () Bool)

(assert (=> bm!19705 m!222103))

(declare-fun m!222105 () Bool)

(assert (=> b!194846 m!222105))

(declare-fun m!222107 () Bool)

(assert (=> b!194841 m!222107))

(declare-fun m!222109 () Bool)

(assert (=> b!194844 m!222109))

(declare-fun m!222111 () Bool)

(assert (=> d!56979 m!222111))

(declare-fun m!222113 () Bool)

(assert (=> d!56979 m!222113))

(assert (=> b!194305 d!56979))

(declare-fun b!194849 () Bool)

(declare-fun e!128168 () ListLongMap!2487)

(declare-fun e!128169 () ListLongMap!2487)

(assert (=> b!194849 (= e!128168 e!128169)))

(declare-fun c!35216 () Bool)

(assert (=> b!194849 (= c!35216 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!194851 () Bool)

(declare-fun e!128171 () Bool)

(declare-fun lt!97250 () ListLongMap!2487)

(assert (=> b!194851 (= e!128171 (isEmpty!493 lt!97250))))

(declare-fun b!194852 () Bool)

(declare-fun call!19711 () ListLongMap!2487)

(assert (=> b!194852 (= e!128169 call!19711)))

(declare-fun b!194853 () Bool)

(declare-fun e!128170 () Bool)

(declare-fun e!128166 () Bool)

(assert (=> b!194853 (= e!128170 e!128166)))

(assert (=> b!194853 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!92055 () Bool)

(assert (=> b!194853 (= res!92055 (contains!1378 lt!97250 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!194853 (=> (not res!92055) (not e!128166))))

(declare-fun b!194854 () Bool)

(declare-fun e!128167 () Bool)

(assert (=> b!194854 (= e!128167 e!128170)))

(declare-fun c!35215 () Bool)

(declare-fun e!128165 () Bool)

(assert (=> b!194854 (= c!35215 e!128165)))

(declare-fun res!92056 () Bool)

(assert (=> b!194854 (=> (not res!92056) (not e!128165))))

(assert (=> b!194854 (= res!92056 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194855 () Bool)

(assert (=> b!194855 (= e!128165 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!194855 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!194856 () Bool)

(assert (=> b!194856 (= e!128168 (ListLongMap!2488 Nil!2466))))

(declare-fun b!194857 () Bool)

(assert (=> b!194857 (= e!128171 (= lt!97250 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248))))))

(declare-fun bm!19708 () Bool)

(assert (=> bm!19708 (= call!19711 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)))))

(declare-fun b!194858 () Bool)

(assert (=> b!194858 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!194858 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4199 (_values!3943 thiss!1248))))))

(assert (=> b!194858 (= e!128166 (= (apply!188 lt!97250 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194850 () Bool)

(declare-fun lt!97247 () Unit!5875)

(declare-fun lt!97248 () Unit!5875)

(assert (=> b!194850 (= lt!97247 lt!97248)))

(declare-fun lt!97249 () ListLongMap!2487)

(declare-fun lt!97246 () (_ BitVec 64))

(declare-fun lt!97244 () (_ BitVec 64))

(declare-fun lt!97245 () V!5635)

(assert (=> b!194850 (not (contains!1378 (+!317 lt!97249 (tuple2!3557 lt!97246 lt!97245)) lt!97244))))

(assert (=> b!194850 (= lt!97248 (addStillNotContains!99 lt!97249 lt!97246 lt!97245 lt!97244))))

(assert (=> b!194850 (= lt!97244 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!194850 (= lt!97245 (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!194850 (= lt!97246 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!194850 (= lt!97249 call!19711)))

(assert (=> b!194850 (= e!128169 (+!317 call!19711 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!2238 (select (arr!3875 (_values!3943 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!56981 () Bool)

(assert (=> d!56981 e!128167))

(declare-fun res!92058 () Bool)

(assert (=> d!56981 (=> (not res!92058) (not e!128167))))

(assert (=> d!56981 (= res!92058 (not (contains!1378 lt!97250 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56981 (= lt!97250 e!128168)))

(declare-fun c!35213 () Bool)

(assert (=> d!56981 (= c!35213 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56981 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!56981 (= (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)) lt!97250)))

(declare-fun b!194859 () Bool)

(assert (=> b!194859 (= e!128170 e!128171)))

(declare-fun c!35214 () Bool)

(assert (=> b!194859 (= c!35214 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194860 () Bool)

(declare-fun res!92057 () Bool)

(assert (=> b!194860 (=> (not res!92057) (not e!128167))))

(assert (=> b!194860 (= res!92057 (not (contains!1378 lt!97250 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56981 c!35213) b!194856))

(assert (= (and d!56981 (not c!35213)) b!194849))

(assert (= (and b!194849 c!35216) b!194850))

(assert (= (and b!194849 (not c!35216)) b!194852))

(assert (= (or b!194850 b!194852) bm!19708))

(assert (= (and d!56981 res!92058) b!194860))

(assert (= (and b!194860 res!92057) b!194854))

(assert (= (and b!194854 res!92056) b!194855))

(assert (= (and b!194854 c!35215) b!194853))

(assert (= (and b!194854 (not c!35215)) b!194859))

(assert (= (and b!194853 res!92055) b!194858))

(assert (= (and b!194859 c!35214) b!194857))

(assert (= (and b!194859 (not c!35214)) b!194851))

(declare-fun b_lambda!7543 () Bool)

(assert (=> (not b_lambda!7543) (not b!194858)))

(assert (=> b!194858 t!7406))

(declare-fun b_and!11475 () Bool)

(assert (= b_and!11473 (and (=> t!7406 result!4947) b_and!11475)))

(declare-fun b_lambda!7545 () Bool)

(assert (=> (not b_lambda!7545) (not b!194850)))

(assert (=> b!194850 t!7406))

(declare-fun b_and!11477 () Bool)

(assert (= b_and!11475 (and (=> t!7406 result!4947) b_and!11477)))

(declare-fun m!222115 () Bool)

(assert (=> d!56981 m!222115))

(assert (=> d!56981 m!220833))

(declare-fun m!222117 () Bool)

(assert (=> bm!19708 m!222117))

(declare-fun m!222119 () Bool)

(assert (=> b!194850 m!222119))

(declare-fun m!222121 () Bool)

(assert (=> b!194850 m!222121))

(declare-fun m!222123 () Bool)

(assert (=> b!194850 m!222123))

(assert (=> b!194850 m!220859))

(declare-fun m!222125 () Bool)

(assert (=> b!194850 m!222125))

(assert (=> b!194850 m!222121))

(declare-fun m!222127 () Bool)

(assert (=> b!194850 m!222127))

(assert (=> b!194850 m!221961))

(declare-fun m!222129 () Bool)

(assert (=> b!194850 m!222129))

(assert (=> b!194850 m!220859))

(assert (=> b!194850 m!222123))

(assert (=> b!194855 m!221961))

(assert (=> b!194855 m!221961))

(assert (=> b!194855 m!221963))

(declare-fun m!222131 () Bool)

(assert (=> b!194851 m!222131))

(assert (=> b!194853 m!221961))

(assert (=> b!194853 m!221961))

(declare-fun m!222133 () Bool)

(assert (=> b!194853 m!222133))

(declare-fun m!222135 () Bool)

(assert (=> b!194860 m!222135))

(assert (=> b!194857 m!222117))

(assert (=> b!194858 m!222123))

(assert (=> b!194858 m!220859))

(assert (=> b!194858 m!222125))

(assert (=> b!194858 m!221961))

(declare-fun m!222137 () Bool)

(assert (=> b!194858 m!222137))

(assert (=> b!194858 m!221961))

(assert (=> b!194858 m!220859))

(assert (=> b!194858 m!222123))

(assert (=> b!194849 m!221961))

(assert (=> b!194849 m!221961))

(assert (=> b!194849 m!221963))

(assert (=> bm!19660 d!56981))

(declare-fun d!56983 () Bool)

(declare-fun e!128173 () Bool)

(assert (=> d!56983 e!128173))

(declare-fun res!92059 () Bool)

(assert (=> d!56983 (=> res!92059 e!128173)))

(declare-fun lt!97251 () Bool)

(assert (=> d!56983 (= res!92059 (not lt!97251))))

(declare-fun lt!97252 () Bool)

(assert (=> d!56983 (= lt!97251 lt!97252)))

(declare-fun lt!97253 () Unit!5875)

(declare-fun e!128172 () Unit!5875)

(assert (=> d!56983 (= lt!97253 e!128172)))

(declare-fun c!35217 () Bool)

(assert (=> d!56983 (= c!35217 lt!97252)))

(assert (=> d!56983 (= lt!97252 (containsKey!248 (toList!1259 lt!96936) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!56983 (= (contains!1378 lt!96936 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97251)))

(declare-fun b!194861 () Bool)

(declare-fun lt!97254 () Unit!5875)

(assert (=> b!194861 (= e!128172 lt!97254)))

(assert (=> b!194861 (= lt!97254 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96936) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194861 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96936) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194862 () Bool)

(declare-fun Unit!5910 () Unit!5875)

(assert (=> b!194862 (= e!128172 Unit!5910)))

(declare-fun b!194863 () Bool)

(assert (=> b!194863 (= e!128173 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96936) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!56983 c!35217) b!194861))

(assert (= (and d!56983 (not c!35217)) b!194862))

(assert (= (and d!56983 (not res!92059)) b!194863))

(assert (=> d!56983 m!220855))

(declare-fun m!222139 () Bool)

(assert (=> d!56983 m!222139))

(assert (=> b!194861 m!220855))

(declare-fun m!222141 () Bool)

(assert (=> b!194861 m!222141))

(assert (=> b!194861 m!220855))

(declare-fun m!222143 () Bool)

(assert (=> b!194861 m!222143))

(assert (=> b!194861 m!222143))

(declare-fun m!222145 () Bool)

(assert (=> b!194861 m!222145))

(assert (=> b!194863 m!220855))

(assert (=> b!194863 m!222143))

(assert (=> b!194863 m!222143))

(assert (=> b!194863 m!222145))

(assert (=> b!194234 d!56983))

(declare-fun d!56985 () Bool)

(declare-fun res!92060 () Bool)

(declare-fun e!128174 () Bool)

(assert (=> d!56985 (=> res!92060 e!128174)))

(assert (=> d!56985 (= res!92060 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (= (_1!1788 (h!3106 (toList!1259 lt!96867))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56985 (= (containsKey!248 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000) e!128174)))

(declare-fun b!194864 () Bool)

(declare-fun e!128175 () Bool)

(assert (=> b!194864 (= e!128174 e!128175)))

(declare-fun res!92061 () Bool)

(assert (=> b!194864 (=> (not res!92061) (not e!128175))))

(assert (=> b!194864 (= res!92061 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96867))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96867))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2465) (toList!1259 lt!96867)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96867))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!194865 () Bool)

(assert (=> b!194865 (= e!128175 (containsKey!248 (t!7403 (toList!1259 lt!96867)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!56985 (not res!92060)) b!194864))

(assert (= (and b!194864 res!92061) b!194865))

(declare-fun m!222147 () Bool)

(assert (=> b!194865 m!222147))

(assert (=> d!56669 d!56985))

(declare-fun d!56987 () Bool)

(declare-fun e!128177 () Bool)

(assert (=> d!56987 e!128177))

(declare-fun res!92062 () Bool)

(assert (=> d!56987 (=> res!92062 e!128177)))

(declare-fun lt!97255 () Bool)

(assert (=> d!56987 (= res!92062 (not lt!97255))))

(declare-fun lt!97256 () Bool)

(assert (=> d!56987 (= lt!97255 lt!97256)))

(declare-fun lt!97257 () Unit!5875)

(declare-fun e!128176 () Unit!5875)

(assert (=> d!56987 (= lt!97257 e!128176)))

(declare-fun c!35218 () Bool)

(assert (=> d!56987 (= c!35218 lt!97256)))

(assert (=> d!56987 (= lt!97256 (containsKey!248 (toList!1259 lt!97053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!56987 (= (contains!1378 lt!97053 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97255)))

(declare-fun b!194866 () Bool)

(declare-fun lt!97258 () Unit!5875)

(assert (=> b!194866 (= e!128176 lt!97258)))

(assert (=> b!194866 (= lt!97258 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194866 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194867 () Bool)

(declare-fun Unit!5911 () Unit!5875)

(assert (=> b!194867 (= e!128176 Unit!5911)))

(declare-fun b!194868 () Bool)

(assert (=> b!194868 (= e!128177 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97053) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!56987 c!35218) b!194866))

(assert (= (and d!56987 (not c!35218)) b!194867))

(assert (= (and d!56987 (not res!92062)) b!194868))

(declare-fun m!222149 () Bool)

(assert (=> d!56987 m!222149))

(declare-fun m!222151 () Bool)

(assert (=> b!194866 m!222151))

(declare-fun m!222153 () Bool)

(assert (=> b!194866 m!222153))

(assert (=> b!194866 m!222153))

(declare-fun m!222155 () Bool)

(assert (=> b!194866 m!222155))

(assert (=> b!194868 m!222153))

(assert (=> b!194868 m!222153))

(assert (=> b!194868 m!222155))

(assert (=> b!194411 d!56987))

(declare-fun d!56989 () Bool)

(assert (=> d!56989 (= (apply!188 lt!97108 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!97108) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7774 () Bool)

(assert (= bs!7774 d!56989))

(declare-fun m!222157 () Bool)

(assert (=> bs!7774 m!222157))

(assert (=> bs!7774 m!222157))

(declare-fun m!222159 () Bool)

(assert (=> bs!7774 m!222159))

(assert (=> b!194557 d!56989))

(declare-fun d!56991 () Bool)

(declare-fun lt!97261 () Bool)

(declare-fun content!155 (List!2471) (InoxSet (_ BitVec 64)))

(assert (=> d!56991 (= lt!97261 (select (content!155 Nil!2468) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!128182 () Bool)

(assert (=> d!56991 (= lt!97261 e!128182)))

(declare-fun res!92067 () Bool)

(assert (=> d!56991 (=> (not res!92067) (not e!128182))))

(assert (=> d!56991 (= res!92067 ((_ is Cons!2467) Nil!2468))))

(assert (=> d!56991 (= (contains!1381 Nil!2468 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97261)))

(declare-fun b!194873 () Bool)

(declare-fun e!128183 () Bool)

(assert (=> b!194873 (= e!128182 e!128183)))

(declare-fun res!92068 () Bool)

(assert (=> b!194873 (=> res!92068 e!128183)))

(assert (=> b!194873 (= res!92068 (= (h!3108 Nil!2468) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194874 () Bool)

(assert (=> b!194874 (= e!128183 (contains!1381 (t!7407 Nil!2468) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!56991 res!92067) b!194873))

(assert (= (and b!194873 (not res!92068)) b!194874))

(declare-fun m!222161 () Bool)

(assert (=> d!56991 m!222161))

(assert (=> d!56991 m!220855))

(declare-fun m!222163 () Bool)

(assert (=> d!56991 m!222163))

(assert (=> b!194874 m!220855))

(declare-fun m!222165 () Bool)

(assert (=> b!194874 m!222165))

(assert (=> b!194481 d!56991))

(assert (=> b!194381 d!56783))

(declare-fun b!194875 () Bool)

(declare-fun e!128186 () Bool)

(declare-fun e!128185 () Bool)

(assert (=> b!194875 (= e!128186 e!128185)))

(declare-fun c!35219 () Bool)

(assert (=> b!194875 (= c!35219 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!194876 () Bool)

(declare-fun e!128184 () Bool)

(declare-fun call!19712 () Bool)

(assert (=> b!194876 (= e!128184 call!19712)))

(declare-fun b!194877 () Bool)

(assert (=> b!194877 (= e!128185 e!128184)))

(declare-fun lt!97262 () (_ BitVec 64))

(assert (=> b!194877 (= lt!97262 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!97264 () Unit!5875)

(assert (=> b!194877 (= lt!97264 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5954 thiss!1248) lt!97262 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!194877 (arrayContainsKey!0 (_keys!5954 thiss!1248) lt!97262 #b00000000000000000000000000000000)))

(declare-fun lt!97263 () Unit!5875)

(assert (=> b!194877 (= lt!97263 lt!97264)))

(declare-fun res!92069 () Bool)

(assert (=> b!194877 (= res!92069 (= (seekEntryOrOpen!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) (Found!704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!194877 (=> (not res!92069) (not e!128184))))

(declare-fun d!56993 () Bool)

(declare-fun res!92070 () Bool)

(assert (=> d!56993 (=> res!92070 e!128186)))

(assert (=> d!56993 (= res!92070 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!56993 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) e!128186)))

(declare-fun bm!19709 () Bool)

(assert (=> bm!19709 (= call!19712 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194878 () Bool)

(assert (=> b!194878 (= e!128185 call!19712)))

(assert (= (and d!56993 (not res!92070)) b!194875))

(assert (= (and b!194875 c!35219) b!194877))

(assert (= (and b!194875 (not c!35219)) b!194878))

(assert (= (and b!194877 res!92069) b!194876))

(assert (= (or b!194876 b!194878) bm!19709))

(assert (=> b!194875 m!221961))

(assert (=> b!194875 m!221961))

(assert (=> b!194875 m!221963))

(assert (=> b!194877 m!221961))

(declare-fun m!222167 () Bool)

(assert (=> b!194877 m!222167))

(declare-fun m!222169 () Bool)

(assert (=> b!194877 m!222169))

(assert (=> b!194877 m!221961))

(declare-fun m!222171 () Bool)

(assert (=> b!194877 m!222171))

(declare-fun m!222173 () Bool)

(assert (=> bm!19709 m!222173))

(assert (=> bm!19641 d!56993))

(declare-fun d!56995 () Bool)

(assert (=> d!56995 (= (apply!188 lt!97108 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!97108) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7775 () Bool)

(assert (= bs!7775 d!56995))

(declare-fun m!222175 () Bool)

(assert (=> bs!7775 m!222175))

(assert (=> bs!7775 m!222175))

(declare-fun m!222177 () Bool)

(assert (=> bs!7775 m!222177))

(assert (=> b!194545 d!56995))

(declare-fun b!194880 () Bool)

(declare-fun e!128187 () Option!250)

(declare-fun e!128188 () Option!250)

(assert (=> b!194880 (= e!128187 e!128188)))

(declare-fun c!35221 () Bool)

(assert (=> b!194880 (= c!35221 (and ((_ is Cons!2465) (toList!1259 lt!97014)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97014))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))))

(declare-fun b!194879 () Bool)

(assert (=> b!194879 (= e!128187 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97014)))))))

(declare-fun b!194881 () Bool)

(assert (=> b!194881 (= e!128188 (getValueByKey!244 (t!7403 (toList!1259 lt!97014)) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun d!56997 () Bool)

(declare-fun c!35220 () Bool)

(assert (=> d!56997 (= c!35220 (and ((_ is Cons!2465) (toList!1259 lt!97014)) (= (_1!1788 (h!3106 (toList!1259 lt!97014))) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (=> d!56997 (= (getValueByKey!244 (toList!1259 lt!97014) (_1!1788 (ite (or c!34990 c!34991) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) e!128187)))

(declare-fun b!194882 () Bool)

(assert (=> b!194882 (= e!128188 None!248)))

(assert (= (and d!56997 c!35220) b!194879))

(assert (= (and d!56997 (not c!35220)) b!194880))

(assert (= (and b!194880 c!35221) b!194881))

(assert (= (and b!194880 (not c!35221)) b!194882))

(declare-fun m!222179 () Bool)

(assert (=> b!194881 m!222179))

(assert (=> b!194376 d!56997))

(declare-fun d!56999 () Bool)

(assert (=> d!56999 (= (validMask!0 (mask!9223 lt!96693)) (and (or (= (mask!9223 lt!96693) #b00000000000000000000000000000111) (= (mask!9223 lt!96693) #b00000000000000000000000000001111) (= (mask!9223 lt!96693) #b00000000000000000000000000011111) (= (mask!9223 lt!96693) #b00000000000000000000000000111111) (= (mask!9223 lt!96693) #b00000000000000000000000001111111) (= (mask!9223 lt!96693) #b00000000000000000000000011111111) (= (mask!9223 lt!96693) #b00000000000000000000000111111111) (= (mask!9223 lt!96693) #b00000000000000000000001111111111) (= (mask!9223 lt!96693) #b00000000000000000000011111111111) (= (mask!9223 lt!96693) #b00000000000000000000111111111111) (= (mask!9223 lt!96693) #b00000000000000000001111111111111) (= (mask!9223 lt!96693) #b00000000000000000011111111111111) (= (mask!9223 lt!96693) #b00000000000000000111111111111111) (= (mask!9223 lt!96693) #b00000000000000001111111111111111) (= (mask!9223 lt!96693) #b00000000000000011111111111111111) (= (mask!9223 lt!96693) #b00000000000000111111111111111111) (= (mask!9223 lt!96693) #b00000000000001111111111111111111) (= (mask!9223 lt!96693) #b00000000000011111111111111111111) (= (mask!9223 lt!96693) #b00000000000111111111111111111111) (= (mask!9223 lt!96693) #b00000000001111111111111111111111) (= (mask!9223 lt!96693) #b00000000011111111111111111111111) (= (mask!9223 lt!96693) #b00000000111111111111111111111111) (= (mask!9223 lt!96693) #b00000001111111111111111111111111) (= (mask!9223 lt!96693) #b00000011111111111111111111111111) (= (mask!9223 lt!96693) #b00000111111111111111111111111111) (= (mask!9223 lt!96693) #b00001111111111111111111111111111) (= (mask!9223 lt!96693) #b00011111111111111111111111111111) (= (mask!9223 lt!96693) #b00111111111111111111111111111111)) (bvsle (mask!9223 lt!96693) #b00111111111111111111111111111111)))))

(assert (=> d!56767 d!56999))

(declare-fun d!57001 () Bool)

(declare-fun res!92071 () Bool)

(declare-fun e!128189 () Bool)

(assert (=> d!57001 (=> res!92071 e!128189)))

(assert (=> d!57001 (= res!92071 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (= (_1!1788 (h!3106 (toList!1259 lt!96830))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!57001 (= (containsKey!248 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) e!128189)))

(declare-fun b!194883 () Bool)

(declare-fun e!128190 () Bool)

(assert (=> b!194883 (= e!128189 e!128190)))

(declare-fun res!92072 () Bool)

(assert (=> b!194883 (=> (not res!92072) (not e!128190))))

(assert (=> b!194883 (= res!92072 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96830))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96830))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))) ((_ is Cons!2465) (toList!1259 lt!96830)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96830))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun b!194884 () Bool)

(assert (=> b!194884 (= e!128190 (containsKey!248 (t!7403 (toList!1259 lt!96830)) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!57001 (not res!92071)) b!194883))

(assert (= (and b!194883 res!92072) b!194884))

(assert (=> b!194884 m!220855))

(declare-fun m!222181 () Bool)

(assert (=> b!194884 m!222181))

(assert (=> d!56769 d!57001))

(declare-fun d!57003 () Bool)

(declare-fun isEmpty!494 (List!2469) Bool)

(assert (=> d!57003 (= (isEmpty!493 lt!97053) (isEmpty!494 (toList!1259 lt!97053)))))

(declare-fun bs!7776 () Bool)

(assert (= bs!7776 d!57003))

(declare-fun m!222183 () Bool)

(assert (=> bs!7776 m!222183))

(assert (=> b!194402 d!57003))

(declare-fun d!57005 () Bool)

(declare-fun e!128192 () Bool)

(assert (=> d!57005 e!128192))

(declare-fun res!92073 () Bool)

(assert (=> d!57005 (=> res!92073 e!128192)))

(declare-fun lt!97265 () Bool)

(assert (=> d!57005 (= res!92073 (not lt!97265))))

(declare-fun lt!97266 () Bool)

(assert (=> d!57005 (= lt!97265 lt!97266)))

(declare-fun lt!97267 () Unit!5875)

(declare-fun e!128191 () Unit!5875)

(assert (=> d!57005 (= lt!97267 e!128191)))

(declare-fun c!35222 () Bool)

(assert (=> d!57005 (= c!35222 lt!97266)))

(assert (=> d!57005 (= lt!97266 (containsKey!248 (toList!1259 lt!97108) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57005 (= (contains!1378 lt!97108 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97265)))

(declare-fun b!194885 () Bool)

(declare-fun lt!97268 () Unit!5875)

(assert (=> b!194885 (= e!128191 lt!97268)))

(assert (=> b!194885 (= lt!97268 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97108) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194885 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97108) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194886 () Bool)

(declare-fun Unit!5912 () Unit!5875)

(assert (=> b!194886 (= e!128191 Unit!5912)))

(declare-fun b!194887 () Bool)

(assert (=> b!194887 (= e!128192 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97108) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57005 c!35222) b!194885))

(assert (= (and d!57005 (not c!35222)) b!194886))

(assert (= (and d!57005 (not res!92073)) b!194887))

(declare-fun m!222185 () Bool)

(assert (=> d!57005 m!222185))

(declare-fun m!222187 () Bool)

(assert (=> b!194885 m!222187))

(assert (=> b!194885 m!222157))

(assert (=> b!194885 m!222157))

(declare-fun m!222189 () Bool)

(assert (=> b!194885 m!222189))

(assert (=> b!194887 m!222157))

(assert (=> b!194887 m!222157))

(assert (=> b!194887 m!222189))

(assert (=> bm!19679 d!57005))

(assert (=> bm!19668 d!56743))

(declare-fun d!57007 () Bool)

(declare-fun e!128193 () Bool)

(assert (=> d!57007 e!128193))

(declare-fun res!92074 () Bool)

(assert (=> d!57007 (=> (not res!92074) (not e!128193))))

(declare-fun lt!97269 () ListLongMap!2487)

(assert (=> d!57007 (= res!92074 (contains!1378 lt!97269 (_1!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun lt!97272 () List!2469)

(assert (=> d!57007 (= lt!97269 (ListLongMap!2488 lt!97272))))

(declare-fun lt!97270 () Unit!5875)

(declare-fun lt!97271 () Unit!5875)

(assert (=> d!57007 (= lt!97270 lt!97271)))

(assert (=> d!57007 (= (getValueByKey!244 lt!97272 (_1!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57007 (= lt!97271 (lemmaContainsTupThenGetReturnValue!133 lt!97272 (_1!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57007 (= lt!97272 (insertStrictlySorted!135 (toList!1259 (ite c!35026 call!19648 (ite c!35027 call!19647 call!19645))) (_1!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57007 (= (+!317 (ite c!35026 call!19648 (ite c!35027 call!19647 call!19645)) (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97269)))

(declare-fun b!194888 () Bool)

(declare-fun res!92075 () Bool)

(assert (=> b!194888 (=> (not res!92075) (not e!128193))))

(assert (=> b!194888 (= res!92075 (= (getValueByKey!244 (toList!1259 lt!97269) (_1!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194889 () Bool)

(assert (=> b!194889 (= e!128193 (contains!1380 (toList!1259 lt!97269) (ite (or c!35026 c!35027) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (= (and d!57007 res!92074) b!194888))

(assert (= (and b!194888 res!92075) b!194889))

(declare-fun m!222191 () Bool)

(assert (=> d!57007 m!222191))

(declare-fun m!222193 () Bool)

(assert (=> d!57007 m!222193))

(declare-fun m!222195 () Bool)

(assert (=> d!57007 m!222195))

(declare-fun m!222197 () Bool)

(assert (=> d!57007 m!222197))

(declare-fun m!222199 () Bool)

(assert (=> b!194888 m!222199))

(declare-fun m!222201 () Bool)

(assert (=> b!194889 m!222201))

(assert (=> bm!19643 d!57007))

(declare-fun d!57009 () Bool)

(declare-fun e!128195 () Bool)

(assert (=> d!57009 e!128195))

(declare-fun res!92076 () Bool)

(assert (=> d!57009 (=> res!92076 e!128195)))

(declare-fun lt!97273 () Bool)

(assert (=> d!57009 (= res!92076 (not lt!97273))))

(declare-fun lt!97274 () Bool)

(assert (=> d!57009 (= lt!97273 lt!97274)))

(declare-fun lt!97275 () Unit!5875)

(declare-fun e!128194 () Unit!5875)

(assert (=> d!57009 (= lt!97275 e!128194)))

(declare-fun c!35223 () Bool)

(assert (=> d!57009 (= c!35223 lt!97274)))

(assert (=> d!57009 (= lt!97274 (containsKey!248 (toList!1259 lt!97034) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(assert (=> d!57009 (= (contains!1378 lt!97034 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!97273)))

(declare-fun b!194890 () Bool)

(declare-fun lt!97276 () Unit!5875)

(assert (=> b!194890 (= e!128194 lt!97276)))

(assert (=> b!194890 (= lt!97276 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97034) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(assert (=> b!194890 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97034) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun b!194891 () Bool)

(declare-fun Unit!5913 () Unit!5875)

(assert (=> b!194891 (= e!128194 Unit!5913)))

(declare-fun b!194892 () Bool)

(assert (=> b!194892 (= e!128195 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97034) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57009 c!35223) b!194890))

(assert (= (and d!57009 (not c!35223)) b!194891))

(assert (= (and d!57009 (not res!92076)) b!194892))

(declare-fun m!222203 () Bool)

(assert (=> d!57009 m!222203))

(declare-fun m!222205 () Bool)

(assert (=> b!194890 m!222205))

(assert (=> b!194890 m!221361))

(assert (=> b!194890 m!221361))

(declare-fun m!222207 () Bool)

(assert (=> b!194890 m!222207))

(assert (=> b!194892 m!221361))

(assert (=> b!194892 m!221361))

(assert (=> b!194892 m!222207))

(assert (=> d!56693 d!57009))

(declare-fun b!194894 () Bool)

(declare-fun e!128196 () Option!250)

(declare-fun e!128197 () Option!250)

(assert (=> b!194894 (= e!128196 e!128197)))

(declare-fun c!35225 () Bool)

(assert (=> b!194894 (= c!35225 (and ((_ is Cons!2465) lt!97037) (not (= (_1!1788 (h!3106 lt!97037)) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194893 () Bool)

(assert (=> b!194893 (= e!128196 (Some!249 (_2!1788 (h!3106 lt!97037))))))

(declare-fun b!194895 () Bool)

(assert (=> b!194895 (= e!128197 (getValueByKey!244 (t!7403 lt!97037) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun d!57011 () Bool)

(declare-fun c!35224 () Bool)

(assert (=> d!57011 (= c!35224 (and ((_ is Cons!2465) lt!97037) (= (_1!1788 (h!3106 lt!97037)) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(assert (=> d!57011 (= (getValueByKey!244 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) e!128196)))

(declare-fun b!194896 () Bool)

(assert (=> b!194896 (= e!128197 None!248)))

(assert (= (and d!57011 c!35224) b!194893))

(assert (= (and d!57011 (not c!35224)) b!194894))

(assert (= (and b!194894 c!35225) b!194895))

(assert (= (and b!194894 (not c!35225)) b!194896))

(declare-fun m!222209 () Bool)

(assert (=> b!194895 m!222209))

(assert (=> d!56693 d!57011))

(declare-fun d!57013 () Bool)

(assert (=> d!57013 (= (getValueByKey!244 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97277 () Unit!5875)

(assert (=> d!57013 (= lt!97277 (choose!1076 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun e!128198 () Bool)

(assert (=> d!57013 e!128198))

(declare-fun res!92077 () Bool)

(assert (=> d!57013 (=> (not res!92077) (not e!128198))))

(assert (=> d!57013 (= res!92077 (isStrictlySorted!352 lt!97037))))

(assert (=> d!57013 (= (lemmaContainsTupThenGetReturnValue!133 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!97277)))

(declare-fun b!194897 () Bool)

(declare-fun res!92078 () Bool)

(assert (=> b!194897 (=> (not res!92078) (not e!128198))))

(assert (=> b!194897 (= res!92078 (containsKey!248 lt!97037 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun b!194898 () Bool)

(assert (=> b!194898 (= e!128198 (contains!1380 lt!97037 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57013 res!92077) b!194897))

(assert (= (and b!194897 res!92078) b!194898))

(assert (=> d!57013 m!221355))

(declare-fun m!222211 () Bool)

(assert (=> d!57013 m!222211))

(declare-fun m!222213 () Bool)

(assert (=> d!57013 m!222213))

(declare-fun m!222215 () Bool)

(assert (=> b!194897 m!222215))

(declare-fun m!222217 () Bool)

(assert (=> b!194898 m!222217))

(assert (=> d!56693 d!57013))

(declare-fun e!128199 () List!2469)

(declare-fun call!19714 () List!2469)

(declare-fun bm!19710 () Bool)

(declare-fun c!35227 () Bool)

(assert (=> bm!19710 (= call!19714 ($colon$colon!102 e!128199 (ite c!35227 (h!3106 (toList!1259 lt!96823)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))))

(declare-fun c!35226 () Bool)

(assert (=> bm!19710 (= c!35226 c!35227)))

(declare-fun b!194899 () Bool)

(declare-fun e!128203 () List!2469)

(declare-fun call!19713 () List!2469)

(assert (=> b!194899 (= e!128203 call!19713)))

(declare-fun c!35228 () Bool)

(declare-fun b!194900 () Bool)

(assert (=> b!194900 (= c!35228 (and ((_ is Cons!2465) (toList!1259 lt!96823)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96823))) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(declare-fun e!128201 () List!2469)

(assert (=> b!194900 (= e!128203 e!128201)))

(declare-fun b!194901 () Bool)

(declare-fun e!128202 () Bool)

(declare-fun lt!97278 () List!2469)

(assert (=> b!194901 (= e!128202 (contains!1380 lt!97278 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(declare-fun bm!19711 () Bool)

(declare-fun call!19715 () List!2469)

(assert (=> bm!19711 (= call!19715 call!19713)))

(declare-fun b!194902 () Bool)

(declare-fun e!128200 () List!2469)

(assert (=> b!194902 (= e!128200 e!128203)))

(declare-fun c!35229 () Bool)

(assert (=> b!194902 (= c!35229 (and ((_ is Cons!2465) (toList!1259 lt!96823)) (= (_1!1788 (h!3106 (toList!1259 lt!96823))) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(declare-fun d!57015 () Bool)

(assert (=> d!57015 e!128202))

(declare-fun res!92079 () Bool)

(assert (=> d!57015 (=> (not res!92079) (not e!128202))))

(assert (=> d!57015 (= res!92079 (isStrictlySorted!352 lt!97278))))

(assert (=> d!57015 (= lt!97278 e!128200)))

(assert (=> d!57015 (= c!35227 (and ((_ is Cons!2465) (toList!1259 lt!96823)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96823))) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(assert (=> d!57015 (isStrictlySorted!352 (toList!1259 lt!96823))))

(assert (=> d!57015 (= (insertStrictlySorted!135 (toList!1259 lt!96823) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) lt!97278)))

(declare-fun bm!19712 () Bool)

(assert (=> bm!19712 (= call!19713 call!19714)))

(declare-fun b!194903 () Bool)

(assert (=> b!194903 (= e!128201 call!19715)))

(declare-fun b!194904 () Bool)

(assert (=> b!194904 (= e!128199 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96823)) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun b!194905 () Bool)

(assert (=> b!194905 (= e!128201 call!19715)))

(declare-fun b!194906 () Bool)

(declare-fun res!92080 () Bool)

(assert (=> b!194906 (=> (not res!92080) (not e!128202))))

(assert (=> b!194906 (= res!92080 (containsKey!248 lt!97278 (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun b!194907 () Bool)

(assert (=> b!194907 (= e!128200 call!19714)))

(declare-fun b!194908 () Bool)

(assert (=> b!194908 (= e!128199 (ite c!35229 (t!7403 (toList!1259 lt!96823)) (ite c!35228 (Cons!2465 (h!3106 (toList!1259 lt!96823)) (t!7403 (toList!1259 lt!96823))) Nil!2466)))))

(assert (= (and d!57015 c!35227) b!194907))

(assert (= (and d!57015 (not c!35227)) b!194902))

(assert (= (and b!194902 c!35229) b!194899))

(assert (= (and b!194902 (not c!35229)) b!194900))

(assert (= (and b!194900 c!35228) b!194905))

(assert (= (and b!194900 (not c!35228)) b!194903))

(assert (= (or b!194905 b!194903) bm!19711))

(assert (= (or b!194899 bm!19711) bm!19712))

(assert (= (or b!194907 bm!19712) bm!19710))

(assert (= (and bm!19710 c!35226) b!194904))

(assert (= (and bm!19710 (not c!35226)) b!194908))

(assert (= (and d!57015 res!92079) b!194906))

(assert (= (and b!194906 res!92080) b!194901))

(declare-fun m!222219 () Bool)

(assert (=> bm!19710 m!222219))

(declare-fun m!222221 () Bool)

(assert (=> b!194906 m!222221))

(declare-fun m!222223 () Bool)

(assert (=> b!194901 m!222223))

(declare-fun m!222225 () Bool)

(assert (=> b!194904 m!222225))

(declare-fun m!222227 () Bool)

(assert (=> d!57015 m!222227))

(declare-fun m!222229 () Bool)

(assert (=> d!57015 m!222229))

(assert (=> d!56693 d!57015))

(declare-fun d!57017 () Bool)

(declare-fun lt!97279 () Bool)

(assert (=> d!57017 (= lt!97279 (select (content!155 Nil!2468) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun e!128204 () Bool)

(assert (=> d!57017 (= lt!97279 e!128204)))

(declare-fun res!92081 () Bool)

(assert (=> d!57017 (=> (not res!92081) (not e!128204))))

(assert (=> d!57017 (= res!92081 ((_ is Cons!2467) Nil!2468))))

(assert (=> d!57017 (= (contains!1381 Nil!2468 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) lt!97279)))

(declare-fun b!194909 () Bool)

(declare-fun e!128205 () Bool)

(assert (=> b!194909 (= e!128204 e!128205)))

(declare-fun res!92082 () Bool)

(assert (=> b!194909 (=> res!92082 e!128205)))

(assert (=> b!194909 (= res!92082 (= (h!3108 Nil!2468) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!194910 () Bool)

(assert (=> b!194910 (= e!128205 (contains!1381 (t!7407 Nil!2468) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (= (and d!57017 res!92081) b!194909))

(assert (= (and b!194909 (not res!92082)) b!194910))

(assert (=> d!57017 m!222161))

(assert (=> d!57017 m!221425))

(declare-fun m!222231 () Bool)

(assert (=> d!57017 m!222231))

(assert (=> b!194910 m!221425))

(declare-fun m!222233 () Bool)

(assert (=> b!194910 m!222233))

(assert (=> b!194526 d!57017))

(declare-fun d!57019 () Bool)

(assert (=> d!57019 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!4252 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56737 d!57019))

(declare-fun b!194912 () Bool)

(declare-fun e!128206 () Option!250)

(declare-fun e!128207 () Option!250)

(assert (=> b!194912 (= e!128206 e!128207)))

(declare-fun c!35231 () Bool)

(assert (=> b!194912 (= c!35231 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96830))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!194911 () Bool)

(assert (=> b!194911 (= e!128206 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96830)))))))

(declare-fun b!194913 () Bool)

(assert (=> b!194913 (= e!128207 (getValueByKey!244 (t!7403 (toList!1259 lt!96830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!57021 () Bool)

(declare-fun c!35230 () Bool)

(assert (=> d!57021 (= c!35230 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (= (_1!1788 (h!3106 (toList!1259 lt!96830))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57021 (= (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000) e!128206)))

(declare-fun b!194914 () Bool)

(assert (=> b!194914 (= e!128207 None!248)))

(assert (= (and d!57021 c!35230) b!194911))

(assert (= (and d!57021 (not c!35230)) b!194912))

(assert (= (and b!194912 c!35231) b!194913))

(assert (= (and b!194912 (not c!35231)) b!194914))

(declare-fun m!222235 () Bool)

(assert (=> b!194913 m!222235))

(assert (=> d!56737 d!57021))

(declare-fun b!194916 () Bool)

(declare-fun e!128208 () Option!250)

(declare-fun e!128209 () Option!250)

(assert (=> b!194916 (= e!128208 e!128209)))

(declare-fun c!35233 () Bool)

(assert (=> b!194916 (= c!35233 (and ((_ is Cons!2465) (toList!1259 lt!96998)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96998))) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!194915 () Bool)

(assert (=> b!194915 (= e!128208 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96998)))))))

(declare-fun b!194917 () Bool)

(assert (=> b!194917 (= e!128209 (getValueByKey!244 (t!7403 (toList!1259 lt!96998)) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!57023 () Bool)

(declare-fun c!35232 () Bool)

(assert (=> d!57023 (= c!35232 (and ((_ is Cons!2465) (toList!1259 lt!96998)) (= (_1!1788 (h!3106 (toList!1259 lt!96998))) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57023 (= (getValueByKey!244 (toList!1259 lt!96998) (_1!1788 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) e!128208)))

(declare-fun b!194918 () Bool)

(assert (=> b!194918 (= e!128209 None!248)))

(assert (= (and d!57023 c!35232) b!194915))

(assert (= (and d!57023 (not c!35232)) b!194916))

(assert (= (and b!194916 c!35233) b!194917))

(assert (= (and b!194916 (not c!35233)) b!194918))

(declare-fun m!222237 () Bool)

(assert (=> b!194917 m!222237))

(assert (=> b!194367 d!57023))

(declare-fun b!194920 () Bool)

(declare-fun e!128210 () Option!250)

(declare-fun e!128211 () Option!250)

(assert (=> b!194920 (= e!128210 e!128211)))

(declare-fun c!35235 () Bool)

(assert (=> b!194920 (= c!35235 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96839))) (not (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96839)))) (_1!1788 lt!96700)))))))

(declare-fun b!194919 () Bool)

(assert (=> b!194919 (= e!128210 (Some!249 (_2!1788 (h!3106 (t!7403 (toList!1259 lt!96839))))))))

(declare-fun b!194921 () Bool)

(assert (=> b!194921 (= e!128211 (getValueByKey!244 (t!7403 (t!7403 (toList!1259 lt!96839))) (_1!1788 lt!96700)))))

(declare-fun d!57025 () Bool)

(declare-fun c!35234 () Bool)

(assert (=> d!57025 (= c!35234 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96839))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96839)))) (_1!1788 lt!96700))))))

(assert (=> d!57025 (= (getValueByKey!244 (t!7403 (toList!1259 lt!96839)) (_1!1788 lt!96700)) e!128210)))

(declare-fun b!194922 () Bool)

(assert (=> b!194922 (= e!128211 None!248)))

(assert (= (and d!57025 c!35234) b!194919))

(assert (= (and d!57025 (not c!35234)) b!194920))

(assert (= (and b!194920 c!35235) b!194921))

(assert (= (and b!194920 (not c!35235)) b!194922))

(declare-fun m!222239 () Bool)

(assert (=> b!194921 m!222239))

(assert (=> b!194487 d!57025))

(declare-fun b!194924 () Bool)

(declare-fun e!128212 () Option!250)

(declare-fun e!128213 () Option!250)

(assert (=> b!194924 (= e!128212 e!128213)))

(declare-fun c!35237 () Bool)

(assert (=> b!194924 (= c!35237 (and ((_ is Cons!2465) (toList!1259 lt!96989)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96989))) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))))

(declare-fun b!194923 () Bool)

(assert (=> b!194923 (= e!128212 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96989)))))))

(declare-fun b!194925 () Bool)

(assert (=> b!194925 (= e!128213 (getValueByKey!244 (t!7403 (toList!1259 lt!96989)) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))))))

(declare-fun d!57027 () Bool)

(declare-fun c!35236 () Bool)

(assert (=> d!57027 (= c!35236 (and ((_ is Cons!2465) (toList!1259 lt!96989)) (= (_1!1788 (h!3106 (toList!1259 lt!96989))) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))))))))

(assert (=> d!57027 (= (getValueByKey!244 (toList!1259 lt!96989) (_1!1788 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248)))) e!128212)))

(declare-fun b!194926 () Bool)

(assert (=> b!194926 (= e!128213 None!248)))

(assert (= (and d!57027 c!35236) b!194923))

(assert (= (and d!57027 (not c!35236)) b!194924))

(assert (= (and b!194924 c!35237) b!194925))

(assert (= (and b!194924 (not c!35237)) b!194926))

(declare-fun m!222241 () Bool)

(assert (=> b!194925 m!222241))

(assert (=> b!194362 d!57027))

(assert (=> b!194412 d!56959))

(declare-fun d!57029 () Bool)

(assert (=> d!57029 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun lt!97280 () Unit!5875)

(assert (=> d!57029 (= lt!97280 (choose!1075 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!128214 () Bool)

(assert (=> d!57029 e!128214))

(declare-fun res!92083 () Bool)

(assert (=> d!57029 (=> (not res!92083) (not e!128214))))

(assert (=> d!57029 (= res!92083 (isStrictlySorted!352 (toList!1259 lt!96830)))))

(assert (=> d!57029 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97280)))

(declare-fun b!194927 () Bool)

(assert (=> b!194927 (= e!128214 (containsKey!248 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!57029 res!92083) b!194927))

(assert (=> d!57029 m!220855))

(assert (=> d!57029 m!221521))

(assert (=> d!57029 m!221521))

(assert (=> d!57029 m!221615))

(assert (=> d!57029 m!220855))

(declare-fun m!222243 () Bool)

(assert (=> d!57029 m!222243))

(declare-fun m!222245 () Bool)

(assert (=> d!57029 m!222245))

(assert (=> b!194927 m!220855))

(assert (=> b!194927 m!221611))

(assert (=> b!194565 d!57029))

(assert (=> b!194565 d!56869))

(assert (=> b!194565 d!56871))

(assert (=> b!194354 d!56981))

(declare-fun d!57031 () Bool)

(declare-fun e!128215 () Bool)

(assert (=> d!57031 e!128215))

(declare-fun res!92084 () Bool)

(assert (=> d!57031 (=> (not res!92084) (not e!128215))))

(declare-fun lt!97281 () ListLongMap!2487)

(assert (=> d!57031 (= res!92084 (contains!1378 lt!97281 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97284 () List!2469)

(assert (=> d!57031 (= lt!97281 (ListLongMap!2488 lt!97284))))

(declare-fun lt!97282 () Unit!5875)

(declare-fun lt!97283 () Unit!5875)

(assert (=> d!57031 (= lt!97282 lt!97283)))

(assert (=> d!57031 (= (getValueByKey!244 lt!97284 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!57031 (= lt!97283 (lemmaContainsTupThenGetReturnValue!133 lt!97284 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!57031 (= lt!97284 (insertStrictlySorted!135 (toList!1259 call!19649) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!57031 (= (+!317 call!19649 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) lt!97281)))

(declare-fun b!194928 () Bool)

(declare-fun res!92085 () Bool)

(assert (=> b!194928 (=> (not res!92085) (not e!128215))))

(assert (=> b!194928 (= res!92085 (= (getValueByKey!244 (toList!1259 lt!97281) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!194929 () Bool)

(assert (=> b!194929 (= e!128215 (contains!1380 (toList!1259 lt!97281) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(assert (= (and d!57031 res!92084) b!194928))

(assert (= (and b!194928 res!92085) b!194929))

(declare-fun m!222247 () Bool)

(assert (=> d!57031 m!222247))

(declare-fun m!222249 () Bool)

(assert (=> d!57031 m!222249))

(declare-fun m!222251 () Bool)

(assert (=> d!57031 m!222251))

(declare-fun m!222253 () Bool)

(assert (=> d!57031 m!222253))

(declare-fun m!222255 () Bool)

(assert (=> b!194928 m!222255))

(declare-fun m!222257 () Bool)

(assert (=> b!194929 m!222257))

(assert (=> b!194233 d!57031))

(declare-fun d!57033 () Bool)

(assert (=> d!57033 (= (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!96819)) (v!4252 (getValueByKey!244 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!96819)))))

(assert (=> d!56705 d!57033))

(declare-fun b!194931 () Bool)

(declare-fun e!128216 () Option!250)

(declare-fun e!128217 () Option!250)

(assert (=> b!194931 (= e!128216 e!128217)))

(declare-fun c!35239 () Bool)

(assert (=> b!194931 (= c!35239 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))) lt!96819))))))

(declare-fun b!194930 () Bool)

(assert (=> b!194930 (= e!128216 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))))))

(declare-fun b!194932 () Bool)

(assert (=> b!194932 (= e!128217 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))) lt!96819))))

(declare-fun d!57035 () Bool)

(declare-fun c!35238 () Bool)

(assert (=> d!57035 (= c!35238 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))))) lt!96819)))))

(assert (=> d!57035 (= (getValueByKey!244 (toList!1259 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248)))) lt!96819) e!128216)))

(declare-fun b!194933 () Bool)

(assert (=> b!194933 (= e!128217 None!248)))

(assert (= (and d!57035 c!35238) b!194930))

(assert (= (and d!57035 (not c!35238)) b!194931))

(assert (= (and b!194931 c!35239) b!194932))

(assert (= (and b!194931 (not c!35239)) b!194933))

(declare-fun m!222259 () Bool)

(assert (=> b!194932 m!222259))

(assert (=> d!56705 d!57035))

(declare-fun d!57037 () Bool)

(declare-fun res!92086 () Bool)

(declare-fun e!128218 () Bool)

(assert (=> d!57037 (=> res!92086 e!128218)))

(assert (=> d!57037 (= res!92086 (or ((_ is Nil!2466) lt!96961) ((_ is Nil!2466) (t!7403 lt!96961))))))

(assert (=> d!57037 (= (isStrictlySorted!352 lt!96961) e!128218)))

(declare-fun b!194934 () Bool)

(declare-fun e!128219 () Bool)

(assert (=> b!194934 (= e!128218 e!128219)))

(declare-fun res!92087 () Bool)

(assert (=> b!194934 (=> (not res!92087) (not e!128219))))

(assert (=> b!194934 (= res!92087 (bvslt (_1!1788 (h!3106 lt!96961)) (_1!1788 (h!3106 (t!7403 lt!96961)))))))

(declare-fun b!194935 () Bool)

(assert (=> b!194935 (= e!128219 (isStrictlySorted!352 (t!7403 lt!96961)))))

(assert (= (and d!57037 (not res!92086)) b!194934))

(assert (= (and b!194934 res!92087) b!194935))

(declare-fun m!222261 () Bool)

(assert (=> b!194935 m!222261))

(assert (=> d!56627 d!57037))

(declare-fun d!57039 () Bool)

(declare-fun res!92088 () Bool)

(declare-fun e!128220 () Bool)

(assert (=> d!57039 (=> res!92088 e!128220)))

(assert (=> d!57039 (= res!92088 (or ((_ is Nil!2466) (toList!1259 (map!2028 thiss!1248))) ((_ is Nil!2466) (t!7403 (toList!1259 (map!2028 thiss!1248))))))))

(assert (=> d!57039 (= (isStrictlySorted!352 (toList!1259 (map!2028 thiss!1248))) e!128220)))

(declare-fun b!194936 () Bool)

(declare-fun e!128221 () Bool)

(assert (=> b!194936 (= e!128220 e!128221)))

(declare-fun res!92089 () Bool)

(assert (=> b!194936 (=> (not res!92089) (not e!128221))))

(assert (=> b!194936 (= res!92089 (bvslt (_1!1788 (h!3106 (toList!1259 (map!2028 thiss!1248)))) (_1!1788 (h!3106 (t!7403 (toList!1259 (map!2028 thiss!1248)))))))))

(declare-fun b!194937 () Bool)

(assert (=> b!194937 (= e!128221 (isStrictlySorted!352 (t!7403 (toList!1259 (map!2028 thiss!1248)))))))

(assert (= (and d!57039 (not res!92088)) b!194936))

(assert (= (and b!194936 res!92089) b!194937))

(assert (=> b!194937 m!222113))

(assert (=> d!56627 d!57039))

(declare-fun b!194938 () Bool)

(declare-fun e!128224 () Bool)

(declare-fun call!19716 () Bool)

(assert (=> b!194938 (= e!128224 call!19716)))

(declare-fun c!35240 () Bool)

(declare-fun bm!19713 () Bool)

(assert (=> bm!19713 (= call!19716 (arrayNoDuplicates!0 (_keys!5954 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!35240 (Cons!2467 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!35092 (Cons!2467 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) Nil!2468) Nil!2468)) (ite c!35092 (Cons!2467 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) Nil!2468) Nil!2468))))))

(declare-fun b!194939 () Bool)

(declare-fun e!128223 () Bool)

(assert (=> b!194939 (= e!128223 (contains!1381 (ite c!35092 (Cons!2467 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) Nil!2468) Nil!2468) (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!194940 () Bool)

(declare-fun e!128225 () Bool)

(assert (=> b!194940 (= e!128225 e!128224)))

(assert (=> b!194940 (= c!35240 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!57041 () Bool)

(declare-fun res!92092 () Bool)

(declare-fun e!128222 () Bool)

(assert (=> d!57041 (=> res!92092 e!128222)))

(assert (=> d!57041 (= res!92092 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!57041 (= (arrayNoDuplicates!0 (_keys!5954 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35092 (Cons!2467 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) Nil!2468) Nil!2468)) e!128222)))

(declare-fun b!194941 () Bool)

(assert (=> b!194941 (= e!128222 e!128225)))

(declare-fun res!92091 () Bool)

(assert (=> b!194941 (=> (not res!92091) (not e!128225))))

(assert (=> b!194941 (= res!92091 (not e!128223))))

(declare-fun res!92090 () Bool)

(assert (=> b!194941 (=> (not res!92090) (not e!128223))))

(assert (=> b!194941 (= res!92090 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!194942 () Bool)

(assert (=> b!194942 (= e!128224 call!19716)))

(assert (= (and d!57041 (not res!92092)) b!194941))

(assert (= (and b!194941 res!92090) b!194939))

(assert (= (and b!194941 res!92091) b!194940))

(assert (= (and b!194940 c!35240) b!194942))

(assert (= (and b!194940 (not c!35240)) b!194938))

(assert (= (or b!194942 b!194938) bm!19713))

(assert (=> bm!19713 m!221961))

(declare-fun m!222263 () Bool)

(assert (=> bm!19713 m!222263))

(assert (=> b!194939 m!221961))

(assert (=> b!194939 m!221961))

(declare-fun m!222265 () Bool)

(assert (=> b!194939 m!222265))

(assert (=> b!194940 m!221961))

(assert (=> b!194940 m!221961))

(assert (=> b!194940 m!221963))

(assert (=> b!194941 m!221961))

(assert (=> b!194941 m!221961))

(assert (=> b!194941 m!221963))

(assert (=> bm!19674 d!57041))

(declare-fun lt!97285 () Bool)

(declare-fun d!57043 () Bool)

(assert (=> d!57043 (= lt!97285 (select (content!154 (toList!1259 lt!97034)) (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))

(declare-fun e!128227 () Bool)

(assert (=> d!57043 (= lt!97285 e!128227)))

(declare-fun res!92093 () Bool)

(assert (=> d!57043 (=> (not res!92093) (not e!128227))))

(assert (=> d!57043 (= res!92093 ((_ is Cons!2465) (toList!1259 lt!97034)))))

(assert (=> d!57043 (= (contains!1380 (toList!1259 lt!97034) (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) lt!97285)))

(declare-fun b!194943 () Bool)

(declare-fun e!128226 () Bool)

(assert (=> b!194943 (= e!128227 e!128226)))

(declare-fun res!92094 () Bool)

(assert (=> b!194943 (=> res!92094 e!128226)))

(assert (=> b!194943 (= res!92094 (= (h!3106 (toList!1259 lt!97034)) (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))

(declare-fun b!194944 () Bool)

(assert (=> b!194944 (= e!128226 (contains!1380 (t!7403 (toList!1259 lt!97034)) (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))

(assert (= (and d!57043 res!92093) b!194943))

(assert (= (and b!194943 (not res!92094)) b!194944))

(declare-fun m!222267 () Bool)

(assert (=> d!57043 m!222267))

(declare-fun m!222269 () Bool)

(assert (=> d!57043 m!222269))

(declare-fun m!222271 () Bool)

(assert (=> b!194944 m!222271))

(assert (=> b!194394 d!57043))

(declare-fun d!57045 () Bool)

(assert (=> d!57045 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun bs!7777 () Bool)

(assert (= bs!7777 d!57045))

(assert (=> bs!7777 m!221503))

(declare-fun m!222273 () Bool)

(assert (=> bs!7777 m!222273))

(assert (=> b!194543 d!57045))

(declare-fun b!194946 () Bool)

(declare-fun e!128228 () Option!250)

(declare-fun e!128229 () Option!250)

(assert (=> b!194946 (= e!128228 e!128229)))

(declare-fun c!35242 () Bool)

(assert (=> b!194946 (= c!35242 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96867))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun b!194945 () Bool)

(assert (=> b!194945 (= e!128228 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96867)))))))

(declare-fun b!194947 () Bool)

(assert (=> b!194947 (= e!128229 (getValueByKey!244 (t!7403 (toList!1259 lt!96867)) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!57047 () Bool)

(declare-fun c!35241 () Bool)

(assert (=> d!57047 (= c!35241 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (= (_1!1788 (h!3106 (toList!1259 lt!96867))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!57047 (= (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) e!128228)))

(declare-fun b!194948 () Bool)

(assert (=> b!194948 (= e!128229 None!248)))

(assert (= (and d!57047 c!35241) b!194945))

(assert (= (and d!57047 (not c!35241)) b!194946))

(assert (= (and b!194946 c!35242) b!194947))

(assert (= (and b!194946 (not c!35242)) b!194948))

(assert (=> b!194947 m!220855))

(declare-fun m!222275 () Bool)

(assert (=> b!194947 m!222275))

(assert (=> b!194543 d!57047))

(assert (=> d!56759 d!56591))

(declare-fun b!194950 () Bool)

(declare-fun e!128230 () Option!250)

(declare-fun e!128231 () Option!250)

(assert (=> b!194950 (= e!128230 e!128231)))

(declare-fun c!35244 () Bool)

(assert (=> b!194950 (= c!35244 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96751))) (not (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96751)))) (_1!1788 lt!96700)))))))

(declare-fun b!194949 () Bool)

(assert (=> b!194949 (= e!128230 (Some!249 (_2!1788 (h!3106 (t!7403 (toList!1259 lt!96751))))))))

(declare-fun b!194951 () Bool)

(assert (=> b!194951 (= e!128231 (getValueByKey!244 (t!7403 (t!7403 (toList!1259 lt!96751))) (_1!1788 lt!96700)))))

(declare-fun d!57049 () Bool)

(declare-fun c!35243 () Bool)

(assert (=> d!57049 (= c!35243 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96751))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96751)))) (_1!1788 lt!96700))))))

(assert (=> d!57049 (= (getValueByKey!244 (t!7403 (toList!1259 lt!96751)) (_1!1788 lt!96700)) e!128230)))

(declare-fun b!194952 () Bool)

(assert (=> b!194952 (= e!128231 None!248)))

(assert (= (and d!57049 c!35243) b!194949))

(assert (= (and d!57049 (not c!35243)) b!194950))

(assert (= (and b!194950 c!35244) b!194951))

(assert (= (and b!194950 (not c!35244)) b!194952))

(declare-fun m!222277 () Bool)

(assert (=> b!194951 m!222277))

(assert (=> b!194418 d!57049))

(assert (=> d!56721 d!56723))

(assert (=> d!56721 d!56725))

(declare-fun d!57051 () Bool)

(assert (=> d!57051 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96698) key!828))))

(assert (=> d!57051 true))

(declare-fun _$12!450 () Unit!5875)

(assert (=> d!57051 (= (choose!1075 (toList!1259 lt!96698) key!828) _$12!450)))

(declare-fun bs!7778 () Bool)

(assert (= bs!7778 d!57051))

(assert (=> bs!7778 m!220931))

(assert (=> bs!7778 m!220931))

(assert (=> bs!7778 m!220933))

(assert (=> d!56721 d!57051))

(declare-fun d!57053 () Bool)

(declare-fun res!92095 () Bool)

(declare-fun e!128232 () Bool)

(assert (=> d!57053 (=> res!92095 e!128232)))

(assert (=> d!57053 (= res!92095 (or ((_ is Nil!2466) (toList!1259 lt!96698)) ((_ is Nil!2466) (t!7403 (toList!1259 lt!96698)))))))

(assert (=> d!57053 (= (isStrictlySorted!352 (toList!1259 lt!96698)) e!128232)))

(declare-fun b!194953 () Bool)

(declare-fun e!128233 () Bool)

(assert (=> b!194953 (= e!128232 e!128233)))

(declare-fun res!92096 () Bool)

(assert (=> b!194953 (=> (not res!92096) (not e!128233))))

(assert (=> b!194953 (= res!92096 (bvslt (_1!1788 (h!3106 (toList!1259 lt!96698))) (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698))))))))

(declare-fun b!194954 () Bool)

(assert (=> b!194954 (= e!128233 (isStrictlySorted!352 (t!7403 (toList!1259 lt!96698))))))

(assert (= (and d!57053 (not res!92095)) b!194953))

(assert (= (and b!194953 res!92096) b!194954))

(declare-fun m!222279 () Bool)

(assert (=> b!194954 m!222279))

(assert (=> d!56721 d!57053))

(declare-fun d!57055 () Bool)

(assert (=> d!57055 (arrayContainsKey!0 (_keys!5954 thiss!1248) lt!96904 #b00000000000000000000000000000000)))

(declare-fun lt!97286 () Unit!5875)

(assert (=> d!57055 (= lt!97286 (choose!13 (_keys!5954 thiss!1248) lt!96904 #b00000000000000000000000000000000))))

(assert (=> d!57055 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!57055 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5954 thiss!1248) lt!96904 #b00000000000000000000000000000000) lt!97286)))

(declare-fun bs!7779 () Bool)

(assert (= bs!7779 d!57055))

(assert (=> bs!7779 m!221027))

(declare-fun m!222281 () Bool)

(assert (=> bs!7779 m!222281))

(assert (=> b!194194 d!57055))

(declare-fun d!57057 () Bool)

(declare-fun res!92097 () Bool)

(declare-fun e!128234 () Bool)

(assert (=> d!57057 (=> res!92097 e!128234)))

(assert (=> d!57057 (= res!92097 (= (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) lt!96904))))

(assert (=> d!57057 (= (arrayContainsKey!0 (_keys!5954 thiss!1248) lt!96904 #b00000000000000000000000000000000) e!128234)))

(declare-fun b!194955 () Bool)

(declare-fun e!128235 () Bool)

(assert (=> b!194955 (= e!128234 e!128235)))

(declare-fun res!92098 () Bool)

(assert (=> b!194955 (=> (not res!92098) (not e!128235))))

(assert (=> b!194955 (= res!92098 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!194956 () Bool)

(assert (=> b!194956 (= e!128235 (arrayContainsKey!0 (_keys!5954 thiss!1248) lt!96904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!57057 (not res!92097)) b!194955))

(assert (= (and b!194955 res!92098) b!194956))

(assert (=> d!57057 m!220855))

(declare-fun m!222283 () Bool)

(assert (=> b!194956 m!222283))

(assert (=> b!194194 d!57057))

(declare-fun b!194957 () Bool)

(declare-fun e!128237 () SeekEntryResult!704)

(declare-fun e!128236 () SeekEntryResult!704)

(assert (=> b!194957 (= e!128237 e!128236)))

(declare-fun lt!97288 () (_ BitVec 64))

(declare-fun lt!97287 () SeekEntryResult!704)

(assert (=> b!194957 (= lt!97288 (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!97287)))))

(declare-fun c!35245 () Bool)

(assert (=> b!194957 (= c!35245 (= lt!97288 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!194958 () Bool)

(declare-fun e!128238 () SeekEntryResult!704)

(assert (=> b!194958 (= e!128238 (seekKeyOrZeroReturnVacant!0 (x!20700 lt!97287) (index!4988 lt!97287) (index!4988 lt!97287) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!194959 () Bool)

(declare-fun c!35246 () Bool)

(assert (=> b!194959 (= c!35246 (= lt!97288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194959 (= e!128236 e!128238)))

(declare-fun b!194960 () Bool)

(assert (=> b!194960 (= e!128237 Undefined!704)))

(declare-fun d!57059 () Bool)

(declare-fun lt!97289 () SeekEntryResult!704)

(assert (=> d!57059 (and (or ((_ is Undefined!704) lt!97289) (not ((_ is Found!704) lt!97289)) (and (bvsge (index!4987 lt!97289) #b00000000000000000000000000000000) (bvslt (index!4987 lt!97289) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97289) ((_ is Found!704) lt!97289) (not ((_ is MissingZero!704) lt!97289)) (and (bvsge (index!4986 lt!97289) #b00000000000000000000000000000000) (bvslt (index!4986 lt!97289) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97289) ((_ is Found!704) lt!97289) ((_ is MissingZero!704) lt!97289) (not ((_ is MissingVacant!704) lt!97289)) (and (bvsge (index!4989 lt!97289) #b00000000000000000000000000000000) (bvslt (index!4989 lt!97289) (size!4198 (_keys!5954 thiss!1248))))) (or ((_ is Undefined!704) lt!97289) (ite ((_ is Found!704) lt!97289) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!97289)) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!704) lt!97289) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4986 lt!97289)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!704) lt!97289) (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4989 lt!97289)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!57059 (= lt!97289 e!128237)))

(declare-fun c!35247 () Bool)

(assert (=> d!57059 (= c!35247 (and ((_ is Intermediate!704) lt!97287) (undefined!1516 lt!97287)))))

(assert (=> d!57059 (= lt!97287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (mask!9223 thiss!1248)) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(assert (=> d!57059 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!57059 (= (seekEntryOrOpen!0 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) lt!97289)))

(declare-fun b!194961 () Bool)

(assert (=> b!194961 (= e!128236 (Found!704 (index!4988 lt!97287)))))

(declare-fun b!194962 () Bool)

(assert (=> b!194962 (= e!128238 (MissingZero!704 (index!4988 lt!97287)))))

(assert (= (and d!57059 c!35247) b!194960))

(assert (= (and d!57059 (not c!35247)) b!194957))

(assert (= (and b!194957 c!35245) b!194961))

(assert (= (and b!194957 (not c!35245)) b!194959))

(assert (= (and b!194959 c!35246) b!194962))

(assert (= (and b!194959 (not c!35246)) b!194958))

(declare-fun m!222285 () Bool)

(assert (=> b!194957 m!222285))

(assert (=> b!194958 m!220855))

(declare-fun m!222287 () Bool)

(assert (=> b!194958 m!222287))

(declare-fun m!222289 () Bool)

(assert (=> d!57059 m!222289))

(declare-fun m!222291 () Bool)

(assert (=> d!57059 m!222291))

(assert (=> d!57059 m!220855))

(declare-fun m!222293 () Bool)

(assert (=> d!57059 m!222293))

(assert (=> d!57059 m!220833))

(declare-fun m!222295 () Bool)

(assert (=> d!57059 m!222295))

(declare-fun m!222297 () Bool)

(assert (=> d!57059 m!222297))

(assert (=> d!57059 m!220855))

(assert (=> d!57059 m!222291))

(assert (=> b!194194 d!57059))

(assert (=> b!194544 d!56959))

(declare-fun d!57061 () Bool)

(assert (=> d!57061 (= (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!96820)) (v!4252 (getValueByKey!244 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!96820)))))

(assert (=> d!56701 d!57061))

(declare-fun b!194964 () Bool)

(declare-fun e!128239 () Option!250)

(declare-fun e!128240 () Option!250)

(assert (=> b!194964 (= e!128239 e!128240)))

(declare-fun c!35249 () Bool)

(assert (=> b!194964 (= c!35249 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))) lt!96820))))))

(declare-fun b!194963 () Bool)

(assert (=> b!194963 (= e!128239 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))))

(declare-fun b!194965 () Bool)

(assert (=> b!194965 (= e!128240 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))) lt!96820))))

(declare-fun d!57063 () Bool)

(declare-fun c!35248 () Bool)

(assert (=> d!57063 (= c!35248 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))) lt!96820)))))

(assert (=> d!57063 (= (getValueByKey!244 (toList!1259 (+!317 lt!96838 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!96820) e!128239)))

(declare-fun b!194966 () Bool)

(assert (=> b!194966 (= e!128240 None!248)))

(assert (= (and d!57063 c!35248) b!194963))

(assert (= (and d!57063 (not c!35248)) b!194964))

(assert (= (and b!194964 c!35249) b!194965))

(assert (= (and b!194964 (not c!35249)) b!194966))

(declare-fun m!222299 () Bool)

(assert (=> b!194965 m!222299))

(assert (=> d!56701 d!57063))

(assert (=> d!56677 d!56683))

(assert (=> d!56677 d!56697))

(declare-fun d!57065 () Bool)

(assert (=> d!57065 (contains!1378 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) lt!96817)))

(assert (=> d!57065 true))

(declare-fun _$35!416 () Unit!5875)

(assert (=> d!57065 (= (choose!1078 lt!96821 lt!96837 (zeroValue!3801 thiss!1248) lt!96817) _$35!416)))

(declare-fun bs!7780 () Bool)

(assert (= bs!7780 d!57065))

(assert (=> bs!7780 m!220871))

(assert (=> bs!7780 m!220871))

(assert (=> bs!7780 m!220873))

(assert (=> d!56677 d!57065))

(declare-fun d!57067 () Bool)

(declare-fun e!128242 () Bool)

(assert (=> d!57067 e!128242))

(declare-fun res!92099 () Bool)

(assert (=> d!57067 (=> res!92099 e!128242)))

(declare-fun lt!97290 () Bool)

(assert (=> d!57067 (= res!92099 (not lt!97290))))

(declare-fun lt!97291 () Bool)

(assert (=> d!57067 (= lt!97290 lt!97291)))

(declare-fun lt!97292 () Unit!5875)

(declare-fun e!128241 () Unit!5875)

(assert (=> d!57067 (= lt!97292 e!128241)))

(declare-fun c!35250 () Bool)

(assert (=> d!57067 (= c!35250 lt!97291)))

(assert (=> d!57067 (= lt!97291 (containsKey!248 (toList!1259 lt!96821) lt!96817))))

(assert (=> d!57067 (= (contains!1378 lt!96821 lt!96817) lt!97290)))

(declare-fun b!194967 () Bool)

(declare-fun lt!97293 () Unit!5875)

(assert (=> b!194967 (= e!128241 lt!97293)))

(assert (=> b!194967 (= lt!97293 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96821) lt!96817))))

(assert (=> b!194967 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96821) lt!96817))))

(declare-fun b!194968 () Bool)

(declare-fun Unit!5914 () Unit!5875)

(assert (=> b!194968 (= e!128241 Unit!5914)))

(declare-fun b!194969 () Bool)

(assert (=> b!194969 (= e!128242 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96821) lt!96817)))))

(assert (= (and d!57067 c!35250) b!194967))

(assert (= (and d!57067 (not c!35250)) b!194968))

(assert (= (and d!57067 (not res!92099)) b!194969))

(declare-fun m!222301 () Bool)

(assert (=> d!57067 m!222301))

(declare-fun m!222303 () Bool)

(assert (=> b!194967 m!222303))

(declare-fun m!222305 () Bool)

(assert (=> b!194967 m!222305))

(assert (=> b!194967 m!222305))

(declare-fun m!222307 () Bool)

(assert (=> b!194967 m!222307))

(assert (=> b!194969 m!222305))

(assert (=> b!194969 m!222305))

(assert (=> b!194969 m!222307))

(assert (=> d!56677 d!57067))

(declare-fun d!57069 () Bool)

(declare-fun e!128244 () Bool)

(assert (=> d!57069 e!128244))

(declare-fun res!92100 () Bool)

(assert (=> d!57069 (=> res!92100 e!128244)))

(declare-fun lt!97294 () Bool)

(assert (=> d!57069 (= res!92100 (not lt!97294))))

(declare-fun lt!97295 () Bool)

(assert (=> d!57069 (= lt!97294 lt!97295)))

(declare-fun lt!97296 () Unit!5875)

(declare-fun e!128243 () Unit!5875)

(assert (=> d!57069 (= lt!97296 e!128243)))

(declare-fun c!35251 () Bool)

(assert (=> d!57069 (= c!35251 lt!97295)))

(assert (=> d!57069 (= lt!97295 (containsKey!248 (toList!1259 lt!97053) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57069 (= (contains!1378 lt!97053 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97294)))

(declare-fun b!194970 () Bool)

(declare-fun lt!97297 () Unit!5875)

(assert (=> b!194970 (= e!128243 lt!97297)))

(assert (=> b!194970 (= lt!97297 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97053) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194970 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97053) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!194971 () Bool)

(declare-fun Unit!5915 () Unit!5875)

(assert (=> b!194971 (= e!128243 Unit!5915)))

(declare-fun b!194972 () Bool)

(assert (=> b!194972 (= e!128244 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97053) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57069 c!35251) b!194970))

(assert (= (and d!57069 (not c!35251)) b!194971))

(assert (= (and d!57069 (not res!92100)) b!194972))

(declare-fun m!222309 () Bool)

(assert (=> d!57069 m!222309))

(declare-fun m!222311 () Bool)

(assert (=> b!194970 m!222311))

(declare-fun m!222313 () Bool)

(assert (=> b!194970 m!222313))

(assert (=> b!194970 m!222313))

(declare-fun m!222315 () Bool)

(assert (=> b!194970 m!222315))

(assert (=> b!194972 m!222313))

(assert (=> b!194972 m!222313))

(assert (=> b!194972 m!222315))

(assert (=> d!56707 d!57069))

(assert (=> d!56707 d!56605))

(declare-fun d!57071 () Bool)

(assert (=> d!57071 (isDefined!198 (getValueByKey!244 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun lt!97298 () Unit!5875)

(assert (=> d!57071 (= lt!97298 (choose!1075 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(declare-fun e!128245 () Bool)

(assert (=> d!57071 e!128245))

(declare-fun res!92101 () Bool)

(assert (=> d!57071 (=> (not res!92101) (not e!128245))))

(assert (=> d!57071 (= res!92101 (isStrictlySorted!352 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))))))

(assert (=> d!57071 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) lt!97298)))

(declare-fun b!194973 () Bool)

(assert (=> b!194973 (= e!128245 (containsKey!248 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (= (and d!57071 res!92101) b!194973))

(assert (=> d!57071 m!220737))

(assert (=> d!57071 m!221021))

(assert (=> d!57071 m!221021))

(assert (=> d!57071 m!221023))

(assert (=> d!57071 m!220737))

(declare-fun m!222317 () Bool)

(assert (=> d!57071 m!222317))

(declare-fun m!222319 () Bool)

(assert (=> d!57071 m!222319))

(assert (=> b!194973 m!220737))

(assert (=> b!194973 m!221017))

(assert (=> b!194181 d!57071))

(assert (=> b!194181 d!56919))

(assert (=> b!194181 d!56921))

(declare-fun d!57073 () Bool)

(assert (=> d!57073 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))) (v!4252 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!56745 d!57073))

(assert (=> d!56745 d!57047))

(declare-fun d!57075 () Bool)

(declare-fun e!128246 () Bool)

(assert (=> d!57075 e!128246))

(declare-fun res!92102 () Bool)

(assert (=> d!57075 (=> (not res!92102) (not e!128246))))

(declare-fun lt!97299 () ListLongMap!2487)

(assert (=> d!57075 (= res!92102 (contains!1378 lt!97299 (_1!1788 (tuple2!3557 lt!97049 lt!97048))))))

(declare-fun lt!97302 () List!2469)

(assert (=> d!57075 (= lt!97299 (ListLongMap!2488 lt!97302))))

(declare-fun lt!97300 () Unit!5875)

(declare-fun lt!97301 () Unit!5875)

(assert (=> d!57075 (= lt!97300 lt!97301)))

(assert (=> d!57075 (= (getValueByKey!244 lt!97302 (_1!1788 (tuple2!3557 lt!97049 lt!97048))) (Some!249 (_2!1788 (tuple2!3557 lt!97049 lt!97048))))))

(assert (=> d!57075 (= lt!97301 (lemmaContainsTupThenGetReturnValue!133 lt!97302 (_1!1788 (tuple2!3557 lt!97049 lt!97048)) (_2!1788 (tuple2!3557 lt!97049 lt!97048))))))

(assert (=> d!57075 (= lt!97302 (insertStrictlySorted!135 (toList!1259 lt!97052) (_1!1788 (tuple2!3557 lt!97049 lt!97048)) (_2!1788 (tuple2!3557 lt!97049 lt!97048))))))

(assert (=> d!57075 (= (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048)) lt!97299)))

(declare-fun b!194974 () Bool)

(declare-fun res!92103 () Bool)

(assert (=> b!194974 (=> (not res!92103) (not e!128246))))

(assert (=> b!194974 (= res!92103 (= (getValueByKey!244 (toList!1259 lt!97299) (_1!1788 (tuple2!3557 lt!97049 lt!97048))) (Some!249 (_2!1788 (tuple2!3557 lt!97049 lt!97048)))))))

(declare-fun b!194975 () Bool)

(assert (=> b!194975 (= e!128246 (contains!1380 (toList!1259 lt!97299) (tuple2!3557 lt!97049 lt!97048)))))

(assert (= (and d!57075 res!92102) b!194974))

(assert (= (and b!194974 res!92103) b!194975))

(declare-fun m!222321 () Bool)

(assert (=> d!57075 m!222321))

(declare-fun m!222323 () Bool)

(assert (=> d!57075 m!222323))

(declare-fun m!222325 () Bool)

(assert (=> d!57075 m!222325))

(declare-fun m!222327 () Bool)

(assert (=> d!57075 m!222327))

(declare-fun m!222329 () Bool)

(assert (=> b!194974 m!222329))

(declare-fun m!222331 () Bool)

(assert (=> b!194975 m!222331))

(assert (=> b!194401 d!57075))

(assert (=> b!194401 d!56755))

(declare-fun d!57077 () Bool)

(declare-fun e!128247 () Bool)

(assert (=> d!57077 e!128247))

(declare-fun res!92104 () Bool)

(assert (=> d!57077 (=> (not res!92104) (not e!128247))))

(declare-fun lt!97303 () ListLongMap!2487)

(assert (=> d!57077 (= res!92104 (contains!1378 lt!97303 (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!97306 () List!2469)

(assert (=> d!57077 (= lt!97303 (ListLongMap!2488 lt!97306))))

(declare-fun lt!97304 () Unit!5875)

(declare-fun lt!97305 () Unit!5875)

(assert (=> d!57077 (= lt!97304 lt!97305)))

(assert (=> d!57077 (= (getValueByKey!244 lt!97306 (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!249 (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!57077 (= lt!97305 (lemmaContainsTupThenGetReturnValue!133 lt!97306 (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!57077 (= lt!97306 (insertStrictlySorted!135 (toList!1259 call!19664) (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!57077 (= (+!317 call!19664 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!97303)))

(declare-fun b!194976 () Bool)

(declare-fun res!92105 () Bool)

(assert (=> b!194976 (=> (not res!92105) (not e!128247))))

(assert (=> b!194976 (= res!92105 (= (getValueByKey!244 (toList!1259 lt!97303) (_1!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!249 (_2!1788 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!194977 () Bool)

(assert (=> b!194977 (= e!128247 (contains!1380 (toList!1259 lt!97303) (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!57077 res!92104) b!194976))

(assert (= (and b!194976 res!92105) b!194977))

(declare-fun m!222333 () Bool)

(assert (=> d!57077 m!222333))

(declare-fun m!222335 () Bool)

(assert (=> d!57077 m!222335))

(declare-fun m!222337 () Bool)

(assert (=> d!57077 m!222337))

(declare-fun m!222339 () Bool)

(assert (=> d!57077 m!222339))

(declare-fun m!222341 () Bool)

(assert (=> b!194976 m!222341))

(declare-fun m!222343 () Bool)

(assert (=> b!194977 m!222343))

(assert (=> b!194401 d!57077))

(declare-fun d!57079 () Bool)

(assert (=> d!57079 (not (contains!1378 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048)) lt!97047))))

(declare-fun lt!97307 () Unit!5875)

(assert (=> d!57079 (= lt!97307 (choose!1079 lt!97052 lt!97049 lt!97048 lt!97047))))

(declare-fun e!128248 () Bool)

(assert (=> d!57079 e!128248))

(declare-fun res!92106 () Bool)

(assert (=> d!57079 (=> (not res!92106) (not e!128248))))

(assert (=> d!57079 (= res!92106 (not (contains!1378 lt!97052 lt!97047)))))

(assert (=> d!57079 (= (addStillNotContains!99 lt!97052 lt!97049 lt!97048 lt!97047) lt!97307)))

(declare-fun b!194978 () Bool)

(assert (=> b!194978 (= e!128248 (not (= lt!97049 lt!97047)))))

(assert (= (and d!57079 res!92106) b!194978))

(assert (=> d!57079 m!221411))

(assert (=> d!57079 m!221411))

(assert (=> d!57079 m!221413))

(declare-fun m!222345 () Bool)

(assert (=> d!57079 m!222345))

(declare-fun m!222347 () Bool)

(assert (=> d!57079 m!222347))

(assert (=> b!194401 d!57079))

(declare-fun d!57081 () Bool)

(declare-fun e!128250 () Bool)

(assert (=> d!57081 e!128250))

(declare-fun res!92107 () Bool)

(assert (=> d!57081 (=> res!92107 e!128250)))

(declare-fun lt!97308 () Bool)

(assert (=> d!57081 (= res!92107 (not lt!97308))))

(declare-fun lt!97309 () Bool)

(assert (=> d!57081 (= lt!97308 lt!97309)))

(declare-fun lt!97310 () Unit!5875)

(declare-fun e!128249 () Unit!5875)

(assert (=> d!57081 (= lt!97310 e!128249)))

(declare-fun c!35252 () Bool)

(assert (=> d!57081 (= c!35252 lt!97309)))

(assert (=> d!57081 (= lt!97309 (containsKey!248 (toList!1259 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048))) lt!97047))))

(assert (=> d!57081 (= (contains!1378 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048)) lt!97047) lt!97308)))

(declare-fun b!194979 () Bool)

(declare-fun lt!97311 () Unit!5875)

(assert (=> b!194979 (= e!128249 lt!97311)))

(assert (=> b!194979 (= lt!97311 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048))) lt!97047))))

(assert (=> b!194979 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048))) lt!97047))))

(declare-fun b!194980 () Bool)

(declare-fun Unit!5916 () Unit!5875)

(assert (=> b!194980 (= e!128249 Unit!5916)))

(declare-fun b!194981 () Bool)

(assert (=> b!194981 (= e!128250 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!97052 (tuple2!3557 lt!97049 lt!97048))) lt!97047)))))

(assert (= (and d!57081 c!35252) b!194979))

(assert (= (and d!57081 (not c!35252)) b!194980))

(assert (= (and d!57081 (not res!92107)) b!194981))

(declare-fun m!222349 () Bool)

(assert (=> d!57081 m!222349))

(declare-fun m!222351 () Bool)

(assert (=> b!194979 m!222351))

(declare-fun m!222353 () Bool)

(assert (=> b!194979 m!222353))

(assert (=> b!194979 m!222353))

(declare-fun m!222355 () Bool)

(assert (=> b!194979 m!222355))

(assert (=> b!194981 m!222353))

(assert (=> b!194981 m!222353))

(assert (=> b!194981 m!222355))

(assert (=> b!194401 d!57081))

(declare-fun d!57083 () Bool)

(assert (=> d!57083 (= (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))) (not ((_ is Some!249) (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))))

(assert (=> d!56673 d!57083))

(declare-fun d!57085 () Bool)

(declare-fun lt!97312 () Bool)

(assert (=> d!57085 (= lt!97312 (select (content!154 lt!96754) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun e!128252 () Bool)

(assert (=> d!57085 (= lt!97312 e!128252)))

(declare-fun res!92108 () Bool)

(assert (=> d!57085 (=> (not res!92108) (not e!128252))))

(assert (=> d!57085 (= res!92108 ((_ is Cons!2465) lt!96754))))

(assert (=> d!57085 (= (contains!1380 lt!96754 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))) lt!97312)))

(declare-fun b!194982 () Bool)

(declare-fun e!128251 () Bool)

(assert (=> b!194982 (= e!128252 e!128251)))

(declare-fun res!92109 () Bool)

(assert (=> b!194982 (=> res!92109 e!128251)))

(assert (=> b!194982 (= res!92109 (= (h!3106 lt!96754) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun b!194983 () Bool)

(assert (=> b!194983 (= e!128251 (contains!1380 (t!7403 lt!96754) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(assert (= (and d!57085 res!92108) b!194982))

(assert (= (and b!194982 (not res!92109)) b!194983))

(declare-fun m!222357 () Bool)

(assert (=> d!57085 m!222357))

(declare-fun m!222359 () Bool)

(assert (=> d!57085 m!222359))

(declare-fun m!222361 () Bool)

(assert (=> b!194983 m!222361))

(assert (=> b!194279 d!57085))

(declare-fun d!57087 () Bool)

(declare-fun e!128254 () Bool)

(assert (=> d!57087 e!128254))

(declare-fun res!92110 () Bool)

(assert (=> d!57087 (=> res!92110 e!128254)))

(declare-fun lt!97313 () Bool)

(assert (=> d!57087 (= res!92110 (not lt!97313))))

(declare-fun lt!97314 () Bool)

(assert (=> d!57087 (= lt!97313 lt!97314)))

(declare-fun lt!97315 () Unit!5875)

(declare-fun e!128253 () Unit!5875)

(assert (=> d!57087 (= lt!97315 e!128253)))

(declare-fun c!35253 () Bool)

(assert (=> d!57087 (= c!35253 lt!97314)))

(assert (=> d!57087 (= lt!97314 (containsKey!248 (toList!1259 lt!96833) lt!96819))))

(assert (=> d!57087 (= (contains!1378 lt!96833 lt!96819) lt!97313)))

(declare-fun b!194984 () Bool)

(declare-fun lt!97316 () Unit!5875)

(assert (=> b!194984 (= e!128253 lt!97316)))

(assert (=> b!194984 (= lt!97316 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96833) lt!96819))))

(assert (=> b!194984 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96833) lt!96819))))

(declare-fun b!194985 () Bool)

(declare-fun Unit!5917 () Unit!5875)

(assert (=> b!194985 (= e!128253 Unit!5917)))

(declare-fun b!194986 () Bool)

(assert (=> b!194986 (= e!128254 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96833) lt!96819)))))

(assert (= (and d!57087 c!35253) b!194984))

(assert (= (and d!57087 (not c!35253)) b!194985))

(assert (= (and d!57087 (not res!92110)) b!194986))

(declare-fun m!222363 () Bool)

(assert (=> d!57087 m!222363))

(declare-fun m!222365 () Bool)

(assert (=> b!194984 m!222365))

(assert (=> b!194984 m!221365))

(assert (=> b!194984 m!221365))

(declare-fun m!222367 () Bool)

(assert (=> b!194984 m!222367))

(assert (=> b!194986 m!221365))

(assert (=> b!194986 m!221365))

(assert (=> b!194986 m!222367))

(assert (=> d!56703 d!57087))

(assert (=> d!56703 d!56705))

(declare-fun d!57089 () Bool)

(assert (=> d!57089 (= (apply!188 (+!317 lt!96833 (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) lt!96819) (apply!188 lt!96833 lt!96819))))

(assert (=> d!57089 true))

(declare-fun _$34!1089 () Unit!5875)

(assert (=> d!57089 (= (choose!1077 lt!96833 lt!96824 (zeroValue!3801 thiss!1248) lt!96819) _$34!1089)))

(declare-fun bs!7781 () Bool)

(assert (= bs!7781 d!57089))

(assert (=> bs!7781 m!220883))

(assert (=> bs!7781 m!220883))

(assert (=> bs!7781 m!220885))

(assert (=> bs!7781 m!220889))

(assert (=> d!56703 d!57089))

(assert (=> d!56703 d!56695))

(assert (=> d!56703 d!56699))

(declare-fun d!57091 () Bool)

(assert (=> d!57091 (= (apply!188 lt!97108 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) (get!2239 (getValueByKey!244 (toList!1259 lt!97108) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))))

(declare-fun bs!7782 () Bool)

(assert (= bs!7782 d!57091))

(assert (=> bs!7782 m!221425))

(declare-fun m!222369 () Bool)

(assert (=> bs!7782 m!222369))

(assert (=> bs!7782 m!222369))

(declare-fun m!222371 () Bool)

(assert (=> bs!7782 m!222371))

(assert (=> b!194550 d!57091))

(declare-fun d!57093 () Bool)

(declare-fun c!35254 () Bool)

(assert (=> d!57093 (= c!35254 ((_ is ValueCellFull!1902) (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun e!128255 () V!5635)

(assert (=> d!57093 (= (get!2238 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000)) e!128255)))

(declare-fun b!194987 () Bool)

(assert (=> b!194987 (= e!128255 (get!2240 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!194988 () Bool)

(assert (=> b!194988 (= e!128255 (get!2241 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57093 c!35254) b!194987))

(assert (= (and d!57093 (not c!35254)) b!194988))

(assert (=> b!194987 m!221571))

(assert (=> b!194987 m!221567))

(declare-fun m!222373 () Bool)

(assert (=> b!194987 m!222373))

(assert (=> b!194988 m!221571))

(assert (=> b!194988 m!221567))

(declare-fun m!222375 () Bool)

(assert (=> b!194988 m!222375))

(assert (=> b!194550 d!57093))

(declare-fun d!57095 () Bool)

(declare-fun e!128257 () Bool)

(assert (=> d!57095 e!128257))

(declare-fun res!92111 () Bool)

(assert (=> d!57095 (=> res!92111 e!128257)))

(declare-fun lt!97317 () Bool)

(assert (=> d!57095 (= res!92111 (not lt!97317))))

(declare-fun lt!97318 () Bool)

(assert (=> d!57095 (= lt!97317 lt!97318)))

(declare-fun lt!97319 () Unit!5875)

(declare-fun e!128256 () Unit!5875)

(assert (=> d!57095 (= lt!97319 e!128256)))

(declare-fun c!35255 () Bool)

(assert (=> d!57095 (= c!35255 lt!97318)))

(assert (=> d!57095 (= lt!97318 (containsKey!248 (toList!1259 lt!97002) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!57095 (= (contains!1378 lt!97002 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!97317)))

(declare-fun b!194989 () Bool)

(declare-fun lt!97320 () Unit!5875)

(assert (=> b!194989 (= e!128256 lt!97320)))

(assert (=> b!194989 (= lt!97320 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97002) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(assert (=> b!194989 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97002) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194990 () Bool)

(declare-fun Unit!5918 () Unit!5875)

(assert (=> b!194990 (= e!128256 Unit!5918)))

(declare-fun b!194991 () Bool)

(assert (=> b!194991 (= e!128257 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97002) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!57095 c!35255) b!194989))

(assert (= (and d!57095 (not c!35255)) b!194990))

(assert (= (and d!57095 (not res!92111)) b!194991))

(declare-fun m!222377 () Bool)

(assert (=> d!57095 m!222377))

(declare-fun m!222379 () Bool)

(assert (=> b!194989 m!222379))

(assert (=> b!194989 m!221261))

(assert (=> b!194989 m!221261))

(declare-fun m!222381 () Bool)

(assert (=> b!194989 m!222381))

(assert (=> b!194991 m!221261))

(assert (=> b!194991 m!221261))

(assert (=> b!194991 m!222381))

(assert (=> d!56657 d!57095))

(declare-fun b!194993 () Bool)

(declare-fun e!128258 () Option!250)

(declare-fun e!128259 () Option!250)

(assert (=> b!194993 (= e!128258 e!128259)))

(declare-fun c!35257 () Bool)

(assert (=> b!194993 (= c!35257 (and ((_ is Cons!2465) lt!97005) (not (= (_1!1788 (h!3106 lt!97005)) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!194992 () Bool)

(assert (=> b!194992 (= e!128258 (Some!249 (_2!1788 (h!3106 lt!97005))))))

(declare-fun b!194994 () Bool)

(assert (=> b!194994 (= e!128259 (getValueByKey!244 (t!7403 lt!97005) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!57097 () Bool)

(declare-fun c!35256 () Bool)

(assert (=> d!57097 (= c!35256 (and ((_ is Cons!2465) lt!97005) (= (_1!1788 (h!3106 lt!97005)) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57097 (= (getValueByKey!244 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) e!128258)))

(declare-fun b!194995 () Bool)

(assert (=> b!194995 (= e!128259 None!248)))

(assert (= (and d!57097 c!35256) b!194992))

(assert (= (and d!57097 (not c!35256)) b!194993))

(assert (= (and b!194993 c!35257) b!194994))

(assert (= (and b!194993 (not c!35257)) b!194995))

(declare-fun m!222383 () Bool)

(assert (=> b!194994 m!222383))

(assert (=> d!56657 d!57097))

(declare-fun d!57099 () Bool)

(assert (=> d!57099 (= (getValueByKey!244 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97321 () Unit!5875)

(assert (=> d!57099 (= lt!97321 (choose!1076 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun e!128260 () Bool)

(assert (=> d!57099 e!128260))

(declare-fun res!92112 () Bool)

(assert (=> d!57099 (=> (not res!92112) (not e!128260))))

(assert (=> d!57099 (= res!92112 (isStrictlySorted!352 lt!97005))))

(assert (=> d!57099 (= (lemmaContainsTupThenGetReturnValue!133 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!97321)))

(declare-fun b!194996 () Bool)

(declare-fun res!92113 () Bool)

(assert (=> b!194996 (=> (not res!92113) (not e!128260))))

(assert (=> b!194996 (= res!92113 (containsKey!248 lt!97005 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!194997 () Bool)

(assert (=> b!194997 (= e!128260 (contains!1380 lt!97005 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!57099 res!92112) b!194996))

(assert (= (and b!194996 res!92113) b!194997))

(assert (=> d!57099 m!221255))

(declare-fun m!222385 () Bool)

(assert (=> d!57099 m!222385))

(declare-fun m!222387 () Bool)

(assert (=> d!57099 m!222387))

(declare-fun m!222389 () Bool)

(assert (=> b!194996 m!222389))

(declare-fun m!222391 () Bool)

(assert (=> b!194997 m!222391))

(assert (=> d!56657 d!57099))

(declare-fun call!19718 () List!2469)

(declare-fun e!128261 () List!2469)

(declare-fun c!35259 () Bool)

(declare-fun bm!19714 () Bool)

(assert (=> bm!19714 (= call!19718 ($colon$colon!102 e!128261 (ite c!35259 (h!3106 (toList!1259 lt!96858)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))))

(declare-fun c!35258 () Bool)

(assert (=> bm!19714 (= c!35258 c!35259)))

(declare-fun b!194998 () Bool)

(declare-fun e!128265 () List!2469)

(declare-fun call!19717 () List!2469)

(assert (=> b!194998 (= e!128265 call!19717)))

(declare-fun c!35260 () Bool)

(declare-fun b!194999 () Bool)

(assert (=> b!194999 (= c!35260 (and ((_ is Cons!2465) (toList!1259 lt!96858)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96858))) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(declare-fun e!128263 () List!2469)

(assert (=> b!194999 (= e!128265 e!128263)))

(declare-fun e!128264 () Bool)

(declare-fun b!195000 () Bool)

(declare-fun lt!97322 () List!2469)

(assert (=> b!195000 (= e!128264 (contains!1380 lt!97322 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(declare-fun bm!19715 () Bool)

(declare-fun call!19719 () List!2469)

(assert (=> bm!19715 (= call!19719 call!19717)))

(declare-fun b!195001 () Bool)

(declare-fun e!128262 () List!2469)

(assert (=> b!195001 (= e!128262 e!128265)))

(declare-fun c!35261 () Bool)

(assert (=> b!195001 (= c!35261 (and ((_ is Cons!2465) (toList!1259 lt!96858)) (= (_1!1788 (h!3106 (toList!1259 lt!96858))) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(declare-fun d!57101 () Bool)

(assert (=> d!57101 e!128264))

(declare-fun res!92114 () Bool)

(assert (=> d!57101 (=> (not res!92114) (not e!128264))))

(assert (=> d!57101 (= res!92114 (isStrictlySorted!352 lt!97322))))

(assert (=> d!57101 (= lt!97322 e!128262)))

(assert (=> d!57101 (= c!35259 (and ((_ is Cons!2465) (toList!1259 lt!96858)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96858))) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57101 (isStrictlySorted!352 (toList!1259 lt!96858))))

(assert (=> d!57101 (= (insertStrictlySorted!135 (toList!1259 lt!96858) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!97322)))

(declare-fun bm!19716 () Bool)

(assert (=> bm!19716 (= call!19717 call!19718)))

(declare-fun b!195002 () Bool)

(assert (=> b!195002 (= e!128263 call!19719)))

(declare-fun b!195003 () Bool)

(assert (=> b!195003 (= e!128261 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96858)) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!195004 () Bool)

(assert (=> b!195004 (= e!128263 call!19719)))

(declare-fun b!195005 () Bool)

(declare-fun res!92115 () Bool)

(assert (=> b!195005 (=> (not res!92115) (not e!128264))))

(assert (=> b!195005 (= res!92115 (containsKey!248 lt!97322 (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!195006 () Bool)

(assert (=> b!195006 (= e!128262 call!19718)))

(declare-fun b!195007 () Bool)

(assert (=> b!195007 (= e!128261 (ite c!35261 (t!7403 (toList!1259 lt!96858)) (ite c!35260 (Cons!2465 (h!3106 (toList!1259 lt!96858)) (t!7403 (toList!1259 lt!96858))) Nil!2466)))))

(assert (= (and d!57101 c!35259) b!195006))

(assert (= (and d!57101 (not c!35259)) b!195001))

(assert (= (and b!195001 c!35261) b!194998))

(assert (= (and b!195001 (not c!35261)) b!194999))

(assert (= (and b!194999 c!35260) b!195004))

(assert (= (and b!194999 (not c!35260)) b!195002))

(assert (= (or b!195004 b!195002) bm!19715))

(assert (= (or b!194998 bm!19715) bm!19716))

(assert (= (or b!195006 bm!19716) bm!19714))

(assert (= (and bm!19714 c!35258) b!195003))

(assert (= (and bm!19714 (not c!35258)) b!195007))

(assert (= (and d!57101 res!92114) b!195005))

(assert (= (and b!195005 res!92115) b!195000))

(declare-fun m!222393 () Bool)

(assert (=> bm!19714 m!222393))

(declare-fun m!222395 () Bool)

(assert (=> b!195005 m!222395))

(declare-fun m!222397 () Bool)

(assert (=> b!195000 m!222397))

(declare-fun m!222399 () Bool)

(assert (=> b!195003 m!222399))

(declare-fun m!222401 () Bool)

(assert (=> d!57101 m!222401))

(declare-fun m!222403 () Bool)

(assert (=> d!57101 m!222403))

(assert (=> d!56657 d!57101))

(declare-fun d!57103 () Bool)

(declare-fun res!92116 () Bool)

(declare-fun e!128266 () Bool)

(assert (=> d!57103 (=> res!92116 e!128266)))

(assert (=> d!57103 (= res!92116 (or ((_ is Nil!2466) lt!97126) ((_ is Nil!2466) (t!7403 lt!97126))))))

(assert (=> d!57103 (= (isStrictlySorted!352 lt!97126) e!128266)))

(declare-fun b!195008 () Bool)

(declare-fun e!128267 () Bool)

(assert (=> b!195008 (= e!128266 e!128267)))

(declare-fun res!92117 () Bool)

(assert (=> b!195008 (=> (not res!92117) (not e!128267))))

(assert (=> b!195008 (= res!92117 (bvslt (_1!1788 (h!3106 lt!97126)) (_1!1788 (h!3106 (t!7403 lt!97126)))))))

(declare-fun b!195009 () Bool)

(assert (=> b!195009 (= e!128267 (isStrictlySorted!352 (t!7403 lt!97126)))))

(assert (= (and d!57103 (not res!92116)) b!195008))

(assert (= (and b!195008 res!92117) b!195009))

(declare-fun m!222405 () Bool)

(assert (=> b!195009 m!222405))

(assert (=> d!56777 d!57103))

(assert (=> d!56777 d!57053))

(declare-fun d!57105 () Bool)

(assert (=> d!57105 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96838) lt!96820)) (v!4252 (getValueByKey!244 (toList!1259 lt!96838) lt!96820)))))

(assert (=> d!56679 d!57105))

(declare-fun b!195011 () Bool)

(declare-fun e!128268 () Option!250)

(declare-fun e!128269 () Option!250)

(assert (=> b!195011 (= e!128268 e!128269)))

(declare-fun c!35263 () Bool)

(assert (=> b!195011 (= c!35263 (and ((_ is Cons!2465) (toList!1259 lt!96838)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96838))) lt!96820))))))

(declare-fun b!195010 () Bool)

(assert (=> b!195010 (= e!128268 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96838)))))))

(declare-fun b!195012 () Bool)

(assert (=> b!195012 (= e!128269 (getValueByKey!244 (t!7403 (toList!1259 lt!96838)) lt!96820))))

(declare-fun d!57107 () Bool)

(declare-fun c!35262 () Bool)

(assert (=> d!57107 (= c!35262 (and ((_ is Cons!2465) (toList!1259 lt!96838)) (= (_1!1788 (h!3106 (toList!1259 lt!96838))) lt!96820)))))

(assert (=> d!57107 (= (getValueByKey!244 (toList!1259 lt!96838) lt!96820) e!128268)))

(declare-fun b!195013 () Bool)

(assert (=> b!195013 (= e!128269 None!248)))

(assert (= (and d!57107 c!35262) b!195010))

(assert (= (and d!57107 (not c!35262)) b!195011))

(assert (= (and b!195011 c!35263) b!195012))

(assert (= (and b!195011 (not c!35263)) b!195013))

(declare-fun m!222407 () Bool)

(assert (=> b!195012 m!222407))

(assert (=> d!56679 d!57107))

(declare-fun b!195014 () Bool)

(declare-fun e!128272 () Bool)

(declare-fun call!19720 () Bool)

(assert (=> b!195014 (= e!128272 call!19720)))

(declare-fun bm!19717 () Bool)

(declare-fun c!35264 () Bool)

(assert (=> bm!19717 (= call!19720 (arrayNoDuplicates!0 (_keys!5954 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!35264 (Cons!2467 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!35110 (Cons!2467 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) Nil!2468) Nil!2468)) (ite c!35110 (Cons!2467 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) Nil!2468) Nil!2468))))))

(declare-fun b!195015 () Bool)

(declare-fun e!128271 () Bool)

(assert (=> b!195015 (= e!128271 (contains!1381 (ite c!35110 (Cons!2467 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) Nil!2468) Nil!2468) (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!195016 () Bool)

(declare-fun e!128273 () Bool)

(assert (=> b!195016 (= e!128273 e!128272)))

(assert (=> b!195016 (= c!35264 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!57109 () Bool)

(declare-fun res!92120 () Bool)

(declare-fun e!128270 () Bool)

(assert (=> d!57109 (=> res!92120 e!128270)))

(assert (=> d!57109 (= res!92120 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!57109 (= (arrayNoDuplicates!0 (_keys!5954 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35110 (Cons!2467 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) Nil!2468) Nil!2468)) e!128270)))

(declare-fun b!195017 () Bool)

(assert (=> b!195017 (= e!128270 e!128273)))

(declare-fun res!92119 () Bool)

(assert (=> b!195017 (=> (not res!92119) (not e!128273))))

(assert (=> b!195017 (= res!92119 (not e!128271))))

(declare-fun res!92118 () Bool)

(assert (=> b!195017 (=> (not res!92118) (not e!128271))))

(assert (=> b!195017 (= res!92118 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!195018 () Bool)

(assert (=> b!195018 (= e!128272 call!19720)))

(assert (= (and d!57109 (not res!92120)) b!195017))

(assert (= (and b!195017 res!92118) b!195015))

(assert (= (and b!195017 res!92119) b!195016))

(assert (= (and b!195016 c!35264) b!195018))

(assert (= (and b!195016 (not c!35264)) b!195014))

(assert (= (or b!195018 b!195014) bm!19717))

(assert (=> bm!19717 m!221877))

(declare-fun m!222409 () Bool)

(assert (=> bm!19717 m!222409))

(assert (=> b!195015 m!221877))

(assert (=> b!195015 m!221877))

(declare-fun m!222411 () Bool)

(assert (=> b!195015 m!222411))

(assert (=> b!195016 m!221877))

(assert (=> b!195016 m!221877))

(assert (=> b!195016 m!221879))

(assert (=> b!195017 m!221877))

(assert (=> b!195017 m!221877))

(assert (=> b!195017 m!221879))

(assert (=> bm!19676 d!57109))

(declare-fun d!57111 () Bool)

(assert (=> d!57111 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96870) lt!96856)) (v!4252 (getValueByKey!244 (toList!1259 lt!96870) lt!96856)))))

(assert (=> d!56643 d!57111))

(declare-fun b!195020 () Bool)

(declare-fun e!128274 () Option!250)

(declare-fun e!128275 () Option!250)

(assert (=> b!195020 (= e!128274 e!128275)))

(declare-fun c!35266 () Bool)

(assert (=> b!195020 (= c!35266 (and ((_ is Cons!2465) (toList!1259 lt!96870)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96870))) lt!96856))))))

(declare-fun b!195019 () Bool)

(assert (=> b!195019 (= e!128274 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96870)))))))

(declare-fun b!195021 () Bool)

(assert (=> b!195021 (= e!128275 (getValueByKey!244 (t!7403 (toList!1259 lt!96870)) lt!96856))))

(declare-fun d!57113 () Bool)

(declare-fun c!35265 () Bool)

(assert (=> d!57113 (= c!35265 (and ((_ is Cons!2465) (toList!1259 lt!96870)) (= (_1!1788 (h!3106 (toList!1259 lt!96870))) lt!96856)))))

(assert (=> d!57113 (= (getValueByKey!244 (toList!1259 lt!96870) lt!96856) e!128274)))

(declare-fun b!195022 () Bool)

(assert (=> b!195022 (= e!128275 None!248)))

(assert (= (and d!57113 c!35265) b!195019))

(assert (= (and d!57113 (not c!35265)) b!195020))

(assert (= (and b!195020 c!35266) b!195021))

(assert (= (and b!195020 (not c!35266)) b!195022))

(declare-fun m!222413 () Bool)

(assert (=> b!195021 m!222413))

(assert (=> d!56643 d!57113))

(declare-fun d!57115 () Bool)

(declare-fun res!92121 () Bool)

(declare-fun e!128276 () Bool)

(assert (=> d!57115 (=> res!92121 e!128276)))

(assert (=> d!57115 (= res!92121 (and ((_ is Cons!2465) lt!97126) (= (_1!1788 (h!3106 lt!97126)) (_1!1788 lt!96700))))))

(assert (=> d!57115 (= (containsKey!248 lt!97126 (_1!1788 lt!96700)) e!128276)))

(declare-fun b!195023 () Bool)

(declare-fun e!128277 () Bool)

(assert (=> b!195023 (= e!128276 e!128277)))

(declare-fun res!92122 () Bool)

(assert (=> b!195023 (=> (not res!92122) (not e!128277))))

(assert (=> b!195023 (= res!92122 (and (or (not ((_ is Cons!2465) lt!97126)) (bvsle (_1!1788 (h!3106 lt!97126)) (_1!1788 lt!96700))) ((_ is Cons!2465) lt!97126) (bvslt (_1!1788 (h!3106 lt!97126)) (_1!1788 lt!96700))))))

(declare-fun b!195024 () Bool)

(assert (=> b!195024 (= e!128277 (containsKey!248 (t!7403 lt!97126) (_1!1788 lt!96700)))))

(assert (= (and d!57115 (not res!92121)) b!195023))

(assert (= (and b!195023 res!92122) b!195024))

(declare-fun m!222415 () Bool)

(assert (=> b!195024 m!222415))

(assert (=> b!194584 d!57115))

(declare-fun d!57117 () Bool)

(declare-fun c!35269 () Bool)

(assert (=> d!57117 (= c!35269 ((_ is Nil!2466) (toList!1259 lt!96751)))))

(declare-fun e!128280 () (InoxSet tuple2!3556))

(assert (=> d!57117 (= (content!154 (toList!1259 lt!96751)) e!128280)))

(declare-fun b!195029 () Bool)

(assert (=> b!195029 (= e!128280 ((as const (Array tuple2!3556 Bool)) false))))

(declare-fun b!195030 () Bool)

(assert (=> b!195030 (= e!128280 ((_ map or) (store ((as const (Array tuple2!3556 Bool)) false) (h!3106 (toList!1259 lt!96751)) true) (content!154 (t!7403 (toList!1259 lt!96751)))))))

(assert (= (and d!57117 c!35269) b!195029))

(assert (= (and d!57117 (not c!35269)) b!195030))

(declare-fun m!222417 () Bool)

(assert (=> b!195030 m!222417))

(declare-fun m!222419 () Bool)

(assert (=> b!195030 m!222419))

(assert (=> d!56763 d!57117))

(declare-fun d!57119 () Bool)

(declare-fun res!92123 () Bool)

(declare-fun e!128281 () Bool)

(assert (=> d!57119 (=> res!92123 e!128281)))

(assert (=> d!57119 (= res!92123 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) key!828)))))

(assert (=> d!57119 (= (containsKey!248 (t!7403 (toList!1259 lt!96698)) key!828) e!128281)))

(declare-fun b!195031 () Bool)

(declare-fun e!128282 () Bool)

(assert (=> b!195031 (= e!128281 e!128282)))

(declare-fun res!92124 () Bool)

(assert (=> b!195031 (=> (not res!92124) (not e!128282))))

(assert (=> b!195031 (= res!92124 (and (or (not ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698)))) (bvsle (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) key!828)) ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (bvslt (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) key!828)))))

(declare-fun b!195032 () Bool)

(assert (=> b!195032 (= e!128282 (containsKey!248 (t!7403 (t!7403 (toList!1259 lt!96698))) key!828))))

(assert (= (and d!57119 (not res!92123)) b!195031))

(assert (= (and b!195031 res!92124) b!195032))

(declare-fun m!222421 () Bool)

(assert (=> b!195032 m!222421))

(assert (=> b!194315 d!57119))

(assert (=> d!56775 d!56773))

(declare-fun d!57121 () Bool)

(assert (=> d!57121 (= (getValueByKey!244 lt!96842 (_1!1788 lt!96700)) (Some!249 (_2!1788 lt!96700)))))

(assert (=> d!57121 true))

(declare-fun _$22!540 () Unit!5875)

(assert (=> d!57121 (= (choose!1076 lt!96842 (_1!1788 lt!96700) (_2!1788 lt!96700)) _$22!540)))

(declare-fun bs!7783 () Bool)

(assert (= bs!7783 d!57121))

(assert (=> bs!7783 m!220905))

(assert (=> d!56775 d!57121))

(declare-fun d!57123 () Bool)

(declare-fun res!92125 () Bool)

(declare-fun e!128283 () Bool)

(assert (=> d!57123 (=> res!92125 e!128283)))

(assert (=> d!57123 (= res!92125 (or ((_ is Nil!2466) lt!96842) ((_ is Nil!2466) (t!7403 lt!96842))))))

(assert (=> d!57123 (= (isStrictlySorted!352 lt!96842) e!128283)))

(declare-fun b!195033 () Bool)

(declare-fun e!128284 () Bool)

(assert (=> b!195033 (= e!128283 e!128284)))

(declare-fun res!92126 () Bool)

(assert (=> b!195033 (=> (not res!92126) (not e!128284))))

(assert (=> b!195033 (= res!92126 (bvslt (_1!1788 (h!3106 lt!96842)) (_1!1788 (h!3106 (t!7403 lt!96842)))))))

(declare-fun b!195034 () Bool)

(assert (=> b!195034 (= e!128284 (isStrictlySorted!352 (t!7403 lt!96842)))))

(assert (= (and d!57123 (not res!92125)) b!195033))

(assert (= (and b!195033 res!92126) b!195034))

(declare-fun m!222423 () Bool)

(assert (=> b!195034 m!222423))

(assert (=> d!56775 d!57123))

(declare-fun d!57125 () Bool)

(assert (=> d!57125 (= (apply!188 lt!97053 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2239 (getValueByKey!244 (toList!1259 lt!97053) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7784 () Bool)

(assert (= bs!7784 d!57125))

(assert (=> bs!7784 m!220855))

(assert (=> bs!7784 m!221833))

(assert (=> bs!7784 m!221833))

(declare-fun m!222425 () Bool)

(assert (=> bs!7784 m!222425))

(assert (=> b!194409 d!57125))

(assert (=> b!194409 d!56755))

(assert (=> bm!19647 d!56819))

(declare-fun lt!97323 () Bool)

(declare-fun d!57127 () Bool)

(assert (=> d!57127 (= lt!97323 (select (content!154 (toList!1259 lt!97002)) (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))

(declare-fun e!128286 () Bool)

(assert (=> d!57127 (= lt!97323 e!128286)))

(declare-fun res!92127 () Bool)

(assert (=> d!57127 (=> (not res!92127) (not e!128286))))

(assert (=> d!57127 (= res!92127 ((_ is Cons!2465) (toList!1259 lt!97002)))))

(assert (=> d!57127 (= (contains!1380 (toList!1259 lt!97002) (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))) lt!97323)))

(declare-fun b!195035 () Bool)

(declare-fun e!128285 () Bool)

(assert (=> b!195035 (= e!128286 e!128285)))

(declare-fun res!92128 () Bool)

(assert (=> b!195035 (=> res!92128 e!128285)))

(assert (=> b!195035 (= res!92128 (= (h!3106 (toList!1259 lt!97002)) (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))

(declare-fun b!195036 () Bool)

(assert (=> b!195036 (= e!128285 (contains!1380 (t!7403 (toList!1259 lt!97002)) (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!57127 res!92127) b!195035))

(assert (= (and b!195035 (not res!92128)) b!195036))

(declare-fun m!222427 () Bool)

(assert (=> d!57127 m!222427))

(declare-fun m!222429 () Bool)

(assert (=> d!57127 m!222429))

(declare-fun m!222431 () Bool)

(assert (=> b!195036 m!222431))

(assert (=> b!194370 d!57127))

(declare-fun b!195037 () Bool)

(declare-fun e!128288 () Bool)

(declare-fun e!128289 () Bool)

(assert (=> b!195037 (= e!128288 e!128289)))

(declare-fun res!92131 () Bool)

(declare-fun lt!97325 () SeekEntryResult!704)

(assert (=> b!195037 (= res!92131 (and ((_ is Intermediate!704) lt!97325) (not (undefined!1516 lt!97325)) (bvslt (x!20700 lt!97325) #b01111111111111111111111111111110) (bvsge (x!20700 lt!97325) #b00000000000000000000000000000000) (bvsge (x!20700 lt!97325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!195037 (=> (not res!92131) (not e!128289))))

(declare-fun b!195038 () Bool)

(declare-fun e!128291 () SeekEntryResult!704)

(assert (=> b!195038 (= e!128291 (Intermediate!704 true (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!195039 () Bool)

(declare-fun e!128290 () SeekEntryResult!704)

(assert (=> b!195039 (= e!128291 e!128290)))

(declare-fun c!35270 () Bool)

(declare-fun lt!97324 () (_ BitVec 64))

(assert (=> b!195039 (= c!35270 (or (= lt!97324 key!828) (= (bvadd lt!97324 lt!97324) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!195040 () Bool)

(assert (=> b!195040 (and (bvsge (index!4988 lt!97325) #b00000000000000000000000000000000) (bvslt (index!4988 lt!97325) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!92130 () Bool)

(assert (=> b!195040 (= res!92130 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!97325)) key!828))))

(declare-fun e!128287 () Bool)

(assert (=> b!195040 (=> res!92130 e!128287)))

(assert (=> b!195040 (= e!128289 e!128287)))

(declare-fun b!195041 () Bool)

(assert (=> b!195041 (= e!128290 (Intermediate!704 false (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!195042 () Bool)

(assert (=> b!195042 (= e!128288 (bvsge (x!20700 lt!97325) #b01111111111111111111111111111110))))

(declare-fun d!57129 () Bool)

(assert (=> d!57129 e!128288))

(declare-fun c!35272 () Bool)

(assert (=> d!57129 (= c!35272 (and ((_ is Intermediate!704) lt!97325) (undefined!1516 lt!97325)))))

(assert (=> d!57129 (= lt!97325 e!128291)))

(declare-fun c!35271 () Bool)

(assert (=> d!57129 (= c!35271 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!57129 (= lt!97324 (select (arr!3874 (_keys!5954 thiss!1248)) (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248))))))

(assert (=> d!57129 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!57129 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)) lt!97325)))

(declare-fun b!195043 () Bool)

(assert (=> b!195043 (= e!128290 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (mask!9223 thiss!1248)) key!828 (_keys!5954 thiss!1248) (mask!9223 thiss!1248)))))

(declare-fun b!195044 () Bool)

(assert (=> b!195044 (and (bvsge (index!4988 lt!97325) #b00000000000000000000000000000000) (bvslt (index!4988 lt!97325) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!92129 () Bool)

(assert (=> b!195044 (= res!92129 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!97325)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!195044 (=> res!92129 e!128287)))

(declare-fun b!195045 () Bool)

(assert (=> b!195045 (and (bvsge (index!4988 lt!97325) #b00000000000000000000000000000000) (bvslt (index!4988 lt!97325) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!195045 (= e!128287 (= (select (arr!3874 (_keys!5954 thiss!1248)) (index!4988 lt!97325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57129 c!35271) b!195038))

(assert (= (and d!57129 (not c!35271)) b!195039))

(assert (= (and b!195039 c!35270) b!195041))

(assert (= (and b!195039 (not c!35270)) b!195043))

(assert (= (and d!57129 c!35272) b!195042))

(assert (= (and d!57129 (not c!35272)) b!195037))

(assert (= (and b!195037 res!92131) b!195040))

(assert (= (and b!195040 (not res!92130)) b!195044))

(assert (= (and b!195044 (not res!92129)) b!195045))

(assert (=> b!195043 m!221033))

(declare-fun m!222433 () Bool)

(assert (=> b!195043 m!222433))

(assert (=> b!195043 m!222433))

(declare-fun m!222435 () Bool)

(assert (=> b!195043 m!222435))

(assert (=> d!57129 m!221033))

(declare-fun m!222437 () Bool)

(assert (=> d!57129 m!222437))

(assert (=> d!57129 m!220833))

(declare-fun m!222439 () Bool)

(assert (=> b!195044 m!222439))

(assert (=> b!195045 m!222439))

(assert (=> b!195040 m!222439))

(assert (=> b!194220 d!57129))

(declare-fun d!57131 () Bool)

(declare-fun lt!97326 () (_ BitVec 32))

(assert (=> d!57131 (and (bvsge lt!97326 #b00000000000000000000000000000000) (bvslt lt!97326 (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001)))))

(assert (=> d!57131 (= lt!97326 (choose!52 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)))))

(assert (=> d!57131 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!57131 (= (nextIndex!0 (toIndex!0 key!828 (mask!9223 thiss!1248)) #b00000000000000000000000000000000 (mask!9223 thiss!1248)) lt!97326)))

(declare-fun bs!7785 () Bool)

(assert (= bs!7785 d!57131))

(assert (=> bs!7785 m!221005))

(declare-fun m!222441 () Bool)

(assert (=> bs!7785 m!222441))

(assert (=> bs!7785 m!220833))

(assert (=> b!194220 d!57131))

(declare-fun d!57133 () Bool)

(assert (=> d!57133 (= (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96697) key!828)) (not ((_ is Some!249) (getValueByKey!244 (toList!1259 lt!96697) key!828))))))

(assert (=> d!56615 d!57133))

(declare-fun b!195047 () Bool)

(declare-fun e!128292 () Option!250)

(declare-fun e!128293 () Option!250)

(assert (=> b!195047 (= e!128292 e!128293)))

(declare-fun c!35274 () Bool)

(assert (=> b!195047 (= c!35274 (and ((_ is Cons!2465) (toList!1259 lt!97034)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97034))) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))))

(declare-fun b!195046 () Bool)

(assert (=> b!195046 (= e!128292 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97034)))))))

(declare-fun b!195048 () Bool)

(assert (=> b!195048 (= e!128293 (getValueByKey!244 (t!7403 (toList!1259 lt!97034)) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))))))

(declare-fun d!57135 () Bool)

(declare-fun c!35273 () Bool)

(assert (=> d!57135 (= c!35273 (and ((_ is Cons!2465) (toList!1259 lt!97034)) (= (_1!1788 (h!3106 (toList!1259 lt!97034))) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))))))))

(assert (=> d!57135 (= (getValueByKey!244 (toList!1259 lt!97034) (_1!1788 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248)))) e!128292)))

(declare-fun b!195049 () Bool)

(assert (=> b!195049 (= e!128293 None!248)))

(assert (= (and d!57135 c!35273) b!195046))

(assert (= (and d!57135 (not c!35273)) b!195047))

(assert (= (and b!195047 c!35274) b!195048))

(assert (= (and b!195047 (not c!35274)) b!195049))

(declare-fun m!222443 () Bool)

(assert (=> b!195048 m!222443))

(assert (=> b!194393 d!57135))

(assert (=> d!56685 d!56691))

(assert (=> d!56685 d!56693))

(declare-fun d!57137 () Bool)

(assert (=> d!57137 (= (apply!188 (+!317 lt!96823 (tuple2!3557 lt!96831 (minValue!3801 thiss!1248))) lt!96835) (apply!188 lt!96823 lt!96835))))

(assert (=> d!57137 true))

(declare-fun _$34!1090 () Unit!5875)

(assert (=> d!57137 (= (choose!1077 lt!96823 lt!96831 (minValue!3801 thiss!1248) lt!96835) _$34!1090)))

(declare-fun bs!7786 () Bool)

(assert (= bs!7786 d!57137))

(assert (=> bs!7786 m!220875))

(assert (=> bs!7786 m!220875))

(assert (=> bs!7786 m!220877))

(assert (=> bs!7786 m!220893))

(assert (=> d!56685 d!57137))

(declare-fun d!57139 () Bool)

(declare-fun e!128295 () Bool)

(assert (=> d!57139 e!128295))

(declare-fun res!92132 () Bool)

(assert (=> d!57139 (=> res!92132 e!128295)))

(declare-fun lt!97327 () Bool)

(assert (=> d!57139 (= res!92132 (not lt!97327))))

(declare-fun lt!97328 () Bool)

(assert (=> d!57139 (= lt!97327 lt!97328)))

(declare-fun lt!97329 () Unit!5875)

(declare-fun e!128294 () Unit!5875)

(assert (=> d!57139 (= lt!97329 e!128294)))

(declare-fun c!35275 () Bool)

(assert (=> d!57139 (= c!35275 lt!97328)))

(assert (=> d!57139 (= lt!97328 (containsKey!248 (toList!1259 lt!96823) lt!96835))))

(assert (=> d!57139 (= (contains!1378 lt!96823 lt!96835) lt!97327)))

(declare-fun b!195050 () Bool)

(declare-fun lt!97330 () Unit!5875)

(assert (=> b!195050 (= e!128294 lt!97330)))

(assert (=> b!195050 (= lt!97330 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96823) lt!96835))))

(assert (=> b!195050 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96823) lt!96835))))

(declare-fun b!195051 () Bool)

(declare-fun Unit!5919 () Unit!5875)

(assert (=> b!195051 (= e!128294 Unit!5919)))

(declare-fun b!195052 () Bool)

(assert (=> b!195052 (= e!128295 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96823) lt!96835)))))

(assert (= (and d!57139 c!35275) b!195050))

(assert (= (and d!57139 (not c!35275)) b!195051))

(assert (= (and d!57139 (not res!92132)) b!195052))

(declare-fun m!222445 () Bool)

(assert (=> d!57139 m!222445))

(declare-fun m!222447 () Bool)

(assert (=> b!195050 m!222447))

(assert (=> b!195050 m!221349))

(assert (=> b!195050 m!221349))

(declare-fun m!222449 () Bool)

(assert (=> b!195050 m!222449))

(assert (=> b!195052 m!221349))

(assert (=> b!195052 m!221349))

(assert (=> b!195052 m!222449))

(assert (=> d!56685 d!57139))

(assert (=> d!56685 d!56689))

(declare-fun d!57141 () Bool)

(declare-fun e!128297 () Bool)

(assert (=> d!57141 e!128297))

(declare-fun res!92133 () Bool)

(assert (=> d!57141 (=> res!92133 e!128297)))

(declare-fun lt!97331 () Bool)

(assert (=> d!57141 (= res!92133 (not lt!97331))))

(declare-fun lt!97332 () Bool)

(assert (=> d!57141 (= lt!97331 lt!97332)))

(declare-fun lt!97333 () Unit!5875)

(declare-fun e!128296 () Unit!5875)

(assert (=> d!57141 (= lt!97333 e!128296)))

(declare-fun c!35276 () Bool)

(assert (=> d!57141 (= c!35276 lt!97332)))

(assert (=> d!57141 (= lt!97332 (containsKey!248 (toList!1259 lt!97108) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57141 (= (contains!1378 lt!97108 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97331)))

(declare-fun b!195053 () Bool)

(declare-fun lt!97334 () Unit!5875)

(assert (=> b!195053 (= e!128296 lt!97334)))

(assert (=> b!195053 (= lt!97334 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97108) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!195053 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97108) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195054 () Bool)

(declare-fun Unit!5920 () Unit!5875)

(assert (=> b!195054 (= e!128296 Unit!5920)))

(declare-fun b!195055 () Bool)

(assert (=> b!195055 (= e!128297 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97108) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57141 c!35276) b!195053))

(assert (= (and d!57141 (not c!35276)) b!195054))

(assert (= (and d!57141 (not res!92133)) b!195055))

(declare-fun m!222451 () Bool)

(assert (=> d!57141 m!222451))

(declare-fun m!222453 () Bool)

(assert (=> b!195053 m!222453))

(assert (=> b!195053 m!222175))

(assert (=> b!195053 m!222175))

(declare-fun m!222455 () Bool)

(assert (=> b!195053 m!222455))

(assert (=> b!195055 m!222175))

(assert (=> b!195055 m!222175))

(assert (=> b!195055 m!222455))

(assert (=> bm!19677 d!57141))

(declare-fun d!57143 () Bool)

(assert (=> d!57143 (= (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))))

(declare-fun bs!7787 () Bool)

(assert (= bs!7787 d!57143))

(assert (=> bs!7787 m!221269))

(declare-fun m!222457 () Bool)

(assert (=> bs!7787 m!222457))

(assert (=> b!194373 d!57143))

(declare-fun b!195057 () Bool)

(declare-fun e!128298 () Option!250)

(declare-fun e!128299 () Option!250)

(assert (=> b!195057 (= e!128298 e!128299)))

(declare-fun c!35278 () Bool)

(assert (=> b!195057 (= c!35278 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))) lt!96854))))))

(declare-fun b!195056 () Bool)

(assert (=> b!195056 (= e!128298 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))))

(declare-fun b!195058 () Bool)

(assert (=> b!195058 (= e!128299 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))) lt!96854))))

(declare-fun c!35277 () Bool)

(declare-fun d!57145 () Bool)

(assert (=> d!57145 (= c!35277 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))) lt!96854)))))

(assert (=> d!57145 (= (getValueByKey!244 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854) e!128298)))

(declare-fun b!195059 () Bool)

(assert (=> b!195059 (= e!128299 None!248)))

(assert (= (and d!57145 c!35277) b!195056))

(assert (= (and d!57145 (not c!35277)) b!195057))

(assert (= (and b!195057 c!35278) b!195058))

(assert (= (and b!195057 (not c!35278)) b!195059))

(declare-fun m!222459 () Bool)

(assert (=> b!195058 m!222459))

(assert (=> b!194373 d!57145))

(declare-fun d!57147 () Bool)

(declare-fun lt!97335 () Bool)

(assert (=> d!57147 (= lt!97335 (select (content!154 (toList!1259 lt!97057)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun e!128301 () Bool)

(assert (=> d!57147 (= lt!97335 e!128301)))

(declare-fun res!92134 () Bool)

(assert (=> d!57147 (=> (not res!92134) (not e!128301))))

(assert (=> d!57147 (= res!92134 ((_ is Cons!2465) (toList!1259 lt!97057)))))

(assert (=> d!57147 (= (contains!1380 (toList!1259 lt!97057) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) lt!97335)))

(declare-fun b!195060 () Bool)

(declare-fun e!128300 () Bool)

(assert (=> b!195060 (= e!128301 e!128300)))

(declare-fun res!92135 () Bool)

(assert (=> b!195060 (=> res!92135 e!128300)))

(assert (=> b!195060 (= res!92135 (= (h!3106 (toList!1259 lt!97057)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun b!195061 () Bool)

(assert (=> b!195061 (= e!128300 (contains!1380 (t!7403 (toList!1259 lt!97057)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(assert (= (and d!57147 res!92134) b!195060))

(assert (= (and b!195060 (not res!92135)) b!195061))

(declare-fun m!222461 () Bool)

(assert (=> d!57147 m!222461))

(declare-fun m!222463 () Bool)

(assert (=> d!57147 m!222463))

(declare-fun m!222465 () Bool)

(assert (=> b!195061 m!222465))

(assert (=> b!194423 d!57147))

(declare-fun d!57149 () Bool)

(declare-fun lt!97336 () Bool)

(assert (=> d!57149 (= lt!97336 (select (content!154 (toList!1259 lt!96948)) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun e!128303 () Bool)

(assert (=> d!57149 (= lt!97336 e!128303)))

(declare-fun res!92136 () Bool)

(assert (=> d!57149 (=> (not res!92136) (not e!128303))))

(assert (=> d!57149 (= res!92136 ((_ is Cons!2465) (toList!1259 lt!96948)))))

(assert (=> d!57149 (= (contains!1380 (toList!1259 lt!96948) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97336)))

(declare-fun b!195062 () Bool)

(declare-fun e!128302 () Bool)

(assert (=> b!195062 (= e!128303 e!128302)))

(declare-fun res!92137 () Bool)

(assert (=> b!195062 (=> res!92137 e!128302)))

(assert (=> b!195062 (= res!92137 (= (h!3106 (toList!1259 lt!96948)) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!195063 () Bool)

(assert (=> b!195063 (= e!128302 (contains!1380 (t!7403 (toList!1259 lt!96948)) (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (= (and d!57149 res!92136) b!195062))

(assert (= (and b!195062 (not res!92137)) b!195063))

(declare-fun m!222467 () Bool)

(assert (=> d!57149 m!222467))

(declare-fun m!222469 () Bool)

(assert (=> d!57149 m!222469))

(declare-fun m!222471 () Bool)

(assert (=> b!195063 m!222471))

(assert (=> b!194266 d!57149))

(declare-fun d!57151 () Bool)

(assert (=> d!57151 (= ($colon$colon!102 e!128005 (ite c!35124 (h!3106 (toList!1259 lt!96698)) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700)))) (Cons!2465 (ite c!35124 (h!3106 (toList!1259 lt!96698)) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))) e!128005))))

(assert (=> bm!19684 d!57151))

(assert (=> d!56595 d!56605))

(declare-fun d!57153 () Bool)

(assert (=> d!57153 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7788 () Bool)

(assert (= bs!7788 d!57153))

(assert (=> bs!7788 m!221541))

(declare-fun m!222473 () Bool)

(assert (=> bs!7788 m!222473))

(assert (=> b!194538 d!57153))

(declare-fun b!195065 () Bool)

(declare-fun e!128304 () Option!250)

(declare-fun e!128305 () Option!250)

(assert (=> b!195065 (= e!128304 e!128305)))

(declare-fun c!35280 () Bool)

(assert (=> b!195065 (= c!35280 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96830))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!195064 () Bool)

(assert (=> b!195064 (= e!128304 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96830)))))))

(declare-fun b!195066 () Bool)

(assert (=> b!195066 (= e!128305 (getValueByKey!244 (t!7403 (toList!1259 lt!96830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!57155 () Bool)

(declare-fun c!35279 () Bool)

(assert (=> d!57155 (= c!35279 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (= (_1!1788 (h!3106 (toList!1259 lt!96830))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57155 (= (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000) e!128304)))

(declare-fun b!195067 () Bool)

(assert (=> b!195067 (= e!128305 None!248)))

(assert (= (and d!57155 c!35279) b!195064))

(assert (= (and d!57155 (not c!35279)) b!195065))

(assert (= (and b!195065 c!35280) b!195066))

(assert (= (and b!195065 (not c!35280)) b!195067))

(declare-fun m!222475 () Bool)

(assert (=> b!195066 m!222475))

(assert (=> b!194538 d!57155))

(declare-fun lt!97337 () Bool)

(declare-fun d!57157 () Bool)

(assert (=> d!57157 (= lt!97337 (select (content!154 (toList!1259 lt!97024)) (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))

(declare-fun e!128307 () Bool)

(assert (=> d!57157 (= lt!97337 e!128307)))

(declare-fun res!92138 () Bool)

(assert (=> d!57157 (=> (not res!92138) (not e!128307))))

(assert (=> d!57157 (= res!92138 ((_ is Cons!2465) (toList!1259 lt!97024)))))

(assert (=> d!57157 (= (contains!1380 (toList!1259 lt!97024) (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) lt!97337)))

(declare-fun b!195068 () Bool)

(declare-fun e!128306 () Bool)

(assert (=> b!195068 (= e!128307 e!128306)))

(declare-fun res!92139 () Bool)

(assert (=> b!195068 (=> res!92139 e!128306)))

(assert (=> b!195068 (= res!92139 (= (h!3106 (toList!1259 lt!97024)) (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))

(declare-fun b!195069 () Bool)

(assert (=> b!195069 (= e!128306 (contains!1380 (t!7403 (toList!1259 lt!97024)) (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))

(assert (= (and d!57157 res!92138) b!195068))

(assert (= (and b!195068 (not res!92139)) b!195069))

(declare-fun m!222477 () Bool)

(assert (=> d!57157 m!222477))

(declare-fun m!222479 () Bool)

(assert (=> d!57157 m!222479))

(declare-fun m!222481 () Bool)

(assert (=> b!195069 m!222481))

(assert (=> b!194387 d!57157))

(declare-fun d!57159 () Bool)

(declare-fun res!92140 () Bool)

(declare-fun e!128308 () Bool)

(assert (=> d!57159 (=> res!92140 e!128308)))

(assert (=> d!57159 (= res!92140 (and ((_ is Cons!2465) lt!96754) (= (_1!1788 (h!3106 lt!96754)) (_1!1788 lt!96700))))))

(assert (=> d!57159 (= (containsKey!248 lt!96754 (_1!1788 lt!96700)) e!128308)))

(declare-fun b!195070 () Bool)

(declare-fun e!128309 () Bool)

(assert (=> b!195070 (= e!128308 e!128309)))

(declare-fun res!92141 () Bool)

(assert (=> b!195070 (=> (not res!92141) (not e!128309))))

(assert (=> b!195070 (= res!92141 (and (or (not ((_ is Cons!2465) lt!96754)) (bvsle (_1!1788 (h!3106 lt!96754)) (_1!1788 lt!96700))) ((_ is Cons!2465) lt!96754) (bvslt (_1!1788 (h!3106 lt!96754)) (_1!1788 lt!96700))))))

(declare-fun b!195071 () Bool)

(assert (=> b!195071 (= e!128309 (containsKey!248 (t!7403 lt!96754) (_1!1788 lt!96700)))))

(assert (= (and d!57159 (not res!92140)) b!195070))

(assert (= (and b!195070 res!92141) b!195071))

(declare-fun m!222483 () Bool)

(assert (=> b!195071 m!222483))

(assert (=> b!194278 d!57159))

(assert (=> b!194400 d!56593))

(declare-fun d!57161 () Bool)

(declare-fun e!128310 () Bool)

(assert (=> d!57161 e!128310))

(declare-fun res!92142 () Bool)

(assert (=> d!57161 (=> (not res!92142) (not e!128310))))

(declare-fun lt!97338 () ListLongMap!2487)

(assert (=> d!57161 (= res!92142 (contains!1378 lt!97338 (_1!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))))))

(declare-fun lt!97341 () List!2469)

(assert (=> d!57161 (= lt!97338 (ListLongMap!2488 lt!97341))))

(declare-fun lt!97339 () Unit!5875)

(declare-fun lt!97340 () Unit!5875)

(assert (=> d!57161 (= lt!97339 lt!97340)))

(assert (=> d!57161 (= (getValueByKey!244 lt!97341 (_1!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))))))

(assert (=> d!57161 (= lt!97340 (lemmaContainsTupThenGetReturnValue!133 lt!97341 (_1!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))))))

(assert (=> d!57161 (= lt!97341 (insertStrictlySorted!135 (toList!1259 lt!97099) (_1!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))))))

(assert (=> d!57161 (= (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))) lt!97338)))

(declare-fun b!195072 () Bool)

(declare-fun res!92143 () Bool)

(assert (=> b!195072 (=> (not res!92143) (not e!128310))))

(assert (=> b!195072 (= res!92143 (= (getValueByKey!244 (toList!1259 lt!97338) (_1!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))))))))

(declare-fun b!195073 () Bool)

(assert (=> b!195073 (= e!128310 (contains!1380 (toList!1259 lt!97338) (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))))))

(assert (= (and d!57161 res!92142) b!195072))

(assert (= (and b!195072 res!92143) b!195073))

(declare-fun m!222485 () Bool)

(assert (=> d!57161 m!222485))

(declare-fun m!222487 () Bool)

(assert (=> d!57161 m!222487))

(declare-fun m!222489 () Bool)

(assert (=> d!57161 m!222489))

(declare-fun m!222491 () Bool)

(assert (=> d!57161 m!222491))

(declare-fun m!222493 () Bool)

(assert (=> b!195072 m!222493))

(declare-fun m!222495 () Bool)

(assert (=> b!195073 m!222495))

(assert (=> b!194549 d!57161))

(declare-fun d!57163 () Bool)

(declare-fun e!128312 () Bool)

(assert (=> d!57163 e!128312))

(declare-fun res!92144 () Bool)

(assert (=> d!57163 (=> res!92144 e!128312)))

(declare-fun lt!97342 () Bool)

(assert (=> d!57163 (= res!92144 (not lt!97342))))

(declare-fun lt!97343 () Bool)

(assert (=> d!57163 (= lt!97342 lt!97343)))

(declare-fun lt!97344 () Unit!5875)

(declare-fun e!128311 () Unit!5875)

(assert (=> d!57163 (= lt!97344 e!128311)))

(declare-fun c!35281 () Bool)

(assert (=> d!57163 (= c!35281 lt!97343)))

(assert (=> d!57163 (= lt!97343 (containsKey!248 (toList!1259 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))) lt!97095))))

(assert (=> d!57163 (= (contains!1378 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))) lt!97095) lt!97342)))

(declare-fun b!195074 () Bool)

(declare-fun lt!97345 () Unit!5875)

(assert (=> b!195074 (= e!128311 lt!97345)))

(assert (=> b!195074 (= lt!97345 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))) lt!97095))))

(assert (=> b!195074 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))) lt!97095))))

(declare-fun b!195075 () Bool)

(declare-fun Unit!5921 () Unit!5875)

(assert (=> b!195075 (= e!128311 Unit!5921)))

(declare-fun b!195076 () Bool)

(assert (=> b!195076 (= e!128312 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693)))) lt!97095)))))

(assert (= (and d!57163 c!35281) b!195074))

(assert (= (and d!57163 (not c!35281)) b!195075))

(assert (= (and d!57163 (not res!92144)) b!195076))

(declare-fun m!222497 () Bool)

(assert (=> d!57163 m!222497))

(declare-fun m!222499 () Bool)

(assert (=> b!195074 m!222499))

(declare-fun m!222501 () Bool)

(assert (=> b!195074 m!222501))

(assert (=> b!195074 m!222501))

(declare-fun m!222503 () Bool)

(assert (=> b!195074 m!222503))

(assert (=> b!195076 m!222501))

(assert (=> b!195076 m!222501))

(assert (=> b!195076 m!222503))

(assert (=> b!194549 d!57163))

(declare-fun d!57165 () Bool)

(assert (=> d!57165 (= (apply!188 (+!317 lt!97116 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))) lt!97098) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!97116 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))) lt!97098)))))

(declare-fun bs!7789 () Bool)

(assert (= bs!7789 d!57165))

(declare-fun m!222505 () Bool)

(assert (=> bs!7789 m!222505))

(assert (=> bs!7789 m!222505))

(declare-fun m!222507 () Bool)

(assert (=> bs!7789 m!222507))

(assert (=> b!194549 d!57165))

(declare-fun d!57167 () Bool)

(assert (=> d!57167 (= (apply!188 lt!97116 lt!97098) (get!2239 (getValueByKey!244 (toList!1259 lt!97116) lt!97098)))))

(declare-fun bs!7790 () Bool)

(assert (= bs!7790 d!57167))

(declare-fun m!222509 () Bool)

(assert (=> bs!7790 m!222509))

(assert (=> bs!7790 m!222509))

(declare-fun m!222511 () Bool)

(assert (=> bs!7790 m!222511))

(assert (=> b!194549 d!57167))

(declare-fun d!57169 () Bool)

(declare-fun e!128313 () Bool)

(assert (=> d!57169 e!128313))

(declare-fun res!92145 () Bool)

(assert (=> d!57169 (=> (not res!92145) (not e!128313))))

(declare-fun lt!97346 () ListLongMap!2487)

(assert (=> d!57169 (= res!92145 (contains!1378 lt!97346 (_1!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))))))

(declare-fun lt!97349 () List!2469)

(assert (=> d!57169 (= lt!97346 (ListLongMap!2488 lt!97349))))

(declare-fun lt!97347 () Unit!5875)

(declare-fun lt!97348 () Unit!5875)

(assert (=> d!57169 (= lt!97347 lt!97348)))

(assert (=> d!57169 (= (getValueByKey!244 lt!97349 (_1!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))))))

(assert (=> d!57169 (= lt!97348 (lemmaContainsTupThenGetReturnValue!133 lt!97349 (_1!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))))))

(assert (=> d!57169 (= lt!97349 (insertStrictlySorted!135 (toList!1259 lt!97116) (_1!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))))))

(assert (=> d!57169 (= (+!317 lt!97116 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))) lt!97346)))

(declare-fun b!195077 () Bool)

(declare-fun res!92146 () Bool)

(assert (=> b!195077 (=> (not res!92146) (not e!128313))))

(assert (=> b!195077 (= res!92146 (= (getValueByKey!244 (toList!1259 lt!97346) (_1!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))))))))

(declare-fun b!195078 () Bool)

(assert (=> b!195078 (= e!128313 (contains!1380 (toList!1259 lt!97346) (tuple2!3557 lt!97107 (minValue!3801 lt!96693))))))

(assert (= (and d!57169 res!92145) b!195077))

(assert (= (and b!195077 res!92146) b!195078))

(declare-fun m!222513 () Bool)

(assert (=> d!57169 m!222513))

(declare-fun m!222515 () Bool)

(assert (=> d!57169 m!222515))

(declare-fun m!222517 () Bool)

(assert (=> d!57169 m!222517))

(declare-fun m!222519 () Bool)

(assert (=> d!57169 m!222519))

(declare-fun m!222521 () Bool)

(assert (=> b!195077 m!222521))

(declare-fun m!222523 () Bool)

(assert (=> b!195078 m!222523))

(assert (=> b!194549 d!57169))

(declare-fun d!57171 () Bool)

(declare-fun e!128314 () Bool)

(assert (=> d!57171 e!128314))

(declare-fun res!92147 () Bool)

(assert (=> d!57171 (=> (not res!92147) (not e!128314))))

(declare-fun lt!97350 () ListLongMap!2487)

(assert (=> d!57171 (= res!92147 (contains!1378 lt!97350 (_1!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))))))

(declare-fun lt!97353 () List!2469)

(assert (=> d!57171 (= lt!97350 (ListLongMap!2488 lt!97353))))

(declare-fun lt!97351 () Unit!5875)

(declare-fun lt!97352 () Unit!5875)

(assert (=> d!57171 (= lt!97351 lt!97352)))

(assert (=> d!57171 (= (getValueByKey!244 lt!97353 (_1!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))))))

(assert (=> d!57171 (= lt!97352 (lemmaContainsTupThenGetReturnValue!133 lt!97353 (_1!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))))))

(assert (=> d!57171 (= lt!97353 (insertStrictlySorted!135 (toList!1259 lt!97101) (_1!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))))))

(assert (=> d!57171 (= (+!317 lt!97101 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))) lt!97350)))

(declare-fun b!195079 () Bool)

(declare-fun res!92148 () Bool)

(assert (=> b!195079 (=> (not res!92148) (not e!128314))))

(assert (=> b!195079 (= res!92148 (= (getValueByKey!244 (toList!1259 lt!97350) (_1!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))))))))

(declare-fun b!195080 () Bool)

(assert (=> b!195080 (= e!128314 (contains!1380 (toList!1259 lt!97350) (tuple2!3557 lt!97109 (minValue!3801 lt!96693))))))

(assert (= (and d!57171 res!92147) b!195079))

(assert (= (and b!195079 res!92148) b!195080))

(declare-fun m!222525 () Bool)

(assert (=> d!57171 m!222525))

(declare-fun m!222527 () Bool)

(assert (=> d!57171 m!222527))

(declare-fun m!222529 () Bool)

(assert (=> d!57171 m!222529))

(declare-fun m!222531 () Bool)

(assert (=> d!57171 m!222531))

(declare-fun m!222533 () Bool)

(assert (=> b!195079 m!222533))

(declare-fun m!222535 () Bool)

(assert (=> b!195080 m!222535))

(assert (=> b!194549 d!57171))

(declare-fun d!57173 () Bool)

(assert (=> d!57173 (= (apply!188 (+!317 lt!97116 (tuple2!3557 lt!97107 (minValue!3801 lt!96693))) lt!97098) (apply!188 lt!97116 lt!97098))))

(declare-fun lt!97354 () Unit!5875)

(assert (=> d!57173 (= lt!97354 (choose!1077 lt!97116 lt!97107 (minValue!3801 lt!96693) lt!97098))))

(declare-fun e!128315 () Bool)

(assert (=> d!57173 e!128315))

(declare-fun res!92149 () Bool)

(assert (=> d!57173 (=> (not res!92149) (not e!128315))))

(assert (=> d!57173 (= res!92149 (contains!1378 lt!97116 lt!97098))))

(assert (=> d!57173 (= (addApplyDifferent!164 lt!97116 lt!97107 (minValue!3801 lt!96693) lt!97098) lt!97354)))

(declare-fun b!195081 () Bool)

(assert (=> b!195081 (= e!128315 (not (= lt!97098 lt!97107)))))

(assert (= (and d!57173 res!92149) b!195081))

(assert (=> d!57173 m!221587))

(assert (=> d!57173 m!221605))

(assert (=> d!57173 m!221587))

(declare-fun m!222537 () Bool)

(assert (=> d!57173 m!222537))

(declare-fun m!222539 () Bool)

(assert (=> d!57173 m!222539))

(assert (=> d!57173 m!221599))

(assert (=> b!194549 d!57173))

(declare-fun d!57175 () Bool)

(declare-fun e!128316 () Bool)

(assert (=> d!57175 e!128316))

(declare-fun res!92150 () Bool)

(assert (=> d!57175 (=> (not res!92150) (not e!128316))))

(declare-fun lt!97355 () ListLongMap!2487)

(assert (=> d!57175 (= res!92150 (contains!1378 lt!97355 (_1!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))))))

(declare-fun lt!97358 () List!2469)

(assert (=> d!57175 (= lt!97355 (ListLongMap!2488 lt!97358))))

(declare-fun lt!97356 () Unit!5875)

(declare-fun lt!97357 () Unit!5875)

(assert (=> d!57175 (= lt!97356 lt!97357)))

(assert (=> d!57175 (= (getValueByKey!244 lt!97358 (_1!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))))))

(assert (=> d!57175 (= lt!97357 (lemmaContainsTupThenGetReturnValue!133 lt!97358 (_1!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))))))

(assert (=> d!57175 (= lt!97358 (insertStrictlySorted!135 (toList!1259 lt!97111) (_1!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))) (_2!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))))))

(assert (=> d!57175 (= (+!317 lt!97111 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))) lt!97355)))

(declare-fun b!195082 () Bool)

(declare-fun res!92151 () Bool)

(assert (=> b!195082 (=> (not res!92151) (not e!128316))))

(assert (=> b!195082 (= res!92151 (= (getValueByKey!244 (toList!1259 lt!97355) (_1!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))))))))

(declare-fun b!195083 () Bool)

(assert (=> b!195083 (= e!128316 (contains!1380 (toList!1259 lt!97355) (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))))))

(assert (= (and d!57175 res!92150) b!195082))

(assert (= (and b!195082 res!92151) b!195083))

(declare-fun m!222541 () Bool)

(assert (=> d!57175 m!222541))

(declare-fun m!222543 () Bool)

(assert (=> d!57175 m!222543))

(declare-fun m!222545 () Bool)

(assert (=> d!57175 m!222545))

(declare-fun m!222547 () Bool)

(assert (=> d!57175 m!222547))

(declare-fun m!222549 () Bool)

(assert (=> b!195082 m!222549))

(declare-fun m!222551 () Bool)

(assert (=> b!195083 m!222551))

(assert (=> b!194549 d!57175))

(declare-fun d!57177 () Bool)

(assert (=> d!57177 (= (apply!188 lt!97111 lt!97097) (get!2239 (getValueByKey!244 (toList!1259 lt!97111) lt!97097)))))

(declare-fun bs!7791 () Bool)

(assert (= bs!7791 d!57177))

(declare-fun m!222553 () Bool)

(assert (=> bs!7791 m!222553))

(assert (=> bs!7791 m!222553))

(declare-fun m!222555 () Bool)

(assert (=> bs!7791 m!222555))

(assert (=> b!194549 d!57177))

(declare-fun d!57179 () Bool)

(assert (=> d!57179 (= (apply!188 (+!317 lt!97111 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))) lt!97097) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!97111 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693)))) lt!97097)))))

(declare-fun bs!7792 () Bool)

(assert (= bs!7792 d!57179))

(declare-fun m!222557 () Bool)

(assert (=> bs!7792 m!222557))

(assert (=> bs!7792 m!222557))

(declare-fun m!222559 () Bool)

(assert (=> bs!7792 m!222559))

(assert (=> b!194549 d!57179))

(declare-fun d!57181 () Bool)

(assert (=> d!57181 (contains!1378 (+!317 lt!97099 (tuple2!3557 lt!97115 (zeroValue!3801 lt!96693))) lt!97095)))

(declare-fun lt!97359 () Unit!5875)

(assert (=> d!57181 (= lt!97359 (choose!1078 lt!97099 lt!97115 (zeroValue!3801 lt!96693) lt!97095))))

(assert (=> d!57181 (contains!1378 lt!97099 lt!97095)))

(assert (=> d!57181 (= (addStillContains!164 lt!97099 lt!97115 (zeroValue!3801 lt!96693) lt!97095) lt!97359)))

(declare-fun bs!7793 () Bool)

(assert (= bs!7793 d!57181))

(assert (=> bs!7793 m!221579))

(assert (=> bs!7793 m!221579))

(assert (=> bs!7793 m!221581))

(declare-fun m!222561 () Bool)

(assert (=> bs!7793 m!222561))

(declare-fun m!222563 () Bool)

(assert (=> bs!7793 m!222563))

(assert (=> b!194549 d!57181))

(declare-fun d!57183 () Bool)

(assert (=> d!57183 (= (apply!188 (+!317 lt!97101 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))) lt!97113) (apply!188 lt!97101 lt!97113))))

(declare-fun lt!97360 () Unit!5875)

(assert (=> d!57183 (= lt!97360 (choose!1077 lt!97101 lt!97109 (minValue!3801 lt!96693) lt!97113))))

(declare-fun e!128317 () Bool)

(assert (=> d!57183 e!128317))

(declare-fun res!92152 () Bool)

(assert (=> d!57183 (=> (not res!92152) (not e!128317))))

(assert (=> d!57183 (= res!92152 (contains!1378 lt!97101 lt!97113))))

(assert (=> d!57183 (= (addApplyDifferent!164 lt!97101 lt!97109 (minValue!3801 lt!96693) lt!97113) lt!97360)))

(declare-fun b!195084 () Bool)

(assert (=> b!195084 (= e!128317 (not (= lt!97113 lt!97109)))))

(assert (= (and d!57183 res!92152) b!195084))

(assert (=> d!57183 m!221583))

(assert (=> d!57183 m!221585))

(assert (=> d!57183 m!221583))

(declare-fun m!222565 () Bool)

(assert (=> d!57183 m!222565))

(declare-fun m!222567 () Bool)

(assert (=> d!57183 m!222567))

(assert (=> d!57183 m!221601))

(assert (=> b!194549 d!57183))

(declare-fun d!57185 () Bool)

(assert (=> d!57185 (= (apply!188 (+!317 lt!97101 (tuple2!3557 lt!97109 (minValue!3801 lt!96693))) lt!97113) (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!97101 (tuple2!3557 lt!97109 (minValue!3801 lt!96693)))) lt!97113)))))

(declare-fun bs!7794 () Bool)

(assert (= bs!7794 d!57185))

(declare-fun m!222569 () Bool)

(assert (=> bs!7794 m!222569))

(assert (=> bs!7794 m!222569))

(declare-fun m!222571 () Bool)

(assert (=> bs!7794 m!222571))

(assert (=> b!194549 d!57185))

(declare-fun d!57187 () Bool)

(assert (=> d!57187 (= (apply!188 (+!317 lt!97111 (tuple2!3557 lt!97102 (zeroValue!3801 lt!96693))) lt!97097) (apply!188 lt!97111 lt!97097))))

(declare-fun lt!97361 () Unit!5875)

(assert (=> d!57187 (= lt!97361 (choose!1077 lt!97111 lt!97102 (zeroValue!3801 lt!96693) lt!97097))))

(declare-fun e!128318 () Bool)

(assert (=> d!57187 e!128318))

(declare-fun res!92153 () Bool)

(assert (=> d!57187 (=> (not res!92153) (not e!128318))))

(assert (=> d!57187 (= res!92153 (contains!1378 lt!97111 lt!97097))))

(assert (=> d!57187 (= (addApplyDifferent!164 lt!97111 lt!97102 (zeroValue!3801 lt!96693) lt!97097) lt!97361)))

(declare-fun b!195085 () Bool)

(assert (=> b!195085 (= e!128318 (not (= lt!97097 lt!97102)))))

(assert (= (and d!57187 res!92153) b!195085))

(assert (=> d!57187 m!221591))

(assert (=> d!57187 m!221593))

(assert (=> d!57187 m!221591))

(declare-fun m!222573 () Bool)

(assert (=> d!57187 m!222573))

(declare-fun m!222575 () Bool)

(assert (=> d!57187 m!222575))

(assert (=> d!57187 m!221597))

(assert (=> b!194549 d!57187))

(declare-fun b!195086 () Bool)

(declare-fun e!128322 () ListLongMap!2487)

(declare-fun e!128323 () ListLongMap!2487)

(assert (=> b!195086 (= e!128322 e!128323)))

(declare-fun c!35285 () Bool)

(assert (=> b!195086 (= c!35285 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!195088 () Bool)

(declare-fun e!128325 () Bool)

(declare-fun lt!97368 () ListLongMap!2487)

(assert (=> b!195088 (= e!128325 (isEmpty!493 lt!97368))))

(declare-fun b!195089 () Bool)

(declare-fun call!19721 () ListLongMap!2487)

(assert (=> b!195089 (= e!128323 call!19721)))

(declare-fun b!195090 () Bool)

(declare-fun e!128324 () Bool)

(declare-fun e!128320 () Bool)

(assert (=> b!195090 (= e!128324 e!128320)))

(assert (=> b!195090 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun res!92154 () Bool)

(assert (=> b!195090 (= res!92154 (contains!1378 lt!97368 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (=> b!195090 (=> (not res!92154) (not e!128320))))

(declare-fun b!195091 () Bool)

(declare-fun e!128321 () Bool)

(assert (=> b!195091 (= e!128321 e!128324)))

(declare-fun c!35284 () Bool)

(declare-fun e!128319 () Bool)

(assert (=> b!195091 (= c!35284 e!128319)))

(declare-fun res!92155 () Bool)

(assert (=> b!195091 (=> (not res!92155) (not e!128319))))

(assert (=> b!195091 (= res!92155 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!195092 () Bool)

(assert (=> b!195092 (= e!128319 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (=> b!195092 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!195093 () Bool)

(assert (=> b!195093 (= e!128322 (ListLongMap!2488 Nil!2466))))

(declare-fun b!195094 () Bool)

(assert (=> b!195094 (= e!128325 (= lt!97368 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 lt!96693))))))

(declare-fun bm!19718 () Bool)

(assert (=> bm!19718 (= call!19721 (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 lt!96693)))))

(declare-fun b!195095 () Bool)

(assert (=> b!195095 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(assert (=> b!195095 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4199 (_values!3943 lt!96693))))))

(assert (=> b!195095 (= e!128320 (= (apply!188 lt!97368 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) (get!2238 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!195087 () Bool)

(declare-fun lt!97365 () Unit!5875)

(declare-fun lt!97366 () Unit!5875)

(assert (=> b!195087 (= lt!97365 lt!97366)))

(declare-fun lt!97363 () V!5635)

(declare-fun lt!97362 () (_ BitVec 64))

(declare-fun lt!97367 () ListLongMap!2487)

(declare-fun lt!97364 () (_ BitVec 64))

(assert (=> b!195087 (not (contains!1378 (+!317 lt!97367 (tuple2!3557 lt!97364 lt!97363)) lt!97362))))

(assert (=> b!195087 (= lt!97366 (addStillNotContains!99 lt!97367 lt!97364 lt!97363 lt!97362))))

(assert (=> b!195087 (= lt!97362 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!195087 (= lt!97363 (get!2238 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!195087 (= lt!97364 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))

(assert (=> b!195087 (= lt!97367 call!19721)))

(assert (=> b!195087 (= e!128323 (+!317 call!19721 (tuple2!3557 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000) (get!2238 (select (arr!3875 (_values!3943 lt!96693)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 lt!96693) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!57189 () Bool)

(assert (=> d!57189 e!128321))

(declare-fun res!92157 () Bool)

(assert (=> d!57189 (=> (not res!92157) (not e!128321))))

(assert (=> d!57189 (= res!92157 (not (contains!1378 lt!97368 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57189 (= lt!97368 e!128322)))

(declare-fun c!35282 () Bool)

(assert (=> d!57189 (= c!35282 (bvsge #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!57189 (validMask!0 (mask!9223 lt!96693))))

(assert (=> d!57189 (= (getCurrentListMapNoExtraKeys!218 (_keys!5954 lt!96693) (_values!3943 lt!96693) (mask!9223 lt!96693) (extraKeys!3697 lt!96693) (zeroValue!3801 lt!96693) (minValue!3801 lt!96693) #b00000000000000000000000000000000 (defaultEntry!3960 lt!96693)) lt!97368)))

(declare-fun b!195096 () Bool)

(assert (=> b!195096 (= e!128324 e!128325)))

(declare-fun c!35283 () Bool)

(assert (=> b!195096 (= c!35283 (bvslt #b00000000000000000000000000000000 (size!4198 (_keys!5954 lt!96693))))))

(declare-fun b!195097 () Bool)

(declare-fun res!92156 () Bool)

(assert (=> b!195097 (=> (not res!92156) (not e!128321))))

(assert (=> b!195097 (= res!92156 (not (contains!1378 lt!97368 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57189 c!35282) b!195093))

(assert (= (and d!57189 (not c!35282)) b!195086))

(assert (= (and b!195086 c!35285) b!195087))

(assert (= (and b!195086 (not c!35285)) b!195089))

(assert (= (or b!195087 b!195089) bm!19718))

(assert (= (and d!57189 res!92157) b!195097))

(assert (= (and b!195097 res!92156) b!195091))

(assert (= (and b!195091 res!92155) b!195092))

(assert (= (and b!195091 c!35284) b!195090))

(assert (= (and b!195091 (not c!35284)) b!195096))

(assert (= (and b!195090 res!92154) b!195095))

(assert (= (and b!195096 c!35283) b!195094))

(assert (= (and b!195096 (not c!35283)) b!195088))

(declare-fun b_lambda!7547 () Bool)

(assert (=> (not b_lambda!7547) (not b!195095)))

(assert (=> b!195095 t!7409))

(declare-fun b_and!11479 () Bool)

(assert (= b_and!11477 (and (=> t!7409 result!4953) b_and!11479)))

(declare-fun b_lambda!7549 () Bool)

(assert (=> (not b_lambda!7549) (not b!195087)))

(assert (=> b!195087 t!7409))

(declare-fun b_and!11481 () Bool)

(assert (= b_and!11479 (and (=> t!7409 result!4953) b_and!11481)))

(declare-fun m!222577 () Bool)

(assert (=> d!57189 m!222577))

(assert (=> d!57189 m!221107))

(declare-fun m!222579 () Bool)

(assert (=> bm!19718 m!222579))

(declare-fun m!222581 () Bool)

(assert (=> b!195087 m!222581))

(declare-fun m!222583 () Bool)

(assert (=> b!195087 m!222583))

(assert (=> b!195087 m!221571))

(assert (=> b!195087 m!221567))

(assert (=> b!195087 m!221573))

(assert (=> b!195087 m!222583))

(declare-fun m!222585 () Bool)

(assert (=> b!195087 m!222585))

(assert (=> b!195087 m!221425))

(declare-fun m!222587 () Bool)

(assert (=> b!195087 m!222587))

(assert (=> b!195087 m!221567))

(assert (=> b!195087 m!221571))

(assert (=> b!195092 m!221425))

(assert (=> b!195092 m!221425))

(assert (=> b!195092 m!221427))

(declare-fun m!222589 () Bool)

(assert (=> b!195088 m!222589))

(assert (=> b!195090 m!221425))

(assert (=> b!195090 m!221425))

(declare-fun m!222591 () Bool)

(assert (=> b!195090 m!222591))

(declare-fun m!222593 () Bool)

(assert (=> b!195097 m!222593))

(assert (=> b!195094 m!222579))

(assert (=> b!195095 m!221571))

(assert (=> b!195095 m!221567))

(assert (=> b!195095 m!221573))

(assert (=> b!195095 m!221425))

(declare-fun m!222595 () Bool)

(assert (=> b!195095 m!222595))

(assert (=> b!195095 m!221425))

(assert (=> b!195095 m!221567))

(assert (=> b!195095 m!221571))

(assert (=> b!195086 m!221425))

(assert (=> b!195086 m!221425))

(assert (=> b!195086 m!221427))

(assert (=> b!194549 d!57189))

(declare-fun d!57191 () Bool)

(assert (=> d!57191 (= (apply!188 lt!97101 lt!97113) (get!2239 (getValueByKey!244 (toList!1259 lt!97101) lt!97113)))))

(declare-fun bs!7795 () Bool)

(assert (= bs!7795 d!57191))

(declare-fun m!222597 () Bool)

(assert (=> bs!7795 m!222597))

(assert (=> bs!7795 m!222597))

(declare-fun m!222599 () Bool)

(assert (=> bs!7795 m!222599))

(assert (=> b!194549 d!57191))

(declare-fun d!57193 () Bool)

(declare-fun e!128327 () Bool)

(assert (=> d!57193 e!128327))

(declare-fun res!92158 () Bool)

(assert (=> d!57193 (=> res!92158 e!128327)))

(declare-fun lt!97369 () Bool)

(assert (=> d!57193 (= res!92158 (not lt!97369))))

(declare-fun lt!97370 () Bool)

(assert (=> d!57193 (= lt!97369 lt!97370)))

(declare-fun lt!97371 () Unit!5875)

(declare-fun e!128326 () Unit!5875)

(assert (=> d!57193 (= lt!97371 e!128326)))

(declare-fun c!35286 () Bool)

(assert (=> d!57193 (= c!35286 lt!97370)))

(assert (=> d!57193 (= lt!97370 (containsKey!248 (toList!1259 lt!96919) (_1!1788 (tuple2!3557 key!828 v!309))))))

(assert (=> d!57193 (= (contains!1378 lt!96919 (_1!1788 (tuple2!3557 key!828 v!309))) lt!97369)))

(declare-fun b!195098 () Bool)

(declare-fun lt!97372 () Unit!5875)

(assert (=> b!195098 (= e!128326 lt!97372)))

(assert (=> b!195098 (= lt!97372 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96919) (_1!1788 (tuple2!3557 key!828 v!309))))))

(assert (=> b!195098 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96919) (_1!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun b!195099 () Bool)

(declare-fun Unit!5922 () Unit!5875)

(assert (=> b!195099 (= e!128326 Unit!5922)))

(declare-fun b!195100 () Bool)

(assert (=> b!195100 (= e!128327 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96919) (_1!1788 (tuple2!3557 key!828 v!309)))))))

(assert (= (and d!57193 c!35286) b!195098))

(assert (= (and d!57193 (not c!35286)) b!195099))

(assert (= (and d!57193 (not res!92158)) b!195100))

(declare-fun m!222601 () Bool)

(assert (=> d!57193 m!222601))

(declare-fun m!222603 () Bool)

(assert (=> b!195098 m!222603))

(assert (=> b!195098 m!221049))

(assert (=> b!195098 m!221049))

(declare-fun m!222605 () Bool)

(assert (=> b!195098 m!222605))

(assert (=> b!195100 m!221049))

(assert (=> b!195100 m!221049))

(assert (=> b!195100 m!222605))

(assert (=> d!56607 d!57193))

(declare-fun b!195102 () Bool)

(declare-fun e!128328 () Option!250)

(declare-fun e!128329 () Option!250)

(assert (=> b!195102 (= e!128328 e!128329)))

(declare-fun c!35288 () Bool)

(assert (=> b!195102 (= c!35288 (and ((_ is Cons!2465) lt!96922) (not (= (_1!1788 (h!3106 lt!96922)) (_1!1788 (tuple2!3557 key!828 v!309))))))))

(declare-fun b!195101 () Bool)

(assert (=> b!195101 (= e!128328 (Some!249 (_2!1788 (h!3106 lt!96922))))))

(declare-fun b!195103 () Bool)

(assert (=> b!195103 (= e!128329 (getValueByKey!244 (t!7403 lt!96922) (_1!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun d!57195 () Bool)

(declare-fun c!35287 () Bool)

(assert (=> d!57195 (= c!35287 (and ((_ is Cons!2465) lt!96922) (= (_1!1788 (h!3106 lt!96922)) (_1!1788 (tuple2!3557 key!828 v!309)))))))

(assert (=> d!57195 (= (getValueByKey!244 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309))) e!128328)))

(declare-fun b!195104 () Bool)

(assert (=> b!195104 (= e!128329 None!248)))

(assert (= (and d!57195 c!35287) b!195101))

(assert (= (and d!57195 (not c!35287)) b!195102))

(assert (= (and b!195102 c!35288) b!195103))

(assert (= (and b!195102 (not c!35288)) b!195104))

(declare-fun m!222607 () Bool)

(assert (=> b!195103 m!222607))

(assert (=> d!56607 d!57195))

(declare-fun d!57197 () Bool)

(assert (=> d!57197 (= (getValueByKey!244 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309))) (Some!249 (_2!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun lt!97373 () Unit!5875)

(assert (=> d!57197 (= lt!97373 (choose!1076 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun e!128330 () Bool)

(assert (=> d!57197 e!128330))

(declare-fun res!92159 () Bool)

(assert (=> d!57197 (=> (not res!92159) (not e!128330))))

(assert (=> d!57197 (= res!92159 (isStrictlySorted!352 lt!96922))))

(assert (=> d!57197 (= (lemmaContainsTupThenGetReturnValue!133 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))) lt!97373)))

(declare-fun b!195105 () Bool)

(declare-fun res!92160 () Bool)

(assert (=> b!195105 (=> (not res!92160) (not e!128330))))

(assert (=> b!195105 (= res!92160 (containsKey!248 lt!96922 (_1!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun b!195106 () Bool)

(assert (=> b!195106 (= e!128330 (contains!1380 lt!96922 (tuple2!3557 (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309)))))))

(assert (= (and d!57197 res!92159) b!195105))

(assert (= (and b!195105 res!92160) b!195106))

(assert (=> d!57197 m!221043))

(declare-fun m!222609 () Bool)

(assert (=> d!57197 m!222609))

(declare-fun m!222611 () Bool)

(assert (=> d!57197 m!222611))

(declare-fun m!222613 () Bool)

(assert (=> b!195105 m!222613))

(declare-fun m!222615 () Bool)

(assert (=> b!195106 m!222615))

(assert (=> d!56607 d!57197))

(declare-fun bm!19719 () Bool)

(declare-fun c!35290 () Bool)

(declare-fun call!19723 () List!2469)

(declare-fun e!128331 () List!2469)

(assert (=> bm!19719 (= call!19723 ($colon$colon!102 e!128331 (ite c!35290 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (tuple2!3557 (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))))))))

(declare-fun c!35289 () Bool)

(assert (=> bm!19719 (= c!35289 c!35290)))

(declare-fun b!195107 () Bool)

(declare-fun e!128335 () List!2469)

(declare-fun call!19722 () List!2469)

(assert (=> b!195107 (= e!128335 call!19722)))

(declare-fun c!35291 () Bool)

(declare-fun b!195108 () Bool)

(assert (=> b!195108 (= c!35291 (and ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (bvsgt (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (_1!1788 (tuple2!3557 key!828 v!309)))))))

(declare-fun e!128333 () List!2469)

(assert (=> b!195108 (= e!128335 e!128333)))

(declare-fun b!195109 () Bool)

(declare-fun e!128334 () Bool)

(declare-fun lt!97374 () List!2469)

(assert (=> b!195109 (= e!128334 (contains!1380 lt!97374 (tuple2!3557 (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309)))))))

(declare-fun bm!19720 () Bool)

(declare-fun call!19724 () List!2469)

(assert (=> bm!19720 (= call!19724 call!19722)))

(declare-fun b!195110 () Bool)

(declare-fun e!128332 () List!2469)

(assert (=> b!195110 (= e!128332 e!128335)))

(declare-fun c!35292 () Bool)

(assert (=> b!195110 (= c!35292 (and ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (= (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (_1!1788 (tuple2!3557 key!828 v!309)))))))

(declare-fun d!57199 () Bool)

(assert (=> d!57199 e!128334))

(declare-fun res!92161 () Bool)

(assert (=> d!57199 (=> (not res!92161) (not e!128334))))

(assert (=> d!57199 (= res!92161 (isStrictlySorted!352 lt!97374))))

(assert (=> d!57199 (= lt!97374 e!128332)))

(assert (=> d!57199 (= c!35290 (and ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (bvslt (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (_1!1788 (tuple2!3557 key!828 v!309)))))))

(assert (=> d!57199 (isStrictlySorted!352 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))))

(assert (=> d!57199 (= (insertStrictlySorted!135 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))) lt!97374)))

(declare-fun bm!19721 () Bool)

(assert (=> bm!19721 (= call!19722 call!19723)))

(declare-fun b!195111 () Bool)

(assert (=> b!195111 (= e!128333 call!19724)))

(declare-fun b!195112 () Bool)

(assert (=> b!195112 (= e!128331 (insertStrictlySorted!135 (t!7403 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (_1!1788 (tuple2!3557 key!828 v!309)) (_2!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun b!195113 () Bool)

(assert (=> b!195113 (= e!128333 call!19724)))

(declare-fun b!195114 () Bool)

(declare-fun res!92162 () Bool)

(assert (=> b!195114 (=> (not res!92162) (not e!128334))))

(assert (=> b!195114 (= res!92162 (containsKey!248 lt!97374 (_1!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun b!195115 () Bool)

(assert (=> b!195115 (= e!128332 call!19723)))

(declare-fun b!195116 () Bool)

(assert (=> b!195116 (= e!128331 (ite c!35292 (t!7403 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (ite c!35291 (Cons!2465 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (t!7403 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) (_values!3943 thiss!1248) (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) Nil!2466)))))

(assert (= (and d!57199 c!35290) b!195115))

(assert (= (and d!57199 (not c!35290)) b!195110))

(assert (= (and b!195110 c!35292) b!195107))

(assert (= (and b!195110 (not c!35292)) b!195108))

(assert (= (and b!195108 c!35291) b!195113))

(assert (= (and b!195108 (not c!35291)) b!195111))

(assert (= (or b!195113 b!195111) bm!19720))

(assert (= (or b!195107 bm!19720) bm!19721))

(assert (= (or b!195115 bm!19721) bm!19719))

(assert (= (and bm!19719 c!35289) b!195112))

(assert (= (and bm!19719 (not c!35289)) b!195116))

(assert (= (and d!57199 res!92161) b!195114))

(assert (= (and b!195114 res!92162) b!195109))

(declare-fun m!222617 () Bool)

(assert (=> bm!19719 m!222617))

(declare-fun m!222619 () Bool)

(assert (=> b!195114 m!222619))

(declare-fun m!222621 () Bool)

(assert (=> b!195109 m!222621))

(declare-fun m!222623 () Bool)

(assert (=> b!195112 m!222623))

(declare-fun m!222625 () Bool)

(assert (=> d!57199 m!222625))

(declare-fun m!222627 () Bool)

(assert (=> d!57199 m!222627))

(assert (=> d!56607 d!57199))

(declare-fun d!57201 () Bool)

(declare-fun res!92163 () Bool)

(declare-fun e!128336 () Bool)

(assert (=> d!57201 (=> res!92163 e!128336)))

(assert (=> d!57201 (= res!92163 (and ((_ is Cons!2465) (toList!1259 lt!96867)) (= (_1!1788 (h!3106 (toList!1259 lt!96867))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!57201 (= (containsKey!248 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) e!128336)))

(declare-fun b!195117 () Bool)

(declare-fun e!128337 () Bool)

(assert (=> b!195117 (= e!128336 e!128337)))

(declare-fun res!92164 () Bool)

(assert (=> b!195117 (=> (not res!92164) (not e!128337))))

(assert (=> b!195117 (= res!92164 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96867))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96867))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))) ((_ is Cons!2465) (toList!1259 lt!96867)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96867))) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun b!195118 () Bool)

(assert (=> b!195118 (= e!128337 (containsKey!248 (t!7403 (toList!1259 lt!96867)) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!57201 (not res!92163)) b!195117))

(assert (= (and b!195117 res!92164) b!195118))

(assert (=> b!195118 m!220855))

(declare-fun m!222629 () Bool)

(assert (=> b!195118 m!222629))

(assert (=> d!56765 d!57201))

(declare-fun d!57203 () Bool)

(assert (=> d!57203 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700))) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700)))))))

(declare-fun bs!7796 () Bool)

(assert (= bs!7796 d!57203))

(assert (=> bs!7796 m!220803))

(declare-fun m!222631 () Bool)

(assert (=> bs!7796 m!222631))

(assert (=> b!194269 d!57203))

(assert (=> b!194269 d!56711))

(declare-fun d!57205 () Bool)

(assert (=> d!57205 (= (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))))

(declare-fun bs!7797 () Bool)

(assert (= bs!7797 d!57205))

(assert (=> bs!7797 m!221333))

(declare-fun m!222633 () Bool)

(assert (=> bs!7797 m!222633))

(assert (=> b!194390 d!57205))

(declare-fun b!195120 () Bool)

(declare-fun e!128338 () Option!250)

(declare-fun e!128339 () Option!250)

(assert (=> b!195120 (= e!128338 e!128339)))

(declare-fun c!35294 () Bool)

(assert (=> b!195120 (= c!35294 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))) lt!96817))))))

(declare-fun b!195119 () Bool)

(assert (=> b!195119 (= e!128338 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))))

(declare-fun b!195121 () Bool)

(assert (=> b!195121 (= e!128339 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))) lt!96817))))

(declare-fun d!57207 () Bool)

(declare-fun c!35293 () Bool)

(assert (=> d!57207 (= c!35293 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))) lt!96817)))))

(assert (=> d!57207 (= (getValueByKey!244 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817) e!128338)))

(declare-fun b!195122 () Bool)

(assert (=> b!195122 (= e!128339 None!248)))

(assert (= (and d!57207 c!35293) b!195119))

(assert (= (and d!57207 (not c!35293)) b!195120))

(assert (= (and b!195120 c!35294) b!195121))

(assert (= (and b!195120 (not c!35294)) b!195122))

(declare-fun m!222635 () Bool)

(assert (=> b!195121 m!222635))

(assert (=> b!194390 d!57207))

(declare-fun d!57209 () Bool)

(assert (=> d!57209 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96833) lt!96819)) (v!4252 (getValueByKey!244 (toList!1259 lt!96833) lt!96819)))))

(assert (=> d!56695 d!57209))

(declare-fun b!195124 () Bool)

(declare-fun e!128340 () Option!250)

(declare-fun e!128341 () Option!250)

(assert (=> b!195124 (= e!128340 e!128341)))

(declare-fun c!35296 () Bool)

(assert (=> b!195124 (= c!35296 (and ((_ is Cons!2465) (toList!1259 lt!96833)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96833))) lt!96819))))))

(declare-fun b!195123 () Bool)

(assert (=> b!195123 (= e!128340 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96833)))))))

(declare-fun b!195125 () Bool)

(assert (=> b!195125 (= e!128341 (getValueByKey!244 (t!7403 (toList!1259 lt!96833)) lt!96819))))

(declare-fun d!57211 () Bool)

(declare-fun c!35295 () Bool)

(assert (=> d!57211 (= c!35295 (and ((_ is Cons!2465) (toList!1259 lt!96833)) (= (_1!1788 (h!3106 (toList!1259 lt!96833))) lt!96819)))))

(assert (=> d!57211 (= (getValueByKey!244 (toList!1259 lt!96833) lt!96819) e!128340)))

(declare-fun b!195126 () Bool)

(assert (=> b!195126 (= e!128341 None!248)))

(assert (= (and d!57211 c!35295) b!195123))

(assert (= (and d!57211 (not c!35295)) b!195124))

(assert (= (and b!195124 c!35296) b!195125))

(assert (= (and b!195124 (not c!35296)) b!195126))

(declare-fun m!222637 () Bool)

(assert (=> b!195125 m!222637))

(assert (=> d!56695 d!57211))

(declare-fun c!35298 () Bool)

(declare-fun e!128342 () List!2469)

(declare-fun call!19726 () List!2469)

(declare-fun bm!19722 () Bool)

(assert (=> bm!19722 (= call!19726 ($colon$colon!102 e!128342 (ite c!35298 (h!3106 (t!7403 (toList!1259 lt!96698))) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700)))))))

(declare-fun c!35297 () Bool)

(assert (=> bm!19722 (= c!35297 c!35298)))

(declare-fun b!195127 () Bool)

(declare-fun e!128346 () List!2469)

(declare-fun call!19725 () List!2469)

(assert (=> b!195127 (= e!128346 call!19725)))

(declare-fun b!195128 () Bool)

(declare-fun c!35299 () Bool)

(assert (=> b!195128 (= c!35299 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (bvsgt (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) (_1!1788 lt!96700))))))

(declare-fun e!128344 () List!2469)

(assert (=> b!195128 (= e!128346 e!128344)))

(declare-fun b!195129 () Bool)

(declare-fun e!128345 () Bool)

(declare-fun lt!97375 () List!2469)

(assert (=> b!195129 (= e!128345 (contains!1380 lt!97375 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun bm!19723 () Bool)

(declare-fun call!19727 () List!2469)

(assert (=> bm!19723 (= call!19727 call!19725)))

(declare-fun b!195130 () Bool)

(declare-fun e!128343 () List!2469)

(assert (=> b!195130 (= e!128343 e!128346)))

(declare-fun c!35300 () Bool)

(assert (=> b!195130 (= c!35300 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) (_1!1788 lt!96700))))))

(declare-fun d!57213 () Bool)

(assert (=> d!57213 e!128345))

(declare-fun res!92165 () Bool)

(assert (=> d!57213 (=> (not res!92165) (not e!128345))))

(assert (=> d!57213 (= res!92165 (isStrictlySorted!352 lt!97375))))

(assert (=> d!57213 (= lt!97375 e!128343)))

(assert (=> d!57213 (= c!35298 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (bvslt (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) (_1!1788 lt!96700))))))

(assert (=> d!57213 (isStrictlySorted!352 (t!7403 (toList!1259 lt!96698)))))

(assert (=> d!57213 (= (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96698)) (_1!1788 lt!96700) (_2!1788 lt!96700)) lt!97375)))

(declare-fun bm!19724 () Bool)

(assert (=> bm!19724 (= call!19725 call!19726)))

(declare-fun b!195131 () Bool)

(assert (=> b!195131 (= e!128344 call!19727)))

(declare-fun b!195132 () Bool)

(assert (=> b!195132 (= e!128342 (insertStrictlySorted!135 (t!7403 (t!7403 (toList!1259 lt!96698))) (_1!1788 lt!96700) (_2!1788 lt!96700)))))

(declare-fun b!195133 () Bool)

(assert (=> b!195133 (= e!128344 call!19727)))

(declare-fun b!195134 () Bool)

(declare-fun res!92166 () Bool)

(assert (=> b!195134 (=> (not res!92166) (not e!128345))))

(assert (=> b!195134 (= res!92166 (containsKey!248 lt!97375 (_1!1788 lt!96700)))))

(declare-fun b!195135 () Bool)

(assert (=> b!195135 (= e!128343 call!19726)))

(declare-fun b!195136 () Bool)

(assert (=> b!195136 (= e!128342 (ite c!35300 (t!7403 (t!7403 (toList!1259 lt!96698))) (ite c!35299 (Cons!2465 (h!3106 (t!7403 (toList!1259 lt!96698))) (t!7403 (t!7403 (toList!1259 lt!96698)))) Nil!2466)))))

(assert (= (and d!57213 c!35298) b!195135))

(assert (= (and d!57213 (not c!35298)) b!195130))

(assert (= (and b!195130 c!35300) b!195127))

(assert (= (and b!195130 (not c!35300)) b!195128))

(assert (= (and b!195128 c!35299) b!195133))

(assert (= (and b!195128 (not c!35299)) b!195131))

(assert (= (or b!195133 b!195131) bm!19723))

(assert (= (or b!195127 bm!19723) bm!19724))

(assert (= (or b!195135 bm!19724) bm!19722))

(assert (= (and bm!19722 c!35297) b!195132))

(assert (= (and bm!19722 (not c!35297)) b!195136))

(assert (= (and d!57213 res!92165) b!195134))

(assert (= (and b!195134 res!92166) b!195129))

(declare-fun m!222639 () Bool)

(assert (=> bm!19722 m!222639))

(declare-fun m!222641 () Bool)

(assert (=> b!195134 m!222641))

(declare-fun m!222643 () Bool)

(assert (=> b!195129 m!222643))

(declare-fun m!222645 () Bool)

(assert (=> b!195132 m!222645))

(declare-fun m!222647 () Bool)

(assert (=> d!57213 m!222647))

(assert (=> d!57213 m!222279))

(assert (=> b!194582 d!57213))

(declare-fun d!57215 () Bool)

(declare-fun e!128348 () Bool)

(assert (=> d!57215 e!128348))

(declare-fun res!92167 () Bool)

(assert (=> d!57215 (=> res!92167 e!128348)))

(declare-fun lt!97376 () Bool)

(assert (=> d!57215 (= res!92167 (not lt!97376))))

(declare-fun lt!97377 () Bool)

(assert (=> d!57215 (= lt!97376 lt!97377)))

(declare-fun lt!97378 () Unit!5875)

(declare-fun e!128347 () Unit!5875)

(assert (=> d!57215 (= lt!97378 e!128347)))

(declare-fun c!35301 () Bool)

(assert (=> d!57215 (= c!35301 lt!97377)))

(assert (=> d!57215 (= lt!97377 (containsKey!248 (toList!1259 lt!97057) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> d!57215 (= (contains!1378 lt!97057 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97376)))

(declare-fun b!195137 () Bool)

(declare-fun lt!97379 () Unit!5875)

(assert (=> b!195137 (= e!128347 lt!97379)))

(assert (=> b!195137 (= lt!97379 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97057) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(assert (=> b!195137 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97057) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!195138 () Bool)

(declare-fun Unit!5923 () Unit!5875)

(assert (=> b!195138 (= e!128347 Unit!5923)))

(declare-fun b!195139 () Bool)

(assert (=> b!195139 (= e!128348 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97057) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57215 c!35301) b!195137))

(assert (= (and d!57215 (not c!35301)) b!195138))

(assert (= (and d!57215 (not res!92167)) b!195139))

(declare-fun m!222649 () Bool)

(assert (=> d!57215 m!222649))

(declare-fun m!222651 () Bool)

(assert (=> b!195137 m!222651))

(assert (=> b!195137 m!221449))

(assert (=> b!195137 m!221449))

(declare-fun m!222653 () Bool)

(assert (=> b!195137 m!222653))

(assert (=> b!195139 m!221449))

(assert (=> b!195139 m!221449))

(assert (=> b!195139 m!222653))

(assert (=> d!56715 d!57215))

(declare-fun b!195141 () Bool)

(declare-fun e!128349 () Option!250)

(declare-fun e!128350 () Option!250)

(assert (=> b!195141 (= e!128349 e!128350)))

(declare-fun c!35303 () Bool)

(assert (=> b!195141 (= c!35303 (and ((_ is Cons!2465) lt!97060) (not (= (_1!1788 (h!3106 lt!97060)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!195140 () Bool)

(assert (=> b!195140 (= e!128349 (Some!249 (_2!1788 (h!3106 lt!97060))))))

(declare-fun b!195142 () Bool)

(assert (=> b!195142 (= e!128350 (getValueByKey!244 (t!7403 lt!97060) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun d!57217 () Bool)

(declare-fun c!35302 () Bool)

(assert (=> d!57217 (= c!35302 (and ((_ is Cons!2465) lt!97060) (= (_1!1788 (h!3106 lt!97060)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57217 (= (getValueByKey!244 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) e!128349)))

(declare-fun b!195143 () Bool)

(assert (=> b!195143 (= e!128350 None!248)))

(assert (= (and d!57217 c!35302) b!195140))

(assert (= (and d!57217 (not c!35302)) b!195141))

(assert (= (and b!195141 c!35303) b!195142))

(assert (= (and b!195141 (not c!35303)) b!195143))

(declare-fun m!222655 () Bool)

(assert (=> b!195142 m!222655))

(assert (=> d!56715 d!57217))

(declare-fun d!57219 () Bool)

(assert (=> d!57219 (= (getValueByKey!244 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97380 () Unit!5875)

(assert (=> d!57219 (= lt!97380 (choose!1076 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun e!128351 () Bool)

(assert (=> d!57219 e!128351))

(declare-fun res!92168 () Bool)

(assert (=> d!57219 (=> (not res!92168) (not e!128351))))

(assert (=> d!57219 (= res!92168 (isStrictlySorted!352 lt!97060))))

(assert (=> d!57219 (= (lemmaContainsTupThenGetReturnValue!133 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97380)))

(declare-fun b!195144 () Bool)

(declare-fun res!92169 () Bool)

(assert (=> b!195144 (=> (not res!92169) (not e!128351))))

(assert (=> b!195144 (= res!92169 (containsKey!248 lt!97060 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!195145 () Bool)

(assert (=> b!195145 (= e!128351 (contains!1380 lt!97060 (tuple2!3557 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57219 res!92168) b!195144))

(assert (= (and b!195144 res!92169) b!195145))

(assert (=> d!57219 m!221443))

(declare-fun m!222657 () Bool)

(assert (=> d!57219 m!222657))

(declare-fun m!222659 () Bool)

(assert (=> d!57219 m!222659))

(declare-fun m!222661 () Bool)

(assert (=> b!195144 m!222661))

(declare-fun m!222663 () Bool)

(assert (=> b!195145 m!222663))

(assert (=> d!56715 d!57219))

(declare-fun c!35305 () Bool)

(declare-fun bm!19725 () Bool)

(declare-fun e!128352 () List!2469)

(declare-fun call!19729 () List!2469)

(assert (=> bm!19725 (= call!19729 ($colon$colon!102 e!128352 (ite c!35305 (h!3106 (toList!1259 call!19639)) (tuple2!3557 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun c!35304 () Bool)

(assert (=> bm!19725 (= c!35304 c!35305)))

(declare-fun b!195146 () Bool)

(declare-fun e!128356 () List!2469)

(declare-fun call!19728 () List!2469)

(assert (=> b!195146 (= e!128356 call!19728)))

(declare-fun b!195147 () Bool)

(declare-fun c!35306 () Bool)

(assert (=> b!195147 (= c!35306 (and ((_ is Cons!2465) (toList!1259 call!19639)) (bvsgt (_1!1788 (h!3106 (toList!1259 call!19639))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun e!128354 () List!2469)

(assert (=> b!195147 (= e!128356 e!128354)))

(declare-fun b!195148 () Bool)

(declare-fun e!128355 () Bool)

(declare-fun lt!97381 () List!2469)

(assert (=> b!195148 (= e!128355 (contains!1380 lt!97381 (tuple2!3557 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun bm!19726 () Bool)

(declare-fun call!19730 () List!2469)

(assert (=> bm!19726 (= call!19730 call!19728)))

(declare-fun b!195149 () Bool)

(declare-fun e!128353 () List!2469)

(assert (=> b!195149 (= e!128353 e!128356)))

(declare-fun c!35307 () Bool)

(assert (=> b!195149 (= c!35307 (and ((_ is Cons!2465) (toList!1259 call!19639)) (= (_1!1788 (h!3106 (toList!1259 call!19639))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun d!57221 () Bool)

(assert (=> d!57221 e!128355))

(declare-fun res!92170 () Bool)

(assert (=> d!57221 (=> (not res!92170) (not e!128355))))

(assert (=> d!57221 (= res!92170 (isStrictlySorted!352 lt!97381))))

(assert (=> d!57221 (= lt!97381 e!128353)))

(assert (=> d!57221 (= c!35305 (and ((_ is Cons!2465) (toList!1259 call!19639)) (bvslt (_1!1788 (h!3106 (toList!1259 call!19639))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57221 (isStrictlySorted!352 (toList!1259 call!19639))))

(assert (=> d!57221 (= (insertStrictlySorted!135 (toList!1259 call!19639) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) lt!97381)))

(declare-fun bm!19727 () Bool)

(assert (=> bm!19727 (= call!19728 call!19729)))

(declare-fun b!195150 () Bool)

(assert (=> b!195150 (= e!128354 call!19730)))

(declare-fun b!195151 () Bool)

(assert (=> b!195151 (= e!128352 (insertStrictlySorted!135 (t!7403 (toList!1259 call!19639)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!195152 () Bool)

(assert (=> b!195152 (= e!128354 call!19730)))

(declare-fun b!195153 () Bool)

(declare-fun res!92171 () Bool)

(assert (=> b!195153 (=> (not res!92171) (not e!128355))))

(assert (=> b!195153 (= res!92171 (containsKey!248 lt!97381 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun b!195154 () Bool)

(assert (=> b!195154 (= e!128353 call!19729)))

(declare-fun b!195155 () Bool)

(assert (=> b!195155 (= e!128352 (ite c!35307 (t!7403 (toList!1259 call!19639)) (ite c!35306 (Cons!2465 (h!3106 (toList!1259 call!19639)) (t!7403 (toList!1259 call!19639))) Nil!2466)))))

(assert (= (and d!57221 c!35305) b!195154))

(assert (= (and d!57221 (not c!35305)) b!195149))

(assert (= (and b!195149 c!35307) b!195146))

(assert (= (and b!195149 (not c!35307)) b!195147))

(assert (= (and b!195147 c!35306) b!195152))

(assert (= (and b!195147 (not c!35306)) b!195150))

(assert (= (or b!195152 b!195150) bm!19726))

(assert (= (or b!195146 bm!19726) bm!19727))

(assert (= (or b!195154 bm!19727) bm!19725))

(assert (= (and bm!19725 c!35304) b!195151))

(assert (= (and bm!19725 (not c!35304)) b!195155))

(assert (= (and d!57221 res!92170) b!195153))

(assert (= (and b!195153 res!92171) b!195148))

(declare-fun m!222665 () Bool)

(assert (=> bm!19725 m!222665))

(declare-fun m!222667 () Bool)

(assert (=> b!195153 m!222667))

(declare-fun m!222669 () Bool)

(assert (=> b!195148 m!222669))

(declare-fun m!222671 () Bool)

(assert (=> b!195151 m!222671))

(declare-fun m!222673 () Bool)

(assert (=> d!57221 m!222673))

(declare-fun m!222675 () Bool)

(assert (=> d!57221 m!222675))

(assert (=> d!56715 d!57221))

(declare-fun d!57223 () Bool)

(assert (=> d!57223 (= (get!2241 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194524 d!57223))

(declare-fun b!195156 () Bool)

(declare-fun e!128360 () ListLongMap!2487)

(declare-fun e!128361 () ListLongMap!2487)

(assert (=> b!195156 (= e!128360 e!128361)))

(declare-fun c!35311 () Bool)

(assert (=> b!195156 (= c!35311 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!195158 () Bool)

(declare-fun e!128363 () Bool)

(declare-fun lt!97388 () ListLongMap!2487)

(assert (=> b!195158 (= e!128363 (isEmpty!493 lt!97388))))

(declare-fun b!195159 () Bool)

(declare-fun call!19731 () ListLongMap!2487)

(assert (=> b!195159 (= e!128361 call!19731)))

(declare-fun b!195160 () Bool)

(declare-fun e!128362 () Bool)

(declare-fun e!128358 () Bool)

(assert (=> b!195160 (= e!128362 e!128358)))

(assert (=> b!195160 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun res!92172 () Bool)

(assert (=> b!195160 (= res!92172 (contains!1378 lt!97388 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!195160 (=> (not res!92172) (not e!128358))))

(declare-fun b!195161 () Bool)

(declare-fun e!128359 () Bool)

(assert (=> b!195161 (= e!128359 e!128362)))

(declare-fun c!35310 () Bool)

(declare-fun e!128357 () Bool)

(assert (=> b!195161 (= c!35310 e!128357)))

(declare-fun res!92173 () Bool)

(assert (=> b!195161 (=> (not res!92173) (not e!128357))))

(assert (=> b!195161 (= res!92173 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!195162 () Bool)

(assert (=> b!195162 (= e!128357 (validKeyInArray!0 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!195162 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!195163 () Bool)

(assert (=> b!195163 (= e!128360 (ListLongMap!2488 Nil!2466))))

(declare-fun b!195164 () Bool)

(assert (=> b!195164 (= e!128363 (= lt!97388 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248))))))

(declare-fun bm!19728 () Bool)

(assert (=> bm!19728 (= call!19731 (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)))))

(declare-fun b!195165 () Bool)

(assert (=> b!195165 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> b!195165 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4199 lt!96703)))))

(assert (=> b!195165 (= e!128358 (= (apply!188 lt!97388 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!2238 (select (arr!3875 lt!96703) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!195157 () Bool)

(declare-fun lt!97385 () Unit!5875)

(declare-fun lt!97386 () Unit!5875)

(assert (=> b!195157 (= lt!97385 lt!97386)))

(declare-fun lt!97387 () ListLongMap!2487)

(declare-fun lt!97382 () (_ BitVec 64))

(declare-fun lt!97384 () (_ BitVec 64))

(declare-fun lt!97383 () V!5635)

(assert (=> b!195157 (not (contains!1378 (+!317 lt!97387 (tuple2!3557 lt!97384 lt!97383)) lt!97382))))

(assert (=> b!195157 (= lt!97386 (addStillNotContains!99 lt!97387 lt!97384 lt!97383 lt!97382))))

(assert (=> b!195157 (= lt!97382 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!195157 (= lt!97383 (get!2238 (select (arr!3875 lt!96703) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!195157 (= lt!97384 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!195157 (= lt!97387 call!19731)))

(assert (=> b!195157 (= e!128361 (+!317 call!19731 (tuple2!3557 (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!2238 (select (arr!3875 lt!96703) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!57225 () Bool)

(assert (=> d!57225 e!128359))

(declare-fun res!92175 () Bool)

(assert (=> d!57225 (=> (not res!92175) (not e!128359))))

(assert (=> d!57225 (= res!92175 (not (contains!1378 lt!97388 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57225 (= lt!97388 e!128360)))

(declare-fun c!35308 () Bool)

(assert (=> d!57225 (= c!35308 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(assert (=> d!57225 (validMask!0 (mask!9223 thiss!1248))))

(assert (=> d!57225 (= (getCurrentListMapNoExtraKeys!218 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3960 thiss!1248)) lt!97388)))

(declare-fun b!195166 () Bool)

(assert (=> b!195166 (= e!128362 e!128363)))

(declare-fun c!35309 () Bool)

(assert (=> b!195166 (= c!35309 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!195167 () Bool)

(declare-fun res!92174 () Bool)

(assert (=> b!195167 (=> (not res!92174) (not e!128359))))

(assert (=> b!195167 (= res!92174 (not (contains!1378 lt!97388 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57225 c!35308) b!195163))

(assert (= (and d!57225 (not c!35308)) b!195156))

(assert (= (and b!195156 c!35311) b!195157))

(assert (= (and b!195156 (not c!35311)) b!195159))

(assert (= (or b!195157 b!195159) bm!19728))

(assert (= (and d!57225 res!92175) b!195167))

(assert (= (and b!195167 res!92174) b!195161))

(assert (= (and b!195161 res!92173) b!195162))

(assert (= (and b!195161 c!35310) b!195160))

(assert (= (and b!195161 (not c!35310)) b!195166))

(assert (= (and b!195160 res!92172) b!195165))

(assert (= (and b!195166 c!35309) b!195164))

(assert (= (and b!195166 (not c!35309)) b!195158))

(declare-fun b_lambda!7551 () Bool)

(assert (=> (not b_lambda!7551) (not b!195165)))

(assert (=> b!195165 t!7406))

(declare-fun b_and!11483 () Bool)

(assert (= b_and!11481 (and (=> t!7406 result!4947) b_and!11483)))

(declare-fun b_lambda!7553 () Bool)

(assert (=> (not b_lambda!7553) (not b!195157)))

(assert (=> b!195157 t!7406))

(declare-fun b_and!11485 () Bool)

(assert (= b_and!11483 (and (=> t!7406 result!4947) b_and!11485)))

(declare-fun m!222677 () Bool)

(assert (=> d!57225 m!222677))

(assert (=> d!57225 m!220833))

(declare-fun m!222679 () Bool)

(assert (=> bm!19728 m!222679))

(declare-fun m!222681 () Bool)

(assert (=> b!195157 m!222681))

(declare-fun m!222683 () Bool)

(assert (=> b!195157 m!222683))

(declare-fun m!222685 () Bool)

(assert (=> b!195157 m!222685))

(assert (=> b!195157 m!220859))

(declare-fun m!222687 () Bool)

(assert (=> b!195157 m!222687))

(assert (=> b!195157 m!222683))

(declare-fun m!222689 () Bool)

(assert (=> b!195157 m!222689))

(assert (=> b!195157 m!221961))

(declare-fun m!222691 () Bool)

(assert (=> b!195157 m!222691))

(assert (=> b!195157 m!220859))

(assert (=> b!195157 m!222685))

(assert (=> b!195162 m!221961))

(assert (=> b!195162 m!221961))

(assert (=> b!195162 m!221963))

(declare-fun m!222693 () Bool)

(assert (=> b!195158 m!222693))

(assert (=> b!195160 m!221961))

(assert (=> b!195160 m!221961))

(declare-fun m!222695 () Bool)

(assert (=> b!195160 m!222695))

(declare-fun m!222697 () Bool)

(assert (=> b!195167 m!222697))

(assert (=> b!195164 m!222679))

(assert (=> b!195165 m!222685))

(assert (=> b!195165 m!220859))

(assert (=> b!195165 m!222687))

(assert (=> b!195165 m!221961))

(declare-fun m!222699 () Bool)

(assert (=> b!195165 m!222699))

(assert (=> b!195165 m!221961))

(assert (=> b!195165 m!220859))

(assert (=> b!195165 m!222685))

(assert (=> b!195156 m!221961))

(assert (=> b!195156 m!221961))

(assert (=> b!195156 m!221963))

(assert (=> bm!19661 d!57225))

(declare-fun d!57227 () Bool)

(declare-fun res!92176 () Bool)

(declare-fun e!128364 () Bool)

(assert (=> d!57227 (=> res!92176 e!128364)))

(assert (=> d!57227 (= res!92176 (and ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (= (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(assert (=> d!57227 (= (containsKey!248 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) e!128364)))

(declare-fun b!195168 () Bool)

(declare-fun e!128365 () Bool)

(assert (=> b!195168 (= e!128364 e!128365)))

(declare-fun res!92177 () Bool)

(assert (=> b!195168 (=> (not res!92177) (not e!128365))))

(assert (=> b!195168 (= res!92177 (and (or (not ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (bvsle (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))) ((_ is Cons!2465) (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (bvslt (_1!1788 (h!3106 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248))))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699)))))))

(declare-fun b!195169 () Bool)

(assert (=> b!195169 (= e!128365 (containsKey!248 (t!7403 (toList!1259 (getCurrentListMap!902 (_keys!5954 thiss!1248) lt!96703 (mask!9223 thiss!1248) (extraKeys!3697 thiss!1248) (zeroValue!3801 thiss!1248) (minValue!3801 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3960 thiss!1248)))) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (= (and d!57227 (not res!92176)) b!195168))

(assert (= (and b!195168 res!92177) b!195169))

(assert (=> b!195169 m!220737))

(declare-fun m!222701 () Bool)

(assert (=> b!195169 m!222701))

(assert (=> d!56597 d!57227))

(assert (=> b!194352 d!56593))

(declare-fun d!57229 () Bool)

(assert (=> d!57229 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun lt!97389 () Unit!5875)

(assert (=> d!57229 (= lt!97389 (choose!1075 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!128366 () Bool)

(assert (=> d!57229 e!128366))

(declare-fun res!92178 () Bool)

(assert (=> d!57229 (=> (not res!92178) (not e!128366))))

(assert (=> d!57229 (= res!92178 (isStrictlySorted!352 (toList!1259 lt!96867)))))

(assert (=> d!57229 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97389)))

(declare-fun b!195170 () Bool)

(assert (=> b!195170 (= e!128366 (containsKey!248 (toList!1259 lt!96867) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!57229 res!92178) b!195170))

(assert (=> d!57229 m!220855))

(assert (=> d!57229 m!221503))

(assert (=> d!57229 m!221503))

(assert (=> d!57229 m!221555))

(assert (=> d!57229 m!220855))

(declare-fun m!222703 () Bool)

(assert (=> d!57229 m!222703))

(assert (=> d!57229 m!221667))

(assert (=> b!195170 m!220855))

(assert (=> b!195170 m!221551))

(assert (=> b!194541 d!57229))

(assert (=> b!194541 d!57045))

(assert (=> b!194541 d!57047))

(declare-fun b!195172 () Bool)

(declare-fun e!128367 () Option!250)

(declare-fun e!128368 () Option!250)

(assert (=> b!195172 (= e!128367 e!128368)))

(declare-fun c!35313 () Bool)

(assert (=> b!195172 (= c!35313 (and ((_ is Cons!2465) (toList!1259 lt!97002)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97002))) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!195171 () Bool)

(assert (=> b!195171 (= e!128367 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97002)))))))

(declare-fun b!195173 () Bool)

(assert (=> b!195173 (= e!128368 (getValueByKey!244 (t!7403 (toList!1259 lt!97002)) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!57231 () Bool)

(declare-fun c!35312 () Bool)

(assert (=> d!57231 (= c!35312 (and ((_ is Cons!2465) (toList!1259 lt!97002)) (= (_1!1788 (h!3106 (toList!1259 lt!97002))) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57231 (= (getValueByKey!244 (toList!1259 lt!97002) (_1!1788 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) e!128367)))

(declare-fun b!195174 () Bool)

(assert (=> b!195174 (= e!128368 None!248)))

(assert (= (and d!57231 c!35312) b!195171))

(assert (= (and d!57231 (not c!35312)) b!195172))

(assert (= (and b!195172 c!35313) b!195173))

(assert (= (and b!195172 (not c!35313)) b!195174))

(declare-fun m!222705 () Bool)

(assert (=> b!195173 m!222705))

(assert (=> b!194369 d!57231))

(declare-fun d!57233 () Bool)

(declare-fun lt!97390 () Bool)

(assert (=> d!57233 (= lt!97390 (select (content!154 (toList!1259 lt!96919)) (tuple2!3557 key!828 v!309)))))

(declare-fun e!128370 () Bool)

(assert (=> d!57233 (= lt!97390 e!128370)))

(declare-fun res!92179 () Bool)

(assert (=> d!57233 (=> (not res!92179) (not e!128370))))

(assert (=> d!57233 (= res!92179 ((_ is Cons!2465) (toList!1259 lt!96919)))))

(assert (=> d!57233 (= (contains!1380 (toList!1259 lt!96919) (tuple2!3557 key!828 v!309)) lt!97390)))

(declare-fun b!195175 () Bool)

(declare-fun e!128369 () Bool)

(assert (=> b!195175 (= e!128370 e!128369)))

(declare-fun res!92180 () Bool)

(assert (=> b!195175 (=> res!92180 e!128369)))

(assert (=> b!195175 (= res!92180 (= (h!3106 (toList!1259 lt!96919)) (tuple2!3557 key!828 v!309)))))

(declare-fun b!195176 () Bool)

(assert (=> b!195176 (= e!128369 (contains!1380 (t!7403 (toList!1259 lt!96919)) (tuple2!3557 key!828 v!309)))))

(assert (= (and d!57233 res!92179) b!195175))

(assert (= (and b!195175 (not res!92180)) b!195176))

(declare-fun m!222707 () Bool)

(assert (=> d!57233 m!222707))

(declare-fun m!222709 () Bool)

(assert (=> d!57233 m!222709))

(declare-fun m!222711 () Bool)

(assert (=> b!195176 m!222711))

(assert (=> b!194224 d!57233))

(assert (=> b!194192 d!56593))

(declare-fun d!57235 () Bool)

(declare-fun lt!97391 () Bool)

(assert (=> d!57235 (= lt!97391 (select (content!154 (t!7403 (toList!1259 lt!96751))) lt!96700))))

(declare-fun e!128372 () Bool)

(assert (=> d!57235 (= lt!97391 e!128372)))

(declare-fun res!92181 () Bool)

(assert (=> d!57235 (=> (not res!92181) (not e!128372))))

(assert (=> d!57235 (= res!92181 ((_ is Cons!2465) (t!7403 (toList!1259 lt!96751))))))

(assert (=> d!57235 (= (contains!1380 (t!7403 (toList!1259 lt!96751)) lt!96700) lt!97391)))

(declare-fun b!195177 () Bool)

(declare-fun e!128371 () Bool)

(assert (=> b!195177 (= e!128372 e!128371)))

(declare-fun res!92182 () Bool)

(assert (=> b!195177 (=> res!92182 e!128371)))

(assert (=> b!195177 (= res!92182 (= (h!3106 (t!7403 (toList!1259 lt!96751))) lt!96700))))

(declare-fun b!195178 () Bool)

(assert (=> b!195178 (= e!128371 (contains!1380 (t!7403 (t!7403 (toList!1259 lt!96751))) lt!96700))))

(assert (= (and d!57235 res!92181) b!195177))

(assert (= (and b!195177 (not res!92182)) b!195178))

(assert (=> d!57235 m!222419))

(declare-fun m!222713 () Bool)

(assert (=> d!57235 m!222713))

(declare-fun m!222715 () Bool)

(assert (=> b!195178 m!222715))

(assert (=> b!194540 d!57235))

(declare-fun b!195180 () Bool)

(declare-fun e!128373 () Option!250)

(declare-fun e!128374 () Option!250)

(assert (=> b!195180 (= e!128373 e!128374)))

(declare-fun c!35315 () Bool)

(assert (=> b!195180 (= c!35315 (and ((_ is Cons!2465) (toList!1259 lt!97057)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97057))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun b!195179 () Bool)

(assert (=> b!195179 (= e!128373 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97057)))))))

(declare-fun b!195181 () Bool)

(assert (=> b!195181 (= e!128374 (getValueByKey!244 (t!7403 (toList!1259 lt!97057)) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))

(declare-fun d!57237 () Bool)

(declare-fun c!35314 () Bool)

(assert (=> d!57237 (= c!35314 (and ((_ is Cons!2465) (toList!1259 lt!97057)) (= (_1!1788 (h!3106 (toList!1259 lt!97057))) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57237 (= (getValueByKey!244 (toList!1259 lt!97057) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) e!128373)))

(declare-fun b!195182 () Bool)

(assert (=> b!195182 (= e!128374 None!248)))

(assert (= (and d!57237 c!35314) b!195179))

(assert (= (and d!57237 (not c!35314)) b!195180))

(assert (= (and b!195180 c!35315) b!195181))

(assert (= (and b!195180 (not c!35315)) b!195182))

(declare-fun m!222717 () Bool)

(assert (=> b!195181 m!222717))

(assert (=> b!194422 d!57237))

(declare-fun d!57239 () Bool)

(assert (=> d!57239 (= (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!492 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7798 () Bool)

(assert (= bs!7798 d!57239))

(assert (=> bs!7798 m!221487))

(declare-fun m!222719 () Bool)

(assert (=> bs!7798 m!222719))

(assert (=> b!194457 d!57239))

(assert (=> b!194457 d!57021))

(declare-fun b!195184 () Bool)

(declare-fun e!128375 () Option!250)

(declare-fun e!128376 () Option!250)

(assert (=> b!195184 (= e!128375 e!128376)))

(declare-fun c!35317 () Bool)

(assert (=> b!195184 (= c!35317 (and ((_ is Cons!2465) (toList!1259 lt!96948)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96948))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))))

(declare-fun b!195183 () Bool)

(assert (=> b!195183 (= e!128375 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96948)))))))

(declare-fun b!195185 () Bool)

(assert (=> b!195185 (= e!128376 (getValueByKey!244 (t!7403 (toList!1259 lt!96948)) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun d!57241 () Bool)

(declare-fun c!35316 () Bool)

(assert (=> d!57241 (= c!35316 (and ((_ is Cons!2465) (toList!1259 lt!96948)) (= (_1!1788 (h!3106 (toList!1259 lt!96948))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (=> d!57241 (= (getValueByKey!244 (toList!1259 lt!96948) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) e!128375)))

(declare-fun b!195186 () Bool)

(assert (=> b!195186 (= e!128376 None!248)))

(assert (= (and d!57241 c!35316) b!195183))

(assert (= (and d!57241 (not c!35316)) b!195184))

(assert (= (and b!195184 c!35317) b!195185))

(assert (= (and b!195184 (not c!35317)) b!195186))

(declare-fun m!222721 () Bool)

(assert (=> b!195185 m!222721))

(assert (=> b!194265 d!57241))

(declare-fun b!195188 () Bool)

(declare-fun e!128377 () Option!250)

(declare-fun e!128378 () Option!250)

(assert (=> b!195188 (= e!128377 e!128378)))

(declare-fun c!35319 () Bool)

(assert (=> b!195188 (= c!35319 (and ((_ is Cons!2465) (toList!1259 lt!97024)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97024))) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))))

(declare-fun b!195187 () Bool)

(assert (=> b!195187 (= e!128377 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97024)))))))

(declare-fun b!195189 () Bool)

(assert (=> b!195189 (= e!128378 (getValueByKey!244 (t!7403 (toList!1259 lt!97024)) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun c!35318 () Bool)

(declare-fun d!57243 () Bool)

(assert (=> d!57243 (= c!35318 (and ((_ is Cons!2465) (toList!1259 lt!97024)) (= (_1!1788 (h!3106 (toList!1259 lt!97024))) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(assert (=> d!57243 (= (getValueByKey!244 (toList!1259 lt!97024) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) e!128377)))

(declare-fun b!195190 () Bool)

(assert (=> b!195190 (= e!128378 None!248)))

(assert (= (and d!57243 c!35318) b!195187))

(assert (= (and d!57243 (not c!35318)) b!195188))

(assert (= (and b!195188 c!35319) b!195189))

(assert (= (and b!195188 (not c!35319)) b!195190))

(declare-fun m!222723 () Bool)

(assert (=> b!195189 m!222723))

(assert (=> b!194386 d!57243))

(declare-fun d!57245 () Bool)

(assert (=> d!57245 (= (apply!188 lt!96936 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!96936) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7799 () Bool)

(assert (= bs!7799 d!57245))

(declare-fun m!222725 () Bool)

(assert (=> bs!7799 m!222725))

(assert (=> bs!7799 m!222725))

(declare-fun m!222727 () Bool)

(assert (=> bs!7799 m!222727))

(assert (=> b!194226 d!57245))

(declare-fun d!57247 () Bool)

(assert (=> d!57247 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!4252 (getValueByKey!244 (toList!1259 lt!96867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56731 d!57247))

(assert (=> d!56731 d!56907))

(declare-fun d!57249 () Bool)

(assert (=> d!57249 (= (get!2241 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!194500 d!57249))

(declare-fun d!57251 () Bool)

(declare-fun lt!97392 () Bool)

(assert (=> d!57251 (= lt!97392 (select (content!154 (toList!1259 lt!97038)) (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))

(declare-fun e!128380 () Bool)

(assert (=> d!57251 (= lt!97392 e!128380)))

(declare-fun res!92183 () Bool)

(assert (=> d!57251 (=> (not res!92183) (not e!128380))))

(assert (=> d!57251 (= res!92183 ((_ is Cons!2465) (toList!1259 lt!97038)))))

(assert (=> d!57251 (= (contains!1380 (toList!1259 lt!97038) (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) lt!97392)))

(declare-fun b!195191 () Bool)

(declare-fun e!128379 () Bool)

(assert (=> b!195191 (= e!128380 e!128379)))

(declare-fun res!92184 () Bool)

(assert (=> b!195191 (=> res!92184 e!128379)))

(assert (=> b!195191 (= res!92184 (= (h!3106 (toList!1259 lt!97038)) (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))

(declare-fun b!195192 () Bool)

(assert (=> b!195192 (= e!128379 (contains!1380 (t!7403 (toList!1259 lt!97038)) (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!57251 res!92183) b!195191))

(assert (= (and b!195191 (not res!92184)) b!195192))

(declare-fun m!222729 () Bool)

(assert (=> d!57251 m!222729))

(declare-fun m!222731 () Bool)

(assert (=> d!57251 m!222731))

(declare-fun m!222733 () Bool)

(assert (=> b!195192 m!222733))

(assert (=> b!194396 d!57251))

(declare-fun d!57253 () Bool)

(assert (=> d!57253 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!4252 (getValueByKey!244 (toList!1259 lt!96867) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56779 d!57253))

(assert (=> d!56779 d!56797))

(declare-fun d!57255 () Bool)

(assert (=> d!57255 (= (inRange!0 (index!4987 lt!97085) (mask!9223 thiss!1248)) (and (bvsge (index!4987 lt!97085) #b00000000000000000000000000000000) (bvslt (index!4987 lt!97085) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!194534 d!57255))

(declare-fun d!57257 () Bool)

(declare-fun res!92185 () Bool)

(declare-fun e!128381 () Bool)

(assert (=> d!57257 (=> res!92185 e!128381)))

(assert (=> d!57257 (= res!92185 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))) lt!96854)))))

(assert (=> d!57257 (= (containsKey!248 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854) e!128381)))

(declare-fun b!195193 () Bool)

(declare-fun e!128382 () Bool)

(assert (=> b!195193 (= e!128381 e!128382)))

(declare-fun res!92186 () Bool)

(assert (=> b!195193 (=> (not res!92186) (not e!128382))))

(assert (=> b!195193 (= res!92186 (and (or (not ((_ is Cons!2465) (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))) (bvsle (_1!1788 (h!3106 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))) lt!96854)) ((_ is Cons!2465) (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))) (bvslt (_1!1788 (h!3106 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))))) lt!96854)))))

(declare-fun b!195194 () Bool)

(assert (=> b!195194 (= e!128382 (containsKey!248 (t!7403 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))) lt!96854))))

(assert (= (and d!57257 (not res!92185)) b!195193))

(assert (= (and b!195193 res!92186) b!195194))

(declare-fun m!222735 () Bool)

(assert (=> b!195194 m!222735))

(assert (=> d!56659 d!57257))

(declare-fun d!57259 () Bool)

(assert (=> d!57259 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96860) lt!96872)) (v!4252 (getValueByKey!244 (toList!1259 lt!96860) lt!96872)))))

(assert (=> d!56649 d!57259))

(declare-fun b!195196 () Bool)

(declare-fun e!128383 () Option!250)

(declare-fun e!128384 () Option!250)

(assert (=> b!195196 (= e!128383 e!128384)))

(declare-fun c!35321 () Bool)

(assert (=> b!195196 (= c!35321 (and ((_ is Cons!2465) (toList!1259 lt!96860)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96860))) lt!96872))))))

(declare-fun b!195195 () Bool)

(assert (=> b!195195 (= e!128383 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96860)))))))

(declare-fun b!195197 () Bool)

(assert (=> b!195197 (= e!128384 (getValueByKey!244 (t!7403 (toList!1259 lt!96860)) lt!96872))))

(declare-fun d!57261 () Bool)

(declare-fun c!35320 () Bool)

(assert (=> d!57261 (= c!35320 (and ((_ is Cons!2465) (toList!1259 lt!96860)) (= (_1!1788 (h!3106 (toList!1259 lt!96860))) lt!96872)))))

(assert (=> d!57261 (= (getValueByKey!244 (toList!1259 lt!96860) lt!96872) e!128383)))

(declare-fun b!195198 () Bool)

(assert (=> b!195198 (= e!128384 None!248)))

(assert (= (and d!57261 c!35320) b!195195))

(assert (= (and d!57261 (not c!35320)) b!195196))

(assert (= (and b!195196 c!35321) b!195197))

(assert (= (and b!195196 (not c!35321)) b!195198))

(declare-fun m!222737 () Bool)

(assert (=> b!195197 m!222737))

(assert (=> d!56649 d!57261))

(declare-fun d!57263 () Bool)

(assert (=> d!57263 (= (get!2240 (select (arr!3875 lt!96703) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!4248 (select (arr!3875 lt!96703) #b00000000000000000000000000000000)))))

(assert (=> b!194523 d!57263))

(assert (=> b!194408 d!57225))

(declare-fun d!57265 () Bool)

(declare-fun e!128386 () Bool)

(assert (=> d!57265 e!128386))

(declare-fun res!92187 () Bool)

(assert (=> d!57265 (=> res!92187 e!128386)))

(declare-fun lt!97393 () Bool)

(assert (=> d!57265 (= res!92187 (not lt!97393))))

(declare-fun lt!97394 () Bool)

(assert (=> d!57265 (= lt!97393 lt!97394)))

(declare-fun lt!97395 () Unit!5875)

(declare-fun e!128385 () Unit!5875)

(assert (=> d!57265 (= lt!97395 e!128385)))

(declare-fun c!35322 () Bool)

(assert (=> d!57265 (= c!35322 lt!97394)))

(assert (=> d!57265 (= lt!97394 (containsKey!248 (toList!1259 lt!97108) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (=> d!57265 (= (contains!1378 lt!97108 (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)) lt!97393)))

(declare-fun b!195199 () Bool)

(declare-fun lt!97396 () Unit!5875)

(assert (=> b!195199 (= e!128385 lt!97396)))

(assert (=> b!195199 (= lt!97396 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97108) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(assert (=> b!195199 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97108) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000)))))

(declare-fun b!195200 () Bool)

(declare-fun Unit!5924 () Unit!5875)

(assert (=> b!195200 (= e!128385 Unit!5924)))

(declare-fun b!195201 () Bool)

(assert (=> b!195201 (= e!128386 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97108) (select (arr!3874 (_keys!5954 lt!96693)) #b00000000000000000000000000000000))))))

(assert (= (and d!57265 c!35322) b!195199))

(assert (= (and d!57265 (not c!35322)) b!195200))

(assert (= (and d!57265 (not res!92187)) b!195201))

(assert (=> d!57265 m!221425))

(declare-fun m!222739 () Bool)

(assert (=> d!57265 m!222739))

(assert (=> b!195199 m!221425))

(declare-fun m!222741 () Bool)

(assert (=> b!195199 m!222741))

(assert (=> b!195199 m!221425))

(assert (=> b!195199 m!222369))

(assert (=> b!195199 m!222369))

(declare-fun m!222743 () Bool)

(assert (=> b!195199 m!222743))

(assert (=> b!195201 m!221425))

(assert (=> b!195201 m!222369))

(assert (=> b!195201 m!222369))

(assert (=> b!195201 m!222743))

(assert (=> b!194553 d!57265))

(declare-fun b!195203 () Bool)

(declare-fun e!128387 () Option!250)

(declare-fun e!128388 () Option!250)

(assert (=> b!195203 (= e!128387 e!128388)))

(declare-fun c!35324 () Bool)

(assert (=> b!195203 (= c!35324 (and ((_ is Cons!2465) (toList!1259 lt!96919)) (not (= (_1!1788 (h!3106 (toList!1259 lt!96919))) (_1!1788 (tuple2!3557 key!828 v!309))))))))

(declare-fun b!195202 () Bool)

(assert (=> b!195202 (= e!128387 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!96919)))))))

(declare-fun b!195204 () Bool)

(assert (=> b!195204 (= e!128388 (getValueByKey!244 (t!7403 (toList!1259 lt!96919)) (_1!1788 (tuple2!3557 key!828 v!309))))))

(declare-fun d!57267 () Bool)

(declare-fun c!35323 () Bool)

(assert (=> d!57267 (= c!35323 (and ((_ is Cons!2465) (toList!1259 lt!96919)) (= (_1!1788 (h!3106 (toList!1259 lt!96919))) (_1!1788 (tuple2!3557 key!828 v!309)))))))

(assert (=> d!57267 (= (getValueByKey!244 (toList!1259 lt!96919) (_1!1788 (tuple2!3557 key!828 v!309))) e!128387)))

(declare-fun b!195205 () Bool)

(assert (=> b!195205 (= e!128388 None!248)))

(assert (= (and d!57267 c!35323) b!195202))

(assert (= (and d!57267 (not c!35323)) b!195203))

(assert (= (and b!195203 c!35324) b!195204))

(assert (= (and b!195203 (not c!35324)) b!195205))

(declare-fun m!222745 () Bool)

(assert (=> b!195204 m!222745))

(assert (=> b!194223 d!57267))

(declare-fun d!57269 () Bool)

(declare-fun e!128390 () Bool)

(assert (=> d!57269 e!128390))

(declare-fun res!92188 () Bool)

(assert (=> d!57269 (=> res!92188 e!128390)))

(declare-fun lt!97397 () Bool)

(assert (=> d!57269 (= res!92188 (not lt!97397))))

(declare-fun lt!97398 () Bool)

(assert (=> d!57269 (= lt!97397 lt!97398)))

(declare-fun lt!97399 () Unit!5875)

(declare-fun e!128389 () Unit!5875)

(assert (=> d!57269 (= lt!97399 e!128389)))

(declare-fun c!35325 () Bool)

(assert (=> d!57269 (= c!35325 lt!97398)))

(assert (=> d!57269 (= lt!97398 (containsKey!248 (toList!1259 lt!96948) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> d!57269 (= (contains!1378 lt!96948 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) lt!97397)))

(declare-fun b!195206 () Bool)

(declare-fun lt!97400 () Unit!5875)

(assert (=> b!195206 (= e!128389 lt!97400)))

(assert (=> b!195206 (= lt!97400 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96948) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(assert (=> b!195206 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96948) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!195207 () Bool)

(declare-fun Unit!5925 () Unit!5875)

(assert (=> b!195207 (= e!128389 Unit!5925)))

(declare-fun b!195208 () Bool)

(assert (=> b!195208 (= e!128390 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96948) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (= (and d!57269 c!35325) b!195206))

(assert (= (and d!57269 (not c!35325)) b!195207))

(assert (= (and d!57269 (not res!92188)) b!195208))

(declare-fun m!222747 () Bool)

(assert (=> d!57269 m!222747))

(declare-fun m!222749 () Bool)

(assert (=> b!195206 m!222749))

(assert (=> b!195206 m!221125))

(assert (=> b!195206 m!221125))

(declare-fun m!222751 () Bool)

(assert (=> b!195206 m!222751))

(assert (=> b!195208 m!221125))

(assert (=> b!195208 m!221125))

(assert (=> b!195208 m!222751))

(assert (=> d!56619 d!57269))

(declare-fun b!195210 () Bool)

(declare-fun e!128391 () Option!250)

(declare-fun e!128392 () Option!250)

(assert (=> b!195210 (= e!128391 e!128392)))

(declare-fun c!35327 () Bool)

(assert (=> b!195210 (= c!35327 (and ((_ is Cons!2465) lt!96951) (not (= (_1!1788 (h!3106 lt!96951)) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))))

(declare-fun b!195209 () Bool)

(assert (=> b!195209 (= e!128391 (Some!249 (_2!1788 (h!3106 lt!96951))))))

(declare-fun b!195211 () Bool)

(assert (=> b!195211 (= e!128392 (getValueByKey!244 (t!7403 lt!96951) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun d!57271 () Bool)

(declare-fun c!35326 () Bool)

(assert (=> d!57271 (= c!35326 (and ((_ is Cons!2465) lt!96951) (= (_1!1788 (h!3106 lt!96951)) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (=> d!57271 (= (getValueByKey!244 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) e!128391)))

(declare-fun b!195212 () Bool)

(assert (=> b!195212 (= e!128392 None!248)))

(assert (= (and d!57271 c!35326) b!195209))

(assert (= (and d!57271 (not c!35326)) b!195210))

(assert (= (and b!195210 c!35327) b!195211))

(assert (= (and b!195210 (not c!35327)) b!195212))

(declare-fun m!222753 () Bool)

(assert (=> b!195211 m!222753))

(assert (=> d!56619 d!57271))

(declare-fun d!57273 () Bool)

(assert (=> d!57273 (= (getValueByKey!244 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) (Some!249 (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun lt!97401 () Unit!5875)

(assert (=> d!57273 (= lt!97401 (choose!1076 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun e!128393 () Bool)

(assert (=> d!57273 e!128393))

(declare-fun res!92189 () Bool)

(assert (=> d!57273 (=> (not res!92189) (not e!128393))))

(assert (=> d!57273 (= res!92189 (isStrictlySorted!352 lt!96951))))

(assert (=> d!57273 (= (lemmaContainsTupThenGetReturnValue!133 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) lt!97401)))

(declare-fun b!195213 () Bool)

(declare-fun res!92190 () Bool)

(assert (=> b!195213 (=> (not res!92190) (not e!128393))))

(assert (=> b!195213 (= res!92190 (containsKey!248 lt!96951 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!195214 () Bool)

(assert (=> b!195214 (= e!128393 (contains!1380 lt!96951 (tuple2!3557 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (= (and d!57273 res!92189) b!195213))

(assert (= (and b!195213 res!92190) b!195214))

(assert (=> d!57273 m!221119))

(declare-fun m!222755 () Bool)

(assert (=> d!57273 m!222755))

(declare-fun m!222757 () Bool)

(assert (=> d!57273 m!222757))

(declare-fun m!222759 () Bool)

(assert (=> b!195213 m!222759))

(declare-fun m!222761 () Bool)

(assert (=> b!195214 m!222761))

(assert (=> d!56619 d!57273))

(declare-fun bm!19729 () Bool)

(declare-fun e!128394 () List!2469)

(declare-fun c!35329 () Bool)

(declare-fun call!19733 () List!2469)

(assert (=> bm!19729 (= call!19733 ($colon$colon!102 e!128394 (ite c!35329 (h!3106 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (tuple2!3557 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))))

(declare-fun c!35328 () Bool)

(assert (=> bm!19729 (= c!35328 c!35329)))

(declare-fun b!195215 () Bool)

(declare-fun e!128398 () List!2469)

(declare-fun call!19732 () List!2469)

(assert (=> b!195215 (= e!128398 call!19732)))

(declare-fun b!195216 () Bool)

(declare-fun c!35330 () Bool)

(assert (=> b!195216 (= c!35330 (and ((_ is Cons!2465) (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (bvsgt (_1!1788 (h!3106 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun e!128396 () List!2469)

(assert (=> b!195216 (= e!128398 e!128396)))

(declare-fun e!128397 () Bool)

(declare-fun lt!97402 () List!2469)

(declare-fun b!195217 () Bool)

(assert (=> b!195217 (= e!128397 (contains!1380 lt!97402 (tuple2!3557 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun bm!19730 () Bool)

(declare-fun call!19734 () List!2469)

(assert (=> bm!19730 (= call!19734 call!19732)))

(declare-fun b!195218 () Bool)

(declare-fun e!128395 () List!2469)

(assert (=> b!195218 (= e!128395 e!128398)))

(declare-fun c!35331 () Bool)

(assert (=> b!195218 (= c!35331 (and ((_ is Cons!2465) (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (= (_1!1788 (h!3106 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(declare-fun d!57275 () Bool)

(assert (=> d!57275 e!128397))

(declare-fun res!92191 () Bool)

(assert (=> d!57275 (=> (not res!92191) (not e!128397))))

(assert (=> d!57275 (= res!92191 (isStrictlySorted!352 lt!97402))))

(assert (=> d!57275 (= lt!97402 e!128395)))

(assert (=> d!57275 (= c!35329 (and ((_ is Cons!2465) (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (bvslt (_1!1788 (h!3106 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))))))))

(assert (=> d!57275 (isStrictlySorted!352 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))))))

(assert (=> d!57275 (= (insertStrictlySorted!135 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))) lt!97402)))

(declare-fun bm!19731 () Bool)

(assert (=> bm!19731 (= call!19732 call!19733)))

(declare-fun b!195219 () Bool)

(assert (=> b!195219 (= e!128396 call!19734)))

(declare-fun b!195220 () Bool)

(assert (=> b!195220 (= e!128394 (insertStrictlySorted!135 (t!7403 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248)))) (_2!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!195221 () Bool)

(assert (=> b!195221 (= e!128396 call!19734)))

(declare-fun b!195222 () Bool)

(declare-fun res!92192 () Bool)

(assert (=> b!195222 (=> (not res!92192) (not e!128397))))

(assert (=> b!195222 (= res!92192 (containsKey!248 lt!97402 (_1!1788 (ite (or c!34998 c!34999) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 thiss!1248)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))))

(declare-fun b!195223 () Bool)

(assert (=> b!195223 (= e!128395 call!19733)))

(declare-fun b!195224 () Bool)

(assert (=> b!195224 (= e!128394 (ite c!35331 (t!7403 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (ite c!35330 (Cons!2465 (h!3106 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635)))) (t!7403 (toList!1259 (ite c!34998 call!19638 (ite c!34999 call!19637 call!19635))))) Nil!2466)))))

(assert (= (and d!57275 c!35329) b!195223))

(assert (= (and d!57275 (not c!35329)) b!195218))

(assert (= (and b!195218 c!35331) b!195215))

(assert (= (and b!195218 (not c!35331)) b!195216))

(assert (= (and b!195216 c!35330) b!195221))

(assert (= (and b!195216 (not c!35330)) b!195219))

(assert (= (or b!195221 b!195219) bm!19730))

(assert (= (or b!195215 bm!19730) bm!19731))

(assert (= (or b!195223 bm!19731) bm!19729))

(assert (= (and bm!19729 c!35328) b!195220))

(assert (= (and bm!19729 (not c!35328)) b!195224))

(assert (= (and d!57275 res!92191) b!195222))

(assert (= (and b!195222 res!92192) b!195217))

(declare-fun m!222763 () Bool)

(assert (=> bm!19729 m!222763))

(declare-fun m!222765 () Bool)

(assert (=> b!195222 m!222765))

(declare-fun m!222767 () Bool)

(assert (=> b!195217 m!222767))

(declare-fun m!222769 () Bool)

(assert (=> b!195220 m!222769))

(declare-fun m!222771 () Bool)

(assert (=> d!57275 m!222771))

(declare-fun m!222773 () Bool)

(assert (=> d!57275 m!222773))

(assert (=> d!56619 d!57275))

(declare-fun d!57277 () Bool)

(assert (=> d!57277 (= (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!96872)) (v!4252 (getValueByKey!244 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!96872)))))

(assert (=> d!56645 d!57277))

(declare-fun b!195226 () Bool)

(declare-fun e!128399 () Option!250)

(declare-fun e!128400 () Option!250)

(assert (=> b!195226 (= e!128399 e!128400)))

(declare-fun c!35333 () Bool)

(assert (=> b!195226 (= c!35333 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))) lt!96872))))))

(declare-fun b!195225 () Bool)

(assert (=> b!195225 (= e!128399 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))))

(declare-fun b!195227 () Bool)

(assert (=> b!195227 (= e!128400 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))) lt!96872))))

(declare-fun d!57279 () Bool)

(declare-fun c!35332 () Bool)

(assert (=> d!57279 (= c!35332 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))) lt!96872)))))

(assert (=> d!57279 (= (getValueByKey!244 (toList!1259 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!96872) e!128399)))

(declare-fun b!195228 () Bool)

(assert (=> b!195228 (= e!128400 None!248)))

(assert (= (and d!57279 c!35332) b!195225))

(assert (= (and d!57279 (not c!35332)) b!195226))

(assert (= (and b!195226 c!35333) b!195227))

(assert (= (and b!195226 (not c!35333)) b!195228))

(declare-fun m!222775 () Bool)

(assert (=> b!195227 m!222775))

(assert (=> d!56645 d!57279))

(declare-fun d!57281 () Bool)

(declare-fun e!128402 () Bool)

(assert (=> d!57281 e!128402))

(declare-fun res!92193 () Bool)

(assert (=> d!57281 (=> res!92193 e!128402)))

(declare-fun lt!97403 () Bool)

(assert (=> d!57281 (= res!92193 (not lt!97403))))

(declare-fun lt!97404 () Bool)

(assert (=> d!57281 (= lt!97403 lt!97404)))

(declare-fun lt!97405 () Unit!5875)

(declare-fun e!128401 () Unit!5875)

(assert (=> d!57281 (= lt!97405 e!128401)))

(declare-fun c!35334 () Bool)

(assert (=> d!57281 (= c!35334 lt!97404)))

(assert (=> d!57281 (= lt!97404 (containsKey!248 (toList!1259 lt!97024) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(assert (=> d!57281 (= (contains!1378 lt!97024 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!97403)))

(declare-fun b!195229 () Bool)

(declare-fun lt!97406 () Unit!5875)

(assert (=> b!195229 (= e!128401 lt!97406)))

(assert (=> b!195229 (= lt!97406 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97024) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(assert (=> b!195229 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97024) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun b!195230 () Bool)

(declare-fun Unit!5926 () Unit!5875)

(assert (=> b!195230 (= e!128401 Unit!5926)))

(declare-fun b!195231 () Bool)

(assert (=> b!195231 (= e!128402 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97024) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57281 c!35334) b!195229))

(assert (= (and d!57281 (not c!35334)) b!195230))

(assert (= (and d!57281 (not res!92193)) b!195231))

(declare-fun m!222777 () Bool)

(assert (=> d!57281 m!222777))

(declare-fun m!222779 () Bool)

(assert (=> b!195229 m!222779))

(assert (=> b!195229 m!221325))

(assert (=> b!195229 m!221325))

(declare-fun m!222781 () Bool)

(assert (=> b!195229 m!222781))

(assert (=> b!195231 m!221325))

(assert (=> b!195231 m!221325))

(assert (=> b!195231 m!222781))

(assert (=> d!56681 d!57281))

(declare-fun b!195233 () Bool)

(declare-fun e!128403 () Option!250)

(declare-fun e!128404 () Option!250)

(assert (=> b!195233 (= e!128403 e!128404)))

(declare-fun c!35336 () Bool)

(assert (=> b!195233 (= c!35336 (and ((_ is Cons!2465) lt!97027) (not (= (_1!1788 (h!3106 lt!97027)) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))))

(declare-fun b!195232 () Bool)

(assert (=> b!195232 (= e!128403 (Some!249 (_2!1788 (h!3106 lt!97027))))))

(declare-fun b!195234 () Bool)

(assert (=> b!195234 (= e!128404 (getValueByKey!244 (t!7403 lt!97027) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun d!57283 () Bool)

(declare-fun c!35335 () Bool)

(assert (=> d!57283 (= c!35335 (and ((_ is Cons!2465) lt!97027) (= (_1!1788 (h!3106 lt!97027)) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(assert (=> d!57283 (= (getValueByKey!244 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) e!128403)))

(declare-fun b!195235 () Bool)

(assert (=> b!195235 (= e!128404 None!248)))

(assert (= (and d!57283 c!35335) b!195232))

(assert (= (and d!57283 (not c!35335)) b!195233))

(assert (= (and b!195233 c!35336) b!195234))

(assert (= (and b!195233 (not c!35336)) b!195235))

(declare-fun m!222783 () Bool)

(assert (=> b!195234 m!222783))

(assert (=> d!56681 d!57283))

(declare-fun d!57285 () Bool)

(assert (=> d!57285 (= (getValueByKey!244 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97407 () Unit!5875)

(assert (=> d!57285 (= lt!97407 (choose!1076 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun e!128405 () Bool)

(assert (=> d!57285 e!128405))

(declare-fun res!92194 () Bool)

(assert (=> d!57285 (=> (not res!92194) (not e!128405))))

(assert (=> d!57285 (= res!92194 (isStrictlySorted!352 lt!97027))))

(assert (=> d!57285 (= (lemmaContainsTupThenGetReturnValue!133 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!97407)))

(declare-fun b!195236 () Bool)

(declare-fun res!92195 () Bool)

(assert (=> b!195236 (=> (not res!92195) (not e!128405))))

(assert (=> b!195236 (= res!92195 (containsKey!248 lt!97027 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun b!195237 () Bool)

(assert (=> b!195237 (= e!128405 (contains!1380 lt!97027 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57285 res!92194) b!195236))

(assert (= (and b!195236 res!92195) b!195237))

(assert (=> d!57285 m!221319))

(declare-fun m!222785 () Bool)

(assert (=> d!57285 m!222785))

(declare-fun m!222787 () Bool)

(assert (=> d!57285 m!222787))

(declare-fun m!222789 () Bool)

(assert (=> b!195236 m!222789))

(declare-fun m!222791 () Bool)

(assert (=> b!195237 m!222791))

(assert (=> d!56681 d!57285))

(declare-fun call!19736 () List!2469)

(declare-fun bm!19732 () Bool)

(declare-fun c!35338 () Bool)

(declare-fun e!128406 () List!2469)

(assert (=> bm!19732 (= call!19736 ($colon$colon!102 e!128406 (ite c!35338 (h!3106 (toList!1259 lt!96838)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))))

(declare-fun c!35337 () Bool)

(assert (=> bm!19732 (= c!35337 c!35338)))

(declare-fun b!195238 () Bool)

(declare-fun e!128410 () List!2469)

(declare-fun call!19735 () List!2469)

(assert (=> b!195238 (= e!128410 call!19735)))

(declare-fun b!195239 () Bool)

(declare-fun c!35339 () Bool)

(assert (=> b!195239 (= c!35339 (and ((_ is Cons!2465) (toList!1259 lt!96838)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96838))) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(declare-fun e!128408 () List!2469)

(assert (=> b!195239 (= e!128410 e!128408)))

(declare-fun lt!97408 () List!2469)

(declare-fun e!128409 () Bool)

(declare-fun b!195240 () Bool)

(assert (=> b!195240 (= e!128409 (contains!1380 lt!97408 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(declare-fun bm!19733 () Bool)

(declare-fun call!19737 () List!2469)

(assert (=> bm!19733 (= call!19737 call!19735)))

(declare-fun b!195241 () Bool)

(declare-fun e!128407 () List!2469)

(assert (=> b!195241 (= e!128407 e!128410)))

(declare-fun c!35340 () Bool)

(assert (=> b!195241 (= c!35340 (and ((_ is Cons!2465) (toList!1259 lt!96838)) (= (_1!1788 (h!3106 (toList!1259 lt!96838))) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(declare-fun d!57287 () Bool)

(assert (=> d!57287 e!128409))

(declare-fun res!92196 () Bool)

(assert (=> d!57287 (=> (not res!92196) (not e!128409))))

(assert (=> d!57287 (= res!92196 (isStrictlySorted!352 lt!97408))))

(assert (=> d!57287 (= lt!97408 e!128407)))

(assert (=> d!57287 (= c!35338 (and ((_ is Cons!2465) (toList!1259 lt!96838)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96838))) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))))))))

(assert (=> d!57287 (isStrictlySorted!352 (toList!1259 lt!96838))))

(assert (=> d!57287 (= (insertStrictlySorted!135 (toList!1259 lt!96838) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))) lt!97408)))

(declare-fun bm!19734 () Bool)

(assert (=> bm!19734 (= call!19735 call!19736)))

(declare-fun b!195242 () Bool)

(assert (=> b!195242 (= e!128408 call!19737)))

(declare-fun b!195243 () Bool)

(assert (=> b!195243 (= e!128406 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96838)) (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun b!195244 () Bool)

(assert (=> b!195244 (= e!128408 call!19737)))

(declare-fun b!195245 () Bool)

(declare-fun res!92197 () Bool)

(assert (=> b!195245 (=> (not res!92197) (not e!128409))))

(assert (=> b!195245 (= res!92197 (containsKey!248 lt!97408 (_1!1788 (tuple2!3557 lt!96829 (minValue!3801 thiss!1248)))))))

(declare-fun b!195246 () Bool)

(assert (=> b!195246 (= e!128407 call!19736)))

(declare-fun b!195247 () Bool)

(assert (=> b!195247 (= e!128406 (ite c!35340 (t!7403 (toList!1259 lt!96838)) (ite c!35339 (Cons!2465 (h!3106 (toList!1259 lt!96838)) (t!7403 (toList!1259 lt!96838))) Nil!2466)))))

(assert (= (and d!57287 c!35338) b!195246))

(assert (= (and d!57287 (not c!35338)) b!195241))

(assert (= (and b!195241 c!35340) b!195238))

(assert (= (and b!195241 (not c!35340)) b!195239))

(assert (= (and b!195239 c!35339) b!195244))

(assert (= (and b!195239 (not c!35339)) b!195242))

(assert (= (or b!195244 b!195242) bm!19733))

(assert (= (or b!195238 bm!19733) bm!19734))

(assert (= (or b!195246 bm!19734) bm!19732))

(assert (= (and bm!19732 c!35337) b!195243))

(assert (= (and bm!19732 (not c!35337)) b!195247))

(assert (= (and d!57287 res!92196) b!195245))

(assert (= (and b!195245 res!92197) b!195240))

(declare-fun m!222793 () Bool)

(assert (=> bm!19732 m!222793))

(declare-fun m!222795 () Bool)

(assert (=> b!195245 m!222795))

(declare-fun m!222797 () Bool)

(assert (=> b!195240 m!222797))

(declare-fun m!222799 () Bool)

(assert (=> b!195243 m!222799))

(declare-fun m!222801 () Bool)

(assert (=> d!57287 m!222801))

(declare-fun m!222803 () Bool)

(assert (=> d!57287 m!222803))

(assert (=> d!56681 d!57287))

(assert (=> d!56671 d!56673))

(assert (=> d!56671 d!56675))

(declare-fun d!57289 () Bool)

(assert (=> d!57289 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))))))

(assert (=> d!57289 true))

(declare-fun _$12!451 () Unit!5875)

(assert (=> d!57289 (= (choose!1075 (toList!1259 lt!96691) (select (arr!3874 (_keys!5954 thiss!1248)) (index!4987 lt!96699))) _$12!451)))

(declare-fun bs!7800 () Bool)

(assert (= bs!7800 d!57289))

(assert (=> bs!7800 m!220737))

(assert (=> bs!7800 m!220919))

(assert (=> bs!7800 m!220919))

(assert (=> bs!7800 m!220921))

(assert (=> d!56671 d!57289))

(declare-fun d!57291 () Bool)

(declare-fun res!92198 () Bool)

(declare-fun e!128411 () Bool)

(assert (=> d!57291 (=> res!92198 e!128411)))

(assert (=> d!57291 (= res!92198 (or ((_ is Nil!2466) (toList!1259 lt!96691)) ((_ is Nil!2466) (t!7403 (toList!1259 lt!96691)))))))

(assert (=> d!57291 (= (isStrictlySorted!352 (toList!1259 lt!96691)) e!128411)))

(declare-fun b!195248 () Bool)

(declare-fun e!128412 () Bool)

(assert (=> b!195248 (= e!128411 e!128412)))

(declare-fun res!92199 () Bool)

(assert (=> b!195248 (=> (not res!92199) (not e!128412))))

(assert (=> b!195248 (= res!92199 (bvslt (_1!1788 (h!3106 (toList!1259 lt!96691))) (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96691))))))))

(declare-fun b!195249 () Bool)

(assert (=> b!195249 (= e!128412 (isStrictlySorted!352 (t!7403 (toList!1259 lt!96691))))))

(assert (= (and d!57291 (not res!92198)) b!195248))

(assert (= (and b!195248 res!92199) b!195249))

(declare-fun m!222805 () Bool)

(assert (=> b!195249 m!222805))

(assert (=> d!56671 d!57291))

(assert (=> d!56785 d!56597))

(assert (=> d!56785 d!56569))

(declare-fun d!57293 () Bool)

(assert (=> d!57293 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))

(declare-fun lt!97409 () Unit!5875)

(assert (=> d!57293 (= lt!97409 (choose!1075 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))

(declare-fun e!128413 () Bool)

(assert (=> d!57293 e!128413))

(declare-fun res!92200 () Bool)

(assert (=> d!57293 (=> (not res!92200) (not e!128413))))

(assert (=> d!57293 (= res!92200 (isStrictlySorted!352 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57293 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854) lt!97409)))

(declare-fun b!195250 () Bool)

(assert (=> b!195250 (= e!128413 (containsKey!248 (toList!1259 (+!317 lt!96858 (tuple2!3557 lt!96874 (zeroValue!3801 thiss!1248)))) lt!96854))))

(assert (= (and d!57293 res!92200) b!195250))

(assert (=> d!57293 m!221269))

(assert (=> d!57293 m!221269))

(assert (=> d!57293 m!221271))

(declare-fun m!222807 () Bool)

(assert (=> d!57293 m!222807))

(declare-fun m!222809 () Bool)

(assert (=> d!57293 m!222809))

(assert (=> b!195250 m!221265))

(assert (=> b!194371 d!57293))

(assert (=> b!194371 d!57143))

(assert (=> b!194371 d!57145))

(declare-fun d!57295 () Bool)

(declare-fun lt!97410 () Bool)

(assert (=> d!57295 (= lt!97410 (select (content!154 lt!96842) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun e!128415 () Bool)

(assert (=> d!57295 (= lt!97410 e!128415)))

(declare-fun res!92201 () Bool)

(assert (=> d!57295 (=> (not res!92201) (not e!128415))))

(assert (=> d!57295 (= res!92201 ((_ is Cons!2465) lt!96842))))

(assert (=> d!57295 (= (contains!1380 lt!96842 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))) lt!97410)))

(declare-fun b!195251 () Bool)

(declare-fun e!128414 () Bool)

(assert (=> b!195251 (= e!128415 e!128414)))

(declare-fun res!92202 () Bool)

(assert (=> b!195251 (=> res!92202 e!128414)))

(assert (=> b!195251 (= res!92202 (= (h!3106 lt!96842) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun b!195252 () Bool)

(assert (=> b!195252 (= e!128414 (contains!1380 (t!7403 lt!96842) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(assert (= (and d!57295 res!92201) b!195251))

(assert (= (and b!195251 (not res!92202)) b!195252))

(declare-fun m!222811 () Bool)

(assert (=> d!57295 m!222811))

(declare-fun m!222813 () Bool)

(assert (=> d!57295 m!222813))

(declare-fun m!222815 () Bool)

(assert (=> b!195252 m!222815))

(assert (=> b!194576 d!57295))

(declare-fun d!57297 () Bool)

(assert (=> d!57297 (= (apply!188 lt!96936 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2239 (getValueByKey!244 (toList!1259 lt!96936) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7801 () Bool)

(assert (= bs!7801 d!57297))

(declare-fun m!222817 () Bool)

(assert (=> bs!7801 m!222817))

(assert (=> bs!7801 m!222817))

(declare-fun m!222819 () Bool)

(assert (=> bs!7801 m!222819))

(assert (=> b!194238 d!57297))

(declare-fun b!195254 () Bool)

(declare-fun e!128416 () Option!250)

(declare-fun e!128417 () Option!250)

(assert (=> b!195254 (= e!128416 e!128417)))

(declare-fun c!35342 () Bool)

(assert (=> b!195254 (= c!35342 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (not (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) key!828))))))

(declare-fun b!195253 () Bool)

(assert (=> b!195253 (= e!128416 (Some!249 (_2!1788 (h!3106 (t!7403 (toList!1259 lt!96698))))))))

(declare-fun b!195255 () Bool)

(assert (=> b!195255 (= e!128417 (getValueByKey!244 (t!7403 (t!7403 (toList!1259 lt!96698))) key!828))))

(declare-fun d!57299 () Bool)

(declare-fun c!35341 () Bool)

(assert (=> d!57299 (= c!35341 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96698))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96698)))) key!828)))))

(assert (=> d!57299 (= (getValueByKey!244 (t!7403 (toList!1259 lt!96698)) key!828) e!128416)))

(declare-fun b!195256 () Bool)

(assert (=> b!195256 (= e!128417 None!248)))

(assert (= (and d!57299 c!35341) b!195253))

(assert (= (and d!57299 (not c!35341)) b!195254))

(assert (= (and b!195254 c!35342) b!195255))

(assert (= (and b!195254 (not c!35342)) b!195256))

(declare-fun m!222821 () Bool)

(assert (=> b!195255 m!222821))

(assert (=> b!194453 d!57299))

(assert (=> b!194560 d!56959))

(declare-fun d!57301 () Bool)

(assert (=> d!57301 (= (apply!188 (+!317 lt!96860 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) lt!96872) (apply!188 lt!96860 lt!96872))))

(assert (=> d!57301 true))

(declare-fun _$34!1091 () Unit!5875)

(assert (=> d!57301 (= (choose!1077 lt!96860 lt!96868 (minValue!3801 thiss!1248) lt!96872) _$34!1091)))

(declare-fun bs!7802 () Bool)

(assert (= bs!7802 d!57301))

(assert (=> bs!7802 m!220959))

(assert (=> bs!7802 m!220959))

(assert (=> bs!7802 m!220961))

(assert (=> bs!7802 m!220977))

(assert (=> d!56647 d!57301))

(declare-fun d!57303 () Bool)

(declare-fun e!128419 () Bool)

(assert (=> d!57303 e!128419))

(declare-fun res!92203 () Bool)

(assert (=> d!57303 (=> res!92203 e!128419)))

(declare-fun lt!97411 () Bool)

(assert (=> d!57303 (= res!92203 (not lt!97411))))

(declare-fun lt!97412 () Bool)

(assert (=> d!57303 (= lt!97411 lt!97412)))

(declare-fun lt!97413 () Unit!5875)

(declare-fun e!128418 () Unit!5875)

(assert (=> d!57303 (= lt!97413 e!128418)))

(declare-fun c!35343 () Bool)

(assert (=> d!57303 (= c!35343 lt!97412)))

(assert (=> d!57303 (= lt!97412 (containsKey!248 (toList!1259 lt!96860) lt!96872))))

(assert (=> d!57303 (= (contains!1378 lt!96860 lt!96872) lt!97411)))

(declare-fun b!195257 () Bool)

(declare-fun lt!97414 () Unit!5875)

(assert (=> b!195257 (= e!128418 lt!97414)))

(assert (=> b!195257 (= lt!97414 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96860) lt!96872))))

(assert (=> b!195257 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96860) lt!96872))))

(declare-fun b!195258 () Bool)

(declare-fun Unit!5927 () Unit!5875)

(assert (=> b!195258 (= e!128418 Unit!5927)))

(declare-fun b!195259 () Bool)

(assert (=> b!195259 (= e!128419 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96860) lt!96872)))))

(assert (= (and d!57303 c!35343) b!195257))

(assert (= (and d!57303 (not c!35343)) b!195258))

(assert (= (and d!57303 (not res!92203)) b!195259))

(declare-fun m!222823 () Bool)

(assert (=> d!57303 m!222823))

(declare-fun m!222825 () Bool)

(assert (=> b!195257 m!222825))

(assert (=> b!195257 m!221221))

(assert (=> b!195257 m!221221))

(declare-fun m!222827 () Bool)

(assert (=> b!195257 m!222827))

(assert (=> b!195259 m!221221))

(assert (=> b!195259 m!221221))

(assert (=> b!195259 m!222827))

(assert (=> d!56647 d!57303))

(assert (=> d!56647 d!56645))

(assert (=> d!56647 d!56649))

(assert (=> d!56647 d!56653))

(declare-fun d!57305 () Bool)

(assert (=> d!57305 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!97415 () Unit!5875)

(assert (=> d!57305 (= lt!97415 (choose!1075 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128420 () Bool)

(assert (=> d!57305 e!128420))

(declare-fun res!92204 () Bool)

(assert (=> d!57305 (=> (not res!92204) (not e!128420))))

(assert (=> d!57305 (= res!92204 (isStrictlySorted!352 (toList!1259 lt!96830)))))

(assert (=> d!57305 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000) lt!97415)))

(declare-fun b!195260 () Bool)

(assert (=> b!195260 (= e!128420 (containsKey!248 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57305 res!92204) b!195260))

(assert (=> d!57305 m!221541))

(assert (=> d!57305 m!221541))

(assert (=> d!57305 m!221543))

(declare-fun m!222829 () Bool)

(assert (=> d!57305 m!222829))

(assert (=> d!57305 m!222245))

(assert (=> b!195260 m!221537))

(assert (=> b!194536 d!57305))

(assert (=> b!194536 d!57153))

(assert (=> b!194536 d!57155))

(declare-fun d!57307 () Bool)

(assert (=> d!57307 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))) (v!4252 (getValueByKey!244 (toList!1259 lt!96830) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!56753 d!57307))

(assert (=> d!56753 d!56871))

(assert (=> d!56611 d!56999))

(assert (=> b!194450 d!56629))

(declare-fun d!57309 () Bool)

(declare-fun e!128421 () Bool)

(assert (=> d!57309 e!128421))

(declare-fun res!92205 () Bool)

(assert (=> d!57309 (=> (not res!92205) (not e!128421))))

(declare-fun lt!97416 () ListLongMap!2487)

(assert (=> d!57309 (= res!92205 (contains!1378 lt!97416 (_1!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))))

(declare-fun lt!97419 () List!2469)

(assert (=> d!57309 (= lt!97416 (ListLongMap!2488 lt!97419))))

(declare-fun lt!97417 () Unit!5875)

(declare-fun lt!97418 () Unit!5875)

(assert (=> d!57309 (= lt!97417 lt!97418)))

(assert (=> d!57309 (= (getValueByKey!244 lt!97419 (_1!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))) (Some!249 (_2!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))))

(assert (=> d!57309 (= lt!97418 (lemmaContainsTupThenGetReturnValue!133 lt!97419 (_1!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))) (_2!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))))

(assert (=> d!57309 (= lt!97419 (insertStrictlySorted!135 (toList!1259 (ite c!35115 call!19683 (ite c!35116 call!19682 call!19680))) (_1!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))) (_2!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))))

(assert (=> d!57309 (= (+!317 (ite c!35115 call!19683 (ite c!35116 call!19682 call!19680)) (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))) lt!97416)))

(declare-fun b!195261 () Bool)

(declare-fun res!92206 () Bool)

(assert (=> b!195261 (=> (not res!92206) (not e!128421))))

(assert (=> b!195261 (= res!92206 (= (getValueByKey!244 (toList!1259 lt!97416) (_1!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))) (Some!249 (_2!1788 (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))))

(declare-fun b!195262 () Bool)

(assert (=> b!195262 (= e!128421 (contains!1380 (toList!1259 lt!97416) (ite (or c!35115 c!35116) (tuple2!3557 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3801 lt!96693)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))

(assert (= (and d!57309 res!92205) b!195261))

(assert (= (and b!195261 res!92206) b!195262))

(declare-fun m!222831 () Bool)

(assert (=> d!57309 m!222831))

(declare-fun m!222833 () Bool)

(assert (=> d!57309 m!222833))

(declare-fun m!222835 () Bool)

(assert (=> d!57309 m!222835))

(declare-fun m!222837 () Bool)

(assert (=> d!57309 m!222837))

(declare-fun m!222839 () Bool)

(assert (=> b!195261 m!222839))

(declare-fun m!222841 () Bool)

(assert (=> b!195262 m!222841))

(assert (=> bm!19678 d!57309))

(declare-fun d!57311 () Bool)

(assert (=> d!57311 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96751) (_1!1788 lt!96700)))))

(declare-fun lt!97420 () Unit!5875)

(assert (=> d!57311 (= lt!97420 (choose!1075 (toList!1259 lt!96751) (_1!1788 lt!96700)))))

(declare-fun e!128422 () Bool)

(assert (=> d!57311 e!128422))

(declare-fun res!92207 () Bool)

(assert (=> d!57311 (=> (not res!92207) (not e!128422))))

(assert (=> d!57311 (= res!92207 (isStrictlySorted!352 (toList!1259 lt!96751)))))

(assert (=> d!57311 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96751) (_1!1788 lt!96700)) lt!97420)))

(declare-fun b!195263 () Bool)

(assert (=> b!195263 (= e!128422 (containsKey!248 (toList!1259 lt!96751) (_1!1788 lt!96700)))))

(assert (= (and d!57311 res!92207) b!195263))

(assert (=> d!57311 m!220803))

(assert (=> d!57311 m!220803))

(assert (=> d!57311 m!221133))

(declare-fun m!222843 () Bool)

(assert (=> d!57311 m!222843))

(declare-fun m!222845 () Bool)

(assert (=> d!57311 m!222845))

(assert (=> b!195263 m!221129))

(assert (=> b!194267 d!57311))

(assert (=> b!194267 d!57203))

(assert (=> b!194267 d!56711))

(declare-fun d!57313 () Bool)

(assert (=> d!57313 (= (get!2240 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!4248 (select (arr!3875 (_values!3943 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!194499 d!57313))

(assert (=> b!194225 d!56593))

(declare-fun b!195265 () Bool)

(declare-fun e!128423 () Option!250)

(declare-fun e!128424 () Option!250)

(assert (=> b!195265 (= e!128423 e!128424)))

(declare-fun c!35345 () Bool)

(assert (=> b!195265 (= c!35345 (and ((_ is Cons!2465) (toList!1259 lt!97038)) (not (= (_1!1788 (h!3106 (toList!1259 lt!97038))) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!195264 () Bool)

(assert (=> b!195264 (= e!128423 (Some!249 (_2!1788 (h!3106 (toList!1259 lt!97038)))))))

(declare-fun b!195266 () Bool)

(assert (=> b!195266 (= e!128424 (getValueByKey!244 (t!7403 (toList!1259 lt!97038)) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!57315 () Bool)

(declare-fun c!35344 () Bool)

(assert (=> d!57315 (= c!35344 (and ((_ is Cons!2465) (toList!1259 lt!97038)) (= (_1!1788 (h!3106 (toList!1259 lt!97038))) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57315 (= (getValueByKey!244 (toList!1259 lt!97038) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) e!128423)))

(declare-fun b!195267 () Bool)

(assert (=> b!195267 (= e!128424 None!248)))

(assert (= (and d!57315 c!35344) b!195264))

(assert (= (and d!57315 (not c!35344)) b!195265))

(assert (= (and b!195265 c!35345) b!195266))

(assert (= (and b!195265 (not c!35345)) b!195267))

(declare-fun m!222847 () Bool)

(assert (=> b!195266 m!222847))

(assert (=> b!194395 d!57315))

(declare-fun d!57317 () Bool)

(assert (=> d!57317 (isDefined!198 (getValueByKey!244 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))

(declare-fun lt!97421 () Unit!5875)

(assert (=> d!57317 (= lt!97421 (choose!1075 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))

(declare-fun e!128425 () Bool)

(assert (=> d!57317 e!128425))

(declare-fun res!92208 () Bool)

(assert (=> d!57317 (=> (not res!92208) (not e!128425))))

(assert (=> d!57317 (= res!92208 (isStrictlySorted!352 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57317 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817) lt!97421)))

(declare-fun b!195268 () Bool)

(assert (=> b!195268 (= e!128425 (containsKey!248 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817))))

(assert (= (and d!57317 res!92208) b!195268))

(assert (=> d!57317 m!221333))

(assert (=> d!57317 m!221333))

(assert (=> d!57317 m!221335))

(declare-fun m!222849 () Bool)

(assert (=> d!57317 m!222849))

(declare-fun m!222851 () Bool)

(assert (=> d!57317 m!222851))

(assert (=> b!195268 m!221329))

(assert (=> b!194388 d!57317))

(assert (=> b!194388 d!57205))

(assert (=> b!194388 d!57207))

(assert (=> d!56729 d!56607))

(assert (=> d!56729 d!56579))

(assert (=> d!56729 d!56609))

(assert (=> b!194380 d!56795))

(assert (=> b!194380 d!56797))

(assert (=> d!56609 d!56605))

(declare-fun d!57319 () Bool)

(declare-fun res!92209 () Bool)

(declare-fun e!128426 () Bool)

(assert (=> d!57319 (=> res!92209 e!128426)))

(assert (=> d!57319 (= res!92209 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (= (_1!1788 (h!3106 (toList!1259 lt!96830))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57319 (= (containsKey!248 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000) e!128426)))

(declare-fun b!195269 () Bool)

(declare-fun e!128427 () Bool)

(assert (=> b!195269 (= e!128426 e!128427)))

(declare-fun res!92210 () Bool)

(assert (=> b!195269 (=> (not res!92210) (not e!128427))))

(assert (=> b!195269 (= res!92210 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96830))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96830))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2465) (toList!1259 lt!96830)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96830))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!195270 () Bool)

(assert (=> b!195270 (= e!128427 (containsKey!248 (t!7403 (toList!1259 lt!96830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57319 (not res!92209)) b!195269))

(assert (= (and b!195269 res!92210) b!195270))

(declare-fun m!222853 () Bool)

(assert (=> b!195270 m!222853))

(assert (=> d!56733 d!57319))

(declare-fun d!57321 () Bool)

(assert (=> d!57321 (= (size!4202 lt!96693) (bvadd (_size!1405 lt!96693) (bvsdiv (bvadd (extraKeys!3697 lt!96693) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!194248 d!57321))

(assert (=> d!56601 d!56605))

(assert (=> b!194406 d!56593))

(assert (=> bm!19682 d!57189))

(declare-fun d!57323 () Bool)

(declare-fun e!128429 () Bool)

(assert (=> d!57323 e!128429))

(declare-fun res!92211 () Bool)

(assert (=> d!57323 (=> res!92211 e!128429)))

(declare-fun lt!97422 () Bool)

(assert (=> d!57323 (= res!92211 (not lt!97422))))

(declare-fun lt!97423 () Bool)

(assert (=> d!57323 (= lt!97422 lt!97423)))

(declare-fun lt!97424 () Unit!5875)

(declare-fun e!128428 () Unit!5875)

(assert (=> d!57323 (= lt!97424 e!128428)))

(declare-fun c!35346 () Bool)

(assert (=> d!57323 (= c!35346 lt!97423)))

(assert (=> d!57323 (= lt!97423 (containsKey!248 (toList!1259 lt!96985) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!57323 (= (contains!1378 lt!96985 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) lt!97422)))

(declare-fun b!195271 () Bool)

(declare-fun lt!97425 () Unit!5875)

(assert (=> b!195271 (= e!128428 lt!97425)))

(assert (=> b!195271 (= lt!97425 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96985) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!195271 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96985) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!195272 () Bool)

(declare-fun Unit!5928 () Unit!5875)

(assert (=> b!195272 (= e!128428 Unit!5928)))

(declare-fun b!195273 () Bool)

(assert (=> b!195273 (= e!128429 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96985) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!57323 c!35346) b!195271))

(assert (= (and d!57323 (not c!35346)) b!195272))

(assert (= (and d!57323 (not res!92211)) b!195273))

(assert (=> d!57323 m!220855))

(declare-fun m!222855 () Bool)

(assert (=> d!57323 m!222855))

(assert (=> b!195271 m!220855))

(declare-fun m!222857 () Bool)

(assert (=> b!195271 m!222857))

(assert (=> b!195271 m!220855))

(assert (=> b!195271 m!221909))

(assert (=> b!195271 m!221909))

(declare-fun m!222859 () Bool)

(assert (=> b!195271 m!222859))

(assert (=> b!195273 m!220855))

(assert (=> b!195273 m!221909))

(assert (=> b!195273 m!221909))

(assert (=> b!195273 m!222859))

(assert (=> b!194350 d!57323))

(declare-fun d!57325 () Bool)

(declare-fun lt!97426 () Bool)

(assert (=> d!57325 (= lt!97426 (select (content!154 lt!96961) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun e!128431 () Bool)

(assert (=> d!57325 (= lt!97426 e!128431)))

(declare-fun res!92212 () Bool)

(assert (=> d!57325 (=> (not res!92212) (not e!128431))))

(assert (=> d!57325 (= res!92212 ((_ is Cons!2465) lt!96961))))

(assert (=> d!57325 (= (contains!1380 lt!96961 (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))) lt!97426)))

(declare-fun b!195274 () Bool)

(declare-fun e!128430 () Bool)

(assert (=> b!195274 (= e!128431 e!128430)))

(declare-fun res!92213 () Bool)

(assert (=> b!195274 (=> res!92213 e!128430)))

(assert (=> b!195274 (= res!92213 (= (h!3106 lt!96961) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(declare-fun b!195275 () Bool)

(assert (=> b!195275 (= e!128430 (contains!1380 (t!7403 lt!96961) (tuple2!3557 (_1!1788 lt!96700) (_2!1788 lt!96700))))))

(assert (= (and d!57325 res!92212) b!195274))

(assert (= (and b!195274 (not res!92213)) b!195275))

(declare-fun m!222861 () Bool)

(assert (=> d!57325 m!222861))

(declare-fun m!222863 () Bool)

(assert (=> d!57325 m!222863))

(declare-fun m!222865 () Bool)

(assert (=> b!195275 m!222865))

(assert (=> b!194302 d!57325))

(declare-fun d!57327 () Bool)

(declare-fun e!128432 () Bool)

(assert (=> d!57327 e!128432))

(declare-fun res!92214 () Bool)

(assert (=> d!57327 (=> (not res!92214) (not e!128432))))

(declare-fun lt!97427 () ListLongMap!2487)

(assert (=> d!57327 (= res!92214 (contains!1378 lt!97427 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))

(declare-fun lt!97430 () List!2469)

(assert (=> d!57327 (= lt!97427 (ListLongMap!2488 lt!97430))))

(declare-fun lt!97428 () Unit!5875)

(declare-fun lt!97429 () Unit!5875)

(assert (=> d!57327 (= lt!97428 lt!97429)))

(assert (=> d!57327 (= (getValueByKey!244 lt!97430 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))

(assert (=> d!57327 (= lt!97429 (lemmaContainsTupThenGetReturnValue!133 lt!97430 (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))

(assert (=> d!57327 (= lt!97430 (insertStrictlySorted!135 (toList!1259 call!19684) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))) (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))))))

(assert (=> d!57327 (= (+!317 call!19684 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))) lt!97427)))

(declare-fun b!195276 () Bool)

(declare-fun res!92215 () Bool)

(assert (=> b!195276 (=> (not res!92215) (not e!128432))))

(assert (=> b!195276 (= res!92215 (= (getValueByKey!244 (toList!1259 lt!97427) (_1!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693)))) (Some!249 (_2!1788 (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))))

(declare-fun b!195277 () Bool)

(assert (=> b!195277 (= e!128432 (contains!1380 (toList!1259 lt!97427) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 lt!96693))))))

(assert (= (and d!57327 res!92214) b!195276))

(assert (= (and b!195276 res!92215) b!195277))

(declare-fun m!222867 () Bool)

(assert (=> d!57327 m!222867))

(declare-fun m!222869 () Bool)

(assert (=> d!57327 m!222869))

(declare-fun m!222871 () Bool)

(assert (=> d!57327 m!222871))

(declare-fun m!222873 () Bool)

(assert (=> d!57327 m!222873))

(declare-fun m!222875 () Bool)

(assert (=> b!195276 m!222875))

(declare-fun m!222877 () Bool)

(assert (=> b!195277 m!222877))

(assert (=> b!194552 d!57327))

(declare-fun d!57329 () Bool)

(assert (=> d!57329 (= (get!2239 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!4252 (getValueByKey!244 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!56787 d!57329))

(assert (=> d!56787 d!57155))

(assert (=> d!56717 d!56591))

(assert (=> b!194570 d!56857))

(assert (=> b!194570 d!56741))

(declare-fun d!57331 () Bool)

(declare-fun e!128434 () Bool)

(assert (=> d!57331 e!128434))

(declare-fun res!92216 () Bool)

(assert (=> d!57331 (=> res!92216 e!128434)))

(declare-fun lt!97431 () Bool)

(assert (=> d!57331 (= res!92216 (not lt!97431))))

(declare-fun lt!97432 () Bool)

(assert (=> d!57331 (= lt!97431 lt!97432)))

(declare-fun lt!97433 () Unit!5875)

(declare-fun e!128433 () Unit!5875)

(assert (=> d!57331 (= lt!97433 e!128433)))

(declare-fun c!35347 () Bool)

(assert (=> d!57331 (= c!35347 lt!97432)))

(assert (=> d!57331 (= lt!97432 (containsKey!248 (toList!1259 lt!97038) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(assert (=> d!57331 (= (contains!1378 lt!97038 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!97431)))

(declare-fun b!195278 () Bool)

(declare-fun lt!97434 () Unit!5875)

(assert (=> b!195278 (= e!128433 lt!97434)))

(assert (=> b!195278 (= lt!97434 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!97038) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(assert (=> b!195278 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97038) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!195279 () Bool)

(declare-fun Unit!5929 () Unit!5875)

(assert (=> b!195279 (= e!128433 Unit!5929)))

(declare-fun b!195280 () Bool)

(assert (=> b!195280 (= e!128434 (isDefined!198 (getValueByKey!244 (toList!1259 lt!97038) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!57331 c!35347) b!195278))

(assert (= (and d!57331 (not c!35347)) b!195279))

(assert (= (and d!57331 (not res!92216)) b!195280))

(declare-fun m!222879 () Bool)

(assert (=> d!57331 m!222879))

(declare-fun m!222881 () Bool)

(assert (=> b!195278 m!222881))

(assert (=> b!195278 m!221377))

(assert (=> b!195278 m!221377))

(declare-fun m!222883 () Bool)

(assert (=> b!195278 m!222883))

(assert (=> b!195280 m!221377))

(assert (=> b!195280 m!221377))

(assert (=> b!195280 m!222883))

(assert (=> d!56697 d!57331))

(declare-fun b!195282 () Bool)

(declare-fun e!128435 () Option!250)

(declare-fun e!128436 () Option!250)

(assert (=> b!195282 (= e!128435 e!128436)))

(declare-fun c!35349 () Bool)

(assert (=> b!195282 (= c!35349 (and ((_ is Cons!2465) lt!97041) (not (= (_1!1788 (h!3106 lt!97041)) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))))

(declare-fun b!195281 () Bool)

(assert (=> b!195281 (= e!128435 (Some!249 (_2!1788 (h!3106 lt!97041))))))

(declare-fun b!195283 () Bool)

(assert (=> b!195283 (= e!128436 (getValueByKey!244 (t!7403 lt!97041) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun d!57333 () Bool)

(declare-fun c!35348 () Bool)

(assert (=> d!57333 (= c!35348 (and ((_ is Cons!2465) lt!97041) (= (_1!1788 (h!3106 lt!97041)) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57333 (= (getValueByKey!244 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) e!128435)))

(declare-fun b!195284 () Bool)

(assert (=> b!195284 (= e!128436 None!248)))

(assert (= (and d!57333 c!35348) b!195281))

(assert (= (and d!57333 (not c!35348)) b!195282))

(assert (= (and b!195282 c!35349) b!195283))

(assert (= (and b!195282 (not c!35349)) b!195284))

(declare-fun m!222885 () Bool)

(assert (=> b!195283 m!222885))

(assert (=> d!56697 d!57333))

(declare-fun d!57335 () Bool)

(assert (=> d!57335 (= (getValueByKey!244 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun lt!97435 () Unit!5875)

(assert (=> d!57335 (= lt!97435 (choose!1076 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun e!128437 () Bool)

(assert (=> d!57335 e!128437))

(declare-fun res!92217 () Bool)

(assert (=> d!57335 (=> (not res!92217) (not e!128437))))

(assert (=> d!57335 (= res!92217 (isStrictlySorted!352 lt!97041))))

(assert (=> d!57335 (= (lemmaContainsTupThenGetReturnValue!133 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!97435)))

(declare-fun b!195285 () Bool)

(declare-fun res!92218 () Bool)

(assert (=> b!195285 (=> (not res!92218) (not e!128437))))

(assert (=> b!195285 (= res!92218 (containsKey!248 lt!97041 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!195286 () Bool)

(assert (=> b!195286 (= e!128437 (contains!1380 lt!97041 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(assert (= (and d!57335 res!92217) b!195285))

(assert (= (and b!195285 res!92218) b!195286))

(assert (=> d!57335 m!221371))

(declare-fun m!222887 () Bool)

(assert (=> d!57335 m!222887))

(declare-fun m!222889 () Bool)

(assert (=> d!57335 m!222889))

(declare-fun m!222891 () Bool)

(assert (=> b!195285 m!222891))

(declare-fun m!222893 () Bool)

(assert (=> b!195286 m!222893))

(assert (=> d!56697 d!57335))

(declare-fun call!19739 () List!2469)

(declare-fun e!128438 () List!2469)

(declare-fun bm!19735 () Bool)

(declare-fun c!35351 () Bool)

(assert (=> bm!19735 (= call!19739 ($colon$colon!102 e!128438 (ite c!35351 (h!3106 (toList!1259 lt!96821)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))))

(declare-fun c!35350 () Bool)

(assert (=> bm!19735 (= c!35350 c!35351)))

(declare-fun b!195287 () Bool)

(declare-fun e!128442 () List!2469)

(declare-fun call!19738 () List!2469)

(assert (=> b!195287 (= e!128442 call!19738)))

(declare-fun c!35352 () Bool)

(declare-fun b!195288 () Bool)

(assert (=> b!195288 (= c!35352 (and ((_ is Cons!2465) (toList!1259 lt!96821)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96821))) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(declare-fun e!128440 () List!2469)

(assert (=> b!195288 (= e!128442 e!128440)))

(declare-fun lt!97436 () List!2469)

(declare-fun e!128441 () Bool)

(declare-fun b!195289 () Bool)

(assert (=> b!195289 (= e!128441 (contains!1380 lt!97436 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(declare-fun bm!19736 () Bool)

(declare-fun call!19740 () List!2469)

(assert (=> bm!19736 (= call!19740 call!19738)))

(declare-fun b!195290 () Bool)

(declare-fun e!128439 () List!2469)

(assert (=> b!195290 (= e!128439 e!128442)))

(declare-fun c!35353 () Bool)

(assert (=> b!195290 (= c!35353 (and ((_ is Cons!2465) (toList!1259 lt!96821)) (= (_1!1788 (h!3106 (toList!1259 lt!96821))) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(declare-fun d!57337 () Bool)

(assert (=> d!57337 e!128441))

(declare-fun res!92219 () Bool)

(assert (=> d!57337 (=> (not res!92219) (not e!128441))))

(assert (=> d!57337 (= res!92219 (isStrictlySorted!352 lt!97436))))

(assert (=> d!57337 (= lt!97436 e!128439)))

(assert (=> d!57337 (= c!35351 (and ((_ is Cons!2465) (toList!1259 lt!96821)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96821))) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))))))

(assert (=> d!57337 (isStrictlySorted!352 (toList!1259 lt!96821))))

(assert (=> d!57337 (= (insertStrictlySorted!135 (toList!1259 lt!96821) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!97436)))

(declare-fun bm!19737 () Bool)

(assert (=> bm!19737 (= call!19738 call!19739)))

(declare-fun b!195291 () Bool)

(assert (=> b!195291 (= e!128440 call!19740)))

(declare-fun b!195292 () Bool)

(assert (=> b!195292 (= e!128438 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96821)) (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!195293 () Bool)

(assert (=> b!195293 (= e!128440 call!19740)))

(declare-fun b!195294 () Bool)

(declare-fun res!92220 () Bool)

(assert (=> b!195294 (=> (not res!92220) (not e!128441))))

(assert (=> b!195294 (= res!92220 (containsKey!248 lt!97436 (_1!1788 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))))

(declare-fun b!195295 () Bool)

(assert (=> b!195295 (= e!128439 call!19739)))

(declare-fun b!195296 () Bool)

(assert (=> b!195296 (= e!128438 (ite c!35353 (t!7403 (toList!1259 lt!96821)) (ite c!35352 (Cons!2465 (h!3106 (toList!1259 lt!96821)) (t!7403 (toList!1259 lt!96821))) Nil!2466)))))

(assert (= (and d!57337 c!35351) b!195295))

(assert (= (and d!57337 (not c!35351)) b!195290))

(assert (= (and b!195290 c!35353) b!195287))

(assert (= (and b!195290 (not c!35353)) b!195288))

(assert (= (and b!195288 c!35352) b!195293))

(assert (= (and b!195288 (not c!35352)) b!195291))

(assert (= (or b!195293 b!195291) bm!19736))

(assert (= (or b!195287 bm!19736) bm!19737))

(assert (= (or b!195295 bm!19737) bm!19735))

(assert (= (and bm!19735 c!35350) b!195292))

(assert (= (and bm!19735 (not c!35350)) b!195296))

(assert (= (and d!57337 res!92219) b!195294))

(assert (= (and b!195294 res!92220) b!195289))

(declare-fun m!222895 () Bool)

(assert (=> bm!19735 m!222895))

(declare-fun m!222897 () Bool)

(assert (=> b!195294 m!222897))

(declare-fun m!222899 () Bool)

(assert (=> b!195289 m!222899))

(declare-fun m!222901 () Bool)

(assert (=> b!195292 m!222901))

(declare-fun m!222903 () Bool)

(assert (=> d!57337 m!222903))

(declare-fun m!222905 () Bool)

(assert (=> d!57337 m!222905))

(assert (=> d!56697 d!57337))

(declare-fun d!57339 () Bool)

(assert (=> d!57339 (= (get!2239 (getValueByKey!244 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!96856)) (v!4252 (getValueByKey!244 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!96856)))))

(assert (=> d!56651 d!57339))

(declare-fun b!195298 () Bool)

(declare-fun e!128443 () Option!250)

(declare-fun e!128444 () Option!250)

(assert (=> b!195298 (= e!128443 e!128444)))

(declare-fun c!35355 () Bool)

(assert (=> b!195298 (= c!35355 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))) (not (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))) lt!96856))))))

(declare-fun b!195297 () Bool)

(assert (=> b!195297 (= e!128443 (Some!249 (_2!1788 (h!3106 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))))))))

(declare-fun b!195299 () Bool)

(assert (=> b!195299 (= e!128444 (getValueByKey!244 (t!7403 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))) lt!96856))))

(declare-fun d!57341 () Bool)

(declare-fun c!35354 () Bool)

(assert (=> d!57341 (= c!35354 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))))) lt!96856)))))

(assert (=> d!57341 (= (getValueByKey!244 (toList!1259 (+!317 lt!96870 (tuple2!3557 lt!96861 (zeroValue!3801 thiss!1248)))) lt!96856) e!128443)))

(declare-fun b!195300 () Bool)

(assert (=> b!195300 (= e!128444 None!248)))

(assert (= (and d!57341 c!35354) b!195297))

(assert (= (and d!57341 (not c!35354)) b!195298))

(assert (= (and b!195298 c!35355) b!195299))

(assert (= (and b!195298 (not c!35355)) b!195300))

(declare-fun m!222907 () Bool)

(assert (=> b!195299 m!222907))

(assert (=> d!56651 d!57341))

(declare-fun d!57343 () Bool)

(declare-fun res!92221 () Bool)

(declare-fun e!128445 () Bool)

(assert (=> d!57343 (=> res!92221 e!128445)))

(assert (=> d!57343 (= res!92221 (and ((_ is Cons!2465) lt!96842) (= (_1!1788 (h!3106 lt!96842)) (_1!1788 lt!96700))))))

(assert (=> d!57343 (= (containsKey!248 lt!96842 (_1!1788 lt!96700)) e!128445)))

(declare-fun b!195301 () Bool)

(declare-fun e!128446 () Bool)

(assert (=> b!195301 (= e!128445 e!128446)))

(declare-fun res!92222 () Bool)

(assert (=> b!195301 (=> (not res!92222) (not e!128446))))

(assert (=> b!195301 (= res!92222 (and (or (not ((_ is Cons!2465) lt!96842)) (bvsle (_1!1788 (h!3106 lt!96842)) (_1!1788 lt!96700))) ((_ is Cons!2465) lt!96842) (bvslt (_1!1788 (h!3106 lt!96842)) (_1!1788 lt!96700))))))

(declare-fun b!195302 () Bool)

(assert (=> b!195302 (= e!128446 (containsKey!248 (t!7403 lt!96842) (_1!1788 lt!96700)))))

(assert (= (and d!57343 (not res!92221)) b!195301))

(assert (= (and b!195301 res!92222) b!195302))

(declare-fun m!222909 () Bool)

(assert (=> b!195302 m!222909))

(assert (=> b!194575 d!57343))

(declare-fun d!57345 () Bool)

(declare-fun e!128448 () Bool)

(assert (=> d!57345 e!128448))

(declare-fun res!92223 () Bool)

(assert (=> d!57345 (=> res!92223 e!128448)))

(declare-fun lt!97437 () Bool)

(assert (=> d!57345 (= res!92223 (not lt!97437))))

(declare-fun lt!97438 () Bool)

(assert (=> d!57345 (= lt!97437 lt!97438)))

(declare-fun lt!97439 () Unit!5875)

(declare-fun e!128447 () Unit!5875)

(assert (=> d!57345 (= lt!97439 e!128447)))

(declare-fun c!35356 () Bool)

(assert (=> d!57345 (= c!35356 lt!97438)))

(assert (=> d!57345 (= lt!97438 (containsKey!248 (toList!1259 lt!96985) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57345 (= (contains!1378 lt!96985 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97437)))

(declare-fun b!195303 () Bool)

(declare-fun lt!97440 () Unit!5875)

(assert (=> b!195303 (= e!128447 lt!97440)))

(assert (=> b!195303 (= lt!97440 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96985) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!195303 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96985) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195304 () Bool)

(declare-fun Unit!5930 () Unit!5875)

(assert (=> b!195304 (= e!128447 Unit!5930)))

(declare-fun b!195305 () Bool)

(assert (=> b!195305 (= e!128448 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96985) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57345 c!35356) b!195303))

(assert (= (and d!57345 (not c!35356)) b!195304))

(assert (= (and d!57345 (not res!92223)) b!195305))

(declare-fun m!222911 () Bool)

(assert (=> d!57345 m!222911))

(declare-fun m!222913 () Bool)

(assert (=> b!195303 m!222913))

(declare-fun m!222915 () Bool)

(assert (=> b!195303 m!222915))

(assert (=> b!195303 m!222915))

(declare-fun m!222917 () Bool)

(assert (=> b!195303 m!222917))

(assert (=> b!195305 m!222915))

(assert (=> b!195305 m!222915))

(assert (=> b!195305 m!222917))

(assert (=> b!194357 d!57345))

(declare-fun d!57347 () Bool)

(assert (=> d!57347 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!97441 () Unit!5875)

(assert (=> d!57347 (= lt!97441 (choose!1075 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!128449 () Bool)

(assert (=> d!57347 e!128449))

(declare-fun res!92224 () Bool)

(assert (=> d!57347 (=> (not res!92224) (not e!128449))))

(assert (=> d!57347 (= res!92224 (isStrictlySorted!352 (toList!1259 lt!96830)))))

(assert (=> d!57347 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000) lt!97441)))

(declare-fun b!195306 () Bool)

(assert (=> b!195306 (= e!128449 (containsKey!248 (toList!1259 lt!96830) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57347 res!92224) b!195306))

(assert (=> d!57347 m!221487))

(assert (=> d!57347 m!221487))

(assert (=> d!57347 m!221489))

(declare-fun m!222919 () Bool)

(assert (=> d!57347 m!222919))

(assert (=> d!57347 m!222245))

(assert (=> b!195306 m!221483))

(assert (=> b!194455 d!57347))

(assert (=> b!194455 d!57239))

(assert (=> b!194455 d!57021))

(assert (=> b!194503 d!56959))

(declare-fun b!195308 () Bool)

(declare-fun e!128450 () Option!250)

(declare-fun e!128451 () Option!250)

(assert (=> b!195308 (= e!128450 e!128451)))

(declare-fun c!35358 () Bool)

(assert (=> b!195308 (= c!35358 (and ((_ is Cons!2465) (t!7403 lt!96754)) (not (= (_1!1788 (h!3106 (t!7403 lt!96754))) (_1!1788 lt!96700)))))))

(declare-fun b!195307 () Bool)

(assert (=> b!195307 (= e!128450 (Some!249 (_2!1788 (h!3106 (t!7403 lt!96754)))))))

(declare-fun b!195309 () Bool)

(assert (=> b!195309 (= e!128451 (getValueByKey!244 (t!7403 (t!7403 lt!96754)) (_1!1788 lt!96700)))))

(declare-fun d!57349 () Bool)

(declare-fun c!35357 () Bool)

(assert (=> d!57349 (= c!35357 (and ((_ is Cons!2465) (t!7403 lt!96754)) (= (_1!1788 (h!3106 (t!7403 lt!96754))) (_1!1788 lt!96700))))))

(assert (=> d!57349 (= (getValueByKey!244 (t!7403 lt!96754) (_1!1788 lt!96700)) e!128450)))

(declare-fun b!195310 () Bool)

(assert (=> b!195310 (= e!128451 None!248)))

(assert (= (and d!57349 c!35357) b!195307))

(assert (= (and d!57349 (not c!35357)) b!195308))

(assert (= (and b!195308 c!35358) b!195309))

(assert (= (and b!195308 (not c!35358)) b!195310))

(declare-fun m!222921 () Bool)

(assert (=> b!195309 m!222921))

(assert (=> b!194272 d!57349))

(assert (=> b!194589 d!56905))

(assert (=> b!194589 d!56907))

(declare-fun d!57351 () Bool)

(declare-fun e!128453 () Bool)

(assert (=> d!57351 e!128453))

(declare-fun res!92225 () Bool)

(assert (=> d!57351 (=> res!92225 e!128453)))

(declare-fun lt!97442 () Bool)

(assert (=> d!57351 (= res!92225 (not lt!97442))))

(declare-fun lt!97443 () Bool)

(assert (=> d!57351 (= lt!97442 lt!97443)))

(declare-fun lt!97444 () Unit!5875)

(declare-fun e!128452 () Unit!5875)

(assert (=> d!57351 (= lt!97444 e!128452)))

(declare-fun c!35359 () Bool)

(assert (=> d!57351 (= c!35359 lt!97443)))

(assert (=> d!57351 (= lt!97443 (containsKey!248 (toList!1259 lt!96936) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57351 (= (contains!1378 lt!96936 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97442)))

(declare-fun b!195311 () Bool)

(declare-fun lt!97445 () Unit!5875)

(assert (=> b!195311 (= e!128452 lt!97445)))

(assert (=> b!195311 (= lt!97445 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96936) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!195311 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96936) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195312 () Bool)

(declare-fun Unit!5931 () Unit!5875)

(assert (=> b!195312 (= e!128452 Unit!5931)))

(declare-fun b!195313 () Bool)

(assert (=> b!195313 (= e!128453 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96936) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57351 c!35359) b!195311))

(assert (= (and d!57351 (not c!35359)) b!195312))

(assert (= (and d!57351 (not res!92225)) b!195313))

(declare-fun m!222923 () Bool)

(assert (=> d!57351 m!222923))

(declare-fun m!222925 () Bool)

(assert (=> b!195311 m!222925))

(assert (=> b!195311 m!222725))

(assert (=> b!195311 m!222725))

(declare-fun m!222927 () Bool)

(assert (=> b!195311 m!222927))

(assert (=> b!195313 m!222725))

(assert (=> b!195313 m!222725))

(assert (=> b!195313 m!222927))

(assert (=> bm!19642 d!57351))

(declare-fun d!57353 () Bool)

(assert (=> d!57353 (= (inRange!0 (ite c!35080 (index!4986 lt!97063) (index!4989 lt!97063)) (mask!9223 thiss!1248)) (and (bvsge (ite c!35080 (index!4986 lt!97063) (index!4989 lt!97063)) #b00000000000000000000000000000000) (bvslt (ite c!35080 (index!4986 lt!97063) (index!4989 lt!97063)) (bvadd (mask!9223 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!19667 d!57353))

(assert (=> b!194468 d!56593))

(declare-fun d!57355 () Bool)

(declare-fun e!128455 () Bool)

(assert (=> d!57355 e!128455))

(declare-fun res!92226 () Bool)

(assert (=> d!57355 (=> res!92226 e!128455)))

(declare-fun lt!97446 () Bool)

(assert (=> d!57355 (= res!92226 (not lt!97446))))

(declare-fun lt!97447 () Bool)

(assert (=> d!57355 (= lt!97446 lt!97447)))

(declare-fun lt!97448 () Unit!5875)

(declare-fun e!128454 () Unit!5875)

(assert (=> d!57355 (= lt!97448 e!128454)))

(declare-fun c!35360 () Bool)

(assert (=> d!57355 (= c!35360 lt!97447)))

(assert (=> d!57355 (= lt!97447 (containsKey!248 (toList!1259 lt!96994) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(assert (=> d!57355 (= (contains!1378 lt!96994 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!97446)))

(declare-fun b!195314 () Bool)

(declare-fun lt!97449 () Unit!5875)

(assert (=> b!195314 (= e!128454 lt!97449)))

(assert (=> b!195314 (= lt!97449 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96994) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(assert (=> b!195314 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96994) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun b!195315 () Bool)

(declare-fun Unit!5932 () Unit!5875)

(assert (=> b!195315 (= e!128454 Unit!5932)))

(declare-fun b!195316 () Bool)

(assert (=> b!195316 (= e!128455 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96994) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57355 c!35360) b!195314))

(assert (= (and d!57355 (not c!35360)) b!195315))

(assert (= (and d!57355 (not res!92226)) b!195316))

(declare-fun m!222929 () Bool)

(assert (=> d!57355 m!222929))

(declare-fun m!222931 () Bool)

(assert (=> b!195314 m!222931))

(assert (=> b!195314 m!221237))

(assert (=> b!195314 m!221237))

(declare-fun m!222933 () Bool)

(assert (=> b!195314 m!222933))

(assert (=> b!195316 m!221237))

(assert (=> b!195316 m!221237))

(assert (=> b!195316 m!222933))

(assert (=> d!56653 d!57355))

(declare-fun b!195318 () Bool)

(declare-fun e!128456 () Option!250)

(declare-fun e!128457 () Option!250)

(assert (=> b!195318 (= e!128456 e!128457)))

(declare-fun c!35362 () Bool)

(assert (=> b!195318 (= c!35362 (and ((_ is Cons!2465) lt!96997) (not (= (_1!1788 (h!3106 lt!96997)) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))))

(declare-fun b!195317 () Bool)

(assert (=> b!195317 (= e!128456 (Some!249 (_2!1788 (h!3106 lt!96997))))))

(declare-fun b!195319 () Bool)

(assert (=> b!195319 (= e!128457 (getValueByKey!244 (t!7403 lt!96997) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun d!57357 () Bool)

(declare-fun c!35361 () Bool)

(assert (=> d!57357 (= c!35361 (and ((_ is Cons!2465) lt!96997) (= (_1!1788 (h!3106 lt!96997)) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(assert (=> d!57357 (= (getValueByKey!244 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) e!128456)))

(declare-fun b!195320 () Bool)

(assert (=> b!195320 (= e!128457 None!248)))

(assert (= (and d!57357 c!35361) b!195317))

(assert (= (and d!57357 (not c!35361)) b!195318))

(assert (= (and b!195318 c!35362) b!195319))

(assert (= (and b!195318 (not c!35362)) b!195320))

(declare-fun m!222935 () Bool)

(assert (=> b!195319 m!222935))

(assert (=> d!56653 d!57357))

(declare-fun d!57359 () Bool)

(assert (=> d!57359 (= (getValueByKey!244 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) (Some!249 (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun lt!97450 () Unit!5875)

(assert (=> d!57359 (= lt!97450 (choose!1076 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun e!128458 () Bool)

(assert (=> d!57359 e!128458))

(declare-fun res!92227 () Bool)

(assert (=> d!57359 (=> (not res!92227) (not e!128458))))

(assert (=> d!57359 (= res!92227 (isStrictlySorted!352 lt!96997))))

(assert (=> d!57359 (= (lemmaContainsTupThenGetReturnValue!133 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!97450)))

(declare-fun b!195321 () Bool)

(declare-fun res!92228 () Bool)

(assert (=> b!195321 (=> (not res!92228) (not e!128458))))

(assert (=> b!195321 (= res!92228 (containsKey!248 lt!96997 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun b!195322 () Bool)

(assert (=> b!195322 (= e!128458 (contains!1380 lt!96997 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(assert (= (and d!57359 res!92227) b!195321))

(assert (= (and b!195321 res!92228) b!195322))

(assert (=> d!57359 m!221231))

(declare-fun m!222937 () Bool)

(assert (=> d!57359 m!222937))

(declare-fun m!222939 () Bool)

(assert (=> d!57359 m!222939))

(declare-fun m!222941 () Bool)

(assert (=> b!195321 m!222941))

(declare-fun m!222943 () Bool)

(assert (=> b!195322 m!222943))

(assert (=> d!56653 d!57359))

(declare-fun call!19742 () List!2469)

(declare-fun c!35364 () Bool)

(declare-fun e!128459 () List!2469)

(declare-fun bm!19738 () Bool)

(assert (=> bm!19738 (= call!19742 ($colon$colon!102 e!128459 (ite c!35364 (h!3106 (toList!1259 lt!96860)) (tuple2!3557 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))))

(declare-fun c!35363 () Bool)

(assert (=> bm!19738 (= c!35363 c!35364)))

(declare-fun b!195323 () Bool)

(declare-fun e!128463 () List!2469)

(declare-fun call!19741 () List!2469)

(assert (=> b!195323 (= e!128463 call!19741)))

(declare-fun b!195324 () Bool)

(declare-fun c!35365 () Bool)

(assert (=> b!195324 (= c!35365 (and ((_ is Cons!2465) (toList!1259 lt!96860)) (bvsgt (_1!1788 (h!3106 (toList!1259 lt!96860))) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(declare-fun e!128461 () List!2469)

(assert (=> b!195324 (= e!128463 e!128461)))

(declare-fun lt!97451 () List!2469)

(declare-fun b!195325 () Bool)

(declare-fun e!128462 () Bool)

(assert (=> b!195325 (= e!128462 (contains!1380 lt!97451 (tuple2!3557 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(declare-fun bm!19739 () Bool)

(declare-fun call!19743 () List!2469)

(assert (=> bm!19739 (= call!19743 call!19741)))

(declare-fun b!195326 () Bool)

(declare-fun e!128460 () List!2469)

(assert (=> b!195326 (= e!128460 e!128463)))

(declare-fun c!35366 () Bool)

(assert (=> b!195326 (= c!35366 (and ((_ is Cons!2465) (toList!1259 lt!96860)) (= (_1!1788 (h!3106 (toList!1259 lt!96860))) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(declare-fun d!57361 () Bool)

(assert (=> d!57361 e!128462))

(declare-fun res!92229 () Bool)

(assert (=> d!57361 (=> (not res!92229) (not e!128462))))

(assert (=> d!57361 (= res!92229 (isStrictlySorted!352 lt!97451))))

(assert (=> d!57361 (= lt!97451 e!128460)))

(assert (=> d!57361 (= c!35364 (and ((_ is Cons!2465) (toList!1259 lt!96860)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96860))) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))))

(assert (=> d!57361 (isStrictlySorted!352 (toList!1259 lt!96860))))

(assert (=> d!57361 (= (insertStrictlySorted!135 (toList!1259 lt!96860) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))) lt!97451)))

(declare-fun bm!19740 () Bool)

(assert (=> bm!19740 (= call!19741 call!19742)))

(declare-fun b!195327 () Bool)

(assert (=> b!195327 (= e!128461 call!19743)))

(declare-fun b!195328 () Bool)

(assert (=> b!195328 (= e!128459 (insertStrictlySorted!135 (t!7403 (toList!1259 lt!96860)) (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) (_2!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun b!195329 () Bool)

(assert (=> b!195329 (= e!128461 call!19743)))

(declare-fun b!195330 () Bool)

(declare-fun res!92230 () Bool)

(assert (=> b!195330 (=> (not res!92230) (not e!128462))))

(assert (=> b!195330 (= res!92230 (containsKey!248 lt!97451 (_1!1788 (tuple2!3557 lt!96868 (minValue!3801 thiss!1248)))))))

(declare-fun b!195331 () Bool)

(assert (=> b!195331 (= e!128460 call!19742)))

(declare-fun b!195332 () Bool)

(assert (=> b!195332 (= e!128459 (ite c!35366 (t!7403 (toList!1259 lt!96860)) (ite c!35365 (Cons!2465 (h!3106 (toList!1259 lt!96860)) (t!7403 (toList!1259 lt!96860))) Nil!2466)))))

(assert (= (and d!57361 c!35364) b!195331))

(assert (= (and d!57361 (not c!35364)) b!195326))

(assert (= (and b!195326 c!35366) b!195323))

(assert (= (and b!195326 (not c!35366)) b!195324))

(assert (= (and b!195324 c!35365) b!195329))

(assert (= (and b!195324 (not c!35365)) b!195327))

(assert (= (or b!195329 b!195327) bm!19739))

(assert (= (or b!195323 bm!19739) bm!19740))

(assert (= (or b!195331 bm!19740) bm!19738))

(assert (= (and bm!19738 c!35363) b!195328))

(assert (= (and bm!19738 (not c!35363)) b!195332))

(assert (= (and d!57361 res!92229) b!195330))

(assert (= (and b!195330 res!92230) b!195325))

(declare-fun m!222945 () Bool)

(assert (=> bm!19738 m!222945))

(declare-fun m!222947 () Bool)

(assert (=> b!195330 m!222947))

(declare-fun m!222949 () Bool)

(assert (=> b!195325 m!222949))

(declare-fun m!222951 () Bool)

(assert (=> b!195328 m!222951))

(declare-fun m!222953 () Bool)

(assert (=> d!57361 m!222953))

(declare-fun m!222955 () Bool)

(assert (=> d!57361 m!222955))

(assert (=> d!56653 d!57361))

(declare-fun d!57363 () Bool)

(declare-fun lt!97452 () Bool)

(assert (=> d!57363 (= lt!97452 (select (content!154 (toList!1259 lt!97064)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun e!128465 () Bool)

(assert (=> d!57363 (= lt!97452 e!128465)))

(declare-fun res!92231 () Bool)

(assert (=> d!57363 (=> (not res!92231) (not e!128465))))

(assert (=> d!57363 (= res!92231 ((_ is Cons!2465) (toList!1259 lt!97064)))))

(assert (=> d!57363 (= (contains!1380 (toList!1259 lt!97064) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))) lt!97452)))

(declare-fun b!195333 () Bool)

(declare-fun e!128464 () Bool)

(assert (=> b!195333 (= e!128465 e!128464)))

(declare-fun res!92232 () Bool)

(assert (=> b!195333 (=> res!92232 e!128464)))

(assert (=> b!195333 (= res!92232 (= (h!3106 (toList!1259 lt!97064)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(declare-fun b!195334 () Bool)

(assert (=> b!195334 (= e!128464 (contains!1380 (t!7403 (toList!1259 lt!97064)) (tuple2!3557 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3801 thiss!1248))))))

(assert (= (and d!57363 res!92231) b!195333))

(assert (= (and b!195333 (not res!92232)) b!195334))

(declare-fun m!222957 () Bool)

(assert (=> d!57363 m!222957))

(declare-fun m!222959 () Bool)

(assert (=> d!57363 m!222959))

(declare-fun m!222961 () Bool)

(assert (=> b!195334 m!222961))

(assert (=> b!194449 d!57363))

(declare-fun lt!97453 () Bool)

(declare-fun d!57365 () Bool)

(assert (=> d!57365 (= lt!97453 (select (content!154 (toList!1259 lt!97042)) (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))

(declare-fun e!128467 () Bool)

(assert (=> d!57365 (= lt!97453 e!128467)))

(declare-fun res!92233 () Bool)

(assert (=> d!57365 (=> (not res!92233) (not e!128467))))

(assert (=> d!57365 (= res!92233 ((_ is Cons!2465) (toList!1259 lt!97042)))))

(assert (=> d!57365 (= (contains!1380 (toList!1259 lt!97042) (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))) lt!97453)))

(declare-fun b!195335 () Bool)

(declare-fun e!128466 () Bool)

(assert (=> b!195335 (= e!128467 e!128466)))

(declare-fun res!92234 () Bool)

(assert (=> b!195335 (=> res!92234 e!128466)))

(assert (=> b!195335 (= res!92234 (= (h!3106 (toList!1259 lt!97042)) (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))

(declare-fun b!195336 () Bool)

(assert (=> b!195336 (= e!128466 (contains!1380 (t!7403 (toList!1259 lt!97042)) (tuple2!3557 lt!96824 (zeroValue!3801 thiss!1248))))))

(assert (= (and d!57365 res!92233) b!195335))

(assert (= (and b!195335 (not res!92234)) b!195336))

(declare-fun m!222963 () Bool)

(assert (=> d!57365 m!222963))

(declare-fun m!222965 () Bool)

(assert (=> d!57365 m!222965))

(declare-fun m!222967 () Bool)

(assert (=> b!195336 m!222967))

(assert (=> b!194398 d!57365))

(declare-fun d!57367 () Bool)

(declare-fun e!128469 () Bool)

(assert (=> d!57367 e!128469))

(declare-fun res!92235 () Bool)

(assert (=> d!57367 (=> res!92235 e!128469)))

(declare-fun lt!97454 () Bool)

(assert (=> d!57367 (= res!92235 (not lt!97454))))

(declare-fun lt!97455 () Bool)

(assert (=> d!57367 (= lt!97454 lt!97455)))

(declare-fun lt!97456 () Unit!5875)

(declare-fun e!128468 () Unit!5875)

(assert (=> d!57367 (= lt!97456 e!128468)))

(declare-fun c!35367 () Bool)

(assert (=> d!57367 (= c!35367 lt!97455)))

(assert (=> d!57367 (= lt!97455 (containsKey!248 (toList!1259 lt!96985) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57367 (= (contains!1378 lt!96985 #b0000000000000000000000000000000000000000000000000000000000000000) lt!97454)))

(declare-fun b!195337 () Bool)

(declare-fun lt!97457 () Unit!5875)

(assert (=> b!195337 (= e!128468 lt!97457)))

(assert (=> b!195337 (= lt!97457 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96985) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!195337 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96985) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195338 () Bool)

(declare-fun Unit!5933 () Unit!5875)

(assert (=> b!195338 (= e!128468 Unit!5933)))

(declare-fun b!195339 () Bool)

(assert (=> b!195339 (= e!128469 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96985) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57367 c!35367) b!195337))

(assert (= (and d!57367 (not c!35367)) b!195338))

(assert (= (and d!57367 (not res!92235)) b!195339))

(declare-fun m!222969 () Bool)

(assert (=> d!57367 m!222969))

(declare-fun m!222971 () Bool)

(assert (=> b!195337 m!222971))

(declare-fun m!222973 () Bool)

(assert (=> b!195337 m!222973))

(assert (=> b!195337 m!222973))

(declare-fun m!222975 () Bool)

(assert (=> b!195337 m!222975))

(assert (=> b!195339 m!222973))

(assert (=> b!195339 m!222973))

(assert (=> b!195339 m!222975))

(assert (=> d!56633 d!57367))

(assert (=> d!56633 d!56605))

(declare-fun d!57369 () Bool)

(declare-fun res!92236 () Bool)

(declare-fun e!128470 () Bool)

(assert (=> d!57369 (=> res!92236 e!128470)))

(assert (=> d!57369 (= res!92236 (and ((_ is Cons!2465) (t!7403 (toList!1259 lt!96697))) (= (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96697)))) key!828)))))

(assert (=> d!57369 (= (containsKey!248 (t!7403 (toList!1259 lt!96697)) key!828) e!128470)))

(declare-fun b!195340 () Bool)

(declare-fun e!128471 () Bool)

(assert (=> b!195340 (= e!128470 e!128471)))

(declare-fun res!92237 () Bool)

(assert (=> b!195340 (=> (not res!92237) (not e!128471))))

(assert (=> b!195340 (= res!92237 (and (or (not ((_ is Cons!2465) (t!7403 (toList!1259 lt!96697)))) (bvsle (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96697)))) key!828)) ((_ is Cons!2465) (t!7403 (toList!1259 lt!96697))) (bvslt (_1!1788 (h!3106 (t!7403 (toList!1259 lt!96697)))) key!828)))))

(declare-fun b!195341 () Bool)

(assert (=> b!195341 (= e!128471 (containsKey!248 (t!7403 (t!7403 (toList!1259 lt!96697))) key!828))))

(assert (= (and d!57369 (not res!92236)) b!195340))

(assert (= (and b!195340 res!92237) b!195341))

(declare-fun m!222977 () Bool)

(assert (=> b!195341 m!222977))

(assert (=> b!194421 d!57369))

(declare-fun b!195343 () Bool)

(declare-fun e!128472 () Option!250)

(declare-fun e!128473 () Option!250)

(assert (=> b!195343 (= e!128472 e!128473)))

(declare-fun c!35369 () Bool)

(assert (=> b!195343 (= c!35369 (and ((_ is Cons!2465) (t!7403 lt!96842)) (not (= (_1!1788 (h!3106 (t!7403 lt!96842))) (_1!1788 lt!96700)))))))

(declare-fun b!195342 () Bool)

(assert (=> b!195342 (= e!128472 (Some!249 (_2!1788 (h!3106 (t!7403 lt!96842)))))))

(declare-fun b!195344 () Bool)

(assert (=> b!195344 (= e!128473 (getValueByKey!244 (t!7403 (t!7403 lt!96842)) (_1!1788 lt!96700)))))

(declare-fun d!57371 () Bool)

(declare-fun c!35368 () Bool)

(assert (=> d!57371 (= c!35368 (and ((_ is Cons!2465) (t!7403 lt!96842)) (= (_1!1788 (h!3106 (t!7403 lt!96842))) (_1!1788 lt!96700))))))

(assert (=> d!57371 (= (getValueByKey!244 (t!7403 lt!96842) (_1!1788 lt!96700)) e!128472)))

(declare-fun b!195345 () Bool)

(assert (=> b!195345 (= e!128473 None!248)))

(assert (= (and d!57371 c!35368) b!195342))

(assert (= (and d!57371 (not c!35368)) b!195343))

(assert (= (and b!195343 c!35369) b!195344))

(assert (= (and b!195343 (not c!35369)) b!195345))

(declare-fun m!222979 () Bool)

(assert (=> b!195344 m!222979))

(assert (=> b!194573 d!57371))

(assert (=> b!194247 d!57321))

(declare-fun d!57373 () Bool)

(assert (=> d!57373 (= (isEmpty!493 lt!96985) (isEmpty!494 (toList!1259 lt!96985)))))

(declare-fun bs!7803 () Bool)

(assert (= bs!7803 d!57373))

(declare-fun m!222981 () Bool)

(assert (=> bs!7803 m!222981))

(assert (=> b!194348 d!57373))

(declare-fun d!57375 () Bool)

(assert (=> d!57375 (= (apply!188 lt!96936 (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000)) (get!2239 (getValueByKey!244 (toList!1259 lt!96936) (select (arr!3874 (_keys!5954 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7804 () Bool)

(assert (= bs!7804 d!57375))

(assert (=> bs!7804 m!220855))

(assert (=> bs!7804 m!222143))

(assert (=> bs!7804 m!222143))

(declare-fun m!222983 () Bool)

(assert (=> bs!7804 m!222983))

(assert (=> b!194231 d!57375))

(declare-fun d!57377 () Bool)

(declare-fun c!35370 () Bool)

(assert (=> d!57377 (= c!35370 ((_ is ValueCellFull!1902) (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000)))))

(declare-fun e!128474 () V!5635)

(assert (=> d!57377 (= (get!2238 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!128474)))

(declare-fun b!195346 () Bool)

(assert (=> b!195346 (= e!128474 (get!2240 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!195347 () Bool)

(assert (=> b!195347 (= e!128474 (get!2241 (select (arr!3875 (array!8235 (store (arr!3875 (_values!3943 thiss!1248)) (index!4987 lt!96699) (ValueCellFull!1902 v!309)) (size!4199 (_values!3943 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!526 (defaultEntry!3960 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57377 c!35370) b!195346))

(assert (= (and d!57377 (not c!35370)) b!195347))

(assert (=> b!195346 m!221065))

(assert (=> b!195346 m!220859))

(declare-fun m!222985 () Bool)

(assert (=> b!195346 m!222985))

(assert (=> b!195347 m!221065))

(assert (=> b!195347 m!220859))

(declare-fun m!222987 () Bool)

(assert (=> b!195347 m!222987))

(assert (=> b!194231 d!57377))

(declare-fun d!57379 () Bool)

(declare-fun e!128476 () Bool)

(assert (=> d!57379 e!128476))

(declare-fun res!92238 () Bool)

(assert (=> d!57379 (=> res!92238 e!128476)))

(declare-fun lt!97458 () Bool)

(assert (=> d!57379 (= res!92238 (not lt!97458))))

(declare-fun lt!97459 () Bool)

(assert (=> d!57379 (= lt!97458 lt!97459)))

(declare-fun lt!97460 () Unit!5875)

(declare-fun e!128475 () Unit!5875)

(assert (=> d!57379 (= lt!97460 e!128475)))

(declare-fun c!35371 () Bool)

(assert (=> d!57379 (= c!35371 lt!97459)))

(assert (=> d!57379 (= lt!97459 (containsKey!248 (toList!1259 lt!96936) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!57379 (= (contains!1378 lt!96936 #b1000000000000000000000000000000000000000000000000000000000000000) lt!97458)))

(declare-fun b!195348 () Bool)

(declare-fun lt!97461 () Unit!5875)

(assert (=> b!195348 (= e!128475 lt!97461)))

(assert (=> b!195348 (= lt!97461 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96936) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!195348 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96936) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!195349 () Bool)

(declare-fun Unit!5934 () Unit!5875)

(assert (=> b!195349 (= e!128475 Unit!5934)))

(declare-fun b!195350 () Bool)

(assert (=> b!195350 (= e!128476 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96936) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!57379 c!35371) b!195348))

(assert (= (and d!57379 (not c!35371)) b!195349))

(assert (= (and d!57379 (not res!92238)) b!195350))

(declare-fun m!222989 () Bool)

(assert (=> d!57379 m!222989))

(declare-fun m!222991 () Bool)

(assert (=> b!195348 m!222991))

(assert (=> b!195348 m!222817))

(assert (=> b!195348 m!222817))

(declare-fun m!222993 () Bool)

(assert (=> b!195348 m!222993))

(assert (=> b!195350 m!222817))

(assert (=> b!195350 m!222817))

(assert (=> b!195350 m!222993))

(assert (=> bm!19644 d!57379))

(declare-fun d!57381 () Bool)

(declare-fun res!92239 () Bool)

(declare-fun e!128477 () Bool)

(assert (=> d!57381 (=> res!92239 e!128477)))

(assert (=> d!57381 (= res!92239 (and ((_ is Cons!2465) (toList!1259 lt!96830)) (= (_1!1788 (h!3106 (toList!1259 lt!96830))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57381 (= (containsKey!248 (toList!1259 lt!96830) #b1000000000000000000000000000000000000000000000000000000000000000) e!128477)))

(declare-fun b!195351 () Bool)

(declare-fun e!128478 () Bool)

(assert (=> b!195351 (= e!128477 e!128478)))

(declare-fun res!92240 () Bool)

(assert (=> b!195351 (=> (not res!92240) (not e!128478))))

(assert (=> b!195351 (= res!92240 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96830))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96830))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2465) (toList!1259 lt!96830)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96830))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!195352 () Bool)

(assert (=> b!195352 (= e!128478 (containsKey!248 (t!7403 (toList!1259 lt!96830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!57381 (not res!92239)) b!195351))

(assert (= (and b!195351 res!92240) b!195352))

(declare-fun m!222995 () Bool)

(assert (=> b!195352 m!222995))

(assert (=> d!56761 d!57381))

(declare-fun lt!97462 () Bool)

(declare-fun d!57383 () Bool)

(assert (=> d!57383 (= lt!97462 (select (content!154 (toList!1259 lt!96994)) (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))

(declare-fun e!128480 () Bool)

(assert (=> d!57383 (= lt!97462 e!128480)))

(declare-fun res!92241 () Bool)

(assert (=> d!57383 (=> (not res!92241) (not e!128480))))

(assert (=> d!57383 (= res!92241 ((_ is Cons!2465) (toList!1259 lt!96994)))))

(assert (=> d!57383 (= (contains!1380 (toList!1259 lt!96994) (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))) lt!97462)))

(declare-fun b!195353 () Bool)

(declare-fun e!128479 () Bool)

(assert (=> b!195353 (= e!128480 e!128479)))

(declare-fun res!92242 () Bool)

(assert (=> b!195353 (=> res!92242 e!128479)))

(assert (=> b!195353 (= res!92242 (= (h!3106 (toList!1259 lt!96994)) (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))

(declare-fun b!195354 () Bool)

(assert (=> b!195354 (= e!128479 (contains!1380 (t!7403 (toList!1259 lt!96994)) (tuple2!3557 lt!96868 (minValue!3801 thiss!1248))))))

(assert (= (and d!57383 res!92241) b!195353))

(assert (= (and b!195353 (not res!92242)) b!195354))

(declare-fun m!222997 () Bool)

(assert (=> d!57383 m!222997))

(declare-fun m!222999 () Bool)

(assert (=> d!57383 m!222999))

(declare-fun m!223001 () Bool)

(assert (=> b!195354 m!223001))

(assert (=> b!194366 d!57383))

(declare-fun d!57385 () Bool)

(declare-fun c!35372 () Bool)

(assert (=> d!57385 (= c!35372 ((_ is Nil!2466) (toList!1259 lt!96839)))))

(declare-fun e!128481 () (InoxSet tuple2!3556))

(assert (=> d!57385 (= (content!154 (toList!1259 lt!96839)) e!128481)))

(declare-fun b!195355 () Bool)

(assert (=> b!195355 (= e!128481 ((as const (Array tuple2!3556 Bool)) false))))

(declare-fun b!195356 () Bool)

(assert (=> b!195356 (= e!128481 ((_ map or) (store ((as const (Array tuple2!3556 Bool)) false) (h!3106 (toList!1259 lt!96839)) true) (content!154 (t!7403 (toList!1259 lt!96839)))))))

(assert (= (and d!57385 c!35372) b!195355))

(assert (= (and d!57385 (not c!35372)) b!195356))

(declare-fun m!223003 () Bool)

(assert (=> b!195356 m!223003))

(declare-fun m!223005 () Bool)

(assert (=> b!195356 m!223005))

(assert (=> d!56631 d!57385))

(declare-fun d!57387 () Bool)

(declare-fun res!92243 () Bool)

(declare-fun e!128482 () Bool)

(assert (=> d!57387 (=> res!92243 e!128482)))

(assert (=> d!57387 (= res!92243 (and ((_ is Cons!2465) (toList!1259 lt!96751)) (= (_1!1788 (h!3106 (toList!1259 lt!96751))) (_1!1788 lt!96700))))))

(assert (=> d!57387 (= (containsKey!248 (toList!1259 lt!96751) (_1!1788 lt!96700)) e!128482)))

(declare-fun b!195357 () Bool)

(declare-fun e!128483 () Bool)

(assert (=> b!195357 (= e!128482 e!128483)))

(declare-fun res!92244 () Bool)

(assert (=> b!195357 (=> (not res!92244) (not e!128483))))

(assert (=> b!195357 (= res!92244 (and (or (not ((_ is Cons!2465) (toList!1259 lt!96751))) (bvsle (_1!1788 (h!3106 (toList!1259 lt!96751))) (_1!1788 lt!96700))) ((_ is Cons!2465) (toList!1259 lt!96751)) (bvslt (_1!1788 (h!3106 (toList!1259 lt!96751))) (_1!1788 lt!96700))))))

(declare-fun b!195358 () Bool)

(assert (=> b!195358 (= e!128483 (containsKey!248 (t!7403 (toList!1259 lt!96751)) (_1!1788 lt!96700)))))

(assert (= (and d!57387 (not res!92243)) b!195357))

(assert (= (and b!195357 res!92244) b!195358))

(declare-fun m!223007 () Bool)

(assert (=> b!195358 m!223007))

(assert (=> d!56621 d!57387))

(declare-fun d!57389 () Bool)

(declare-fun res!92245 () Bool)

(declare-fun e!128484 () Bool)

(assert (=> d!57389 (=> res!92245 e!128484)))

(assert (=> d!57389 (= res!92245 (and ((_ is Cons!2465) (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))) (= (_1!1788 (h!3106 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))) lt!96817)))))

(assert (=> d!57389 (= (containsKey!248 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))) lt!96817) e!128484)))

(declare-fun b!195359 () Bool)

(declare-fun e!128485 () Bool)

(assert (=> b!195359 (= e!128484 e!128485)))

(declare-fun res!92246 () Bool)

(assert (=> b!195359 (=> (not res!92246) (not e!128485))))

(assert (=> b!195359 (= res!92246 (and (or (not ((_ is Cons!2465) (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))) (bvsle (_1!1788 (h!3106 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))) lt!96817)) ((_ is Cons!2465) (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))) (bvslt (_1!1788 (h!3106 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248)))))) lt!96817)))))

(declare-fun b!195360 () Bool)

(assert (=> b!195360 (= e!128485 (containsKey!248 (t!7403 (toList!1259 (+!317 lt!96821 (tuple2!3557 lt!96837 (zeroValue!3801 thiss!1248))))) lt!96817))))

(assert (= (and d!57389 (not res!92245)) b!195359))

(assert (= (and b!195359 res!92246) b!195360))

(declare-fun m!223009 () Bool)

(assert (=> b!195360 m!223009))

(assert (=> d!56683 d!57389))

(assert (=> d!56637 d!56635))

(assert (=> d!56637 d!56639))

(assert (=> d!56637 d!56641))

(declare-fun d!57391 () Bool)

(assert (=> d!57391 (= (apply!188 (+!317 lt!96875 (tuple2!3557 lt!96866 (minValue!3801 thiss!1248))) lt!96857) (apply!188 lt!96875 lt!96857))))

(assert (=> d!57391 true))

(declare-fun _$34!1092 () Unit!5875)

(assert (=> d!57391 (= (choose!1077 lt!96875 lt!96866 (minValue!3801 thiss!1248) lt!96857) _$34!1092)))

(declare-fun bs!7805 () Bool)

(assert (= bs!7805 d!57391))

(assert (=> bs!7805 m!220963))

(assert (=> bs!7805 m!220963))

(assert (=> bs!7805 m!220981))

(assert (=> bs!7805 m!220975))

(assert (=> d!56637 d!57391))

(declare-fun d!57393 () Bool)

(declare-fun e!128487 () Bool)

(assert (=> d!57393 e!128487))

(declare-fun res!92247 () Bool)

(assert (=> d!57393 (=> res!92247 e!128487)))

(declare-fun lt!97463 () Bool)

(assert (=> d!57393 (= res!92247 (not lt!97463))))

(declare-fun lt!97464 () Bool)

(assert (=> d!57393 (= lt!97463 lt!97464)))

(declare-fun lt!97465 () Unit!5875)

(declare-fun e!128486 () Unit!5875)

(assert (=> d!57393 (= lt!97465 e!128486)))

(declare-fun c!35373 () Bool)

(assert (=> d!57393 (= c!35373 lt!97464)))

(assert (=> d!57393 (= lt!97464 (containsKey!248 (toList!1259 lt!96875) lt!96857))))

(assert (=> d!57393 (= (contains!1378 lt!96875 lt!96857) lt!97463)))

(declare-fun b!195361 () Bool)

(declare-fun lt!97466 () Unit!5875)

(assert (=> b!195361 (= e!128486 lt!97466)))

(assert (=> b!195361 (= lt!97466 (lemmaContainsKeyImpliesGetValueByKeyDefined!197 (toList!1259 lt!96875) lt!96857))))

(assert (=> b!195361 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96875) lt!96857))))

(declare-fun b!195362 () Bool)

(declare-fun Unit!5935 () Unit!5875)

(assert (=> b!195362 (= e!128486 Unit!5935)))

(declare-fun b!195363 () Bool)

(assert (=> b!195363 (= e!128487 (isDefined!198 (getValueByKey!244 (toList!1259 lt!96875) lt!96857)))))

(assert (= (and d!57393 c!35373) b!195361))

(assert (= (and d!57393 (not c!35373)) b!195362))

(assert (= (and d!57393 (not res!92247)) b!195363))

(declare-fun m!223011 () Bool)

(assert (=> d!57393 m!223011))

(declare-fun m!223013 () Bool)

(assert (=> b!195361 m!223013))

(assert (=> b!195361 m!221193))

(assert (=> b!195361 m!221193))

(declare-fun m!223015 () Bool)

(assert (=> b!195361 m!223015))

(assert (=> b!195363 m!221193))

(assert (=> b!195363 m!221193))

(assert (=> b!195363 m!223015))

(assert (=> d!56637 d!57393))

(declare-fun b!195364 () Bool)

(declare-fun e!128490 () Bool)

(declare-fun e!128489 () Bool)

(assert (=> b!195364 (= e!128490 e!128489)))

(declare-fun c!35374 () Bool)

(assert (=> b!195364 (= c!35374 (validKeyInArray!0 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!195365 () Bool)

(declare-fun e!128488 () Bool)

(declare-fun call!19744 () Bool)

(assert (=> b!195365 (= e!128488 call!19744)))

(declare-fun b!195366 () Bool)

(assert (=> b!195366 (= e!128489 e!128488)))

(declare-fun lt!97467 () (_ BitVec 64))

(assert (=> b!195366 (= lt!97467 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!97469 () Unit!5875)

(assert (=> b!195366 (= lt!97469 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5954 lt!96693) lt!97467 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!195366 (arrayContainsKey!0 (_keys!5954 lt!96693) lt!97467 #b00000000000000000000000000000000)))

(declare-fun lt!97468 () Unit!5875)

(assert (=> b!195366 (= lt!97468 lt!97469)))

(declare-fun res!92248 () Bool)

(assert (=> b!195366 (= res!92248 (= (seekEntryOrOpen!0 (select (arr!3874 (_keys!5954 lt!96693)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!5954 lt!96693) (mask!9223 lt!96693)) (Found!704 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!195366 (=> (not res!92248) (not e!128488))))

(declare-fun d!57395 () Bool)

(declare-fun res!92249 () Bool)

(assert (=> d!57395 (=> res!92249 e!128490)))

(assert (=> d!57395 (= res!92249 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4198 (_keys!5954 lt!96693))))))

(assert (=> d!57395 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5954 lt!96693) (mask!9223 lt!96693)) e!128490)))

(declare-fun bm!19741 () Bool)

(assert (=> bm!19741 (= call!19744 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!5954 lt!96693) (mask!9223 lt!96693)))))

(declare-fun b!195367 () Bool)

(assert (=> b!195367 (= e!128489 call!19744)))

(assert (= (and d!57395 (not res!92249)) b!195364))

(assert (= (and b!195364 c!35374) b!195366))

(assert (= (and b!195364 (not c!35374)) b!195367))

(assert (= (and b!195366 res!92248) b!195365))

(assert (= (or b!195365 b!195367) bm!19741))

(assert (=> b!195364 m!221877))

(assert (=> b!195364 m!221877))

(assert (=> b!195364 m!221879))

(assert (=> b!195366 m!221877))

(declare-fun m!223017 () Bool)

(assert (=> b!195366 m!223017))

(declare-fun m!223019 () Bool)

(assert (=> b!195366 m!223019))

(assert (=> b!195366 m!221877))

(declare-fun m!223021 () Bool)

(assert (=> b!195366 m!223021))

(declare-fun m!223023 () Bool)

(assert (=> bm!19741 m!223023))

(assert (=> bm!19662 d!57395))

(declare-fun d!57397 () Bool)

(declare-fun res!92250 () Bool)

(declare-fun e!128491 () Bool)

(assert (=> d!57397 (=> res!92250 e!128491)))

(assert (=> d!57397 (= res!92250 (and ((_ is Cons!2465) lt!96961) (= (_1!1788 (h!3106 lt!96961)) (_1!1788 lt!96700))))))

(assert (=> d!57397 (= (containsKey!248 lt!96961 (_1!1788 lt!96700)) e!128491)))

(declare-fun b!195368 () Bool)

(declare-fun e!128492 () Bool)

(assert (=> b!195368 (= e!128491 e!128492)))

(declare-fun res!92251 () Bool)

(assert (=> b!195368 (=> (not res!92251) (not e!128492))))

(assert (=> b!195368 (= res!92251 (and (or (not ((_ is Cons!2465) lt!96961)) (bvsle (_1!1788 (h!3106 lt!96961)) (_1!1788 lt!96700))) ((_ is Cons!2465) lt!96961) (bvslt (_1!1788 (h!3106 lt!96961)) (_1!1788 lt!96700))))))

(declare-fun b!195369 () Bool)

(assert (=> b!195369 (= e!128492 (containsKey!248 (t!7403 lt!96961) (_1!1788 lt!96700)))))

(assert (= (and d!57397 (not res!92250)) b!195368))

(assert (= (and b!195368 res!92251) b!195369))

(declare-fun m!223025 () Bool)

(assert (=> b!195369 m!223025))

(assert (=> b!194307 d!57397))

(declare-fun d!57399 () Bool)

(declare-fun res!92252 () Bool)

(declare-fun e!128493 () Bool)

(assert (=> d!57399 (=> res!92252 e!128493)))

(assert (=> d!57399 (= res!92252 (= (select (arr!3874 (_keys!5954 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!828))))

(assert (=> d!57399 (= (arrayContainsKey!0 (_keys!5954 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!128493)))

(declare-fun b!195370 () Bool)

(declare-fun e!128494 () Bool)

(assert (=> b!195370 (= e!128493 e!128494)))

(declare-fun res!92253 () Bool)

(assert (=> b!195370 (=> (not res!92253) (not e!128494))))

(assert (=> b!195370 (= res!92253 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!4198 (_keys!5954 thiss!1248))))))

(declare-fun b!195371 () Bool)

(assert (=> b!195371 (= e!128494 (arrayContainsKey!0 (_keys!5954 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!57399 (not res!92252)) b!195370))

(assert (= (and b!195370 res!92253) b!195371))

(assert (=> d!57399 m!221961))

(declare-fun m!223027 () Bool)

(assert (=> b!195371 m!223027))

(assert (=> b!194494 d!57399))

(declare-fun d!57401 () Bool)

(declare-fun lt!97470 () Bool)

(assert (=> d!57401 (= lt!97470 (select (content!154 (t!7403 (toList!1259 lt!96839))) lt!96700))))

(declare-fun e!128496 () Bool)

(assert (=> d!57401 (= lt!97470 e!128496)))

(declare-fun res!92254 () Bool)

(assert (=> d!57401 (=> (not res!92254) (not e!128496))))

(assert (=> d!57401 (= res!92254 ((_ is Cons!2465) (t!7403 (toList!1259 lt!96839))))))

(assert (=> d!57401 (= (contains!1380 (t!7403 (toList!1259 lt!96839)) lt!96700) lt!97470)))

(declare-fun b!195372 () Bool)

(declare-fun e!128495 () Bool)

(assert (=> b!195372 (= e!128496 e!128495)))

(declare-fun res!92255 () Bool)

(assert (=> b!195372 (=> res!92255 e!128495)))

(assert (=> b!195372 (= res!92255 (= (h!3106 (t!7403 (toList!1259 lt!96839))) lt!96700))))

(declare-fun b!195373 () Bool)

(assert (=> b!195373 (= e!128495 (contains!1380 (t!7403 (t!7403 (toList!1259 lt!96839))) lt!96700))))

(assert (= (and d!57401 res!92254) b!195372))

(assert (= (and b!195372 (not res!92255)) b!195373))

(assert (=> d!57401 m!223005))

(declare-fun m!223029 () Bool)

(assert (=> d!57401 m!223029))

(declare-fun m!223031 () Bool)

(assert (=> b!195373 m!223031))

(assert (=> b!194321 d!57401))

(assert (=> b!194483 d!56593))

(declare-fun mapIsEmpty!7777 () Bool)

(declare-fun mapRes!7777 () Bool)

(assert (=> mapIsEmpty!7777 mapRes!7777))

(declare-fun b!195375 () Bool)

(declare-fun e!128497 () Bool)

(assert (=> b!195375 (= e!128497 tp_is_empty!4491)))

(declare-fun condMapEmpty!7777 () Bool)

(declare-fun mapDefault!7777 () ValueCell!1902)

(assert (=> mapNonEmpty!7776 (= condMapEmpty!7777 (= mapRest!7776 ((as const (Array (_ BitVec 32) ValueCell!1902)) mapDefault!7777)))))

(assert (=> mapNonEmpty!7776 (= tp!17037 (and e!128497 mapRes!7777))))

(declare-fun mapNonEmpty!7777 () Bool)

(declare-fun tp!17038 () Bool)

(declare-fun e!128498 () Bool)

(assert (=> mapNonEmpty!7777 (= mapRes!7777 (and tp!17038 e!128498))))

(declare-fun mapValue!7777 () ValueCell!1902)

(declare-fun mapKey!7777 () (_ BitVec 32))

(declare-fun mapRest!7777 () (Array (_ BitVec 32) ValueCell!1902))

(assert (=> mapNonEmpty!7777 (= mapRest!7776 (store mapRest!7777 mapKey!7777 mapValue!7777))))

(declare-fun b!195374 () Bool)

(assert (=> b!195374 (= e!128498 tp_is_empty!4491)))

(assert (= (and mapNonEmpty!7776 condMapEmpty!7777) mapIsEmpty!7777))

(assert (= (and mapNonEmpty!7776 (not condMapEmpty!7777)) mapNonEmpty!7777))

(assert (= (and mapNonEmpty!7777 ((_ is ValueCellFull!1902) mapValue!7777)) b!195374))

(assert (= (and mapNonEmpty!7776 ((_ is ValueCellFull!1902) mapDefault!7777)) b!195375))

(declare-fun m!223033 () Bool)

(assert (=> mapNonEmpty!7777 m!223033))

(declare-fun b_lambda!7555 () Bool)

(assert (= b_lambda!7539 (or (and b!193945 b_free!4719) b_lambda!7555)))

(declare-fun b_lambda!7557 () Bool)

(assert (= b_lambda!7543 (or (and b!193945 b_free!4719) b_lambda!7557)))

(declare-fun b_lambda!7559 () Bool)

(assert (= b_lambda!7551 (or (and b!193945 b_free!4719) b_lambda!7559)))

(declare-fun b_lambda!7561 () Bool)

(assert (= b_lambda!7541 (or (and b!193945 b_free!4719) b_lambda!7561)))

(declare-fun b_lambda!7563 () Bool)

(assert (= b_lambda!7553 (or (and b!193945 b_free!4719) b_lambda!7563)))

(declare-fun b_lambda!7565 () Bool)

(assert (= b_lambda!7527 (or (and b!193945 b_free!4719 (= (defaultEntry!3960 thiss!1248) (defaultEntry!3960 lt!96693))) b_lambda!7565)))

(declare-fun b_lambda!7567 () Bool)

(assert (= b_lambda!7545 (or (and b!193945 b_free!4719) b_lambda!7567)))

(check-sat (not d!56811) (not d!56955) (not d!56817) (not b_lambda!7529) (not bm!19728) (not b!195170) (not b!194972) (not b!194756) (not b!194621) (not bm!19725) (not d!56867) (not bm!19718) (not d!57013) (not b!195283) (not b!195061) (not b!195363) (not b!194979) (not b!194828) (not d!57189) (not b!195255) (not b!194799) (not b!195109) (not b!195344) (not b!194632) (not d!57363) (not d!56823) (not d!56807) (not d!57127) (not b!194741) (not b!195173) (not b!195313) (not b!194935) (not b!195275) (not d!57301) (not d!56833) (not d!57045) (not d!56837) (not d!57345) (not d!57251) (not d!57161) (not d!56941) (not b!195181) (not b!195153) (not b!195334) (not b!194868) (not b_lambda!7557) (not d!56821) (not d!57099) (not b!194745) (not b!195132) (not d!56923) (not d!57009) (not b_lambda!7561) (not d!57191) (not b!195058) (not b!195262) (not b!194881) (not b!194609) (not d!57121) (not d!57077) (not b!194645) (not b!194874) (not b!194696) (not d!57181) (not d!57305) (not b!195086) (not b_lambda!7567) (not b!195185) (not b!195015) (not b!195330) (not b!195234) (not b!195021) (not b!194841) (not d!57203) (not b!194633) (not b!194913) (not b!195105) (not b!194928) (not b!194825) (not d!56873) (not b!194712) (not d!57059) (not b!195322) (not b_lambda!7555) (not d!57265) (not b!194637) (not b!194686) (not b!195078) (not b!195134) (not b!194785) (not b!194855) (not d!57173) (not d!57327) (not b!194690) (not d!57367) (not d!56829) (not b!194983) (not b!195162) (not b!194956) (not b!194877) (not b!194781) (not b!195073) (not d!57187) (not d!56889) (not b!195192) (not d!56927) (not bm!19710) (not b!194977) (not bm!19741) (not b!194853) (not b!194929) (not d!56805) (not b!194892) (not b!194663) (not b!195356) (not b!195063) (not b!195012) (not d!56857) (not d!57095) (not b!194729) (not b!195214) (not b_lambda!7549) (not b!195112) (not b!194969) (not b!194834) b_and!11485 (not b!194865) (not b!194613) (not d!56815) (not d!57003) (not b!195294) (not b!195227) (not b!195268) (not b!195261) (not bm!19695) (not b!195118) (not b!195098) (not d!57089) (not d!57391) (not b!195314) (not d!57235) (not b!195095) (not b!194806) (not d!57219) (not bm!19688) (not d!56831) (not d!57205) (not b!194793) (not d!57017) (not d!57401) (not d!57337) (not b!194989) (not b!195306) (not b!194626) (not d!56825) (not b!194951) (not b!194652) (not b!195316) (not d!57031) (not b!195024) (not b!194682) (not b!194925) (not b!195328) (not b!194973) (not d!57383) (not b!195079) (not b!194795) (not d!57131) (not d!57325) (not d!56945) (not d!57029) (not b!194620) (not b!195139) (not b!194788) (not b!195229) (not d!56885) (not d!57071) (not d!56869) (not b!195106) (not b!195158) (not d!57005) (not d!57153) (not b!194774) (not d!56849) (not d!57373) (not d!57393) (not d!56793) (not b!194901) (not d!56809) (not d!57295) (not b!194927) (not d!56813) (not b!194822) (not d!56843) (not d!56971) (not d!57129) (not b!195292) (not b!195260) (not b!194941) (not b!195048) (not b!194790) (not b!195032) (not b!194819) (not b!194650) (not b!195199) (not b!194782) (not b!194727) (not b!194986) (not b!195303) (not b!195276) (not d!57287) (not b!194695) (not b!195142) (not d!57215) (not d!57361) (not d!57293) (not b!194655) (not b!195325) (not b!194861) (not d!56795) (not b!194628) (not b!195000) (not b!194598) (not b!195309) (not b!195311) (not b!194812) (not d!57275) (not b!194897) (not d!56897) (not b!194615) (not b!195252) (not b!195030) (not d!56835) (not d!57309) (not d!57171) (not b!195266) (not b!195369) (not b!195097) (not d!56919) (not d!57175) (not d!57317) (not b!195278) (not d!57179) (not b!195217) (not bm!19719) (not b!194858) (not b!194944) (not d!57229) (not b!195350) (not b_lambda!7547) (not b!194641) (not b!194635) (not d!57351) (not b!195204) (not b!195245) (not b!195361) (not b!194988) (not d!57043) (not b!194850) (not bm!19689) (not b!194737) (not b!194623) (not d!57163) (not b!194715) (not b!195299) (not b!195237) (not b_next!4719) (not b!194996) (not bm!19709) (not b!195270) (not d!57323) (not d!57245) (not b!194967) (not b!194965) (not b!195077) (not d!57051) (not b!194921) (not d!56943) (not d!57297) (not b!194898) (not d!57281) (not b!194857) (not d!56965) (not b!194888) (not d!57331) (not d!57149) (not bm!19708) (not b!194987) (not b!194751) (not b!195076) (not b!195211) (not d!57335) (not b!195206) (not b!195348) (not b!194991) (not d!57239) (not b!194614) (not d!56953) (not bm!19702) (not d!56937) (not d!56855) (not b!194718) (not b!194910) (not d!57065) (not b!194814) (not b!195034) (not b!194767) (not d!57347) (not b!195250) (not b!194889) (not d!56929) (not b!194779) (not b!194709) (not b!194846) (not d!57177) (not d!56841) (not d!57067) (not b!195144) (not d!56977) (not d!56981) (not b!195137) (not b!195280) (not b!194611) (not b!195055) (not b!194762) (not bm!19722) (not b!195080) (not bm!19738) (not b!194644) (not d!56963) (not b!195364) (not d!57169) (not b!194733) (not b!195347) (not b!194844) (not b!195259) (not d!57055) (not b_lambda!7513) (not d!57289) (not d!56969) (not b!195208) (not b!195043) (not d!57269) (not b!195197) (not d!56839) (not b!195222) (not d!56827) (not b!194958) (not b!195003) (not d!57137) (not d!57221) (not d!56947) (not d!57101) (not bm!19732) (not b!194875) (not b!194976) (not b!194771) (not b!194714) (not bm!19696) (not b!194773) (not b!195090) (not d!56979) (not b!194758) (not d!56931) (not b!195176) (not b!194821) (not b!195167) (not b!194648) (not d!56991) (not b!195145) (not d!56903) (not d!57085) (not b!195016) (not bm!19735) (not d!56881) (not b!195082) (not b!194723) (not b_lambda!7531) (not b!195178) (not d!57365) (not b!194630) (not b!194704) (not d!56989) (not b!195319) (not b!194753) (not b!195302) (not b!195148) (not d!57359) (not b!194601) (not d!56895) (not b!194932) (not b!194657) (not bm!19687) (not b!195285) (not b!194906) (not b!194622) (not b!194860) (not b!194937) (not b!194994) (not bm!19717) (not b!195240) (not d!56987) (not d!57213) (not b!195071) (not d!56891) (not d!57075) (not b!195277) (not b_lambda!7537) (not b!195337) (not b!195231) (not b!195074) (not b!195249) (not b!194940) (not b_lambda!7559) (not d!57197) (not b!194947) (not b!194885) (not b!195088) (not b!194803) (not b!195366) (not b!195069) (not b!195121) (not b!195352) (not b!194970) (not b!194702) (not d!56905) (not b!195305) (not b!195083) (not b!195114) (not b!195220) (not d!56995) (not b!194836) (not b!195360) (not b!195336) (not b!195156) (not d!57375) (not b!194974) (not b!194984) (not b!195263) (not d!57193) (not b!194887) (not b!194643) (not b!194665) (not b!194699) (not b!194816) (not b!195157) (not b!195271) (not b!195009) (not b!195358) (not d!56863) (not b!195164) (not b!194863) (not d!57147) (not bm!19713) (not d!57087) (not b!194849) (not d!57273) (not b!194679) (not b!194939) (not b!195169) (not b!194851) (not d!57165) (not b!194660) (not d!57303) (not b!195053) (not d!56887) (not b!194917) (not b_lambda!7565) (not b!195346) tp_is_empty!4491 (not d!57125) (not d!56899) (not b!195194) (not b!194707) (not b!195129) (not b!195005) (not b!195373) (not b!194730) (not b!195094) (not b!194801) (not b!194688) (not b!195321) (not bm!19705) (not b!195165) (not mapNonEmpty!7777) (not b!195017) (not b!194638) (not b!194884) (not d!57199) (not d!57311) (not d!57143) (not b!194672) (not b!195052) (not d!57225) (not b!194830) (not b!195189) (not b!195066) (not d!56961) (not b!195160) (not d!56901) (not d!56975) (not b!195273) (not b!195087) (not b_lambda!7563) (not b!194624) (not d!57069) (not b!195036) (not b!195201) (not b!194759) (not d!57183) (not bm!19699) (not d!56819) (not b!195050) (not b!195092) (not b!194954) (not b!194605) (not b!195243) (not b!195213) (not d!57141) (not b!195236) (not b!195341) (not b!195103) (not b!195289) (not b!194981) (not b!194904) (not b!194776) (not b!195072) (not b!194595) (not d!57355) (not d!57379) (not b!195286) (not d!56789) (not b!194838) (not b_lambda!7515) (not b!194693) (not d!56933) (not b!194765) (not b!195125) (not b!195100) (not bm!19692) (not d!57285) (not d!57015) (not b!195354) (not d!57081) (not d!57233) (not d!57139) (not b!194721) (not b!195151) (not d!57091) (not b!195257) (not b!194639) (not d!57007) (not b!194636) (not b!194890) (not b!194866) (not d!57157) (not b!194597) (not b_lambda!7535) (not d!57185) (not d!57167) (not d!57079) (not b!194975) (not bm!19714) (not b!195339) (not b!194997) (not bm!19729) (not b!194625) (not b!194749) (not d!56983) (not b!194895) (not b_lambda!7533) (not b!195371))
(check-sat b_and!11485 (not b_next!4719))

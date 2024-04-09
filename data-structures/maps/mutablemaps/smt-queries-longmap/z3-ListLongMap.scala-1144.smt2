; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23716 () Bool)

(assert start!23716)

(declare-fun b!249067 () Bool)

(declare-fun b_free!6615 () Bool)

(declare-fun b_next!6615 () Bool)

(assert (=> b!249067 (= b_free!6615 (not b_next!6615))))

(declare-fun tp!23102 () Bool)

(declare-fun b_and!13641 () Bool)

(assert (=> b!249067 (= tp!23102 b_and!13641)))

(declare-fun b!249059 () Bool)

(declare-fun e!161563 () Bool)

(declare-fun e!161554 () Bool)

(assert (=> b!249059 (= e!161563 e!161554)))

(declare-fun res!122049 () Bool)

(declare-fun call!23377 () Bool)

(assert (=> b!249059 (= res!122049 call!23377)))

(assert (=> b!249059 (=> (not res!122049) (not e!161554))))

(declare-fun bm!23373 () Bool)

(declare-fun call!23376 () Bool)

(declare-datatypes ((V!8283 0))(
  ( (V!8284 (val!3283 Int)) )
))
(declare-datatypes ((ValueCell!2895 0))(
  ( (ValueCellFull!2895 (v!5340 V!8283)) (EmptyCell!2895) )
))
(declare-datatypes ((array!12266 0))(
  ( (array!12267 (arr!5817 (Array (_ BitVec 32) ValueCell!2895)) (size!6160 (_ BitVec 32))) )
))
(declare-datatypes ((array!12268 0))(
  ( (array!12269 (arr!5818 (Array (_ BitVec 32) (_ BitVec 64))) (size!6161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3690 0))(
  ( (LongMapFixedSize!3691 (defaultEntry!4606 Int) (mask!10767 (_ BitVec 32)) (extraKeys!4343 (_ BitVec 32)) (zeroValue!4447 V!8283) (minValue!4447 V!8283) (_size!1894 (_ BitVec 32)) (_keys!6734 array!12268) (_values!4589 array!12266) (_vacant!1894 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3690)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23373 (= call!23376 (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249060 () Bool)

(declare-datatypes ((Unit!7711 0))(
  ( (Unit!7712) )
))
(declare-fun e!161556 () Unit!7711)

(declare-fun Unit!7713 () Unit!7711)

(assert (=> b!249060 (= e!161556 Unit!7713)))

(declare-fun mapNonEmpty!11000 () Bool)

(declare-fun mapRes!11000 () Bool)

(declare-fun tp!23101 () Bool)

(declare-fun e!161558 () Bool)

(assert (=> mapNonEmpty!11000 (= mapRes!11000 (and tp!23101 e!161558))))

(declare-fun mapValue!11000 () ValueCell!2895)

(declare-fun mapKey!11000 () (_ BitVec 32))

(declare-fun mapRest!11000 () (Array (_ BitVec 32) ValueCell!2895))

(assert (=> mapNonEmpty!11000 (= (arr!5817 (_values!4589 thiss!1504)) (store mapRest!11000 mapKey!11000 mapValue!11000))))

(declare-fun b!249061 () Bool)

(declare-datatypes ((SeekEntryResult!1126 0))(
  ( (MissingZero!1126 (index!6674 (_ BitVec 32))) (Found!1126 (index!6675 (_ BitVec 32))) (Intermediate!1126 (undefined!1938 Bool) (index!6676 (_ BitVec 32)) (x!24624 (_ BitVec 32))) (Undefined!1126) (MissingVacant!1126 (index!6677 (_ BitVec 32))) )
))
(declare-fun lt!124781 () SeekEntryResult!1126)

(get-info :version)

(assert (=> b!249061 (= e!161563 ((_ is Undefined!1126) lt!124781))))

(declare-fun b!249062 () Bool)

(assert (=> b!249062 (= e!161554 (not call!23376))))

(declare-fun b!249063 () Bool)

(declare-fun res!122051 () Bool)

(declare-fun e!161566 () Bool)

(assert (=> b!249063 (=> (not res!122051) (not e!161566))))

(assert (=> b!249063 (= res!122051 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!249064 () Bool)

(declare-fun e!161565 () Unit!7711)

(declare-fun lt!124783 () Unit!7711)

(assert (=> b!249064 (= e!161565 lt!124783)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!394 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 64) Int) Unit!7711)

(assert (=> b!249064 (= lt!124783 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!394 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)))))

(declare-fun c!41747 () Bool)

(assert (=> b!249064 (= c!41747 ((_ is MissingZero!1126) lt!124781))))

(declare-fun e!161561 () Bool)

(assert (=> b!249064 e!161561))

(declare-fun b!249065 () Bool)

(declare-fun e!161560 () Bool)

(declare-fun e!161557 () Bool)

(assert (=> b!249065 (= e!161560 e!161557)))

(declare-fun res!122047 () Bool)

(assert (=> b!249065 (=> (not res!122047) (not e!161557))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!249065 (= res!122047 (inRange!0 index!297 (mask!10767 thiss!1504)))))

(declare-fun lt!124782 () Unit!7711)

(assert (=> b!249065 (= lt!124782 e!161565)))

(declare-fun c!41748 () Bool)

(declare-datatypes ((tuple2!4828 0))(
  ( (tuple2!4829 (_1!2424 (_ BitVec 64)) (_2!2424 V!8283)) )
))
(declare-datatypes ((List!3733 0))(
  ( (Nil!3730) (Cons!3729 (h!4387 tuple2!4828) (t!8770 List!3733)) )
))
(declare-datatypes ((ListLongMap!3755 0))(
  ( (ListLongMap!3756 (toList!1893 List!3733)) )
))
(declare-fun contains!1804 (ListLongMap!3755 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1416 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 32) Int) ListLongMap!3755)

(assert (=> b!249065 (= c!41748 (contains!1804 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) key!932))))

(declare-fun e!161568 () Bool)

(declare-fun tp_is_empty!6477 () Bool)

(declare-fun e!161562 () Bool)

(declare-fun array_inv!3829 (array!12268) Bool)

(declare-fun array_inv!3830 (array!12266) Bool)

(assert (=> b!249067 (= e!161562 (and tp!23102 tp_is_empty!6477 (array_inv!3829 (_keys!6734 thiss!1504)) (array_inv!3830 (_values!4589 thiss!1504)) e!161568))))

(declare-fun b!249068 () Bool)

(declare-fun Unit!7714 () Unit!7711)

(assert (=> b!249068 (= e!161556 Unit!7714)))

(declare-fun lt!124788 () Unit!7711)

(declare-fun lemmaArrayContainsKeyThenInListMap!197 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 64) (_ BitVec 32) Int) Unit!7711)

(assert (=> b!249068 (= lt!124788 (lemmaArrayContainsKeyThenInListMap!197 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(assert (=> b!249068 false))

(declare-fun b!249069 () Bool)

(declare-fun res!122050 () Bool)

(declare-fun e!161564 () Bool)

(assert (=> b!249069 (=> (not res!122050) (not e!161564))))

(assert (=> b!249069 (= res!122050 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6674 lt!124781)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!11000 () Bool)

(assert (=> mapIsEmpty!11000 mapRes!11000))

(declare-fun b!249070 () Bool)

(declare-fun res!122053 () Bool)

(assert (=> b!249070 (= res!122053 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6677 lt!124781)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249070 (=> (not res!122053) (not e!161554))))

(declare-fun b!249071 () Bool)

(declare-fun c!41750 () Bool)

(assert (=> b!249071 (= c!41750 ((_ is MissingVacant!1126) lt!124781))))

(assert (=> b!249071 (= e!161561 e!161563)))

(declare-fun b!249072 () Bool)

(declare-fun res!122046 () Bool)

(assert (=> b!249072 (=> (not res!122046) (not e!161564))))

(assert (=> b!249072 (= res!122046 call!23377)))

(assert (=> b!249072 (= e!161561 e!161564)))

(declare-fun b!249073 () Bool)

(declare-fun e!161567 () Bool)

(assert (=> b!249073 (= e!161568 (and e!161567 mapRes!11000))))

(declare-fun condMapEmpty!11000 () Bool)

(declare-fun mapDefault!11000 () ValueCell!2895)

(assert (=> b!249073 (= condMapEmpty!11000 (= (arr!5817 (_values!4589 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2895)) mapDefault!11000)))))

(declare-fun b!249074 () Bool)

(declare-fun e!161559 () Bool)

(assert (=> b!249074 (= e!161559 (= (size!6160 (_values!4589 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10767 thiss!1504))))))

(declare-fun b!249075 () Bool)

(assert (=> b!249075 (= e!161558 tp_is_empty!6477)))

(declare-fun b!249076 () Bool)

(declare-fun Unit!7715 () Unit!7711)

(assert (=> b!249076 (= e!161565 Unit!7715)))

(declare-fun lt!124785 () Unit!7711)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!394 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 64) Int) Unit!7711)

(assert (=> b!249076 (= lt!124785 (lemmaInListMapThenSeekEntryOrOpenFindsIt!394 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)))))

(assert (=> b!249076 false))

(declare-fun b!249077 () Bool)

(assert (=> b!249077 (= e!161564 (not call!23376))))

(declare-fun b!249078 () Bool)

(assert (=> b!249078 (= e!161557 (not e!161559))))

(declare-fun res!122045 () Bool)

(assert (=> b!249078 (=> res!122045 e!161559)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!249078 (= res!122045 (not (validMask!0 (mask!10767 thiss!1504))))))

(declare-fun lt!124784 () array!12268)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12268 (_ BitVec 32)) Bool)

(assert (=> b!249078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124784 (mask!10767 thiss!1504))))

(declare-fun lt!124786 () Unit!7711)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12268 (_ BitVec 32) (_ BitVec 32)) Unit!7711)

(assert (=> b!249078 (= lt!124786 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) index!297 (mask!10767 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12268 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!249078 (= (arrayCountValidKeys!0 lt!124784 #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504)))))))

(declare-fun lt!124780 () Unit!7711)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12268 (_ BitVec 32) (_ BitVec 64)) Unit!7711)

(assert (=> b!249078 (= lt!124780 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6734 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3734 0))(
  ( (Nil!3731) (Cons!3730 (h!4388 (_ BitVec 64)) (t!8771 List!3734)) )
))
(declare-fun arrayNoDuplicates!0 (array!12268 (_ BitVec 32) List!3734) Bool)

(assert (=> b!249078 (arrayNoDuplicates!0 lt!124784 #b00000000000000000000000000000000 Nil!3731)))

(assert (=> b!249078 (= lt!124784 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun lt!124787 () Unit!7711)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12268 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3734) Unit!7711)

(assert (=> b!249078 (= lt!124787 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6734 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3731))))

(declare-fun lt!124789 () Unit!7711)

(assert (=> b!249078 (= lt!124789 e!161556)))

(declare-fun c!41749 () Bool)

(assert (=> b!249078 (= c!41749 (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249079 () Bool)

(assert (=> b!249079 (= e!161567 tp_is_empty!6477)))

(declare-fun bm!23374 () Bool)

(assert (=> bm!23374 (= call!23377 (inRange!0 (ite c!41747 (index!6674 lt!124781) (index!6677 lt!124781)) (mask!10767 thiss!1504)))))

(declare-fun b!249066 () Bool)

(assert (=> b!249066 (= e!161566 e!161560)))

(declare-fun res!122052 () Bool)

(assert (=> b!249066 (=> (not res!122052) (not e!161560))))

(assert (=> b!249066 (= res!122052 (or (= lt!124781 (MissingZero!1126 index!297)) (= lt!124781 (MissingVacant!1126 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12268 (_ BitVec 32)) SeekEntryResult!1126)

(assert (=> b!249066 (= lt!124781 (seekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun res!122048 () Bool)

(assert (=> start!23716 (=> (not res!122048) (not e!161566))))

(declare-fun valid!1436 (LongMapFixedSize!3690) Bool)

(assert (=> start!23716 (= res!122048 (valid!1436 thiss!1504))))

(assert (=> start!23716 e!161566))

(assert (=> start!23716 e!161562))

(assert (=> start!23716 true))

(assert (= (and start!23716 res!122048) b!249063))

(assert (= (and b!249063 res!122051) b!249066))

(assert (= (and b!249066 res!122052) b!249065))

(assert (= (and b!249065 c!41748) b!249076))

(assert (= (and b!249065 (not c!41748)) b!249064))

(assert (= (and b!249064 c!41747) b!249072))

(assert (= (and b!249064 (not c!41747)) b!249071))

(assert (= (and b!249072 res!122046) b!249069))

(assert (= (and b!249069 res!122050) b!249077))

(assert (= (and b!249071 c!41750) b!249059))

(assert (= (and b!249071 (not c!41750)) b!249061))

(assert (= (and b!249059 res!122049) b!249070))

(assert (= (and b!249070 res!122053) b!249062))

(assert (= (or b!249072 b!249059) bm!23374))

(assert (= (or b!249077 b!249062) bm!23373))

(assert (= (and b!249065 res!122047) b!249078))

(assert (= (and b!249078 c!41749) b!249068))

(assert (= (and b!249078 (not c!41749)) b!249060))

(assert (= (and b!249078 (not res!122045)) b!249074))

(assert (= (and b!249073 condMapEmpty!11000) mapIsEmpty!11000))

(assert (= (and b!249073 (not condMapEmpty!11000)) mapNonEmpty!11000))

(assert (= (and mapNonEmpty!11000 ((_ is ValueCellFull!2895) mapValue!11000)) b!249075))

(assert (= (and b!249073 ((_ is ValueCellFull!2895) mapDefault!11000)) b!249079))

(assert (= b!249067 b!249073))

(assert (= start!23716 b!249067))

(declare-fun m!265639 () Bool)

(assert (=> b!249070 m!265639))

(declare-fun m!265641 () Bool)

(assert (=> b!249069 m!265641))

(declare-fun m!265643 () Bool)

(assert (=> b!249078 m!265643))

(declare-fun m!265645 () Bool)

(assert (=> b!249078 m!265645))

(declare-fun m!265647 () Bool)

(assert (=> b!249078 m!265647))

(declare-fun m!265649 () Bool)

(assert (=> b!249078 m!265649))

(declare-fun m!265651 () Bool)

(assert (=> b!249078 m!265651))

(declare-fun m!265653 () Bool)

(assert (=> b!249078 m!265653))

(declare-fun m!265655 () Bool)

(assert (=> b!249078 m!265655))

(declare-fun m!265657 () Bool)

(assert (=> b!249078 m!265657))

(declare-fun m!265659 () Bool)

(assert (=> b!249078 m!265659))

(declare-fun m!265661 () Bool)

(assert (=> b!249078 m!265661))

(assert (=> bm!23373 m!265655))

(declare-fun m!265663 () Bool)

(assert (=> b!249065 m!265663))

(declare-fun m!265665 () Bool)

(assert (=> b!249065 m!265665))

(assert (=> b!249065 m!265665))

(declare-fun m!265667 () Bool)

(assert (=> b!249065 m!265667))

(declare-fun m!265669 () Bool)

(assert (=> b!249076 m!265669))

(declare-fun m!265671 () Bool)

(assert (=> b!249066 m!265671))

(declare-fun m!265673 () Bool)

(assert (=> b!249067 m!265673))

(declare-fun m!265675 () Bool)

(assert (=> b!249067 m!265675))

(declare-fun m!265677 () Bool)

(assert (=> bm!23374 m!265677))

(declare-fun m!265679 () Bool)

(assert (=> b!249064 m!265679))

(declare-fun m!265681 () Bool)

(assert (=> b!249068 m!265681))

(declare-fun m!265683 () Bool)

(assert (=> start!23716 m!265683))

(declare-fun m!265685 () Bool)

(assert (=> mapNonEmpty!11000 m!265685))

(check-sat (not b!249068) tp_is_empty!6477 (not b!249066) (not b!249065) (not bm!23373) (not b_next!6615) (not b!249067) (not bm!23374) (not b!249078) (not b!249064) (not b!249076) b_and!13641 (not mapNonEmpty!11000) (not start!23716))
(check-sat b_and!13641 (not b_next!6615))
(get-model)

(declare-fun d!60527 () Bool)

(assert (=> d!60527 (= (inRange!0 (ite c!41747 (index!6674 lt!124781) (index!6677 lt!124781)) (mask!10767 thiss!1504)) (and (bvsge (ite c!41747 (index!6674 lt!124781) (index!6677 lt!124781)) #b00000000000000000000000000000000) (bvslt (ite c!41747 (index!6674 lt!124781) (index!6677 lt!124781)) (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23374 d!60527))

(declare-fun d!60529 () Bool)

(assert (=> d!60529 (= (inRange!0 index!297 (mask!10767 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!249065 d!60529))

(declare-fun d!60531 () Bool)

(declare-fun e!161619 () Bool)

(assert (=> d!60531 e!161619))

(declare-fun res!122083 () Bool)

(assert (=> d!60531 (=> res!122083 e!161619)))

(declare-fun lt!124831 () Bool)

(assert (=> d!60531 (= res!122083 (not lt!124831))))

(declare-fun lt!124830 () Bool)

(assert (=> d!60531 (= lt!124831 lt!124830)))

(declare-fun lt!124828 () Unit!7711)

(declare-fun e!161618 () Unit!7711)

(assert (=> d!60531 (= lt!124828 e!161618)))

(declare-fun c!41765 () Bool)

(assert (=> d!60531 (= c!41765 lt!124830)))

(declare-fun containsKey!287 (List!3733 (_ BitVec 64)) Bool)

(assert (=> d!60531 (= lt!124830 (containsKey!287 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))

(assert (=> d!60531 (= (contains!1804 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) key!932) lt!124831)))

(declare-fun b!249149 () Bool)

(declare-fun lt!124829 () Unit!7711)

(assert (=> b!249149 (= e!161618 lt!124829)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!236 (List!3733 (_ BitVec 64)) Unit!7711)

(assert (=> b!249149 (= lt!124829 (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))

(declare-datatypes ((Option!301 0))(
  ( (Some!300 (v!5342 V!8283)) (None!299) )
))
(declare-fun isDefined!237 (Option!301) Bool)

(declare-fun getValueByKey!295 (List!3733 (_ BitVec 64)) Option!301)

(assert (=> b!249149 (isDefined!237 (getValueByKey!295 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))

(declare-fun b!249150 () Bool)

(declare-fun Unit!7721 () Unit!7711)

(assert (=> b!249150 (= e!161618 Unit!7721)))

(declare-fun b!249151 () Bool)

(assert (=> b!249151 (= e!161619 (isDefined!237 (getValueByKey!295 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932)))))

(assert (= (and d!60531 c!41765) b!249149))

(assert (= (and d!60531 (not c!41765)) b!249150))

(assert (= (and d!60531 (not res!122083)) b!249151))

(declare-fun m!265735 () Bool)

(assert (=> d!60531 m!265735))

(declare-fun m!265737 () Bool)

(assert (=> b!249149 m!265737))

(declare-fun m!265739 () Bool)

(assert (=> b!249149 m!265739))

(assert (=> b!249149 m!265739))

(declare-fun m!265741 () Bool)

(assert (=> b!249149 m!265741))

(assert (=> b!249151 m!265739))

(assert (=> b!249151 m!265739))

(assert (=> b!249151 m!265741))

(assert (=> b!249065 d!60531))

(declare-fun b!249194 () Bool)

(declare-fun e!161648 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!249194 (= e!161648 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249195 () Bool)

(declare-fun e!161656 () Bool)

(declare-fun e!161655 () Bool)

(assert (=> b!249195 (= e!161656 e!161655)))

(declare-fun res!122102 () Bool)

(declare-fun call!23403 () Bool)

(assert (=> b!249195 (= res!122102 call!23403)))

(assert (=> b!249195 (=> (not res!122102) (not e!161655))))

(declare-fun b!249197 () Bool)

(declare-fun e!161658 () ListLongMap!3755)

(declare-fun e!161646 () ListLongMap!3755)

(assert (=> b!249197 (= e!161658 e!161646)))

(declare-fun c!41778 () Bool)

(assert (=> b!249197 (= c!41778 (and (not (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!249198 () Bool)

(declare-fun e!161657 () Bool)

(declare-fun e!161651 () Bool)

(assert (=> b!249198 (= e!161657 e!161651)))

(declare-fun res!122103 () Bool)

(assert (=> b!249198 (=> (not res!122103) (not e!161651))))

(declare-fun lt!124881 () ListLongMap!3755)

(assert (=> b!249198 (= res!122103 (contains!1804 lt!124881 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!249198 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249199 () Bool)

(assert (=> b!249199 (= e!161656 (not call!23403))))

(declare-fun b!249200 () Bool)

(declare-fun e!161650 () Unit!7711)

(declare-fun Unit!7722 () Unit!7711)

(assert (=> b!249200 (= e!161650 Unit!7722)))

(declare-fun b!249201 () Bool)

(declare-fun e!161652 () Bool)

(assert (=> b!249201 (= e!161652 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249202 () Bool)

(declare-fun apply!238 (ListLongMap!3755 (_ BitVec 64)) V!8283)

(declare-fun get!2986 (ValueCell!2895 V!8283) V!8283)

(declare-fun dynLambda!576 (Int (_ BitVec 64)) V!8283)

(assert (=> b!249202 (= e!161651 (= (apply!238 lt!124881 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)) (get!2986 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249202 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6160 (_values!4589 thiss!1504))))))

(assert (=> b!249202 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun bm!23395 () Bool)

(declare-fun call!23401 () Bool)

(assert (=> bm!23395 (= call!23401 (contains!1804 lt!124881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!41782 () Bool)

(declare-fun call!23399 () ListLongMap!3755)

(declare-fun call!23402 () ListLongMap!3755)

(declare-fun bm!23396 () Bool)

(declare-fun call!23398 () ListLongMap!3755)

(declare-fun call!23400 () ListLongMap!3755)

(declare-fun +!660 (ListLongMap!3755 tuple2!4828) ListLongMap!3755)

(assert (=> bm!23396 (= call!23398 (+!660 (ite c!41782 call!23402 (ite c!41778 call!23399 call!23400)) (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))

(declare-fun bm!23397 () Bool)

(declare-fun call!23404 () ListLongMap!3755)

(assert (=> bm!23397 (= call!23404 call!23398)))

(declare-fun bm!23398 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!557 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 32) Int) ListLongMap!3755)

(assert (=> bm!23398 (= call!23402 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(declare-fun bm!23399 () Bool)

(assert (=> bm!23399 (= call!23399 call!23402)))

(declare-fun b!249203 () Bool)

(declare-fun e!161653 () ListLongMap!3755)

(assert (=> b!249203 (= e!161653 call!23404)))

(declare-fun b!249196 () Bool)

(assert (=> b!249196 (= e!161646 call!23404)))

(declare-fun d!60533 () Bool)

(declare-fun e!161647 () Bool)

(assert (=> d!60533 e!161647))

(declare-fun res!122110 () Bool)

(assert (=> d!60533 (=> (not res!122110) (not e!161647))))

(assert (=> d!60533 (= res!122110 (or (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))))

(declare-fun lt!124885 () ListLongMap!3755)

(assert (=> d!60533 (= lt!124881 lt!124885)))

(declare-fun lt!124884 () Unit!7711)

(assert (=> d!60533 (= lt!124884 e!161650)))

(declare-fun c!41779 () Bool)

(assert (=> d!60533 (= c!41779 e!161652)))

(declare-fun res!122104 () Bool)

(assert (=> d!60533 (=> (not res!122104) (not e!161652))))

(assert (=> d!60533 (= res!122104 (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60533 (= lt!124885 e!161658)))

(assert (=> d!60533 (= c!41782 (and (not (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60533 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60533 (= (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) lt!124881)))

(declare-fun b!249204 () Bool)

(assert (=> b!249204 (= e!161655 (= (apply!238 lt!124881 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4447 thiss!1504)))))

(declare-fun b!249205 () Bool)

(declare-fun e!161649 () Bool)

(declare-fun e!161654 () Bool)

(assert (=> b!249205 (= e!161649 e!161654)))

(declare-fun res!122105 () Bool)

(assert (=> b!249205 (= res!122105 call!23401)))

(assert (=> b!249205 (=> (not res!122105) (not e!161654))))

(declare-fun bm!23400 () Bool)

(assert (=> bm!23400 (= call!23400 call!23399)))

(declare-fun b!249206 () Bool)

(assert (=> b!249206 (= e!161658 (+!660 call!23398 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))

(declare-fun b!249207 () Bool)

(declare-fun c!41781 () Bool)

(assert (=> b!249207 (= c!41781 (and (not (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!249207 (= e!161646 e!161653)))

(declare-fun b!249208 () Bool)

(assert (=> b!249208 (= e!161653 call!23400)))

(declare-fun b!249209 () Bool)

(declare-fun res!122109 () Bool)

(assert (=> b!249209 (=> (not res!122109) (not e!161647))))

(assert (=> b!249209 (= res!122109 e!161657)))

(declare-fun res!122106 () Bool)

(assert (=> b!249209 (=> res!122106 e!161657)))

(assert (=> b!249209 (= res!122106 (not e!161648))))

(declare-fun res!122108 () Bool)

(assert (=> b!249209 (=> (not res!122108) (not e!161648))))

(assert (=> b!249209 (= res!122108 (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249210 () Bool)

(declare-fun res!122107 () Bool)

(assert (=> b!249210 (=> (not res!122107) (not e!161647))))

(assert (=> b!249210 (= res!122107 e!161649)))

(declare-fun c!41783 () Bool)

(assert (=> b!249210 (= c!41783 (not (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!249211 () Bool)

(assert (=> b!249211 (= e!161647 e!161656)))

(declare-fun c!41780 () Bool)

(assert (=> b!249211 (= c!41780 (not (= (bvand (extraKeys!4343 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!249212 () Bool)

(assert (=> b!249212 (= e!161649 (not call!23401))))

(declare-fun bm!23401 () Bool)

(assert (=> bm!23401 (= call!23403 (contains!1804 lt!124881 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249213 () Bool)

(assert (=> b!249213 (= e!161654 (= (apply!238 lt!124881 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4447 thiss!1504)))))

(declare-fun b!249214 () Bool)

(declare-fun lt!124893 () Unit!7711)

(assert (=> b!249214 (= e!161650 lt!124893)))

(declare-fun lt!124894 () ListLongMap!3755)

(assert (=> b!249214 (= lt!124894 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(declare-fun lt!124882 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124882 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124879 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124879 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124876 () Unit!7711)

(declare-fun addStillContains!214 (ListLongMap!3755 (_ BitVec 64) V!8283 (_ BitVec 64)) Unit!7711)

(assert (=> b!249214 (= lt!124876 (addStillContains!214 lt!124894 lt!124882 (zeroValue!4447 thiss!1504) lt!124879))))

(assert (=> b!249214 (contains!1804 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))) lt!124879)))

(declare-fun lt!124891 () Unit!7711)

(assert (=> b!249214 (= lt!124891 lt!124876)))

(declare-fun lt!124889 () ListLongMap!3755)

(assert (=> b!249214 (= lt!124889 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(declare-fun lt!124896 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124896 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124886 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124886 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124895 () Unit!7711)

(declare-fun addApplyDifferent!214 (ListLongMap!3755 (_ BitVec 64) V!8283 (_ BitVec 64)) Unit!7711)

(assert (=> b!249214 (= lt!124895 (addApplyDifferent!214 lt!124889 lt!124896 (minValue!4447 thiss!1504) lt!124886))))

(assert (=> b!249214 (= (apply!238 (+!660 lt!124889 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))) lt!124886) (apply!238 lt!124889 lt!124886))))

(declare-fun lt!124877 () Unit!7711)

(assert (=> b!249214 (= lt!124877 lt!124895)))

(declare-fun lt!124888 () ListLongMap!3755)

(assert (=> b!249214 (= lt!124888 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(declare-fun lt!124880 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124880 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124878 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124878 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124897 () Unit!7711)

(assert (=> b!249214 (= lt!124897 (addApplyDifferent!214 lt!124888 lt!124880 (zeroValue!4447 thiss!1504) lt!124878))))

(assert (=> b!249214 (= (apply!238 (+!660 lt!124888 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))) lt!124878) (apply!238 lt!124888 lt!124878))))

(declare-fun lt!124887 () Unit!7711)

(assert (=> b!249214 (= lt!124887 lt!124897)))

(declare-fun lt!124892 () ListLongMap!3755)

(assert (=> b!249214 (= lt!124892 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(declare-fun lt!124883 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124883 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124890 () (_ BitVec 64))

(assert (=> b!249214 (= lt!124890 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!249214 (= lt!124893 (addApplyDifferent!214 lt!124892 lt!124883 (minValue!4447 thiss!1504) lt!124890))))

(assert (=> b!249214 (= (apply!238 (+!660 lt!124892 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))) lt!124890) (apply!238 lt!124892 lt!124890))))

(assert (= (and d!60533 c!41782) b!249206))

(assert (= (and d!60533 (not c!41782)) b!249197))

(assert (= (and b!249197 c!41778) b!249196))

(assert (= (and b!249197 (not c!41778)) b!249207))

(assert (= (and b!249207 c!41781) b!249203))

(assert (= (and b!249207 (not c!41781)) b!249208))

(assert (= (or b!249203 b!249208) bm!23400))

(assert (= (or b!249196 bm!23400) bm!23399))

(assert (= (or b!249196 b!249203) bm!23397))

(assert (= (or b!249206 bm!23399) bm!23398))

(assert (= (or b!249206 bm!23397) bm!23396))

(assert (= (and d!60533 res!122104) b!249201))

(assert (= (and d!60533 c!41779) b!249214))

(assert (= (and d!60533 (not c!41779)) b!249200))

(assert (= (and d!60533 res!122110) b!249209))

(assert (= (and b!249209 res!122108) b!249194))

(assert (= (and b!249209 (not res!122106)) b!249198))

(assert (= (and b!249198 res!122103) b!249202))

(assert (= (and b!249209 res!122109) b!249210))

(assert (= (and b!249210 c!41783) b!249205))

(assert (= (and b!249210 (not c!41783)) b!249212))

(assert (= (and b!249205 res!122105) b!249213))

(assert (= (or b!249205 b!249212) bm!23395))

(assert (= (and b!249210 res!122107) b!249211))

(assert (= (and b!249211 c!41780) b!249195))

(assert (= (and b!249211 (not c!41780)) b!249199))

(assert (= (and b!249195 res!122102) b!249204))

(assert (= (or b!249195 b!249199) bm!23401))

(declare-fun b_lambda!8093 () Bool)

(assert (=> (not b_lambda!8093) (not b!249202)))

(declare-fun t!8775 () Bool)

(declare-fun tb!2997 () Bool)

(assert (=> (and b!249067 (= (defaultEntry!4606 thiss!1504) (defaultEntry!4606 thiss!1504)) t!8775) tb!2997))

(declare-fun result!5297 () Bool)

(assert (=> tb!2997 (= result!5297 tp_is_empty!6477)))

(assert (=> b!249202 t!8775))

(declare-fun b_and!13645 () Bool)

(assert (= b_and!13641 (and (=> t!8775 result!5297) b_and!13645)))

(declare-fun m!265743 () Bool)

(assert (=> b!249214 m!265743))

(declare-fun m!265745 () Bool)

(assert (=> b!249214 m!265745))

(declare-fun m!265747 () Bool)

(assert (=> b!249214 m!265747))

(declare-fun m!265749 () Bool)

(assert (=> b!249214 m!265749))

(declare-fun m!265751 () Bool)

(assert (=> b!249214 m!265751))

(declare-fun m!265753 () Bool)

(assert (=> b!249214 m!265753))

(declare-fun m!265755 () Bool)

(assert (=> b!249214 m!265755))

(declare-fun m!265757 () Bool)

(assert (=> b!249214 m!265757))

(declare-fun m!265759 () Bool)

(assert (=> b!249214 m!265759))

(declare-fun m!265761 () Bool)

(assert (=> b!249214 m!265761))

(declare-fun m!265763 () Bool)

(assert (=> b!249214 m!265763))

(declare-fun m!265765 () Bool)

(assert (=> b!249214 m!265765))

(declare-fun m!265767 () Bool)

(assert (=> b!249214 m!265767))

(assert (=> b!249214 m!265751))

(declare-fun m!265769 () Bool)

(assert (=> b!249214 m!265769))

(declare-fun m!265771 () Bool)

(assert (=> b!249214 m!265771))

(declare-fun m!265773 () Bool)

(assert (=> b!249214 m!265773))

(declare-fun m!265775 () Bool)

(assert (=> b!249214 m!265775))

(assert (=> b!249214 m!265747))

(assert (=> b!249214 m!265773))

(assert (=> b!249214 m!265757))

(assert (=> bm!23398 m!265763))

(declare-fun m!265777 () Bool)

(assert (=> bm!23396 m!265777))

(declare-fun m!265779 () Bool)

(assert (=> b!249204 m!265779))

(declare-fun m!265781 () Bool)

(assert (=> b!249202 m!265781))

(assert (=> b!249202 m!265765))

(declare-fun m!265783 () Bool)

(assert (=> b!249202 m!265783))

(declare-fun m!265785 () Bool)

(assert (=> b!249202 m!265785))

(assert (=> b!249202 m!265785))

(assert (=> b!249202 m!265781))

(declare-fun m!265787 () Bool)

(assert (=> b!249202 m!265787))

(assert (=> b!249202 m!265765))

(declare-fun m!265789 () Bool)

(assert (=> bm!23395 m!265789))

(declare-fun m!265791 () Bool)

(assert (=> b!249213 m!265791))

(assert (=> b!249198 m!265765))

(assert (=> b!249198 m!265765))

(declare-fun m!265793 () Bool)

(assert (=> b!249198 m!265793))

(declare-fun m!265795 () Bool)

(assert (=> b!249206 m!265795))

(assert (=> b!249201 m!265765))

(assert (=> b!249201 m!265765))

(declare-fun m!265797 () Bool)

(assert (=> b!249201 m!265797))

(declare-fun m!265799 () Bool)

(assert (=> bm!23401 m!265799))

(assert (=> d!60533 m!265643))

(assert (=> b!249194 m!265765))

(assert (=> b!249194 m!265765))

(assert (=> b!249194 m!265797))

(assert (=> b!249065 d!60533))

(declare-fun d!60535 () Bool)

(declare-fun res!122115 () Bool)

(declare-fun e!161663 () Bool)

(assert (=> d!60535 (=> res!122115 e!161663)))

(assert (=> d!60535 (= res!122115 (= (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60535 (= (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 #b00000000000000000000000000000000) e!161663)))

(declare-fun b!249221 () Bool)

(declare-fun e!161664 () Bool)

(assert (=> b!249221 (= e!161663 e!161664)))

(declare-fun res!122116 () Bool)

(assert (=> b!249221 (=> (not res!122116) (not e!161664))))

(assert (=> b!249221 (= res!122116 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249222 () Bool)

(assert (=> b!249222 (= e!161664 (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60535 (not res!122115)) b!249221))

(assert (= (and b!249221 res!122116) b!249222))

(assert (=> d!60535 m!265765))

(declare-fun m!265801 () Bool)

(assert (=> b!249222 m!265801))

(assert (=> bm!23373 d!60535))

(declare-fun d!60537 () Bool)

(declare-fun e!161674 () Bool)

(assert (=> d!60537 e!161674))

(declare-fun c!41789 () Bool)

(declare-fun lt!124903 () SeekEntryResult!1126)

(assert (=> d!60537 (= c!41789 ((_ is MissingZero!1126) lt!124903))))

(assert (=> d!60537 (= lt!124903 (seekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun lt!124902 () Unit!7711)

(declare-fun choose!1181 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 64) Int) Unit!7711)

(assert (=> d!60537 (= lt!124902 (choose!1181 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)))))

(assert (=> d!60537 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60537 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!394 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)) lt!124902)))

(declare-fun b!249239 () Bool)

(declare-fun res!122128 () Bool)

(declare-fun e!161676 () Bool)

(assert (=> b!249239 (=> (not res!122128) (not e!161676))))

(assert (=> b!249239 (= res!122128 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6677 lt!124903)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249239 (and (bvsge (index!6677 lt!124903) #b00000000000000000000000000000000) (bvslt (index!6677 lt!124903) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249240 () Bool)

(declare-fun e!161673 () Bool)

(assert (=> b!249240 (= e!161674 e!161673)))

(declare-fun c!41788 () Bool)

(assert (=> b!249240 (= c!41788 ((_ is MissingVacant!1126) lt!124903))))

(declare-fun b!249241 () Bool)

(assert (=> b!249241 (= e!161673 ((_ is Undefined!1126) lt!124903))))

(declare-fun bm!23406 () Bool)

(declare-fun call!23409 () Bool)

(assert (=> bm!23406 (= call!23409 (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249242 () Bool)

(declare-fun e!161675 () Bool)

(assert (=> b!249242 (= e!161674 e!161675)))

(declare-fun res!122125 () Bool)

(declare-fun call!23410 () Bool)

(assert (=> b!249242 (= res!122125 call!23410)))

(assert (=> b!249242 (=> (not res!122125) (not e!161675))))

(declare-fun b!249243 () Bool)

(assert (=> b!249243 (= e!161676 (not call!23409))))

(declare-fun b!249244 () Bool)

(assert (=> b!249244 (and (bvsge (index!6674 lt!124903) #b00000000000000000000000000000000) (bvslt (index!6674 lt!124903) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun res!122126 () Bool)

(assert (=> b!249244 (= res!122126 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6674 lt!124903)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249244 (=> (not res!122126) (not e!161675))))

(declare-fun b!249245 () Bool)

(assert (=> b!249245 (= e!161675 (not call!23409))))

(declare-fun bm!23407 () Bool)

(assert (=> bm!23407 (= call!23410 (inRange!0 (ite c!41789 (index!6674 lt!124903) (index!6677 lt!124903)) (mask!10767 thiss!1504)))))

(declare-fun b!249246 () Bool)

(declare-fun res!122127 () Bool)

(assert (=> b!249246 (=> (not res!122127) (not e!161676))))

(assert (=> b!249246 (= res!122127 call!23410)))

(assert (=> b!249246 (= e!161673 e!161676)))

(assert (= (and d!60537 c!41789) b!249242))

(assert (= (and d!60537 (not c!41789)) b!249240))

(assert (= (and b!249242 res!122125) b!249244))

(assert (= (and b!249244 res!122126) b!249245))

(assert (= (and b!249240 c!41788) b!249246))

(assert (= (and b!249240 (not c!41788)) b!249241))

(assert (= (and b!249246 res!122127) b!249239))

(assert (= (and b!249239 res!122128) b!249243))

(assert (= (or b!249242 b!249246) bm!23407))

(assert (= (or b!249245 b!249243) bm!23406))

(declare-fun m!265803 () Bool)

(assert (=> b!249244 m!265803))

(assert (=> d!60537 m!265671))

(declare-fun m!265805 () Bool)

(assert (=> d!60537 m!265805))

(assert (=> d!60537 m!265643))

(declare-fun m!265807 () Bool)

(assert (=> bm!23407 m!265807))

(declare-fun m!265809 () Bool)

(assert (=> b!249239 m!265809))

(assert (=> bm!23406 m!265655))

(assert (=> b!249064 d!60537))

(declare-fun b!249257 () Bool)

(declare-fun e!161685 () Bool)

(declare-fun contains!1806 (List!3734 (_ BitVec 64)) Bool)

(assert (=> b!249257 (= e!161685 (contains!1806 Nil!3731 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun d!60539 () Bool)

(declare-fun res!122135 () Bool)

(declare-fun e!161687 () Bool)

(assert (=> d!60539 (=> res!122135 e!161687)))

(assert (=> d!60539 (= res!122135 (bvsge #b00000000000000000000000000000000 (size!6161 lt!124784)))))

(assert (=> d!60539 (= (arrayNoDuplicates!0 lt!124784 #b00000000000000000000000000000000 Nil!3731) e!161687)))

(declare-fun b!249258 () Bool)

(declare-fun e!161686 () Bool)

(assert (=> b!249258 (= e!161687 e!161686)))

(declare-fun res!122137 () Bool)

(assert (=> b!249258 (=> (not res!122137) (not e!161686))))

(assert (=> b!249258 (= res!122137 (not e!161685))))

(declare-fun res!122136 () Bool)

(assert (=> b!249258 (=> (not res!122136) (not e!161685))))

(assert (=> b!249258 (= res!122136 (validKeyInArray!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun b!249259 () Bool)

(declare-fun e!161688 () Bool)

(assert (=> b!249259 (= e!161686 e!161688)))

(declare-fun c!41792 () Bool)

(assert (=> b!249259 (= c!41792 (validKeyInArray!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun b!249260 () Bool)

(declare-fun call!23413 () Bool)

(assert (=> b!249260 (= e!161688 call!23413)))

(declare-fun b!249261 () Bool)

(assert (=> b!249261 (= e!161688 call!23413)))

(declare-fun bm!23410 () Bool)

(assert (=> bm!23410 (= call!23413 (arrayNoDuplicates!0 lt!124784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41792 (Cons!3730 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) Nil!3731) Nil!3731)))))

(assert (= (and d!60539 (not res!122135)) b!249258))

(assert (= (and b!249258 res!122136) b!249257))

(assert (= (and b!249258 res!122137) b!249259))

(assert (= (and b!249259 c!41792) b!249260))

(assert (= (and b!249259 (not c!41792)) b!249261))

(assert (= (or b!249260 b!249261) bm!23410))

(declare-fun m!265811 () Bool)

(assert (=> b!249257 m!265811))

(assert (=> b!249257 m!265811))

(declare-fun m!265813 () Bool)

(assert (=> b!249257 m!265813))

(assert (=> b!249258 m!265811))

(assert (=> b!249258 m!265811))

(declare-fun m!265815 () Bool)

(assert (=> b!249258 m!265815))

(assert (=> b!249259 m!265811))

(assert (=> b!249259 m!265811))

(assert (=> b!249259 m!265815))

(assert (=> bm!23410 m!265811))

(declare-fun m!265817 () Bool)

(assert (=> bm!23410 m!265817))

(assert (=> b!249078 d!60539))

(declare-fun e!161693 () Bool)

(declare-fun b!249273 () Bool)

(assert (=> b!249273 (= e!161693 (= (arrayCountValidKeys!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!60541 () Bool)

(assert (=> d!60541 e!161693))

(declare-fun res!122149 () Bool)

(assert (=> d!60541 (=> (not res!122149) (not e!161693))))

(assert (=> d!60541 (= res!122149 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6161 (_keys!6734 thiss!1504)))))))

(declare-fun lt!124906 () Unit!7711)

(declare-fun choose!1 (array!12268 (_ BitVec 32) (_ BitVec 64)) Unit!7711)

(assert (=> d!60541 (= lt!124906 (choose!1 (_keys!6734 thiss!1504) index!297 key!932))))

(declare-fun e!161694 () Bool)

(assert (=> d!60541 e!161694))

(declare-fun res!122148 () Bool)

(assert (=> d!60541 (=> (not res!122148) (not e!161694))))

(assert (=> d!60541 (= res!122148 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6161 (_keys!6734 thiss!1504)))))))

(assert (=> d!60541 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6734 thiss!1504) index!297 key!932) lt!124906)))

(declare-fun b!249271 () Bool)

(declare-fun res!122146 () Bool)

(assert (=> b!249271 (=> (not res!122146) (not e!161694))))

(assert (=> b!249271 (= res!122146 (validKeyInArray!0 key!932))))

(declare-fun b!249270 () Bool)

(declare-fun res!122147 () Bool)

(assert (=> b!249270 (=> (not res!122147) (not e!161694))))

(assert (=> b!249270 (= res!122147 (not (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) index!297))))))

(declare-fun b!249272 () Bool)

(assert (=> b!249272 (= e!161694 (bvslt (size!6161 (_keys!6734 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!60541 res!122148) b!249270))

(assert (= (and b!249270 res!122147) b!249271))

(assert (= (and b!249271 res!122146) b!249272))

(assert (= (and d!60541 res!122149) b!249273))

(assert (=> b!249273 m!265651))

(declare-fun m!265819 () Bool)

(assert (=> b!249273 m!265819))

(assert (=> b!249273 m!265659))

(declare-fun m!265821 () Bool)

(assert (=> d!60541 m!265821))

(declare-fun m!265823 () Bool)

(assert (=> b!249271 m!265823))

(declare-fun m!265825 () Bool)

(assert (=> b!249270 m!265825))

(assert (=> b!249270 m!265825))

(declare-fun m!265827 () Bool)

(assert (=> b!249270 m!265827))

(assert (=> b!249078 d!60541))

(declare-fun b!249282 () Bool)

(declare-fun e!161699 () (_ BitVec 32))

(declare-fun call!23416 () (_ BitVec 32))

(assert (=> b!249282 (= e!161699 call!23416)))

(declare-fun b!249283 () Bool)

(declare-fun e!161700 () (_ BitVec 32))

(assert (=> b!249283 (= e!161700 #b00000000000000000000000000000000)))

(declare-fun bm!23413 () Bool)

(assert (=> bm!23413 (= call!23416 (arrayCountValidKeys!0 (_keys!6734 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun d!60543 () Bool)

(declare-fun lt!124909 () (_ BitVec 32))

(assert (=> d!60543 (and (bvsge lt!124909 #b00000000000000000000000000000000) (bvsle lt!124909 (bvsub (size!6161 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60543 (= lt!124909 e!161700)))

(declare-fun c!41798 () Bool)

(assert (=> d!60543 (= c!41798 (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60543 (and (bvsle #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6161 (_keys!6734 thiss!1504)) (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60543 (= (arrayCountValidKeys!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) lt!124909)))

(declare-fun b!249284 () Bool)

(assert (=> b!249284 (= e!161700 e!161699)))

(declare-fun c!41797 () Bool)

(assert (=> b!249284 (= c!41797 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249285 () Bool)

(assert (=> b!249285 (= e!161699 (bvadd #b00000000000000000000000000000001 call!23416))))

(assert (= (and d!60543 c!41798) b!249283))

(assert (= (and d!60543 (not c!41798)) b!249284))

(assert (= (and b!249284 c!41797) b!249285))

(assert (= (and b!249284 (not c!41797)) b!249282))

(assert (= (or b!249285 b!249282) bm!23413))

(declare-fun m!265829 () Bool)

(assert (=> bm!23413 m!265829))

(assert (=> b!249284 m!265765))

(assert (=> b!249284 m!265765))

(assert (=> b!249284 m!265797))

(assert (=> b!249078 d!60543))

(declare-fun d!60545 () Bool)

(assert (=> d!60545 (= (validMask!0 (mask!10767 thiss!1504)) (and (or (= (mask!10767 thiss!1504) #b00000000000000000000000000000111) (= (mask!10767 thiss!1504) #b00000000000000000000000000001111) (= (mask!10767 thiss!1504) #b00000000000000000000000000011111) (= (mask!10767 thiss!1504) #b00000000000000000000000000111111) (= (mask!10767 thiss!1504) #b00000000000000000000000001111111) (= (mask!10767 thiss!1504) #b00000000000000000000000011111111) (= (mask!10767 thiss!1504) #b00000000000000000000000111111111) (= (mask!10767 thiss!1504) #b00000000000000000000001111111111) (= (mask!10767 thiss!1504) #b00000000000000000000011111111111) (= (mask!10767 thiss!1504) #b00000000000000000000111111111111) (= (mask!10767 thiss!1504) #b00000000000000000001111111111111) (= (mask!10767 thiss!1504) #b00000000000000000011111111111111) (= (mask!10767 thiss!1504) #b00000000000000000111111111111111) (= (mask!10767 thiss!1504) #b00000000000000001111111111111111) (= (mask!10767 thiss!1504) #b00000000000000011111111111111111) (= (mask!10767 thiss!1504) #b00000000000000111111111111111111) (= (mask!10767 thiss!1504) #b00000000000001111111111111111111) (= (mask!10767 thiss!1504) #b00000000000011111111111111111111) (= (mask!10767 thiss!1504) #b00000000000111111111111111111111) (= (mask!10767 thiss!1504) #b00000000001111111111111111111111) (= (mask!10767 thiss!1504) #b00000000011111111111111111111111) (= (mask!10767 thiss!1504) #b00000000111111111111111111111111) (= (mask!10767 thiss!1504) #b00000001111111111111111111111111) (= (mask!10767 thiss!1504) #b00000011111111111111111111111111) (= (mask!10767 thiss!1504) #b00000111111111111111111111111111) (= (mask!10767 thiss!1504) #b00001111111111111111111111111111) (= (mask!10767 thiss!1504) #b00011111111111111111111111111111) (= (mask!10767 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10767 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!249078 d!60545))

(declare-fun b!249294 () Bool)

(declare-fun e!161708 () Bool)

(declare-fun call!23419 () Bool)

(assert (=> b!249294 (= e!161708 call!23419)))

(declare-fun d!60547 () Bool)

(declare-fun res!122155 () Bool)

(declare-fun e!161707 () Bool)

(assert (=> d!60547 (=> res!122155 e!161707)))

(assert (=> d!60547 (= res!122155 (bvsge #b00000000000000000000000000000000 (size!6161 lt!124784)))))

(assert (=> d!60547 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124784 (mask!10767 thiss!1504)) e!161707)))

(declare-fun b!249295 () Bool)

(declare-fun e!161709 () Bool)

(assert (=> b!249295 (= e!161709 e!161708)))

(declare-fun lt!124916 () (_ BitVec 64))

(assert (=> b!249295 (= lt!124916 (select (arr!5818 lt!124784) #b00000000000000000000000000000000))))

(declare-fun lt!124918 () Unit!7711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12268 (_ BitVec 64) (_ BitVec 32)) Unit!7711)

(assert (=> b!249295 (= lt!124918 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!124784 lt!124916 #b00000000000000000000000000000000))))

(assert (=> b!249295 (arrayContainsKey!0 lt!124784 lt!124916 #b00000000000000000000000000000000)))

(declare-fun lt!124917 () Unit!7711)

(assert (=> b!249295 (= lt!124917 lt!124918)))

(declare-fun res!122154 () Bool)

(assert (=> b!249295 (= res!122154 (= (seekEntryOrOpen!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) lt!124784 (mask!10767 thiss!1504)) (Found!1126 #b00000000000000000000000000000000)))))

(assert (=> b!249295 (=> (not res!122154) (not e!161708))))

(declare-fun bm!23416 () Bool)

(assert (=> bm!23416 (= call!23419 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!124784 (mask!10767 thiss!1504)))))

(declare-fun b!249296 () Bool)

(assert (=> b!249296 (= e!161709 call!23419)))

(declare-fun b!249297 () Bool)

(assert (=> b!249297 (= e!161707 e!161709)))

(declare-fun c!41801 () Bool)

(assert (=> b!249297 (= c!41801 (validKeyInArray!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(assert (= (and d!60547 (not res!122155)) b!249297))

(assert (= (and b!249297 c!41801) b!249295))

(assert (= (and b!249297 (not c!41801)) b!249296))

(assert (= (and b!249295 res!122154) b!249294))

(assert (= (or b!249294 b!249296) bm!23416))

(assert (=> b!249295 m!265811))

(declare-fun m!265831 () Bool)

(assert (=> b!249295 m!265831))

(declare-fun m!265833 () Bool)

(assert (=> b!249295 m!265833))

(assert (=> b!249295 m!265811))

(declare-fun m!265835 () Bool)

(assert (=> b!249295 m!265835))

(declare-fun m!265837 () Bool)

(assert (=> bm!23416 m!265837))

(assert (=> b!249297 m!265811))

(assert (=> b!249297 m!265811))

(assert (=> b!249297 m!265815))

(assert (=> b!249078 d!60547))

(declare-fun b!249298 () Bool)

(declare-fun e!161710 () (_ BitVec 32))

(declare-fun call!23420 () (_ BitVec 32))

(assert (=> b!249298 (= e!161710 call!23420)))

(declare-fun b!249299 () Bool)

(declare-fun e!161711 () (_ BitVec 32))

(assert (=> b!249299 (= e!161711 #b00000000000000000000000000000000)))

(declare-fun bm!23417 () Bool)

(assert (=> bm!23417 (= call!23420 (arrayCountValidKeys!0 lt!124784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun d!60549 () Bool)

(declare-fun lt!124919 () (_ BitVec 32))

(assert (=> d!60549 (and (bvsge lt!124919 #b00000000000000000000000000000000) (bvsle lt!124919 (bvsub (size!6161 lt!124784) #b00000000000000000000000000000000)))))

(assert (=> d!60549 (= lt!124919 e!161711)))

(declare-fun c!41803 () Bool)

(assert (=> d!60549 (= c!41803 (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60549 (and (bvsle #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6161 (_keys!6734 thiss!1504)) (size!6161 lt!124784)))))

(assert (=> d!60549 (= (arrayCountValidKeys!0 lt!124784 #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) lt!124919)))

(declare-fun b!249300 () Bool)

(assert (=> b!249300 (= e!161711 e!161710)))

(declare-fun c!41802 () Bool)

(assert (=> b!249300 (= c!41802 (validKeyInArray!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun b!249301 () Bool)

(assert (=> b!249301 (= e!161710 (bvadd #b00000000000000000000000000000001 call!23420))))

(assert (= (and d!60549 c!41803) b!249299))

(assert (= (and d!60549 (not c!41803)) b!249300))

(assert (= (and b!249300 c!41802) b!249301))

(assert (= (and b!249300 (not c!41802)) b!249298))

(assert (= (or b!249301 b!249298) bm!23417))

(declare-fun m!265839 () Bool)

(assert (=> bm!23417 m!265839))

(assert (=> b!249300 m!265811))

(assert (=> b!249300 m!265811))

(assert (=> b!249300 m!265815))

(assert (=> b!249078 d!60549))

(declare-fun d!60551 () Bool)

(declare-fun e!161714 () Bool)

(assert (=> d!60551 e!161714))

(declare-fun res!122158 () Bool)

(assert (=> d!60551 (=> (not res!122158) (not e!161714))))

(assert (=> d!60551 (= res!122158 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6161 (_keys!6734 thiss!1504)))))))

(declare-fun lt!124922 () Unit!7711)

(declare-fun choose!41 (array!12268 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3734) Unit!7711)

(assert (=> d!60551 (= lt!124922 (choose!41 (_keys!6734 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3731))))

(assert (=> d!60551 (bvslt (size!6161 (_keys!6734 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60551 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6734 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3731) lt!124922)))

(declare-fun b!249304 () Bool)

(assert (=> b!249304 (= e!161714 (arrayNoDuplicates!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000000 Nil!3731))))

(assert (= (and d!60551 res!122158) b!249304))

(declare-fun m!265841 () Bool)

(assert (=> d!60551 m!265841))

(assert (=> b!249304 m!265651))

(declare-fun m!265843 () Bool)

(assert (=> b!249304 m!265843))

(assert (=> b!249078 d!60551))

(assert (=> b!249078 d!60535))

(declare-fun d!60553 () Bool)

(declare-fun e!161717 () Bool)

(assert (=> d!60553 e!161717))

(declare-fun res!122161 () Bool)

(assert (=> d!60553 (=> (not res!122161) (not e!161717))))

(assert (=> d!60553 (= res!122161 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6161 (_keys!6734 thiss!1504)))))))

(declare-fun lt!124925 () Unit!7711)

(declare-fun choose!102 ((_ BitVec 64) array!12268 (_ BitVec 32) (_ BitVec 32)) Unit!7711)

(assert (=> d!60553 (= lt!124925 (choose!102 key!932 (_keys!6734 thiss!1504) index!297 (mask!10767 thiss!1504)))))

(assert (=> d!60553 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60553 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) index!297 (mask!10767 thiss!1504)) lt!124925)))

(declare-fun b!249307 () Bool)

(assert (=> b!249307 (= e!161717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (mask!10767 thiss!1504)))))

(assert (= (and d!60553 res!122161) b!249307))

(declare-fun m!265845 () Bool)

(assert (=> d!60553 m!265845))

(assert (=> d!60553 m!265643))

(assert (=> b!249307 m!265651))

(declare-fun m!265847 () Bool)

(assert (=> b!249307 m!265847))

(assert (=> b!249078 d!60553))

(declare-fun d!60555 () Bool)

(assert (=> d!60555 (contains!1804 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) key!932)))

(declare-fun lt!124928 () Unit!7711)

(declare-fun choose!1182 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 64) (_ BitVec 32) Int) Unit!7711)

(assert (=> d!60555 (= lt!124928 (choose!1182 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))

(assert (=> d!60555 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60555 (= (lemmaArrayContainsKeyThenInListMap!197 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) lt!124928)))

(declare-fun bs!8944 () Bool)

(assert (= bs!8944 d!60555))

(assert (=> bs!8944 m!265665))

(assert (=> bs!8944 m!265665))

(assert (=> bs!8944 m!265667))

(declare-fun m!265849 () Bool)

(assert (=> bs!8944 m!265849))

(assert (=> bs!8944 m!265643))

(assert (=> b!249068 d!60555))

(declare-fun d!60557 () Bool)

(declare-fun res!122168 () Bool)

(declare-fun e!161720 () Bool)

(assert (=> d!60557 (=> (not res!122168) (not e!161720))))

(declare-fun simpleValid!260 (LongMapFixedSize!3690) Bool)

(assert (=> d!60557 (= res!122168 (simpleValid!260 thiss!1504))))

(assert (=> d!60557 (= (valid!1436 thiss!1504) e!161720)))

(declare-fun b!249314 () Bool)

(declare-fun res!122169 () Bool)

(assert (=> b!249314 (=> (not res!122169) (not e!161720))))

(assert (=> b!249314 (= res!122169 (= (arrayCountValidKeys!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (_size!1894 thiss!1504)))))

(declare-fun b!249315 () Bool)

(declare-fun res!122170 () Bool)

(assert (=> b!249315 (=> (not res!122170) (not e!161720))))

(assert (=> b!249315 (= res!122170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun b!249316 () Bool)

(assert (=> b!249316 (= e!161720 (arrayNoDuplicates!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 Nil!3731))))

(assert (= (and d!60557 res!122168) b!249314))

(assert (= (and b!249314 res!122169) b!249315))

(assert (= (and b!249315 res!122170) b!249316))

(declare-fun m!265851 () Bool)

(assert (=> d!60557 m!265851))

(assert (=> b!249314 m!265659))

(declare-fun m!265853 () Bool)

(assert (=> b!249315 m!265853))

(declare-fun m!265855 () Bool)

(assert (=> b!249316 m!265855))

(assert (=> start!23716 d!60557))

(declare-fun d!60559 () Bool)

(declare-fun e!161723 () Bool)

(assert (=> d!60559 e!161723))

(declare-fun res!122175 () Bool)

(assert (=> d!60559 (=> (not res!122175) (not e!161723))))

(declare-fun lt!124934 () SeekEntryResult!1126)

(assert (=> d!60559 (= res!122175 ((_ is Found!1126) lt!124934))))

(assert (=> d!60559 (= lt!124934 (seekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun lt!124933 () Unit!7711)

(declare-fun choose!1183 (array!12268 array!12266 (_ BitVec 32) (_ BitVec 32) V!8283 V!8283 (_ BitVec 64) Int) Unit!7711)

(assert (=> d!60559 (= lt!124933 (choose!1183 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)))))

(assert (=> d!60559 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60559 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!394 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)) lt!124933)))

(declare-fun b!249321 () Bool)

(declare-fun res!122176 () Bool)

(assert (=> b!249321 (=> (not res!122176) (not e!161723))))

(assert (=> b!249321 (= res!122176 (inRange!0 (index!6675 lt!124934) (mask!10767 thiss!1504)))))

(declare-fun b!249322 () Bool)

(assert (=> b!249322 (= e!161723 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6675 lt!124934)) key!932))))

(assert (=> b!249322 (and (bvsge (index!6675 lt!124934) #b00000000000000000000000000000000) (bvslt (index!6675 lt!124934) (size!6161 (_keys!6734 thiss!1504))))))

(assert (= (and d!60559 res!122175) b!249321))

(assert (= (and b!249321 res!122176) b!249322))

(assert (=> d!60559 m!265671))

(declare-fun m!265857 () Bool)

(assert (=> d!60559 m!265857))

(assert (=> d!60559 m!265643))

(declare-fun m!265859 () Bool)

(assert (=> b!249321 m!265859))

(declare-fun m!265861 () Bool)

(assert (=> b!249322 m!265861))

(assert (=> b!249076 d!60559))

(declare-fun b!249335 () Bool)

(declare-fun e!161732 () SeekEntryResult!1126)

(declare-fun lt!124942 () SeekEntryResult!1126)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12268 (_ BitVec 32)) SeekEntryResult!1126)

(assert (=> b!249335 (= e!161732 (seekKeyOrZeroReturnVacant!0 (x!24624 lt!124942) (index!6676 lt!124942) (index!6676 lt!124942) key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun b!249336 () Bool)

(assert (=> b!249336 (= e!161732 (MissingZero!1126 (index!6676 lt!124942)))))

(declare-fun b!249337 () Bool)

(declare-fun c!41812 () Bool)

(declare-fun lt!124943 () (_ BitVec 64))

(assert (=> b!249337 (= c!41812 (= lt!124943 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161731 () SeekEntryResult!1126)

(assert (=> b!249337 (= e!161731 e!161732)))

(declare-fun d!60561 () Bool)

(declare-fun lt!124941 () SeekEntryResult!1126)

(assert (=> d!60561 (and (or ((_ is Undefined!1126) lt!124941) (not ((_ is Found!1126) lt!124941)) (and (bvsge (index!6675 lt!124941) #b00000000000000000000000000000000) (bvslt (index!6675 lt!124941) (size!6161 (_keys!6734 thiss!1504))))) (or ((_ is Undefined!1126) lt!124941) ((_ is Found!1126) lt!124941) (not ((_ is MissingZero!1126) lt!124941)) (and (bvsge (index!6674 lt!124941) #b00000000000000000000000000000000) (bvslt (index!6674 lt!124941) (size!6161 (_keys!6734 thiss!1504))))) (or ((_ is Undefined!1126) lt!124941) ((_ is Found!1126) lt!124941) ((_ is MissingZero!1126) lt!124941) (not ((_ is MissingVacant!1126) lt!124941)) (and (bvsge (index!6677 lt!124941) #b00000000000000000000000000000000) (bvslt (index!6677 lt!124941) (size!6161 (_keys!6734 thiss!1504))))) (or ((_ is Undefined!1126) lt!124941) (ite ((_ is Found!1126) lt!124941) (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6675 lt!124941)) key!932) (ite ((_ is MissingZero!1126) lt!124941) (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6674 lt!124941)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1126) lt!124941) (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6677 lt!124941)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!161730 () SeekEntryResult!1126)

(assert (=> d!60561 (= lt!124941 e!161730)))

(declare-fun c!41810 () Bool)

(assert (=> d!60561 (= c!41810 (and ((_ is Intermediate!1126) lt!124942) (undefined!1938 lt!124942)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12268 (_ BitVec 32)) SeekEntryResult!1126)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60561 (= lt!124942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10767 thiss!1504)) key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(assert (=> d!60561 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60561 (= (seekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)) lt!124941)))

(declare-fun b!249338 () Bool)

(assert (=> b!249338 (= e!161730 e!161731)))

(assert (=> b!249338 (= lt!124943 (select (arr!5818 (_keys!6734 thiss!1504)) (index!6676 lt!124942)))))

(declare-fun c!41811 () Bool)

(assert (=> b!249338 (= c!41811 (= lt!124943 key!932))))

(declare-fun b!249339 () Bool)

(assert (=> b!249339 (= e!161730 Undefined!1126)))

(declare-fun b!249340 () Bool)

(assert (=> b!249340 (= e!161731 (Found!1126 (index!6676 lt!124942)))))

(assert (= (and d!60561 c!41810) b!249339))

(assert (= (and d!60561 (not c!41810)) b!249338))

(assert (= (and b!249338 c!41811) b!249340))

(assert (= (and b!249338 (not c!41811)) b!249337))

(assert (= (and b!249337 c!41812) b!249336))

(assert (= (and b!249337 (not c!41812)) b!249335))

(declare-fun m!265863 () Bool)

(assert (=> b!249335 m!265863))

(declare-fun m!265865 () Bool)

(assert (=> d!60561 m!265865))

(declare-fun m!265867 () Bool)

(assert (=> d!60561 m!265867))

(declare-fun m!265869 () Bool)

(assert (=> d!60561 m!265869))

(declare-fun m!265871 () Bool)

(assert (=> d!60561 m!265871))

(assert (=> d!60561 m!265865))

(assert (=> d!60561 m!265643))

(declare-fun m!265873 () Bool)

(assert (=> d!60561 m!265873))

(declare-fun m!265875 () Bool)

(assert (=> b!249338 m!265875))

(assert (=> b!249066 d!60561))

(declare-fun d!60563 () Bool)

(assert (=> d!60563 (= (array_inv!3829 (_keys!6734 thiss!1504)) (bvsge (size!6161 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!249067 d!60563))

(declare-fun d!60565 () Bool)

(assert (=> d!60565 (= (array_inv!3830 (_values!4589 thiss!1504)) (bvsge (size!6160 (_values!4589 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!249067 d!60565))

(declare-fun b!249348 () Bool)

(declare-fun e!161737 () Bool)

(assert (=> b!249348 (= e!161737 tp_is_empty!6477)))

(declare-fun b!249347 () Bool)

(declare-fun e!161738 () Bool)

(assert (=> b!249347 (= e!161738 tp_is_empty!6477)))

(declare-fun mapIsEmpty!11006 () Bool)

(declare-fun mapRes!11006 () Bool)

(assert (=> mapIsEmpty!11006 mapRes!11006))

(declare-fun condMapEmpty!11006 () Bool)

(declare-fun mapDefault!11006 () ValueCell!2895)

(assert (=> mapNonEmpty!11000 (= condMapEmpty!11006 (= mapRest!11000 ((as const (Array (_ BitVec 32) ValueCell!2895)) mapDefault!11006)))))

(assert (=> mapNonEmpty!11000 (= tp!23101 (and e!161737 mapRes!11006))))

(declare-fun mapNonEmpty!11006 () Bool)

(declare-fun tp!23111 () Bool)

(assert (=> mapNonEmpty!11006 (= mapRes!11006 (and tp!23111 e!161738))))

(declare-fun mapValue!11006 () ValueCell!2895)

(declare-fun mapKey!11006 () (_ BitVec 32))

(declare-fun mapRest!11006 () (Array (_ BitVec 32) ValueCell!2895))

(assert (=> mapNonEmpty!11006 (= mapRest!11000 (store mapRest!11006 mapKey!11006 mapValue!11006))))

(assert (= (and mapNonEmpty!11000 condMapEmpty!11006) mapIsEmpty!11006))

(assert (= (and mapNonEmpty!11000 (not condMapEmpty!11006)) mapNonEmpty!11006))

(assert (= (and mapNonEmpty!11006 ((_ is ValueCellFull!2895) mapValue!11006)) b!249347))

(assert (= (and mapNonEmpty!11000 ((_ is ValueCellFull!2895) mapDefault!11006)) b!249348))

(declare-fun m!265877 () Bool)

(assert (=> mapNonEmpty!11006 m!265877))

(declare-fun b_lambda!8095 () Bool)

(assert (= b_lambda!8093 (or (and b!249067 b_free!6615) b_lambda!8095)))

(check-sat (not b_lambda!8095) (not b!249194) (not b!249297) (not bm!23401) (not b!249198) (not b!249284) (not b!249304) (not b!249258) (not b!249315) (not b_next!6615) (not b!249213) (not b!249222) (not b!249204) (not d!60537) (not bm!23395) b_and!13645 (not b!249307) (not b!249202) (not d!60531) (not bm!23410) (not d!60553) (not bm!23398) (not b!249151) (not mapNonEmpty!11006) (not b!249300) (not bm!23416) (not d!60551) (not b!249295) tp_is_empty!6477 (not d!60559) (not d!60555) (not bm!23407) (not bm!23413) (not d!60541) (not b!249273) (not d!60557) (not d!60561) (not bm!23396) (not b!249270) (not bm!23417) (not b!249201) (not d!60533) (not b!249314) (not bm!23406) (not b!249206) (not b!249214) (not b!249149) (not b!249316) (not b!249321) (not b!249271) (not b!249257) (not b!249259) (not b!249335))
(check-sat b_and!13645 (not b_next!6615))
(get-model)

(assert (=> b!249314 d!60543))

(declare-fun b!249349 () Bool)

(declare-fun e!161739 () Bool)

(assert (=> b!249349 (= e!161739 (contains!1806 Nil!3731 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60567 () Bool)

(declare-fun res!122177 () Bool)

(declare-fun e!161741 () Bool)

(assert (=> d!60567 (=> res!122177 e!161741)))

(assert (=> d!60567 (= res!122177 (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60567 (= (arrayNoDuplicates!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 Nil!3731) e!161741)))

(declare-fun b!249350 () Bool)

(declare-fun e!161740 () Bool)

(assert (=> b!249350 (= e!161741 e!161740)))

(declare-fun res!122179 () Bool)

(assert (=> b!249350 (=> (not res!122179) (not e!161740))))

(assert (=> b!249350 (= res!122179 (not e!161739))))

(declare-fun res!122178 () Bool)

(assert (=> b!249350 (=> (not res!122178) (not e!161739))))

(assert (=> b!249350 (= res!122178 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249351 () Bool)

(declare-fun e!161742 () Bool)

(assert (=> b!249351 (= e!161740 e!161742)))

(declare-fun c!41813 () Bool)

(assert (=> b!249351 (= c!41813 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249352 () Bool)

(declare-fun call!23421 () Bool)

(assert (=> b!249352 (= e!161742 call!23421)))

(declare-fun b!249353 () Bool)

(assert (=> b!249353 (= e!161742 call!23421)))

(declare-fun bm!23418 () Bool)

(assert (=> bm!23418 (= call!23421 (arrayNoDuplicates!0 (_keys!6734 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41813 (Cons!3730 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000) Nil!3731) Nil!3731)))))

(assert (= (and d!60567 (not res!122177)) b!249350))

(assert (= (and b!249350 res!122178) b!249349))

(assert (= (and b!249350 res!122179) b!249351))

(assert (= (and b!249351 c!41813) b!249352))

(assert (= (and b!249351 (not c!41813)) b!249353))

(assert (= (or b!249352 b!249353) bm!23418))

(assert (=> b!249349 m!265765))

(assert (=> b!249349 m!265765))

(declare-fun m!265879 () Bool)

(assert (=> b!249349 m!265879))

(assert (=> b!249350 m!265765))

(assert (=> b!249350 m!265765))

(assert (=> b!249350 m!265797))

(assert (=> b!249351 m!265765))

(assert (=> b!249351 m!265765))

(assert (=> b!249351 m!265797))

(assert (=> bm!23418 m!265765))

(declare-fun m!265881 () Bool)

(assert (=> bm!23418 m!265881))

(assert (=> b!249316 d!60567))

(declare-fun d!60569 () Bool)

(declare-fun lt!124946 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!163 (List!3734) (InoxSet (_ BitVec 64)))

(assert (=> d!60569 (= lt!124946 (select (content!163 Nil!3731) (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun e!161747 () Bool)

(assert (=> d!60569 (= lt!124946 e!161747)))

(declare-fun res!122184 () Bool)

(assert (=> d!60569 (=> (not res!122184) (not e!161747))))

(assert (=> d!60569 (= res!122184 ((_ is Cons!3730) Nil!3731))))

(assert (=> d!60569 (= (contains!1806 Nil!3731 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)) lt!124946)))

(declare-fun b!249358 () Bool)

(declare-fun e!161748 () Bool)

(assert (=> b!249358 (= e!161747 e!161748)))

(declare-fun res!122185 () Bool)

(assert (=> b!249358 (=> res!122185 e!161748)))

(assert (=> b!249358 (= res!122185 (= (h!4388 Nil!3731) (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun b!249359 () Bool)

(assert (=> b!249359 (= e!161748 (contains!1806 (t!8771 Nil!3731) (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(assert (= (and d!60569 res!122184) b!249358))

(assert (= (and b!249358 (not res!122185)) b!249359))

(declare-fun m!265883 () Bool)

(assert (=> d!60569 m!265883))

(assert (=> d!60569 m!265811))

(declare-fun m!265885 () Bool)

(assert (=> d!60569 m!265885))

(assert (=> b!249359 m!265811))

(declare-fun m!265887 () Bool)

(assert (=> b!249359 m!265887))

(assert (=> b!249257 d!60569))

(declare-fun d!60571 () Bool)

(declare-fun e!161750 () Bool)

(assert (=> d!60571 e!161750))

(declare-fun res!122186 () Bool)

(assert (=> d!60571 (=> res!122186 e!161750)))

(declare-fun lt!124950 () Bool)

(assert (=> d!60571 (= res!122186 (not lt!124950))))

(declare-fun lt!124949 () Bool)

(assert (=> d!60571 (= lt!124950 lt!124949)))

(declare-fun lt!124947 () Unit!7711)

(declare-fun e!161749 () Unit!7711)

(assert (=> d!60571 (= lt!124947 e!161749)))

(declare-fun c!41814 () Bool)

(assert (=> d!60571 (= c!41814 lt!124949)))

(assert (=> d!60571 (= lt!124949 (containsKey!287 (toList!1893 lt!124881) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60571 (= (contains!1804 lt!124881 #b0000000000000000000000000000000000000000000000000000000000000000) lt!124950)))

(declare-fun b!249360 () Bool)

(declare-fun lt!124948 () Unit!7711)

(assert (=> b!249360 (= e!161749 lt!124948)))

(assert (=> b!249360 (= lt!124948 (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!1893 lt!124881) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249360 (isDefined!237 (getValueByKey!295 (toList!1893 lt!124881) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249361 () Bool)

(declare-fun Unit!7723 () Unit!7711)

(assert (=> b!249361 (= e!161749 Unit!7723)))

(declare-fun b!249362 () Bool)

(assert (=> b!249362 (= e!161750 (isDefined!237 (getValueByKey!295 (toList!1893 lt!124881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60571 c!41814) b!249360))

(assert (= (and d!60571 (not c!41814)) b!249361))

(assert (= (and d!60571 (not res!122186)) b!249362))

(declare-fun m!265889 () Bool)

(assert (=> d!60571 m!265889))

(declare-fun m!265891 () Bool)

(assert (=> b!249360 m!265891))

(declare-fun m!265893 () Bool)

(assert (=> b!249360 m!265893))

(assert (=> b!249360 m!265893))

(declare-fun m!265895 () Bool)

(assert (=> b!249360 m!265895))

(assert (=> b!249362 m!265893))

(assert (=> b!249362 m!265893))

(assert (=> b!249362 m!265895))

(assert (=> bm!23395 d!60571))

(declare-fun d!60573 () Bool)

(assert (=> d!60573 (= (inRange!0 (index!6675 lt!124934) (mask!10767 thiss!1504)) (and (bvsge (index!6675 lt!124934) #b00000000000000000000000000000000) (bvslt (index!6675 lt!124934) (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!249321 d!60573))

(declare-fun d!60575 () Bool)

(assert (=> d!60575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (mask!10767 thiss!1504))))

(assert (=> d!60575 true))

(declare-fun _$56!21 () Unit!7711)

(assert (=> d!60575 (= (choose!102 key!932 (_keys!6734 thiss!1504) index!297 (mask!10767 thiss!1504)) _$56!21)))

(declare-fun bs!8945 () Bool)

(assert (= bs!8945 d!60575))

(assert (=> bs!8945 m!265651))

(assert (=> bs!8945 m!265847))

(assert (=> d!60553 d!60575))

(assert (=> d!60553 d!60545))

(declare-fun d!60577 () Bool)

(assert (=> d!60577 (arrayNoDuplicates!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000000 Nil!3731)))

(assert (=> d!60577 true))

(declare-fun _$65!74 () Unit!7711)

(assert (=> d!60577 (= (choose!41 (_keys!6734 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3731) _$65!74)))

(declare-fun bs!8946 () Bool)

(assert (= bs!8946 d!60577))

(assert (=> bs!8946 m!265651))

(assert (=> bs!8946 m!265843))

(assert (=> d!60551 d!60577))

(declare-fun d!60579 () Bool)

(assert (=> d!60579 (= (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249201 d!60579))

(declare-fun b!249363 () Bool)

(declare-fun e!161751 () (_ BitVec 32))

(declare-fun call!23422 () (_ BitVec 32))

(assert (=> b!249363 (= e!161751 call!23422)))

(declare-fun b!249364 () Bool)

(declare-fun e!161752 () (_ BitVec 32))

(assert (=> b!249364 (= e!161752 #b00000000000000000000000000000000)))

(declare-fun bm!23419 () Bool)

(assert (=> bm!23419 (= call!23422 (arrayCountValidKeys!0 (_keys!6734 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun d!60581 () Bool)

(declare-fun lt!124951 () (_ BitVec 32))

(assert (=> d!60581 (and (bvsge lt!124951 #b00000000000000000000000000000000) (bvsle lt!124951 (bvsub (size!6161 (_keys!6734 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!60581 (= lt!124951 e!161752)))

(declare-fun c!41816 () Bool)

(assert (=> d!60581 (= c!41816 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60581 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6161 (_keys!6734 thiss!1504)) (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60581 (= (arrayCountValidKeys!0 (_keys!6734 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))) lt!124951)))

(declare-fun b!249365 () Bool)

(assert (=> b!249365 (= e!161752 e!161751)))

(declare-fun c!41815 () Bool)

(assert (=> b!249365 (= c!41815 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!249366 () Bool)

(assert (=> b!249366 (= e!161751 (bvadd #b00000000000000000000000000000001 call!23422))))

(assert (= (and d!60581 c!41816) b!249364))

(assert (= (and d!60581 (not c!41816)) b!249365))

(assert (= (and b!249365 c!41815) b!249366))

(assert (= (and b!249365 (not c!41815)) b!249363))

(assert (= (or b!249366 b!249363) bm!23419))

(declare-fun m!265897 () Bool)

(assert (=> bm!23419 m!265897))

(declare-fun m!265899 () Bool)

(assert (=> b!249365 m!265899))

(assert (=> b!249365 m!265899))

(declare-fun m!265901 () Bool)

(assert (=> b!249365 m!265901))

(assert (=> bm!23413 d!60581))

(declare-fun d!60583 () Bool)

(assert (=> d!60583 (= (arrayCountValidKeys!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6734 thiss!1504) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!60583 true))

(declare-fun _$84!24 () Unit!7711)

(assert (=> d!60583 (= (choose!1 (_keys!6734 thiss!1504) index!297 key!932) _$84!24)))

(declare-fun bs!8947 () Bool)

(assert (= bs!8947 d!60583))

(assert (=> bs!8947 m!265651))

(assert (=> bs!8947 m!265819))

(assert (=> bs!8947 m!265659))

(assert (=> d!60541 d!60583))

(declare-fun d!60585 () Bool)

(declare-fun get!2987 (Option!301) V!8283)

(assert (=> d!60585 (= (apply!238 lt!124881 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2987 (getValueByKey!295 (toList!1893 lt!124881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8948 () Bool)

(assert (= bs!8948 d!60585))

(assert (=> bs!8948 m!265893))

(assert (=> bs!8948 m!265893))

(declare-fun m!265903 () Bool)

(assert (=> bs!8948 m!265903))

(assert (=> b!249213 d!60585))

(declare-fun d!60587 () Bool)

(assert (=> d!60587 (= (validKeyInArray!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)) (and (not (= (select (arr!5818 lt!124784) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5818 lt!124784) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249297 d!60587))

(declare-fun e!161753 () Bool)

(declare-fun b!249367 () Bool)

(assert (=> b!249367 (= e!161753 (contains!1806 Nil!3731 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!60589 () Bool)

(declare-fun res!122187 () Bool)

(declare-fun e!161755 () Bool)

(assert (=> d!60589 (=> res!122187 e!161755)))

(assert (=> d!60589 (= res!122187 (bvsge #b00000000000000000000000000000000 (size!6161 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))))))))

(assert (=> d!60589 (= (arrayNoDuplicates!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000000 Nil!3731) e!161755)))

(declare-fun b!249368 () Bool)

(declare-fun e!161754 () Bool)

(assert (=> b!249368 (= e!161755 e!161754)))

(declare-fun res!122189 () Bool)

(assert (=> b!249368 (=> (not res!122189) (not e!161754))))

(assert (=> b!249368 (= res!122189 (not e!161753))))

(declare-fun res!122188 () Bool)

(assert (=> b!249368 (=> (not res!122188) (not e!161753))))

(assert (=> b!249368 (= res!122188 (validKeyInArray!0 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!249369 () Bool)

(declare-fun e!161756 () Bool)

(assert (=> b!249369 (= e!161754 e!161756)))

(declare-fun c!41817 () Bool)

(assert (=> b!249369 (= c!41817 (validKeyInArray!0 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!249370 () Bool)

(declare-fun call!23423 () Bool)

(assert (=> b!249370 (= e!161756 call!23423)))

(declare-fun b!249371 () Bool)

(assert (=> b!249371 (= e!161756 call!23423)))

(declare-fun bm!23420 () Bool)

(assert (=> bm!23420 (= call!23423 (arrayNoDuplicates!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41817 (Cons!3730 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000) Nil!3731) Nil!3731)))))

(assert (= (and d!60589 (not res!122187)) b!249368))

(assert (= (and b!249368 res!122188) b!249367))

(assert (= (and b!249368 res!122189) b!249369))

(assert (= (and b!249369 c!41817) b!249370))

(assert (= (and b!249369 (not c!41817)) b!249371))

(assert (= (or b!249370 b!249371) bm!23420))

(declare-fun m!265905 () Bool)

(assert (=> b!249367 m!265905))

(assert (=> b!249367 m!265905))

(declare-fun m!265907 () Bool)

(assert (=> b!249367 m!265907))

(assert (=> b!249368 m!265905))

(assert (=> b!249368 m!265905))

(declare-fun m!265909 () Bool)

(assert (=> b!249368 m!265909))

(assert (=> b!249369 m!265905))

(assert (=> b!249369 m!265905))

(assert (=> b!249369 m!265909))

(assert (=> bm!23420 m!265905))

(declare-fun m!265911 () Bool)

(assert (=> bm!23420 m!265911))

(assert (=> b!249304 d!60589))

(assert (=> d!60537 d!60561))

(declare-fun bm!23425 () Bool)

(declare-fun call!23428 () Bool)

(assert (=> bm!23425 (= call!23428 (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249388 () Bool)

(declare-fun res!122200 () Bool)

(declare-fun e!161766 () Bool)

(assert (=> b!249388 (=> (not res!122200) (not e!161766))))

(declare-fun call!23429 () Bool)

(assert (=> b!249388 (= res!122200 call!23429)))

(declare-fun e!161765 () Bool)

(assert (=> b!249388 (= e!161765 e!161766)))

(declare-fun b!249389 () Bool)

(declare-fun res!122198 () Bool)

(declare-fun lt!124954 () SeekEntryResult!1126)

(assert (=> b!249389 (= res!122198 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6674 lt!124954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161767 () Bool)

(assert (=> b!249389 (=> (not res!122198) (not e!161767))))

(declare-fun c!41823 () Bool)

(declare-fun bm!23426 () Bool)

(assert (=> bm!23426 (= call!23429 (inRange!0 (ite c!41823 (index!6674 lt!124954) (index!6677 lt!124954)) (mask!10767 thiss!1504)))))

(declare-fun b!249390 () Bool)

(declare-fun res!122199 () Bool)

(assert (=> b!249390 (=> (not res!122199) (not e!161766))))

(assert (=> b!249390 (= res!122199 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6677 lt!124954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249391 () Bool)

(assert (=> b!249391 (= e!161767 (not call!23428))))

(declare-fun d!60591 () Bool)

(declare-fun e!161768 () Bool)

(assert (=> d!60591 e!161768))

(assert (=> d!60591 (= c!41823 ((_ is MissingZero!1126) lt!124954))))

(assert (=> d!60591 (= lt!124954 (seekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(assert (=> d!60591 true))

(declare-fun _$34!1104 () Unit!7711)

(assert (=> d!60591 (= (choose!1181 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)) _$34!1104)))

(declare-fun b!249392 () Bool)

(assert (=> b!249392 (= e!161765 ((_ is Undefined!1126) lt!124954))))

(declare-fun b!249393 () Bool)

(assert (=> b!249393 (= e!161766 (not call!23428))))

(declare-fun b!249394 () Bool)

(assert (=> b!249394 (= e!161768 e!161767)))

(declare-fun res!122201 () Bool)

(assert (=> b!249394 (= res!122201 call!23429)))

(assert (=> b!249394 (=> (not res!122201) (not e!161767))))

(declare-fun b!249395 () Bool)

(assert (=> b!249395 (= e!161768 e!161765)))

(declare-fun c!41822 () Bool)

(assert (=> b!249395 (= c!41822 ((_ is MissingVacant!1126) lt!124954))))

(assert (= (and d!60591 c!41823) b!249394))

(assert (= (and d!60591 (not c!41823)) b!249395))

(assert (= (and b!249394 res!122201) b!249389))

(assert (= (and b!249389 res!122198) b!249391))

(assert (= (and b!249395 c!41822) b!249388))

(assert (= (and b!249395 (not c!41822)) b!249392))

(assert (= (and b!249388 res!122200) b!249390))

(assert (= (and b!249390 res!122199) b!249393))

(assert (= (or b!249394 b!249388) bm!23426))

(assert (= (or b!249391 b!249393) bm!23425))

(assert (=> d!60591 m!265671))

(declare-fun m!265913 () Bool)

(assert (=> b!249390 m!265913))

(declare-fun m!265915 () Bool)

(assert (=> b!249389 m!265915))

(assert (=> bm!23425 m!265655))

(declare-fun m!265917 () Bool)

(assert (=> bm!23426 m!265917))

(assert (=> d!60537 d!60591))

(assert (=> d!60537 d!60545))

(assert (=> b!249194 d!60579))

(assert (=> b!249300 d!60587))

(declare-fun d!60593 () Bool)

(assert (=> d!60593 (= (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) index!297)) (and (not (= (select (arr!5818 (_keys!6734 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5818 (_keys!6734 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249270 d!60593))

(assert (=> d!60559 d!60561))

(declare-fun d!60595 () Bool)

(declare-fun e!161771 () Bool)

(assert (=> d!60595 e!161771))

(declare-fun res!122206 () Bool)

(assert (=> d!60595 (=> (not res!122206) (not e!161771))))

(declare-fun lt!124957 () SeekEntryResult!1126)

(assert (=> d!60595 (= res!122206 ((_ is Found!1126) lt!124957))))

(assert (=> d!60595 (= lt!124957 (seekEntryOrOpen!0 key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(assert (=> d!60595 true))

(declare-fun _$33!162 () Unit!7711)

(assert (=> d!60595 (= (choose!1183 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 (defaultEntry!4606 thiss!1504)) _$33!162)))

(declare-fun b!249400 () Bool)

(declare-fun res!122207 () Bool)

(assert (=> b!249400 (=> (not res!122207) (not e!161771))))

(assert (=> b!249400 (= res!122207 (inRange!0 (index!6675 lt!124957) (mask!10767 thiss!1504)))))

(declare-fun b!249401 () Bool)

(assert (=> b!249401 (= e!161771 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6675 lt!124957)) key!932))))

(assert (= (and d!60595 res!122206) b!249400))

(assert (= (and b!249400 res!122207) b!249401))

(assert (=> d!60595 m!265671))

(declare-fun m!265919 () Bool)

(assert (=> b!249400 m!265919))

(declare-fun m!265921 () Bool)

(assert (=> b!249401 m!265921))

(assert (=> d!60559 d!60595))

(assert (=> d!60559 d!60545))

(declare-fun d!60597 () Bool)

(assert (=> d!60597 (arrayContainsKey!0 lt!124784 lt!124916 #b00000000000000000000000000000000)))

(declare-fun lt!124960 () Unit!7711)

(declare-fun choose!13 (array!12268 (_ BitVec 64) (_ BitVec 32)) Unit!7711)

(assert (=> d!60597 (= lt!124960 (choose!13 lt!124784 lt!124916 #b00000000000000000000000000000000))))

(assert (=> d!60597 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!60597 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!124784 lt!124916 #b00000000000000000000000000000000) lt!124960)))

(declare-fun bs!8949 () Bool)

(assert (= bs!8949 d!60597))

(assert (=> bs!8949 m!265833))

(declare-fun m!265923 () Bool)

(assert (=> bs!8949 m!265923))

(assert (=> b!249295 d!60597))

(declare-fun d!60599 () Bool)

(declare-fun res!122208 () Bool)

(declare-fun e!161772 () Bool)

(assert (=> d!60599 (=> res!122208 e!161772)))

(assert (=> d!60599 (= res!122208 (= (select (arr!5818 lt!124784) #b00000000000000000000000000000000) lt!124916))))

(assert (=> d!60599 (= (arrayContainsKey!0 lt!124784 lt!124916 #b00000000000000000000000000000000) e!161772)))

(declare-fun b!249402 () Bool)

(declare-fun e!161773 () Bool)

(assert (=> b!249402 (= e!161772 e!161773)))

(declare-fun res!122209 () Bool)

(assert (=> b!249402 (=> (not res!122209) (not e!161773))))

(assert (=> b!249402 (= res!122209 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 lt!124784)))))

(declare-fun b!249403 () Bool)

(assert (=> b!249403 (= e!161773 (arrayContainsKey!0 lt!124784 lt!124916 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60599 (not res!122208)) b!249402))

(assert (= (and b!249402 res!122209) b!249403))

(assert (=> d!60599 m!265811))

(declare-fun m!265925 () Bool)

(assert (=> b!249403 m!265925))

(assert (=> b!249295 d!60599))

(declare-fun e!161776 () SeekEntryResult!1126)

(declare-fun lt!124962 () SeekEntryResult!1126)

(declare-fun b!249404 () Bool)

(assert (=> b!249404 (= e!161776 (seekKeyOrZeroReturnVacant!0 (x!24624 lt!124962) (index!6676 lt!124962) (index!6676 lt!124962) (select (arr!5818 lt!124784) #b00000000000000000000000000000000) lt!124784 (mask!10767 thiss!1504)))))

(declare-fun b!249405 () Bool)

(assert (=> b!249405 (= e!161776 (MissingZero!1126 (index!6676 lt!124962)))))

(declare-fun b!249406 () Bool)

(declare-fun c!41826 () Bool)

(declare-fun lt!124963 () (_ BitVec 64))

(assert (=> b!249406 (= c!41826 (= lt!124963 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161775 () SeekEntryResult!1126)

(assert (=> b!249406 (= e!161775 e!161776)))

(declare-fun d!60601 () Bool)

(declare-fun lt!124961 () SeekEntryResult!1126)

(assert (=> d!60601 (and (or ((_ is Undefined!1126) lt!124961) (not ((_ is Found!1126) lt!124961)) (and (bvsge (index!6675 lt!124961) #b00000000000000000000000000000000) (bvslt (index!6675 lt!124961) (size!6161 lt!124784)))) (or ((_ is Undefined!1126) lt!124961) ((_ is Found!1126) lt!124961) (not ((_ is MissingZero!1126) lt!124961)) (and (bvsge (index!6674 lt!124961) #b00000000000000000000000000000000) (bvslt (index!6674 lt!124961) (size!6161 lt!124784)))) (or ((_ is Undefined!1126) lt!124961) ((_ is Found!1126) lt!124961) ((_ is MissingZero!1126) lt!124961) (not ((_ is MissingVacant!1126) lt!124961)) (and (bvsge (index!6677 lt!124961) #b00000000000000000000000000000000) (bvslt (index!6677 lt!124961) (size!6161 lt!124784)))) (or ((_ is Undefined!1126) lt!124961) (ite ((_ is Found!1126) lt!124961) (= (select (arr!5818 lt!124784) (index!6675 lt!124961)) (select (arr!5818 lt!124784) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1126) lt!124961) (= (select (arr!5818 lt!124784) (index!6674 lt!124961)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1126) lt!124961) (= (select (arr!5818 lt!124784) (index!6677 lt!124961)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!161774 () SeekEntryResult!1126)

(assert (=> d!60601 (= lt!124961 e!161774)))

(declare-fun c!41824 () Bool)

(assert (=> d!60601 (= c!41824 (and ((_ is Intermediate!1126) lt!124962) (undefined!1938 lt!124962)))))

(assert (=> d!60601 (= lt!124962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) (mask!10767 thiss!1504)) (select (arr!5818 lt!124784) #b00000000000000000000000000000000) lt!124784 (mask!10767 thiss!1504)))))

(assert (=> d!60601 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60601 (= (seekEntryOrOpen!0 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) lt!124784 (mask!10767 thiss!1504)) lt!124961)))

(declare-fun b!249407 () Bool)

(assert (=> b!249407 (= e!161774 e!161775)))

(assert (=> b!249407 (= lt!124963 (select (arr!5818 lt!124784) (index!6676 lt!124962)))))

(declare-fun c!41825 () Bool)

(assert (=> b!249407 (= c!41825 (= lt!124963 (select (arr!5818 lt!124784) #b00000000000000000000000000000000)))))

(declare-fun b!249408 () Bool)

(assert (=> b!249408 (= e!161774 Undefined!1126)))

(declare-fun b!249409 () Bool)

(assert (=> b!249409 (= e!161775 (Found!1126 (index!6676 lt!124962)))))

(assert (= (and d!60601 c!41824) b!249408))

(assert (= (and d!60601 (not c!41824)) b!249407))

(assert (= (and b!249407 c!41825) b!249409))

(assert (= (and b!249407 (not c!41825)) b!249406))

(assert (= (and b!249406 c!41826) b!249405))

(assert (= (and b!249406 (not c!41826)) b!249404))

(assert (=> b!249404 m!265811))

(declare-fun m!265927 () Bool)

(assert (=> b!249404 m!265927))

(declare-fun m!265929 () Bool)

(assert (=> d!60601 m!265929))

(assert (=> d!60601 m!265811))

(declare-fun m!265931 () Bool)

(assert (=> d!60601 m!265931))

(declare-fun m!265933 () Bool)

(assert (=> d!60601 m!265933))

(declare-fun m!265935 () Bool)

(assert (=> d!60601 m!265935))

(assert (=> d!60601 m!265811))

(assert (=> d!60601 m!265929))

(assert (=> d!60601 m!265643))

(declare-fun m!265937 () Bool)

(assert (=> d!60601 m!265937))

(declare-fun m!265939 () Bool)

(assert (=> b!249407 m!265939))

(assert (=> b!249295 d!60601))

(declare-fun d!60603 () Bool)

(declare-fun res!122210 () Bool)

(declare-fun e!161777 () Bool)

(assert (=> d!60603 (=> res!122210 e!161777)))

(assert (=> d!60603 (= res!122210 (= (select (arr!5818 (_keys!6734 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!60603 (= (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!161777)))

(declare-fun b!249410 () Bool)

(declare-fun e!161778 () Bool)

(assert (=> b!249410 (= e!161777 e!161778)))

(declare-fun res!122211 () Bool)

(assert (=> b!249410 (=> (not res!122211) (not e!161778))))

(assert (=> b!249410 (= res!122211 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249411 () Bool)

(assert (=> b!249411 (= e!161778 (arrayContainsKey!0 (_keys!6734 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!60603 (not res!122210)) b!249410))

(assert (= (and b!249410 res!122211) b!249411))

(assert (=> d!60603 m!265899))

(declare-fun m!265941 () Bool)

(assert (=> b!249411 m!265941))

(assert (=> b!249222 d!60603))

(declare-fun d!60605 () Bool)

(assert (=> d!60605 (= (apply!238 lt!124881 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2987 (getValueByKey!295 (toList!1893 lt!124881) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8950 () Bool)

(assert (= bs!8950 d!60605))

(declare-fun m!265943 () Bool)

(assert (=> bs!8950 m!265943))

(assert (=> bs!8950 m!265943))

(declare-fun m!265945 () Bool)

(assert (=> bs!8950 m!265945))

(assert (=> b!249204 d!60605))

(assert (=> b!249259 d!60587))

(declare-fun d!60607 () Bool)

(declare-fun res!122216 () Bool)

(declare-fun e!161783 () Bool)

(assert (=> d!60607 (=> res!122216 e!161783)))

(assert (=> d!60607 (= res!122216 (and ((_ is Cons!3729) (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))) (= (_1!2424 (h!4387 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))))) key!932)))))

(assert (=> d!60607 (= (containsKey!287 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932) e!161783)))

(declare-fun b!249416 () Bool)

(declare-fun e!161784 () Bool)

(assert (=> b!249416 (= e!161783 e!161784)))

(declare-fun res!122217 () Bool)

(assert (=> b!249416 (=> (not res!122217) (not e!161784))))

(assert (=> b!249416 (= res!122217 (and (or (not ((_ is Cons!3729) (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))))) (bvsle (_1!2424 (h!4387 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))))) key!932)) ((_ is Cons!3729) (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))) (bvslt (_1!2424 (h!4387 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))))) key!932)))))

(declare-fun b!249417 () Bool)

(assert (=> b!249417 (= e!161784 (containsKey!287 (t!8770 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))) key!932))))

(assert (= (and d!60607 (not res!122216)) b!249416))

(assert (= (and b!249416 res!122217) b!249417))

(declare-fun m!265947 () Bool)

(assert (=> b!249417 m!265947))

(assert (=> d!60531 d!60607))

(assert (=> bm!23406 d!60535))

(assert (=> b!249258 d!60587))

(declare-fun b!249442 () Bool)

(declare-fun e!161803 () Bool)

(declare-fun lt!124983 () ListLongMap!3755)

(declare-fun isEmpty!529 (ListLongMap!3755) Bool)

(assert (=> b!249442 (= e!161803 (isEmpty!529 lt!124983))))

(declare-fun b!249443 () Bool)

(declare-fun e!161802 () Bool)

(assert (=> b!249443 (= e!161802 e!161803)))

(declare-fun c!41838 () Bool)

(assert (=> b!249443 (= c!41838 (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249444 () Bool)

(assert (=> b!249444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> b!249444 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6160 (_values!4589 thiss!1504))))))

(declare-fun e!161800 () Bool)

(assert (=> b!249444 (= e!161800 (= (apply!238 lt!124983 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)) (get!2986 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!249445 () Bool)

(declare-fun res!122227 () Bool)

(declare-fun e!161804 () Bool)

(assert (=> b!249445 (=> (not res!122227) (not e!161804))))

(assert (=> b!249445 (= res!122227 (not (contains!1804 lt!124983 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!249446 () Bool)

(declare-fun lt!124984 () Unit!7711)

(declare-fun lt!124980 () Unit!7711)

(assert (=> b!249446 (= lt!124984 lt!124980)))

(declare-fun lt!124981 () ListLongMap!3755)

(declare-fun lt!124979 () (_ BitVec 64))

(declare-fun lt!124978 () V!8283)

(declare-fun lt!124982 () (_ BitVec 64))

(assert (=> b!249446 (not (contains!1804 (+!660 lt!124981 (tuple2!4829 lt!124982 lt!124978)) lt!124979))))

(declare-fun addStillNotContains!123 (ListLongMap!3755 (_ BitVec 64) V!8283 (_ BitVec 64)) Unit!7711)

(assert (=> b!249446 (= lt!124980 (addStillNotContains!123 lt!124981 lt!124982 lt!124978 lt!124979))))

(assert (=> b!249446 (= lt!124979 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!249446 (= lt!124978 (get!2986 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!249446 (= lt!124982 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun call!23432 () ListLongMap!3755)

(assert (=> b!249446 (= lt!124981 call!23432)))

(declare-fun e!161805 () ListLongMap!3755)

(assert (=> b!249446 (= e!161805 (+!660 call!23432 (tuple2!4829 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000) (get!2986 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!60609 () Bool)

(assert (=> d!60609 e!161804))

(declare-fun res!122229 () Bool)

(assert (=> d!60609 (=> (not res!122229) (not e!161804))))

(assert (=> d!60609 (= res!122229 (not (contains!1804 lt!124983 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!161799 () ListLongMap!3755)

(assert (=> d!60609 (= lt!124983 e!161799)))

(declare-fun c!41835 () Bool)

(assert (=> d!60609 (= c!41835 (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60609 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60609 (= (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) lt!124983)))

(declare-fun b!249447 () Bool)

(assert (=> b!249447 (= e!161803 (= lt!124983 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4606 thiss!1504))))))

(declare-fun b!249448 () Bool)

(assert (=> b!249448 (= e!161799 (ListLongMap!3756 Nil!3730))))

(declare-fun b!249449 () Bool)

(assert (=> b!249449 (= e!161799 e!161805)))

(declare-fun c!41836 () Bool)

(assert (=> b!249449 (= c!41836 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249450 () Bool)

(declare-fun e!161801 () Bool)

(assert (=> b!249450 (= e!161801 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!249450 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!249451 () Bool)

(assert (=> b!249451 (= e!161804 e!161802)))

(declare-fun c!41837 () Bool)

(assert (=> b!249451 (= c!41837 e!161801)))

(declare-fun res!122226 () Bool)

(assert (=> b!249451 (=> (not res!122226) (not e!161801))))

(assert (=> b!249451 (= res!122226 (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun b!249452 () Bool)

(assert (=> b!249452 (= e!161805 call!23432)))

(declare-fun bm!23429 () Bool)

(assert (=> bm!23429 (= call!23432 (getCurrentListMapNoExtraKeys!557 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4606 thiss!1504)))))

(declare-fun b!249453 () Bool)

(assert (=> b!249453 (= e!161802 e!161800)))

(assert (=> b!249453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun res!122228 () Bool)

(assert (=> b!249453 (= res!122228 (contains!1804 lt!124983 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!249453 (=> (not res!122228) (not e!161800))))

(assert (= (and d!60609 c!41835) b!249448))

(assert (= (and d!60609 (not c!41835)) b!249449))

(assert (= (and b!249449 c!41836) b!249446))

(assert (= (and b!249449 (not c!41836)) b!249452))

(assert (= (or b!249446 b!249452) bm!23429))

(assert (= (and d!60609 res!122229) b!249445))

(assert (= (and b!249445 res!122227) b!249451))

(assert (= (and b!249451 res!122226) b!249450))

(assert (= (and b!249451 c!41837) b!249453))

(assert (= (and b!249451 (not c!41837)) b!249443))

(assert (= (and b!249453 res!122228) b!249444))

(assert (= (and b!249443 c!41838) b!249447))

(assert (= (and b!249443 (not c!41838)) b!249442))

(declare-fun b_lambda!8097 () Bool)

(assert (=> (not b_lambda!8097) (not b!249444)))

(assert (=> b!249444 t!8775))

(declare-fun b_and!13647 () Bool)

(assert (= b_and!13645 (and (=> t!8775 result!5297) b_and!13647)))

(declare-fun b_lambda!8099 () Bool)

(assert (=> (not b_lambda!8099) (not b!249446)))

(assert (=> b!249446 t!8775))

(declare-fun b_and!13649 () Bool)

(assert (= b_and!13647 (and (=> t!8775 result!5297) b_and!13649)))

(declare-fun m!265949 () Bool)

(assert (=> bm!23429 m!265949))

(assert (=> b!249447 m!265949))

(assert (=> b!249444 m!265785))

(assert (=> b!249444 m!265781))

(assert (=> b!249444 m!265787))

(assert (=> b!249444 m!265765))

(assert (=> b!249444 m!265781))

(assert (=> b!249444 m!265785))

(assert (=> b!249444 m!265765))

(declare-fun m!265951 () Bool)

(assert (=> b!249444 m!265951))

(assert (=> b!249453 m!265765))

(assert (=> b!249453 m!265765))

(declare-fun m!265953 () Bool)

(assert (=> b!249453 m!265953))

(declare-fun m!265955 () Bool)

(assert (=> b!249446 m!265955))

(declare-fun m!265957 () Bool)

(assert (=> b!249446 m!265957))

(assert (=> b!249446 m!265785))

(assert (=> b!249446 m!265781))

(assert (=> b!249446 m!265787))

(declare-fun m!265959 () Bool)

(assert (=> b!249446 m!265959))

(declare-fun m!265961 () Bool)

(assert (=> b!249446 m!265961))

(assert (=> b!249446 m!265765))

(assert (=> b!249446 m!265781))

(assert (=> b!249446 m!265785))

(assert (=> b!249446 m!265959))

(declare-fun m!265963 () Bool)

(assert (=> d!60609 m!265963))

(assert (=> d!60609 m!265643))

(declare-fun m!265965 () Bool)

(assert (=> b!249442 m!265965))

(assert (=> b!249450 m!265765))

(assert (=> b!249450 m!265765))

(assert (=> b!249450 m!265797))

(declare-fun m!265967 () Bool)

(assert (=> b!249445 m!265967))

(assert (=> b!249449 m!265765))

(assert (=> b!249449 m!265765))

(assert (=> b!249449 m!265797))

(assert (=> bm!23398 d!60609))

(assert (=> d!60555 d!60531))

(assert (=> d!60555 d!60533))

(declare-fun d!60611 () Bool)

(assert (=> d!60611 (contains!1804 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) key!932)))

(assert (=> d!60611 true))

(declare-fun _$17!71 () Unit!7711)

(assert (=> d!60611 (= (choose!1182 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)) _$17!71)))

(declare-fun bs!8951 () Bool)

(assert (= bs!8951 d!60611))

(assert (=> bs!8951 m!265665))

(assert (=> bs!8951 m!265665))

(assert (=> bs!8951 m!265667))

(assert (=> d!60555 d!60611))

(assert (=> d!60555 d!60545))

(declare-fun b!249454 () Bool)

(declare-fun e!161807 () Bool)

(declare-fun call!23433 () Bool)

(assert (=> b!249454 (= e!161807 call!23433)))

(declare-fun d!60613 () Bool)

(declare-fun res!122231 () Bool)

(declare-fun e!161806 () Bool)

(assert (=> d!60613 (=> res!122231 e!161806)))

(assert (=> d!60613 (= res!122231 (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60613 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)) e!161806)))

(declare-fun b!249455 () Bool)

(declare-fun e!161808 () Bool)

(assert (=> b!249455 (= e!161808 e!161807)))

(declare-fun lt!124985 () (_ BitVec 64))

(assert (=> b!249455 (= lt!124985 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124987 () Unit!7711)

(assert (=> b!249455 (= lt!124987 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6734 thiss!1504) lt!124985 #b00000000000000000000000000000000))))

(assert (=> b!249455 (arrayContainsKey!0 (_keys!6734 thiss!1504) lt!124985 #b00000000000000000000000000000000)))

(declare-fun lt!124986 () Unit!7711)

(assert (=> b!249455 (= lt!124986 lt!124987)))

(declare-fun res!122230 () Bool)

(assert (=> b!249455 (= res!122230 (= (seekEntryOrOpen!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000) (_keys!6734 thiss!1504) (mask!10767 thiss!1504)) (Found!1126 #b00000000000000000000000000000000)))))

(assert (=> b!249455 (=> (not res!122230) (not e!161807))))

(declare-fun bm!23430 () Bool)

(assert (=> bm!23430 (= call!23433 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun b!249456 () Bool)

(assert (=> b!249456 (= e!161808 call!23433)))

(declare-fun b!249457 () Bool)

(assert (=> b!249457 (= e!161806 e!161808)))

(declare-fun c!41839 () Bool)

(assert (=> b!249457 (= c!41839 (validKeyInArray!0 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!60613 (not res!122231)) b!249457))

(assert (= (and b!249457 c!41839) b!249455))

(assert (= (and b!249457 (not c!41839)) b!249456))

(assert (= (and b!249455 res!122230) b!249454))

(assert (= (or b!249454 b!249456) bm!23430))

(assert (=> b!249455 m!265765))

(declare-fun m!265969 () Bool)

(assert (=> b!249455 m!265969))

(declare-fun m!265971 () Bool)

(assert (=> b!249455 m!265971))

(assert (=> b!249455 m!265765))

(declare-fun m!265973 () Bool)

(assert (=> b!249455 m!265973))

(declare-fun m!265975 () Bool)

(assert (=> bm!23430 m!265975))

(assert (=> b!249457 m!265765))

(assert (=> b!249457 m!265765))

(assert (=> b!249457 m!265797))

(assert (=> b!249315 d!60613))

(declare-fun d!60615 () Bool)

(declare-fun e!161811 () Bool)

(assert (=> d!60615 e!161811))

(declare-fun res!122237 () Bool)

(assert (=> d!60615 (=> (not res!122237) (not e!161811))))

(declare-fun lt!124996 () ListLongMap!3755)

(assert (=> d!60615 (= res!122237 (contains!1804 lt!124996 (_1!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))))

(declare-fun lt!124997 () List!3733)

(assert (=> d!60615 (= lt!124996 (ListLongMap!3756 lt!124997))))

(declare-fun lt!124998 () Unit!7711)

(declare-fun lt!124999 () Unit!7711)

(assert (=> d!60615 (= lt!124998 lt!124999)))

(assert (=> d!60615 (= (getValueByKey!295 lt!124997 (_1!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))) (Some!300 (_2!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!158 (List!3733 (_ BitVec 64) V!8283) Unit!7711)

(assert (=> d!60615 (= lt!124999 (lemmaContainsTupThenGetReturnValue!158 lt!124997 (_1!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))) (_2!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))))

(declare-fun insertStrictlySorted!160 (List!3733 (_ BitVec 64) V!8283) List!3733)

(assert (=> d!60615 (= lt!124997 (insertStrictlySorted!160 (toList!1893 (ite c!41782 call!23402 (ite c!41778 call!23399 call!23400))) (_1!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))) (_2!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))))

(assert (=> d!60615 (= (+!660 (ite c!41782 call!23402 (ite c!41778 call!23399 call!23400)) (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))) lt!124996)))

(declare-fun b!249462 () Bool)

(declare-fun res!122236 () Bool)

(assert (=> b!249462 (=> (not res!122236) (not e!161811))))

(assert (=> b!249462 (= res!122236 (= (getValueByKey!295 (toList!1893 lt!124996) (_1!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))) (Some!300 (_2!2424 (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))))

(declare-fun b!249463 () Bool)

(declare-fun contains!1807 (List!3733 tuple2!4828) Bool)

(assert (=> b!249463 (= e!161811 (contains!1807 (toList!1893 lt!124996) (ite (or c!41782 c!41778) (tuple2!4829 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4447 thiss!1504)) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))

(assert (= (and d!60615 res!122237) b!249462))

(assert (= (and b!249462 res!122236) b!249463))

(declare-fun m!265977 () Bool)

(assert (=> d!60615 m!265977))

(declare-fun m!265979 () Bool)

(assert (=> d!60615 m!265979))

(declare-fun m!265981 () Bool)

(assert (=> d!60615 m!265981))

(declare-fun m!265983 () Bool)

(assert (=> d!60615 m!265983))

(declare-fun m!265985 () Bool)

(assert (=> b!249462 m!265985))

(declare-fun m!265987 () Bool)

(assert (=> b!249463 m!265987))

(assert (=> bm!23396 d!60615))

(declare-fun b!249472 () Bool)

(declare-fun res!122248 () Bool)

(declare-fun e!161814 () Bool)

(assert (=> b!249472 (=> (not res!122248) (not e!161814))))

(assert (=> b!249472 (= res!122248 (and (= (size!6160 (_values!4589 thiss!1504)) (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001)) (= (size!6161 (_keys!6734 thiss!1504)) (size!6160 (_values!4589 thiss!1504))) (bvsge (_size!1894 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1894 thiss!1504) (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!249475 () Bool)

(assert (=> b!249475 (= e!161814 (and (bvsge (extraKeys!4343 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4343 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1894 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!60617 () Bool)

(declare-fun res!122247 () Bool)

(assert (=> d!60617 (=> (not res!122247) (not e!161814))))

(assert (=> d!60617 (= res!122247 (validMask!0 (mask!10767 thiss!1504)))))

(assert (=> d!60617 (= (simpleValid!260 thiss!1504) e!161814)))

(declare-fun b!249474 () Bool)

(declare-fun res!122249 () Bool)

(assert (=> b!249474 (=> (not res!122249) (not e!161814))))

(declare-fun size!6164 (LongMapFixedSize!3690) (_ BitVec 32))

(assert (=> b!249474 (= res!122249 (= (size!6164 thiss!1504) (bvadd (_size!1894 thiss!1504) (bvsdiv (bvadd (extraKeys!4343 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!249473 () Bool)

(declare-fun res!122246 () Bool)

(assert (=> b!249473 (=> (not res!122246) (not e!161814))))

(assert (=> b!249473 (= res!122246 (bvsge (size!6164 thiss!1504) (_size!1894 thiss!1504)))))

(assert (= (and d!60617 res!122247) b!249472))

(assert (= (and b!249472 res!122248) b!249473))

(assert (= (and b!249473 res!122246) b!249474))

(assert (= (and b!249474 res!122249) b!249475))

(assert (=> d!60617 m!265643))

(declare-fun m!265989 () Bool)

(assert (=> b!249474 m!265989))

(assert (=> b!249473 m!265989))

(assert (=> d!60557 d!60617))

(declare-fun d!60619 () Bool)

(assert (=> d!60619 (= (apply!238 lt!124881 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)) (get!2987 (getValueByKey!295 (toList!1893 lt!124881) (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8952 () Bool)

(assert (= bs!8952 d!60619))

(assert (=> bs!8952 m!265765))

(declare-fun m!265991 () Bool)

(assert (=> bs!8952 m!265991))

(assert (=> bs!8952 m!265991))

(declare-fun m!265993 () Bool)

(assert (=> bs!8952 m!265993))

(assert (=> b!249202 d!60619))

(declare-fun d!60621 () Bool)

(declare-fun c!41842 () Bool)

(assert (=> d!60621 (= c!41842 ((_ is ValueCellFull!2895) (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!161817 () V!8283)

(assert (=> d!60621 (= (get!2986 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!161817)))

(declare-fun b!249480 () Bool)

(declare-fun get!2988 (ValueCell!2895 V!8283) V!8283)

(assert (=> b!249480 (= e!161817 (get!2988 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!249481 () Bool)

(declare-fun get!2989 (ValueCell!2895 V!8283) V!8283)

(assert (=> b!249481 (= e!161817 (get!2989 (select (arr!5817 (_values!4589 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!576 (defaultEntry!4606 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60621 c!41842) b!249480))

(assert (= (and d!60621 (not c!41842)) b!249481))

(assert (=> b!249480 m!265785))

(assert (=> b!249480 m!265781))

(declare-fun m!265995 () Bool)

(assert (=> b!249480 m!265995))

(assert (=> b!249481 m!265785))

(assert (=> b!249481 m!265781))

(declare-fun m!265997 () Bool)

(assert (=> b!249481 m!265997))

(assert (=> b!249202 d!60621))

(declare-fun d!60623 () Bool)

(declare-fun isEmpty!530 (Option!301) Bool)

(assert (=> d!60623 (= (isDefined!237 (getValueByKey!295 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932)) (not (isEmpty!530 (getValueByKey!295 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))))

(declare-fun bs!8953 () Bool)

(assert (= bs!8953 d!60623))

(assert (=> bs!8953 m!265739))

(declare-fun m!265999 () Bool)

(assert (=> bs!8953 m!265999))

(assert (=> b!249151 d!60623))

(declare-fun b!249492 () Bool)

(declare-fun e!161823 () Option!301)

(assert (=> b!249492 (= e!161823 (getValueByKey!295 (t!8770 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))) key!932))))

(declare-fun b!249493 () Bool)

(assert (=> b!249493 (= e!161823 None!299)))

(declare-fun b!249490 () Bool)

(declare-fun e!161822 () Option!301)

(assert (=> b!249490 (= e!161822 (Some!300 (_2!2424 (h!4387 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))))))

(declare-fun b!249491 () Bool)

(assert (=> b!249491 (= e!161822 e!161823)))

(declare-fun c!41848 () Bool)

(assert (=> b!249491 (= c!41848 (and ((_ is Cons!3729) (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))) (not (= (_1!2424 (h!4387 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))))) key!932))))))

(declare-fun d!60625 () Bool)

(declare-fun c!41847 () Bool)

(assert (=> d!60625 (= c!41847 (and ((_ is Cons!3729) (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))) (= (_1!2424 (h!4387 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))))) key!932)))))

(assert (=> d!60625 (= (getValueByKey!295 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932) e!161822)))

(assert (= (and d!60625 c!41847) b!249490))

(assert (= (and d!60625 (not c!41847)) b!249491))

(assert (= (and b!249491 c!41848) b!249492))

(assert (= (and b!249491 (not c!41848)) b!249493))

(declare-fun m!266001 () Bool)

(assert (=> b!249492 m!266001))

(assert (=> b!249151 d!60625))

(declare-fun d!60627 () Bool)

(declare-fun e!161824 () Bool)

(assert (=> d!60627 e!161824))

(declare-fun res!122251 () Bool)

(assert (=> d!60627 (=> (not res!122251) (not e!161824))))

(declare-fun lt!125000 () ListLongMap!3755)

(assert (=> d!60627 (= res!122251 (contains!1804 lt!125000 (_1!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))))))

(declare-fun lt!125001 () List!3733)

(assert (=> d!60627 (= lt!125000 (ListLongMap!3756 lt!125001))))

(declare-fun lt!125002 () Unit!7711)

(declare-fun lt!125003 () Unit!7711)

(assert (=> d!60627 (= lt!125002 lt!125003)))

(assert (=> d!60627 (= (getValueByKey!295 lt!125001 (_1!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))))))

(assert (=> d!60627 (= lt!125003 (lemmaContainsTupThenGetReturnValue!158 lt!125001 (_1!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))))))

(assert (=> d!60627 (= lt!125001 (insertStrictlySorted!160 (toList!1893 lt!124892) (_1!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))))))

(assert (=> d!60627 (= (+!660 lt!124892 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))) lt!125000)))

(declare-fun b!249494 () Bool)

(declare-fun res!122250 () Bool)

(assert (=> b!249494 (=> (not res!122250) (not e!161824))))

(assert (=> b!249494 (= res!122250 (= (getValueByKey!295 (toList!1893 lt!125000) (_1!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))))))))

(declare-fun b!249495 () Bool)

(assert (=> b!249495 (= e!161824 (contains!1807 (toList!1893 lt!125000) (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))))))

(assert (= (and d!60627 res!122251) b!249494))

(assert (= (and b!249494 res!122250) b!249495))

(declare-fun m!266003 () Bool)

(assert (=> d!60627 m!266003))

(declare-fun m!266005 () Bool)

(assert (=> d!60627 m!266005))

(declare-fun m!266007 () Bool)

(assert (=> d!60627 m!266007))

(declare-fun m!266009 () Bool)

(assert (=> d!60627 m!266009))

(declare-fun m!266011 () Bool)

(assert (=> b!249494 m!266011))

(declare-fun m!266013 () Bool)

(assert (=> b!249495 m!266013))

(assert (=> b!249214 d!60627))

(declare-fun d!60629 () Bool)

(assert (=> d!60629 (= (apply!238 (+!660 lt!124888 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))) lt!124878) (apply!238 lt!124888 lt!124878))))

(declare-fun lt!125006 () Unit!7711)

(declare-fun choose!1184 (ListLongMap!3755 (_ BitVec 64) V!8283 (_ BitVec 64)) Unit!7711)

(assert (=> d!60629 (= lt!125006 (choose!1184 lt!124888 lt!124880 (zeroValue!4447 thiss!1504) lt!124878))))

(declare-fun e!161827 () Bool)

(assert (=> d!60629 e!161827))

(declare-fun res!122254 () Bool)

(assert (=> d!60629 (=> (not res!122254) (not e!161827))))

(assert (=> d!60629 (= res!122254 (contains!1804 lt!124888 lt!124878))))

(assert (=> d!60629 (= (addApplyDifferent!214 lt!124888 lt!124880 (zeroValue!4447 thiss!1504) lt!124878) lt!125006)))

(declare-fun b!249499 () Bool)

(assert (=> b!249499 (= e!161827 (not (= lt!124878 lt!124880)))))

(assert (= (and d!60629 res!122254) b!249499))

(declare-fun m!266015 () Bool)

(assert (=> d!60629 m!266015))

(declare-fun m!266017 () Bool)

(assert (=> d!60629 m!266017))

(assert (=> d!60629 m!265743))

(assert (=> d!60629 m!265757))

(assert (=> d!60629 m!265757))

(assert (=> d!60629 m!265759))

(assert (=> b!249214 d!60629))

(declare-fun d!60631 () Bool)

(declare-fun e!161829 () Bool)

(assert (=> d!60631 e!161829))

(declare-fun res!122255 () Bool)

(assert (=> d!60631 (=> res!122255 e!161829)))

(declare-fun lt!125010 () Bool)

(assert (=> d!60631 (= res!122255 (not lt!125010))))

(declare-fun lt!125009 () Bool)

(assert (=> d!60631 (= lt!125010 lt!125009)))

(declare-fun lt!125007 () Unit!7711)

(declare-fun e!161828 () Unit!7711)

(assert (=> d!60631 (= lt!125007 e!161828)))

(declare-fun c!41849 () Bool)

(assert (=> d!60631 (= c!41849 lt!125009)))

(assert (=> d!60631 (= lt!125009 (containsKey!287 (toList!1893 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))) lt!124879))))

(assert (=> d!60631 (= (contains!1804 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))) lt!124879) lt!125010)))

(declare-fun b!249500 () Bool)

(declare-fun lt!125008 () Unit!7711)

(assert (=> b!249500 (= e!161828 lt!125008)))

(assert (=> b!249500 (= lt!125008 (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!1893 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))) lt!124879))))

(assert (=> b!249500 (isDefined!237 (getValueByKey!295 (toList!1893 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))) lt!124879))))

(declare-fun b!249501 () Bool)

(declare-fun Unit!7724 () Unit!7711)

(assert (=> b!249501 (= e!161828 Unit!7724)))

(declare-fun b!249502 () Bool)

(assert (=> b!249502 (= e!161829 (isDefined!237 (getValueByKey!295 (toList!1893 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))) lt!124879)))))

(assert (= (and d!60631 c!41849) b!249500))

(assert (= (and d!60631 (not c!41849)) b!249501))

(assert (= (and d!60631 (not res!122255)) b!249502))

(declare-fun m!266019 () Bool)

(assert (=> d!60631 m!266019))

(declare-fun m!266021 () Bool)

(assert (=> b!249500 m!266021))

(declare-fun m!266023 () Bool)

(assert (=> b!249500 m!266023))

(assert (=> b!249500 m!266023))

(declare-fun m!266025 () Bool)

(assert (=> b!249500 m!266025))

(assert (=> b!249502 m!266023))

(assert (=> b!249502 m!266023))

(assert (=> b!249502 m!266025))

(assert (=> b!249214 d!60631))

(declare-fun d!60633 () Bool)

(declare-fun e!161830 () Bool)

(assert (=> d!60633 e!161830))

(declare-fun res!122257 () Bool)

(assert (=> d!60633 (=> (not res!122257) (not e!161830))))

(declare-fun lt!125011 () ListLongMap!3755)

(assert (=> d!60633 (= res!122257 (contains!1804 lt!125011 (_1!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))))))

(declare-fun lt!125012 () List!3733)

(assert (=> d!60633 (= lt!125011 (ListLongMap!3756 lt!125012))))

(declare-fun lt!125013 () Unit!7711)

(declare-fun lt!125014 () Unit!7711)

(assert (=> d!60633 (= lt!125013 lt!125014)))

(assert (=> d!60633 (= (getValueByKey!295 lt!125012 (_1!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))))))

(assert (=> d!60633 (= lt!125014 (lemmaContainsTupThenGetReturnValue!158 lt!125012 (_1!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))))))

(assert (=> d!60633 (= lt!125012 (insertStrictlySorted!160 (toList!1893 lt!124889) (_1!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))))))

(assert (=> d!60633 (= (+!660 lt!124889 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))) lt!125011)))

(declare-fun b!249503 () Bool)

(declare-fun res!122256 () Bool)

(assert (=> b!249503 (=> (not res!122256) (not e!161830))))

(assert (=> b!249503 (= res!122256 (= (getValueByKey!295 (toList!1893 lt!125011) (_1!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))))))))

(declare-fun b!249504 () Bool)

(assert (=> b!249504 (= e!161830 (contains!1807 (toList!1893 lt!125011) (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))))))

(assert (= (and d!60633 res!122257) b!249503))

(assert (= (and b!249503 res!122256) b!249504))

(declare-fun m!266027 () Bool)

(assert (=> d!60633 m!266027))

(declare-fun m!266029 () Bool)

(assert (=> d!60633 m!266029))

(declare-fun m!266031 () Bool)

(assert (=> d!60633 m!266031))

(declare-fun m!266033 () Bool)

(assert (=> d!60633 m!266033))

(declare-fun m!266035 () Bool)

(assert (=> b!249503 m!266035))

(declare-fun m!266037 () Bool)

(assert (=> b!249504 m!266037))

(assert (=> b!249214 d!60633))

(declare-fun d!60635 () Bool)

(assert (=> d!60635 (= (apply!238 (+!660 lt!124892 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))) lt!124890) (get!2987 (getValueByKey!295 (toList!1893 (+!660 lt!124892 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504)))) lt!124890)))))

(declare-fun bs!8954 () Bool)

(assert (= bs!8954 d!60635))

(declare-fun m!266039 () Bool)

(assert (=> bs!8954 m!266039))

(assert (=> bs!8954 m!266039))

(declare-fun m!266041 () Bool)

(assert (=> bs!8954 m!266041))

(assert (=> b!249214 d!60635))

(declare-fun d!60637 () Bool)

(assert (=> d!60637 (= (apply!238 lt!124888 lt!124878) (get!2987 (getValueByKey!295 (toList!1893 lt!124888) lt!124878)))))

(declare-fun bs!8955 () Bool)

(assert (= bs!8955 d!60637))

(declare-fun m!266043 () Bool)

(assert (=> bs!8955 m!266043))

(assert (=> bs!8955 m!266043))

(declare-fun m!266045 () Bool)

(assert (=> bs!8955 m!266045))

(assert (=> b!249214 d!60637))

(declare-fun d!60639 () Bool)

(declare-fun e!161831 () Bool)

(assert (=> d!60639 e!161831))

(declare-fun res!122259 () Bool)

(assert (=> d!60639 (=> (not res!122259) (not e!161831))))

(declare-fun lt!125015 () ListLongMap!3755)

(assert (=> d!60639 (= res!122259 (contains!1804 lt!125015 (_1!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))))))

(declare-fun lt!125016 () List!3733)

(assert (=> d!60639 (= lt!125015 (ListLongMap!3756 lt!125016))))

(declare-fun lt!125017 () Unit!7711)

(declare-fun lt!125018 () Unit!7711)

(assert (=> d!60639 (= lt!125017 lt!125018)))

(assert (=> d!60639 (= (getValueByKey!295 lt!125016 (_1!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))))))

(assert (=> d!60639 (= lt!125018 (lemmaContainsTupThenGetReturnValue!158 lt!125016 (_1!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))))))

(assert (=> d!60639 (= lt!125016 (insertStrictlySorted!160 (toList!1893 lt!124894) (_1!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))))))

(assert (=> d!60639 (= (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))) lt!125015)))

(declare-fun b!249505 () Bool)

(declare-fun res!122258 () Bool)

(assert (=> b!249505 (=> (not res!122258) (not e!161831))))

(assert (=> b!249505 (= res!122258 (= (getValueByKey!295 (toList!1893 lt!125015) (_1!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))))))))

(declare-fun b!249506 () Bool)

(assert (=> b!249506 (= e!161831 (contains!1807 (toList!1893 lt!125015) (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))))))

(assert (= (and d!60639 res!122259) b!249505))

(assert (= (and b!249505 res!122258) b!249506))

(declare-fun m!266047 () Bool)

(assert (=> d!60639 m!266047))

(declare-fun m!266049 () Bool)

(assert (=> d!60639 m!266049))

(declare-fun m!266051 () Bool)

(assert (=> d!60639 m!266051))

(declare-fun m!266053 () Bool)

(assert (=> d!60639 m!266053))

(declare-fun m!266055 () Bool)

(assert (=> b!249505 m!266055))

(declare-fun m!266057 () Bool)

(assert (=> b!249506 m!266057))

(assert (=> b!249214 d!60639))

(declare-fun d!60641 () Bool)

(assert (=> d!60641 (contains!1804 (+!660 lt!124894 (tuple2!4829 lt!124882 (zeroValue!4447 thiss!1504))) lt!124879)))

(declare-fun lt!125021 () Unit!7711)

(declare-fun choose!1185 (ListLongMap!3755 (_ BitVec 64) V!8283 (_ BitVec 64)) Unit!7711)

(assert (=> d!60641 (= lt!125021 (choose!1185 lt!124894 lt!124882 (zeroValue!4447 thiss!1504) lt!124879))))

(assert (=> d!60641 (contains!1804 lt!124894 lt!124879)))

(assert (=> d!60641 (= (addStillContains!214 lt!124894 lt!124882 (zeroValue!4447 thiss!1504) lt!124879) lt!125021)))

(declare-fun bs!8956 () Bool)

(assert (= bs!8956 d!60641))

(assert (=> bs!8956 m!265747))

(assert (=> bs!8956 m!265747))

(assert (=> bs!8956 m!265749))

(declare-fun m!266059 () Bool)

(assert (=> bs!8956 m!266059))

(declare-fun m!266061 () Bool)

(assert (=> bs!8956 m!266061))

(assert (=> b!249214 d!60641))

(declare-fun d!60643 () Bool)

(assert (=> d!60643 (= (apply!238 lt!124889 lt!124886) (get!2987 (getValueByKey!295 (toList!1893 lt!124889) lt!124886)))))

(declare-fun bs!8957 () Bool)

(assert (= bs!8957 d!60643))

(declare-fun m!266063 () Bool)

(assert (=> bs!8957 m!266063))

(assert (=> bs!8957 m!266063))

(declare-fun m!266065 () Bool)

(assert (=> bs!8957 m!266065))

(assert (=> b!249214 d!60643))

(assert (=> b!249214 d!60609))

(declare-fun d!60645 () Bool)

(assert (=> d!60645 (= (apply!238 (+!660 lt!124889 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))) lt!124886) (get!2987 (getValueByKey!295 (toList!1893 (+!660 lt!124889 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504)))) lt!124886)))))

(declare-fun bs!8958 () Bool)

(assert (= bs!8958 d!60645))

(declare-fun m!266067 () Bool)

(assert (=> bs!8958 m!266067))

(assert (=> bs!8958 m!266067))

(declare-fun m!266069 () Bool)

(assert (=> bs!8958 m!266069))

(assert (=> b!249214 d!60645))

(declare-fun d!60647 () Bool)

(assert (=> d!60647 (= (apply!238 (+!660 lt!124889 (tuple2!4829 lt!124896 (minValue!4447 thiss!1504))) lt!124886) (apply!238 lt!124889 lt!124886))))

(declare-fun lt!125022 () Unit!7711)

(assert (=> d!60647 (= lt!125022 (choose!1184 lt!124889 lt!124896 (minValue!4447 thiss!1504) lt!124886))))

(declare-fun e!161832 () Bool)

(assert (=> d!60647 e!161832))

(declare-fun res!122260 () Bool)

(assert (=> d!60647 (=> (not res!122260) (not e!161832))))

(assert (=> d!60647 (= res!122260 (contains!1804 lt!124889 lt!124886))))

(assert (=> d!60647 (= (addApplyDifferent!214 lt!124889 lt!124896 (minValue!4447 thiss!1504) lt!124886) lt!125022)))

(declare-fun b!249508 () Bool)

(assert (=> b!249508 (= e!161832 (not (= lt!124886 lt!124896)))))

(assert (= (and d!60647 res!122260) b!249508))

(declare-fun m!266071 () Bool)

(assert (=> d!60647 m!266071))

(declare-fun m!266073 () Bool)

(assert (=> d!60647 m!266073))

(assert (=> d!60647 m!265769))

(assert (=> d!60647 m!265751))

(assert (=> d!60647 m!265751))

(assert (=> d!60647 m!265753))

(assert (=> b!249214 d!60647))

(declare-fun d!60649 () Bool)

(assert (=> d!60649 (= (apply!238 lt!124892 lt!124890) (get!2987 (getValueByKey!295 (toList!1893 lt!124892) lt!124890)))))

(declare-fun bs!8959 () Bool)

(assert (= bs!8959 d!60649))

(declare-fun m!266075 () Bool)

(assert (=> bs!8959 m!266075))

(assert (=> bs!8959 m!266075))

(declare-fun m!266077 () Bool)

(assert (=> bs!8959 m!266077))

(assert (=> b!249214 d!60649))

(declare-fun d!60651 () Bool)

(assert (=> d!60651 (= (apply!238 (+!660 lt!124888 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))) lt!124878) (get!2987 (getValueByKey!295 (toList!1893 (+!660 lt!124888 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))) lt!124878)))))

(declare-fun bs!8960 () Bool)

(assert (= bs!8960 d!60651))

(declare-fun m!266079 () Bool)

(assert (=> bs!8960 m!266079))

(assert (=> bs!8960 m!266079))

(declare-fun m!266081 () Bool)

(assert (=> bs!8960 m!266081))

(assert (=> b!249214 d!60651))

(declare-fun d!60653 () Bool)

(declare-fun e!161833 () Bool)

(assert (=> d!60653 e!161833))

(declare-fun res!122262 () Bool)

(assert (=> d!60653 (=> (not res!122262) (not e!161833))))

(declare-fun lt!125023 () ListLongMap!3755)

(assert (=> d!60653 (= res!122262 (contains!1804 lt!125023 (_1!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))))))

(declare-fun lt!125024 () List!3733)

(assert (=> d!60653 (= lt!125023 (ListLongMap!3756 lt!125024))))

(declare-fun lt!125025 () Unit!7711)

(declare-fun lt!125026 () Unit!7711)

(assert (=> d!60653 (= lt!125025 lt!125026)))

(assert (=> d!60653 (= (getValueByKey!295 lt!125024 (_1!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))))))

(assert (=> d!60653 (= lt!125026 (lemmaContainsTupThenGetReturnValue!158 lt!125024 (_1!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))))))

(assert (=> d!60653 (= lt!125024 (insertStrictlySorted!160 (toList!1893 lt!124888) (_1!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))))))

(assert (=> d!60653 (= (+!660 lt!124888 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))) lt!125023)))

(declare-fun b!249509 () Bool)

(declare-fun res!122261 () Bool)

(assert (=> b!249509 (=> (not res!122261) (not e!161833))))

(assert (=> b!249509 (= res!122261 (= (getValueByKey!295 (toList!1893 lt!125023) (_1!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))))))))

(declare-fun b!249510 () Bool)

(assert (=> b!249510 (= e!161833 (contains!1807 (toList!1893 lt!125023) (tuple2!4829 lt!124880 (zeroValue!4447 thiss!1504))))))

(assert (= (and d!60653 res!122262) b!249509))

(assert (= (and b!249509 res!122261) b!249510))

(declare-fun m!266083 () Bool)

(assert (=> d!60653 m!266083))

(declare-fun m!266085 () Bool)

(assert (=> d!60653 m!266085))

(declare-fun m!266087 () Bool)

(assert (=> d!60653 m!266087))

(declare-fun m!266089 () Bool)

(assert (=> d!60653 m!266089))

(declare-fun m!266091 () Bool)

(assert (=> b!249509 m!266091))

(declare-fun m!266093 () Bool)

(assert (=> b!249510 m!266093))

(assert (=> b!249214 d!60653))

(declare-fun d!60655 () Bool)

(assert (=> d!60655 (= (apply!238 (+!660 lt!124892 (tuple2!4829 lt!124883 (minValue!4447 thiss!1504))) lt!124890) (apply!238 lt!124892 lt!124890))))

(declare-fun lt!125027 () Unit!7711)

(assert (=> d!60655 (= lt!125027 (choose!1184 lt!124892 lt!124883 (minValue!4447 thiss!1504) lt!124890))))

(declare-fun e!161834 () Bool)

(assert (=> d!60655 e!161834))

(declare-fun res!122263 () Bool)

(assert (=> d!60655 (=> (not res!122263) (not e!161834))))

(assert (=> d!60655 (= res!122263 (contains!1804 lt!124892 lt!124890))))

(assert (=> d!60655 (= (addApplyDifferent!214 lt!124892 lt!124883 (minValue!4447 thiss!1504) lt!124890) lt!125027)))

(declare-fun b!249511 () Bool)

(assert (=> b!249511 (= e!161834 (not (= lt!124890 lt!124883)))))

(assert (= (and d!60655 res!122263) b!249511))

(declare-fun m!266095 () Bool)

(assert (=> d!60655 m!266095))

(declare-fun m!266097 () Bool)

(assert (=> d!60655 m!266097))

(assert (=> d!60655 m!265755))

(assert (=> d!60655 m!265773))

(assert (=> d!60655 m!265773))

(assert (=> d!60655 m!265775))

(assert (=> b!249214 d!60655))

(declare-fun d!60657 () Bool)

(assert (=> d!60657 (isDefined!237 (getValueByKey!295 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))

(declare-fun lt!125030 () Unit!7711)

(declare-fun choose!1186 (List!3733 (_ BitVec 64)) Unit!7711)

(assert (=> d!60657 (= lt!125030 (choose!1186 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))

(declare-fun e!161837 () Bool)

(assert (=> d!60657 e!161837))

(declare-fun res!122266 () Bool)

(assert (=> d!60657 (=> (not res!122266) (not e!161837))))

(declare-fun isStrictlySorted!364 (List!3733) Bool)

(assert (=> d!60657 (= res!122266 (isStrictlySorted!364 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504)))))))

(assert (=> d!60657 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932) lt!125030)))

(declare-fun b!249514 () Bool)

(assert (=> b!249514 (= e!161837 (containsKey!287 (toList!1893 (getCurrentListMap!1416 (_keys!6734 thiss!1504) (_values!4589 thiss!1504) (mask!10767 thiss!1504) (extraKeys!4343 thiss!1504) (zeroValue!4447 thiss!1504) (minValue!4447 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4606 thiss!1504))) key!932))))

(assert (= (and d!60657 res!122266) b!249514))

(assert (=> d!60657 m!265739))

(assert (=> d!60657 m!265739))

(assert (=> d!60657 m!265741))

(declare-fun m!266099 () Bool)

(assert (=> d!60657 m!266099))

(declare-fun m!266101 () Bool)

(assert (=> d!60657 m!266101))

(assert (=> b!249514 m!265735))

(assert (=> b!249149 d!60657))

(assert (=> b!249149 d!60623))

(assert (=> b!249149 d!60625))

(declare-fun b!249515 () Bool)

(declare-fun e!161839 () Bool)

(declare-fun call!23434 () Bool)

(assert (=> b!249515 (= e!161839 call!23434)))

(declare-fun d!60659 () Bool)

(declare-fun res!122268 () Bool)

(declare-fun e!161838 () Bool)

(assert (=> d!60659 (=> res!122268 e!161838)))

(assert (=> d!60659 (= res!122268 (bvsge #b00000000000000000000000000000000 (size!6161 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))))))))

(assert (=> d!60659 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (mask!10767 thiss!1504)) e!161838)))

(declare-fun b!249516 () Bool)

(declare-fun e!161840 () Bool)

(assert (=> b!249516 (= e!161840 e!161839)))

(declare-fun lt!125031 () (_ BitVec 64))

(assert (=> b!249516 (= lt!125031 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!125033 () Unit!7711)

(assert (=> b!249516 (= lt!125033 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) lt!125031 #b00000000000000000000000000000000))))

(assert (=> b!249516 (arrayContainsKey!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) lt!125031 #b00000000000000000000000000000000)))

(declare-fun lt!125032 () Unit!7711)

(assert (=> b!249516 (= lt!125032 lt!125033)))

(declare-fun res!122267 () Bool)

(assert (=> b!249516 (= res!122267 (= (seekEntryOrOpen!0 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000) (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (mask!10767 thiss!1504)) (Found!1126 #b00000000000000000000000000000000)))))

(assert (=> b!249516 (=> (not res!122267) (not e!161839))))

(declare-fun bm!23431 () Bool)

(assert (=> bm!23431 (= call!23434 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (mask!10767 thiss!1504)))))

(declare-fun b!249517 () Bool)

(assert (=> b!249517 (= e!161840 call!23434)))

(declare-fun b!249518 () Bool)

(assert (=> b!249518 (= e!161838 e!161840)))

(declare-fun c!41850 () Bool)

(assert (=> b!249518 (= c!41850 (validKeyInArray!0 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!60659 (not res!122268)) b!249518))

(assert (= (and b!249518 c!41850) b!249516))

(assert (= (and b!249518 (not c!41850)) b!249517))

(assert (= (and b!249516 res!122267) b!249515))

(assert (= (or b!249515 b!249517) bm!23431))

(assert (=> b!249516 m!265905))

(declare-fun m!266103 () Bool)

(assert (=> b!249516 m!266103))

(declare-fun m!266105 () Bool)

(assert (=> b!249516 m!266105))

(assert (=> b!249516 m!265905))

(declare-fun m!266107 () Bool)

(assert (=> b!249516 m!266107))

(declare-fun m!266109 () Bool)

(assert (=> bm!23431 m!266109))

(assert (=> b!249518 m!265905))

(assert (=> b!249518 m!265905))

(assert (=> b!249518 m!265909))

(assert (=> b!249307 d!60659))

(assert (=> b!249284 d!60579))

(declare-fun d!60661 () Bool)

(declare-fun e!161842 () Bool)

(assert (=> d!60661 e!161842))

(declare-fun res!122269 () Bool)

(assert (=> d!60661 (=> res!122269 e!161842)))

(declare-fun lt!125037 () Bool)

(assert (=> d!60661 (= res!122269 (not lt!125037))))

(declare-fun lt!125036 () Bool)

(assert (=> d!60661 (= lt!125037 lt!125036)))

(declare-fun lt!125034 () Unit!7711)

(declare-fun e!161841 () Unit!7711)

(assert (=> d!60661 (= lt!125034 e!161841)))

(declare-fun c!41851 () Bool)

(assert (=> d!60661 (= c!41851 lt!125036)))

(assert (=> d!60661 (= lt!125036 (containsKey!287 (toList!1893 lt!124881) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60661 (= (contains!1804 lt!124881 #b1000000000000000000000000000000000000000000000000000000000000000) lt!125037)))

(declare-fun b!249519 () Bool)

(declare-fun lt!125035 () Unit!7711)

(assert (=> b!249519 (= e!161841 lt!125035)))

(assert (=> b!249519 (= lt!125035 (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!1893 lt!124881) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249519 (isDefined!237 (getValueByKey!295 (toList!1893 lt!124881) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249520 () Bool)

(declare-fun Unit!7725 () Unit!7711)

(assert (=> b!249520 (= e!161841 Unit!7725)))

(declare-fun b!249521 () Bool)

(assert (=> b!249521 (= e!161842 (isDefined!237 (getValueByKey!295 (toList!1893 lt!124881) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60661 c!41851) b!249519))

(assert (= (and d!60661 (not c!41851)) b!249520))

(assert (= (and d!60661 (not res!122269)) b!249521))

(declare-fun m!266111 () Bool)

(assert (=> d!60661 m!266111))

(declare-fun m!266113 () Bool)

(assert (=> b!249519 m!266113))

(assert (=> b!249519 m!265943))

(assert (=> b!249519 m!265943))

(declare-fun m!266115 () Bool)

(assert (=> b!249519 m!266115))

(assert (=> b!249521 m!265943))

(assert (=> b!249521 m!265943))

(assert (=> b!249521 m!266115))

(assert (=> bm!23401 d!60661))

(declare-fun d!60663 () Bool)

(declare-fun e!161844 () Bool)

(assert (=> d!60663 e!161844))

(declare-fun res!122270 () Bool)

(assert (=> d!60663 (=> res!122270 e!161844)))

(declare-fun lt!125041 () Bool)

(assert (=> d!60663 (= res!122270 (not lt!125041))))

(declare-fun lt!125040 () Bool)

(assert (=> d!60663 (= lt!125041 lt!125040)))

(declare-fun lt!125038 () Unit!7711)

(declare-fun e!161843 () Unit!7711)

(assert (=> d!60663 (= lt!125038 e!161843)))

(declare-fun c!41852 () Bool)

(assert (=> d!60663 (= c!41852 lt!125040)))

(assert (=> d!60663 (= lt!125040 (containsKey!287 (toList!1893 lt!124881) (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60663 (= (contains!1804 lt!124881 (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)) lt!125041)))

(declare-fun b!249522 () Bool)

(declare-fun lt!125039 () Unit!7711)

(assert (=> b!249522 (= e!161843 lt!125039)))

(assert (=> b!249522 (= lt!125039 (lemmaContainsKeyImpliesGetValueByKeyDefined!236 (toList!1893 lt!124881) (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!249522 (isDefined!237 (getValueByKey!295 (toList!1893 lt!124881) (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!249523 () Bool)

(declare-fun Unit!7726 () Unit!7711)

(assert (=> b!249523 (= e!161843 Unit!7726)))

(declare-fun b!249524 () Bool)

(assert (=> b!249524 (= e!161844 (isDefined!237 (getValueByKey!295 (toList!1893 lt!124881) (select (arr!5818 (_keys!6734 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!60663 c!41852) b!249522))

(assert (= (and d!60663 (not c!41852)) b!249523))

(assert (= (and d!60663 (not res!122270)) b!249524))

(assert (=> d!60663 m!265765))

(declare-fun m!266117 () Bool)

(assert (=> d!60663 m!266117))

(assert (=> b!249522 m!265765))

(declare-fun m!266119 () Bool)

(assert (=> b!249522 m!266119))

(assert (=> b!249522 m!265765))

(assert (=> b!249522 m!265991))

(assert (=> b!249522 m!265991))

(declare-fun m!266121 () Bool)

(assert (=> b!249522 m!266121))

(assert (=> b!249524 m!265765))

(assert (=> b!249524 m!265991))

(assert (=> b!249524 m!265991))

(assert (=> b!249524 m!266121))

(assert (=> b!249198 d!60663))

(declare-fun b!249525 () Bool)

(declare-fun e!161846 () Bool)

(declare-fun call!23435 () Bool)

(assert (=> b!249525 (= e!161846 call!23435)))

(declare-fun d!60665 () Bool)

(declare-fun res!122272 () Bool)

(declare-fun e!161845 () Bool)

(assert (=> d!60665 (=> res!122272 e!161845)))

(assert (=> d!60665 (= res!122272 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 lt!124784)))))

(assert (=> d!60665 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!124784 (mask!10767 thiss!1504)) e!161845)))

(declare-fun b!249526 () Bool)

(declare-fun e!161847 () Bool)

(assert (=> b!249526 (= e!161847 e!161846)))

(declare-fun lt!125042 () (_ BitVec 64))

(assert (=> b!249526 (= lt!125042 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!125044 () Unit!7711)

(assert (=> b!249526 (= lt!125044 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!124784 lt!125042 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!249526 (arrayContainsKey!0 lt!124784 lt!125042 #b00000000000000000000000000000000)))

(declare-fun lt!125043 () Unit!7711)

(assert (=> b!249526 (= lt!125043 lt!125044)))

(declare-fun res!122271 () Bool)

(assert (=> b!249526 (= res!122271 (= (seekEntryOrOpen!0 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!124784 (mask!10767 thiss!1504)) (Found!1126 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!249526 (=> (not res!122271) (not e!161846))))

(declare-fun bm!23432 () Bool)

(assert (=> bm!23432 (= call!23435 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!124784 (mask!10767 thiss!1504)))))

(declare-fun b!249527 () Bool)

(assert (=> b!249527 (= e!161847 call!23435)))

(declare-fun b!249528 () Bool)

(assert (=> b!249528 (= e!161845 e!161847)))

(declare-fun c!41853 () Bool)

(assert (=> b!249528 (= c!41853 (validKeyInArray!0 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!60665 (not res!122272)) b!249528))

(assert (= (and b!249528 c!41853) b!249526))

(assert (= (and b!249528 (not c!41853)) b!249527))

(assert (= (and b!249526 res!122271) b!249525))

(assert (= (or b!249525 b!249527) bm!23432))

(declare-fun m!266123 () Bool)

(assert (=> b!249526 m!266123))

(declare-fun m!266125 () Bool)

(assert (=> b!249526 m!266125))

(declare-fun m!266127 () Bool)

(assert (=> b!249526 m!266127))

(assert (=> b!249526 m!266123))

(declare-fun m!266129 () Bool)

(assert (=> b!249526 m!266129))

(declare-fun m!266131 () Bool)

(assert (=> bm!23432 m!266131))

(assert (=> b!249528 m!266123))

(assert (=> b!249528 m!266123))

(declare-fun m!266133 () Bool)

(assert (=> b!249528 m!266133))

(assert (=> bm!23416 d!60665))

(declare-fun b!249529 () Bool)

(declare-fun e!161848 () (_ BitVec 32))

(declare-fun call!23436 () (_ BitVec 32))

(assert (=> b!249529 (= e!161848 call!23436)))

(declare-fun b!249530 () Bool)

(declare-fun e!161849 () (_ BitVec 32))

(assert (=> b!249530 (= e!161849 #b00000000000000000000000000000000)))

(declare-fun bm!23433 () Bool)

(assert (=> bm!23433 (= call!23436 (arrayCountValidKeys!0 lt!124784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun d!60667 () Bool)

(declare-fun lt!125045 () (_ BitVec 32))

(assert (=> d!60667 (and (bvsge lt!125045 #b00000000000000000000000000000000) (bvsle lt!125045 (bvsub (size!6161 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!60667 (= lt!125045 e!161849)))

(declare-fun c!41855 () Bool)

(assert (=> d!60667 (= c!41855 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60667 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6161 (_keys!6734 thiss!1504)) (size!6161 lt!124784)))))

(assert (=> d!60667 (= (arrayCountValidKeys!0 lt!124784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))) lt!125045)))

(declare-fun b!249531 () Bool)

(assert (=> b!249531 (= e!161849 e!161848)))

(declare-fun c!41854 () Bool)

(assert (=> b!249531 (= c!41854 (validKeyInArray!0 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!249532 () Bool)

(assert (=> b!249532 (= e!161848 (bvadd #b00000000000000000000000000000001 call!23436))))

(assert (= (and d!60667 c!41855) b!249530))

(assert (= (and d!60667 (not c!41855)) b!249531))

(assert (= (and b!249531 c!41854) b!249532))

(assert (= (and b!249531 (not c!41854)) b!249529))

(assert (= (or b!249532 b!249529) bm!23433))

(declare-fun m!266135 () Bool)

(assert (=> bm!23433 m!266135))

(assert (=> b!249531 m!266123))

(assert (=> b!249531 m!266123))

(assert (=> b!249531 m!266133))

(assert (=> bm!23417 d!60667))

(declare-fun b!249533 () Bool)

(declare-fun e!161850 () (_ BitVec 32))

(declare-fun call!23437 () (_ BitVec 32))

(assert (=> b!249533 (= e!161850 call!23437)))

(declare-fun b!249534 () Bool)

(declare-fun e!161851 () (_ BitVec 32))

(assert (=> b!249534 (= e!161851 #b00000000000000000000000000000000)))

(declare-fun bm!23434 () Bool)

(assert (=> bm!23434 (= call!23437 (arrayCountValidKeys!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun lt!125046 () (_ BitVec 32))

(declare-fun d!60669 () Bool)

(assert (=> d!60669 (and (bvsge lt!125046 #b00000000000000000000000000000000) (bvsle lt!125046 (bvsub (size!6161 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!60669 (= lt!125046 e!161851)))

(declare-fun c!41857 () Bool)

(assert (=> d!60669 (= c!41857 (bvsge #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))))))

(assert (=> d!60669 (and (bvsle #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6161 (_keys!6734 thiss!1504)) (size!6161 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))))))))

(assert (=> d!60669 (= (arrayCountValidKeys!0 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504))) #b00000000000000000000000000000000 (size!6161 (_keys!6734 thiss!1504))) lt!125046)))

(declare-fun b!249535 () Bool)

(assert (=> b!249535 (= e!161851 e!161850)))

(declare-fun c!41856 () Bool)

(assert (=> b!249535 (= c!41856 (validKeyInArray!0 (select (arr!5818 (array!12269 (store (arr!5818 (_keys!6734 thiss!1504)) index!297 key!932) (size!6161 (_keys!6734 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!249536 () Bool)

(assert (=> b!249536 (= e!161850 (bvadd #b00000000000000000000000000000001 call!23437))))

(assert (= (and d!60669 c!41857) b!249534))

(assert (= (and d!60669 (not c!41857)) b!249535))

(assert (= (and b!249535 c!41856) b!249536))

(assert (= (and b!249535 (not c!41856)) b!249533))

(assert (= (or b!249536 b!249533) bm!23434))

(declare-fun m!266137 () Bool)

(assert (=> bm!23434 m!266137))

(assert (=> b!249535 m!265905))

(assert (=> b!249535 m!265905))

(assert (=> b!249535 m!265909))

(assert (=> b!249273 d!60669))

(assert (=> b!249273 d!60543))

(declare-fun b!249549 () Bool)

(declare-fun e!161858 () SeekEntryResult!1126)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!249549 (= e!161858 (seekKeyOrZeroReturnVacant!0 (bvadd (x!24624 lt!124942) #b00000000000000000000000000000001) (nextIndex!0 (index!6676 lt!124942) (x!24624 lt!124942) (mask!10767 thiss!1504)) (index!6676 lt!124942) key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun b!249550 () Bool)

(declare-fun e!161860 () SeekEntryResult!1126)

(declare-fun e!161859 () SeekEntryResult!1126)

(assert (=> b!249550 (= e!161860 e!161859)))

(declare-fun c!41866 () Bool)

(declare-fun lt!125051 () (_ BitVec 64))

(assert (=> b!249550 (= c!41866 (= lt!125051 key!932))))

(declare-fun b!249552 () Bool)

(declare-fun c!41865 () Bool)

(assert (=> b!249552 (= c!41865 (= lt!125051 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249552 (= e!161859 e!161858)))

(declare-fun b!249551 () Bool)

(assert (=> b!249551 (= e!161859 (Found!1126 (index!6676 lt!124942)))))

(declare-fun d!60671 () Bool)

(declare-fun lt!125052 () SeekEntryResult!1126)

(assert (=> d!60671 (and (or ((_ is Undefined!1126) lt!125052) (not ((_ is Found!1126) lt!125052)) (and (bvsge (index!6675 lt!125052) #b00000000000000000000000000000000) (bvslt (index!6675 lt!125052) (size!6161 (_keys!6734 thiss!1504))))) (or ((_ is Undefined!1126) lt!125052) ((_ is Found!1126) lt!125052) (not ((_ is MissingVacant!1126) lt!125052)) (not (= (index!6677 lt!125052) (index!6676 lt!124942))) (and (bvsge (index!6677 lt!125052) #b00000000000000000000000000000000) (bvslt (index!6677 lt!125052) (size!6161 (_keys!6734 thiss!1504))))) (or ((_ is Undefined!1126) lt!125052) (ite ((_ is Found!1126) lt!125052) (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6675 lt!125052)) key!932) (and ((_ is MissingVacant!1126) lt!125052) (= (index!6677 lt!125052) (index!6676 lt!124942)) (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6677 lt!125052)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!60671 (= lt!125052 e!161860)))

(declare-fun c!41864 () Bool)

(assert (=> d!60671 (= c!41864 (bvsge (x!24624 lt!124942) #b01111111111111111111111111111110))))

(assert (=> d!60671 (= lt!125051 (select (arr!5818 (_keys!6734 thiss!1504)) (index!6676 lt!124942)))))

(assert (=> d!60671 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60671 (= (seekKeyOrZeroReturnVacant!0 (x!24624 lt!124942) (index!6676 lt!124942) (index!6676 lt!124942) key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)) lt!125052)))

(declare-fun b!249553 () Bool)

(assert (=> b!249553 (= e!161858 (MissingVacant!1126 (index!6676 lt!124942)))))

(declare-fun b!249554 () Bool)

(assert (=> b!249554 (= e!161860 Undefined!1126)))

(assert (= (and d!60671 c!41864) b!249554))

(assert (= (and d!60671 (not c!41864)) b!249550))

(assert (= (and b!249550 c!41866) b!249551))

(assert (= (and b!249550 (not c!41866)) b!249552))

(assert (= (and b!249552 c!41865) b!249553))

(assert (= (and b!249552 (not c!41865)) b!249549))

(declare-fun m!266139 () Bool)

(assert (=> b!249549 m!266139))

(assert (=> b!249549 m!266139))

(declare-fun m!266141 () Bool)

(assert (=> b!249549 m!266141))

(declare-fun m!266143 () Bool)

(assert (=> d!60671 m!266143))

(declare-fun m!266145 () Bool)

(assert (=> d!60671 m!266145))

(assert (=> d!60671 m!265875))

(assert (=> d!60671 m!265643))

(assert (=> b!249335 d!60671))

(declare-fun d!60673 () Bool)

(assert (=> d!60673 (= (inRange!0 (ite c!41789 (index!6674 lt!124903) (index!6677 lt!124903)) (mask!10767 thiss!1504)) (and (bvsge (ite c!41789 (index!6674 lt!124903) (index!6677 lt!124903)) #b00000000000000000000000000000000) (bvslt (ite c!41789 (index!6674 lt!124903) (index!6677 lt!124903)) (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23407 d!60673))

(declare-fun d!60675 () Bool)

(assert (=> d!60675 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!249271 d!60675))

(declare-fun d!60677 () Bool)

(declare-fun e!161861 () Bool)

(assert (=> d!60677 e!161861))

(declare-fun res!122274 () Bool)

(assert (=> d!60677 (=> (not res!122274) (not e!161861))))

(declare-fun lt!125053 () ListLongMap!3755)

(assert (=> d!60677 (= res!122274 (contains!1804 lt!125053 (_1!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))

(declare-fun lt!125054 () List!3733)

(assert (=> d!60677 (= lt!125053 (ListLongMap!3756 lt!125054))))

(declare-fun lt!125055 () Unit!7711)

(declare-fun lt!125056 () Unit!7711)

(assert (=> d!60677 (= lt!125055 lt!125056)))

(assert (=> d!60677 (= (getValueByKey!295 lt!125054 (_1!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))

(assert (=> d!60677 (= lt!125056 (lemmaContainsTupThenGetReturnValue!158 lt!125054 (_1!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))

(assert (=> d!60677 (= lt!125054 (insertStrictlySorted!160 (toList!1893 call!23398) (_1!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))) (_2!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))))))

(assert (=> d!60677 (= (+!660 call!23398 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))) lt!125053)))

(declare-fun b!249555 () Bool)

(declare-fun res!122273 () Bool)

(assert (=> b!249555 (=> (not res!122273) (not e!161861))))

(assert (=> b!249555 (= res!122273 (= (getValueByKey!295 (toList!1893 lt!125053) (_1!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504)))) (Some!300 (_2!2424 (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))))

(declare-fun b!249556 () Bool)

(assert (=> b!249556 (= e!161861 (contains!1807 (toList!1893 lt!125053) (tuple2!4829 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4447 thiss!1504))))))

(assert (= (and d!60677 res!122274) b!249555))

(assert (= (and b!249555 res!122273) b!249556))

(declare-fun m!266147 () Bool)

(assert (=> d!60677 m!266147))

(declare-fun m!266149 () Bool)

(assert (=> d!60677 m!266149))

(declare-fun m!266151 () Bool)

(assert (=> d!60677 m!266151))

(declare-fun m!266153 () Bool)

(assert (=> d!60677 m!266153))

(declare-fun m!266155 () Bool)

(assert (=> b!249555 m!266155))

(declare-fun m!266157 () Bool)

(assert (=> b!249556 m!266157))

(assert (=> b!249206 d!60677))

(assert (=> d!60533 d!60545))

(declare-fun b!249557 () Bool)

(declare-fun e!161862 () Bool)

(assert (=> b!249557 (= e!161862 (contains!1806 (ite c!41792 (Cons!3730 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) Nil!3731) Nil!3731) (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!60679 () Bool)

(declare-fun res!122275 () Bool)

(declare-fun e!161864 () Bool)

(assert (=> d!60679 (=> res!122275 e!161864)))

(assert (=> d!60679 (= res!122275 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6161 lt!124784)))))

(assert (=> d!60679 (= (arrayNoDuplicates!0 lt!124784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41792 (Cons!3730 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) Nil!3731) Nil!3731)) e!161864)))

(declare-fun b!249558 () Bool)

(declare-fun e!161863 () Bool)

(assert (=> b!249558 (= e!161864 e!161863)))

(declare-fun res!122277 () Bool)

(assert (=> b!249558 (=> (not res!122277) (not e!161863))))

(assert (=> b!249558 (= res!122277 (not e!161862))))

(declare-fun res!122276 () Bool)

(assert (=> b!249558 (=> (not res!122276) (not e!161862))))

(assert (=> b!249558 (= res!122276 (validKeyInArray!0 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!249559 () Bool)

(declare-fun e!161865 () Bool)

(assert (=> b!249559 (= e!161863 e!161865)))

(declare-fun c!41867 () Bool)

(assert (=> b!249559 (= c!41867 (validKeyInArray!0 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!249560 () Bool)

(declare-fun call!23438 () Bool)

(assert (=> b!249560 (= e!161865 call!23438)))

(declare-fun b!249561 () Bool)

(assert (=> b!249561 (= e!161865 call!23438)))

(declare-fun bm!23435 () Bool)

(assert (=> bm!23435 (= call!23438 (arrayNoDuplicates!0 lt!124784 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!41867 (Cons!3730 (select (arr!5818 lt!124784) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!41792 (Cons!3730 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) Nil!3731) Nil!3731)) (ite c!41792 (Cons!3730 (select (arr!5818 lt!124784) #b00000000000000000000000000000000) Nil!3731) Nil!3731))))))

(assert (= (and d!60679 (not res!122275)) b!249558))

(assert (= (and b!249558 res!122276) b!249557))

(assert (= (and b!249558 res!122277) b!249559))

(assert (= (and b!249559 c!41867) b!249560))

(assert (= (and b!249559 (not c!41867)) b!249561))

(assert (= (or b!249560 b!249561) bm!23435))

(assert (=> b!249557 m!266123))

(assert (=> b!249557 m!266123))

(declare-fun m!266159 () Bool)

(assert (=> b!249557 m!266159))

(assert (=> b!249558 m!266123))

(assert (=> b!249558 m!266123))

(assert (=> b!249558 m!266133))

(assert (=> b!249559 m!266123))

(assert (=> b!249559 m!266123))

(assert (=> b!249559 m!266133))

(assert (=> bm!23435 m!266123))

(declare-fun m!266161 () Bool)

(assert (=> bm!23435 m!266161))

(assert (=> bm!23410 d!60679))

(declare-fun b!249580 () Bool)

(declare-fun e!161880 () SeekEntryResult!1126)

(declare-fun e!161876 () SeekEntryResult!1126)

(assert (=> b!249580 (= e!161880 e!161876)))

(declare-fun c!41875 () Bool)

(declare-fun lt!125061 () (_ BitVec 64))

(assert (=> b!249580 (= c!41875 (or (= lt!125061 key!932) (= (bvadd lt!125061 lt!125061) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!249581 () Bool)

(declare-fun e!161877 () Bool)

(declare-fun e!161878 () Bool)

(assert (=> b!249581 (= e!161877 e!161878)))

(declare-fun res!122285 () Bool)

(declare-fun lt!125062 () SeekEntryResult!1126)

(assert (=> b!249581 (= res!122285 (and ((_ is Intermediate!1126) lt!125062) (not (undefined!1938 lt!125062)) (bvslt (x!24624 lt!125062) #b01111111111111111111111111111110) (bvsge (x!24624 lt!125062) #b00000000000000000000000000000000) (bvsge (x!24624 lt!125062) #b00000000000000000000000000000000)))))

(assert (=> b!249581 (=> (not res!122285) (not e!161878))))

(declare-fun b!249582 () Bool)

(assert (=> b!249582 (= e!161876 (Intermediate!1126 false (toIndex!0 key!932 (mask!10767 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!249583 () Bool)

(assert (=> b!249583 (and (bvsge (index!6676 lt!125062) #b00000000000000000000000000000000) (bvslt (index!6676 lt!125062) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun e!161879 () Bool)

(assert (=> b!249583 (= e!161879 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6676 lt!125062)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!60681 () Bool)

(assert (=> d!60681 e!161877))

(declare-fun c!41876 () Bool)

(assert (=> d!60681 (= c!41876 (and ((_ is Intermediate!1126) lt!125062) (undefined!1938 lt!125062)))))

(assert (=> d!60681 (= lt!125062 e!161880)))

(declare-fun c!41874 () Bool)

(assert (=> d!60681 (= c!41874 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!60681 (= lt!125061 (select (arr!5818 (_keys!6734 thiss!1504)) (toIndex!0 key!932 (mask!10767 thiss!1504))))))

(assert (=> d!60681 (validMask!0 (mask!10767 thiss!1504))))

(assert (=> d!60681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10767 thiss!1504)) key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)) lt!125062)))

(declare-fun b!249584 () Bool)

(assert (=> b!249584 (= e!161876 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10767 thiss!1504)) #b00000000000000000000000000000000 (mask!10767 thiss!1504)) key!932 (_keys!6734 thiss!1504) (mask!10767 thiss!1504)))))

(declare-fun b!249585 () Bool)

(assert (=> b!249585 (= e!161877 (bvsge (x!24624 lt!125062) #b01111111111111111111111111111110))))

(declare-fun b!249586 () Bool)

(assert (=> b!249586 (and (bvsge (index!6676 lt!125062) #b00000000000000000000000000000000) (bvslt (index!6676 lt!125062) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun res!122284 () Bool)

(assert (=> b!249586 (= res!122284 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6676 lt!125062)) key!932))))

(assert (=> b!249586 (=> res!122284 e!161879)))

(assert (=> b!249586 (= e!161878 e!161879)))

(declare-fun b!249587 () Bool)

(assert (=> b!249587 (and (bvsge (index!6676 lt!125062) #b00000000000000000000000000000000) (bvslt (index!6676 lt!125062) (size!6161 (_keys!6734 thiss!1504))))))

(declare-fun res!122286 () Bool)

(assert (=> b!249587 (= res!122286 (= (select (arr!5818 (_keys!6734 thiss!1504)) (index!6676 lt!125062)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249587 (=> res!122286 e!161879)))

(declare-fun b!249588 () Bool)

(assert (=> b!249588 (= e!161880 (Intermediate!1126 true (toIndex!0 key!932 (mask!10767 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!60681 c!41874) b!249588))

(assert (= (and d!60681 (not c!41874)) b!249580))

(assert (= (and b!249580 c!41875) b!249582))

(assert (= (and b!249580 (not c!41875)) b!249584))

(assert (= (and d!60681 c!41876) b!249585))

(assert (= (and d!60681 (not c!41876)) b!249581))

(assert (= (and b!249581 res!122285) b!249586))

(assert (= (and b!249586 (not res!122284)) b!249587))

(assert (= (and b!249587 (not res!122286)) b!249583))

(assert (=> b!249584 m!265865))

(declare-fun m!266163 () Bool)

(assert (=> b!249584 m!266163))

(assert (=> b!249584 m!266163))

(declare-fun m!266165 () Bool)

(assert (=> b!249584 m!266165))

(declare-fun m!266167 () Bool)

(assert (=> b!249583 m!266167))

(assert (=> b!249587 m!266167))

(assert (=> b!249586 m!266167))

(assert (=> d!60681 m!265865))

(declare-fun m!266169 () Bool)

(assert (=> d!60681 m!266169))

(assert (=> d!60681 m!265643))

(assert (=> d!60561 d!60681))

(declare-fun d!60683 () Bool)

(declare-fun lt!125068 () (_ BitVec 32))

(declare-fun lt!125067 () (_ BitVec 32))

(assert (=> d!60683 (= lt!125068 (bvmul (bvxor lt!125067 (bvlshr lt!125067 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!60683 (= lt!125067 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!60683 (and (bvsge (mask!10767 thiss!1504) #b00000000000000000000000000000000) (let ((res!122287 (let ((h!4391 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!24643 (bvmul (bvxor h!4391 (bvlshr h!4391 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!24643 (bvlshr x!24643 #b00000000000000000000000000001101)) (mask!10767 thiss!1504)))))) (and (bvslt res!122287 (bvadd (mask!10767 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!122287 #b00000000000000000000000000000000))))))

(assert (=> d!60683 (= (toIndex!0 key!932 (mask!10767 thiss!1504)) (bvand (bvxor lt!125068 (bvlshr lt!125068 #b00000000000000000000000000001101)) (mask!10767 thiss!1504)))))

(assert (=> d!60561 d!60683))

(assert (=> d!60561 d!60545))

(declare-fun b!249590 () Bool)

(declare-fun e!161881 () Bool)

(assert (=> b!249590 (= e!161881 tp_is_empty!6477)))

(declare-fun b!249589 () Bool)

(declare-fun e!161882 () Bool)

(assert (=> b!249589 (= e!161882 tp_is_empty!6477)))

(declare-fun mapIsEmpty!11007 () Bool)

(declare-fun mapRes!11007 () Bool)

(assert (=> mapIsEmpty!11007 mapRes!11007))

(declare-fun condMapEmpty!11007 () Bool)

(declare-fun mapDefault!11007 () ValueCell!2895)

(assert (=> mapNonEmpty!11006 (= condMapEmpty!11007 (= mapRest!11006 ((as const (Array (_ BitVec 32) ValueCell!2895)) mapDefault!11007)))))

(assert (=> mapNonEmpty!11006 (= tp!23111 (and e!161881 mapRes!11007))))

(declare-fun mapNonEmpty!11007 () Bool)

(declare-fun tp!23112 () Bool)

(assert (=> mapNonEmpty!11007 (= mapRes!11007 (and tp!23112 e!161882))))

(declare-fun mapRest!11007 () (Array (_ BitVec 32) ValueCell!2895))

(declare-fun mapValue!11007 () ValueCell!2895)

(declare-fun mapKey!11007 () (_ BitVec 32))

(assert (=> mapNonEmpty!11007 (= mapRest!11006 (store mapRest!11007 mapKey!11007 mapValue!11007))))

(assert (= (and mapNonEmpty!11006 condMapEmpty!11007) mapIsEmpty!11007))

(assert (= (and mapNonEmpty!11006 (not condMapEmpty!11007)) mapNonEmpty!11007))

(assert (= (and mapNonEmpty!11007 ((_ is ValueCellFull!2895) mapValue!11007)) b!249589))

(assert (= (and mapNonEmpty!11006 ((_ is ValueCellFull!2895) mapDefault!11007)) b!249590))

(declare-fun m!266171 () Bool)

(assert (=> mapNonEmpty!11007 m!266171))

(declare-fun b_lambda!8101 () Bool)

(assert (= b_lambda!8097 (or (and b!249067 b_free!6615) b_lambda!8101)))

(declare-fun b_lambda!8103 () Bool)

(assert (= b_lambda!8099 (or (and b!249067 b_free!6615) b_lambda!8103)))

(check-sat (not b!249522) (not b!249367) (not d!60677) (not b_lambda!8095) (not bm!23420) (not b!249362) (not b!249474) (not b!249351) (not d!60633) (not b!249509) (not d!60583) (not b!249480) (not d!60609) (not b!249365) (not d!60591) (not b!249492) (not d!60637) (not bm!23425) (not d!60657) (not d!60615) (not b!249510) (not d!60629) (not d!60577) (not b!249411) (not b!249359) (not b!249505) (not bm!23429) (not d!60635) (not b!249350) (not b!249528) (not b!249481) (not b!249400) (not bm!23419) (not bm!23432) (not d!60575) (not d!60627) (not b!249558) (not b!249450) (not b!249349) (not d!60595) (not bm!23418) (not d!60661) (not b!249445) (not b!249524) (not b!249500) (not d!60655) (not b!249503) (not b!249494) tp_is_empty!6477 (not bm!23430) (not b!249502) (not b!249444) (not b!249447) (not b!249521) (not d!60647) (not d!60605) (not b!249473) (not b!249360) (not b!249453) (not d!60585) (not d!60681) (not bm!23434) (not d!60601) (not b!249403) (not d!60651) (not b!249531) (not b_lambda!8103) b_and!13649 (not b!249446) (not d!60671) (not bm!23433) (not b!249457) (not b!249518) (not d!60631) (not b!249504) (not b!249369) (not b!249506) (not b!249455) (not b!249559) (not b!249557) (not b!249442) (not b!249404) (not b!249556) (not b!249463) (not b!249555) (not b!249526) (not b_lambda!8101) (not b!249417) (not bm!23426) (not bm!23431) (not b!249535) (not b!249514) (not d!60619) (not d!60617) (not d!60641) (not d!60653) (not b!249449) (not d!60649) (not b!249368) (not b!249462) (not b!249549) (not b!249584) (not b!249516) (not bm!23435) (not b_next!6615) (not b!249519) (not d!60597) (not b!249495) (not d!60571) (not d!60623) (not d!60569) (not d!60643) (not d!60639) (not d!60663) (not d!60645) (not d!60611) (not mapNonEmpty!11007))
(check-sat b_and!13649 (not b_next!6615))

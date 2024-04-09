; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19674 () Bool)

(assert start!19674)

(declare-fun b!192690 () Bool)

(declare-fun b_free!4695 () Bool)

(declare-fun b_next!4695 () Bool)

(assert (=> b!192690 (= b_free!4695 (not b_next!4695))))

(declare-fun tp!16943 () Bool)

(declare-fun b_and!11411 () Bool)

(assert (=> b!192690 (= tp!16943 b_and!11411)))

(declare-datatypes ((SeekEntryResult!693 0))(
  ( (MissingZero!693 (index!4942 (_ BitVec 32))) (Found!693 (index!4943 (_ BitVec 32))) (Intermediate!693 (undefined!1505 Bool) (index!4944 (_ BitVec 32)) (x!20617 (_ BitVec 32))) (Undefined!693) (MissingVacant!693 (index!4945 (_ BitVec 32))) )
))
(declare-fun lt!95860 () SeekEntryResult!693)

(declare-datatypes ((V!5603 0))(
  ( (V!5604 (val!2278 Int)) )
))
(declare-datatypes ((ValueCell!1890 0))(
  ( (ValueCellFull!1890 (v!4224 V!5603)) (EmptyCell!1890) )
))
(declare-datatypes ((array!8176 0))(
  ( (array!8177 (arr!3850 (Array (_ BitVec 32) (_ BitVec 64))) (size!4174 (_ BitVec 32))) )
))
(declare-datatypes ((array!8178 0))(
  ( (array!8179 (arr!3851 (Array (_ BitVec 32) ValueCell!1890)) (size!4175 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2688 0))(
  ( (LongMapFixedSize!2689 (defaultEntry!3932 Int) (mask!9171 (_ BitVec 32)) (extraKeys!3669 (_ BitVec 32)) (zeroValue!3773 V!5603) (minValue!3773 V!5603) (_size!1393 (_ BitVec 32)) (_keys!5918 array!8176) (_values!3915 array!8178) (_vacant!1393 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2688)

(declare-fun e!126790 () Bool)

(declare-fun b!192683 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!192683 (= e!126790 (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4943 lt!95860)) key!828))))

(declare-fun mapNonEmpty!7721 () Bool)

(declare-fun mapRes!7721 () Bool)

(declare-fun tp!16942 () Bool)

(declare-fun e!126795 () Bool)

(assert (=> mapNonEmpty!7721 (= mapRes!7721 (and tp!16942 e!126795))))

(declare-fun mapRest!7721 () (Array (_ BitVec 32) ValueCell!1890))

(declare-fun mapValue!7721 () ValueCell!1890)

(declare-fun mapKey!7721 () (_ BitVec 32))

(assert (=> mapNonEmpty!7721 (= (arr!3851 (_values!3915 thiss!1248)) (store mapRest!7721 mapKey!7721 mapValue!7721))))

(declare-fun b!192684 () Bool)

(declare-fun e!126793 () Bool)

(declare-fun tp_is_empty!4467 () Bool)

(assert (=> b!192684 (= e!126793 tp_is_empty!4467)))

(declare-fun b!192685 () Bool)

(declare-fun res!91057 () Bool)

(declare-fun e!126791 () Bool)

(assert (=> b!192685 (=> (not res!91057) (not e!126791))))

(assert (=> b!192685 (= res!91057 (not (= key!828 (bvneg key!828))))))

(declare-fun b!192686 () Bool)

(declare-fun e!126794 () Bool)

(assert (=> b!192686 (= e!126794 (and e!126793 mapRes!7721))))

(declare-fun condMapEmpty!7721 () Bool)

(declare-fun mapDefault!7721 () ValueCell!1890)

(assert (=> b!192686 (= condMapEmpty!7721 (= (arr!3851 (_values!3915 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1890)) mapDefault!7721)))))

(declare-fun b!192687 () Bool)

(declare-datatypes ((Unit!5829 0))(
  ( (Unit!5830) )
))
(declare-fun e!126789 () Unit!5829)

(declare-fun lt!95865 () Unit!5829)

(assert (=> b!192687 (= e!126789 lt!95865)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!178 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 64) Int) Unit!5829)

(assert (=> b!192687 (= lt!95865 (lemmaInListMapThenSeekEntryOrOpenFindsIt!178 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) key!828 (defaultEntry!3932 thiss!1248)))))

(declare-fun res!91058 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!192687 (= res!91058 (inRange!0 (index!4943 lt!95860) (mask!9171 thiss!1248)))))

(assert (=> b!192687 (=> (not res!91058) (not e!126790))))

(assert (=> b!192687 e!126790))

(declare-fun b!192688 () Bool)

(declare-fun res!91056 () Bool)

(declare-fun e!126797 () Bool)

(assert (=> b!192688 (=> res!91056 e!126797)))

(assert (=> b!192688 (= res!91056 (or (not (= (size!4175 (_values!3915 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9171 thiss!1248)))) (not (= (size!4174 (_keys!5918 thiss!1248)) (size!4175 (_values!3915 thiss!1248)))) (bvslt (mask!9171 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3669 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3669 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!192689 () Bool)

(assert (=> b!192689 (= e!126795 tp_is_empty!4467)))

(declare-fun e!126788 () Bool)

(declare-fun array_inv!2487 (array!8176) Bool)

(declare-fun array_inv!2488 (array!8178) Bool)

(assert (=> b!192690 (= e!126788 (and tp!16943 tp_is_empty!4467 (array_inv!2487 (_keys!5918 thiss!1248)) (array_inv!2488 (_values!3915 thiss!1248)) e!126794))))

(declare-fun b!192691 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8176 (_ BitVec 32)) Bool)

(assert (=> b!192691 (= e!126797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun res!91055 () Bool)

(assert (=> start!19674 (=> (not res!91055) (not e!126791))))

(declare-fun valid!1095 (LongMapFixedSize!2688) Bool)

(assert (=> start!19674 (= res!91055 (valid!1095 thiss!1248))))

(assert (=> start!19674 e!126791))

(assert (=> start!19674 e!126788))

(assert (=> start!19674 true))

(assert (=> start!19674 tp_is_empty!4467))

(declare-fun mapIsEmpty!7721 () Bool)

(assert (=> mapIsEmpty!7721 mapRes!7721))

(declare-fun b!192692 () Bool)

(declare-fun e!126792 () Bool)

(assert (=> b!192692 (= e!126791 e!126792)))

(declare-fun res!91059 () Bool)

(assert (=> b!192692 (=> (not res!91059) (not e!126792))))

(get-info :version)

(assert (=> b!192692 (= res!91059 (and (not ((_ is Undefined!693) lt!95860)) (not ((_ is MissingVacant!693) lt!95860)) (not ((_ is MissingZero!693) lt!95860)) ((_ is Found!693) lt!95860)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8176 (_ BitVec 32)) SeekEntryResult!693)

(assert (=> b!192692 (= lt!95860 (seekEntryOrOpen!0 key!828 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun b!192693 () Bool)

(assert (=> b!192693 (= e!126792 (not e!126797))))

(declare-fun res!91060 () Bool)

(assert (=> b!192693 (=> res!91060 e!126797)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!192693 (= res!91060 (not (validMask!0 (mask!9171 thiss!1248))))))

(declare-fun v!309 () V!5603)

(declare-datatypes ((tuple2!3534 0))(
  ( (tuple2!3535 (_1!1777 (_ BitVec 64)) (_2!1777 V!5603)) )
))
(declare-datatypes ((List!2450 0))(
  ( (Nil!2447) (Cons!2446 (h!3087 tuple2!3534) (t!7376 List!2450)) )
))
(declare-datatypes ((ListLongMap!2465 0))(
  ( (ListLongMap!2466 (toList!1248 List!2450)) )
))
(declare-fun lt!95864 () ListLongMap!2465)

(declare-fun +!306 (ListLongMap!2465 tuple2!3534) ListLongMap!2465)

(declare-fun getCurrentListMap!891 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 32) Int) ListLongMap!2465)

(assert (=> b!192693 (= (+!306 lt!95864 (tuple2!3535 key!828 v!309)) (getCurrentListMap!891 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95862 () Unit!5829)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!112 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 32) (_ BitVec 64) V!5603 Int) Unit!5829)

(assert (=> b!192693 (= lt!95862 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!112 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) (index!4943 lt!95860) key!828 v!309 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95863 () Unit!5829)

(assert (=> b!192693 (= lt!95863 e!126789)))

(declare-fun c!34738 () Bool)

(declare-fun contains!1360 (ListLongMap!2465 (_ BitVec 64)) Bool)

(assert (=> b!192693 (= c!34738 (contains!1360 lt!95864 key!828))))

(assert (=> b!192693 (= lt!95864 (getCurrentListMap!891 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun b!192694 () Bool)

(declare-fun Unit!5831 () Unit!5829)

(assert (=> b!192694 (= e!126789 Unit!5831)))

(declare-fun lt!95861 () Unit!5829)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!184 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 64) Int) Unit!5829)

(assert (=> b!192694 (= lt!95861 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!184 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) key!828 (defaultEntry!3932 thiss!1248)))))

(assert (=> b!192694 false))

(assert (= (and start!19674 res!91055) b!192685))

(assert (= (and b!192685 res!91057) b!192692))

(assert (= (and b!192692 res!91059) b!192693))

(assert (= (and b!192693 c!34738) b!192687))

(assert (= (and b!192693 (not c!34738)) b!192694))

(assert (= (and b!192687 res!91058) b!192683))

(assert (= (and b!192693 (not res!91060)) b!192688))

(assert (= (and b!192688 (not res!91056)) b!192691))

(assert (= (and b!192686 condMapEmpty!7721) mapIsEmpty!7721))

(assert (= (and b!192686 (not condMapEmpty!7721)) mapNonEmpty!7721))

(assert (= (and mapNonEmpty!7721 ((_ is ValueCellFull!1890) mapValue!7721)) b!192689))

(assert (= (and b!192686 ((_ is ValueCellFull!1890) mapDefault!7721)) b!192684))

(assert (= b!192690 b!192686))

(assert (= start!19674 b!192690))

(declare-fun m!219539 () Bool)

(assert (=> b!192692 m!219539))

(declare-fun m!219541 () Bool)

(assert (=> b!192690 m!219541))

(declare-fun m!219543 () Bool)

(assert (=> b!192690 m!219543))

(declare-fun m!219545 () Bool)

(assert (=> b!192694 m!219545))

(declare-fun m!219547 () Bool)

(assert (=> b!192687 m!219547))

(declare-fun m!219549 () Bool)

(assert (=> b!192687 m!219549))

(declare-fun m!219551 () Bool)

(assert (=> start!19674 m!219551))

(declare-fun m!219553 () Bool)

(assert (=> b!192683 m!219553))

(declare-fun m!219555 () Bool)

(assert (=> mapNonEmpty!7721 m!219555))

(declare-fun m!219557 () Bool)

(assert (=> b!192693 m!219557))

(declare-fun m!219559 () Bool)

(assert (=> b!192693 m!219559))

(declare-fun m!219561 () Bool)

(assert (=> b!192693 m!219561))

(declare-fun m!219563 () Bool)

(assert (=> b!192693 m!219563))

(declare-fun m!219565 () Bool)

(assert (=> b!192693 m!219565))

(declare-fun m!219567 () Bool)

(assert (=> b!192693 m!219567))

(declare-fun m!219569 () Bool)

(assert (=> b!192693 m!219569))

(declare-fun m!219571 () Bool)

(assert (=> b!192691 m!219571))

(check-sat (not mapNonEmpty!7721) (not b!192692) (not b!192691) b_and!11411 tp_is_empty!4467 (not b!192687) (not start!19674) (not b!192694) (not b_next!4695) (not b!192690) (not b!192693))
(check-sat b_and!11411 (not b_next!4695))
(get-model)

(declare-fun lt!95892 () SeekEntryResult!693)

(declare-fun e!126835 () SeekEntryResult!693)

(declare-fun b!192743 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8176 (_ BitVec 32)) SeekEntryResult!693)

(assert (=> b!192743 (= e!126835 (seekKeyOrZeroReturnVacant!0 (x!20617 lt!95892) (index!4944 lt!95892) (index!4944 lt!95892) key!828 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun b!192744 () Bool)

(declare-fun e!126836 () SeekEntryResult!693)

(assert (=> b!192744 (= e!126836 (Found!693 (index!4944 lt!95892)))))

(declare-fun b!192745 () Bool)

(declare-fun e!126834 () SeekEntryResult!693)

(assert (=> b!192745 (= e!126834 e!126836)))

(declare-fun lt!95891 () (_ BitVec 64))

(assert (=> b!192745 (= lt!95891 (select (arr!3850 (_keys!5918 thiss!1248)) (index!4944 lt!95892)))))

(declare-fun c!34750 () Bool)

(assert (=> b!192745 (= c!34750 (= lt!95891 key!828))))

(declare-fun b!192746 () Bool)

(assert (=> b!192746 (= e!126834 Undefined!693)))

(declare-fun d!56427 () Bool)

(declare-fun lt!95890 () SeekEntryResult!693)

(assert (=> d!56427 (and (or ((_ is Undefined!693) lt!95890) (not ((_ is Found!693) lt!95890)) (and (bvsge (index!4943 lt!95890) #b00000000000000000000000000000000) (bvslt (index!4943 lt!95890) (size!4174 (_keys!5918 thiss!1248))))) (or ((_ is Undefined!693) lt!95890) ((_ is Found!693) lt!95890) (not ((_ is MissingZero!693) lt!95890)) (and (bvsge (index!4942 lt!95890) #b00000000000000000000000000000000) (bvslt (index!4942 lt!95890) (size!4174 (_keys!5918 thiss!1248))))) (or ((_ is Undefined!693) lt!95890) ((_ is Found!693) lt!95890) ((_ is MissingZero!693) lt!95890) (not ((_ is MissingVacant!693) lt!95890)) (and (bvsge (index!4945 lt!95890) #b00000000000000000000000000000000) (bvslt (index!4945 lt!95890) (size!4174 (_keys!5918 thiss!1248))))) (or ((_ is Undefined!693) lt!95890) (ite ((_ is Found!693) lt!95890) (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4943 lt!95890)) key!828) (ite ((_ is MissingZero!693) lt!95890) (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4942 lt!95890)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!693) lt!95890) (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4945 lt!95890)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!56427 (= lt!95890 e!126834)))

(declare-fun c!34749 () Bool)

(assert (=> d!56427 (= c!34749 (and ((_ is Intermediate!693) lt!95892) (undefined!1505 lt!95892)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8176 (_ BitVec 32)) SeekEntryResult!693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56427 (= lt!95892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9171 thiss!1248)) key!828 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(assert (=> d!56427 (validMask!0 (mask!9171 thiss!1248))))

(assert (=> d!56427 (= (seekEntryOrOpen!0 key!828 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)) lt!95890)))

(declare-fun b!192747 () Bool)

(assert (=> b!192747 (= e!126835 (MissingZero!693 (index!4944 lt!95892)))))

(declare-fun b!192748 () Bool)

(declare-fun c!34748 () Bool)

(assert (=> b!192748 (= c!34748 (= lt!95891 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192748 (= e!126836 e!126835)))

(assert (= (and d!56427 c!34749) b!192746))

(assert (= (and d!56427 (not c!34749)) b!192745))

(assert (= (and b!192745 c!34750) b!192744))

(assert (= (and b!192745 (not c!34750)) b!192748))

(assert (= (and b!192748 c!34748) b!192747))

(assert (= (and b!192748 (not c!34748)) b!192743))

(declare-fun m!219607 () Bool)

(assert (=> b!192743 m!219607))

(declare-fun m!219609 () Bool)

(assert (=> b!192745 m!219609))

(declare-fun m!219611 () Bool)

(assert (=> d!56427 m!219611))

(declare-fun m!219613 () Bool)

(assert (=> d!56427 m!219613))

(assert (=> d!56427 m!219569))

(declare-fun m!219615 () Bool)

(assert (=> d!56427 m!219615))

(declare-fun m!219617 () Bool)

(assert (=> d!56427 m!219617))

(assert (=> d!56427 m!219611))

(declare-fun m!219619 () Bool)

(assert (=> d!56427 m!219619))

(assert (=> b!192692 d!56427))

(declare-fun d!56429 () Bool)

(declare-fun e!126839 () Bool)

(assert (=> d!56429 e!126839))

(declare-fun res!91083 () Bool)

(assert (=> d!56429 (=> (not res!91083) (not e!126839))))

(declare-fun lt!95897 () SeekEntryResult!693)

(assert (=> d!56429 (= res!91083 ((_ is Found!693) lt!95897))))

(assert (=> d!56429 (= lt!95897 (seekEntryOrOpen!0 key!828 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun lt!95898 () Unit!5829)

(declare-fun choose!1059 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 64) Int) Unit!5829)

(assert (=> d!56429 (= lt!95898 (choose!1059 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) key!828 (defaultEntry!3932 thiss!1248)))))

(assert (=> d!56429 (validMask!0 (mask!9171 thiss!1248))))

(assert (=> d!56429 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!178 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) key!828 (defaultEntry!3932 thiss!1248)) lt!95898)))

(declare-fun b!192753 () Bool)

(declare-fun res!91084 () Bool)

(assert (=> b!192753 (=> (not res!91084) (not e!126839))))

(assert (=> b!192753 (= res!91084 (inRange!0 (index!4943 lt!95897) (mask!9171 thiss!1248)))))

(declare-fun b!192754 () Bool)

(assert (=> b!192754 (= e!126839 (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4943 lt!95897)) key!828))))

(assert (=> b!192754 (and (bvsge (index!4943 lt!95897) #b00000000000000000000000000000000) (bvslt (index!4943 lt!95897) (size!4174 (_keys!5918 thiss!1248))))))

(assert (= (and d!56429 res!91083) b!192753))

(assert (= (and b!192753 res!91084) b!192754))

(assert (=> d!56429 m!219539))

(declare-fun m!219621 () Bool)

(assert (=> d!56429 m!219621))

(assert (=> d!56429 m!219569))

(declare-fun m!219623 () Bool)

(assert (=> b!192753 m!219623))

(declare-fun m!219625 () Bool)

(assert (=> b!192754 m!219625))

(assert (=> b!192687 d!56429))

(declare-fun d!56431 () Bool)

(assert (=> d!56431 (= (inRange!0 (index!4943 lt!95860) (mask!9171 thiss!1248)) (and (bvsge (index!4943 lt!95860) #b00000000000000000000000000000000) (bvslt (index!4943 lt!95860) (bvadd (mask!9171 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!192687 d!56431))

(declare-fun d!56433 () Bool)

(declare-fun e!126842 () Bool)

(assert (=> d!56433 e!126842))

(declare-fun res!91087 () Bool)

(assert (=> d!56433 (=> (not res!91087) (not e!126842))))

(assert (=> d!56433 (= res!91087 (and (bvsge (index!4943 lt!95860) #b00000000000000000000000000000000) (bvslt (index!4943 lt!95860) (size!4175 (_values!3915 thiss!1248)))))))

(declare-fun lt!95901 () Unit!5829)

(declare-fun choose!1060 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 32) (_ BitVec 64) V!5603 Int) Unit!5829)

(assert (=> d!56433 (= lt!95901 (choose!1060 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) (index!4943 lt!95860) key!828 v!309 (defaultEntry!3932 thiss!1248)))))

(assert (=> d!56433 (validMask!0 (mask!9171 thiss!1248))))

(assert (=> d!56433 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!112 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) (index!4943 lt!95860) key!828 v!309 (defaultEntry!3932 thiss!1248)) lt!95901)))

(declare-fun b!192757 () Bool)

(assert (=> b!192757 (= e!126842 (= (+!306 (getCurrentListMap!891 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)) (tuple2!3535 key!828 v!309)) (getCurrentListMap!891 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248))))))

(assert (= (and d!56433 res!91087) b!192757))

(declare-fun m!219627 () Bool)

(assert (=> d!56433 m!219627))

(assert (=> d!56433 m!219569))

(assert (=> b!192757 m!219559))

(assert (=> b!192757 m!219559))

(declare-fun m!219629 () Bool)

(assert (=> b!192757 m!219629))

(assert (=> b!192757 m!219567))

(assert (=> b!192757 m!219563))

(assert (=> b!192693 d!56433))

(declare-fun d!56435 () Bool)

(declare-fun e!126848 () Bool)

(assert (=> d!56435 e!126848))

(declare-fun res!91090 () Bool)

(assert (=> d!56435 (=> res!91090 e!126848)))

(declare-fun lt!95910 () Bool)

(assert (=> d!56435 (= res!91090 (not lt!95910))))

(declare-fun lt!95911 () Bool)

(assert (=> d!56435 (= lt!95910 lt!95911)))

(declare-fun lt!95913 () Unit!5829)

(declare-fun e!126847 () Unit!5829)

(assert (=> d!56435 (= lt!95913 e!126847)))

(declare-fun c!34753 () Bool)

(assert (=> d!56435 (= c!34753 lt!95911)))

(declare-fun containsKey!244 (List!2450 (_ BitVec 64)) Bool)

(assert (=> d!56435 (= lt!95911 (containsKey!244 (toList!1248 lt!95864) key!828))))

(assert (=> d!56435 (= (contains!1360 lt!95864 key!828) lt!95910)))

(declare-fun b!192764 () Bool)

(declare-fun lt!95912 () Unit!5829)

(assert (=> b!192764 (= e!126847 lt!95912)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!193 (List!2450 (_ BitVec 64)) Unit!5829)

(assert (=> b!192764 (= lt!95912 (lemmaContainsKeyImpliesGetValueByKeyDefined!193 (toList!1248 lt!95864) key!828))))

(declare-datatypes ((Option!246 0))(
  ( (Some!245 (v!4228 V!5603)) (None!244) )
))
(declare-fun isDefined!194 (Option!246) Bool)

(declare-fun getValueByKey!240 (List!2450 (_ BitVec 64)) Option!246)

(assert (=> b!192764 (isDefined!194 (getValueByKey!240 (toList!1248 lt!95864) key!828))))

(declare-fun b!192765 () Bool)

(declare-fun Unit!5835 () Unit!5829)

(assert (=> b!192765 (= e!126847 Unit!5835)))

(declare-fun b!192766 () Bool)

(assert (=> b!192766 (= e!126848 (isDefined!194 (getValueByKey!240 (toList!1248 lt!95864) key!828)))))

(assert (= (and d!56435 c!34753) b!192764))

(assert (= (and d!56435 (not c!34753)) b!192765))

(assert (= (and d!56435 (not res!91090)) b!192766))

(declare-fun m!219631 () Bool)

(assert (=> d!56435 m!219631))

(declare-fun m!219633 () Bool)

(assert (=> b!192764 m!219633))

(declare-fun m!219635 () Bool)

(assert (=> b!192764 m!219635))

(assert (=> b!192764 m!219635))

(declare-fun m!219637 () Bool)

(assert (=> b!192764 m!219637))

(assert (=> b!192766 m!219635))

(assert (=> b!192766 m!219635))

(assert (=> b!192766 m!219637))

(assert (=> b!192693 d!56435))

(declare-fun d!56437 () Bool)

(declare-fun e!126851 () Bool)

(assert (=> d!56437 e!126851))

(declare-fun res!91095 () Bool)

(assert (=> d!56437 (=> (not res!91095) (not e!126851))))

(declare-fun lt!95925 () ListLongMap!2465)

(assert (=> d!56437 (= res!91095 (contains!1360 lt!95925 (_1!1777 (tuple2!3535 key!828 v!309))))))

(declare-fun lt!95923 () List!2450)

(assert (=> d!56437 (= lt!95925 (ListLongMap!2466 lt!95923))))

(declare-fun lt!95922 () Unit!5829)

(declare-fun lt!95924 () Unit!5829)

(assert (=> d!56437 (= lt!95922 lt!95924)))

(assert (=> d!56437 (= (getValueByKey!240 lt!95923 (_1!1777 (tuple2!3535 key!828 v!309))) (Some!245 (_2!1777 (tuple2!3535 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!129 (List!2450 (_ BitVec 64) V!5603) Unit!5829)

(assert (=> d!56437 (= lt!95924 (lemmaContainsTupThenGetReturnValue!129 lt!95923 (_1!1777 (tuple2!3535 key!828 v!309)) (_2!1777 (tuple2!3535 key!828 v!309))))))

(declare-fun insertStrictlySorted!131 (List!2450 (_ BitVec 64) V!5603) List!2450)

(assert (=> d!56437 (= lt!95923 (insertStrictlySorted!131 (toList!1248 lt!95864) (_1!1777 (tuple2!3535 key!828 v!309)) (_2!1777 (tuple2!3535 key!828 v!309))))))

(assert (=> d!56437 (= (+!306 lt!95864 (tuple2!3535 key!828 v!309)) lt!95925)))

(declare-fun b!192771 () Bool)

(declare-fun res!91096 () Bool)

(assert (=> b!192771 (=> (not res!91096) (not e!126851))))

(assert (=> b!192771 (= res!91096 (= (getValueByKey!240 (toList!1248 lt!95925) (_1!1777 (tuple2!3535 key!828 v!309))) (Some!245 (_2!1777 (tuple2!3535 key!828 v!309)))))))

(declare-fun b!192772 () Bool)

(declare-fun contains!1362 (List!2450 tuple2!3534) Bool)

(assert (=> b!192772 (= e!126851 (contains!1362 (toList!1248 lt!95925) (tuple2!3535 key!828 v!309)))))

(assert (= (and d!56437 res!91095) b!192771))

(assert (= (and b!192771 res!91096) b!192772))

(declare-fun m!219639 () Bool)

(assert (=> d!56437 m!219639))

(declare-fun m!219641 () Bool)

(assert (=> d!56437 m!219641))

(declare-fun m!219643 () Bool)

(assert (=> d!56437 m!219643))

(declare-fun m!219645 () Bool)

(assert (=> d!56437 m!219645))

(declare-fun m!219647 () Bool)

(assert (=> b!192771 m!219647))

(declare-fun m!219649 () Bool)

(assert (=> b!192772 m!219649))

(assert (=> b!192693 d!56437))

(declare-fun b!192815 () Bool)

(declare-fun e!126885 () ListLongMap!2465)

(declare-fun call!19468 () ListLongMap!2465)

(assert (=> b!192815 (= e!126885 (+!306 call!19468 (tuple2!3535 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3773 thiss!1248))))))

(declare-fun b!192816 () Bool)

(declare-fun e!126888 () ListLongMap!2465)

(declare-fun call!19466 () ListLongMap!2465)

(assert (=> b!192816 (= e!126888 call!19466)))

(declare-fun b!192817 () Bool)

(declare-fun res!91115 () Bool)

(declare-fun e!126882 () Bool)

(assert (=> b!192817 (=> (not res!91115) (not e!126882))))

(declare-fun e!126889 () Bool)

(assert (=> b!192817 (= res!91115 e!126889)))

(declare-fun res!91120 () Bool)

(assert (=> b!192817 (=> res!91120 e!126889)))

(declare-fun e!126881 () Bool)

(assert (=> b!192817 (= res!91120 (not e!126881))))

(declare-fun res!91122 () Bool)

(assert (=> b!192817 (=> (not res!91122) (not e!126881))))

(assert (=> b!192817 (= res!91122 (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(declare-fun b!192818 () Bool)

(declare-fun e!126887 () Bool)

(declare-fun e!126880 () Bool)

(assert (=> b!192818 (= e!126887 e!126880)))

(declare-fun res!91116 () Bool)

(declare-fun call!19467 () Bool)

(assert (=> b!192818 (= res!91116 call!19467)))

(assert (=> b!192818 (=> (not res!91116) (not e!126880))))

(declare-fun b!192819 () Bool)

(declare-fun lt!95975 () ListLongMap!2465)

(declare-fun apply!184 (ListLongMap!2465 (_ BitVec 64)) V!5603)

(assert (=> b!192819 (= e!126880 (= (apply!184 lt!95975 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3773 thiss!1248)))))

(declare-fun b!192820 () Bool)

(declare-fun e!126890 () Unit!5829)

(declare-fun Unit!5836 () Unit!5829)

(assert (=> b!192820 (= e!126890 Unit!5836)))

(declare-fun b!192821 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!192821 (= e!126881 (validKeyInArray!0 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192822 () Bool)

(assert (=> b!192822 (= e!126887 (not call!19467))))

(declare-fun b!192823 () Bool)

(declare-fun e!126878 () ListLongMap!2465)

(assert (=> b!192823 (= e!126878 call!19466)))

(declare-fun b!192824 () Bool)

(declare-fun e!126879 () Bool)

(assert (=> b!192824 (= e!126879 (validKeyInArray!0 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19462 () Bool)

(declare-fun call!19469 () Bool)

(assert (=> bm!19462 (= call!19469 (contains!1360 lt!95975 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!19465 () ListLongMap!2465)

(declare-fun call!19471 () ListLongMap!2465)

(declare-fun c!34769 () Bool)

(declare-fun call!19470 () ListLongMap!2465)

(declare-fun c!34768 () Bool)

(declare-fun bm!19463 () Bool)

(assert (=> bm!19463 (= call!19468 (+!306 (ite c!34768 call!19470 (ite c!34769 call!19465 call!19471)) (ite (or c!34768 c!34769) (tuple2!3535 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3773 thiss!1248)) (tuple2!3535 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3773 thiss!1248)))))))

(declare-fun b!192825 () Bool)

(declare-fun e!126884 () Bool)

(assert (=> b!192825 (= e!126884 (not call!19469))))

(declare-fun b!192826 () Bool)

(assert (=> b!192826 (= e!126885 e!126888)))

(assert (=> b!192826 (= c!34769 (and (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19464 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!214 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 32) Int) ListLongMap!2465)

(assert (=> bm!19464 (= call!19470 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun bm!19465 () Bool)

(assert (=> bm!19465 (= call!19467 (contains!1360 lt!95975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192827 () Bool)

(assert (=> b!192827 (= e!126882 e!126884)))

(declare-fun c!34770 () Bool)

(assert (=> b!192827 (= c!34770 (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19466 () Bool)

(assert (=> bm!19466 (= call!19466 call!19468)))

(declare-fun b!192828 () Bool)

(declare-fun e!126886 () Bool)

(assert (=> b!192828 (= e!126886 (= (apply!184 lt!95975 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3773 thiss!1248)))))

(declare-fun b!192829 () Bool)

(declare-fun lt!95971 () Unit!5829)

(assert (=> b!192829 (= e!126890 lt!95971)))

(declare-fun lt!95981 () ListLongMap!2465)

(assert (=> b!192829 (= lt!95981 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95973 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95973 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95988 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95988 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95984 () Unit!5829)

(declare-fun addStillContains!160 (ListLongMap!2465 (_ BitVec 64) V!5603 (_ BitVec 64)) Unit!5829)

(assert (=> b!192829 (= lt!95984 (addStillContains!160 lt!95981 lt!95973 (zeroValue!3773 thiss!1248) lt!95988))))

(assert (=> b!192829 (contains!1360 (+!306 lt!95981 (tuple2!3535 lt!95973 (zeroValue!3773 thiss!1248))) lt!95988)))

(declare-fun lt!95970 () Unit!5829)

(assert (=> b!192829 (= lt!95970 lt!95984)))

(declare-fun lt!95982 () ListLongMap!2465)

(assert (=> b!192829 (= lt!95982 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95974 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95974 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95990 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95990 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95972 () Unit!5829)

(declare-fun addApplyDifferent!160 (ListLongMap!2465 (_ BitVec 64) V!5603 (_ BitVec 64)) Unit!5829)

(assert (=> b!192829 (= lt!95972 (addApplyDifferent!160 lt!95982 lt!95974 (minValue!3773 thiss!1248) lt!95990))))

(assert (=> b!192829 (= (apply!184 (+!306 lt!95982 (tuple2!3535 lt!95974 (minValue!3773 thiss!1248))) lt!95990) (apply!184 lt!95982 lt!95990))))

(declare-fun lt!95976 () Unit!5829)

(assert (=> b!192829 (= lt!95976 lt!95972)))

(declare-fun lt!95989 () ListLongMap!2465)

(assert (=> b!192829 (= lt!95989 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95977 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95977 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95978 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95978 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95985 () Unit!5829)

(assert (=> b!192829 (= lt!95985 (addApplyDifferent!160 lt!95989 lt!95977 (zeroValue!3773 thiss!1248) lt!95978))))

(assert (=> b!192829 (= (apply!184 (+!306 lt!95989 (tuple2!3535 lt!95977 (zeroValue!3773 thiss!1248))) lt!95978) (apply!184 lt!95989 lt!95978))))

(declare-fun lt!95991 () Unit!5829)

(assert (=> b!192829 (= lt!95991 lt!95985)))

(declare-fun lt!95979 () ListLongMap!2465)

(assert (=> b!192829 (= lt!95979 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95980 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95980 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!95987 () (_ BitVec 64))

(assert (=> b!192829 (= lt!95987 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192829 (= lt!95971 (addApplyDifferent!160 lt!95979 lt!95980 (minValue!3773 thiss!1248) lt!95987))))

(assert (=> b!192829 (= (apply!184 (+!306 lt!95979 (tuple2!3535 lt!95980 (minValue!3773 thiss!1248))) lt!95987) (apply!184 lt!95979 lt!95987))))

(declare-fun b!192830 () Bool)

(declare-fun c!34766 () Bool)

(assert (=> b!192830 (= c!34766 (and (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!192830 (= e!126888 e!126878)))

(declare-fun b!192831 () Bool)

(declare-fun res!91123 () Bool)

(assert (=> b!192831 (=> (not res!91123) (not e!126882))))

(assert (=> b!192831 (= res!91123 e!126887)))

(declare-fun c!34767 () Bool)

(assert (=> b!192831 (= c!34767 (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!192832 () Bool)

(assert (=> b!192832 (= e!126884 e!126886)))

(declare-fun res!91117 () Bool)

(assert (=> b!192832 (= res!91117 call!19469)))

(assert (=> b!192832 (=> (not res!91117) (not e!126886))))

(declare-fun b!192833 () Bool)

(assert (=> b!192833 (= e!126878 call!19471)))

(declare-fun d!56439 () Bool)

(assert (=> d!56439 e!126882))

(declare-fun res!91118 () Bool)

(assert (=> d!56439 (=> (not res!91118) (not e!126882))))

(assert (=> d!56439 (= res!91118 (or (bvsge #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))))

(declare-fun lt!95983 () ListLongMap!2465)

(assert (=> d!56439 (= lt!95975 lt!95983)))

(declare-fun lt!95986 () Unit!5829)

(assert (=> d!56439 (= lt!95986 e!126890)))

(declare-fun c!34771 () Bool)

(assert (=> d!56439 (= c!34771 e!126879)))

(declare-fun res!91121 () Bool)

(assert (=> d!56439 (=> (not res!91121) (not e!126879))))

(assert (=> d!56439 (= res!91121 (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(assert (=> d!56439 (= lt!95983 e!126885)))

(assert (=> d!56439 (= c!34768 (and (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56439 (validMask!0 (mask!9171 thiss!1248))))

(assert (=> d!56439 (= (getCurrentListMap!891 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)) lt!95975)))

(declare-fun bm!19467 () Bool)

(assert (=> bm!19467 (= call!19465 call!19470)))

(declare-fun bm!19468 () Bool)

(assert (=> bm!19468 (= call!19471 call!19465)))

(declare-fun b!192834 () Bool)

(declare-fun e!126883 () Bool)

(declare-fun get!2226 (ValueCell!1890 V!5603) V!5603)

(declare-fun dynLambda!522 (Int (_ BitVec 64)) V!5603)

(assert (=> b!192834 (= e!126883 (= (apply!184 lt!95975 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)) (get!2226 (select (arr!3851 (_values!3915 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!522 (defaultEntry!3932 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!192834 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4175 (_values!3915 thiss!1248))))))

(assert (=> b!192834 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(declare-fun b!192835 () Bool)

(assert (=> b!192835 (= e!126889 e!126883)))

(declare-fun res!91119 () Bool)

(assert (=> b!192835 (=> (not res!91119) (not e!126883))))

(assert (=> b!192835 (= res!91119 (contains!1360 lt!95975 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192835 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(assert (= (and d!56439 c!34768) b!192815))

(assert (= (and d!56439 (not c!34768)) b!192826))

(assert (= (and b!192826 c!34769) b!192816))

(assert (= (and b!192826 (not c!34769)) b!192830))

(assert (= (and b!192830 c!34766) b!192823))

(assert (= (and b!192830 (not c!34766)) b!192833))

(assert (= (or b!192823 b!192833) bm!19468))

(assert (= (or b!192816 bm!19468) bm!19467))

(assert (= (or b!192816 b!192823) bm!19466))

(assert (= (or b!192815 bm!19467) bm!19464))

(assert (= (or b!192815 bm!19466) bm!19463))

(assert (= (and d!56439 res!91121) b!192824))

(assert (= (and d!56439 c!34771) b!192829))

(assert (= (and d!56439 (not c!34771)) b!192820))

(assert (= (and d!56439 res!91118) b!192817))

(assert (= (and b!192817 res!91122) b!192821))

(assert (= (and b!192817 (not res!91120)) b!192835))

(assert (= (and b!192835 res!91119) b!192834))

(assert (= (and b!192817 res!91115) b!192831))

(assert (= (and b!192831 c!34767) b!192818))

(assert (= (and b!192831 (not c!34767)) b!192822))

(assert (= (and b!192818 res!91116) b!192819))

(assert (= (or b!192818 b!192822) bm!19465))

(assert (= (and b!192831 res!91123) b!192827))

(assert (= (and b!192827 c!34770) b!192832))

(assert (= (and b!192827 (not c!34770)) b!192825))

(assert (= (and b!192832 res!91117) b!192828))

(assert (= (or b!192832 b!192825) bm!19462))

(declare-fun b_lambda!7477 () Bool)

(assert (=> (not b_lambda!7477) (not b!192834)))

(declare-fun t!7379 () Bool)

(declare-fun tb!2887 () Bool)

(assert (=> (and b!192690 (= (defaultEntry!3932 thiss!1248) (defaultEntry!3932 thiss!1248)) t!7379) tb!2887))

(declare-fun result!4923 () Bool)

(assert (=> tb!2887 (= result!4923 tp_is_empty!4467)))

(assert (=> b!192834 t!7379))

(declare-fun b_and!11415 () Bool)

(assert (= b_and!11411 (and (=> t!7379 result!4923) b_and!11415)))

(declare-fun m!219651 () Bool)

(assert (=> bm!19465 m!219651))

(declare-fun m!219653 () Bool)

(assert (=> b!192829 m!219653))

(declare-fun m!219655 () Bool)

(assert (=> b!192829 m!219655))

(declare-fun m!219657 () Bool)

(assert (=> b!192829 m!219657))

(declare-fun m!219659 () Bool)

(assert (=> b!192829 m!219659))

(declare-fun m!219661 () Bool)

(assert (=> b!192829 m!219661))

(assert (=> b!192829 m!219659))

(declare-fun m!219663 () Bool)

(assert (=> b!192829 m!219663))

(declare-fun m!219665 () Bool)

(assert (=> b!192829 m!219665))

(declare-fun m!219667 () Bool)

(assert (=> b!192829 m!219667))

(declare-fun m!219669 () Bool)

(assert (=> b!192829 m!219669))

(declare-fun m!219671 () Bool)

(assert (=> b!192829 m!219671))

(declare-fun m!219673 () Bool)

(assert (=> b!192829 m!219673))

(declare-fun m!219675 () Bool)

(assert (=> b!192829 m!219675))

(assert (=> b!192829 m!219663))

(assert (=> b!192829 m!219671))

(declare-fun m!219677 () Bool)

(assert (=> b!192829 m!219677))

(assert (=> b!192829 m!219657))

(declare-fun m!219679 () Bool)

(assert (=> b!192829 m!219679))

(declare-fun m!219681 () Bool)

(assert (=> b!192829 m!219681))

(declare-fun m!219683 () Bool)

(assert (=> b!192829 m!219683))

(declare-fun m!219685 () Bool)

(assert (=> b!192829 m!219685))

(assert (=> b!192835 m!219681))

(assert (=> b!192835 m!219681))

(declare-fun m!219687 () Bool)

(assert (=> b!192835 m!219687))

(assert (=> d!56439 m!219569))

(declare-fun m!219689 () Bool)

(assert (=> b!192834 m!219689))

(assert (=> b!192834 m!219681))

(declare-fun m!219691 () Bool)

(assert (=> b!192834 m!219691))

(assert (=> b!192834 m!219689))

(declare-fun m!219693 () Bool)

(assert (=> b!192834 m!219693))

(declare-fun m!219695 () Bool)

(assert (=> b!192834 m!219695))

(assert (=> b!192834 m!219693))

(assert (=> b!192834 m!219681))

(declare-fun m!219697 () Bool)

(assert (=> b!192815 m!219697))

(declare-fun m!219699 () Bool)

(assert (=> bm!19462 m!219699))

(declare-fun m!219701 () Bool)

(assert (=> bm!19463 m!219701))

(assert (=> bm!19464 m!219655))

(declare-fun m!219703 () Bool)

(assert (=> b!192819 m!219703))

(declare-fun m!219705 () Bool)

(assert (=> b!192828 m!219705))

(assert (=> b!192821 m!219681))

(assert (=> b!192821 m!219681))

(declare-fun m!219707 () Bool)

(assert (=> b!192821 m!219707))

(assert (=> b!192824 m!219681))

(assert (=> b!192824 m!219681))

(assert (=> b!192824 m!219707))

(assert (=> b!192693 d!56439))

(declare-fun d!56441 () Bool)

(assert (=> d!56441 (= (validMask!0 (mask!9171 thiss!1248)) (and (or (= (mask!9171 thiss!1248) #b00000000000000000000000000000111) (= (mask!9171 thiss!1248) #b00000000000000000000000000001111) (= (mask!9171 thiss!1248) #b00000000000000000000000000011111) (= (mask!9171 thiss!1248) #b00000000000000000000000000111111) (= (mask!9171 thiss!1248) #b00000000000000000000000001111111) (= (mask!9171 thiss!1248) #b00000000000000000000000011111111) (= (mask!9171 thiss!1248) #b00000000000000000000000111111111) (= (mask!9171 thiss!1248) #b00000000000000000000001111111111) (= (mask!9171 thiss!1248) #b00000000000000000000011111111111) (= (mask!9171 thiss!1248) #b00000000000000000000111111111111) (= (mask!9171 thiss!1248) #b00000000000000000001111111111111) (= (mask!9171 thiss!1248) #b00000000000000000011111111111111) (= (mask!9171 thiss!1248) #b00000000000000000111111111111111) (= (mask!9171 thiss!1248) #b00000000000000001111111111111111) (= (mask!9171 thiss!1248) #b00000000000000011111111111111111) (= (mask!9171 thiss!1248) #b00000000000000111111111111111111) (= (mask!9171 thiss!1248) #b00000000000001111111111111111111) (= (mask!9171 thiss!1248) #b00000000000011111111111111111111) (= (mask!9171 thiss!1248) #b00000000000111111111111111111111) (= (mask!9171 thiss!1248) #b00000000001111111111111111111111) (= (mask!9171 thiss!1248) #b00000000011111111111111111111111) (= (mask!9171 thiss!1248) #b00000000111111111111111111111111) (= (mask!9171 thiss!1248) #b00000001111111111111111111111111) (= (mask!9171 thiss!1248) #b00000011111111111111111111111111) (= (mask!9171 thiss!1248) #b00000111111111111111111111111111) (= (mask!9171 thiss!1248) #b00001111111111111111111111111111) (= (mask!9171 thiss!1248) #b00011111111111111111111111111111) (= (mask!9171 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9171 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!192693 d!56441))

(declare-fun b!192838 () Bool)

(declare-fun e!126898 () ListLongMap!2465)

(declare-fun call!19475 () ListLongMap!2465)

(assert (=> b!192838 (= e!126898 (+!306 call!19475 (tuple2!3535 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3773 thiss!1248))))))

(declare-fun b!192839 () Bool)

(declare-fun e!126901 () ListLongMap!2465)

(declare-fun call!19473 () ListLongMap!2465)

(assert (=> b!192839 (= e!126901 call!19473)))

(declare-fun b!192840 () Bool)

(declare-fun res!91124 () Bool)

(declare-fun e!126895 () Bool)

(assert (=> b!192840 (=> (not res!91124) (not e!126895))))

(declare-fun e!126902 () Bool)

(assert (=> b!192840 (= res!91124 e!126902)))

(declare-fun res!91129 () Bool)

(assert (=> b!192840 (=> res!91129 e!126902)))

(declare-fun e!126894 () Bool)

(assert (=> b!192840 (= res!91129 (not e!126894))))

(declare-fun res!91131 () Bool)

(assert (=> b!192840 (=> (not res!91131) (not e!126894))))

(assert (=> b!192840 (= res!91131 (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(declare-fun b!192841 () Bool)

(declare-fun e!126900 () Bool)

(declare-fun e!126893 () Bool)

(assert (=> b!192841 (= e!126900 e!126893)))

(declare-fun res!91125 () Bool)

(declare-fun call!19474 () Bool)

(assert (=> b!192841 (= res!91125 call!19474)))

(assert (=> b!192841 (=> (not res!91125) (not e!126893))))

(declare-fun b!192842 () Bool)

(declare-fun lt!95997 () ListLongMap!2465)

(assert (=> b!192842 (= e!126893 (= (apply!184 lt!95997 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3773 thiss!1248)))))

(declare-fun b!192843 () Bool)

(declare-fun e!126903 () Unit!5829)

(declare-fun Unit!5837 () Unit!5829)

(assert (=> b!192843 (= e!126903 Unit!5837)))

(declare-fun b!192844 () Bool)

(assert (=> b!192844 (= e!126894 (validKeyInArray!0 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!192845 () Bool)

(assert (=> b!192845 (= e!126900 (not call!19474))))

(declare-fun b!192846 () Bool)

(declare-fun e!126891 () ListLongMap!2465)

(assert (=> b!192846 (= e!126891 call!19473)))

(declare-fun b!192847 () Bool)

(declare-fun e!126892 () Bool)

(assert (=> b!192847 (= e!126892 (validKeyInArray!0 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19469 () Bool)

(declare-fun call!19476 () Bool)

(assert (=> bm!19469 (= call!19476 (contains!1360 lt!95997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!34775 () Bool)

(declare-fun c!34774 () Bool)

(declare-fun call!19472 () ListLongMap!2465)

(declare-fun bm!19470 () Bool)

(declare-fun call!19478 () ListLongMap!2465)

(declare-fun call!19477 () ListLongMap!2465)

(assert (=> bm!19470 (= call!19475 (+!306 (ite c!34774 call!19477 (ite c!34775 call!19472 call!19478)) (ite (or c!34774 c!34775) (tuple2!3535 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3773 thiss!1248)) (tuple2!3535 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3773 thiss!1248)))))))

(declare-fun b!192848 () Bool)

(declare-fun e!126897 () Bool)

(assert (=> b!192848 (= e!126897 (not call!19476))))

(declare-fun b!192849 () Bool)

(assert (=> b!192849 (= e!126898 e!126901)))

(assert (=> b!192849 (= c!34775 (and (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19471 () Bool)

(assert (=> bm!19471 (= call!19477 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun bm!19472 () Bool)

(assert (=> bm!19472 (= call!19474 (contains!1360 lt!95997 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!192850 () Bool)

(assert (=> b!192850 (= e!126895 e!126897)))

(declare-fun c!34776 () Bool)

(assert (=> b!192850 (= c!34776 (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19473 () Bool)

(assert (=> bm!19473 (= call!19473 call!19475)))

(declare-fun b!192851 () Bool)

(declare-fun e!126899 () Bool)

(assert (=> b!192851 (= e!126899 (= (apply!184 lt!95997 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3773 thiss!1248)))))

(declare-fun b!192852 () Bool)

(declare-fun lt!95993 () Unit!5829)

(assert (=> b!192852 (= e!126903 lt!95993)))

(declare-fun lt!96003 () ListLongMap!2465)

(assert (=> b!192852 (= lt!96003 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95995 () (_ BitVec 64))

(assert (=> b!192852 (= lt!95995 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96010 () (_ BitVec 64))

(assert (=> b!192852 (= lt!96010 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96006 () Unit!5829)

(assert (=> b!192852 (= lt!96006 (addStillContains!160 lt!96003 lt!95995 (zeroValue!3773 thiss!1248) lt!96010))))

(assert (=> b!192852 (contains!1360 (+!306 lt!96003 (tuple2!3535 lt!95995 (zeroValue!3773 thiss!1248))) lt!96010)))

(declare-fun lt!95992 () Unit!5829)

(assert (=> b!192852 (= lt!95992 lt!96006)))

(declare-fun lt!96004 () ListLongMap!2465)

(assert (=> b!192852 (= lt!96004 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95996 () (_ BitVec 64))

(assert (=> b!192852 (= lt!95996 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96012 () (_ BitVec 64))

(assert (=> b!192852 (= lt!96012 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!95994 () Unit!5829)

(assert (=> b!192852 (= lt!95994 (addApplyDifferent!160 lt!96004 lt!95996 (minValue!3773 thiss!1248) lt!96012))))

(assert (=> b!192852 (= (apply!184 (+!306 lt!96004 (tuple2!3535 lt!95996 (minValue!3773 thiss!1248))) lt!96012) (apply!184 lt!96004 lt!96012))))

(declare-fun lt!95998 () Unit!5829)

(assert (=> b!192852 (= lt!95998 lt!95994)))

(declare-fun lt!96011 () ListLongMap!2465)

(assert (=> b!192852 (= lt!96011 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!95999 () (_ BitVec 64))

(assert (=> b!192852 (= lt!95999 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96000 () (_ BitVec 64))

(assert (=> b!192852 (= lt!96000 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96007 () Unit!5829)

(assert (=> b!192852 (= lt!96007 (addApplyDifferent!160 lt!96011 lt!95999 (zeroValue!3773 thiss!1248) lt!96000))))

(assert (=> b!192852 (= (apply!184 (+!306 lt!96011 (tuple2!3535 lt!95999 (zeroValue!3773 thiss!1248))) lt!96000) (apply!184 lt!96011 lt!96000))))

(declare-fun lt!96013 () Unit!5829)

(assert (=> b!192852 (= lt!96013 lt!96007)))

(declare-fun lt!96001 () ListLongMap!2465)

(assert (=> b!192852 (= lt!96001 (getCurrentListMapNoExtraKeys!214 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)))))

(declare-fun lt!96002 () (_ BitVec 64))

(assert (=> b!192852 (= lt!96002 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96009 () (_ BitVec 64))

(assert (=> b!192852 (= lt!96009 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192852 (= lt!95993 (addApplyDifferent!160 lt!96001 lt!96002 (minValue!3773 thiss!1248) lt!96009))))

(assert (=> b!192852 (= (apply!184 (+!306 lt!96001 (tuple2!3535 lt!96002 (minValue!3773 thiss!1248))) lt!96009) (apply!184 lt!96001 lt!96009))))

(declare-fun b!192853 () Bool)

(declare-fun c!34772 () Bool)

(assert (=> b!192853 (= c!34772 (and (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!192853 (= e!126901 e!126891)))

(declare-fun b!192854 () Bool)

(declare-fun res!91132 () Bool)

(assert (=> b!192854 (=> (not res!91132) (not e!126895))))

(assert (=> b!192854 (= res!91132 e!126900)))

(declare-fun c!34773 () Bool)

(assert (=> b!192854 (= c!34773 (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!192855 () Bool)

(assert (=> b!192855 (= e!126897 e!126899)))

(declare-fun res!91126 () Bool)

(assert (=> b!192855 (= res!91126 call!19476)))

(assert (=> b!192855 (=> (not res!91126) (not e!126899))))

(declare-fun b!192856 () Bool)

(assert (=> b!192856 (= e!126891 call!19478)))

(declare-fun d!56443 () Bool)

(assert (=> d!56443 e!126895))

(declare-fun res!91127 () Bool)

(assert (=> d!56443 (=> (not res!91127) (not e!126895))))

(assert (=> d!56443 (= res!91127 (or (bvsge #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))))

(declare-fun lt!96005 () ListLongMap!2465)

(assert (=> d!56443 (= lt!95997 lt!96005)))

(declare-fun lt!96008 () Unit!5829)

(assert (=> d!56443 (= lt!96008 e!126903)))

(declare-fun c!34777 () Bool)

(assert (=> d!56443 (= c!34777 e!126892)))

(declare-fun res!91130 () Bool)

(assert (=> d!56443 (=> (not res!91130) (not e!126892))))

(assert (=> d!56443 (= res!91130 (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(assert (=> d!56443 (= lt!96005 e!126898)))

(assert (=> d!56443 (= c!34774 (and (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3669 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56443 (validMask!0 (mask!9171 thiss!1248))))

(assert (=> d!56443 (= (getCurrentListMap!891 (_keys!5918 thiss!1248) (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3932 thiss!1248)) lt!95997)))

(declare-fun bm!19474 () Bool)

(assert (=> bm!19474 (= call!19472 call!19477)))

(declare-fun bm!19475 () Bool)

(assert (=> bm!19475 (= call!19478 call!19472)))

(declare-fun e!126896 () Bool)

(declare-fun b!192857 () Bool)

(assert (=> b!192857 (= e!126896 (= (apply!184 lt!95997 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)) (get!2226 (select (arr!3851 (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!522 (defaultEntry!3932 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!192857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4175 (array!8179 (store (arr!3851 (_values!3915 thiss!1248)) (index!4943 lt!95860) (ValueCellFull!1890 v!309)) (size!4175 (_values!3915 thiss!1248))))))))

(assert (=> b!192857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(declare-fun b!192858 () Bool)

(assert (=> b!192858 (= e!126902 e!126896)))

(declare-fun res!91128 () Bool)

(assert (=> b!192858 (=> (not res!91128) (not e!126896))))

(assert (=> b!192858 (= res!91128 (contains!1360 lt!95997 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!192858 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(assert (= (and d!56443 c!34774) b!192838))

(assert (= (and d!56443 (not c!34774)) b!192849))

(assert (= (and b!192849 c!34775) b!192839))

(assert (= (and b!192849 (not c!34775)) b!192853))

(assert (= (and b!192853 c!34772) b!192846))

(assert (= (and b!192853 (not c!34772)) b!192856))

(assert (= (or b!192846 b!192856) bm!19475))

(assert (= (or b!192839 bm!19475) bm!19474))

(assert (= (or b!192839 b!192846) bm!19473))

(assert (= (or b!192838 bm!19474) bm!19471))

(assert (= (or b!192838 bm!19473) bm!19470))

(assert (= (and d!56443 res!91130) b!192847))

(assert (= (and d!56443 c!34777) b!192852))

(assert (= (and d!56443 (not c!34777)) b!192843))

(assert (= (and d!56443 res!91127) b!192840))

(assert (= (and b!192840 res!91131) b!192844))

(assert (= (and b!192840 (not res!91129)) b!192858))

(assert (= (and b!192858 res!91128) b!192857))

(assert (= (and b!192840 res!91124) b!192854))

(assert (= (and b!192854 c!34773) b!192841))

(assert (= (and b!192854 (not c!34773)) b!192845))

(assert (= (and b!192841 res!91125) b!192842))

(assert (= (or b!192841 b!192845) bm!19472))

(assert (= (and b!192854 res!91132) b!192850))

(assert (= (and b!192850 c!34776) b!192855))

(assert (= (and b!192850 (not c!34776)) b!192848))

(assert (= (and b!192855 res!91126) b!192851))

(assert (= (or b!192855 b!192848) bm!19469))

(declare-fun b_lambda!7479 () Bool)

(assert (=> (not b_lambda!7479) (not b!192857)))

(assert (=> b!192857 t!7379))

(declare-fun b_and!11417 () Bool)

(assert (= b_and!11415 (and (=> t!7379 result!4923) b_and!11417)))

(declare-fun m!219709 () Bool)

(assert (=> bm!19472 m!219709))

(declare-fun m!219711 () Bool)

(assert (=> b!192852 m!219711))

(declare-fun m!219713 () Bool)

(assert (=> b!192852 m!219713))

(declare-fun m!219715 () Bool)

(assert (=> b!192852 m!219715))

(declare-fun m!219717 () Bool)

(assert (=> b!192852 m!219717))

(declare-fun m!219719 () Bool)

(assert (=> b!192852 m!219719))

(assert (=> b!192852 m!219717))

(declare-fun m!219721 () Bool)

(assert (=> b!192852 m!219721))

(declare-fun m!219723 () Bool)

(assert (=> b!192852 m!219723))

(declare-fun m!219725 () Bool)

(assert (=> b!192852 m!219725))

(declare-fun m!219727 () Bool)

(assert (=> b!192852 m!219727))

(declare-fun m!219729 () Bool)

(assert (=> b!192852 m!219729))

(declare-fun m!219731 () Bool)

(assert (=> b!192852 m!219731))

(declare-fun m!219733 () Bool)

(assert (=> b!192852 m!219733))

(assert (=> b!192852 m!219721))

(assert (=> b!192852 m!219729))

(declare-fun m!219735 () Bool)

(assert (=> b!192852 m!219735))

(assert (=> b!192852 m!219715))

(declare-fun m!219737 () Bool)

(assert (=> b!192852 m!219737))

(assert (=> b!192852 m!219681))

(declare-fun m!219739 () Bool)

(assert (=> b!192852 m!219739))

(declare-fun m!219741 () Bool)

(assert (=> b!192852 m!219741))

(assert (=> b!192858 m!219681))

(assert (=> b!192858 m!219681))

(declare-fun m!219743 () Bool)

(assert (=> b!192858 m!219743))

(assert (=> d!56443 m!219569))

(declare-fun m!219745 () Bool)

(assert (=> b!192857 m!219745))

(assert (=> b!192857 m!219681))

(declare-fun m!219747 () Bool)

(assert (=> b!192857 m!219747))

(assert (=> b!192857 m!219745))

(assert (=> b!192857 m!219693))

(declare-fun m!219749 () Bool)

(assert (=> b!192857 m!219749))

(assert (=> b!192857 m!219693))

(assert (=> b!192857 m!219681))

(declare-fun m!219751 () Bool)

(assert (=> b!192838 m!219751))

(declare-fun m!219753 () Bool)

(assert (=> bm!19469 m!219753))

(declare-fun m!219755 () Bool)

(assert (=> bm!19470 m!219755))

(assert (=> bm!19471 m!219713))

(declare-fun m!219757 () Bool)

(assert (=> b!192842 m!219757))

(declare-fun m!219759 () Bool)

(assert (=> b!192851 m!219759))

(assert (=> b!192844 m!219681))

(assert (=> b!192844 m!219681))

(assert (=> b!192844 m!219707))

(assert (=> b!192847 m!219681))

(assert (=> b!192847 m!219681))

(assert (=> b!192847 m!219707))

(assert (=> b!192693 d!56443))

(declare-fun d!56445 () Bool)

(assert (=> d!56445 (= (array_inv!2487 (_keys!5918 thiss!1248)) (bvsge (size!4174 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192690 d!56445))

(declare-fun d!56447 () Bool)

(assert (=> d!56447 (= (array_inv!2488 (_values!3915 thiss!1248)) (bvsge (size!4175 (_values!3915 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!192690 d!56447))

(declare-fun b!192875 () Bool)

(declare-fun res!91144 () Bool)

(declare-fun e!126913 () Bool)

(assert (=> b!192875 (=> (not res!91144) (not e!126913))))

(declare-fun call!19484 () Bool)

(assert (=> b!192875 (= res!91144 call!19484)))

(declare-fun e!126914 () Bool)

(assert (=> b!192875 (= e!126914 e!126913)))

(declare-fun b!192876 () Bool)

(declare-fun e!126915 () Bool)

(declare-fun call!19483 () Bool)

(assert (=> b!192876 (= e!126915 (not call!19483))))

(declare-fun b!192877 () Bool)

(assert (=> b!192877 (= e!126913 (not call!19483))))

(declare-fun bm!19480 () Bool)

(declare-fun arrayContainsKey!0 (array!8176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19480 (= call!19483 (arrayContainsKey!0 (_keys!5918 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!192879 () Bool)

(declare-fun res!91142 () Bool)

(assert (=> b!192879 (=> (not res!91142) (not e!126913))))

(declare-fun lt!96018 () SeekEntryResult!693)

(assert (=> b!192879 (= res!91142 (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4945 lt!96018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192879 (and (bvsge (index!4945 lt!96018) #b00000000000000000000000000000000) (bvslt (index!4945 lt!96018) (size!4174 (_keys!5918 thiss!1248))))))

(declare-fun b!192880 () Bool)

(assert (=> b!192880 (and (bvsge (index!4942 lt!96018) #b00000000000000000000000000000000) (bvslt (index!4942 lt!96018) (size!4174 (_keys!5918 thiss!1248))))))

(declare-fun res!91143 () Bool)

(assert (=> b!192880 (= res!91143 (= (select (arr!3850 (_keys!5918 thiss!1248)) (index!4942 lt!96018)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!192880 (=> (not res!91143) (not e!126915))))

(declare-fun b!192881 () Bool)

(declare-fun e!126912 () Bool)

(assert (=> b!192881 (= e!126912 e!126914)))

(declare-fun c!34783 () Bool)

(assert (=> b!192881 (= c!34783 ((_ is MissingVacant!693) lt!96018))))

(declare-fun bm!19481 () Bool)

(declare-fun c!34782 () Bool)

(assert (=> bm!19481 (= call!19484 (inRange!0 (ite c!34782 (index!4942 lt!96018) (index!4945 lt!96018)) (mask!9171 thiss!1248)))))

(declare-fun b!192882 () Bool)

(assert (=> b!192882 (= e!126912 e!126915)))

(declare-fun res!91141 () Bool)

(assert (=> b!192882 (= res!91141 call!19484)))

(assert (=> b!192882 (=> (not res!91141) (not e!126915))))

(declare-fun d!56449 () Bool)

(assert (=> d!56449 e!126912))

(assert (=> d!56449 (= c!34782 ((_ is MissingZero!693) lt!96018))))

(assert (=> d!56449 (= lt!96018 (seekEntryOrOpen!0 key!828 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun lt!96019 () Unit!5829)

(declare-fun choose!1061 (array!8176 array!8178 (_ BitVec 32) (_ BitVec 32) V!5603 V!5603 (_ BitVec 64) Int) Unit!5829)

(assert (=> d!56449 (= lt!96019 (choose!1061 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) key!828 (defaultEntry!3932 thiss!1248)))))

(assert (=> d!56449 (validMask!0 (mask!9171 thiss!1248))))

(assert (=> d!56449 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!184 (_keys!5918 thiss!1248) (_values!3915 thiss!1248) (mask!9171 thiss!1248) (extraKeys!3669 thiss!1248) (zeroValue!3773 thiss!1248) (minValue!3773 thiss!1248) key!828 (defaultEntry!3932 thiss!1248)) lt!96019)))

(declare-fun b!192878 () Bool)

(assert (=> b!192878 (= e!126914 ((_ is Undefined!693) lt!96018))))

(assert (= (and d!56449 c!34782) b!192882))

(assert (= (and d!56449 (not c!34782)) b!192881))

(assert (= (and b!192882 res!91141) b!192880))

(assert (= (and b!192880 res!91143) b!192876))

(assert (= (and b!192881 c!34783) b!192875))

(assert (= (and b!192881 (not c!34783)) b!192878))

(assert (= (and b!192875 res!91144) b!192879))

(assert (= (and b!192879 res!91142) b!192877))

(assert (= (or b!192882 b!192875) bm!19481))

(assert (= (or b!192876 b!192877) bm!19480))

(declare-fun m!219761 () Bool)

(assert (=> b!192880 m!219761))

(assert (=> d!56449 m!219539))

(declare-fun m!219763 () Bool)

(assert (=> d!56449 m!219763))

(assert (=> d!56449 m!219569))

(declare-fun m!219765 () Bool)

(assert (=> bm!19481 m!219765))

(declare-fun m!219767 () Bool)

(assert (=> bm!19480 m!219767))

(declare-fun m!219769 () Bool)

(assert (=> b!192879 m!219769))

(assert (=> b!192694 d!56449))

(declare-fun d!56451 () Bool)

(declare-fun res!91151 () Bool)

(declare-fun e!126918 () Bool)

(assert (=> d!56451 (=> (not res!91151) (not e!126918))))

(declare-fun simpleValid!199 (LongMapFixedSize!2688) Bool)

(assert (=> d!56451 (= res!91151 (simpleValid!199 thiss!1248))))

(assert (=> d!56451 (= (valid!1095 thiss!1248) e!126918)))

(declare-fun b!192889 () Bool)

(declare-fun res!91152 () Bool)

(assert (=> b!192889 (=> (not res!91152) (not e!126918))))

(declare-fun arrayCountValidKeys!0 (array!8176 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!192889 (= res!91152 (= (arrayCountValidKeys!0 (_keys!5918 thiss!1248) #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))) (_size!1393 thiss!1248)))))

(declare-fun b!192890 () Bool)

(declare-fun res!91153 () Bool)

(assert (=> b!192890 (=> (not res!91153) (not e!126918))))

(assert (=> b!192890 (= res!91153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun b!192891 () Bool)

(declare-datatypes ((List!2452 0))(
  ( (Nil!2449) (Cons!2448 (h!3089 (_ BitVec 64)) (t!7380 List!2452)) )
))
(declare-fun arrayNoDuplicates!0 (array!8176 (_ BitVec 32) List!2452) Bool)

(assert (=> b!192891 (= e!126918 (arrayNoDuplicates!0 (_keys!5918 thiss!1248) #b00000000000000000000000000000000 Nil!2449))))

(assert (= (and d!56451 res!91151) b!192889))

(assert (= (and b!192889 res!91152) b!192890))

(assert (= (and b!192890 res!91153) b!192891))

(declare-fun m!219771 () Bool)

(assert (=> d!56451 m!219771))

(declare-fun m!219773 () Bool)

(assert (=> b!192889 m!219773))

(assert (=> b!192890 m!219571))

(declare-fun m!219775 () Bool)

(assert (=> b!192891 m!219775))

(assert (=> start!19674 d!56451))

(declare-fun b!192900 () Bool)

(declare-fun e!126926 () Bool)

(declare-fun call!19487 () Bool)

(assert (=> b!192900 (= e!126926 call!19487)))

(declare-fun b!192901 () Bool)

(declare-fun e!126925 () Bool)

(declare-fun e!126927 () Bool)

(assert (=> b!192901 (= e!126925 e!126927)))

(declare-fun c!34786 () Bool)

(assert (=> b!192901 (= c!34786 (validKeyInArray!0 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19484 () Bool)

(assert (=> bm!19484 (= call!19487 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5918 thiss!1248) (mask!9171 thiss!1248)))))

(declare-fun b!192902 () Bool)

(assert (=> b!192902 (= e!126927 e!126926)))

(declare-fun lt!96027 () (_ BitVec 64))

(assert (=> b!192902 (= lt!96027 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96028 () Unit!5829)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8176 (_ BitVec 64) (_ BitVec 32)) Unit!5829)

(assert (=> b!192902 (= lt!96028 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5918 thiss!1248) lt!96027 #b00000000000000000000000000000000))))

(assert (=> b!192902 (arrayContainsKey!0 (_keys!5918 thiss!1248) lt!96027 #b00000000000000000000000000000000)))

(declare-fun lt!96026 () Unit!5829)

(assert (=> b!192902 (= lt!96026 lt!96028)))

(declare-fun res!91159 () Bool)

(assert (=> b!192902 (= res!91159 (= (seekEntryOrOpen!0 (select (arr!3850 (_keys!5918 thiss!1248)) #b00000000000000000000000000000000) (_keys!5918 thiss!1248) (mask!9171 thiss!1248)) (Found!693 #b00000000000000000000000000000000)))))

(assert (=> b!192902 (=> (not res!91159) (not e!126926))))

(declare-fun b!192903 () Bool)

(assert (=> b!192903 (= e!126927 call!19487)))

(declare-fun d!56453 () Bool)

(declare-fun res!91158 () Bool)

(assert (=> d!56453 (=> res!91158 e!126925)))

(assert (=> d!56453 (= res!91158 (bvsge #b00000000000000000000000000000000 (size!4174 (_keys!5918 thiss!1248))))))

(assert (=> d!56453 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5918 thiss!1248) (mask!9171 thiss!1248)) e!126925)))

(assert (= (and d!56453 (not res!91158)) b!192901))

(assert (= (and b!192901 c!34786) b!192902))

(assert (= (and b!192901 (not c!34786)) b!192903))

(assert (= (and b!192902 res!91159) b!192900))

(assert (= (or b!192900 b!192903) bm!19484))

(assert (=> b!192901 m!219681))

(assert (=> b!192901 m!219681))

(assert (=> b!192901 m!219707))

(declare-fun m!219777 () Bool)

(assert (=> bm!19484 m!219777))

(assert (=> b!192902 m!219681))

(declare-fun m!219779 () Bool)

(assert (=> b!192902 m!219779))

(declare-fun m!219781 () Bool)

(assert (=> b!192902 m!219781))

(assert (=> b!192902 m!219681))

(declare-fun m!219783 () Bool)

(assert (=> b!192902 m!219783))

(assert (=> b!192691 d!56453))

(declare-fun mapNonEmpty!7727 () Bool)

(declare-fun mapRes!7727 () Bool)

(declare-fun tp!16952 () Bool)

(declare-fun e!126933 () Bool)

(assert (=> mapNonEmpty!7727 (= mapRes!7727 (and tp!16952 e!126933))))

(declare-fun mapValue!7727 () ValueCell!1890)

(declare-fun mapRest!7727 () (Array (_ BitVec 32) ValueCell!1890))

(declare-fun mapKey!7727 () (_ BitVec 32))

(assert (=> mapNonEmpty!7727 (= mapRest!7721 (store mapRest!7727 mapKey!7727 mapValue!7727))))

(declare-fun condMapEmpty!7727 () Bool)

(declare-fun mapDefault!7727 () ValueCell!1890)

(assert (=> mapNonEmpty!7721 (= condMapEmpty!7727 (= mapRest!7721 ((as const (Array (_ BitVec 32) ValueCell!1890)) mapDefault!7727)))))

(declare-fun e!126932 () Bool)

(assert (=> mapNonEmpty!7721 (= tp!16942 (and e!126932 mapRes!7727))))

(declare-fun mapIsEmpty!7727 () Bool)

(assert (=> mapIsEmpty!7727 mapRes!7727))

(declare-fun b!192911 () Bool)

(assert (=> b!192911 (= e!126932 tp_is_empty!4467)))

(declare-fun b!192910 () Bool)

(assert (=> b!192910 (= e!126933 tp_is_empty!4467)))

(assert (= (and mapNonEmpty!7721 condMapEmpty!7727) mapIsEmpty!7727))

(assert (= (and mapNonEmpty!7721 (not condMapEmpty!7727)) mapNonEmpty!7727))

(assert (= (and mapNonEmpty!7727 ((_ is ValueCellFull!1890) mapValue!7727)) b!192910))

(assert (= (and mapNonEmpty!7721 ((_ is ValueCellFull!1890) mapDefault!7727)) b!192911))

(declare-fun m!219785 () Bool)

(assert (=> mapNonEmpty!7727 m!219785))

(declare-fun b_lambda!7481 () Bool)

(assert (= b_lambda!7479 (or (and b!192690 b_free!4695) b_lambda!7481)))

(declare-fun b_lambda!7483 () Bool)

(assert (= b_lambda!7477 (or (and b!192690 b_free!4695) b_lambda!7483)))

(check-sat (not b_lambda!7481) (not d!56433) (not bm!19481) (not b!192829) (not bm!19462) (not d!56439) (not d!56429) (not b!192844) (not b!192743) (not bm!19469) (not mapNonEmpty!7727) (not b!192890) (not b!192852) (not bm!19471) (not b!192766) (not b!192771) (not bm!19463) (not d!56449) tp_is_empty!4467 (not d!56451) (not d!56437) (not bm!19464) b_and!11417 (not b!192772) (not b!192821) (not b!192847) (not bm!19465) (not b!192757) (not bm!19480) (not bm!19470) (not b!192828) (not b!192764) (not b!192753) (not b!192834) (not d!56435) (not b!192891) (not b_next!4695) (not b!192842) (not bm!19472) (not b!192851) (not b_lambda!7483) (not b!192824) (not b!192902) (not b!192901) (not b!192838) (not d!56427) (not d!56443) (not b!192857) (not b!192819) (not b!192815) (not b!192835) (not b!192889) (not bm!19484) (not b!192858))
(check-sat b_and!11417 (not b_next!4695))

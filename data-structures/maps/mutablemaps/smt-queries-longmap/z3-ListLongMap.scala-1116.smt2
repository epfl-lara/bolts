; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22956 () Bool)

(assert start!22956)

(declare-fun b!239758 () Bool)

(declare-fun b_free!6447 () Bool)

(declare-fun b_next!6447 () Bool)

(assert (=> b!239758 (= b_free!6447 (not b_next!6447))))

(declare-fun tp!22544 () Bool)

(declare-fun b_and!13431 () Bool)

(assert (=> b!239758 (= tp!22544 b_and!13431)))

(declare-fun b!239741 () Bool)

(declare-datatypes ((Unit!7365 0))(
  ( (Unit!7366) )
))
(declare-fun e!155671 () Unit!7365)

(declare-fun Unit!7367 () Unit!7365)

(assert (=> b!239741 (= e!155671 Unit!7367)))

(declare-fun lt!120880 () Unit!7365)

(declare-datatypes ((V!8059 0))(
  ( (V!8060 (val!3199 Int)) )
))
(declare-datatypes ((ValueCell!2811 0))(
  ( (ValueCellFull!2811 (v!5233 V!8059)) (EmptyCell!2811) )
))
(declare-datatypes ((array!11896 0))(
  ( (array!11897 (arr!5649 (Array (_ BitVec 32) ValueCell!2811)) (size!5990 (_ BitVec 32))) )
))
(declare-datatypes ((array!11898 0))(
  ( (array!11899 (arr!5650 (Array (_ BitVec 32) (_ BitVec 64))) (size!5991 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3522 0))(
  ( (LongMapFixedSize!3523 (defaultEntry!4446 Int) (mask!10496 (_ BitVec 32)) (extraKeys!4183 (_ BitVec 32)) (zeroValue!4287 V!8059) (minValue!4287 V!8059) (_size!1810 (_ BitVec 32)) (_keys!6548 array!11898) (_values!4429 array!11896) (_vacant!1810 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3522)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!333 (array!11898 array!11896 (_ BitVec 32) (_ BitVec 32) V!8059 V!8059 (_ BitVec 64) Int) Unit!7365)

(assert (=> b!239741 (= lt!120880 (lemmaInListMapThenSeekEntryOrOpenFindsIt!333 (_keys!6548 thiss!1504) (_values!4429 thiss!1504) (mask!10496 thiss!1504) (extraKeys!4183 thiss!1504) (zeroValue!4287 thiss!1504) (minValue!4287 thiss!1504) key!932 (defaultEntry!4446 thiss!1504)))))

(assert (=> b!239741 false))

(declare-fun b!239742 () Bool)

(declare-fun e!155669 () Bool)

(declare-fun e!155675 () Bool)

(declare-fun mapRes!10695 () Bool)

(assert (=> b!239742 (= e!155669 (and e!155675 mapRes!10695))))

(declare-fun condMapEmpty!10695 () Bool)

(declare-fun mapDefault!10695 () ValueCell!2811)

(assert (=> b!239742 (= condMapEmpty!10695 (= (arr!5649 (_values!4429 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2811)) mapDefault!10695)))))

(declare-fun b!239743 () Bool)

(declare-fun e!155672 () Bool)

(declare-fun call!22300 () Bool)

(assert (=> b!239743 (= e!155672 (not call!22300))))

(declare-fun b!239744 () Bool)

(declare-fun c!39945 () Bool)

(declare-datatypes ((SeekEntryResult!1047 0))(
  ( (MissingZero!1047 (index!6358 (_ BitVec 32))) (Found!1047 (index!6359 (_ BitVec 32))) (Intermediate!1047 (undefined!1859 Bool) (index!6360 (_ BitVec 32)) (x!24135 (_ BitVec 32))) (Undefined!1047) (MissingVacant!1047 (index!6361 (_ BitVec 32))) )
))
(declare-fun lt!120883 () SeekEntryResult!1047)

(get-info :version)

(assert (=> b!239744 (= c!39945 ((_ is MissingVacant!1047) lt!120883))))

(declare-fun e!155666 () Bool)

(declare-fun e!155668 () Bool)

(assert (=> b!239744 (= e!155666 e!155668)))

(declare-fun res!117521 () Bool)

(declare-fun e!155670 () Bool)

(assert (=> start!22956 (=> (not res!117521) (not e!155670))))

(declare-fun valid!1380 (LongMapFixedSize!3522) Bool)

(assert (=> start!22956 (= res!117521 (valid!1380 thiss!1504))))

(assert (=> start!22956 e!155670))

(declare-fun e!155663 () Bool)

(assert (=> start!22956 e!155663))

(assert (=> start!22956 true))

(declare-fun b!239745 () Bool)

(declare-fun res!117523 () Bool)

(declare-fun e!155673 () Bool)

(assert (=> b!239745 (=> (not res!117523) (not e!155673))))

(declare-fun arrayContainsKey!0 (array!11898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!239745 (= res!117523 (arrayContainsKey!0 (_keys!6548 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239746 () Bool)

(declare-fun e!155664 () Bool)

(declare-fun tp_is_empty!6309 () Bool)

(assert (=> b!239746 (= e!155664 tp_is_empty!6309)))

(declare-fun b!239747 () Bool)

(declare-fun res!117525 () Bool)

(assert (=> b!239747 (=> (not res!117525) (not e!155672))))

(declare-fun call!22299 () Bool)

(assert (=> b!239747 (= res!117525 call!22299)))

(assert (=> b!239747 (= e!155666 e!155672)))

(declare-fun bm!22296 () Bool)

(assert (=> bm!22296 (= call!22300 (arrayContainsKey!0 (_keys!6548 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239748 () Bool)

(assert (=> b!239748 (= e!155675 tp_is_empty!6309)))

(declare-fun b!239749 () Bool)

(assert (=> b!239749 (= e!155668 ((_ is Undefined!1047) lt!120883))))

(declare-fun b!239750 () Bool)

(declare-fun res!117524 () Bool)

(assert (=> b!239750 (=> (not res!117524) (not e!155672))))

(assert (=> b!239750 (= res!117524 (= (select (arr!5650 (_keys!6548 thiss!1504)) (index!6358 lt!120883)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239751 () Bool)

(declare-fun res!117522 () Bool)

(assert (=> b!239751 (=> (not res!117522) (not e!155673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239751 (= res!117522 (validMask!0 (mask!10496 thiss!1504)))))

(declare-fun b!239752 () Bool)

(declare-fun res!117519 () Bool)

(assert (=> b!239752 (=> (not res!117519) (not e!155673))))

(assert (=> b!239752 (= res!117519 (and (= (size!5990 (_values!4429 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10496 thiss!1504))) (= (size!5991 (_keys!6548 thiss!1504)) (size!5990 (_values!4429 thiss!1504))) (bvsge (mask!10496 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4183 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4183 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!10695 () Bool)

(assert (=> mapIsEmpty!10695 mapRes!10695))

(declare-fun b!239753 () Bool)

(declare-fun e!155667 () Bool)

(assert (=> b!239753 (= e!155668 e!155667)))

(declare-fun res!117526 () Bool)

(assert (=> b!239753 (= res!117526 call!22299)))

(assert (=> b!239753 (=> (not res!117526) (not e!155667))))

(declare-fun b!239754 () Bool)

(declare-fun e!155674 () Bool)

(assert (=> b!239754 (= e!155670 e!155674)))

(declare-fun res!117518 () Bool)

(assert (=> b!239754 (=> (not res!117518) (not e!155674))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239754 (= res!117518 (or (= lt!120883 (MissingZero!1047 index!297)) (= lt!120883 (MissingVacant!1047 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11898 (_ BitVec 32)) SeekEntryResult!1047)

(assert (=> b!239754 (= lt!120883 (seekEntryOrOpen!0 key!932 (_keys!6548 thiss!1504) (mask!10496 thiss!1504)))))

(declare-fun b!239755 () Bool)

(assert (=> b!239755 (= e!155667 (not call!22300))))

(declare-fun b!239756 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11898 (_ BitVec 32)) Bool)

(assert (=> b!239756 (= e!155673 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6548 thiss!1504) (mask!10496 thiss!1504))))))

(declare-fun mapNonEmpty!10695 () Bool)

(declare-fun tp!22545 () Bool)

(assert (=> mapNonEmpty!10695 (= mapRes!10695 (and tp!22545 e!155664))))

(declare-fun mapRest!10695 () (Array (_ BitVec 32) ValueCell!2811))

(declare-fun mapKey!10695 () (_ BitVec 32))

(declare-fun mapValue!10695 () ValueCell!2811)

(assert (=> mapNonEmpty!10695 (= (arr!5649 (_values!4429 thiss!1504)) (store mapRest!10695 mapKey!10695 mapValue!10695))))

(declare-fun b!239757 () Bool)

(declare-fun res!117520 () Bool)

(assert (=> b!239757 (= res!117520 (= (select (arr!5650 (_keys!6548 thiss!1504)) (index!6361 lt!120883)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!239757 (=> (not res!117520) (not e!155667))))

(declare-fun array_inv!3727 (array!11898) Bool)

(declare-fun array_inv!3728 (array!11896) Bool)

(assert (=> b!239758 (= e!155663 (and tp!22544 tp_is_empty!6309 (array_inv!3727 (_keys!6548 thiss!1504)) (array_inv!3728 (_values!4429 thiss!1504)) e!155669))))

(declare-fun b!239759 () Bool)

(declare-fun lt!120881 () Unit!7365)

(assert (=> b!239759 (= e!155671 lt!120881)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!345 (array!11898 array!11896 (_ BitVec 32) (_ BitVec 32) V!8059 V!8059 (_ BitVec 64) Int) Unit!7365)

(assert (=> b!239759 (= lt!120881 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!345 (_keys!6548 thiss!1504) (_values!4429 thiss!1504) (mask!10496 thiss!1504) (extraKeys!4183 thiss!1504) (zeroValue!4287 thiss!1504) (minValue!4287 thiss!1504) key!932 (defaultEntry!4446 thiss!1504)))))

(declare-fun c!39946 () Bool)

(assert (=> b!239759 (= c!39946 ((_ is MissingZero!1047) lt!120883))))

(assert (=> b!239759 e!155666))

(declare-fun bm!22297 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22297 (= call!22299 (inRange!0 (ite c!39946 (index!6358 lt!120883) (index!6361 lt!120883)) (mask!10496 thiss!1504)))))

(declare-fun b!239760 () Bool)

(assert (=> b!239760 (= e!155674 e!155673)))

(declare-fun res!117517 () Bool)

(assert (=> b!239760 (=> (not res!117517) (not e!155673))))

(assert (=> b!239760 (= res!117517 (inRange!0 index!297 (mask!10496 thiss!1504)))))

(declare-fun lt!120882 () Unit!7365)

(assert (=> b!239760 (= lt!120882 e!155671)))

(declare-fun c!39944 () Bool)

(declare-datatypes ((tuple2!4710 0))(
  ( (tuple2!4711 (_1!2365 (_ BitVec 64)) (_2!2365 V!8059)) )
))
(declare-datatypes ((List!3619 0))(
  ( (Nil!3616) (Cons!3615 (h!4271 tuple2!4710) (t!8622 List!3619)) )
))
(declare-datatypes ((ListLongMap!3637 0))(
  ( (ListLongMap!3638 (toList!1834 List!3619)) )
))
(declare-fun contains!1716 (ListLongMap!3637 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1357 (array!11898 array!11896 (_ BitVec 32) (_ BitVec 32) V!8059 V!8059 (_ BitVec 32) Int) ListLongMap!3637)

(assert (=> b!239760 (= c!39944 (contains!1716 (getCurrentListMap!1357 (_keys!6548 thiss!1504) (_values!4429 thiss!1504) (mask!10496 thiss!1504) (extraKeys!4183 thiss!1504) (zeroValue!4287 thiss!1504) (minValue!4287 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4446 thiss!1504)) key!932))))

(declare-fun b!239761 () Bool)

(declare-fun res!117527 () Bool)

(assert (=> b!239761 (=> (not res!117527) (not e!155670))))

(assert (=> b!239761 (= res!117527 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22956 res!117521) b!239761))

(assert (= (and b!239761 res!117527) b!239754))

(assert (= (and b!239754 res!117518) b!239760))

(assert (= (and b!239760 c!39944) b!239741))

(assert (= (and b!239760 (not c!39944)) b!239759))

(assert (= (and b!239759 c!39946) b!239747))

(assert (= (and b!239759 (not c!39946)) b!239744))

(assert (= (and b!239747 res!117525) b!239750))

(assert (= (and b!239750 res!117524) b!239743))

(assert (= (and b!239744 c!39945) b!239753))

(assert (= (and b!239744 (not c!39945)) b!239749))

(assert (= (and b!239753 res!117526) b!239757))

(assert (= (and b!239757 res!117520) b!239755))

(assert (= (or b!239747 b!239753) bm!22297))

(assert (= (or b!239743 b!239755) bm!22296))

(assert (= (and b!239760 res!117517) b!239745))

(assert (= (and b!239745 res!117523) b!239751))

(assert (= (and b!239751 res!117522) b!239752))

(assert (= (and b!239752 res!117519) b!239756))

(assert (= (and b!239742 condMapEmpty!10695) mapIsEmpty!10695))

(assert (= (and b!239742 (not condMapEmpty!10695)) mapNonEmpty!10695))

(assert (= (and mapNonEmpty!10695 ((_ is ValueCellFull!2811) mapValue!10695)) b!239746))

(assert (= (and b!239742 ((_ is ValueCellFull!2811) mapDefault!10695)) b!239748))

(assert (= b!239758 b!239742))

(assert (= start!22956 b!239758))

(declare-fun m!259659 () Bool)

(assert (=> b!239750 m!259659))

(declare-fun m!259661 () Bool)

(assert (=> b!239759 m!259661))

(declare-fun m!259663 () Bool)

(assert (=> mapNonEmpty!10695 m!259663))

(declare-fun m!259665 () Bool)

(assert (=> b!239741 m!259665))

(declare-fun m!259667 () Bool)

(assert (=> b!239760 m!259667))

(declare-fun m!259669 () Bool)

(assert (=> b!239760 m!259669))

(assert (=> b!239760 m!259669))

(declare-fun m!259671 () Bool)

(assert (=> b!239760 m!259671))

(declare-fun m!259673 () Bool)

(assert (=> bm!22296 m!259673))

(declare-fun m!259675 () Bool)

(assert (=> bm!22297 m!259675))

(declare-fun m!259677 () Bool)

(assert (=> b!239751 m!259677))

(declare-fun m!259679 () Bool)

(assert (=> start!22956 m!259679))

(declare-fun m!259681 () Bool)

(assert (=> b!239756 m!259681))

(declare-fun m!259683 () Bool)

(assert (=> b!239758 m!259683))

(declare-fun m!259685 () Bool)

(assert (=> b!239758 m!259685))

(declare-fun m!259687 () Bool)

(assert (=> b!239757 m!259687))

(assert (=> b!239745 m!259673))

(declare-fun m!259689 () Bool)

(assert (=> b!239754 m!259689))

(check-sat tp_is_empty!6309 (not b!239751) (not b!239756) (not bm!22296) (not b_next!6447) (not mapNonEmpty!10695) (not b!239754) (not b!239760) (not bm!22297) (not b!239759) (not start!22956) (not b!239741) (not b!239745) (not b!239758) b_and!13431)
(check-sat b_and!13431 (not b_next!6447))

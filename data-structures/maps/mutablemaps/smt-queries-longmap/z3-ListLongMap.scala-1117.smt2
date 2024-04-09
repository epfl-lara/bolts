; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22962 () Bool)

(assert start!22962)

(declare-fun b!239938 () Bool)

(declare-fun b_free!6453 () Bool)

(declare-fun b_next!6453 () Bool)

(assert (=> b!239938 (= b_free!6453 (not b_next!6453))))

(declare-fun tp!22563 () Bool)

(declare-fun b_and!13437 () Bool)

(assert (=> b!239938 (= tp!22563 b_and!13437)))

(declare-fun b!239935 () Bool)

(declare-fun e!155792 () Bool)

(declare-fun tp_is_empty!6315 () Bool)

(assert (=> b!239935 (= e!155792 tp_is_empty!6315)))

(declare-fun b!239936 () Bool)

(declare-fun e!155786 () Bool)

(declare-fun call!22317 () Bool)

(assert (=> b!239936 (= e!155786 (not call!22317))))

(declare-fun b!239937 () Bool)

(declare-fun c!39971 () Bool)

(declare-datatypes ((SeekEntryResult!1050 0))(
  ( (MissingZero!1050 (index!6370 (_ BitVec 32))) (Found!1050 (index!6371 (_ BitVec 32))) (Intermediate!1050 (undefined!1862 Bool) (index!6372 (_ BitVec 32)) (x!24146 (_ BitVec 32))) (Undefined!1050) (MissingVacant!1050 (index!6373 (_ BitVec 32))) )
))
(declare-fun lt!120917 () SeekEntryResult!1050)

(get-info :version)

(assert (=> b!239937 (= c!39971 ((_ is MissingVacant!1050) lt!120917))))

(declare-fun e!155790 () Bool)

(declare-fun e!155784 () Bool)

(assert (=> b!239937 (= e!155790 e!155784)))

(declare-datatypes ((V!8067 0))(
  ( (V!8068 (val!3202 Int)) )
))
(declare-datatypes ((ValueCell!2814 0))(
  ( (ValueCellFull!2814 (v!5236 V!8067)) (EmptyCell!2814) )
))
(declare-datatypes ((array!11908 0))(
  ( (array!11909 (arr!5655 (Array (_ BitVec 32) ValueCell!2814)) (size!5996 (_ BitVec 32))) )
))
(declare-datatypes ((array!11910 0))(
  ( (array!11911 (arr!5656 (Array (_ BitVec 32) (_ BitVec 64))) (size!5997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3528 0))(
  ( (LongMapFixedSize!3529 (defaultEntry!4449 Int) (mask!10501 (_ BitVec 32)) (extraKeys!4186 (_ BitVec 32)) (zeroValue!4290 V!8067) (minValue!4290 V!8067) (_size!1813 (_ BitVec 32)) (_keys!6551 array!11910) (_values!4432 array!11908) (_vacant!1813 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3528)

(declare-fun e!155791 () Bool)

(declare-fun e!155787 () Bool)

(declare-fun array_inv!3733 (array!11910) Bool)

(declare-fun array_inv!3734 (array!11908) Bool)

(assert (=> b!239938 (= e!155791 (and tp!22563 tp_is_empty!6315 (array_inv!3733 (_keys!6551 thiss!1504)) (array_inv!3734 (_values!4432 thiss!1504)) e!155787))))

(declare-fun b!239940 () Bool)

(declare-fun res!117624 () Bool)

(declare-fun e!155781 () Bool)

(assert (=> b!239940 (=> (not res!117624) (not e!155781))))

(assert (=> b!239940 (= res!117624 (= (select (arr!5656 (_keys!6551 thiss!1504)) (index!6370 lt!120917)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239941 () Bool)

(declare-fun res!117623 () Bool)

(declare-fun e!155788 () Bool)

(assert (=> b!239941 (=> (not res!117623) (not e!155788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11910 (_ BitVec 32)) Bool)

(assert (=> b!239941 (= res!117623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6551 thiss!1504) (mask!10501 thiss!1504)))))

(declare-fun b!239942 () Bool)

(declare-datatypes ((Unit!7373 0))(
  ( (Unit!7374) )
))
(declare-fun e!155783 () Unit!7373)

(declare-fun lt!120919 () Unit!7373)

(assert (=> b!239942 (= e!155783 lt!120919)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!346 (array!11910 array!11908 (_ BitVec 32) (_ BitVec 32) V!8067 V!8067 (_ BitVec 64) Int) Unit!7373)

(assert (=> b!239942 (= lt!120919 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!346 (_keys!6551 thiss!1504) (_values!4432 thiss!1504) (mask!10501 thiss!1504) (extraKeys!4186 thiss!1504) (zeroValue!4290 thiss!1504) (minValue!4290 thiss!1504) key!932 (defaultEntry!4449 thiss!1504)))))

(declare-fun c!39973 () Bool)

(assert (=> b!239942 (= c!39973 ((_ is MissingZero!1050) lt!120917))))

(assert (=> b!239942 e!155790))

(declare-fun mapIsEmpty!10704 () Bool)

(declare-fun mapRes!10704 () Bool)

(assert (=> mapIsEmpty!10704 mapRes!10704))

(declare-fun bm!22314 () Bool)

(declare-fun arrayContainsKey!0 (array!11910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22314 (= call!22317 (arrayContainsKey!0 (_keys!6551 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239943 () Bool)

(assert (=> b!239943 (= e!155781 (not call!22317))))

(declare-fun b!239944 () Bool)

(declare-fun e!155780 () Bool)

(assert (=> b!239944 (= e!155780 tp_is_empty!6315)))

(declare-fun b!239945 () Bool)

(declare-fun res!117632 () Bool)

(declare-fun e!155785 () Bool)

(assert (=> b!239945 (=> (not res!117632) (not e!155785))))

(assert (=> b!239945 (= res!117632 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239946 () Bool)

(declare-fun res!117630 () Bool)

(assert (=> b!239946 (=> (not res!117630) (not e!155788))))

(assert (=> b!239946 (= res!117630 (and (= (size!5996 (_values!4432 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10501 thiss!1504))) (= (size!5997 (_keys!6551 thiss!1504)) (size!5996 (_values!4432 thiss!1504))) (bvsge (mask!10501 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4186 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4186 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun call!22318 () Bool)

(declare-fun bm!22315 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22315 (= call!22318 (inRange!0 (ite c!39973 (index!6370 lt!120917) (index!6373 lt!120917)) (mask!10501 thiss!1504)))))

(declare-fun b!239947 () Bool)

(assert (=> b!239947 (= e!155784 e!155786)))

(declare-fun res!117626 () Bool)

(assert (=> b!239947 (= res!117626 call!22318)))

(assert (=> b!239947 (=> (not res!117626) (not e!155786))))

(declare-fun b!239939 () Bool)

(declare-fun res!117622 () Bool)

(assert (=> b!239939 (=> (not res!117622) (not e!155781))))

(assert (=> b!239939 (= res!117622 call!22318)))

(assert (=> b!239939 (= e!155790 e!155781)))

(declare-fun res!117621 () Bool)

(assert (=> start!22962 (=> (not res!117621) (not e!155785))))

(declare-fun valid!1382 (LongMapFixedSize!3528) Bool)

(assert (=> start!22962 (= res!117621 (valid!1382 thiss!1504))))

(assert (=> start!22962 e!155785))

(assert (=> start!22962 e!155791))

(assert (=> start!22962 true))

(declare-fun mapNonEmpty!10704 () Bool)

(declare-fun tp!22562 () Bool)

(assert (=> mapNonEmpty!10704 (= mapRes!10704 (and tp!22562 e!155792))))

(declare-fun mapKey!10704 () (_ BitVec 32))

(declare-fun mapValue!10704 () ValueCell!2814)

(declare-fun mapRest!10704 () (Array (_ BitVec 32) ValueCell!2814))

(assert (=> mapNonEmpty!10704 (= (arr!5655 (_values!4432 thiss!1504)) (store mapRest!10704 mapKey!10704 mapValue!10704))))

(declare-fun b!239948 () Bool)

(declare-fun e!155789 () Bool)

(assert (=> b!239948 (= e!155789 e!155788)))

(declare-fun res!117629 () Bool)

(assert (=> b!239948 (=> (not res!117629) (not e!155788))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239948 (= res!117629 (inRange!0 index!297 (mask!10501 thiss!1504)))))

(declare-fun lt!120916 () Unit!7373)

(assert (=> b!239948 (= lt!120916 e!155783)))

(declare-fun c!39972 () Bool)

(declare-datatypes ((tuple2!4716 0))(
  ( (tuple2!4717 (_1!2368 (_ BitVec 64)) (_2!2368 V!8067)) )
))
(declare-datatypes ((List!3622 0))(
  ( (Nil!3619) (Cons!3618 (h!4274 tuple2!4716) (t!8625 List!3622)) )
))
(declare-datatypes ((ListLongMap!3643 0))(
  ( (ListLongMap!3644 (toList!1837 List!3622)) )
))
(declare-fun contains!1719 (ListLongMap!3643 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1360 (array!11910 array!11908 (_ BitVec 32) (_ BitVec 32) V!8067 V!8067 (_ BitVec 32) Int) ListLongMap!3643)

(assert (=> b!239948 (= c!39972 (contains!1719 (getCurrentListMap!1360 (_keys!6551 thiss!1504) (_values!4432 thiss!1504) (mask!10501 thiss!1504) (extraKeys!4186 thiss!1504) (zeroValue!4290 thiss!1504) (minValue!4290 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4449 thiss!1504)) key!932))))

(declare-fun b!239949 () Bool)

(assert (=> b!239949 (= e!155784 ((_ is Undefined!1050) lt!120917))))

(declare-fun b!239950 () Bool)

(assert (=> b!239950 (= e!155787 (and e!155780 mapRes!10704))))

(declare-fun condMapEmpty!10704 () Bool)

(declare-fun mapDefault!10704 () ValueCell!2814)

(assert (=> b!239950 (= condMapEmpty!10704 (= (arr!5655 (_values!4432 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2814)) mapDefault!10704)))))

(declare-fun b!239951 () Bool)

(declare-fun Unit!7375 () Unit!7373)

(assert (=> b!239951 (= e!155783 Unit!7375)))

(declare-fun lt!120918 () Unit!7373)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!335 (array!11910 array!11908 (_ BitVec 32) (_ BitVec 32) V!8067 V!8067 (_ BitVec 64) Int) Unit!7373)

(assert (=> b!239951 (= lt!120918 (lemmaInListMapThenSeekEntryOrOpenFindsIt!335 (_keys!6551 thiss!1504) (_values!4432 thiss!1504) (mask!10501 thiss!1504) (extraKeys!4186 thiss!1504) (zeroValue!4290 thiss!1504) (minValue!4290 thiss!1504) key!932 (defaultEntry!4449 thiss!1504)))))

(assert (=> b!239951 false))

(declare-fun b!239952 () Bool)

(declare-datatypes ((List!3623 0))(
  ( (Nil!3620) (Cons!3619 (h!4275 (_ BitVec 64)) (t!8626 List!3623)) )
))
(declare-fun arrayNoDuplicates!0 (array!11910 (_ BitVec 32) List!3623) Bool)

(assert (=> b!239952 (= e!155788 (not (arrayNoDuplicates!0 (_keys!6551 thiss!1504) #b00000000000000000000000000000000 Nil!3620)))))

(declare-fun b!239953 () Bool)

(declare-fun res!117628 () Bool)

(assert (=> b!239953 (=> (not res!117628) (not e!155788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239953 (= res!117628 (validMask!0 (mask!10501 thiss!1504)))))

(declare-fun b!239954 () Bool)

(assert (=> b!239954 (= e!155785 e!155789)))

(declare-fun res!117627 () Bool)

(assert (=> b!239954 (=> (not res!117627) (not e!155789))))

(assert (=> b!239954 (= res!117627 (or (= lt!120917 (MissingZero!1050 index!297)) (= lt!120917 (MissingVacant!1050 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11910 (_ BitVec 32)) SeekEntryResult!1050)

(assert (=> b!239954 (= lt!120917 (seekEntryOrOpen!0 key!932 (_keys!6551 thiss!1504) (mask!10501 thiss!1504)))))

(declare-fun b!239955 () Bool)

(declare-fun res!117625 () Bool)

(assert (=> b!239955 (=> (not res!117625) (not e!155788))))

(assert (=> b!239955 (= res!117625 (arrayContainsKey!0 (_keys!6551 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239956 () Bool)

(declare-fun res!117631 () Bool)

(assert (=> b!239956 (= res!117631 (= (select (arr!5656 (_keys!6551 thiss!1504)) (index!6373 lt!120917)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!239956 (=> (not res!117631) (not e!155786))))

(assert (= (and start!22962 res!117621) b!239945))

(assert (= (and b!239945 res!117632) b!239954))

(assert (= (and b!239954 res!117627) b!239948))

(assert (= (and b!239948 c!39972) b!239951))

(assert (= (and b!239948 (not c!39972)) b!239942))

(assert (= (and b!239942 c!39973) b!239939))

(assert (= (and b!239942 (not c!39973)) b!239937))

(assert (= (and b!239939 res!117622) b!239940))

(assert (= (and b!239940 res!117624) b!239943))

(assert (= (and b!239937 c!39971) b!239947))

(assert (= (and b!239937 (not c!39971)) b!239949))

(assert (= (and b!239947 res!117626) b!239956))

(assert (= (and b!239956 res!117631) b!239936))

(assert (= (or b!239939 b!239947) bm!22315))

(assert (= (or b!239943 b!239936) bm!22314))

(assert (= (and b!239948 res!117629) b!239955))

(assert (= (and b!239955 res!117625) b!239953))

(assert (= (and b!239953 res!117628) b!239946))

(assert (= (and b!239946 res!117630) b!239941))

(assert (= (and b!239941 res!117623) b!239952))

(assert (= (and b!239950 condMapEmpty!10704) mapIsEmpty!10704))

(assert (= (and b!239950 (not condMapEmpty!10704)) mapNonEmpty!10704))

(assert (= (and mapNonEmpty!10704 ((_ is ValueCellFull!2814) mapValue!10704)) b!239935))

(assert (= (and b!239950 ((_ is ValueCellFull!2814) mapDefault!10704)) b!239944))

(assert (= b!239938 b!239950))

(assert (= start!22962 b!239938))

(declare-fun m!259757 () Bool)

(assert (=> b!239942 m!259757))

(declare-fun m!259759 () Bool)

(assert (=> b!239940 m!259759))

(declare-fun m!259761 () Bool)

(assert (=> bm!22315 m!259761))

(declare-fun m!259763 () Bool)

(assert (=> b!239956 m!259763))

(declare-fun m!259765 () Bool)

(assert (=> b!239951 m!259765))

(declare-fun m!259767 () Bool)

(assert (=> start!22962 m!259767))

(declare-fun m!259769 () Bool)

(assert (=> mapNonEmpty!10704 m!259769))

(declare-fun m!259771 () Bool)

(assert (=> b!239952 m!259771))

(declare-fun m!259773 () Bool)

(assert (=> b!239953 m!259773))

(declare-fun m!259775 () Bool)

(assert (=> b!239938 m!259775))

(declare-fun m!259777 () Bool)

(assert (=> b!239938 m!259777))

(declare-fun m!259779 () Bool)

(assert (=> b!239941 m!259779))

(declare-fun m!259781 () Bool)

(assert (=> bm!22314 m!259781))

(declare-fun m!259783 () Bool)

(assert (=> b!239948 m!259783))

(declare-fun m!259785 () Bool)

(assert (=> b!239948 m!259785))

(assert (=> b!239948 m!259785))

(declare-fun m!259787 () Bool)

(assert (=> b!239948 m!259787))

(assert (=> b!239955 m!259781))

(declare-fun m!259789 () Bool)

(assert (=> b!239954 m!259789))

(check-sat (not mapNonEmpty!10704) (not b!239948) (not b!239953) (not bm!22315) (not b!239942) (not b!239941) (not b!239952) (not b!239955) (not b_next!6453) (not b!239954) (not bm!22314) (not b!239938) b_and!13437 (not b!239951) tp_is_empty!6315 (not start!22962))
(check-sat b_and!13437 (not b_next!6453))

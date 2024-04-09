; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22920 () Bool)

(assert start!22920)

(declare-fun b!238668 () Bool)

(declare-fun b_free!6411 () Bool)

(declare-fun b_next!6411 () Bool)

(assert (=> b!238668 (= b_free!6411 (not b_next!6411))))

(declare-fun tp!22436 () Bool)

(declare-fun b_and!13395 () Bool)

(assert (=> b!238668 (= tp!22436 b_and!13395)))

(declare-fun b!238660 () Bool)

(declare-datatypes ((Unit!7319 0))(
  ( (Unit!7320) )
))
(declare-fun e!154962 () Unit!7319)

(declare-fun lt!120666 () Unit!7319)

(assert (=> b!238660 (= e!154962 lt!120666)))

(declare-datatypes ((V!8011 0))(
  ( (V!8012 (val!3181 Int)) )
))
(declare-datatypes ((ValueCell!2793 0))(
  ( (ValueCellFull!2793 (v!5215 V!8011)) (EmptyCell!2793) )
))
(declare-datatypes ((array!11824 0))(
  ( (array!11825 (arr!5613 (Array (_ BitVec 32) ValueCell!2793)) (size!5954 (_ BitVec 32))) )
))
(declare-datatypes ((array!11826 0))(
  ( (array!11827 (arr!5614 (Array (_ BitVec 32) (_ BitVec 64))) (size!5955 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3486 0))(
  ( (LongMapFixedSize!3487 (defaultEntry!4428 Int) (mask!10466 (_ BitVec 32)) (extraKeys!4165 (_ BitVec 32)) (zeroValue!4269 V!8011) (minValue!4269 V!8011) (_size!1792 (_ BitVec 32)) (_keys!6530 array!11826) (_values!4411 array!11824) (_vacant!1792 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3486)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!332 (array!11826 array!11824 (_ BitVec 32) (_ BitVec 32) V!8011 V!8011 (_ BitVec 64) Int) Unit!7319)

(assert (=> b!238660 (= lt!120666 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!332 (_keys!6530 thiss!1504) (_values!4411 thiss!1504) (mask!10466 thiss!1504) (extraKeys!4165 thiss!1504) (zeroValue!4269 thiss!1504) (minValue!4269 thiss!1504) key!932 (defaultEntry!4428 thiss!1504)))))

(declare-fun c!39783 () Bool)

(declare-datatypes ((SeekEntryResult!1031 0))(
  ( (MissingZero!1031 (index!6294 (_ BitVec 32))) (Found!1031 (index!6295 (_ BitVec 32))) (Intermediate!1031 (undefined!1843 Bool) (index!6296 (_ BitVec 32)) (x!24071 (_ BitVec 32))) (Undefined!1031) (MissingVacant!1031 (index!6297 (_ BitVec 32))) )
))
(declare-fun lt!120667 () SeekEntryResult!1031)

(get-info :version)

(assert (=> b!238660 (= c!39783 ((_ is MissingZero!1031) lt!120667))))

(declare-fun e!154965 () Bool)

(assert (=> b!238660 e!154965))

(declare-fun b!238661 () Bool)

(declare-fun e!154973 () Bool)

(declare-fun call!22192 () Bool)

(assert (=> b!238661 (= e!154973 (not call!22192))))

(declare-fun b!238662 () Bool)

(declare-fun res!116976 () Bool)

(assert (=> b!238662 (= res!116976 (= (select (arr!5614 (_keys!6530 thiss!1504)) (index!6297 lt!120667)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!154970 () Bool)

(assert (=> b!238662 (=> (not res!116976) (not e!154970))))

(declare-fun b!238663 () Bool)

(declare-fun e!154972 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238663 (= e!154972 (not (validMask!0 (mask!10466 thiss!1504))))))

(declare-fun b!238664 () Bool)

(declare-fun e!154967 () Bool)

(declare-fun tp_is_empty!6273 () Bool)

(assert (=> b!238664 (= e!154967 tp_is_empty!6273)))

(declare-fun b!238665 () Bool)

(declare-fun c!39782 () Bool)

(assert (=> b!238665 (= c!39782 ((_ is MissingVacant!1031) lt!120667))))

(declare-fun e!154968 () Bool)

(assert (=> b!238665 (= e!154965 e!154968)))

(declare-fun mapIsEmpty!10641 () Bool)

(declare-fun mapRes!10641 () Bool)

(assert (=> mapIsEmpty!10641 mapRes!10641))

(declare-fun b!238666 () Bool)

(declare-fun e!154969 () Bool)

(assert (=> b!238666 (= e!154969 tp_is_empty!6273)))

(declare-fun b!238667 () Bool)

(declare-fun e!154963 () Bool)

(assert (=> b!238667 (= e!154963 (and e!154969 mapRes!10641))))

(declare-fun condMapEmpty!10641 () Bool)

(declare-fun mapDefault!10641 () ValueCell!2793)

(assert (=> b!238667 (= condMapEmpty!10641 (= (arr!5613 (_values!4411 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2793)) mapDefault!10641)))))

(declare-fun e!154966 () Bool)

(declare-fun array_inv!3703 (array!11826) Bool)

(declare-fun array_inv!3704 (array!11824) Bool)

(assert (=> b!238668 (= e!154966 (and tp!22436 tp_is_empty!6273 (array_inv!3703 (_keys!6530 thiss!1504)) (array_inv!3704 (_values!4411 thiss!1504)) e!154963))))

(declare-fun b!238669 () Bool)

(declare-fun res!116982 () Bool)

(assert (=> b!238669 (=> (not res!116982) (not e!154972))))

(declare-fun arrayContainsKey!0 (array!11826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!238669 (= res!116982 (arrayContainsKey!0 (_keys!6530 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10641 () Bool)

(declare-fun tp!22437 () Bool)

(assert (=> mapNonEmpty!10641 (= mapRes!10641 (and tp!22437 e!154967))))

(declare-fun mapRest!10641 () (Array (_ BitVec 32) ValueCell!2793))

(declare-fun mapKey!10641 () (_ BitVec 32))

(declare-fun mapValue!10641 () ValueCell!2793)

(assert (=> mapNonEmpty!10641 (= (arr!5613 (_values!4411 thiss!1504)) (store mapRest!10641 mapKey!10641 mapValue!10641))))

(declare-fun b!238671 () Bool)

(assert (=> b!238671 (= e!154970 (not call!22192))))

(declare-fun b!238672 () Bool)

(declare-fun res!116980 () Bool)

(assert (=> b!238672 (=> (not res!116980) (not e!154973))))

(declare-fun call!22191 () Bool)

(assert (=> b!238672 (= res!116980 call!22191)))

(assert (=> b!238672 (= e!154965 e!154973)))

(declare-fun b!238673 () Bool)

(declare-fun e!154961 () Bool)

(declare-fun e!154964 () Bool)

(assert (=> b!238673 (= e!154961 e!154964)))

(declare-fun res!116984 () Bool)

(assert (=> b!238673 (=> (not res!116984) (not e!154964))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238673 (= res!116984 (or (= lt!120667 (MissingZero!1031 index!297)) (= lt!120667 (MissingVacant!1031 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11826 (_ BitVec 32)) SeekEntryResult!1031)

(assert (=> b!238673 (= lt!120667 (seekEntryOrOpen!0 key!932 (_keys!6530 thiss!1504) (mask!10466 thiss!1504)))))

(declare-fun b!238674 () Bool)

(assert (=> b!238674 (= e!154968 e!154970)))

(declare-fun res!116981 () Bool)

(assert (=> b!238674 (= res!116981 call!22191)))

(assert (=> b!238674 (=> (not res!116981) (not e!154970))))

(declare-fun b!238675 () Bool)

(declare-fun res!116977 () Bool)

(assert (=> b!238675 (=> (not res!116977) (not e!154961))))

(assert (=> b!238675 (= res!116977 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!238676 () Bool)

(assert (=> b!238676 (= e!154964 e!154972)))

(declare-fun res!116979 () Bool)

(assert (=> b!238676 (=> (not res!116979) (not e!154972))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!238676 (= res!116979 (inRange!0 index!297 (mask!10466 thiss!1504)))))

(declare-fun lt!120664 () Unit!7319)

(assert (=> b!238676 (= lt!120664 e!154962)))

(declare-fun c!39784 () Bool)

(declare-datatypes ((tuple2!4684 0))(
  ( (tuple2!4685 (_1!2352 (_ BitVec 64)) (_2!2352 V!8011)) )
))
(declare-datatypes ((List!3606 0))(
  ( (Nil!3603) (Cons!3602 (h!4258 tuple2!4684) (t!8609 List!3606)) )
))
(declare-datatypes ((ListLongMap!3611 0))(
  ( (ListLongMap!3612 (toList!1821 List!3606)) )
))
(declare-fun contains!1703 (ListLongMap!3611 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1344 (array!11826 array!11824 (_ BitVec 32) (_ BitVec 32) V!8011 V!8011 (_ BitVec 32) Int) ListLongMap!3611)

(assert (=> b!238676 (= c!39784 (contains!1703 (getCurrentListMap!1344 (_keys!6530 thiss!1504) (_values!4411 thiss!1504) (mask!10466 thiss!1504) (extraKeys!4165 thiss!1504) (zeroValue!4269 thiss!1504) (minValue!4269 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4428 thiss!1504)) key!932))))

(declare-fun b!238677 () Bool)

(declare-fun Unit!7321 () Unit!7319)

(assert (=> b!238677 (= e!154962 Unit!7321)))

(declare-fun lt!120665 () Unit!7319)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!319 (array!11826 array!11824 (_ BitVec 32) (_ BitVec 32) V!8011 V!8011 (_ BitVec 64) Int) Unit!7319)

(assert (=> b!238677 (= lt!120665 (lemmaInListMapThenSeekEntryOrOpenFindsIt!319 (_keys!6530 thiss!1504) (_values!4411 thiss!1504) (mask!10466 thiss!1504) (extraKeys!4165 thiss!1504) (zeroValue!4269 thiss!1504) (minValue!4269 thiss!1504) key!932 (defaultEntry!4428 thiss!1504)))))

(assert (=> b!238677 false))

(declare-fun bm!22188 () Bool)

(assert (=> bm!22188 (= call!22192 (arrayContainsKey!0 (_keys!6530 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!22189 () Bool)

(assert (=> bm!22189 (= call!22191 (inRange!0 (ite c!39783 (index!6294 lt!120667) (index!6297 lt!120667)) (mask!10466 thiss!1504)))))

(declare-fun b!238678 () Bool)

(assert (=> b!238678 (= e!154968 ((_ is Undefined!1031) lt!120667))))

(declare-fun b!238670 () Bool)

(declare-fun res!116983 () Bool)

(assert (=> b!238670 (=> (not res!116983) (not e!154973))))

(assert (=> b!238670 (= res!116983 (= (select (arr!5614 (_keys!6530 thiss!1504)) (index!6294 lt!120667)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!116978 () Bool)

(assert (=> start!22920 (=> (not res!116978) (not e!154961))))

(declare-fun valid!1367 (LongMapFixedSize!3486) Bool)

(assert (=> start!22920 (= res!116978 (valid!1367 thiss!1504))))

(assert (=> start!22920 e!154961))

(assert (=> start!22920 e!154966))

(assert (=> start!22920 true))

(assert (= (and start!22920 res!116978) b!238675))

(assert (= (and b!238675 res!116977) b!238673))

(assert (= (and b!238673 res!116984) b!238676))

(assert (= (and b!238676 c!39784) b!238677))

(assert (= (and b!238676 (not c!39784)) b!238660))

(assert (= (and b!238660 c!39783) b!238672))

(assert (= (and b!238660 (not c!39783)) b!238665))

(assert (= (and b!238672 res!116980) b!238670))

(assert (= (and b!238670 res!116983) b!238661))

(assert (= (and b!238665 c!39782) b!238674))

(assert (= (and b!238665 (not c!39782)) b!238678))

(assert (= (and b!238674 res!116981) b!238662))

(assert (= (and b!238662 res!116976) b!238671))

(assert (= (or b!238672 b!238674) bm!22189))

(assert (= (or b!238661 b!238671) bm!22188))

(assert (= (and b!238676 res!116979) b!238669))

(assert (= (and b!238669 res!116982) b!238663))

(assert (= (and b!238667 condMapEmpty!10641) mapIsEmpty!10641))

(assert (= (and b!238667 (not condMapEmpty!10641)) mapNonEmpty!10641))

(assert (= (and mapNonEmpty!10641 ((_ is ValueCellFull!2793) mapValue!10641)) b!238664))

(assert (= (and b!238667 ((_ is ValueCellFull!2793) mapDefault!10641)) b!238666))

(assert (= b!238668 b!238667))

(assert (= start!22920 b!238668))

(declare-fun m!259117 () Bool)

(assert (=> b!238668 m!259117))

(declare-fun m!259119 () Bool)

(assert (=> b!238668 m!259119))

(declare-fun m!259121 () Bool)

(assert (=> start!22920 m!259121))

(declare-fun m!259123 () Bool)

(assert (=> bm!22188 m!259123))

(declare-fun m!259125 () Bool)

(assert (=> b!238673 m!259125))

(declare-fun m!259127 () Bool)

(assert (=> b!238660 m!259127))

(declare-fun m!259129 () Bool)

(assert (=> b!238676 m!259129))

(declare-fun m!259131 () Bool)

(assert (=> b!238676 m!259131))

(assert (=> b!238676 m!259131))

(declare-fun m!259133 () Bool)

(assert (=> b!238676 m!259133))

(declare-fun m!259135 () Bool)

(assert (=> b!238670 m!259135))

(declare-fun m!259137 () Bool)

(assert (=> bm!22189 m!259137))

(declare-fun m!259139 () Bool)

(assert (=> b!238677 m!259139))

(declare-fun m!259141 () Bool)

(assert (=> b!238662 m!259141))

(declare-fun m!259143 () Bool)

(assert (=> b!238663 m!259143))

(assert (=> b!238669 m!259123))

(declare-fun m!259145 () Bool)

(assert (=> mapNonEmpty!10641 m!259145))

(check-sat (not b!238660) (not b!238677) (not bm!22189) (not b!238669) (not b!238663) b_and!13395 (not bm!22188) (not b!238673) (not start!22920) tp_is_empty!6273 (not b_next!6411) (not b!238676) (not b!238668) (not mapNonEmpty!10641))
(check-sat b_and!13395 (not b_next!6411))

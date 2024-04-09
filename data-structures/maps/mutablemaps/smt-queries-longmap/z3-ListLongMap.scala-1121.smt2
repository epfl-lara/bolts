; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22986 () Bool)

(assert start!22986)

(declare-fun b!240748 () Bool)

(declare-fun b_free!6477 () Bool)

(declare-fun b_next!6477 () Bool)

(assert (=> b!240748 (= b_free!6477 (not b_next!6477))))

(declare-fun tp!22634 () Bool)

(declare-fun b_and!13461 () Bool)

(assert (=> b!240748 (= tp!22634 b_and!13461)))

(declare-fun b!240739 () Bool)

(declare-fun res!118068 () Bool)

(declare-fun e!156249 () Bool)

(assert (=> b!240739 (=> (not res!118068) (not e!156249))))

(declare-datatypes ((V!8099 0))(
  ( (V!8100 (val!3214 Int)) )
))
(declare-datatypes ((ValueCell!2826 0))(
  ( (ValueCellFull!2826 (v!5248 V!8099)) (EmptyCell!2826) )
))
(declare-datatypes ((array!11956 0))(
  ( (array!11957 (arr!5679 (Array (_ BitVec 32) ValueCell!2826)) (size!6020 (_ BitVec 32))) )
))
(declare-datatypes ((array!11958 0))(
  ( (array!11959 (arr!5680 (Array (_ BitVec 32) (_ BitVec 64))) (size!6021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3552 0))(
  ( (LongMapFixedSize!3553 (defaultEntry!4461 Int) (mask!10521 (_ BitVec 32)) (extraKeys!4198 (_ BitVec 32)) (zeroValue!4302 V!8099) (minValue!4302 V!8099) (_size!1825 (_ BitVec 32)) (_keys!6563 array!11958) (_values!4444 array!11956) (_vacant!1825 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3552)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240739 (= res!118068 (arrayContainsKey!0 (_keys!6563 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240740 () Bool)

(declare-fun res!118072 () Bool)

(declare-fun e!156248 () Bool)

(assert (=> b!240740 (=> (not res!118072) (not e!156248))))

(declare-fun call!22390 () Bool)

(assert (=> b!240740 (= res!118072 call!22390)))

(declare-fun e!156253 () Bool)

(assert (=> b!240740 (= e!156253 e!156248)))

(declare-fun b!240741 () Bool)

(declare-datatypes ((Unit!7406 0))(
  ( (Unit!7407) )
))
(declare-fun e!156252 () Unit!7406)

(declare-fun Unit!7408 () Unit!7406)

(assert (=> b!240741 (= e!156252 Unit!7408)))

(declare-fun lt!121082 () Unit!7406)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!344 (array!11958 array!11956 (_ BitVec 32) (_ BitVec 32) V!8099 V!8099 (_ BitVec 64) Int) Unit!7406)

(assert (=> b!240741 (= lt!121082 (lemmaInListMapThenSeekEntryOrOpenFindsIt!344 (_keys!6563 thiss!1504) (_values!4444 thiss!1504) (mask!10521 thiss!1504) (extraKeys!4198 thiss!1504) (zeroValue!4302 thiss!1504) (minValue!4302 thiss!1504) key!932 (defaultEntry!4461 thiss!1504)))))

(assert (=> b!240741 false))

(declare-fun b!240742 () Bool)

(declare-fun e!156257 () Bool)

(declare-fun tp_is_empty!6339 () Bool)

(assert (=> b!240742 (= e!156257 tp_is_empty!6339)))

(declare-fun b!240743 () Bool)

(declare-fun res!118069 () Bool)

(declare-fun e!156251 () Bool)

(assert (=> b!240743 (=> (not res!118069) (not e!156251))))

(assert (=> b!240743 (= res!118069 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240744 () Bool)

(declare-fun res!118065 () Bool)

(declare-datatypes ((SeekEntryResult!1061 0))(
  ( (MissingZero!1061 (index!6414 (_ BitVec 32))) (Found!1061 (index!6415 (_ BitVec 32))) (Intermediate!1061 (undefined!1873 Bool) (index!6416 (_ BitVec 32)) (x!24189 (_ BitVec 32))) (Undefined!1061) (MissingVacant!1061 (index!6417 (_ BitVec 32))) )
))
(declare-fun lt!121079 () SeekEntryResult!1061)

(assert (=> b!240744 (= res!118065 (= (select (arr!5680 (_keys!6563 thiss!1504)) (index!6417 lt!121079)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156258 () Bool)

(assert (=> b!240744 (=> (not res!118065) (not e!156258))))

(declare-fun b!240745 () Bool)

(declare-fun c!40081 () Bool)

(get-info :version)

(assert (=> b!240745 (= c!40081 ((_ is MissingVacant!1061) lt!121079))))

(declare-fun e!156255 () Bool)

(assert (=> b!240745 (= e!156253 e!156255)))

(declare-fun res!118066 () Bool)

(assert (=> start!22986 (=> (not res!118066) (not e!156251))))

(declare-fun valid!1389 (LongMapFixedSize!3552) Bool)

(assert (=> start!22986 (= res!118066 (valid!1389 thiss!1504))))

(assert (=> start!22986 e!156251))

(declare-fun e!156260 () Bool)

(assert (=> start!22986 e!156260))

(assert (=> start!22986 true))

(declare-fun b!240746 () Bool)

(declare-fun e!156259 () Bool)

(assert (=> b!240746 (= e!156259 e!156249)))

(declare-fun res!118070 () Bool)

(assert (=> b!240746 (=> (not res!118070) (not e!156249))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!240746 (= res!118070 (inRange!0 index!297 (mask!10521 thiss!1504)))))

(declare-fun lt!121081 () Unit!7406)

(assert (=> b!240746 (= lt!121081 e!156252)))

(declare-fun c!40079 () Bool)

(declare-fun lt!121080 () Bool)

(assert (=> b!240746 (= c!40079 lt!121080)))

(declare-datatypes ((tuple2!4732 0))(
  ( (tuple2!4733 (_1!2376 (_ BitVec 64)) (_2!2376 V!8099)) )
))
(declare-datatypes ((List!3639 0))(
  ( (Nil!3636) (Cons!3635 (h!4291 tuple2!4732) (t!8642 List!3639)) )
))
(declare-datatypes ((ListLongMap!3659 0))(
  ( (ListLongMap!3660 (toList!1845 List!3639)) )
))
(declare-fun contains!1727 (ListLongMap!3659 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1368 (array!11958 array!11956 (_ BitVec 32) (_ BitVec 32) V!8099 V!8099 (_ BitVec 32) Int) ListLongMap!3659)

(assert (=> b!240746 (= lt!121080 (contains!1727 (getCurrentListMap!1368 (_keys!6563 thiss!1504) (_values!4444 thiss!1504) (mask!10521 thiss!1504) (extraKeys!4198 thiss!1504) (zeroValue!4302 thiss!1504) (minValue!4302 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4461 thiss!1504)) key!932))))

(declare-fun b!240747 () Bool)

(declare-fun e!156254 () Bool)

(assert (=> b!240747 (= e!156254 tp_is_empty!6339)))

(declare-fun e!156250 () Bool)

(declare-fun array_inv!3749 (array!11958) Bool)

(declare-fun array_inv!3750 (array!11956) Bool)

(assert (=> b!240748 (= e!156260 (and tp!22634 tp_is_empty!6339 (array_inv!3749 (_keys!6563 thiss!1504)) (array_inv!3750 (_values!4444 thiss!1504)) e!156250))))

(declare-fun mapNonEmpty!10740 () Bool)

(declare-fun mapRes!10740 () Bool)

(declare-fun tp!22635 () Bool)

(assert (=> mapNonEmpty!10740 (= mapRes!10740 (and tp!22635 e!156254))))

(declare-fun mapRest!10740 () (Array (_ BitVec 32) ValueCell!2826))

(declare-fun mapKey!10740 () (_ BitVec 32))

(declare-fun mapValue!10740 () ValueCell!2826)

(assert (=> mapNonEmpty!10740 (= (arr!5679 (_values!4444 thiss!1504)) (store mapRest!10740 mapKey!10740 mapValue!10740))))

(declare-fun bm!22386 () Bool)

(declare-fun call!22389 () Bool)

(assert (=> bm!22386 (= call!22389 (arrayContainsKey!0 (_keys!6563 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240749 () Bool)

(assert (=> b!240749 (= e!156255 ((_ is Undefined!1061) lt!121079))))

(declare-fun b!240750 () Bool)

(assert (=> b!240750 (= e!156255 e!156258)))

(declare-fun res!118067 () Bool)

(assert (=> b!240750 (= res!118067 call!22390)))

(assert (=> b!240750 (=> (not res!118067) (not e!156258))))

(declare-fun b!240751 () Bool)

(assert (=> b!240751 (= e!156250 (and e!156257 mapRes!10740))))

(declare-fun condMapEmpty!10740 () Bool)

(declare-fun mapDefault!10740 () ValueCell!2826)

(assert (=> b!240751 (= condMapEmpty!10740 (= (arr!5679 (_values!4444 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2826)) mapDefault!10740)))))

(declare-fun b!240752 () Bool)

(declare-fun res!118073 () Bool)

(assert (=> b!240752 (=> (not res!118073) (not e!156248))))

(assert (=> b!240752 (= res!118073 (= (select (arr!5680 (_keys!6563 thiss!1504)) (index!6414 lt!121079)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240753 () Bool)

(assert (=> b!240753 (= e!156251 e!156259)))

(declare-fun res!118071 () Bool)

(assert (=> b!240753 (=> (not res!118071) (not e!156259))))

(assert (=> b!240753 (= res!118071 (or (= lt!121079 (MissingZero!1061 index!297)) (= lt!121079 (MissingVacant!1061 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11958 (_ BitVec 32)) SeekEntryResult!1061)

(assert (=> b!240753 (= lt!121079 (seekEntryOrOpen!0 key!932 (_keys!6563 thiss!1504) (mask!10521 thiss!1504)))))

(declare-fun b!240754 () Bool)

(declare-fun lt!121083 () Unit!7406)

(assert (=> b!240754 (= e!156252 lt!121083)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!353 (array!11958 array!11956 (_ BitVec 32) (_ BitVec 32) V!8099 V!8099 (_ BitVec 64) Int) Unit!7406)

(assert (=> b!240754 (= lt!121083 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!353 (_keys!6563 thiss!1504) (_values!4444 thiss!1504) (mask!10521 thiss!1504) (extraKeys!4198 thiss!1504) (zeroValue!4302 thiss!1504) (minValue!4302 thiss!1504) key!932 (defaultEntry!4461 thiss!1504)))))

(declare-fun c!40080 () Bool)

(assert (=> b!240754 (= c!40080 ((_ is MissingZero!1061) lt!121079))))

(assert (=> b!240754 e!156253))

(declare-fun b!240755 () Bool)

(assert (=> b!240755 (= e!156248 (not call!22389))))

(declare-fun bm!22387 () Bool)

(assert (=> bm!22387 (= call!22390 (inRange!0 (ite c!40080 (index!6414 lt!121079) (index!6417 lt!121079)) (mask!10521 thiss!1504)))))

(declare-fun b!240756 () Bool)

(assert (=> b!240756 (= e!156249 (not false))))

(assert (=> b!240756 lt!121080))

(declare-fun lt!121084 () Unit!7406)

(declare-fun lemmaArrayContainsKeyThenInListMap!150 (array!11958 array!11956 (_ BitVec 32) (_ BitVec 32) V!8099 V!8099 (_ BitVec 64) (_ BitVec 32) Int) Unit!7406)

(assert (=> b!240756 (= lt!121084 (lemmaArrayContainsKeyThenInListMap!150 (_keys!6563 thiss!1504) (_values!4444 thiss!1504) (mask!10521 thiss!1504) (extraKeys!4198 thiss!1504) (zeroValue!4302 thiss!1504) (minValue!4302 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4461 thiss!1504)))))

(declare-fun b!240757 () Bool)

(assert (=> b!240757 (= e!156258 (not call!22389))))

(declare-fun mapIsEmpty!10740 () Bool)

(assert (=> mapIsEmpty!10740 mapRes!10740))

(assert (= (and start!22986 res!118066) b!240743))

(assert (= (and b!240743 res!118069) b!240753))

(assert (= (and b!240753 res!118071) b!240746))

(assert (= (and b!240746 c!40079) b!240741))

(assert (= (and b!240746 (not c!40079)) b!240754))

(assert (= (and b!240754 c!40080) b!240740))

(assert (= (and b!240754 (not c!40080)) b!240745))

(assert (= (and b!240740 res!118072) b!240752))

(assert (= (and b!240752 res!118073) b!240755))

(assert (= (and b!240745 c!40081) b!240750))

(assert (= (and b!240745 (not c!40081)) b!240749))

(assert (= (and b!240750 res!118067) b!240744))

(assert (= (and b!240744 res!118065) b!240757))

(assert (= (or b!240740 b!240750) bm!22387))

(assert (= (or b!240755 b!240757) bm!22386))

(assert (= (and b!240746 res!118070) b!240739))

(assert (= (and b!240739 res!118068) b!240756))

(assert (= (and b!240751 condMapEmpty!10740) mapIsEmpty!10740))

(assert (= (and b!240751 (not condMapEmpty!10740)) mapNonEmpty!10740))

(assert (= (and mapNonEmpty!10740 ((_ is ValueCellFull!2826) mapValue!10740)) b!240747))

(assert (= (and b!240751 ((_ is ValueCellFull!2826) mapDefault!10740)) b!240742))

(assert (= b!240748 b!240751))

(assert (= start!22986 b!240748))

(declare-fun m!260173 () Bool)

(assert (=> b!240753 m!260173))

(declare-fun m!260175 () Bool)

(assert (=> b!240756 m!260175))

(declare-fun m!260177 () Bool)

(assert (=> b!240754 m!260177))

(declare-fun m!260179 () Bool)

(assert (=> bm!22387 m!260179))

(declare-fun m!260181 () Bool)

(assert (=> b!240739 m!260181))

(declare-fun m!260183 () Bool)

(assert (=> b!240744 m!260183))

(declare-fun m!260185 () Bool)

(assert (=> b!240752 m!260185))

(assert (=> bm!22386 m!260181))

(declare-fun m!260187 () Bool)

(assert (=> b!240746 m!260187))

(declare-fun m!260189 () Bool)

(assert (=> b!240746 m!260189))

(assert (=> b!240746 m!260189))

(declare-fun m!260191 () Bool)

(assert (=> b!240746 m!260191))

(declare-fun m!260193 () Bool)

(assert (=> b!240748 m!260193))

(declare-fun m!260195 () Bool)

(assert (=> b!240748 m!260195))

(declare-fun m!260197 () Bool)

(assert (=> b!240741 m!260197))

(declare-fun m!260199 () Bool)

(assert (=> mapNonEmpty!10740 m!260199))

(declare-fun m!260201 () Bool)

(assert (=> start!22986 m!260201))

(check-sat (not bm!22386) (not b!240753) (not b!240746) (not bm!22387) (not start!22986) (not b!240739) (not b!240748) (not b!240756) (not b!240754) (not mapNonEmpty!10740) (not b!240741) b_and!13461 tp_is_empty!6339 (not b_next!6477))
(check-sat b_and!13461 (not b_next!6477))

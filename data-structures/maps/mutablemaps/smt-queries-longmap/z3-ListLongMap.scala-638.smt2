; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16190 () Bool)

(assert start!16190)

(declare-fun b!161274 () Bool)

(declare-fun b_free!3639 () Bool)

(declare-fun b_next!3639 () Bool)

(assert (=> b!161274 (= b_free!3639 (not b_next!3639))))

(declare-fun tp!13487 () Bool)

(declare-fun b_and!10071 () Bool)

(assert (=> b!161274 (= tp!13487 b_and!10071)))

(declare-fun b!161271 () Bool)

(declare-fun e!105394 () Bool)

(declare-fun e!105395 () Bool)

(declare-fun mapRes!5849 () Bool)

(assert (=> b!161271 (= e!105394 (and e!105395 mapRes!5849))))

(declare-fun condMapEmpty!5849 () Bool)

(declare-datatypes ((V!4235 0))(
  ( (V!4236 (val!1765 Int)) )
))
(declare-datatypes ((ValueCell!1377 0))(
  ( (ValueCellFull!1377 (v!3626 V!4235)) (EmptyCell!1377) )
))
(declare-datatypes ((array!5960 0))(
  ( (array!5961 (arr!2824 (Array (_ BitVec 32) (_ BitVec 64))) (size!3108 (_ BitVec 32))) )
))
(declare-datatypes ((array!5962 0))(
  ( (array!5963 (arr!2825 (Array (_ BitVec 32) ValueCell!1377)) (size!3109 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1662 0))(
  ( (LongMapFixedSize!1663 (defaultEntry!3273 Int) (mask!7861 (_ BitVec 32)) (extraKeys!3014 (_ BitVec 32)) (zeroValue!3116 V!4235) (minValue!3116 V!4235) (_size!880 (_ BitVec 32)) (_keys!5074 array!5960) (_values!3256 array!5962) (_vacant!880 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1662)

(declare-fun mapDefault!5849 () ValueCell!1377)

(assert (=> b!161271 (= condMapEmpty!5849 (= (arr!2825 (_values!3256 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1377)) mapDefault!5849)))))

(declare-fun mapNonEmpty!5849 () Bool)

(declare-fun tp!13486 () Bool)

(declare-fun e!105397 () Bool)

(assert (=> mapNonEmpty!5849 (= mapRes!5849 (and tp!13486 e!105397))))

(declare-fun mapValue!5849 () ValueCell!1377)

(declare-fun mapRest!5849 () (Array (_ BitVec 32) ValueCell!1377))

(declare-fun mapKey!5849 () (_ BitVec 32))

(assert (=> mapNonEmpty!5849 (= (arr!2825 (_values!3256 thiss!1248)) (store mapRest!5849 mapKey!5849 mapValue!5849))))

(declare-fun b!161272 () Bool)

(declare-fun res!76480 () Bool)

(declare-fun e!105392 () Bool)

(assert (=> b!161272 (=> (not res!76480) (not e!105392))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161272 (= res!76480 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161273 () Bool)

(declare-datatypes ((Unit!5003 0))(
  ( (Unit!5004) )
))
(declare-fun e!105396 () Unit!5003)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!73 (array!5960 array!5962 (_ BitVec 32) (_ BitVec 32) V!4235 V!4235 (_ BitVec 64) Int) Unit!5003)

(assert (=> b!161273 (= e!105396 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!73 (_keys!5074 thiss!1248) (_values!3256 thiss!1248) (mask!7861 thiss!1248) (extraKeys!3014 thiss!1248) (zeroValue!3116 thiss!1248) (minValue!3116 thiss!1248) key!828 (defaultEntry!3273 thiss!1248)))))

(declare-fun e!105398 () Bool)

(declare-fun tp_is_empty!3441 () Bool)

(declare-fun array_inv!1791 (array!5960) Bool)

(declare-fun array_inv!1792 (array!5962) Bool)

(assert (=> b!161274 (= e!105398 (and tp!13487 tp_is_empty!3441 (array_inv!1791 (_keys!5074 thiss!1248)) (array_inv!1792 (_values!3256 thiss!1248)) e!105394))))

(declare-fun b!161275 () Bool)

(assert (=> b!161275 (= e!105392 false)))

(declare-fun lt!82208 () Unit!5003)

(assert (=> b!161275 (= lt!82208 e!105396)))

(declare-fun c!29928 () Bool)

(declare-datatypes ((tuple2!2938 0))(
  ( (tuple2!2939 (_1!1479 (_ BitVec 64)) (_2!1479 V!4235)) )
))
(declare-datatypes ((List!1991 0))(
  ( (Nil!1988) (Cons!1987 (h!2600 tuple2!2938) (t!6801 List!1991)) )
))
(declare-datatypes ((ListLongMap!1947 0))(
  ( (ListLongMap!1948 (toList!989 List!1991)) )
))
(declare-fun contains!1019 (ListLongMap!1947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!649 (array!5960 array!5962 (_ BitVec 32) (_ BitVec 32) V!4235 V!4235 (_ BitVec 32) Int) ListLongMap!1947)

(assert (=> b!161275 (= c!29928 (contains!1019 (getCurrentListMap!649 (_keys!5074 thiss!1248) (_values!3256 thiss!1248) (mask!7861 thiss!1248) (extraKeys!3014 thiss!1248) (zeroValue!3116 thiss!1248) (minValue!3116 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3273 thiss!1248)) key!828))))

(declare-fun b!161276 () Bool)

(assert (=> b!161276 (= e!105397 tp_is_empty!3441)))

(declare-fun mapIsEmpty!5849 () Bool)

(assert (=> mapIsEmpty!5849 mapRes!5849))

(declare-fun res!76481 () Bool)

(assert (=> start!16190 (=> (not res!76481) (not e!105392))))

(declare-fun valid!755 (LongMapFixedSize!1662) Bool)

(assert (=> start!16190 (= res!76481 (valid!755 thiss!1248))))

(assert (=> start!16190 e!105392))

(assert (=> start!16190 e!105398))

(assert (=> start!16190 true))

(declare-fun b!161277 () Bool)

(assert (=> b!161277 (= e!105395 tp_is_empty!3441)))

(declare-fun b!161278 () Bool)

(declare-fun res!76479 () Bool)

(assert (=> b!161278 (=> (not res!76479) (not e!105392))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!357 0))(
  ( (MissingZero!357 (index!3596 (_ BitVec 32))) (Found!357 (index!3597 (_ BitVec 32))) (Intermediate!357 (undefined!1169 Bool) (index!3598 (_ BitVec 32)) (x!17805 (_ BitVec 32))) (Undefined!357) (MissingVacant!357 (index!3599 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5960 (_ BitVec 32)) SeekEntryResult!357)

(assert (=> b!161278 (= res!76479 ((_ is Undefined!357) (seekEntryOrOpen!0 key!828 (_keys!5074 thiss!1248) (mask!7861 thiss!1248))))))

(declare-fun b!161279 () Bool)

(declare-fun Unit!5005 () Unit!5003)

(assert (=> b!161279 (= e!105396 Unit!5005)))

(declare-fun lt!82207 () Unit!5003)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!75 (array!5960 array!5962 (_ BitVec 32) (_ BitVec 32) V!4235 V!4235 (_ BitVec 64) Int) Unit!5003)

(assert (=> b!161279 (= lt!82207 (lemmaInListMapThenSeekEntryOrOpenFindsIt!75 (_keys!5074 thiss!1248) (_values!3256 thiss!1248) (mask!7861 thiss!1248) (extraKeys!3014 thiss!1248) (zeroValue!3116 thiss!1248) (minValue!3116 thiss!1248) key!828 (defaultEntry!3273 thiss!1248)))))

(assert (=> b!161279 false))

(assert (= (and start!16190 res!76481) b!161272))

(assert (= (and b!161272 res!76480) b!161278))

(assert (= (and b!161278 res!76479) b!161275))

(assert (= (and b!161275 c!29928) b!161279))

(assert (= (and b!161275 (not c!29928)) b!161273))

(assert (= (and b!161271 condMapEmpty!5849) mapIsEmpty!5849))

(assert (= (and b!161271 (not condMapEmpty!5849)) mapNonEmpty!5849))

(assert (= (and mapNonEmpty!5849 ((_ is ValueCellFull!1377) mapValue!5849)) b!161276))

(assert (= (and b!161271 ((_ is ValueCellFull!1377) mapDefault!5849)) b!161277))

(assert (= b!161274 b!161271))

(assert (= start!16190 b!161274))

(declare-fun m!192827 () Bool)

(assert (=> mapNonEmpty!5849 m!192827))

(declare-fun m!192829 () Bool)

(assert (=> b!161275 m!192829))

(assert (=> b!161275 m!192829))

(declare-fun m!192831 () Bool)

(assert (=> b!161275 m!192831))

(declare-fun m!192833 () Bool)

(assert (=> b!161274 m!192833))

(declare-fun m!192835 () Bool)

(assert (=> b!161274 m!192835))

(declare-fun m!192837 () Bool)

(assert (=> start!16190 m!192837))

(declare-fun m!192839 () Bool)

(assert (=> b!161278 m!192839))

(declare-fun m!192841 () Bool)

(assert (=> b!161273 m!192841))

(declare-fun m!192843 () Bool)

(assert (=> b!161279 m!192843))

(check-sat (not mapNonEmpty!5849) (not b!161273) (not b_next!3639) tp_is_empty!3441 (not b!161278) (not b!161279) (not b!161274) (not b!161275) b_and!10071 (not start!16190))
(check-sat b_and!10071 (not b_next!3639))

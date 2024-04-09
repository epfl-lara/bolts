; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21934 () Bool)

(assert start!21934)

(declare-fun b!222901 () Bool)

(declare-fun b_free!5989 () Bool)

(declare-fun b_next!5989 () Bool)

(assert (=> b!222901 (= b_free!5989 (not b_next!5989))))

(declare-fun tp!21109 () Bool)

(declare-fun b_and!12905 () Bool)

(assert (=> b!222901 (= tp!21109 b_and!12905)))

(declare-fun b!222882 () Bool)

(declare-fun res!109482 () Bool)

(declare-fun e!144840 () Bool)

(assert (=> b!222882 (=> res!109482 e!144840)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!222882 (= res!109482 (not (validKeyInArray!0 key!932)))))

(declare-fun b!222883 () Bool)

(declare-fun e!144849 () Bool)

(declare-fun e!144852 () Bool)

(assert (=> b!222883 (= e!144849 e!144852)))

(declare-fun res!109496 () Bool)

(assert (=> b!222883 (=> (not res!109496) (not e!144852))))

(declare-datatypes ((SeekEntryResult!853 0))(
  ( (MissingZero!853 (index!5582 (_ BitVec 32))) (Found!853 (index!5583 (_ BitVec 32))) (Intermediate!853 (undefined!1665 Bool) (index!5584 (_ BitVec 32)) (x!23089 (_ BitVec 32))) (Undefined!853) (MissingVacant!853 (index!5585 (_ BitVec 32))) )
))
(declare-fun lt!112797 () SeekEntryResult!853)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222883 (= res!109496 (or (= lt!112797 (MissingZero!853 index!297)) (= lt!112797 (MissingVacant!853 index!297))))))

(declare-datatypes ((V!7449 0))(
  ( (V!7450 (val!2970 Int)) )
))
(declare-datatypes ((ValueCell!2582 0))(
  ( (ValueCellFull!2582 (v!4986 V!7449)) (EmptyCell!2582) )
))
(declare-datatypes ((array!10944 0))(
  ( (array!10945 (arr!5191 (Array (_ BitVec 32) ValueCell!2582)) (size!5524 (_ BitVec 32))) )
))
(declare-datatypes ((array!10946 0))(
  ( (array!10947 (arr!5192 (Array (_ BitVec 32) (_ BitVec 64))) (size!5525 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3064 0))(
  ( (LongMapFixedSize!3065 (defaultEntry!4191 Int) (mask!10015 (_ BitVec 32)) (extraKeys!3928 (_ BitVec 32)) (zeroValue!4032 V!7449) (minValue!4032 V!7449) (_size!1581 (_ BitVec 32)) (_keys!6245 array!10946) (_values!4174 array!10944) (_vacant!1581 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3064)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10946 (_ BitVec 32)) SeekEntryResult!853)

(assert (=> b!222883 (= lt!112797 (seekEntryOrOpen!0 key!932 (_keys!6245 thiss!1504) (mask!10015 thiss!1504)))))

(declare-fun b!222884 () Bool)

(declare-fun e!144853 () Bool)

(declare-datatypes ((List!3332 0))(
  ( (Nil!3329) (Cons!3328 (h!3976 (_ BitVec 64)) (t!8299 List!3332)) )
))
(declare-fun contains!1531 (List!3332 (_ BitVec 64)) Bool)

(assert (=> b!222884 (= e!144853 (not (contains!1531 Nil!3329 key!932)))))

(declare-fun b!222885 () Bool)

(declare-fun c!37013 () Bool)

(assert (=> b!222885 (= c!37013 (is-MissingVacant!853 lt!112797))))

(declare-fun e!144856 () Bool)

(declare-fun e!144846 () Bool)

(assert (=> b!222885 (= e!144856 e!144846)))

(declare-fun b!222886 () Bool)

(declare-fun res!109493 () Bool)

(declare-fun e!144842 () Bool)

(assert (=> b!222886 (=> (not res!109493) (not e!144842))))

(declare-fun call!20800 () Bool)

(assert (=> b!222886 (= res!109493 call!20800)))

(assert (=> b!222886 (= e!144856 e!144842)))

(declare-fun b!222887 () Bool)

(assert (=> b!222887 (= e!144846 (is-Undefined!853 lt!112797))))

(declare-fun b!222888 () Bool)

(declare-fun e!144845 () Bool)

(declare-fun tp_is_empty!5851 () Bool)

(assert (=> b!222888 (= e!144845 tp_is_empty!5851)))

(declare-fun bm!20796 () Bool)

(declare-fun c!37012 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20796 (= call!20800 (inRange!0 (ite c!37012 (index!5582 lt!112797) (index!5585 lt!112797)) (mask!10015 thiss!1504)))))

(declare-fun b!222890 () Bool)

(declare-fun e!144851 () Bool)

(declare-fun e!144847 () Bool)

(assert (=> b!222890 (= e!144851 e!144847)))

(declare-fun res!109487 () Bool)

(assert (=> b!222890 (=> res!109487 e!144847)))

(assert (=> b!222890 (= res!109487 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222891 () Bool)

(declare-datatypes ((Unit!6687 0))(
  ( (Unit!6688) )
))
(declare-fun e!144848 () Unit!6687)

(declare-fun Unit!6689 () Unit!6687)

(assert (=> b!222891 (= e!144848 Unit!6689)))

(declare-fun mapIsEmpty!9946 () Bool)

(declare-fun mapRes!9946 () Bool)

(assert (=> mapIsEmpty!9946 mapRes!9946))

(declare-fun b!222892 () Bool)

(declare-fun call!20799 () Bool)

(assert (=> b!222892 (= e!144842 (not call!20799))))

(declare-fun b!222893 () Bool)

(declare-fun e!144843 () Bool)

(assert (=> b!222893 (= e!144843 (not call!20799))))

(declare-fun b!222894 () Bool)

(declare-fun Unit!6690 () Unit!6687)

(assert (=> b!222894 (= e!144848 Unit!6690)))

(declare-fun lt!112796 () Unit!6687)

(declare-fun lemmaArrayContainsKeyThenInListMap!66 (array!10946 array!10944 (_ BitVec 32) (_ BitVec 32) V!7449 V!7449 (_ BitVec 64) (_ BitVec 32) Int) Unit!6687)

(assert (=> b!222894 (= lt!112796 (lemmaArrayContainsKeyThenInListMap!66 (_keys!6245 thiss!1504) (_values!4174 thiss!1504) (mask!10015 thiss!1504) (extraKeys!3928 thiss!1504) (zeroValue!4032 thiss!1504) (minValue!4032 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4191 thiss!1504)))))

(assert (=> b!222894 false))

(declare-fun b!222895 () Bool)

(declare-fun e!144850 () Bool)

(assert (=> b!222895 (= e!144852 e!144850)))

(declare-fun res!109490 () Bool)

(assert (=> b!222895 (=> (not res!109490) (not e!144850))))

(assert (=> b!222895 (= res!109490 (inRange!0 index!297 (mask!10015 thiss!1504)))))

(declare-fun lt!112802 () Unit!6687)

(declare-fun e!144839 () Unit!6687)

(assert (=> b!222895 (= lt!112802 e!144839)))

(declare-fun c!37011 () Bool)

(declare-datatypes ((tuple2!4402 0))(
  ( (tuple2!4403 (_1!2211 (_ BitVec 64)) (_2!2211 V!7449)) )
))
(declare-datatypes ((List!3333 0))(
  ( (Nil!3330) (Cons!3329 (h!3977 tuple2!4402) (t!8300 List!3333)) )
))
(declare-datatypes ((ListLongMap!3329 0))(
  ( (ListLongMap!3330 (toList!1680 List!3333)) )
))
(declare-fun contains!1532 (ListLongMap!3329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1203 (array!10946 array!10944 (_ BitVec 32) (_ BitVec 32) V!7449 V!7449 (_ BitVec 32) Int) ListLongMap!3329)

(assert (=> b!222895 (= c!37011 (contains!1532 (getCurrentListMap!1203 (_keys!6245 thiss!1504) (_values!4174 thiss!1504) (mask!10015 thiss!1504) (extraKeys!3928 thiss!1504) (zeroValue!4032 thiss!1504) (minValue!4032 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4191 thiss!1504)) key!932))))

(declare-fun b!222896 () Bool)

(declare-fun res!109484 () Bool)

(assert (=> b!222896 (= res!109484 (= (select (arr!5192 (_keys!6245 thiss!1504)) (index!5585 lt!112797)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222896 (=> (not res!109484) (not e!144843))))

(declare-fun b!222897 () Bool)

(declare-fun res!109478 () Bool)

(assert (=> b!222897 (=> res!109478 e!144840)))

(assert (=> b!222897 (= res!109478 (contains!1531 Nil!3329 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222898 () Bool)

(declare-fun res!109480 () Bool)

(assert (=> b!222898 (=> res!109480 e!144840)))

(declare-fun lt!112800 () Bool)

(assert (=> b!222898 (= res!109480 lt!112800)))

(declare-fun b!222899 () Bool)

(assert (=> b!222899 (= e!144846 e!144843)))

(declare-fun res!109497 () Bool)

(assert (=> b!222899 (= res!109497 call!20800)))

(assert (=> b!222899 (=> (not res!109497) (not e!144843))))

(declare-fun b!222900 () Bool)

(declare-fun e!144844 () Bool)

(assert (=> b!222900 (= e!144844 tp_is_empty!5851)))

(declare-fun mapNonEmpty!9946 () Bool)

(declare-fun tp!21108 () Bool)

(assert (=> mapNonEmpty!9946 (= mapRes!9946 (and tp!21108 e!144844))))

(declare-fun mapValue!9946 () ValueCell!2582)

(declare-fun mapRest!9946 () (Array (_ BitVec 32) ValueCell!2582))

(declare-fun mapKey!9946 () (_ BitVec 32))

(assert (=> mapNonEmpty!9946 (= (arr!5191 (_values!4174 thiss!1504)) (store mapRest!9946 mapKey!9946 mapValue!9946))))

(declare-fun e!144855 () Bool)

(declare-fun e!144841 () Bool)

(declare-fun array_inv!3427 (array!10946) Bool)

(declare-fun array_inv!3428 (array!10944) Bool)

(assert (=> b!222901 (= e!144855 (and tp!21109 tp_is_empty!5851 (array_inv!3427 (_keys!6245 thiss!1504)) (array_inv!3428 (_values!4174 thiss!1504)) e!144841))))

(declare-fun b!222902 () Bool)

(declare-fun res!109486 () Bool)

(assert (=> b!222902 (=> (not res!109486) (not e!144849))))

(assert (=> b!222902 (= res!109486 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222903 () Bool)

(assert (=> b!222903 (= e!144847 (contains!1531 Nil!3329 key!932))))

(declare-fun b!222904 () Bool)

(declare-fun res!109481 () Bool)

(assert (=> b!222904 (=> res!109481 e!144840)))

(assert (=> b!222904 (= res!109481 (not (contains!1531 Nil!3329 key!932)))))

(declare-fun bm!20797 () Bool)

(declare-fun arrayContainsKey!0 (array!10946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20797 (= call!20799 (arrayContainsKey!0 (_keys!6245 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222905 () Bool)

(declare-fun res!109485 () Bool)

(assert (=> b!222905 (=> res!109485 e!144840)))

(assert (=> b!222905 (= res!109485 (contains!1531 Nil!3329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222906 () Bool)

(declare-fun Unit!6691 () Unit!6687)

(assert (=> b!222906 (= e!144839 Unit!6691)))

(declare-fun lt!112803 () Unit!6687)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!229 (array!10946 array!10944 (_ BitVec 32) (_ BitVec 32) V!7449 V!7449 (_ BitVec 64) Int) Unit!6687)

(assert (=> b!222906 (= lt!112803 (lemmaInListMapThenSeekEntryOrOpenFindsIt!229 (_keys!6245 thiss!1504) (_values!4174 thiss!1504) (mask!10015 thiss!1504) (extraKeys!3928 thiss!1504) (zeroValue!4032 thiss!1504) (minValue!4032 thiss!1504) key!932 (defaultEntry!4191 thiss!1504)))))

(assert (=> b!222906 false))

(declare-fun b!222907 () Bool)

(declare-fun res!109494 () Bool)

(assert (=> b!222907 (=> res!109494 e!144840)))

(assert (=> b!222907 (= res!109494 e!144851)))

(declare-fun res!109483 () Bool)

(assert (=> b!222907 (=> (not res!109483) (not e!144851))))

(assert (=> b!222907 (= res!109483 e!144853)))

(declare-fun res!109479 () Bool)

(assert (=> b!222907 (=> res!109479 e!144853)))

(assert (=> b!222907 (= res!109479 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222908 () Bool)

(declare-fun res!109492 () Bool)

(assert (=> b!222908 (=> res!109492 e!144840)))

(assert (=> b!222908 (= res!109492 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5525 (_keys!6245 thiss!1504)))))))

(declare-fun res!109488 () Bool)

(assert (=> start!21934 (=> (not res!109488) (not e!144849))))

(declare-fun valid!1226 (LongMapFixedSize!3064) Bool)

(assert (=> start!21934 (= res!109488 (valid!1226 thiss!1504))))

(assert (=> start!21934 e!144849))

(assert (=> start!21934 e!144855))

(assert (=> start!21934 true))

(declare-fun b!222889 () Bool)

(declare-fun res!109498 () Bool)

(assert (=> b!222889 (=> res!109498 e!144840)))

(declare-fun noDuplicate!74 (List!3332) Bool)

(assert (=> b!222889 (= res!109498 (not (noDuplicate!74 Nil!3329)))))

(declare-fun b!222909 () Bool)

(assert (=> b!222909 (= e!144840 true)))

(declare-fun b!222910 () Bool)

(declare-fun lt!112798 () Unit!6687)

(assert (=> b!222910 (= e!144839 lt!112798)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!237 (array!10946 array!10944 (_ BitVec 32) (_ BitVec 32) V!7449 V!7449 (_ BitVec 64) Int) Unit!6687)

(assert (=> b!222910 (= lt!112798 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!237 (_keys!6245 thiss!1504) (_values!4174 thiss!1504) (mask!10015 thiss!1504) (extraKeys!3928 thiss!1504) (zeroValue!4032 thiss!1504) (minValue!4032 thiss!1504) key!932 (defaultEntry!4191 thiss!1504)))))

(assert (=> b!222910 (= c!37012 (is-MissingZero!853 lt!112797))))

(assert (=> b!222910 e!144856))

(declare-fun b!222911 () Bool)

(assert (=> b!222911 (= e!144850 false)))

(declare-fun lt!112801 () Bool)

(assert (=> b!222911 (= lt!112801 e!144840)))

(declare-fun res!109489 () Bool)

(assert (=> b!222911 (=> res!109489 e!144840)))

(assert (=> b!222911 (= res!109489 (or (bvsge (size!5525 (_keys!6245 thiss!1504)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!5525 (_keys!6245 thiss!1504)))))))

(declare-fun lt!112799 () Unit!6687)

(assert (=> b!222911 (= lt!112799 e!144848)))

(declare-fun c!37010 () Bool)

(assert (=> b!222911 (= c!37010 lt!112800)))

(assert (=> b!222911 (= lt!112800 (arrayContainsKey!0 (_keys!6245 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222912 () Bool)

(declare-fun res!109495 () Bool)

(assert (=> b!222912 (=> res!109495 e!144840)))

(declare-fun arrayNoDuplicates!0 (array!10946 (_ BitVec 32) List!3332) Bool)

(assert (=> b!222912 (= res!109495 (not (arrayNoDuplicates!0 (_keys!6245 thiss!1504) #b00000000000000000000000000000000 Nil!3329)))))

(declare-fun b!222913 () Bool)

(assert (=> b!222913 (= e!144841 (and e!144845 mapRes!9946))))

(declare-fun condMapEmpty!9946 () Bool)

(declare-fun mapDefault!9946 () ValueCell!2582)


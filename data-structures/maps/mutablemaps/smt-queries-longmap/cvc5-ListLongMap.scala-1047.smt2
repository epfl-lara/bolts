; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21976 () Bool)

(assert start!21976)

(declare-fun b!224804 () Bool)

(declare-fun b_free!6031 () Bool)

(declare-fun b_next!6031 () Bool)

(assert (=> b!224804 (= b_free!6031 (not b_next!6031))))

(declare-fun tp!21235 () Bool)

(declare-fun b_and!12947 () Bool)

(assert (=> b!224804 (= tp!21235 b_and!12947)))

(declare-fun b!224783 () Bool)

(declare-fun e!145942 () Bool)

(declare-fun tp_is_empty!5893 () Bool)

(assert (=> b!224783 (= e!145942 tp_is_empty!5893)))

(declare-fun b!224784 () Bool)

(declare-fun e!145943 () Bool)

(declare-fun e!145938 () Bool)

(assert (=> b!224784 (= e!145943 e!145938)))

(declare-fun res!110632 () Bool)

(assert (=> b!224784 (=> (not res!110632) (not e!145938))))

(declare-datatypes ((SeekEntryResult!871 0))(
  ( (MissingZero!871 (index!5654 (_ BitVec 32))) (Found!871 (index!5655 (_ BitVec 32))) (Intermediate!871 (undefined!1683 Bool) (index!5656 (_ BitVec 32)) (x!23163 (_ BitVec 32))) (Undefined!871) (MissingVacant!871 (index!5657 (_ BitVec 32))) )
))
(declare-fun lt!113298 () SeekEntryResult!871)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!224784 (= res!110632 (or (= lt!113298 (MissingZero!871 index!297)) (= lt!113298 (MissingVacant!871 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7505 0))(
  ( (V!7506 (val!2991 Int)) )
))
(declare-datatypes ((ValueCell!2603 0))(
  ( (ValueCellFull!2603 (v!5007 V!7505)) (EmptyCell!2603) )
))
(declare-datatypes ((array!11028 0))(
  ( (array!11029 (arr!5233 (Array (_ BitVec 32) ValueCell!2603)) (size!5566 (_ BitVec 32))) )
))
(declare-datatypes ((array!11030 0))(
  ( (array!11031 (arr!5234 (Array (_ BitVec 32) (_ BitVec 64))) (size!5567 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3106 0))(
  ( (LongMapFixedSize!3107 (defaultEntry!4212 Int) (mask!10050 (_ BitVec 32)) (extraKeys!3949 (_ BitVec 32)) (zeroValue!4053 V!7505) (minValue!4053 V!7505) (_size!1602 (_ BitVec 32)) (_keys!6266 array!11030) (_values!4195 array!11028) (_vacant!1602 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3106)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11030 (_ BitVec 32)) SeekEntryResult!871)

(assert (=> b!224784 (= lt!113298 (seekEntryOrOpen!0 key!932 (_keys!6266 thiss!1504) (mask!10050 thiss!1504)))))

(declare-fun b!224785 () Bool)

(declare-datatypes ((Unit!6762 0))(
  ( (Unit!6763) )
))
(declare-fun e!145934 () Unit!6762)

(declare-fun Unit!6764 () Unit!6762)

(assert (=> b!224785 (= e!145934 Unit!6764)))

(declare-fun lt!113304 () Unit!6762)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!243 (array!11030 array!11028 (_ BitVec 32) (_ BitVec 32) V!7505 V!7505 (_ BitVec 64) Int) Unit!6762)

(assert (=> b!224785 (= lt!113304 (lemmaInListMapThenSeekEntryOrOpenFindsIt!243 (_keys!6266 thiss!1504) (_values!4195 thiss!1504) (mask!10050 thiss!1504) (extraKeys!3949 thiss!1504) (zeroValue!4053 thiss!1504) (minValue!4053 thiss!1504) key!932 (defaultEntry!4212 thiss!1504)))))

(assert (=> b!224785 false))

(declare-fun b!224786 () Bool)

(declare-fun e!145936 () Bool)

(declare-fun e!145944 () Bool)

(assert (=> b!224786 (= e!145936 (not e!145944))))

(declare-fun res!110629 () Bool)

(assert (=> b!224786 (=> res!110629 e!145944)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!224786 (= res!110629 (not (validMask!0 (mask!10050 thiss!1504))))))

(declare-fun lt!113300 () array!11030)

(declare-fun arrayCountValidKeys!0 (array!11030 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!224786 (= (arrayCountValidKeys!0 lt!113300 #b00000000000000000000000000000000 (size!5567 (_keys!6266 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6266 thiss!1504) #b00000000000000000000000000000000 (size!5567 (_keys!6266 thiss!1504)))))))

(declare-fun lt!113303 () Unit!6762)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11030 (_ BitVec 32) (_ BitVec 64)) Unit!6762)

(assert (=> b!224786 (= lt!113303 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6266 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3362 0))(
  ( (Nil!3359) (Cons!3358 (h!4006 (_ BitVec 64)) (t!8329 List!3362)) )
))
(declare-fun arrayNoDuplicates!0 (array!11030 (_ BitVec 32) List!3362) Bool)

(assert (=> b!224786 (arrayNoDuplicates!0 lt!113300 #b00000000000000000000000000000000 Nil!3359)))

(assert (=> b!224786 (= lt!113300 (array!11031 (store (arr!5234 (_keys!6266 thiss!1504)) index!297 key!932) (size!5567 (_keys!6266 thiss!1504))))))

(declare-fun lt!113299 () Unit!6762)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11030 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3362) Unit!6762)

(assert (=> b!224786 (= lt!113299 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6266 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3359))))

(declare-fun lt!113307 () Unit!6762)

(declare-fun e!145935 () Unit!6762)

(assert (=> b!224786 (= lt!113307 e!145935)))

(declare-fun c!37265 () Bool)

(declare-fun lt!113301 () Bool)

(assert (=> b!224786 (= c!37265 lt!113301)))

(declare-fun arrayContainsKey!0 (array!11030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!224786 (= lt!113301 (arrayContainsKey!0 (_keys!6266 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224787 () Bool)

(declare-fun e!145940 () Bool)

(declare-fun e!145939 () Bool)

(assert (=> b!224787 (= e!145940 e!145939)))

(declare-fun res!110627 () Bool)

(declare-fun call!20925 () Bool)

(assert (=> b!224787 (= res!110627 call!20925)))

(assert (=> b!224787 (=> (not res!110627) (not e!145939))))

(declare-fun b!224788 () Bool)

(declare-fun Unit!6765 () Unit!6762)

(assert (=> b!224788 (= e!145935 Unit!6765)))

(declare-fun lt!113306 () Unit!6762)

(declare-fun lemmaArrayContainsKeyThenInListMap!81 (array!11030 array!11028 (_ BitVec 32) (_ BitVec 32) V!7505 V!7505 (_ BitVec 64) (_ BitVec 32) Int) Unit!6762)

(assert (=> b!224788 (= lt!113306 (lemmaArrayContainsKeyThenInListMap!81 (_keys!6266 thiss!1504) (_values!4195 thiss!1504) (mask!10050 thiss!1504) (extraKeys!3949 thiss!1504) (zeroValue!4053 thiss!1504) (minValue!4053 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4212 thiss!1504)))))

(assert (=> b!224788 false))

(declare-fun b!224789 () Bool)

(declare-fun res!110631 () Bool)

(assert (=> b!224789 (=> res!110631 e!145944)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11030 (_ BitVec 32)) Bool)

(assert (=> b!224789 (= res!110631 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6266 thiss!1504) (mask!10050 thiss!1504))))))

(declare-fun b!224790 () Bool)

(declare-fun res!110626 () Bool)

(declare-fun e!145937 () Bool)

(assert (=> b!224790 (=> (not res!110626) (not e!145937))))

(assert (=> b!224790 (= res!110626 call!20925)))

(declare-fun e!145941 () Bool)

(assert (=> b!224790 (= e!145941 e!145937)))

(declare-fun res!110624 () Bool)

(assert (=> start!21976 (=> (not res!110624) (not e!145943))))

(declare-fun valid!1244 (LongMapFixedSize!3106) Bool)

(assert (=> start!21976 (= res!110624 (valid!1244 thiss!1504))))

(assert (=> start!21976 e!145943))

(declare-fun e!145931 () Bool)

(assert (=> start!21976 e!145931))

(assert (=> start!21976 true))

(declare-fun mapIsEmpty!10009 () Bool)

(declare-fun mapRes!10009 () Bool)

(assert (=> mapIsEmpty!10009 mapRes!10009))

(declare-fun b!224791 () Bool)

(declare-fun res!110635 () Bool)

(assert (=> b!224791 (=> res!110635 e!145944)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224791 (= res!110635 (not (validKeyInArray!0 key!932)))))

(declare-fun b!224792 () Bool)

(assert (=> b!224792 (= e!145940 (is-Undefined!871 lt!113298))))

(declare-fun b!224793 () Bool)

(declare-fun c!37262 () Bool)

(assert (=> b!224793 (= c!37262 (is-MissingVacant!871 lt!113298))))

(assert (=> b!224793 (= e!145941 e!145940)))

(declare-fun b!224794 () Bool)

(declare-fun res!110623 () Bool)

(assert (=> b!224794 (=> res!110623 e!145944)))

(assert (=> b!224794 (= res!110623 lt!113301)))

(declare-fun b!224795 () Bool)

(assert (=> b!224795 (= e!145938 e!145936)))

(declare-fun res!110633 () Bool)

(assert (=> b!224795 (=> (not res!110633) (not e!145936))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!224795 (= res!110633 (inRange!0 index!297 (mask!10050 thiss!1504)))))

(declare-fun lt!113302 () Unit!6762)

(assert (=> b!224795 (= lt!113302 e!145934)))

(declare-fun c!37263 () Bool)

(declare-datatypes ((tuple2!4426 0))(
  ( (tuple2!4427 (_1!2223 (_ BitVec 64)) (_2!2223 V!7505)) )
))
(declare-datatypes ((List!3363 0))(
  ( (Nil!3360) (Cons!3359 (h!4007 tuple2!4426) (t!8330 List!3363)) )
))
(declare-datatypes ((ListLongMap!3353 0))(
  ( (ListLongMap!3354 (toList!1692 List!3363)) )
))
(declare-fun contains!1560 (ListLongMap!3353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1215 (array!11030 array!11028 (_ BitVec 32) (_ BitVec 32) V!7505 V!7505 (_ BitVec 32) Int) ListLongMap!3353)

(assert (=> b!224795 (= c!37263 (contains!1560 (getCurrentListMap!1215 (_keys!6266 thiss!1504) (_values!4195 thiss!1504) (mask!10050 thiss!1504) (extraKeys!3949 thiss!1504) (zeroValue!4053 thiss!1504) (minValue!4053 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4212 thiss!1504)) key!932))))

(declare-fun b!224796 () Bool)

(declare-fun call!20926 () Bool)

(assert (=> b!224796 (= e!145937 (not call!20926))))

(declare-fun b!224797 () Bool)

(declare-fun res!110625 () Bool)

(assert (=> b!224797 (=> (not res!110625) (not e!145943))))

(assert (=> b!224797 (= res!110625 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!224798 () Bool)

(declare-fun res!110630 () Bool)

(assert (=> b!224798 (=> res!110630 e!145944)))

(assert (=> b!224798 (= res!110630 (or (not (= (size!5567 (_keys!6266 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10050 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5567 (_keys!6266 thiss!1504)))))))

(declare-fun b!224799 () Bool)

(assert (=> b!224799 (= e!145939 (not call!20926))))

(declare-fun b!224800 () Bool)

(declare-fun e!145945 () Bool)

(assert (=> b!224800 (= e!145945 tp_is_empty!5893)))

(declare-fun b!224801 () Bool)

(declare-fun res!110634 () Bool)

(assert (=> b!224801 (=> (not res!110634) (not e!145937))))

(assert (=> b!224801 (= res!110634 (= (select (arr!5234 (_keys!6266 thiss!1504)) (index!5654 lt!113298)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!10009 () Bool)

(declare-fun tp!21234 () Bool)

(assert (=> mapNonEmpty!10009 (= mapRes!10009 (and tp!21234 e!145945))))

(declare-fun mapKey!10009 () (_ BitVec 32))

(declare-fun mapValue!10009 () ValueCell!2603)

(declare-fun mapRest!10009 () (Array (_ BitVec 32) ValueCell!2603))

(assert (=> mapNonEmpty!10009 (= (arr!5233 (_values!4195 thiss!1504)) (store mapRest!10009 mapKey!10009 mapValue!10009))))

(declare-fun b!224802 () Bool)

(declare-fun res!110628 () Bool)

(assert (=> b!224802 (= res!110628 (= (select (arr!5234 (_keys!6266 thiss!1504)) (index!5657 lt!113298)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224802 (=> (not res!110628) (not e!145939))))

(declare-fun b!224803 () Bool)

(declare-fun lt!113305 () Unit!6762)

(assert (=> b!224803 (= e!145934 lt!113305)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!251 (array!11030 array!11028 (_ BitVec 32) (_ BitVec 32) V!7505 V!7505 (_ BitVec 64) Int) Unit!6762)

(assert (=> b!224803 (= lt!113305 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!251 (_keys!6266 thiss!1504) (_values!4195 thiss!1504) (mask!10050 thiss!1504) (extraKeys!3949 thiss!1504) (zeroValue!4053 thiss!1504) (minValue!4053 thiss!1504) key!932 (defaultEntry!4212 thiss!1504)))))

(declare-fun c!37264 () Bool)

(assert (=> b!224803 (= c!37264 (is-MissingZero!871 lt!113298))))

(assert (=> b!224803 e!145941))

(declare-fun bm!20922 () Bool)

(assert (=> bm!20922 (= call!20925 (inRange!0 (ite c!37264 (index!5654 lt!113298) (index!5657 lt!113298)) (mask!10050 thiss!1504)))))

(declare-fun e!145933 () Bool)

(declare-fun array_inv!3453 (array!11030) Bool)

(declare-fun array_inv!3454 (array!11028) Bool)

(assert (=> b!224804 (= e!145931 (and tp!21235 tp_is_empty!5893 (array_inv!3453 (_keys!6266 thiss!1504)) (array_inv!3454 (_values!4195 thiss!1504)) e!145933))))

(declare-fun b!224805 () Bool)

(declare-fun Unit!6766 () Unit!6762)

(assert (=> b!224805 (= e!145935 Unit!6766)))

(declare-fun b!224806 () Bool)

(assert (=> b!224806 (= e!145933 (and e!145942 mapRes!10009))))

(declare-fun condMapEmpty!10009 () Bool)

(declare-fun mapDefault!10009 () ValueCell!2603)


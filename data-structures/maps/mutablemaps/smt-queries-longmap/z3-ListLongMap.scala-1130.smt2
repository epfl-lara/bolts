; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23232 () Bool)

(assert start!23232)

(declare-fun b!243818 () Bool)

(declare-fun b_free!6531 () Bool)

(declare-fun b_next!6531 () Bool)

(assert (=> b!243818 (= b_free!6531 (not b_next!6531))))

(declare-fun tp!22815 () Bool)

(declare-fun b_and!13531 () Bool)

(assert (=> b!243818 (= tp!22815 b_and!13531)))

(declare-fun res!119553 () Bool)

(declare-fun e!158238 () Bool)

(assert (=> start!23232 (=> (not res!119553) (not e!158238))))

(declare-datatypes ((V!8171 0))(
  ( (V!8172 (val!3241 Int)) )
))
(declare-datatypes ((ValueCell!2853 0))(
  ( (ValueCellFull!2853 (v!5284 V!8171)) (EmptyCell!2853) )
))
(declare-datatypes ((array!12076 0))(
  ( (array!12077 (arr!5733 (Array (_ BitVec 32) ValueCell!2853)) (size!6075 (_ BitVec 32))) )
))
(declare-datatypes ((array!12078 0))(
  ( (array!12079 (arr!5734 (Array (_ BitVec 32) (_ BitVec 64))) (size!6076 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3606 0))(
  ( (LongMapFixedSize!3607 (defaultEntry!4516 Int) (mask!10611 (_ BitVec 32)) (extraKeys!4253 (_ BitVec 32)) (zeroValue!4357 V!8171) (minValue!4357 V!8171) (_size!1852 (_ BitVec 32)) (_keys!6627 array!12078) (_values!4499 array!12076) (_vacant!1852 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3606)

(declare-fun valid!1404 (LongMapFixedSize!3606) Bool)

(assert (=> start!23232 (= res!119553 (valid!1404 thiss!1504))))

(assert (=> start!23232 e!158238))

(declare-fun e!158226 () Bool)

(assert (=> start!23232 e!158226))

(assert (=> start!23232 true))

(declare-fun b!243808 () Bool)

(declare-fun e!158227 () Bool)

(declare-fun call!22734 () Bool)

(assert (=> b!243808 (= e!158227 (not call!22734))))

(declare-fun b!243809 () Bool)

(declare-fun e!158228 () Bool)

(declare-fun tp_is_empty!6393 () Bool)

(assert (=> b!243809 (= e!158228 tp_is_empty!6393)))

(declare-fun b!243810 () Bool)

(declare-datatypes ((Unit!7521 0))(
  ( (Unit!7522) )
))
(declare-fun e!158235 () Unit!7521)

(declare-fun Unit!7523 () Unit!7521)

(assert (=> b!243810 (= e!158235 Unit!7523)))

(declare-fun lt!122321 () Unit!7521)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!167 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 64) (_ BitVec 32) Int) Unit!7521)

(assert (=> b!243810 (= lt!122321 (lemmaArrayContainsKeyThenInListMap!167 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(assert (=> b!243810 false))

(declare-fun b!243811 () Bool)

(declare-fun res!119561 () Bool)

(assert (=> b!243811 (=> (not res!119561) (not e!158227))))

(declare-datatypes ((SeekEntryResult!1086 0))(
  ( (MissingZero!1086 (index!6514 (_ BitVec 32))) (Found!1086 (index!6515 (_ BitVec 32))) (Intermediate!1086 (undefined!1898 Bool) (index!6516 (_ BitVec 32)) (x!24354 (_ BitVec 32))) (Undefined!1086) (MissingVacant!1086 (index!6517 (_ BitVec 32))) )
))
(declare-fun lt!122319 () SeekEntryResult!1086)

(assert (=> b!243811 (= res!119561 (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6514 lt!122319)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243812 () Bool)

(declare-fun res!119563 () Bool)

(assert (=> b!243812 (= res!119563 (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6517 lt!122319)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158232 () Bool)

(assert (=> b!243812 (=> (not res!119563) (not e!158232))))

(declare-fun b!243813 () Bool)

(declare-fun e!158231 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!243813 (= e!158231 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6076 (_keys!6627 thiss!1504)))))))

(declare-fun b!243814 () Bool)

(declare-fun Unit!7524 () Unit!7521)

(assert (=> b!243814 (= e!158235 Unit!7524)))

(declare-fun b!243815 () Bool)

(declare-fun e!158230 () Bool)

(assert (=> b!243815 (= e!158230 e!158231)))

(declare-fun res!119562 () Bool)

(assert (=> b!243815 (=> (not res!119562) (not e!158231))))

(assert (=> b!243815 (= res!119562 (and (bvslt (size!6076 (_keys!6627 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504)))))))

(declare-fun lt!122318 () Unit!7521)

(assert (=> b!243815 (= lt!122318 e!158235)))

(declare-fun c!40682 () Bool)

(declare-fun arrayContainsKey!0 (array!12078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!243815 (= c!40682 (arrayContainsKey!0 (_keys!6627 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243816 () Bool)

(declare-fun e!158229 () Bool)

(declare-fun e!158234 () Bool)

(assert (=> b!243816 (= e!158229 e!158234)))

(declare-fun res!119548 () Bool)

(assert (=> b!243816 (=> (not res!119548) (not e!158234))))

(assert (=> b!243816 (= res!119548 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!243817 () Bool)

(declare-fun e!158236 () Bool)

(assert (=> b!243817 (= e!158238 e!158236)))

(declare-fun res!119547 () Bool)

(assert (=> b!243817 (=> (not res!119547) (not e!158236))))

(assert (=> b!243817 (= res!119547 (or (= lt!122319 (MissingZero!1086 index!297)) (= lt!122319 (MissingVacant!1086 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12078 (_ BitVec 32)) SeekEntryResult!1086)

(assert (=> b!243817 (= lt!122319 (seekEntryOrOpen!0 key!932 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)))))

(declare-fun e!158240 () Bool)

(declare-fun array_inv!3781 (array!12078) Bool)

(declare-fun array_inv!3782 (array!12076) Bool)

(assert (=> b!243818 (= e!158226 (and tp!22815 tp_is_empty!6393 (array_inv!3781 (_keys!6627 thiss!1504)) (array_inv!3782 (_values!4499 thiss!1504)) e!158240))))

(declare-fun b!243819 () Bool)

(declare-fun c!40680 () Bool)

(get-info :version)

(assert (=> b!243819 (= c!40680 ((_ is MissingVacant!1086) lt!122319))))

(declare-fun e!158233 () Bool)

(declare-fun e!158225 () Bool)

(assert (=> b!243819 (= e!158233 e!158225)))

(declare-fun b!243820 () Bool)

(declare-fun res!119559 () Bool)

(assert (=> b!243820 (=> (not res!119559) (not e!158231))))

(assert (=> b!243820 (= res!119559 e!158229)))

(declare-fun res!119549 () Bool)

(assert (=> b!243820 (=> res!119549 e!158229)))

(declare-fun e!158242 () Bool)

(assert (=> b!243820 (= res!119549 e!158242)))

(declare-fun res!119557 () Bool)

(assert (=> b!243820 (=> (not res!119557) (not e!158242))))

(assert (=> b!243820 (= res!119557 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!243821 () Bool)

(assert (=> b!243821 (= e!158225 e!158232)))

(declare-fun res!119558 () Bool)

(declare-fun call!22735 () Bool)

(assert (=> b!243821 (= res!119558 call!22735)))

(assert (=> b!243821 (=> (not res!119558) (not e!158232))))

(declare-fun c!40679 () Bool)

(declare-fun bm!22731 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22731 (= call!22735 (inRange!0 (ite c!40679 (index!6514 lt!122319) (index!6517 lt!122319)) (mask!10611 thiss!1504)))))

(declare-fun b!243822 () Bool)

(declare-fun res!119550 () Bool)

(assert (=> b!243822 (=> (not res!119550) (not e!158231))))

(declare-datatypes ((List!3670 0))(
  ( (Nil!3667) (Cons!3666 (h!4323 (_ BitVec 64)) (t!8685 List!3670)) )
))
(declare-fun noDuplicate!99 (List!3670) Bool)

(assert (=> b!243822 (= res!119550 (noDuplicate!99 Nil!3667))))

(declare-fun b!243823 () Bool)

(assert (=> b!243823 (= e!158236 e!158230)))

(declare-fun res!119552 () Bool)

(assert (=> b!243823 (=> (not res!119552) (not e!158230))))

(assert (=> b!243823 (= res!119552 (inRange!0 index!297 (mask!10611 thiss!1504)))))

(declare-fun lt!122317 () Unit!7521)

(declare-fun e!158239 () Unit!7521)

(assert (=> b!243823 (= lt!122317 e!158239)))

(declare-fun c!40681 () Bool)

(declare-datatypes ((tuple2!4764 0))(
  ( (tuple2!4765 (_1!2392 (_ BitVec 64)) (_2!2392 V!8171)) )
))
(declare-datatypes ((List!3671 0))(
  ( (Nil!3668) (Cons!3667 (h!4324 tuple2!4764) (t!8686 List!3671)) )
))
(declare-datatypes ((ListLongMap!3691 0))(
  ( (ListLongMap!3692 (toList!1861 List!3671)) )
))
(declare-fun contains!1755 (ListLongMap!3691 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1384 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 32) Int) ListLongMap!3691)

(assert (=> b!243823 (= c!40681 (contains!1755 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)) key!932))))

(declare-fun b!243824 () Bool)

(declare-fun contains!1756 (List!3670 (_ BitVec 64)) Bool)

(assert (=> b!243824 (= e!158242 (contains!1756 Nil!3667 key!932))))

(declare-fun b!243825 () Bool)

(declare-fun res!119556 () Bool)

(assert (=> b!243825 (=> (not res!119556) (not e!158231))))

(declare-fun arrayNoDuplicates!0 (array!12078 (_ BitVec 32) List!3670) Bool)

(assert (=> b!243825 (= res!119556 (arrayNoDuplicates!0 (_keys!6627 thiss!1504) #b00000000000000000000000000000000 Nil!3667))))

(declare-fun mapIsEmpty!10840 () Bool)

(declare-fun mapRes!10840 () Bool)

(assert (=> mapIsEmpty!10840 mapRes!10840))

(declare-fun b!243826 () Bool)

(declare-fun Unit!7525 () Unit!7521)

(assert (=> b!243826 (= e!158239 Unit!7525)))

(declare-fun lt!122316 () Unit!7521)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!364 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 64) Int) Unit!7521)

(assert (=> b!243826 (= lt!122316 (lemmaInListMapThenSeekEntryOrOpenFindsIt!364 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 (defaultEntry!4516 thiss!1504)))))

(assert (=> b!243826 false))

(declare-fun b!243827 () Bool)

(assert (=> b!243827 (= e!158225 ((_ is Undefined!1086) lt!122319))))

(declare-fun b!243828 () Bool)

(declare-fun res!119551 () Bool)

(assert (=> b!243828 (=> (not res!119551) (not e!158238))))

(assert (=> b!243828 (= res!119551 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10840 () Bool)

(declare-fun tp!22816 () Bool)

(assert (=> mapNonEmpty!10840 (= mapRes!10840 (and tp!22816 e!158228))))

(declare-fun mapValue!10840 () ValueCell!2853)

(declare-fun mapRest!10840 () (Array (_ BitVec 32) ValueCell!2853))

(declare-fun mapKey!10840 () (_ BitVec 32))

(assert (=> mapNonEmpty!10840 (= (arr!5733 (_values!4499 thiss!1504)) (store mapRest!10840 mapKey!10840 mapValue!10840))))

(declare-fun bm!22732 () Bool)

(assert (=> bm!22732 (= call!22734 (arrayContainsKey!0 (_keys!6627 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243829 () Bool)

(declare-fun res!119560 () Bool)

(assert (=> b!243829 (=> (not res!119560) (not e!158231))))

(assert (=> b!243829 (= res!119560 (not (contains!1756 Nil!3667 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!243830 () Bool)

(assert (=> b!243830 (= e!158234 (not (contains!1756 Nil!3667 key!932)))))

(declare-fun b!243831 () Bool)

(declare-fun lt!122320 () Unit!7521)

(assert (=> b!243831 (= e!158239 lt!122320)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!368 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 64) Int) Unit!7521)

(assert (=> b!243831 (= lt!122320 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!368 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 (defaultEntry!4516 thiss!1504)))))

(assert (=> b!243831 (= c!40679 ((_ is MissingZero!1086) lt!122319))))

(assert (=> b!243831 e!158233))

(declare-fun b!243832 () Bool)

(declare-fun res!119554 () Bool)

(assert (=> b!243832 (=> (not res!119554) (not e!158227))))

(assert (=> b!243832 (= res!119554 call!22735)))

(assert (=> b!243832 (= e!158233 e!158227)))

(declare-fun b!243833 () Bool)

(declare-fun e!158237 () Bool)

(assert (=> b!243833 (= e!158240 (and e!158237 mapRes!10840))))

(declare-fun condMapEmpty!10840 () Bool)

(declare-fun mapDefault!10840 () ValueCell!2853)

(assert (=> b!243833 (= condMapEmpty!10840 (= (arr!5733 (_values!4499 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2853)) mapDefault!10840)))))

(declare-fun b!243834 () Bool)

(declare-fun res!119555 () Bool)

(assert (=> b!243834 (=> (not res!119555) (not e!158231))))

(assert (=> b!243834 (= res!119555 (not (contains!1756 Nil!3667 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!243835 () Bool)

(assert (=> b!243835 (= e!158237 tp_is_empty!6393)))

(declare-fun b!243836 () Bool)

(assert (=> b!243836 (= e!158232 (not call!22734))))

(assert (= (and start!23232 res!119553) b!243828))

(assert (= (and b!243828 res!119551) b!243817))

(assert (= (and b!243817 res!119547) b!243823))

(assert (= (and b!243823 c!40681) b!243826))

(assert (= (and b!243823 (not c!40681)) b!243831))

(assert (= (and b!243831 c!40679) b!243832))

(assert (= (and b!243831 (not c!40679)) b!243819))

(assert (= (and b!243832 res!119554) b!243811))

(assert (= (and b!243811 res!119561) b!243808))

(assert (= (and b!243819 c!40680) b!243821))

(assert (= (and b!243819 (not c!40680)) b!243827))

(assert (= (and b!243821 res!119558) b!243812))

(assert (= (and b!243812 res!119563) b!243836))

(assert (= (or b!243832 b!243821) bm!22731))

(assert (= (or b!243808 b!243836) bm!22732))

(assert (= (and b!243823 res!119552) b!243815))

(assert (= (and b!243815 c!40682) b!243810))

(assert (= (and b!243815 (not c!40682)) b!243814))

(assert (= (and b!243815 res!119562) b!243822))

(assert (= (and b!243822 res!119550) b!243834))

(assert (= (and b!243834 res!119555) b!243829))

(assert (= (and b!243829 res!119560) b!243820))

(assert (= (and b!243820 res!119557) b!243824))

(assert (= (and b!243820 (not res!119549)) b!243816))

(assert (= (and b!243816 res!119548) b!243830))

(assert (= (and b!243820 res!119559) b!243825))

(assert (= (and b!243825 res!119556) b!243813))

(assert (= (and b!243833 condMapEmpty!10840) mapIsEmpty!10840))

(assert (= (and b!243833 (not condMapEmpty!10840)) mapNonEmpty!10840))

(assert (= (and mapNonEmpty!10840 ((_ is ValueCellFull!2853) mapValue!10840)) b!243809))

(assert (= (and b!243833 ((_ is ValueCellFull!2853) mapDefault!10840)) b!243835))

(assert (= b!243818 b!243833))

(assert (= start!23232 b!243818))

(declare-fun m!262049 () Bool)

(assert (=> bm!22731 m!262049))

(declare-fun m!262051 () Bool)

(assert (=> b!243811 m!262051))

(declare-fun m!262053 () Bool)

(assert (=> b!243812 m!262053))

(declare-fun m!262055 () Bool)

(assert (=> b!243815 m!262055))

(declare-fun m!262057 () Bool)

(assert (=> b!243830 m!262057))

(declare-fun m!262059 () Bool)

(assert (=> b!243829 m!262059))

(declare-fun m!262061 () Bool)

(assert (=> b!243818 m!262061))

(declare-fun m!262063 () Bool)

(assert (=> b!243818 m!262063))

(declare-fun m!262065 () Bool)

(assert (=> b!243810 m!262065))

(declare-fun m!262067 () Bool)

(assert (=> b!243831 m!262067))

(assert (=> b!243824 m!262057))

(declare-fun m!262069 () Bool)

(assert (=> b!243817 m!262069))

(declare-fun m!262071 () Bool)

(assert (=> mapNonEmpty!10840 m!262071))

(assert (=> bm!22732 m!262055))

(declare-fun m!262073 () Bool)

(assert (=> b!243823 m!262073))

(declare-fun m!262075 () Bool)

(assert (=> b!243823 m!262075))

(assert (=> b!243823 m!262075))

(declare-fun m!262077 () Bool)

(assert (=> b!243823 m!262077))

(declare-fun m!262079 () Bool)

(assert (=> b!243822 m!262079))

(declare-fun m!262081 () Bool)

(assert (=> b!243825 m!262081))

(declare-fun m!262083 () Bool)

(assert (=> start!23232 m!262083))

(declare-fun m!262085 () Bool)

(assert (=> b!243834 m!262085))

(declare-fun m!262087 () Bool)

(assert (=> b!243826 m!262087))

(check-sat (not mapNonEmpty!10840) b_and!13531 tp_is_empty!6393 (not bm!22732) (not b!243831) (not b!243823) (not b!243822) (not b!243810) (not b!243834) (not b!243818) (not bm!22731) (not b!243824) (not b!243817) (not b_next!6531) (not b!243826) (not b!243815) (not b!243829) (not b!243825) (not b!243830) (not start!23232))
(check-sat b_and!13531 (not b_next!6531))
(get-model)

(declare-fun d!59987 () Bool)

(declare-fun lt!122342 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!160 (List!3670) (InoxSet (_ BitVec 64)))

(assert (=> d!59987 (= lt!122342 (select (content!160 Nil!3667) key!932))))

(declare-fun e!158302 () Bool)

(assert (=> d!59987 (= lt!122342 e!158302)))

(declare-fun res!119620 () Bool)

(assert (=> d!59987 (=> (not res!119620) (not e!158302))))

(assert (=> d!59987 (= res!119620 ((_ is Cons!3666) Nil!3667))))

(assert (=> d!59987 (= (contains!1756 Nil!3667 key!932) lt!122342)))

(declare-fun b!243928 () Bool)

(declare-fun e!158301 () Bool)

(assert (=> b!243928 (= e!158302 e!158301)))

(declare-fun res!119619 () Bool)

(assert (=> b!243928 (=> res!119619 e!158301)))

(assert (=> b!243928 (= res!119619 (= (h!4323 Nil!3667) key!932))))

(declare-fun b!243929 () Bool)

(assert (=> b!243929 (= e!158301 (contains!1756 (t!8685 Nil!3667) key!932))))

(assert (= (and d!59987 res!119620) b!243928))

(assert (= (and b!243928 (not res!119619)) b!243929))

(declare-fun m!262129 () Bool)

(assert (=> d!59987 m!262129))

(declare-fun m!262131 () Bool)

(assert (=> d!59987 m!262131))

(declare-fun m!262133 () Bool)

(assert (=> b!243929 m!262133))

(assert (=> b!243830 d!59987))

(declare-fun d!59989 () Bool)

(declare-fun res!119625 () Bool)

(declare-fun e!158307 () Bool)

(assert (=> d!59989 (=> res!119625 e!158307)))

(assert (=> d!59989 (= res!119625 ((_ is Nil!3667) Nil!3667))))

(assert (=> d!59989 (= (noDuplicate!99 Nil!3667) e!158307)))

(declare-fun b!243934 () Bool)

(declare-fun e!158308 () Bool)

(assert (=> b!243934 (= e!158307 e!158308)))

(declare-fun res!119626 () Bool)

(assert (=> b!243934 (=> (not res!119626) (not e!158308))))

(assert (=> b!243934 (= res!119626 (not (contains!1756 (t!8685 Nil!3667) (h!4323 Nil!3667))))))

(declare-fun b!243935 () Bool)

(assert (=> b!243935 (= e!158308 (noDuplicate!99 (t!8685 Nil!3667)))))

(assert (= (and d!59989 (not res!119625)) b!243934))

(assert (= (and b!243934 res!119626) b!243935))

(declare-fun m!262135 () Bool)

(assert (=> b!243934 m!262135))

(declare-fun m!262137 () Bool)

(assert (=> b!243935 m!262137))

(assert (=> b!243822 d!59989))

(declare-fun d!59991 () Bool)

(declare-fun lt!122343 () Bool)

(assert (=> d!59991 (= lt!122343 (select (content!160 Nil!3667) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158310 () Bool)

(assert (=> d!59991 (= lt!122343 e!158310)))

(declare-fun res!119628 () Bool)

(assert (=> d!59991 (=> (not res!119628) (not e!158310))))

(assert (=> d!59991 (= res!119628 ((_ is Cons!3666) Nil!3667))))

(assert (=> d!59991 (= (contains!1756 Nil!3667 #b1000000000000000000000000000000000000000000000000000000000000000) lt!122343)))

(declare-fun b!243936 () Bool)

(declare-fun e!158309 () Bool)

(assert (=> b!243936 (= e!158310 e!158309)))

(declare-fun res!119627 () Bool)

(assert (=> b!243936 (=> res!119627 e!158309)))

(assert (=> b!243936 (= res!119627 (= (h!4323 Nil!3667) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!243937 () Bool)

(assert (=> b!243937 (= e!158309 (contains!1756 (t!8685 Nil!3667) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59991 res!119628) b!243936))

(assert (= (and b!243936 (not res!119627)) b!243937))

(assert (=> d!59991 m!262129))

(declare-fun m!262139 () Bool)

(assert (=> d!59991 m!262139))

(declare-fun m!262141 () Bool)

(assert (=> b!243937 m!262141))

(assert (=> b!243829 d!59991))

(declare-fun d!59993 () Bool)

(assert (=> d!59993 (= (inRange!0 (ite c!40679 (index!6514 lt!122319) (index!6517 lt!122319)) (mask!10611 thiss!1504)) (and (bvsge (ite c!40679 (index!6514 lt!122319) (index!6517 lt!122319)) #b00000000000000000000000000000000) (bvslt (ite c!40679 (index!6514 lt!122319) (index!6517 lt!122319)) (bvadd (mask!10611 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22731 d!59993))

(declare-fun d!59995 () Bool)

(declare-fun res!119633 () Bool)

(declare-fun e!158315 () Bool)

(assert (=> d!59995 (=> res!119633 e!158315)))

(assert (=> d!59995 (= res!119633 (= (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59995 (= (arrayContainsKey!0 (_keys!6627 thiss!1504) key!932 #b00000000000000000000000000000000) e!158315)))

(declare-fun b!243942 () Bool)

(declare-fun e!158316 () Bool)

(assert (=> b!243942 (= e!158315 e!158316)))

(declare-fun res!119634 () Bool)

(assert (=> b!243942 (=> (not res!119634) (not e!158316))))

(assert (=> b!243942 (= res!119634 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6076 (_keys!6627 thiss!1504))))))

(declare-fun b!243943 () Bool)

(assert (=> b!243943 (= e!158316 (arrayContainsKey!0 (_keys!6627 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59995 (not res!119633)) b!243942))

(assert (= (and b!243942 res!119634) b!243943))

(declare-fun m!262143 () Bool)

(assert (=> d!59995 m!262143))

(declare-fun m!262145 () Bool)

(assert (=> b!243943 m!262145))

(assert (=> bm!22732 d!59995))

(declare-fun b!243954 () Bool)

(declare-fun e!158325 () Bool)

(declare-fun e!158327 () Bool)

(assert (=> b!243954 (= e!158325 e!158327)))

(declare-fun c!40697 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!243954 (= c!40697 (validKeyInArray!0 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59997 () Bool)

(declare-fun res!119643 () Bool)

(declare-fun e!158328 () Bool)

(assert (=> d!59997 (=> res!119643 e!158328)))

(assert (=> d!59997 (= res!119643 (bvsge #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))))))

(assert (=> d!59997 (= (arrayNoDuplicates!0 (_keys!6627 thiss!1504) #b00000000000000000000000000000000 Nil!3667) e!158328)))

(declare-fun b!243955 () Bool)

(declare-fun call!22744 () Bool)

(assert (=> b!243955 (= e!158327 call!22744)))

(declare-fun b!243956 () Bool)

(declare-fun e!158326 () Bool)

(assert (=> b!243956 (= e!158326 (contains!1756 Nil!3667 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22741 () Bool)

(assert (=> bm!22741 (= call!22744 (arrayNoDuplicates!0 (_keys!6627 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!40697 (Cons!3666 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000) Nil!3667) Nil!3667)))))

(declare-fun b!243957 () Bool)

(assert (=> b!243957 (= e!158327 call!22744)))

(declare-fun b!243958 () Bool)

(assert (=> b!243958 (= e!158328 e!158325)))

(declare-fun res!119641 () Bool)

(assert (=> b!243958 (=> (not res!119641) (not e!158325))))

(assert (=> b!243958 (= res!119641 (not e!158326))))

(declare-fun res!119642 () Bool)

(assert (=> b!243958 (=> (not res!119642) (not e!158326))))

(assert (=> b!243958 (= res!119642 (validKeyInArray!0 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59997 (not res!119643)) b!243958))

(assert (= (and b!243958 res!119642) b!243956))

(assert (= (and b!243958 res!119641) b!243954))

(assert (= (and b!243954 c!40697) b!243957))

(assert (= (and b!243954 (not c!40697)) b!243955))

(assert (= (or b!243957 b!243955) bm!22741))

(assert (=> b!243954 m!262143))

(assert (=> b!243954 m!262143))

(declare-fun m!262147 () Bool)

(assert (=> b!243954 m!262147))

(assert (=> b!243956 m!262143))

(assert (=> b!243956 m!262143))

(declare-fun m!262149 () Bool)

(assert (=> b!243956 m!262149))

(assert (=> bm!22741 m!262143))

(declare-fun m!262151 () Bool)

(assert (=> bm!22741 m!262151))

(assert (=> b!243958 m!262143))

(assert (=> b!243958 m!262143))

(assert (=> b!243958 m!262147))

(assert (=> b!243825 d!59997))

(assert (=> b!243815 d!59995))

(assert (=> b!243824 d!59987))

(declare-fun bm!22746 () Bool)

(declare-fun call!22749 () Bool)

(assert (=> bm!22746 (= call!22749 (arrayContainsKey!0 (_keys!6627 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!243975 () Bool)

(declare-fun e!158337 () Bool)

(assert (=> b!243975 (= e!158337 (not call!22749))))

(declare-fun bm!22747 () Bool)

(declare-fun lt!122348 () SeekEntryResult!1086)

(declare-fun c!40702 () Bool)

(declare-fun call!22750 () Bool)

(assert (=> bm!22747 (= call!22750 (inRange!0 (ite c!40702 (index!6514 lt!122348) (index!6517 lt!122348)) (mask!10611 thiss!1504)))))

(declare-fun b!243976 () Bool)

(declare-fun e!158338 () Bool)

(declare-fun e!158339 () Bool)

(assert (=> b!243976 (= e!158338 e!158339)))

(declare-fun c!40703 () Bool)

(assert (=> b!243976 (= c!40703 ((_ is MissingVacant!1086) lt!122348))))

(declare-fun b!243977 () Bool)

(declare-fun res!119655 () Bool)

(assert (=> b!243977 (=> (not res!119655) (not e!158337))))

(assert (=> b!243977 (= res!119655 call!22750)))

(assert (=> b!243977 (= e!158339 e!158337)))

(declare-fun b!243978 () Bool)

(declare-fun e!158340 () Bool)

(assert (=> b!243978 (= e!158338 e!158340)))

(declare-fun res!119652 () Bool)

(assert (=> b!243978 (= res!119652 call!22750)))

(assert (=> b!243978 (=> (not res!119652) (not e!158340))))

(declare-fun b!243979 () Bool)

(assert (=> b!243979 (and (bvsge (index!6514 lt!122348) #b00000000000000000000000000000000) (bvslt (index!6514 lt!122348) (size!6076 (_keys!6627 thiss!1504))))))

(declare-fun res!119654 () Bool)

(assert (=> b!243979 (= res!119654 (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6514 lt!122348)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243979 (=> (not res!119654) (not e!158340))))

(declare-fun b!243980 () Bool)

(assert (=> b!243980 (= e!158339 ((_ is Undefined!1086) lt!122348))))

(declare-fun d!59999 () Bool)

(assert (=> d!59999 e!158338))

(assert (=> d!59999 (= c!40702 ((_ is MissingZero!1086) lt!122348))))

(assert (=> d!59999 (= lt!122348 (seekEntryOrOpen!0 key!932 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)))))

(declare-fun lt!122349 () Unit!7521)

(declare-fun choose!1145 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 64) Int) Unit!7521)

(assert (=> d!59999 (= lt!122349 (choose!1145 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 (defaultEntry!4516 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59999 (validMask!0 (mask!10611 thiss!1504))))

(assert (=> d!59999 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!368 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 (defaultEntry!4516 thiss!1504)) lt!122349)))

(declare-fun b!243981 () Bool)

(assert (=> b!243981 (= e!158340 (not call!22749))))

(declare-fun b!243982 () Bool)

(declare-fun res!119653 () Bool)

(assert (=> b!243982 (=> (not res!119653) (not e!158337))))

(assert (=> b!243982 (= res!119653 (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6517 lt!122348)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!243982 (and (bvsge (index!6517 lt!122348) #b00000000000000000000000000000000) (bvslt (index!6517 lt!122348) (size!6076 (_keys!6627 thiss!1504))))))

(assert (= (and d!59999 c!40702) b!243978))

(assert (= (and d!59999 (not c!40702)) b!243976))

(assert (= (and b!243978 res!119652) b!243979))

(assert (= (and b!243979 res!119654) b!243981))

(assert (= (and b!243976 c!40703) b!243977))

(assert (= (and b!243976 (not c!40703)) b!243980))

(assert (= (and b!243977 res!119655) b!243982))

(assert (= (and b!243982 res!119653) b!243975))

(assert (= (or b!243978 b!243977) bm!22747))

(assert (= (or b!243981 b!243975) bm!22746))

(assert (=> bm!22746 m!262055))

(declare-fun m!262153 () Bool)

(assert (=> bm!22747 m!262153))

(assert (=> d!59999 m!262069))

(declare-fun m!262155 () Bool)

(assert (=> d!59999 m!262155))

(declare-fun m!262157 () Bool)

(assert (=> d!59999 m!262157))

(declare-fun m!262159 () Bool)

(assert (=> b!243979 m!262159))

(declare-fun m!262161 () Bool)

(assert (=> b!243982 m!262161))

(assert (=> b!243831 d!59999))

(declare-fun d!60001 () Bool)

(assert (=> d!60001 (= (inRange!0 index!297 (mask!10611 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10611 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!243823 d!60001))

(declare-fun d!60003 () Bool)

(declare-fun e!158345 () Bool)

(assert (=> d!60003 e!158345))

(declare-fun res!119658 () Bool)

(assert (=> d!60003 (=> res!119658 e!158345)))

(declare-fun lt!122360 () Bool)

(assert (=> d!60003 (= res!119658 (not lt!122360))))

(declare-fun lt!122359 () Bool)

(assert (=> d!60003 (= lt!122360 lt!122359)))

(declare-fun lt!122358 () Unit!7521)

(declare-fun e!158346 () Unit!7521)

(assert (=> d!60003 (= lt!122358 e!158346)))

(declare-fun c!40706 () Bool)

(assert (=> d!60003 (= c!40706 lt!122359)))

(declare-fun containsKey!276 (List!3671 (_ BitVec 64)) Bool)

(assert (=> d!60003 (= lt!122359 (containsKey!276 (toList!1861 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504))) key!932))))

(assert (=> d!60003 (= (contains!1755 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)) key!932) lt!122360)))

(declare-fun b!243989 () Bool)

(declare-fun lt!122361 () Unit!7521)

(assert (=> b!243989 (= e!158346 lt!122361)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!225 (List!3671 (_ BitVec 64)) Unit!7521)

(assert (=> b!243989 (= lt!122361 (lemmaContainsKeyImpliesGetValueByKeyDefined!225 (toList!1861 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504))) key!932))))

(declare-datatypes ((Option!290 0))(
  ( (Some!289 (v!5287 V!8171)) (None!288) )
))
(declare-fun isDefined!226 (Option!290) Bool)

(declare-fun getValueByKey!284 (List!3671 (_ BitVec 64)) Option!290)

(assert (=> b!243989 (isDefined!226 (getValueByKey!284 (toList!1861 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504))) key!932))))

(declare-fun b!243990 () Bool)

(declare-fun Unit!7530 () Unit!7521)

(assert (=> b!243990 (= e!158346 Unit!7530)))

(declare-fun b!243991 () Bool)

(assert (=> b!243991 (= e!158345 (isDefined!226 (getValueByKey!284 (toList!1861 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504))) key!932)))))

(assert (= (and d!60003 c!40706) b!243989))

(assert (= (and d!60003 (not c!40706)) b!243990))

(assert (= (and d!60003 (not res!119658)) b!243991))

(declare-fun m!262163 () Bool)

(assert (=> d!60003 m!262163))

(declare-fun m!262165 () Bool)

(assert (=> b!243989 m!262165))

(declare-fun m!262167 () Bool)

(assert (=> b!243989 m!262167))

(assert (=> b!243989 m!262167))

(declare-fun m!262169 () Bool)

(assert (=> b!243989 m!262169))

(assert (=> b!243991 m!262167))

(assert (=> b!243991 m!262167))

(assert (=> b!243991 m!262169))

(assert (=> b!243823 d!60003))

(declare-fun bm!22762 () Bool)

(declare-fun call!22768 () ListLongMap!3691)

(declare-fun call!22769 () ListLongMap!3691)

(assert (=> bm!22762 (= call!22768 call!22769)))

(declare-fun b!244034 () Bool)

(declare-fun e!158381 () Bool)

(declare-fun e!158379 () Bool)

(assert (=> b!244034 (= e!158381 e!158379)))

(declare-fun res!119682 () Bool)

(declare-fun call!22766 () Bool)

(assert (=> b!244034 (= res!119682 call!22766)))

(assert (=> b!244034 (=> (not res!119682) (not e!158379))))

(declare-fun bm!22763 () Bool)

(declare-fun lt!122420 () ListLongMap!3691)

(assert (=> bm!22763 (= call!22766 (contains!1755 lt!122420 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22764 () Bool)

(declare-fun call!22765 () ListLongMap!3691)

(declare-fun call!22771 () ListLongMap!3691)

(assert (=> bm!22764 (= call!22765 call!22771)))

(declare-fun b!244035 () Bool)

(declare-fun e!158374 () ListLongMap!3691)

(assert (=> b!244035 (= e!158374 call!22765)))

(declare-fun b!244036 () Bool)

(declare-fun e!158384 () Unit!7521)

(declare-fun lt!122416 () Unit!7521)

(assert (=> b!244036 (= e!158384 lt!122416)))

(declare-fun lt!122411 () ListLongMap!3691)

(declare-fun getCurrentListMapNoExtraKeys!546 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 32) Int) ListLongMap!3691)

(assert (=> b!244036 (= lt!122411 (getCurrentListMapNoExtraKeys!546 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(declare-fun lt!122418 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122418 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122415 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122415 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122421 () Unit!7521)

(declare-fun addStillContains!203 (ListLongMap!3691 (_ BitVec 64) V!8171 (_ BitVec 64)) Unit!7521)

(assert (=> b!244036 (= lt!122421 (addStillContains!203 lt!122411 lt!122418 (zeroValue!4357 thiss!1504) lt!122415))))

(declare-fun +!649 (ListLongMap!3691 tuple2!4764) ListLongMap!3691)

(assert (=> b!244036 (contains!1755 (+!649 lt!122411 (tuple2!4765 lt!122418 (zeroValue!4357 thiss!1504))) lt!122415)))

(declare-fun lt!122413 () Unit!7521)

(assert (=> b!244036 (= lt!122413 lt!122421)))

(declare-fun lt!122417 () ListLongMap!3691)

(assert (=> b!244036 (= lt!122417 (getCurrentListMapNoExtraKeys!546 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(declare-fun lt!122410 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122410 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122414 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122414 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122409 () Unit!7521)

(declare-fun addApplyDifferent!203 (ListLongMap!3691 (_ BitVec 64) V!8171 (_ BitVec 64)) Unit!7521)

(assert (=> b!244036 (= lt!122409 (addApplyDifferent!203 lt!122417 lt!122410 (minValue!4357 thiss!1504) lt!122414))))

(declare-fun apply!227 (ListLongMap!3691 (_ BitVec 64)) V!8171)

(assert (=> b!244036 (= (apply!227 (+!649 lt!122417 (tuple2!4765 lt!122410 (minValue!4357 thiss!1504))) lt!122414) (apply!227 lt!122417 lt!122414))))

(declare-fun lt!122425 () Unit!7521)

(assert (=> b!244036 (= lt!122425 lt!122409)))

(declare-fun lt!122422 () ListLongMap!3691)

(assert (=> b!244036 (= lt!122422 (getCurrentListMapNoExtraKeys!546 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(declare-fun lt!122408 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122408 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122419 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122419 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!122407 () Unit!7521)

(assert (=> b!244036 (= lt!122407 (addApplyDifferent!203 lt!122422 lt!122408 (zeroValue!4357 thiss!1504) lt!122419))))

(assert (=> b!244036 (= (apply!227 (+!649 lt!122422 (tuple2!4765 lt!122408 (zeroValue!4357 thiss!1504))) lt!122419) (apply!227 lt!122422 lt!122419))))

(declare-fun lt!122406 () Unit!7521)

(assert (=> b!244036 (= lt!122406 lt!122407)))

(declare-fun lt!122412 () ListLongMap!3691)

(assert (=> b!244036 (= lt!122412 (getCurrentListMapNoExtraKeys!546 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(declare-fun lt!122427 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122427 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!122426 () (_ BitVec 64))

(assert (=> b!244036 (= lt!122426 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!244036 (= lt!122416 (addApplyDifferent!203 lt!122412 lt!122427 (minValue!4357 thiss!1504) lt!122426))))

(assert (=> b!244036 (= (apply!227 (+!649 lt!122412 (tuple2!4765 lt!122427 (minValue!4357 thiss!1504))) lt!122426) (apply!227 lt!122412 lt!122426))))

(declare-fun b!244037 () Bool)

(declare-fun e!158375 () Bool)

(declare-fun e!158376 () Bool)

(assert (=> b!244037 (= e!158375 e!158376)))

(declare-fun res!119680 () Bool)

(declare-fun call!22767 () Bool)

(assert (=> b!244037 (= res!119680 call!22767)))

(assert (=> b!244037 (=> (not res!119680) (not e!158376))))

(declare-fun b!244038 () Bool)

(declare-fun c!40723 () Bool)

(assert (=> b!244038 (= c!40723 (and (not (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!158383 () ListLongMap!3691)

(assert (=> b!244038 (= e!158374 e!158383)))

(declare-fun b!244039 () Bool)

(assert (=> b!244039 (= e!158379 (= (apply!227 lt!122420 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4357 thiss!1504)))))

(declare-fun b!244040 () Bool)

(declare-fun Unit!7531 () Unit!7521)

(assert (=> b!244040 (= e!158384 Unit!7531)))

(declare-fun b!244041 () Bool)

(declare-fun e!158385 () ListLongMap!3691)

(assert (=> b!244041 (= e!158385 e!158374)))

(declare-fun c!40724 () Bool)

(assert (=> b!244041 (= c!40724 (and (not (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22765 () Bool)

(assert (=> bm!22765 (= call!22769 (getCurrentListMapNoExtraKeys!546 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(declare-fun b!244042 () Bool)

(declare-fun e!158377 () Bool)

(assert (=> b!244042 (= e!158377 (validKeyInArray!0 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!244043 () Bool)

(assert (=> b!244043 (= e!158385 (+!649 call!22771 (tuple2!4765 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4357 thiss!1504))))))

(declare-fun b!244044 () Bool)

(declare-fun e!158380 () Bool)

(declare-fun get!2944 (ValueCell!2853 V!8171) V!8171)

(declare-fun dynLambda!565 (Int (_ BitVec 64)) V!8171)

(assert (=> b!244044 (= e!158380 (= (apply!227 lt!122420 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)) (get!2944 (select (arr!5733 (_values!4499 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!565 (defaultEntry!4516 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!244044 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6075 (_values!4499 thiss!1504))))))

(assert (=> b!244044 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))))))

(declare-fun b!244045 () Bool)

(declare-fun res!119679 () Bool)

(declare-fun e!158378 () Bool)

(assert (=> b!244045 (=> (not res!119679) (not e!158378))))

(declare-fun e!158373 () Bool)

(assert (=> b!244045 (= res!119679 e!158373)))

(declare-fun res!119685 () Bool)

(assert (=> b!244045 (=> res!119685 e!158373)))

(assert (=> b!244045 (= res!119685 (not e!158377))))

(declare-fun res!119683 () Bool)

(assert (=> b!244045 (=> (not res!119683) (not e!158377))))

(assert (=> b!244045 (= res!119683 (bvslt #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))))))

(declare-fun b!244046 () Bool)

(declare-fun e!158382 () Bool)

(assert (=> b!244046 (= e!158382 (validKeyInArray!0 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!244047 () Bool)

(assert (=> b!244047 (= e!158373 e!158380)))

(declare-fun res!119681 () Bool)

(assert (=> b!244047 (=> (not res!119681) (not e!158380))))

(assert (=> b!244047 (= res!119681 (contains!1755 lt!122420 (select (arr!5734 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!244047 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))))))

(declare-fun b!244048 () Bool)

(assert (=> b!244048 (= e!158376 (= (apply!227 lt!122420 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4357 thiss!1504)))))

(declare-fun b!244049 () Bool)

(declare-fun res!119678 () Bool)

(assert (=> b!244049 (=> (not res!119678) (not e!158378))))

(assert (=> b!244049 (= res!119678 e!158375)))

(declare-fun c!40722 () Bool)

(assert (=> b!244049 (= c!40722 (not (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!60005 () Bool)

(assert (=> d!60005 e!158378))

(declare-fun res!119684 () Bool)

(assert (=> d!60005 (=> (not res!119684) (not e!158378))))

(assert (=> d!60005 (= res!119684 (or (bvsge #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))))))))

(declare-fun lt!122423 () ListLongMap!3691)

(assert (=> d!60005 (= lt!122420 lt!122423)))

(declare-fun lt!122424 () Unit!7521)

(assert (=> d!60005 (= lt!122424 e!158384)))

(declare-fun c!40719 () Bool)

(assert (=> d!60005 (= c!40719 e!158382)))

(declare-fun res!119677 () Bool)

(assert (=> d!60005 (=> (not res!119677) (not e!158382))))

(assert (=> d!60005 (= res!119677 (bvslt #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))))))

(assert (=> d!60005 (= lt!122423 e!158385)))

(declare-fun c!40720 () Bool)

(assert (=> d!60005 (= c!40720 (and (not (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60005 (validMask!0 (mask!10611 thiss!1504))))

(assert (=> d!60005 (= (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)) lt!122420)))

(declare-fun b!244050 () Bool)

(assert (=> b!244050 (= e!158381 (not call!22766))))

(declare-fun b!244051 () Bool)

(declare-fun call!22770 () ListLongMap!3691)

(assert (=> b!244051 (= e!158383 call!22770)))

(declare-fun b!244052 () Bool)

(assert (=> b!244052 (= e!158375 (not call!22767))))

(declare-fun bm!22766 () Bool)

(assert (=> bm!22766 (= call!22767 (contains!1755 lt!122420 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22767 () Bool)

(assert (=> bm!22767 (= call!22771 (+!649 (ite c!40720 call!22769 (ite c!40724 call!22768 call!22770)) (ite (or c!40720 c!40724) (tuple2!4765 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4357 thiss!1504)) (tuple2!4765 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4357 thiss!1504)))))))

(declare-fun b!244053 () Bool)

(assert (=> b!244053 (= e!158378 e!158381)))

(declare-fun c!40721 () Bool)

(assert (=> b!244053 (= c!40721 (not (= (bvand (extraKeys!4253 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!244054 () Bool)

(assert (=> b!244054 (= e!158383 call!22765)))

(declare-fun bm!22768 () Bool)

(assert (=> bm!22768 (= call!22770 call!22768)))

(assert (= (and d!60005 c!40720) b!244043))

(assert (= (and d!60005 (not c!40720)) b!244041))

(assert (= (and b!244041 c!40724) b!244035))

(assert (= (and b!244041 (not c!40724)) b!244038))

(assert (= (and b!244038 c!40723) b!244054))

(assert (= (and b!244038 (not c!40723)) b!244051))

(assert (= (or b!244054 b!244051) bm!22768))

(assert (= (or b!244035 bm!22768) bm!22762))

(assert (= (or b!244035 b!244054) bm!22764))

(assert (= (or b!244043 bm!22762) bm!22765))

(assert (= (or b!244043 bm!22764) bm!22767))

(assert (= (and d!60005 res!119677) b!244046))

(assert (= (and d!60005 c!40719) b!244036))

(assert (= (and d!60005 (not c!40719)) b!244040))

(assert (= (and d!60005 res!119684) b!244045))

(assert (= (and b!244045 res!119683) b!244042))

(assert (= (and b!244045 (not res!119685)) b!244047))

(assert (= (and b!244047 res!119681) b!244044))

(assert (= (and b!244045 res!119679) b!244049))

(assert (= (and b!244049 c!40722) b!244037))

(assert (= (and b!244049 (not c!40722)) b!244052))

(assert (= (and b!244037 res!119680) b!244048))

(assert (= (or b!244037 b!244052) bm!22766))

(assert (= (and b!244049 res!119678) b!244053))

(assert (= (and b!244053 c!40721) b!244034))

(assert (= (and b!244053 (not c!40721)) b!244050))

(assert (= (and b!244034 res!119682) b!244039))

(assert (= (or b!244034 b!244050) bm!22763))

(declare-fun b_lambda!8041 () Bool)

(assert (=> (not b_lambda!8041) (not b!244044)))

(declare-fun t!8690 () Bool)

(declare-fun tb!2975 () Bool)

(assert (=> (and b!243818 (= (defaultEntry!4516 thiss!1504) (defaultEntry!4516 thiss!1504)) t!8690) tb!2975))

(declare-fun result!5231 () Bool)

(assert (=> tb!2975 (= result!5231 tp_is_empty!6393)))

(assert (=> b!244044 t!8690))

(declare-fun b_and!13535 () Bool)

(assert (= b_and!13531 (and (=> t!8690 result!5231) b_and!13535)))

(declare-fun m!262171 () Bool)

(assert (=> bm!22766 m!262171))

(assert (=> b!244042 m!262143))

(assert (=> b!244042 m!262143))

(assert (=> b!244042 m!262147))

(declare-fun m!262173 () Bool)

(assert (=> b!244036 m!262173))

(declare-fun m!262175 () Bool)

(assert (=> b!244036 m!262175))

(declare-fun m!262177 () Bool)

(assert (=> b!244036 m!262177))

(declare-fun m!262179 () Bool)

(assert (=> b!244036 m!262179))

(declare-fun m!262181 () Bool)

(assert (=> b!244036 m!262181))

(declare-fun m!262183 () Bool)

(assert (=> b!244036 m!262183))

(assert (=> b!244036 m!262173))

(declare-fun m!262185 () Bool)

(assert (=> b!244036 m!262185))

(declare-fun m!262187 () Bool)

(assert (=> b!244036 m!262187))

(declare-fun m!262189 () Bool)

(assert (=> b!244036 m!262189))

(declare-fun m!262191 () Bool)

(assert (=> b!244036 m!262191))

(declare-fun m!262193 () Bool)

(assert (=> b!244036 m!262193))

(declare-fun m!262195 () Bool)

(assert (=> b!244036 m!262195))

(assert (=> b!244036 m!262143))

(declare-fun m!262197 () Bool)

(assert (=> b!244036 m!262197))

(declare-fun m!262199 () Bool)

(assert (=> b!244036 m!262199))

(assert (=> b!244036 m!262185))

(declare-fun m!262201 () Bool)

(assert (=> b!244036 m!262201))

(assert (=> b!244036 m!262189))

(assert (=> b!244036 m!262179))

(declare-fun m!262203 () Bool)

(assert (=> b!244036 m!262203))

(assert (=> d!60005 m!262157))

(assert (=> bm!22765 m!262187))

(assert (=> b!244047 m!262143))

(assert (=> b!244047 m!262143))

(declare-fun m!262205 () Bool)

(assert (=> b!244047 m!262205))

(declare-fun m!262207 () Bool)

(assert (=> b!244043 m!262207))

(declare-fun m!262209 () Bool)

(assert (=> b!244048 m!262209))

(assert (=> b!244046 m!262143))

(assert (=> b!244046 m!262143))

(assert (=> b!244046 m!262147))

(declare-fun m!262211 () Bool)

(assert (=> b!244039 m!262211))

(declare-fun m!262213 () Bool)

(assert (=> bm!22767 m!262213))

(declare-fun m!262215 () Bool)

(assert (=> bm!22763 m!262215))

(declare-fun m!262217 () Bool)

(assert (=> b!244044 m!262217))

(assert (=> b!244044 m!262143))

(assert (=> b!244044 m!262143))

(declare-fun m!262219 () Bool)

(assert (=> b!244044 m!262219))

(declare-fun m!262221 () Bool)

(assert (=> b!244044 m!262221))

(assert (=> b!244044 m!262217))

(assert (=> b!244044 m!262221))

(declare-fun m!262223 () Bool)

(assert (=> b!244044 m!262223))

(assert (=> b!243823 d!60005))

(declare-fun d!60007 () Bool)

(assert (=> d!60007 (= (array_inv!3781 (_keys!6627 thiss!1504)) (bvsge (size!6076 (_keys!6627 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!243818 d!60007))

(declare-fun d!60009 () Bool)

(assert (=> d!60009 (= (array_inv!3782 (_values!4499 thiss!1504)) (bvsge (size!6075 (_values!4499 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!243818 d!60009))

(declare-fun d!60011 () Bool)

(declare-fun e!158388 () Bool)

(assert (=> d!60011 e!158388))

(declare-fun res!119690 () Bool)

(assert (=> d!60011 (=> (not res!119690) (not e!158388))))

(declare-fun lt!122433 () SeekEntryResult!1086)

(assert (=> d!60011 (= res!119690 ((_ is Found!1086) lt!122433))))

(assert (=> d!60011 (= lt!122433 (seekEntryOrOpen!0 key!932 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)))))

(declare-fun lt!122432 () Unit!7521)

(declare-fun choose!1146 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 64) Int) Unit!7521)

(assert (=> d!60011 (= lt!122432 (choose!1146 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 (defaultEntry!4516 thiss!1504)))))

(assert (=> d!60011 (validMask!0 (mask!10611 thiss!1504))))

(assert (=> d!60011 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!364 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 (defaultEntry!4516 thiss!1504)) lt!122432)))

(declare-fun b!244061 () Bool)

(declare-fun res!119691 () Bool)

(assert (=> b!244061 (=> (not res!119691) (not e!158388))))

(assert (=> b!244061 (= res!119691 (inRange!0 (index!6515 lt!122433) (mask!10611 thiss!1504)))))

(declare-fun b!244062 () Bool)

(assert (=> b!244062 (= e!158388 (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6515 lt!122433)) key!932))))

(assert (=> b!244062 (and (bvsge (index!6515 lt!122433) #b00000000000000000000000000000000) (bvslt (index!6515 lt!122433) (size!6076 (_keys!6627 thiss!1504))))))

(assert (= (and d!60011 res!119690) b!244061))

(assert (= (and b!244061 res!119691) b!244062))

(assert (=> d!60011 m!262069))

(declare-fun m!262225 () Bool)

(assert (=> d!60011 m!262225))

(assert (=> d!60011 m!262157))

(declare-fun m!262227 () Bool)

(assert (=> b!244061 m!262227))

(declare-fun m!262229 () Bool)

(assert (=> b!244062 m!262229))

(assert (=> b!243826 d!60011))

(declare-fun b!244075 () Bool)

(declare-fun e!158397 () SeekEntryResult!1086)

(declare-fun e!158396 () SeekEntryResult!1086)

(assert (=> b!244075 (= e!158397 e!158396)))

(declare-fun lt!122441 () (_ BitVec 64))

(declare-fun lt!122442 () SeekEntryResult!1086)

(assert (=> b!244075 (= lt!122441 (select (arr!5734 (_keys!6627 thiss!1504)) (index!6516 lt!122442)))))

(declare-fun c!40732 () Bool)

(assert (=> b!244075 (= c!40732 (= lt!122441 key!932))))

(declare-fun e!158395 () SeekEntryResult!1086)

(declare-fun b!244076 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12078 (_ BitVec 32)) SeekEntryResult!1086)

(assert (=> b!244076 (= e!158395 (seekKeyOrZeroReturnVacant!0 (x!24354 lt!122442) (index!6516 lt!122442) (index!6516 lt!122442) key!932 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)))))

(declare-fun b!244077 () Bool)

(assert (=> b!244077 (= e!158397 Undefined!1086)))

(declare-fun b!244078 () Bool)

(assert (=> b!244078 (= e!158396 (Found!1086 (index!6516 lt!122442)))))

(declare-fun b!244079 () Bool)

(assert (=> b!244079 (= e!158395 (MissingZero!1086 (index!6516 lt!122442)))))

(declare-fun d!60013 () Bool)

(declare-fun lt!122440 () SeekEntryResult!1086)

(assert (=> d!60013 (and (or ((_ is Undefined!1086) lt!122440) (not ((_ is Found!1086) lt!122440)) (and (bvsge (index!6515 lt!122440) #b00000000000000000000000000000000) (bvslt (index!6515 lt!122440) (size!6076 (_keys!6627 thiss!1504))))) (or ((_ is Undefined!1086) lt!122440) ((_ is Found!1086) lt!122440) (not ((_ is MissingZero!1086) lt!122440)) (and (bvsge (index!6514 lt!122440) #b00000000000000000000000000000000) (bvslt (index!6514 lt!122440) (size!6076 (_keys!6627 thiss!1504))))) (or ((_ is Undefined!1086) lt!122440) ((_ is Found!1086) lt!122440) ((_ is MissingZero!1086) lt!122440) (not ((_ is MissingVacant!1086) lt!122440)) (and (bvsge (index!6517 lt!122440) #b00000000000000000000000000000000) (bvslt (index!6517 lt!122440) (size!6076 (_keys!6627 thiss!1504))))) (or ((_ is Undefined!1086) lt!122440) (ite ((_ is Found!1086) lt!122440) (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6515 lt!122440)) key!932) (ite ((_ is MissingZero!1086) lt!122440) (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6514 lt!122440)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1086) lt!122440) (= (select (arr!5734 (_keys!6627 thiss!1504)) (index!6517 lt!122440)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60013 (= lt!122440 e!158397)))

(declare-fun c!40733 () Bool)

(assert (=> d!60013 (= c!40733 (and ((_ is Intermediate!1086) lt!122442) (undefined!1898 lt!122442)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12078 (_ BitVec 32)) SeekEntryResult!1086)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60013 (= lt!122442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10611 thiss!1504)) key!932 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)))))

(assert (=> d!60013 (validMask!0 (mask!10611 thiss!1504))))

(assert (=> d!60013 (= (seekEntryOrOpen!0 key!932 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)) lt!122440)))

(declare-fun b!244080 () Bool)

(declare-fun c!40731 () Bool)

(assert (=> b!244080 (= c!40731 (= lt!122441 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244080 (= e!158396 e!158395)))

(assert (= (and d!60013 c!40733) b!244077))

(assert (= (and d!60013 (not c!40733)) b!244075))

(assert (= (and b!244075 c!40732) b!244078))

(assert (= (and b!244075 (not c!40732)) b!244080))

(assert (= (and b!244080 c!40731) b!244079))

(assert (= (and b!244080 (not c!40731)) b!244076))

(declare-fun m!262231 () Bool)

(assert (=> b!244075 m!262231))

(declare-fun m!262233 () Bool)

(assert (=> b!244076 m!262233))

(declare-fun m!262235 () Bool)

(assert (=> d!60013 m!262235))

(declare-fun m!262237 () Bool)

(assert (=> d!60013 m!262237))

(declare-fun m!262239 () Bool)

(assert (=> d!60013 m!262239))

(declare-fun m!262241 () Bool)

(assert (=> d!60013 m!262241))

(assert (=> d!60013 m!262237))

(assert (=> d!60013 m!262157))

(declare-fun m!262243 () Bool)

(assert (=> d!60013 m!262243))

(assert (=> b!243817 d!60013))

(declare-fun d!60015 () Bool)

(declare-fun lt!122443 () Bool)

(assert (=> d!60015 (= lt!122443 (select (content!160 Nil!3667) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!158399 () Bool)

(assert (=> d!60015 (= lt!122443 e!158399)))

(declare-fun res!119693 () Bool)

(assert (=> d!60015 (=> (not res!119693) (not e!158399))))

(assert (=> d!60015 (= res!119693 ((_ is Cons!3666) Nil!3667))))

(assert (=> d!60015 (= (contains!1756 Nil!3667 #b0000000000000000000000000000000000000000000000000000000000000000) lt!122443)))

(declare-fun b!244081 () Bool)

(declare-fun e!158398 () Bool)

(assert (=> b!244081 (= e!158399 e!158398)))

(declare-fun res!119692 () Bool)

(assert (=> b!244081 (=> res!119692 e!158398)))

(assert (=> b!244081 (= res!119692 (= (h!4323 Nil!3667) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244082 () Bool)

(assert (=> b!244082 (= e!158398 (contains!1756 (t!8685 Nil!3667) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!60015 res!119693) b!244081))

(assert (= (and b!244081 (not res!119692)) b!244082))

(assert (=> d!60015 m!262129))

(declare-fun m!262245 () Bool)

(assert (=> d!60015 m!262245))

(declare-fun m!262247 () Bool)

(assert (=> b!244082 m!262247))

(assert (=> b!243834 d!60015))

(declare-fun d!60017 () Bool)

(assert (=> d!60017 (contains!1755 (getCurrentListMap!1384 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)) key!932)))

(declare-fun lt!122446 () Unit!7521)

(declare-fun choose!1147 (array!12078 array!12076 (_ BitVec 32) (_ BitVec 32) V!8171 V!8171 (_ BitVec 64) (_ BitVec 32) Int) Unit!7521)

(assert (=> d!60017 (= lt!122446 (choose!1147 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)))))

(assert (=> d!60017 (validMask!0 (mask!10611 thiss!1504))))

(assert (=> d!60017 (= (lemmaArrayContainsKeyThenInListMap!167 (_keys!6627 thiss!1504) (_values!4499 thiss!1504) (mask!10611 thiss!1504) (extraKeys!4253 thiss!1504) (zeroValue!4357 thiss!1504) (minValue!4357 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4516 thiss!1504)) lt!122446)))

(declare-fun bs!8877 () Bool)

(assert (= bs!8877 d!60017))

(assert (=> bs!8877 m!262075))

(assert (=> bs!8877 m!262075))

(assert (=> bs!8877 m!262077))

(declare-fun m!262249 () Bool)

(assert (=> bs!8877 m!262249))

(assert (=> bs!8877 m!262157))

(assert (=> b!243810 d!60017))

(declare-fun d!60019 () Bool)

(declare-fun res!119700 () Bool)

(declare-fun e!158402 () Bool)

(assert (=> d!60019 (=> (not res!119700) (not e!158402))))

(declare-fun simpleValid!249 (LongMapFixedSize!3606) Bool)

(assert (=> d!60019 (= res!119700 (simpleValid!249 thiss!1504))))

(assert (=> d!60019 (= (valid!1404 thiss!1504) e!158402)))

(declare-fun b!244089 () Bool)

(declare-fun res!119701 () Bool)

(assert (=> b!244089 (=> (not res!119701) (not e!158402))))

(declare-fun arrayCountValidKeys!0 (array!12078 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!244089 (= res!119701 (= (arrayCountValidKeys!0 (_keys!6627 thiss!1504) #b00000000000000000000000000000000 (size!6076 (_keys!6627 thiss!1504))) (_size!1852 thiss!1504)))))

(declare-fun b!244090 () Bool)

(declare-fun res!119702 () Bool)

(assert (=> b!244090 (=> (not res!119702) (not e!158402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12078 (_ BitVec 32)) Bool)

(assert (=> b!244090 (= res!119702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6627 thiss!1504) (mask!10611 thiss!1504)))))

(declare-fun b!244091 () Bool)

(assert (=> b!244091 (= e!158402 (arrayNoDuplicates!0 (_keys!6627 thiss!1504) #b00000000000000000000000000000000 Nil!3667))))

(assert (= (and d!60019 res!119700) b!244089))

(assert (= (and b!244089 res!119701) b!244090))

(assert (= (and b!244090 res!119702) b!244091))

(declare-fun m!262251 () Bool)

(assert (=> d!60019 m!262251))

(declare-fun m!262253 () Bool)

(assert (=> b!244089 m!262253))

(declare-fun m!262255 () Bool)

(assert (=> b!244090 m!262255))

(assert (=> b!244091 m!262081))

(assert (=> start!23232 d!60019))

(declare-fun b!244099 () Bool)

(declare-fun e!158408 () Bool)

(assert (=> b!244099 (= e!158408 tp_is_empty!6393)))

(declare-fun condMapEmpty!10846 () Bool)

(declare-fun mapDefault!10846 () ValueCell!2853)

(assert (=> mapNonEmpty!10840 (= condMapEmpty!10846 (= mapRest!10840 ((as const (Array (_ BitVec 32) ValueCell!2853)) mapDefault!10846)))))

(declare-fun mapRes!10846 () Bool)

(assert (=> mapNonEmpty!10840 (= tp!22816 (and e!158408 mapRes!10846))))

(declare-fun b!244098 () Bool)

(declare-fun e!158407 () Bool)

(assert (=> b!244098 (= e!158407 tp_is_empty!6393)))

(declare-fun mapIsEmpty!10846 () Bool)

(assert (=> mapIsEmpty!10846 mapRes!10846))

(declare-fun mapNonEmpty!10846 () Bool)

(declare-fun tp!22825 () Bool)

(assert (=> mapNonEmpty!10846 (= mapRes!10846 (and tp!22825 e!158407))))

(declare-fun mapRest!10846 () (Array (_ BitVec 32) ValueCell!2853))

(declare-fun mapValue!10846 () ValueCell!2853)

(declare-fun mapKey!10846 () (_ BitVec 32))

(assert (=> mapNonEmpty!10846 (= mapRest!10840 (store mapRest!10846 mapKey!10846 mapValue!10846))))

(assert (= (and mapNonEmpty!10840 condMapEmpty!10846) mapIsEmpty!10846))

(assert (= (and mapNonEmpty!10840 (not condMapEmpty!10846)) mapNonEmpty!10846))

(assert (= (and mapNonEmpty!10846 ((_ is ValueCellFull!2853) mapValue!10846)) b!244098))

(assert (= (and mapNonEmpty!10840 ((_ is ValueCellFull!2853) mapDefault!10846)) b!244099))

(declare-fun m!262257 () Bool)

(assert (=> mapNonEmpty!10846 m!262257))

(declare-fun b_lambda!8043 () Bool)

(assert (= b_lambda!8041 (or (and b!243818 b_free!6531) b_lambda!8043)))

(check-sat (not bm!22746) (not bm!22765) (not mapNonEmpty!10846) (not d!60019) (not b!243991) (not b!243956) (not b!244047) (not b!243929) (not b!244044) (not b!243954) (not d!60003) (not d!59991) (not b!244039) (not b!243935) b_and!13535 (not bm!22766) (not b!243937) (not d!60015) (not d!59999) (not b!244090) tp_is_empty!6393 (not b!244036) (not b!244048) (not b!244082) (not bm!22747) (not bm!22767) (not b!244046) (not b!244091) (not d!60011) (not b!243934) (not b_next!6531) (not b!244076) (not d!60013) (not b!244061) (not bm!22763) (not b!244043) (not b!243989) (not b!243958) (not b!244089) (not b!243943) (not bm!22741) (not b_lambda!8043) (not d!59987) (not d!60017) (not b!244042) (not d!60005))
(check-sat b_and!13535 (not b_next!6531))

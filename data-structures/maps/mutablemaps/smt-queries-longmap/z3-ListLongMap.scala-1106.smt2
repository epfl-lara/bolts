; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22842 () Bool)

(assert start!22842)

(declare-fun b!237835 () Bool)

(declare-fun b_free!6387 () Bool)

(declare-fun b_next!6387 () Bool)

(assert (=> b!237835 (= b_free!6387 (not b_next!6387))))

(declare-fun tp!22356 () Bool)

(declare-fun b_and!13365 () Bool)

(assert (=> b!237835 (= tp!22356 b_and!13365)))

(declare-fun b!237826 () Bool)

(declare-fun e!154444 () Bool)

(declare-fun e!154445 () Bool)

(declare-fun mapRes!10596 () Bool)

(assert (=> b!237826 (= e!154444 (and e!154445 mapRes!10596))))

(declare-fun condMapEmpty!10596 () Bool)

(declare-datatypes ((V!7979 0))(
  ( (V!7980 (val!3169 Int)) )
))
(declare-datatypes ((ValueCell!2781 0))(
  ( (ValueCellFull!2781 (v!5200 V!7979)) (EmptyCell!2781) )
))
(declare-datatypes ((array!11770 0))(
  ( (array!11771 (arr!5589 (Array (_ BitVec 32) ValueCell!2781)) (size!5930 (_ BitVec 32))) )
))
(declare-datatypes ((array!11772 0))(
  ( (array!11773 (arr!5590 (Array (_ BitVec 32) (_ BitVec 64))) (size!5931 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3462 0))(
  ( (LongMapFixedSize!3463 (defaultEntry!4413 Int) (mask!10434 (_ BitVec 32)) (extraKeys!4150 (_ BitVec 32)) (zeroValue!4254 V!7979) (minValue!4254 V!7979) (_size!1780 (_ BitVec 32)) (_keys!6509 array!11772) (_values!4396 array!11770) (_vacant!1780 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3462)

(declare-fun mapDefault!10596 () ValueCell!2781)

(assert (=> b!237826 (= condMapEmpty!10596 (= (arr!5589 (_values!4396 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2781)) mapDefault!10596)))))

(declare-fun mapIsEmpty!10596 () Bool)

(assert (=> mapIsEmpty!10596 mapRes!10596))

(declare-fun b!237828 () Bool)

(declare-fun res!116558 () Bool)

(declare-fun e!154441 () Bool)

(assert (=> b!237828 (=> (not res!116558) (not e!154441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!237828 (= res!116558 (validMask!0 (mask!10434 thiss!1504)))))

(declare-fun b!237829 () Bool)

(declare-fun tp_is_empty!6249 () Bool)

(assert (=> b!237829 (= e!154445 tp_is_empty!6249)))

(declare-fun mapNonEmpty!10596 () Bool)

(declare-fun tp!22355 () Bool)

(declare-fun e!154443 () Bool)

(assert (=> mapNonEmpty!10596 (= mapRes!10596 (and tp!22355 e!154443))))

(declare-fun mapRest!10596 () (Array (_ BitVec 32) ValueCell!2781))

(declare-fun mapKey!10596 () (_ BitVec 32))

(declare-fun mapValue!10596 () ValueCell!2781)

(assert (=> mapNonEmpty!10596 (= (arr!5589 (_values!4396 thiss!1504)) (store mapRest!10596 mapKey!10596 mapValue!10596))))

(declare-fun b!237830 () Bool)

(declare-fun res!116560 () Bool)

(assert (=> b!237830 (=> (not res!116560) (not e!154441))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4668 0))(
  ( (tuple2!4669 (_1!2344 (_ BitVec 64)) (_2!2344 V!7979)) )
))
(declare-datatypes ((List!3590 0))(
  ( (Nil!3587) (Cons!3586 (h!4242 tuple2!4668) (t!8587 List!3590)) )
))
(declare-datatypes ((ListLongMap!3595 0))(
  ( (ListLongMap!3596 (toList!1813 List!3590)) )
))
(declare-fun contains!1693 (ListLongMap!3595 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1336 (array!11772 array!11770 (_ BitVec 32) (_ BitVec 32) V!7979 V!7979 (_ BitVec 32) Int) ListLongMap!3595)

(assert (=> b!237830 (= res!116560 (not (contains!1693 (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)) key!932)))))

(declare-fun b!237831 () Bool)

(declare-fun res!116556 () Bool)

(declare-fun e!154442 () Bool)

(assert (=> b!237831 (=> (not res!116556) (not e!154442))))

(assert (=> b!237831 (= res!116556 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237832 () Bool)

(assert (=> b!237832 (= e!154442 e!154441)))

(declare-fun res!116561 () Bool)

(assert (=> b!237832 (=> (not res!116561) (not e!154441))))

(declare-datatypes ((SeekEntryResult!1022 0))(
  ( (MissingZero!1022 (index!6258 (_ BitVec 32))) (Found!1022 (index!6259 (_ BitVec 32))) (Intermediate!1022 (undefined!1834 Bool) (index!6260 (_ BitVec 32)) (x!24000 (_ BitVec 32))) (Undefined!1022) (MissingVacant!1022 (index!6261 (_ BitVec 32))) )
))
(declare-fun lt!120316 () SeekEntryResult!1022)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!237832 (= res!116561 (or (= lt!120316 (MissingZero!1022 index!297)) (= lt!120316 (MissingVacant!1022 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11772 (_ BitVec 32)) SeekEntryResult!1022)

(assert (=> b!237832 (= lt!120316 (seekEntryOrOpen!0 key!932 (_keys!6509 thiss!1504) (mask!10434 thiss!1504)))))

(declare-fun b!237833 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11772 (_ BitVec 32)) Bool)

(assert (=> b!237833 (= e!154441 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6509 thiss!1504) (mask!10434 thiss!1504))))))

(declare-fun b!237834 () Bool)

(assert (=> b!237834 (= e!154443 tp_is_empty!6249)))

(declare-fun e!154439 () Bool)

(declare-fun array_inv!3683 (array!11772) Bool)

(declare-fun array_inv!3684 (array!11770) Bool)

(assert (=> b!237835 (= e!154439 (and tp!22356 tp_is_empty!6249 (array_inv!3683 (_keys!6509 thiss!1504)) (array_inv!3684 (_values!4396 thiss!1504)) e!154444))))

(declare-fun res!116559 () Bool)

(assert (=> start!22842 (=> (not res!116559) (not e!154442))))

(declare-fun valid!1359 (LongMapFixedSize!3462) Bool)

(assert (=> start!22842 (= res!116559 (valid!1359 thiss!1504))))

(assert (=> start!22842 e!154442))

(assert (=> start!22842 e!154439))

(assert (=> start!22842 true))

(declare-fun b!237827 () Bool)

(declare-fun res!116557 () Bool)

(assert (=> b!237827 (=> (not res!116557) (not e!154441))))

(assert (=> b!237827 (= res!116557 (and (= (size!5930 (_values!4396 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10434 thiss!1504))) (= (size!5931 (_keys!6509 thiss!1504)) (size!5930 (_values!4396 thiss!1504))) (bvsge (mask!10434 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4150 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4150 thiss!1504) #b00000000000000000000000000000011)))))

(assert (= (and start!22842 res!116559) b!237831))

(assert (= (and b!237831 res!116556) b!237832))

(assert (= (and b!237832 res!116561) b!237830))

(assert (= (and b!237830 res!116560) b!237828))

(assert (= (and b!237828 res!116558) b!237827))

(assert (= (and b!237827 res!116557) b!237833))

(assert (= (and b!237826 condMapEmpty!10596) mapIsEmpty!10596))

(assert (= (and b!237826 (not condMapEmpty!10596)) mapNonEmpty!10596))

(get-info :version)

(assert (= (and mapNonEmpty!10596 ((_ is ValueCellFull!2781) mapValue!10596)) b!237834))

(assert (= (and b!237826 ((_ is ValueCellFull!2781) mapDefault!10596)) b!237829))

(assert (= b!237835 b!237826))

(assert (= start!22842 b!237835))

(declare-fun m!258573 () Bool)

(assert (=> b!237828 m!258573))

(declare-fun m!258575 () Bool)

(assert (=> start!22842 m!258575))

(declare-fun m!258577 () Bool)

(assert (=> b!237835 m!258577))

(declare-fun m!258579 () Bool)

(assert (=> b!237835 m!258579))

(declare-fun m!258581 () Bool)

(assert (=> b!237832 m!258581))

(declare-fun m!258583 () Bool)

(assert (=> mapNonEmpty!10596 m!258583))

(declare-fun m!258585 () Bool)

(assert (=> b!237830 m!258585))

(assert (=> b!237830 m!258585))

(declare-fun m!258587 () Bool)

(assert (=> b!237830 m!258587))

(declare-fun m!258589 () Bool)

(assert (=> b!237833 m!258589))

(check-sat (not b!237833) tp_is_empty!6249 (not b!237832) (not b_next!6387) (not start!22842) (not b!237830) (not b!237835) (not b!237828) (not mapNonEmpty!10596) b_and!13365)
(check-sat b_and!13365 (not b_next!6387))
(get-model)

(declare-fun d!59627 () Bool)

(declare-fun e!154471 () Bool)

(assert (=> d!59627 e!154471))

(declare-fun res!116582 () Bool)

(assert (=> d!59627 (=> res!116582 e!154471)))

(declare-fun lt!120328 () Bool)

(assert (=> d!59627 (= res!116582 (not lt!120328))))

(declare-fun lt!120331 () Bool)

(assert (=> d!59627 (= lt!120328 lt!120331)))

(declare-datatypes ((Unit!7305 0))(
  ( (Unit!7306) )
))
(declare-fun lt!120329 () Unit!7305)

(declare-fun e!154472 () Unit!7305)

(assert (=> d!59627 (= lt!120329 e!154472)))

(declare-fun c!39664 () Bool)

(assert (=> d!59627 (= c!39664 lt!120331)))

(declare-fun containsKey!267 (List!3590 (_ BitVec 64)) Bool)

(assert (=> d!59627 (= lt!120331 (containsKey!267 (toList!1813 (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504))) key!932))))

(assert (=> d!59627 (= (contains!1693 (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)) key!932) lt!120328)))

(declare-fun b!237872 () Bool)

(declare-fun lt!120330 () Unit!7305)

(assert (=> b!237872 (= e!154472 lt!120330)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!216 (List!3590 (_ BitVec 64)) Unit!7305)

(assert (=> b!237872 (= lt!120330 (lemmaContainsKeyImpliesGetValueByKeyDefined!216 (toList!1813 (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504))) key!932))))

(declare-datatypes ((Option!281 0))(
  ( (Some!280 (v!5202 V!7979)) (None!279) )
))
(declare-fun isDefined!217 (Option!281) Bool)

(declare-fun getValueByKey!275 (List!3590 (_ BitVec 64)) Option!281)

(assert (=> b!237872 (isDefined!217 (getValueByKey!275 (toList!1813 (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504))) key!932))))

(declare-fun b!237873 () Bool)

(declare-fun Unit!7307 () Unit!7305)

(assert (=> b!237873 (= e!154472 Unit!7307)))

(declare-fun b!237874 () Bool)

(assert (=> b!237874 (= e!154471 (isDefined!217 (getValueByKey!275 (toList!1813 (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504))) key!932)))))

(assert (= (and d!59627 c!39664) b!237872))

(assert (= (and d!59627 (not c!39664)) b!237873))

(assert (= (and d!59627 (not res!116582)) b!237874))

(declare-fun m!258609 () Bool)

(assert (=> d!59627 m!258609))

(declare-fun m!258611 () Bool)

(assert (=> b!237872 m!258611))

(declare-fun m!258613 () Bool)

(assert (=> b!237872 m!258613))

(assert (=> b!237872 m!258613))

(declare-fun m!258615 () Bool)

(assert (=> b!237872 m!258615))

(assert (=> b!237874 m!258613))

(assert (=> b!237874 m!258613))

(assert (=> b!237874 m!258615))

(assert (=> b!237830 d!59627))

(declare-fun b!237917 () Bool)

(declare-fun e!154510 () Bool)

(declare-fun e!154500 () Bool)

(assert (=> b!237917 (= e!154510 e!154500)))

(declare-fun res!116607 () Bool)

(declare-fun call!22123 () Bool)

(assert (=> b!237917 (= res!116607 call!22123)))

(assert (=> b!237917 (=> (not res!116607) (not e!154500))))

(declare-fun b!237918 () Bool)

(declare-fun c!39677 () Bool)

(assert (=> b!237918 (= c!39677 (and (not (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!154503 () ListLongMap!3595)

(declare-fun e!154499 () ListLongMap!3595)

(assert (=> b!237918 (= e!154503 e!154499)))

(declare-fun b!237919 () Bool)

(declare-fun e!154509 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!237919 (= e!154509 (validKeyInArray!0 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237920 () Bool)

(declare-fun e!154506 () Bool)

(declare-fun e!154501 () Bool)

(assert (=> b!237920 (= e!154506 e!154501)))

(declare-fun res!116606 () Bool)

(assert (=> b!237920 (=> (not res!116606) (not e!154501))))

(declare-fun lt!120395 () ListLongMap!3595)

(assert (=> b!237920 (= res!116606 (contains!1693 lt!120395 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!237920 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))))))

(declare-fun d!59629 () Bool)

(declare-fun e!154505 () Bool)

(assert (=> d!59629 e!154505))

(declare-fun res!116608 () Bool)

(assert (=> d!59629 (=> (not res!116608) (not e!154505))))

(assert (=> d!59629 (= res!116608 (or (bvsge #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))))))))

(declare-fun lt!120377 () ListLongMap!3595)

(assert (=> d!59629 (= lt!120395 lt!120377)))

(declare-fun lt!120396 () Unit!7305)

(declare-fun e!154511 () Unit!7305)

(assert (=> d!59629 (= lt!120396 e!154511)))

(declare-fun c!39678 () Bool)

(assert (=> d!59629 (= c!39678 e!154509)))

(declare-fun res!116604 () Bool)

(assert (=> d!59629 (=> (not res!116604) (not e!154509))))

(assert (=> d!59629 (= res!116604 (bvslt #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))))))

(declare-fun e!154502 () ListLongMap!3595)

(assert (=> d!59629 (= lt!120377 e!154502)))

(declare-fun c!39680 () Bool)

(assert (=> d!59629 (= c!39680 (and (not (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59629 (validMask!0 (mask!10434 thiss!1504))))

(assert (=> d!59629 (= (getCurrentListMap!1336 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)) lt!120395)))

(declare-fun b!237921 () Bool)

(declare-fun e!154508 () Bool)

(declare-fun e!154504 () Bool)

(assert (=> b!237921 (= e!154508 e!154504)))

(declare-fun res!116605 () Bool)

(declare-fun call!22119 () Bool)

(assert (=> b!237921 (= res!116605 call!22119)))

(assert (=> b!237921 (=> (not res!116605) (not e!154504))))

(declare-fun b!237922 () Bool)

(declare-fun call!22120 () ListLongMap!3595)

(declare-fun +!640 (ListLongMap!3595 tuple2!4668) ListLongMap!3595)

(assert (=> b!237922 (= e!154502 (+!640 call!22120 (tuple2!4669 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4254 thiss!1504))))))

(declare-fun bm!22114 () Bool)

(assert (=> bm!22114 (= call!22119 (contains!1693 lt!120395 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22115 () Bool)

(declare-fun c!39681 () Bool)

(declare-fun call!22118 () ListLongMap!3595)

(declare-fun call!22121 () ListLongMap!3595)

(declare-fun call!22117 () ListLongMap!3595)

(assert (=> bm!22115 (= call!22120 (+!640 (ite c!39680 call!22117 (ite c!39681 call!22118 call!22121)) (ite (or c!39680 c!39681) (tuple2!4669 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4254 thiss!1504)) (tuple2!4669 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4254 thiss!1504)))))))

(declare-fun b!237923 () Bool)

(declare-fun apply!218 (ListLongMap!3595 (_ BitVec 64)) V!7979)

(assert (=> b!237923 (= e!154500 (= (apply!218 lt!120395 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4254 thiss!1504)))))

(declare-fun b!237924 () Bool)

(declare-fun call!22122 () ListLongMap!3595)

(assert (=> b!237924 (= e!154503 call!22122)))

(declare-fun b!237925 () Bool)

(assert (=> b!237925 (= e!154508 (not call!22119))))

(declare-fun b!237926 () Bool)

(declare-fun get!2884 (ValueCell!2781 V!7979) V!7979)

(declare-fun dynLambda!556 (Int (_ BitVec 64)) V!7979)

(assert (=> b!237926 (= e!154501 (= (apply!218 lt!120395 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000)) (get!2884 (select (arr!5589 (_values!4396 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!556 (defaultEntry!4413 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!237926 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5930 (_values!4396 thiss!1504))))))

(assert (=> b!237926 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))))))

(declare-fun b!237927 () Bool)

(declare-fun lt!120385 () Unit!7305)

(assert (=> b!237927 (= e!154511 lt!120385)))

(declare-fun lt!120376 () ListLongMap!3595)

(declare-fun getCurrentListMapNoExtraKeys!537 (array!11772 array!11770 (_ BitVec 32) (_ BitVec 32) V!7979 V!7979 (_ BitVec 32) Int) ListLongMap!3595)

(assert (=> b!237927 (= lt!120376 (getCurrentListMapNoExtraKeys!537 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)))))

(declare-fun lt!120380 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120380 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120387 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120387 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120391 () Unit!7305)

(declare-fun addStillContains!194 (ListLongMap!3595 (_ BitVec 64) V!7979 (_ BitVec 64)) Unit!7305)

(assert (=> b!237927 (= lt!120391 (addStillContains!194 lt!120376 lt!120380 (zeroValue!4254 thiss!1504) lt!120387))))

(assert (=> b!237927 (contains!1693 (+!640 lt!120376 (tuple2!4669 lt!120380 (zeroValue!4254 thiss!1504))) lt!120387)))

(declare-fun lt!120378 () Unit!7305)

(assert (=> b!237927 (= lt!120378 lt!120391)))

(declare-fun lt!120386 () ListLongMap!3595)

(assert (=> b!237927 (= lt!120386 (getCurrentListMapNoExtraKeys!537 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)))))

(declare-fun lt!120379 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120379 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120397 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120397 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120394 () Unit!7305)

(declare-fun addApplyDifferent!194 (ListLongMap!3595 (_ BitVec 64) V!7979 (_ BitVec 64)) Unit!7305)

(assert (=> b!237927 (= lt!120394 (addApplyDifferent!194 lt!120386 lt!120379 (minValue!4254 thiss!1504) lt!120397))))

(assert (=> b!237927 (= (apply!218 (+!640 lt!120386 (tuple2!4669 lt!120379 (minValue!4254 thiss!1504))) lt!120397) (apply!218 lt!120386 lt!120397))))

(declare-fun lt!120383 () Unit!7305)

(assert (=> b!237927 (= lt!120383 lt!120394)))

(declare-fun lt!120390 () ListLongMap!3595)

(assert (=> b!237927 (= lt!120390 (getCurrentListMapNoExtraKeys!537 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)))))

(declare-fun lt!120382 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120382 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120388 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120388 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120393 () Unit!7305)

(assert (=> b!237927 (= lt!120393 (addApplyDifferent!194 lt!120390 lt!120382 (zeroValue!4254 thiss!1504) lt!120388))))

(assert (=> b!237927 (= (apply!218 (+!640 lt!120390 (tuple2!4669 lt!120382 (zeroValue!4254 thiss!1504))) lt!120388) (apply!218 lt!120390 lt!120388))))

(declare-fun lt!120381 () Unit!7305)

(assert (=> b!237927 (= lt!120381 lt!120393)))

(declare-fun lt!120392 () ListLongMap!3595)

(assert (=> b!237927 (= lt!120392 (getCurrentListMapNoExtraKeys!537 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)))))

(declare-fun lt!120384 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120384 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!120389 () (_ BitVec 64))

(assert (=> b!237927 (= lt!120389 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237927 (= lt!120385 (addApplyDifferent!194 lt!120392 lt!120384 (minValue!4254 thiss!1504) lt!120389))))

(assert (=> b!237927 (= (apply!218 (+!640 lt!120392 (tuple2!4669 lt!120384 (minValue!4254 thiss!1504))) lt!120389) (apply!218 lt!120392 lt!120389))))

(declare-fun bm!22116 () Bool)

(assert (=> bm!22116 (= call!22117 (getCurrentListMapNoExtraKeys!537 (_keys!6509 thiss!1504) (_values!4396 thiss!1504) (mask!10434 thiss!1504) (extraKeys!4150 thiss!1504) (zeroValue!4254 thiss!1504) (minValue!4254 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4413 thiss!1504)))))

(declare-fun b!237928 () Bool)

(declare-fun Unit!7308 () Unit!7305)

(assert (=> b!237928 (= e!154511 Unit!7308)))

(declare-fun b!237929 () Bool)

(declare-fun e!154507 () Bool)

(assert (=> b!237929 (= e!154507 (validKeyInArray!0 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237930 () Bool)

(assert (=> b!237930 (= e!154504 (= (apply!218 lt!120395 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4254 thiss!1504)))))

(declare-fun bm!22117 () Bool)

(assert (=> bm!22117 (= call!22122 call!22120)))

(declare-fun b!237931 () Bool)

(assert (=> b!237931 (= e!154499 call!22121)))

(declare-fun bm!22118 () Bool)

(assert (=> bm!22118 (= call!22118 call!22117)))

(declare-fun b!237932 () Bool)

(assert (=> b!237932 (= e!154510 (not call!22123))))

(declare-fun b!237933 () Bool)

(assert (=> b!237933 (= e!154505 e!154508)))

(declare-fun c!39682 () Bool)

(assert (=> b!237933 (= c!39682 (not (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22119 () Bool)

(assert (=> bm!22119 (= call!22123 (contains!1693 lt!120395 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!22120 () Bool)

(assert (=> bm!22120 (= call!22121 call!22118)))

(declare-fun b!237934 () Bool)

(assert (=> b!237934 (= e!154499 call!22122)))

(declare-fun b!237935 () Bool)

(declare-fun res!116603 () Bool)

(assert (=> b!237935 (=> (not res!116603) (not e!154505))))

(assert (=> b!237935 (= res!116603 e!154506)))

(declare-fun res!116602 () Bool)

(assert (=> b!237935 (=> res!116602 e!154506)))

(assert (=> b!237935 (= res!116602 (not e!154507))))

(declare-fun res!116601 () Bool)

(assert (=> b!237935 (=> (not res!116601) (not e!154507))))

(assert (=> b!237935 (= res!116601 (bvslt #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))))))

(declare-fun b!237936 () Bool)

(declare-fun res!116609 () Bool)

(assert (=> b!237936 (=> (not res!116609) (not e!154505))))

(assert (=> b!237936 (= res!116609 e!154510)))

(declare-fun c!39679 () Bool)

(assert (=> b!237936 (= c!39679 (not (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!237937 () Bool)

(assert (=> b!237937 (= e!154502 e!154503)))

(assert (=> b!237937 (= c!39681 (and (not (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4150 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!59629 c!39680) b!237922))

(assert (= (and d!59629 (not c!39680)) b!237937))

(assert (= (and b!237937 c!39681) b!237924))

(assert (= (and b!237937 (not c!39681)) b!237918))

(assert (= (and b!237918 c!39677) b!237934))

(assert (= (and b!237918 (not c!39677)) b!237931))

(assert (= (or b!237934 b!237931) bm!22120))

(assert (= (or b!237924 bm!22120) bm!22118))

(assert (= (or b!237924 b!237934) bm!22117))

(assert (= (or b!237922 bm!22118) bm!22116))

(assert (= (or b!237922 bm!22117) bm!22115))

(assert (= (and d!59629 res!116604) b!237919))

(assert (= (and d!59629 c!39678) b!237927))

(assert (= (and d!59629 (not c!39678)) b!237928))

(assert (= (and d!59629 res!116608) b!237935))

(assert (= (and b!237935 res!116601) b!237929))

(assert (= (and b!237935 (not res!116602)) b!237920))

(assert (= (and b!237920 res!116606) b!237926))

(assert (= (and b!237935 res!116603) b!237936))

(assert (= (and b!237936 c!39679) b!237917))

(assert (= (and b!237936 (not c!39679)) b!237932))

(assert (= (and b!237917 res!116607) b!237923))

(assert (= (or b!237917 b!237932) bm!22119))

(assert (= (and b!237936 res!116609) b!237933))

(assert (= (and b!237933 c!39682) b!237921))

(assert (= (and b!237933 (not c!39682)) b!237925))

(assert (= (and b!237921 res!116605) b!237930))

(assert (= (or b!237921 b!237925) bm!22114))

(declare-fun b_lambda!7997 () Bool)

(assert (=> (not b_lambda!7997) (not b!237926)))

(declare-fun t!8589 () Bool)

(declare-fun tb!2957 () Bool)

(assert (=> (and b!237835 (= (defaultEntry!4413 thiss!1504) (defaultEntry!4413 thiss!1504)) t!8589) tb!2957))

(declare-fun result!5177 () Bool)

(assert (=> tb!2957 (= result!5177 tp_is_empty!6249)))

(assert (=> b!237926 t!8589))

(declare-fun b_and!13369 () Bool)

(assert (= b_and!13365 (and (=> t!8589 result!5177) b_and!13369)))

(declare-fun m!258617 () Bool)

(assert (=> b!237930 m!258617))

(declare-fun m!258619 () Bool)

(assert (=> bm!22114 m!258619))

(assert (=> d!59629 m!258573))

(declare-fun m!258621 () Bool)

(assert (=> b!237922 m!258621))

(declare-fun m!258623 () Bool)

(assert (=> b!237923 m!258623))

(declare-fun m!258625 () Bool)

(assert (=> b!237919 m!258625))

(assert (=> b!237919 m!258625))

(declare-fun m!258627 () Bool)

(assert (=> b!237919 m!258627))

(declare-fun m!258629 () Bool)

(assert (=> bm!22115 m!258629))

(declare-fun m!258631 () Bool)

(assert (=> bm!22116 m!258631))

(declare-fun m!258633 () Bool)

(assert (=> b!237926 m!258633))

(declare-fun m!258635 () Bool)

(assert (=> b!237926 m!258635))

(assert (=> b!237926 m!258633))

(declare-fun m!258637 () Bool)

(assert (=> b!237926 m!258637))

(assert (=> b!237926 m!258635))

(assert (=> b!237926 m!258625))

(assert (=> b!237926 m!258625))

(declare-fun m!258639 () Bool)

(assert (=> b!237926 m!258639))

(assert (=> b!237929 m!258625))

(assert (=> b!237929 m!258625))

(assert (=> b!237929 m!258627))

(declare-fun m!258641 () Bool)

(assert (=> b!237927 m!258641))

(declare-fun m!258643 () Bool)

(assert (=> b!237927 m!258643))

(declare-fun m!258645 () Bool)

(assert (=> b!237927 m!258645))

(assert (=> b!237927 m!258631))

(declare-fun m!258647 () Bool)

(assert (=> b!237927 m!258647))

(declare-fun m!258649 () Bool)

(assert (=> b!237927 m!258649))

(assert (=> b!237927 m!258625))

(assert (=> b!237927 m!258641))

(assert (=> b!237927 m!258647))

(declare-fun m!258651 () Bool)

(assert (=> b!237927 m!258651))

(declare-fun m!258653 () Bool)

(assert (=> b!237927 m!258653))

(declare-fun m!258655 () Bool)

(assert (=> b!237927 m!258655))

(declare-fun m!258657 () Bool)

(assert (=> b!237927 m!258657))

(declare-fun m!258659 () Bool)

(assert (=> b!237927 m!258659))

(assert (=> b!237927 m!258653))

(declare-fun m!258661 () Bool)

(assert (=> b!237927 m!258661))

(declare-fun m!258663 () Bool)

(assert (=> b!237927 m!258663))

(declare-fun m!258665 () Bool)

(assert (=> b!237927 m!258665))

(declare-fun m!258667 () Bool)

(assert (=> b!237927 m!258667))

(assert (=> b!237927 m!258661))

(declare-fun m!258669 () Bool)

(assert (=> b!237927 m!258669))

(assert (=> b!237920 m!258625))

(assert (=> b!237920 m!258625))

(declare-fun m!258671 () Bool)

(assert (=> b!237920 m!258671))

(declare-fun m!258673 () Bool)

(assert (=> bm!22119 m!258673))

(assert (=> b!237830 d!59629))

(declare-fun d!59631 () Bool)

(assert (=> d!59631 (= (array_inv!3683 (_keys!6509 thiss!1504)) (bvsge (size!5931 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237835 d!59631))

(declare-fun d!59633 () Bool)

(assert (=> d!59633 (= (array_inv!3684 (_values!4396 thiss!1504)) (bvsge (size!5930 (_values!4396 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!237835 d!59633))

(declare-fun b!237948 () Bool)

(declare-fun e!154520 () Bool)

(declare-fun e!154519 () Bool)

(assert (=> b!237948 (= e!154520 e!154519)))

(declare-fun lt!120405 () (_ BitVec 64))

(assert (=> b!237948 (= lt!120405 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!120404 () Unit!7305)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11772 (_ BitVec 64) (_ BitVec 32)) Unit!7305)

(assert (=> b!237948 (= lt!120404 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6509 thiss!1504) lt!120405 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!237948 (arrayContainsKey!0 (_keys!6509 thiss!1504) lt!120405 #b00000000000000000000000000000000)))

(declare-fun lt!120406 () Unit!7305)

(assert (=> b!237948 (= lt!120406 lt!120404)))

(declare-fun res!116615 () Bool)

(assert (=> b!237948 (= res!116615 (= (seekEntryOrOpen!0 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000) (_keys!6509 thiss!1504) (mask!10434 thiss!1504)) (Found!1022 #b00000000000000000000000000000000)))))

(assert (=> b!237948 (=> (not res!116615) (not e!154519))))

(declare-fun bm!22123 () Bool)

(declare-fun call!22126 () Bool)

(assert (=> bm!22123 (= call!22126 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6509 thiss!1504) (mask!10434 thiss!1504)))))

(declare-fun b!237949 () Bool)

(declare-fun e!154518 () Bool)

(assert (=> b!237949 (= e!154518 e!154520)))

(declare-fun c!39685 () Bool)

(assert (=> b!237949 (= c!39685 (validKeyInArray!0 (select (arr!5590 (_keys!6509 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!237950 () Bool)

(assert (=> b!237950 (= e!154519 call!22126)))

(declare-fun d!59635 () Bool)

(declare-fun res!116614 () Bool)

(assert (=> d!59635 (=> res!116614 e!154518)))

(assert (=> d!59635 (= res!116614 (bvsge #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))))))

(assert (=> d!59635 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6509 thiss!1504) (mask!10434 thiss!1504)) e!154518)))

(declare-fun b!237951 () Bool)

(assert (=> b!237951 (= e!154520 call!22126)))

(assert (= (and d!59635 (not res!116614)) b!237949))

(assert (= (and b!237949 c!39685) b!237948))

(assert (= (and b!237949 (not c!39685)) b!237951))

(assert (= (and b!237948 res!116615) b!237950))

(assert (= (or b!237950 b!237951) bm!22123))

(assert (=> b!237948 m!258625))

(declare-fun m!258675 () Bool)

(assert (=> b!237948 m!258675))

(declare-fun m!258677 () Bool)

(assert (=> b!237948 m!258677))

(assert (=> b!237948 m!258625))

(declare-fun m!258679 () Bool)

(assert (=> b!237948 m!258679))

(declare-fun m!258681 () Bool)

(assert (=> bm!22123 m!258681))

(assert (=> b!237949 m!258625))

(assert (=> b!237949 m!258625))

(assert (=> b!237949 m!258627))

(assert (=> b!237833 d!59635))

(declare-fun b!237965 () Bool)

(declare-fun e!154528 () SeekEntryResult!1022)

(declare-fun lt!120413 () SeekEntryResult!1022)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11772 (_ BitVec 32)) SeekEntryResult!1022)

(assert (=> b!237965 (= e!154528 (seekKeyOrZeroReturnVacant!0 (x!24000 lt!120413) (index!6260 lt!120413) (index!6260 lt!120413) key!932 (_keys!6509 thiss!1504) (mask!10434 thiss!1504)))))

(declare-fun b!237966 () Bool)

(declare-fun e!154529 () SeekEntryResult!1022)

(declare-fun e!154527 () SeekEntryResult!1022)

(assert (=> b!237966 (= e!154529 e!154527)))

(declare-fun lt!120414 () (_ BitVec 64))

(assert (=> b!237966 (= lt!120414 (select (arr!5590 (_keys!6509 thiss!1504)) (index!6260 lt!120413)))))

(declare-fun c!39694 () Bool)

(assert (=> b!237966 (= c!39694 (= lt!120414 key!932))))

(declare-fun b!237967 () Bool)

(declare-fun c!39692 () Bool)

(assert (=> b!237967 (= c!39692 (= lt!120414 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!237967 (= e!154527 e!154528)))

(declare-fun b!237968 () Bool)

(assert (=> b!237968 (= e!154527 (Found!1022 (index!6260 lt!120413)))))

(declare-fun b!237969 () Bool)

(assert (=> b!237969 (= e!154528 (MissingZero!1022 (index!6260 lt!120413)))))

(declare-fun b!237964 () Bool)

(assert (=> b!237964 (= e!154529 Undefined!1022)))

(declare-fun d!59637 () Bool)

(declare-fun lt!120415 () SeekEntryResult!1022)

(assert (=> d!59637 (and (or ((_ is Undefined!1022) lt!120415) (not ((_ is Found!1022) lt!120415)) (and (bvsge (index!6259 lt!120415) #b00000000000000000000000000000000) (bvslt (index!6259 lt!120415) (size!5931 (_keys!6509 thiss!1504))))) (or ((_ is Undefined!1022) lt!120415) ((_ is Found!1022) lt!120415) (not ((_ is MissingZero!1022) lt!120415)) (and (bvsge (index!6258 lt!120415) #b00000000000000000000000000000000) (bvslt (index!6258 lt!120415) (size!5931 (_keys!6509 thiss!1504))))) (or ((_ is Undefined!1022) lt!120415) ((_ is Found!1022) lt!120415) ((_ is MissingZero!1022) lt!120415) (not ((_ is MissingVacant!1022) lt!120415)) (and (bvsge (index!6261 lt!120415) #b00000000000000000000000000000000) (bvslt (index!6261 lt!120415) (size!5931 (_keys!6509 thiss!1504))))) (or ((_ is Undefined!1022) lt!120415) (ite ((_ is Found!1022) lt!120415) (= (select (arr!5590 (_keys!6509 thiss!1504)) (index!6259 lt!120415)) key!932) (ite ((_ is MissingZero!1022) lt!120415) (= (select (arr!5590 (_keys!6509 thiss!1504)) (index!6258 lt!120415)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1022) lt!120415) (= (select (arr!5590 (_keys!6509 thiss!1504)) (index!6261 lt!120415)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59637 (= lt!120415 e!154529)))

(declare-fun c!39693 () Bool)

(assert (=> d!59637 (= c!39693 (and ((_ is Intermediate!1022) lt!120413) (undefined!1834 lt!120413)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11772 (_ BitVec 32)) SeekEntryResult!1022)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59637 (= lt!120413 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10434 thiss!1504)) key!932 (_keys!6509 thiss!1504) (mask!10434 thiss!1504)))))

(assert (=> d!59637 (validMask!0 (mask!10434 thiss!1504))))

(assert (=> d!59637 (= (seekEntryOrOpen!0 key!932 (_keys!6509 thiss!1504) (mask!10434 thiss!1504)) lt!120415)))

(assert (= (and d!59637 c!39693) b!237964))

(assert (= (and d!59637 (not c!39693)) b!237966))

(assert (= (and b!237966 c!39694) b!237968))

(assert (= (and b!237966 (not c!39694)) b!237967))

(assert (= (and b!237967 c!39692) b!237969))

(assert (= (and b!237967 (not c!39692)) b!237965))

(declare-fun m!258683 () Bool)

(assert (=> b!237965 m!258683))

(declare-fun m!258685 () Bool)

(assert (=> b!237966 m!258685))

(declare-fun m!258687 () Bool)

(assert (=> d!59637 m!258687))

(declare-fun m!258689 () Bool)

(assert (=> d!59637 m!258689))

(declare-fun m!258691 () Bool)

(assert (=> d!59637 m!258691))

(declare-fun m!258693 () Bool)

(assert (=> d!59637 m!258693))

(assert (=> d!59637 m!258573))

(assert (=> d!59637 m!258689))

(declare-fun m!258695 () Bool)

(assert (=> d!59637 m!258695))

(assert (=> b!237832 d!59637))

(declare-fun d!59639 () Bool)

(assert (=> d!59639 (= (validMask!0 (mask!10434 thiss!1504)) (and (or (= (mask!10434 thiss!1504) #b00000000000000000000000000000111) (= (mask!10434 thiss!1504) #b00000000000000000000000000001111) (= (mask!10434 thiss!1504) #b00000000000000000000000000011111) (= (mask!10434 thiss!1504) #b00000000000000000000000000111111) (= (mask!10434 thiss!1504) #b00000000000000000000000001111111) (= (mask!10434 thiss!1504) #b00000000000000000000000011111111) (= (mask!10434 thiss!1504) #b00000000000000000000000111111111) (= (mask!10434 thiss!1504) #b00000000000000000000001111111111) (= (mask!10434 thiss!1504) #b00000000000000000000011111111111) (= (mask!10434 thiss!1504) #b00000000000000000000111111111111) (= (mask!10434 thiss!1504) #b00000000000000000001111111111111) (= (mask!10434 thiss!1504) #b00000000000000000011111111111111) (= (mask!10434 thiss!1504) #b00000000000000000111111111111111) (= (mask!10434 thiss!1504) #b00000000000000001111111111111111) (= (mask!10434 thiss!1504) #b00000000000000011111111111111111) (= (mask!10434 thiss!1504) #b00000000000000111111111111111111) (= (mask!10434 thiss!1504) #b00000000000001111111111111111111) (= (mask!10434 thiss!1504) #b00000000000011111111111111111111) (= (mask!10434 thiss!1504) #b00000000000111111111111111111111) (= (mask!10434 thiss!1504) #b00000000001111111111111111111111) (= (mask!10434 thiss!1504) #b00000000011111111111111111111111) (= (mask!10434 thiss!1504) #b00000000111111111111111111111111) (= (mask!10434 thiss!1504) #b00000001111111111111111111111111) (= (mask!10434 thiss!1504) #b00000011111111111111111111111111) (= (mask!10434 thiss!1504) #b00000111111111111111111111111111) (= (mask!10434 thiss!1504) #b00001111111111111111111111111111) (= (mask!10434 thiss!1504) #b00011111111111111111111111111111) (= (mask!10434 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10434 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!237828 d!59639))

(declare-fun d!59641 () Bool)

(declare-fun res!116622 () Bool)

(declare-fun e!154532 () Bool)

(assert (=> d!59641 (=> (not res!116622) (not e!154532))))

(declare-fun simpleValid!240 (LongMapFixedSize!3462) Bool)

(assert (=> d!59641 (= res!116622 (simpleValid!240 thiss!1504))))

(assert (=> d!59641 (= (valid!1359 thiss!1504) e!154532)))

(declare-fun b!237976 () Bool)

(declare-fun res!116623 () Bool)

(assert (=> b!237976 (=> (not res!116623) (not e!154532))))

(declare-fun arrayCountValidKeys!0 (array!11772 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!237976 (= res!116623 (= (arrayCountValidKeys!0 (_keys!6509 thiss!1504) #b00000000000000000000000000000000 (size!5931 (_keys!6509 thiss!1504))) (_size!1780 thiss!1504)))))

(declare-fun b!237977 () Bool)

(declare-fun res!116624 () Bool)

(assert (=> b!237977 (=> (not res!116624) (not e!154532))))

(assert (=> b!237977 (= res!116624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6509 thiss!1504) (mask!10434 thiss!1504)))))

(declare-fun b!237978 () Bool)

(declare-datatypes ((List!3591 0))(
  ( (Nil!3588) (Cons!3587 (h!4243 (_ BitVec 64)) (t!8590 List!3591)) )
))
(declare-fun arrayNoDuplicates!0 (array!11772 (_ BitVec 32) List!3591) Bool)

(assert (=> b!237978 (= e!154532 (arrayNoDuplicates!0 (_keys!6509 thiss!1504) #b00000000000000000000000000000000 Nil!3588))))

(assert (= (and d!59641 res!116622) b!237976))

(assert (= (and b!237976 res!116623) b!237977))

(assert (= (and b!237977 res!116624) b!237978))

(declare-fun m!258697 () Bool)

(assert (=> d!59641 m!258697))

(declare-fun m!258699 () Bool)

(assert (=> b!237976 m!258699))

(assert (=> b!237977 m!258589))

(declare-fun m!258701 () Bool)

(assert (=> b!237978 m!258701))

(assert (=> start!22842 d!59641))

(declare-fun condMapEmpty!10602 () Bool)

(declare-fun mapDefault!10602 () ValueCell!2781)

(assert (=> mapNonEmpty!10596 (= condMapEmpty!10602 (= mapRest!10596 ((as const (Array (_ BitVec 32) ValueCell!2781)) mapDefault!10602)))))

(declare-fun e!154538 () Bool)

(declare-fun mapRes!10602 () Bool)

(assert (=> mapNonEmpty!10596 (= tp!22355 (and e!154538 mapRes!10602))))

(declare-fun b!237986 () Bool)

(assert (=> b!237986 (= e!154538 tp_is_empty!6249)))

(declare-fun mapIsEmpty!10602 () Bool)

(assert (=> mapIsEmpty!10602 mapRes!10602))

(declare-fun mapNonEmpty!10602 () Bool)

(declare-fun tp!22365 () Bool)

(declare-fun e!154537 () Bool)

(assert (=> mapNonEmpty!10602 (= mapRes!10602 (and tp!22365 e!154537))))

(declare-fun mapKey!10602 () (_ BitVec 32))

(declare-fun mapValue!10602 () ValueCell!2781)

(declare-fun mapRest!10602 () (Array (_ BitVec 32) ValueCell!2781))

(assert (=> mapNonEmpty!10602 (= mapRest!10596 (store mapRest!10602 mapKey!10602 mapValue!10602))))

(declare-fun b!237985 () Bool)

(assert (=> b!237985 (= e!154537 tp_is_empty!6249)))

(assert (= (and mapNonEmpty!10596 condMapEmpty!10602) mapIsEmpty!10602))

(assert (= (and mapNonEmpty!10596 (not condMapEmpty!10602)) mapNonEmpty!10602))

(assert (= (and mapNonEmpty!10602 ((_ is ValueCellFull!2781) mapValue!10602)) b!237985))

(assert (= (and mapNonEmpty!10596 ((_ is ValueCellFull!2781) mapDefault!10602)) b!237986))

(declare-fun m!258703 () Bool)

(assert (=> mapNonEmpty!10602 m!258703))

(declare-fun b_lambda!7999 () Bool)

(assert (= b_lambda!7997 (or (and b!237835 b_free!6387) b_lambda!7999)))

(check-sat (not b!237920) (not b!237927) (not d!59641) (not b_lambda!7999) (not bm!22114) (not bm!22119) (not b!237919) (not d!59629) (not b!237978) (not b!237874) (not b!237949) (not b!237930) (not bm!22123) (not b!237977) (not bm!22116) (not b!237976) (not mapNonEmpty!10602) tp_is_empty!6249 (not d!59637) (not bm!22115) (not b!237948) (not b!237965) b_and!13369 (not b!237923) (not b_next!6387) (not d!59627) (not b!237929) (not b!237926) (not b!237922) (not b!237872))
(check-sat b_and!13369 (not b_next!6387))

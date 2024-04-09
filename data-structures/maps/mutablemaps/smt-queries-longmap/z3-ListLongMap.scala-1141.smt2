; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23590 () Bool)

(assert start!23590)

(declare-fun b!247840 () Bool)

(declare-fun b_free!6597 () Bool)

(declare-fun b_next!6597 () Bool)

(assert (=> b!247840 (= b_free!6597 (not b_next!6597))))

(declare-fun tp!23038 () Bool)

(declare-fun b_and!13617 () Bool)

(assert (=> b!247840 (= tp!23038 b_and!13617)))

(declare-fun b!247836 () Bool)

(declare-datatypes ((Unit!7670 0))(
  ( (Unit!7671) )
))
(declare-fun e!160798 () Unit!7670)

(declare-fun Unit!7672 () Unit!7670)

(assert (=> b!247836 (= e!160798 Unit!7672)))

(declare-fun b!247837 () Bool)

(declare-fun e!160785 () Unit!7670)

(declare-fun lt!124149 () Unit!7670)

(assert (=> b!247837 (= e!160785 lt!124149)))

(declare-datatypes ((V!8259 0))(
  ( (V!8260 (val!3274 Int)) )
))
(declare-datatypes ((ValueCell!2886 0))(
  ( (ValueCellFull!2886 (v!5328 V!8259)) (EmptyCell!2886) )
))
(declare-datatypes ((array!12224 0))(
  ( (array!12225 (arr!5799 (Array (_ BitVec 32) ValueCell!2886)) (size!6142 (_ BitVec 32))) )
))
(declare-datatypes ((array!12226 0))(
  ( (array!12227 (arr!5800 (Array (_ BitVec 32) (_ BitVec 64))) (size!6143 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3672 0))(
  ( (LongMapFixedSize!3673 (defaultEntry!4585 Int) (mask!10727 (_ BitVec 32)) (extraKeys!4322 (_ BitVec 32)) (zeroValue!4426 V!8259) (minValue!4426 V!8259) (_size!1885 (_ BitVec 32)) (_keys!6707 array!12226) (_values!4568 array!12224) (_vacant!1885 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3672)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!388 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 64) Int) Unit!7670)

(assert (=> b!247837 (= lt!124149 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!388 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 (defaultEntry!4585 thiss!1504)))))

(declare-fun c!41490 () Bool)

(declare-datatypes ((SeekEntryResult!1117 0))(
  ( (MissingZero!1117 (index!6638 (_ BitVec 32))) (Found!1117 (index!6639 (_ BitVec 32))) (Intermediate!1117 (undefined!1929 Bool) (index!6640 (_ BitVec 32)) (x!24561 (_ BitVec 32))) (Undefined!1117) (MissingVacant!1117 (index!6641 (_ BitVec 32))) )
))
(declare-fun lt!124150 () SeekEntryResult!1117)

(get-info :version)

(assert (=> b!247837 (= c!41490 ((_ is MissingZero!1117) lt!124150))))

(declare-fun e!160792 () Bool)

(assert (=> b!247837 e!160792))

(declare-fun b!247838 () Bool)

(declare-fun e!160793 () Bool)

(declare-fun tp_is_empty!6459 () Bool)

(assert (=> b!247838 (= e!160793 tp_is_empty!6459)))

(declare-fun b!247839 () Bool)

(declare-fun res!121478 () Bool)

(declare-fun e!160789 () Bool)

(assert (=> b!247839 (=> res!121478 e!160789)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247839 (= res!121478 (or (not (= (size!6143 (_keys!6707 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10727 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6143 (_keys!6707 thiss!1504)))))))

(declare-fun e!160799 () Bool)

(declare-fun e!160786 () Bool)

(declare-fun array_inv!3821 (array!12226) Bool)

(declare-fun array_inv!3822 (array!12224) Bool)

(assert (=> b!247840 (= e!160799 (and tp!23038 tp_is_empty!6459 (array_inv!3821 (_keys!6707 thiss!1504)) (array_inv!3822 (_values!4568 thiss!1504)) e!160786))))

(declare-fun b!247841 () Bool)

(declare-fun res!121485 () Bool)

(declare-fun e!160794 () Bool)

(assert (=> b!247841 (=> (not res!121485) (not e!160794))))

(assert (=> b!247841 (= res!121485 (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6638 lt!124150)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247842 () Bool)

(declare-fun mapRes!10964 () Bool)

(assert (=> b!247842 (= e!160786 (and e!160793 mapRes!10964))))

(declare-fun condMapEmpty!10964 () Bool)

(declare-fun mapDefault!10964 () ValueCell!2886)

(assert (=> b!247842 (= condMapEmpty!10964 (= (arr!5799 (_values!4568 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2886)) mapDefault!10964)))))

(declare-fun b!247843 () Bool)

(declare-fun res!121486 () Bool)

(assert (=> b!247843 (= res!121486 (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6641 lt!124150)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160791 () Bool)

(assert (=> b!247843 (=> (not res!121486) (not e!160791))))

(declare-fun b!247844 () Bool)

(declare-fun e!160795 () Bool)

(assert (=> b!247844 (= e!160795 tp_is_empty!6459)))

(declare-fun b!247845 () Bool)

(declare-fun e!160790 () Bool)

(assert (=> b!247845 (= e!160790 ((_ is Undefined!1117) lt!124150))))

(declare-fun bm!23207 () Bool)

(declare-fun call!23211 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23207 (= call!23211 (inRange!0 (ite c!41490 (index!6638 lt!124150) (index!6641 lt!124150)) (mask!10727 thiss!1504)))))

(declare-fun bm!23208 () Bool)

(declare-fun call!23210 () Bool)

(declare-fun arrayContainsKey!0 (array!12226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23208 (= call!23210 (arrayContainsKey!0 (_keys!6707 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247846 () Bool)

(declare-fun e!160797 () Bool)

(assert (=> b!247846 (= e!160797 (not e!160789))))

(declare-fun res!121480 () Bool)

(assert (=> b!247846 (=> res!121480 e!160789)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247846 (= res!121480 (not (validMask!0 (mask!10727 thiss!1504))))))

(declare-fun lt!124147 () array!12226)

(declare-fun arrayCountValidKeys!0 (array!12226 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247846 (= (arrayCountValidKeys!0 lt!124147 #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6707 thiss!1504) #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504)))))))

(declare-fun lt!124146 () Unit!7670)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12226 (_ BitVec 32) (_ BitVec 64)) Unit!7670)

(assert (=> b!247846 (= lt!124146 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6707 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3721 0))(
  ( (Nil!3718) (Cons!3717 (h!4375 (_ BitVec 64)) (t!8752 List!3721)) )
))
(declare-fun arrayNoDuplicates!0 (array!12226 (_ BitVec 32) List!3721) Bool)

(assert (=> b!247846 (arrayNoDuplicates!0 lt!124147 #b00000000000000000000000000000000 Nil!3718)))

(assert (=> b!247846 (= lt!124147 (array!12227 (store (arr!5800 (_keys!6707 thiss!1504)) index!297 key!932) (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun lt!124153 () Unit!7670)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3721) Unit!7670)

(assert (=> b!247846 (= lt!124153 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6707 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3718))))

(declare-fun lt!124145 () Unit!7670)

(assert (=> b!247846 (= lt!124145 e!160798)))

(declare-fun c!41491 () Bool)

(declare-fun lt!124148 () Bool)

(assert (=> b!247846 (= c!41491 lt!124148)))

(assert (=> b!247846 (= lt!124148 (arrayContainsKey!0 (_keys!6707 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247847 () Bool)

(declare-fun e!160796 () Bool)

(declare-fun e!160787 () Bool)

(assert (=> b!247847 (= e!160796 e!160787)))

(declare-fun res!121483 () Bool)

(assert (=> b!247847 (=> (not res!121483) (not e!160787))))

(assert (=> b!247847 (= res!121483 (or (= lt!124150 (MissingZero!1117 index!297)) (= lt!124150 (MissingVacant!1117 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12226 (_ BitVec 32)) SeekEntryResult!1117)

(assert (=> b!247847 (= lt!124150 (seekEntryOrOpen!0 key!932 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(declare-fun b!247848 () Bool)

(declare-fun res!121482 () Bool)

(assert (=> b!247848 (=> (not res!121482) (not e!160796))))

(assert (=> b!247848 (= res!121482 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247849 () Bool)

(declare-fun res!121488 () Bool)

(assert (=> b!247849 (=> (not res!121488) (not e!160794))))

(assert (=> b!247849 (= res!121488 call!23211)))

(assert (=> b!247849 (= e!160792 e!160794)))

(declare-fun b!247850 () Bool)

(declare-fun res!121489 () Bool)

(assert (=> b!247850 (=> res!121489 e!160789)))

(assert (=> b!247850 (= res!121489 lt!124148)))

(declare-fun b!247851 () Bool)

(assert (=> b!247851 (= e!160794 (not call!23210))))

(declare-fun b!247852 () Bool)

(declare-fun res!121487 () Bool)

(assert (=> b!247852 (=> res!121487 e!160789)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!247852 (= res!121487 (not (validKeyInArray!0 key!932)))))

(declare-fun b!247853 () Bool)

(declare-fun Unit!7673 () Unit!7670)

(assert (=> b!247853 (= e!160798 Unit!7673)))

(declare-fun lt!124151 () Unit!7670)

(declare-fun lemmaArrayContainsKeyThenInListMap!190 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 64) (_ BitVec 32) Int) Unit!7670)

(assert (=> b!247853 (= lt!124151 (lemmaArrayContainsKeyThenInListMap!190 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(assert (=> b!247853 false))

(declare-fun b!247854 () Bool)

(declare-fun Unit!7674 () Unit!7670)

(assert (=> b!247854 (= e!160785 Unit!7674)))

(declare-fun lt!124152 () Unit!7670)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!387 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 64) Int) Unit!7670)

(assert (=> b!247854 (= lt!124152 (lemmaInListMapThenSeekEntryOrOpenFindsIt!387 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 (defaultEntry!4585 thiss!1504)))))

(assert (=> b!247854 false))

(declare-fun b!247855 () Bool)

(declare-fun c!41489 () Bool)

(assert (=> b!247855 (= c!41489 ((_ is MissingVacant!1117) lt!124150))))

(assert (=> b!247855 (= e!160792 e!160790)))

(declare-fun mapIsEmpty!10964 () Bool)

(assert (=> mapIsEmpty!10964 mapRes!10964))

(declare-fun mapNonEmpty!10964 () Bool)

(declare-fun tp!23039 () Bool)

(assert (=> mapNonEmpty!10964 (= mapRes!10964 (and tp!23039 e!160795))))

(declare-fun mapKey!10964 () (_ BitVec 32))

(declare-fun mapRest!10964 () (Array (_ BitVec 32) ValueCell!2886))

(declare-fun mapValue!10964 () ValueCell!2886)

(assert (=> mapNonEmpty!10964 (= (arr!5799 (_values!4568 thiss!1504)) (store mapRest!10964 mapKey!10964 mapValue!10964))))

(declare-fun b!247856 () Bool)

(assert (=> b!247856 (= e!160791 (not call!23210))))

(declare-fun res!121481 () Bool)

(assert (=> start!23590 (=> (not res!121481) (not e!160796))))

(declare-fun valid!1429 (LongMapFixedSize!3672) Bool)

(assert (=> start!23590 (= res!121481 (valid!1429 thiss!1504))))

(assert (=> start!23590 e!160796))

(assert (=> start!23590 e!160799))

(assert (=> start!23590 true))

(declare-fun b!247857 () Bool)

(assert (=> b!247857 (= e!160787 e!160797)))

(declare-fun res!121484 () Bool)

(assert (=> b!247857 (=> (not res!121484) (not e!160797))))

(assert (=> b!247857 (= res!121484 (inRange!0 index!297 (mask!10727 thiss!1504)))))

(declare-fun lt!124144 () Unit!7670)

(assert (=> b!247857 (= lt!124144 e!160785)))

(declare-fun c!41488 () Bool)

(declare-datatypes ((tuple2!4816 0))(
  ( (tuple2!4817 (_1!2418 (_ BitVec 64)) (_2!2418 V!8259)) )
))
(declare-datatypes ((List!3722 0))(
  ( (Nil!3719) (Cons!3718 (h!4376 tuple2!4816) (t!8753 List!3722)) )
))
(declare-datatypes ((ListLongMap!3743 0))(
  ( (ListLongMap!3744 (toList!1887 List!3722)) )
))
(declare-fun contains!1795 (ListLongMap!3743 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1410 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 32) Int) ListLongMap!3743)

(assert (=> b!247857 (= c!41488 (contains!1795 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)) key!932))))

(declare-fun b!247858 () Bool)

(assert (=> b!247858 (= e!160790 e!160791)))

(declare-fun res!121479 () Bool)

(assert (=> b!247858 (= res!121479 call!23211)))

(assert (=> b!247858 (=> (not res!121479) (not e!160791))))

(declare-fun b!247859 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12226 (_ BitVec 32)) Bool)

(assert (=> b!247859 (= e!160789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(assert (= (and start!23590 res!121481) b!247848))

(assert (= (and b!247848 res!121482) b!247847))

(assert (= (and b!247847 res!121483) b!247857))

(assert (= (and b!247857 c!41488) b!247854))

(assert (= (and b!247857 (not c!41488)) b!247837))

(assert (= (and b!247837 c!41490) b!247849))

(assert (= (and b!247837 (not c!41490)) b!247855))

(assert (= (and b!247849 res!121488) b!247841))

(assert (= (and b!247841 res!121485) b!247851))

(assert (= (and b!247855 c!41489) b!247858))

(assert (= (and b!247855 (not c!41489)) b!247845))

(assert (= (and b!247858 res!121479) b!247843))

(assert (= (and b!247843 res!121486) b!247856))

(assert (= (or b!247849 b!247858) bm!23207))

(assert (= (or b!247851 b!247856) bm!23208))

(assert (= (and b!247857 res!121484) b!247846))

(assert (= (and b!247846 c!41491) b!247853))

(assert (= (and b!247846 (not c!41491)) b!247836))

(assert (= (and b!247846 (not res!121480)) b!247839))

(assert (= (and b!247839 (not res!121478)) b!247852))

(assert (= (and b!247852 (not res!121487)) b!247850))

(assert (= (and b!247850 (not res!121489)) b!247859))

(assert (= (and b!247842 condMapEmpty!10964) mapIsEmpty!10964))

(assert (= (and b!247842 (not condMapEmpty!10964)) mapNonEmpty!10964))

(assert (= (and mapNonEmpty!10964 ((_ is ValueCellFull!2886) mapValue!10964)) b!247844))

(assert (= (and b!247842 ((_ is ValueCellFull!2886) mapDefault!10964)) b!247838))

(assert (= b!247840 b!247842))

(assert (= start!23590 b!247840))

(declare-fun m!264783 () Bool)

(assert (=> b!247853 m!264783))

(declare-fun m!264785 () Bool)

(assert (=> b!247859 m!264785))

(declare-fun m!264787 () Bool)

(assert (=> b!247852 m!264787))

(declare-fun m!264789 () Bool)

(assert (=> bm!23208 m!264789))

(declare-fun m!264791 () Bool)

(assert (=> b!247854 m!264791))

(declare-fun m!264793 () Bool)

(assert (=> b!247847 m!264793))

(declare-fun m!264795 () Bool)

(assert (=> b!247857 m!264795))

(declare-fun m!264797 () Bool)

(assert (=> b!247857 m!264797))

(assert (=> b!247857 m!264797))

(declare-fun m!264799 () Bool)

(assert (=> b!247857 m!264799))

(declare-fun m!264801 () Bool)

(assert (=> b!247843 m!264801))

(declare-fun m!264803 () Bool)

(assert (=> b!247837 m!264803))

(declare-fun m!264805 () Bool)

(assert (=> b!247841 m!264805))

(declare-fun m!264807 () Bool)

(assert (=> bm!23207 m!264807))

(declare-fun m!264809 () Bool)

(assert (=> b!247840 m!264809))

(declare-fun m!264811 () Bool)

(assert (=> b!247840 m!264811))

(declare-fun m!264813 () Bool)

(assert (=> b!247846 m!264813))

(assert (=> b!247846 m!264789))

(declare-fun m!264815 () Bool)

(assert (=> b!247846 m!264815))

(declare-fun m!264817 () Bool)

(assert (=> b!247846 m!264817))

(declare-fun m!264819 () Bool)

(assert (=> b!247846 m!264819))

(declare-fun m!264821 () Bool)

(assert (=> b!247846 m!264821))

(declare-fun m!264823 () Bool)

(assert (=> b!247846 m!264823))

(declare-fun m!264825 () Bool)

(assert (=> b!247846 m!264825))

(declare-fun m!264827 () Bool)

(assert (=> mapNonEmpty!10964 m!264827))

(declare-fun m!264829 () Bool)

(assert (=> start!23590 m!264829))

(check-sat (not b_next!6597) (not mapNonEmpty!10964) (not b!247847) (not b!247840) (not b!247853) (not b!247852) b_and!13617 (not b!247837) (not bm!23207) (not start!23590) (not b!247854) (not b!247846) (not bm!23208) (not b!247857) tp_is_empty!6459 (not b!247859))
(check-sat b_and!13617 (not b_next!6597))
(get-model)

(declare-fun b!247944 () Bool)

(declare-fun e!160852 () SeekEntryResult!1117)

(assert (=> b!247944 (= e!160852 Undefined!1117)))

(declare-fun d!60399 () Bool)

(declare-fun lt!124190 () SeekEntryResult!1117)

(assert (=> d!60399 (and (or ((_ is Undefined!1117) lt!124190) (not ((_ is Found!1117) lt!124190)) (and (bvsge (index!6639 lt!124190) #b00000000000000000000000000000000) (bvslt (index!6639 lt!124190) (size!6143 (_keys!6707 thiss!1504))))) (or ((_ is Undefined!1117) lt!124190) ((_ is Found!1117) lt!124190) (not ((_ is MissingZero!1117) lt!124190)) (and (bvsge (index!6638 lt!124190) #b00000000000000000000000000000000) (bvslt (index!6638 lt!124190) (size!6143 (_keys!6707 thiss!1504))))) (or ((_ is Undefined!1117) lt!124190) ((_ is Found!1117) lt!124190) ((_ is MissingZero!1117) lt!124190) (not ((_ is MissingVacant!1117) lt!124190)) (and (bvsge (index!6641 lt!124190) #b00000000000000000000000000000000) (bvslt (index!6641 lt!124190) (size!6143 (_keys!6707 thiss!1504))))) (or ((_ is Undefined!1117) lt!124190) (ite ((_ is Found!1117) lt!124190) (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6639 lt!124190)) key!932) (ite ((_ is MissingZero!1117) lt!124190) (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6638 lt!124190)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1117) lt!124190) (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6641 lt!124190)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60399 (= lt!124190 e!160852)))

(declare-fun c!41512 () Bool)

(declare-fun lt!124192 () SeekEntryResult!1117)

(assert (=> d!60399 (= c!41512 (and ((_ is Intermediate!1117) lt!124192) (undefined!1929 lt!124192)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12226 (_ BitVec 32)) SeekEntryResult!1117)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60399 (= lt!124192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10727 thiss!1504)) key!932 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(assert (=> d!60399 (validMask!0 (mask!10727 thiss!1504))))

(assert (=> d!60399 (= (seekEntryOrOpen!0 key!932 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)) lt!124190)))

(declare-fun e!160851 () SeekEntryResult!1117)

(declare-fun b!247945 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12226 (_ BitVec 32)) SeekEntryResult!1117)

(assert (=> b!247945 (= e!160851 (seekKeyOrZeroReturnVacant!0 (x!24561 lt!124192) (index!6640 lt!124192) (index!6640 lt!124192) key!932 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(declare-fun b!247946 () Bool)

(declare-fun c!41510 () Bool)

(declare-fun lt!124191 () (_ BitVec 64))

(assert (=> b!247946 (= c!41510 (= lt!124191 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160853 () SeekEntryResult!1117)

(assert (=> b!247946 (= e!160853 e!160851)))

(declare-fun b!247947 () Bool)

(assert (=> b!247947 (= e!160852 e!160853)))

(assert (=> b!247947 (= lt!124191 (select (arr!5800 (_keys!6707 thiss!1504)) (index!6640 lt!124192)))))

(declare-fun c!41511 () Bool)

(assert (=> b!247947 (= c!41511 (= lt!124191 key!932))))

(declare-fun b!247948 () Bool)

(assert (=> b!247948 (= e!160851 (MissingZero!1117 (index!6640 lt!124192)))))

(declare-fun b!247949 () Bool)

(assert (=> b!247949 (= e!160853 (Found!1117 (index!6640 lt!124192)))))

(assert (= (and d!60399 c!41512) b!247944))

(assert (= (and d!60399 (not c!41512)) b!247947))

(assert (= (and b!247947 c!41511) b!247949))

(assert (= (and b!247947 (not c!41511)) b!247946))

(assert (= (and b!247946 c!41510) b!247948))

(assert (= (and b!247946 (not c!41510)) b!247945))

(declare-fun m!264879 () Bool)

(assert (=> d!60399 m!264879))

(declare-fun m!264881 () Bool)

(assert (=> d!60399 m!264881))

(declare-fun m!264883 () Bool)

(assert (=> d!60399 m!264883))

(assert (=> d!60399 m!264813))

(assert (=> d!60399 m!264881))

(declare-fun m!264885 () Bool)

(assert (=> d!60399 m!264885))

(declare-fun m!264887 () Bool)

(assert (=> d!60399 m!264887))

(declare-fun m!264889 () Bool)

(assert (=> b!247945 m!264889))

(declare-fun m!264891 () Bool)

(assert (=> b!247947 m!264891))

(assert (=> b!247847 d!60399))

(declare-fun d!60401 () Bool)

(assert (=> d!60401 (= (array_inv!3821 (_keys!6707 thiss!1504)) (bvsge (size!6143 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!247840 d!60401))

(declare-fun d!60403 () Bool)

(assert (=> d!60403 (= (array_inv!3822 (_values!4568 thiss!1504)) (bvsge (size!6142 (_values!4568 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!247840 d!60403))

(declare-fun d!60405 () Bool)

(assert (=> d!60405 (= (inRange!0 index!297 (mask!10727 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10727 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!247857 d!60405))

(declare-fun d!60407 () Bool)

(declare-fun e!160859 () Bool)

(assert (=> d!60407 e!160859))

(declare-fun res!121528 () Bool)

(assert (=> d!60407 (=> res!121528 e!160859)))

(declare-fun lt!124202 () Bool)

(assert (=> d!60407 (= res!121528 (not lt!124202))))

(declare-fun lt!124201 () Bool)

(assert (=> d!60407 (= lt!124202 lt!124201)))

(declare-fun lt!124204 () Unit!7670)

(declare-fun e!160858 () Unit!7670)

(assert (=> d!60407 (= lt!124204 e!160858)))

(declare-fun c!41515 () Bool)

(assert (=> d!60407 (= c!41515 lt!124201)))

(declare-fun containsKey!284 (List!3722 (_ BitVec 64)) Bool)

(assert (=> d!60407 (= lt!124201 (containsKey!284 (toList!1887 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504))) key!932))))

(assert (=> d!60407 (= (contains!1795 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)) key!932) lt!124202)))

(declare-fun b!247956 () Bool)

(declare-fun lt!124203 () Unit!7670)

(assert (=> b!247956 (= e!160858 lt!124203)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!233 (List!3722 (_ BitVec 64)) Unit!7670)

(assert (=> b!247956 (= lt!124203 (lemmaContainsKeyImpliesGetValueByKeyDefined!233 (toList!1887 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504))) key!932))))

(declare-datatypes ((Option!298 0))(
  ( (Some!297 (v!5330 V!8259)) (None!296) )
))
(declare-fun isDefined!234 (Option!298) Bool)

(declare-fun getValueByKey!292 (List!3722 (_ BitVec 64)) Option!298)

(assert (=> b!247956 (isDefined!234 (getValueByKey!292 (toList!1887 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504))) key!932))))

(declare-fun b!247957 () Bool)

(declare-fun Unit!7678 () Unit!7670)

(assert (=> b!247957 (= e!160858 Unit!7678)))

(declare-fun b!247958 () Bool)

(assert (=> b!247958 (= e!160859 (isDefined!234 (getValueByKey!292 (toList!1887 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504))) key!932)))))

(assert (= (and d!60407 c!41515) b!247956))

(assert (= (and d!60407 (not c!41515)) b!247957))

(assert (= (and d!60407 (not res!121528)) b!247958))

(declare-fun m!264893 () Bool)

(assert (=> d!60407 m!264893))

(declare-fun m!264895 () Bool)

(assert (=> b!247956 m!264895))

(declare-fun m!264897 () Bool)

(assert (=> b!247956 m!264897))

(assert (=> b!247956 m!264897))

(declare-fun m!264899 () Bool)

(assert (=> b!247956 m!264899))

(assert (=> b!247958 m!264897))

(assert (=> b!247958 m!264897))

(assert (=> b!247958 m!264899))

(assert (=> b!247857 d!60407))

(declare-fun b!248001 () Bool)

(declare-fun e!160886 () Bool)

(assert (=> b!248001 (= e!160886 (validKeyInArray!0 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23229 () Bool)

(declare-fun call!23238 () Bool)

(declare-fun lt!124253 () ListLongMap!3743)

(assert (=> bm!23229 (= call!23238 (contains!1795 lt!124253 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248002 () Bool)

(declare-fun e!160893 () Bool)

(assert (=> b!248002 (= e!160893 (validKeyInArray!0 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248003 () Bool)

(declare-fun e!160894 () Bool)

(declare-fun e!160888 () Bool)

(assert (=> b!248003 (= e!160894 e!160888)))

(declare-fun res!121552 () Bool)

(assert (=> b!248003 (= res!121552 call!23238)))

(assert (=> b!248003 (=> (not res!121552) (not e!160888))))

(declare-fun b!248004 () Bool)

(declare-fun e!160887 () ListLongMap!3743)

(declare-fun call!23237 () ListLongMap!3743)

(assert (=> b!248004 (= e!160887 call!23237)))

(declare-fun b!248005 () Bool)

(declare-fun e!160891 () Unit!7670)

(declare-fun lt!124261 () Unit!7670)

(assert (=> b!248005 (= e!160891 lt!124261)))

(declare-fun lt!124252 () ListLongMap!3743)

(declare-fun getCurrentListMapNoExtraKeys!554 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 32) Int) ListLongMap!3743)

(assert (=> b!248005 (= lt!124252 (getCurrentListMapNoExtraKeys!554 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(declare-fun lt!124266 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124266 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124258 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124258 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124269 () Unit!7670)

(declare-fun addStillContains!211 (ListLongMap!3743 (_ BitVec 64) V!8259 (_ BitVec 64)) Unit!7670)

(assert (=> b!248005 (= lt!124269 (addStillContains!211 lt!124252 lt!124266 (zeroValue!4426 thiss!1504) lt!124258))))

(declare-fun +!657 (ListLongMap!3743 tuple2!4816) ListLongMap!3743)

(assert (=> b!248005 (contains!1795 (+!657 lt!124252 (tuple2!4817 lt!124266 (zeroValue!4426 thiss!1504))) lt!124258)))

(declare-fun lt!124255 () Unit!7670)

(assert (=> b!248005 (= lt!124255 lt!124269)))

(declare-fun lt!124256 () ListLongMap!3743)

(assert (=> b!248005 (= lt!124256 (getCurrentListMapNoExtraKeys!554 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(declare-fun lt!124264 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124264 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124263 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124263 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124251 () Unit!7670)

(declare-fun addApplyDifferent!211 (ListLongMap!3743 (_ BitVec 64) V!8259 (_ BitVec 64)) Unit!7670)

(assert (=> b!248005 (= lt!124251 (addApplyDifferent!211 lt!124256 lt!124264 (minValue!4426 thiss!1504) lt!124263))))

(declare-fun apply!235 (ListLongMap!3743 (_ BitVec 64)) V!8259)

(assert (=> b!248005 (= (apply!235 (+!657 lt!124256 (tuple2!4817 lt!124264 (minValue!4426 thiss!1504))) lt!124263) (apply!235 lt!124256 lt!124263))))

(declare-fun lt!124270 () Unit!7670)

(assert (=> b!248005 (= lt!124270 lt!124251)))

(declare-fun lt!124250 () ListLongMap!3743)

(assert (=> b!248005 (= lt!124250 (getCurrentListMapNoExtraKeys!554 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(declare-fun lt!124249 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124249 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124268 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124268 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124265 () Unit!7670)

(assert (=> b!248005 (= lt!124265 (addApplyDifferent!211 lt!124250 lt!124249 (zeroValue!4426 thiss!1504) lt!124268))))

(assert (=> b!248005 (= (apply!235 (+!657 lt!124250 (tuple2!4817 lt!124249 (zeroValue!4426 thiss!1504))) lt!124268) (apply!235 lt!124250 lt!124268))))

(declare-fun lt!124257 () Unit!7670)

(assert (=> b!248005 (= lt!124257 lt!124265)))

(declare-fun lt!124267 () ListLongMap!3743)

(assert (=> b!248005 (= lt!124267 (getCurrentListMapNoExtraKeys!554 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(declare-fun lt!124260 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124260 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124259 () (_ BitVec 64))

(assert (=> b!248005 (= lt!124259 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248005 (= lt!124261 (addApplyDifferent!211 lt!124267 lt!124260 (minValue!4426 thiss!1504) lt!124259))))

(assert (=> b!248005 (= (apply!235 (+!657 lt!124267 (tuple2!4817 lt!124260 (minValue!4426 thiss!1504))) lt!124259) (apply!235 lt!124267 lt!124259))))

(declare-fun b!248006 () Bool)

(declare-fun e!160896 () Bool)

(declare-fun get!2977 (ValueCell!2886 V!8259) V!8259)

(declare-fun dynLambda!573 (Int (_ BitVec 64)) V!8259)

(assert (=> b!248006 (= e!160896 (= (apply!235 lt!124253 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)) (get!2977 (select (arr!5799 (_values!4568 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!573 (defaultEntry!4585 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!248006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6142 (_values!4568 thiss!1504))))))

(assert (=> b!248006 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun b!248008 () Bool)

(declare-fun e!160897 () Bool)

(declare-fun e!160890 () Bool)

(assert (=> b!248008 (= e!160897 e!160890)))

(declare-fun res!121555 () Bool)

(declare-fun call!23235 () Bool)

(assert (=> b!248008 (= res!121555 call!23235)))

(assert (=> b!248008 (=> (not res!121555) (not e!160890))))

(declare-fun b!248009 () Bool)

(assert (=> b!248009 (= e!160888 (= (apply!235 lt!124253 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4426 thiss!1504)))))

(declare-fun c!41531 () Bool)

(declare-fun bm!23230 () Bool)

(declare-fun call!23232 () ListLongMap!3743)

(declare-fun call!23234 () ListLongMap!3743)

(declare-fun c!41533 () Bool)

(declare-fun call!23233 () ListLongMap!3743)

(assert (=> bm!23230 (= call!23232 (+!657 (ite c!41533 call!23233 (ite c!41531 call!23234 call!23237)) (ite (or c!41533 c!41531) (tuple2!4817 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4426 thiss!1504)) (tuple2!4817 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4426 thiss!1504)))))))

(declare-fun b!248010 () Bool)

(assert (=> b!248010 (= e!160897 (not call!23235))))

(declare-fun b!248011 () Bool)

(declare-fun e!160889 () Bool)

(assert (=> b!248011 (= e!160889 e!160897)))

(declare-fun c!41532 () Bool)

(assert (=> b!248011 (= c!41532 (not (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!248012 () Bool)

(declare-fun Unit!7679 () Unit!7670)

(assert (=> b!248012 (= e!160891 Unit!7679)))

(declare-fun bm!23231 () Bool)

(assert (=> bm!23231 (= call!23234 call!23233)))

(declare-fun bm!23232 () Bool)

(assert (=> bm!23232 (= call!23233 (getCurrentListMapNoExtraKeys!554 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(declare-fun b!248013 () Bool)

(declare-fun e!160898 () ListLongMap!3743)

(assert (=> b!248013 (= e!160898 (+!657 call!23232 (tuple2!4817 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4426 thiss!1504))))))

(declare-fun bm!23233 () Bool)

(assert (=> bm!23233 (= call!23237 call!23234)))

(declare-fun b!248014 () Bool)

(assert (=> b!248014 (= e!160890 (= (apply!235 lt!124253 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4426 thiss!1504)))))

(declare-fun b!248015 () Bool)

(declare-fun e!160895 () ListLongMap!3743)

(declare-fun call!23236 () ListLongMap!3743)

(assert (=> b!248015 (= e!160895 call!23236)))

(declare-fun b!248016 () Bool)

(declare-fun c!41529 () Bool)

(assert (=> b!248016 (= c!41529 (and (not (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!248016 (= e!160895 e!160887)))

(declare-fun b!248017 () Bool)

(declare-fun res!121553 () Bool)

(assert (=> b!248017 (=> (not res!121553) (not e!160889))))

(declare-fun e!160892 () Bool)

(assert (=> b!248017 (= res!121553 e!160892)))

(declare-fun res!121549 () Bool)

(assert (=> b!248017 (=> res!121549 e!160892)))

(assert (=> b!248017 (= res!121549 (not e!160886))))

(declare-fun res!121554 () Bool)

(assert (=> b!248017 (=> (not res!121554) (not e!160886))))

(assert (=> b!248017 (= res!121554 (bvslt #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun b!248018 () Bool)

(assert (=> b!248018 (= e!160898 e!160895)))

(assert (=> b!248018 (= c!41531 (and (not (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!248019 () Bool)

(declare-fun res!121550 () Bool)

(assert (=> b!248019 (=> (not res!121550) (not e!160889))))

(assert (=> b!248019 (= res!121550 e!160894)))

(declare-fun c!41528 () Bool)

(assert (=> b!248019 (= c!41528 (not (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!248020 () Bool)

(assert (=> b!248020 (= e!160887 call!23236)))

(declare-fun bm!23234 () Bool)

(assert (=> bm!23234 (= call!23236 call!23232)))

(declare-fun d!60409 () Bool)

(assert (=> d!60409 e!160889))

(declare-fun res!121547 () Bool)

(assert (=> d!60409 (=> (not res!121547) (not e!160889))))

(assert (=> d!60409 (= res!121547 (or (bvsge #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))))

(declare-fun lt!124254 () ListLongMap!3743)

(assert (=> d!60409 (= lt!124253 lt!124254)))

(declare-fun lt!124262 () Unit!7670)

(assert (=> d!60409 (= lt!124262 e!160891)))

(declare-fun c!41530 () Bool)

(assert (=> d!60409 (= c!41530 e!160893)))

(declare-fun res!121551 () Bool)

(assert (=> d!60409 (=> (not res!121551) (not e!160893))))

(assert (=> d!60409 (= res!121551 (bvslt #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(assert (=> d!60409 (= lt!124254 e!160898)))

(assert (=> d!60409 (= c!41533 (and (not (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4322 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60409 (validMask!0 (mask!10727 thiss!1504))))

(assert (=> d!60409 (= (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)) lt!124253)))

(declare-fun b!248007 () Bool)

(assert (=> b!248007 (= e!160892 e!160896)))

(declare-fun res!121548 () Bool)

(assert (=> b!248007 (=> (not res!121548) (not e!160896))))

(assert (=> b!248007 (= res!121548 (contains!1795 lt!124253 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!248007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun b!248021 () Bool)

(assert (=> b!248021 (= e!160894 (not call!23238))))

(declare-fun bm!23235 () Bool)

(assert (=> bm!23235 (= call!23235 (contains!1795 lt!124253 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!60409 c!41533) b!248013))

(assert (= (and d!60409 (not c!41533)) b!248018))

(assert (= (and b!248018 c!41531) b!248015))

(assert (= (and b!248018 (not c!41531)) b!248016))

(assert (= (and b!248016 c!41529) b!248020))

(assert (= (and b!248016 (not c!41529)) b!248004))

(assert (= (or b!248020 b!248004) bm!23233))

(assert (= (or b!248015 bm!23233) bm!23231))

(assert (= (or b!248015 b!248020) bm!23234))

(assert (= (or b!248013 bm!23231) bm!23232))

(assert (= (or b!248013 bm!23234) bm!23230))

(assert (= (and d!60409 res!121551) b!248002))

(assert (= (and d!60409 c!41530) b!248005))

(assert (= (and d!60409 (not c!41530)) b!248012))

(assert (= (and d!60409 res!121547) b!248017))

(assert (= (and b!248017 res!121554) b!248001))

(assert (= (and b!248017 (not res!121549)) b!248007))

(assert (= (and b!248007 res!121548) b!248006))

(assert (= (and b!248017 res!121553) b!248019))

(assert (= (and b!248019 c!41528) b!248003))

(assert (= (and b!248019 (not c!41528)) b!248021))

(assert (= (and b!248003 res!121552) b!248009))

(assert (= (or b!248003 b!248021) bm!23229))

(assert (= (and b!248019 res!121550) b!248011))

(assert (= (and b!248011 c!41532) b!248008))

(assert (= (and b!248011 (not c!41532)) b!248010))

(assert (= (and b!248008 res!121555) b!248014))

(assert (= (or b!248008 b!248010) bm!23235))

(declare-fun b_lambda!8081 () Bool)

(assert (=> (not b_lambda!8081) (not b!248006)))

(declare-fun t!8755 () Bool)

(declare-fun tb!2991 () Bool)

(assert (=> (and b!247840 (= (defaultEntry!4585 thiss!1504) (defaultEntry!4585 thiss!1504)) t!8755) tb!2991))

(declare-fun result!5279 () Bool)

(assert (=> tb!2991 (= result!5279 tp_is_empty!6459)))

(assert (=> b!248006 t!8755))

(declare-fun b_and!13621 () Bool)

(assert (= b_and!13617 (and (=> t!8755 result!5279) b_and!13621)))

(declare-fun m!264901 () Bool)

(assert (=> bm!23229 m!264901))

(declare-fun m!264903 () Bool)

(assert (=> b!248005 m!264903))

(declare-fun m!264905 () Bool)

(assert (=> b!248005 m!264905))

(declare-fun m!264907 () Bool)

(assert (=> b!248005 m!264907))

(declare-fun m!264909 () Bool)

(assert (=> b!248005 m!264909))

(declare-fun m!264911 () Bool)

(assert (=> b!248005 m!264911))

(declare-fun m!264913 () Bool)

(assert (=> b!248005 m!264913))

(declare-fun m!264915 () Bool)

(assert (=> b!248005 m!264915))

(declare-fun m!264917 () Bool)

(assert (=> b!248005 m!264917))

(declare-fun m!264919 () Bool)

(assert (=> b!248005 m!264919))

(declare-fun m!264921 () Bool)

(assert (=> b!248005 m!264921))

(declare-fun m!264923 () Bool)

(assert (=> b!248005 m!264923))

(assert (=> b!248005 m!264905))

(declare-fun m!264925 () Bool)

(assert (=> b!248005 m!264925))

(declare-fun m!264927 () Bool)

(assert (=> b!248005 m!264927))

(declare-fun m!264929 () Bool)

(assert (=> b!248005 m!264929))

(assert (=> b!248005 m!264911))

(assert (=> b!248005 m!264927))

(declare-fun m!264931 () Bool)

(assert (=> b!248005 m!264931))

(assert (=> b!248005 m!264915))

(declare-fun m!264933 () Bool)

(assert (=> b!248005 m!264933))

(declare-fun m!264935 () Bool)

(assert (=> b!248005 m!264935))

(declare-fun m!264937 () Bool)

(assert (=> bm!23230 m!264937))

(assert (=> b!248006 m!264919))

(declare-fun m!264939 () Bool)

(assert (=> b!248006 m!264939))

(assert (=> b!248006 m!264919))

(declare-fun m!264941 () Bool)

(assert (=> b!248006 m!264941))

(assert (=> b!248006 m!264941))

(declare-fun m!264943 () Bool)

(assert (=> b!248006 m!264943))

(declare-fun m!264945 () Bool)

(assert (=> b!248006 m!264945))

(assert (=> b!248006 m!264943))

(assert (=> b!248007 m!264919))

(assert (=> b!248007 m!264919))

(declare-fun m!264947 () Bool)

(assert (=> b!248007 m!264947))

(assert (=> b!248002 m!264919))

(assert (=> b!248002 m!264919))

(declare-fun m!264949 () Bool)

(assert (=> b!248002 m!264949))

(declare-fun m!264951 () Bool)

(assert (=> b!248014 m!264951))

(declare-fun m!264953 () Bool)

(assert (=> b!248009 m!264953))

(declare-fun m!264955 () Bool)

(assert (=> b!248013 m!264955))

(assert (=> bm!23232 m!264933))

(assert (=> d!60409 m!264813))

(assert (=> b!248001 m!264919))

(assert (=> b!248001 m!264919))

(assert (=> b!248001 m!264949))

(declare-fun m!264957 () Bool)

(assert (=> bm!23235 m!264957))

(assert (=> b!247857 d!60409))

(declare-fun b!248032 () Bool)

(declare-fun e!160907 () Bool)

(declare-fun call!23241 () Bool)

(assert (=> b!248032 (= e!160907 call!23241)))

(declare-fun b!248033 () Bool)

(declare-fun e!160905 () Bool)

(assert (=> b!248033 (= e!160907 e!160905)))

(declare-fun lt!124277 () (_ BitVec 64))

(assert (=> b!248033 (= lt!124277 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124279 () Unit!7670)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12226 (_ BitVec 64) (_ BitVec 32)) Unit!7670)

(assert (=> b!248033 (= lt!124279 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6707 thiss!1504) lt!124277 #b00000000000000000000000000000000))))

(assert (=> b!248033 (arrayContainsKey!0 (_keys!6707 thiss!1504) lt!124277 #b00000000000000000000000000000000)))

(declare-fun lt!124278 () Unit!7670)

(assert (=> b!248033 (= lt!124278 lt!124279)))

(declare-fun res!121561 () Bool)

(assert (=> b!248033 (= res!121561 (= (seekEntryOrOpen!0 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000) (_keys!6707 thiss!1504) (mask!10727 thiss!1504)) (Found!1117 #b00000000000000000000000000000000)))))

(assert (=> b!248033 (=> (not res!121561) (not e!160905))))

(declare-fun bm!23238 () Bool)

(assert (=> bm!23238 (= call!23241 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(declare-fun b!248034 () Bool)

(declare-fun e!160906 () Bool)

(assert (=> b!248034 (= e!160906 e!160907)))

(declare-fun c!41536 () Bool)

(assert (=> b!248034 (= c!41536 (validKeyInArray!0 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248035 () Bool)

(assert (=> b!248035 (= e!160905 call!23241)))

(declare-fun d!60411 () Bool)

(declare-fun res!121560 () Bool)

(assert (=> d!60411 (=> res!121560 e!160906)))

(assert (=> d!60411 (= res!121560 (bvsge #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(assert (=> d!60411 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)) e!160906)))

(assert (= (and d!60411 (not res!121560)) b!248034))

(assert (= (and b!248034 c!41536) b!248033))

(assert (= (and b!248034 (not c!41536)) b!248032))

(assert (= (and b!248033 res!121561) b!248035))

(assert (= (or b!248035 b!248032) bm!23238))

(assert (=> b!248033 m!264919))

(declare-fun m!264959 () Bool)

(assert (=> b!248033 m!264959))

(declare-fun m!264961 () Bool)

(assert (=> b!248033 m!264961))

(assert (=> b!248033 m!264919))

(declare-fun m!264963 () Bool)

(assert (=> b!248033 m!264963))

(declare-fun m!264965 () Bool)

(assert (=> bm!23238 m!264965))

(assert (=> b!248034 m!264919))

(assert (=> b!248034 m!264919))

(assert (=> b!248034 m!264949))

(assert (=> b!247859 d!60411))

(declare-fun d!60413 () Bool)

(assert (=> d!60413 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!247852 d!60413))

(declare-fun d!60415 () Bool)

(declare-fun e!160910 () Bool)

(assert (=> d!60415 e!160910))

(declare-fun res!121567 () Bool)

(assert (=> d!60415 (=> (not res!121567) (not e!160910))))

(declare-fun lt!124284 () SeekEntryResult!1117)

(assert (=> d!60415 (= res!121567 ((_ is Found!1117) lt!124284))))

(assert (=> d!60415 (= lt!124284 (seekEntryOrOpen!0 key!932 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(declare-fun lt!124285 () Unit!7670)

(declare-fun choose!1172 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 64) Int) Unit!7670)

(assert (=> d!60415 (= lt!124285 (choose!1172 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 (defaultEntry!4585 thiss!1504)))))

(assert (=> d!60415 (validMask!0 (mask!10727 thiss!1504))))

(assert (=> d!60415 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!387 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 (defaultEntry!4585 thiss!1504)) lt!124285)))

(declare-fun b!248040 () Bool)

(declare-fun res!121566 () Bool)

(assert (=> b!248040 (=> (not res!121566) (not e!160910))))

(assert (=> b!248040 (= res!121566 (inRange!0 (index!6639 lt!124284) (mask!10727 thiss!1504)))))

(declare-fun b!248041 () Bool)

(assert (=> b!248041 (= e!160910 (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6639 lt!124284)) key!932))))

(assert (=> b!248041 (and (bvsge (index!6639 lt!124284) #b00000000000000000000000000000000) (bvslt (index!6639 lt!124284) (size!6143 (_keys!6707 thiss!1504))))))

(assert (= (and d!60415 res!121567) b!248040))

(assert (= (and b!248040 res!121566) b!248041))

(assert (=> d!60415 m!264793))

(declare-fun m!264967 () Bool)

(assert (=> d!60415 m!264967))

(assert (=> d!60415 m!264813))

(declare-fun m!264969 () Bool)

(assert (=> b!248040 m!264969))

(declare-fun m!264971 () Bool)

(assert (=> b!248041 m!264971))

(assert (=> b!247854 d!60415))

(declare-fun d!60417 () Bool)

(assert (=> d!60417 (contains!1795 (getCurrentListMap!1410 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)) key!932)))

(declare-fun lt!124288 () Unit!7670)

(declare-fun choose!1173 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 64) (_ BitVec 32) Int) Unit!7670)

(assert (=> d!60417 (= lt!124288 (choose!1173 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)))))

(assert (=> d!60417 (validMask!0 (mask!10727 thiss!1504))))

(assert (=> d!60417 (= (lemmaArrayContainsKeyThenInListMap!190 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4585 thiss!1504)) lt!124288)))

(declare-fun bs!8932 () Bool)

(assert (= bs!8932 d!60417))

(assert (=> bs!8932 m!264797))

(assert (=> bs!8932 m!264797))

(assert (=> bs!8932 m!264799))

(declare-fun m!264973 () Bool)

(assert (=> bs!8932 m!264973))

(assert (=> bs!8932 m!264813))

(assert (=> b!247853 d!60417))

(declare-fun d!60419 () Bool)

(assert (=> d!60419 (= (inRange!0 (ite c!41490 (index!6638 lt!124150) (index!6641 lt!124150)) (mask!10727 thiss!1504)) (and (bvsge (ite c!41490 (index!6638 lt!124150) (index!6641 lt!124150)) #b00000000000000000000000000000000) (bvslt (ite c!41490 (index!6638 lt!124150) (index!6641 lt!124150)) (bvadd (mask!10727 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23207 d!60419))

(declare-fun b!248050 () Bool)

(declare-fun res!121576 () Bool)

(declare-fun e!160916 () Bool)

(assert (=> b!248050 (=> (not res!121576) (not e!160916))))

(assert (=> b!248050 (= res!121576 (not (validKeyInArray!0 (select (arr!5800 (_keys!6707 thiss!1504)) index!297))))))

(declare-fun e!160915 () Bool)

(declare-fun b!248053 () Bool)

(assert (=> b!248053 (= e!160915 (= (arrayCountValidKeys!0 (array!12227 (store (arr!5800 (_keys!6707 thiss!1504)) index!297 key!932) (size!6143 (_keys!6707 thiss!1504))) #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6707 thiss!1504) #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!60421 () Bool)

(assert (=> d!60421 e!160915))

(declare-fun res!121579 () Bool)

(assert (=> d!60421 (=> (not res!121579) (not e!160915))))

(assert (=> d!60421 (= res!121579 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6143 (_keys!6707 thiss!1504)))))))

(declare-fun lt!124291 () Unit!7670)

(declare-fun choose!1 (array!12226 (_ BitVec 32) (_ BitVec 64)) Unit!7670)

(assert (=> d!60421 (= lt!124291 (choose!1 (_keys!6707 thiss!1504) index!297 key!932))))

(assert (=> d!60421 e!160916))

(declare-fun res!121577 () Bool)

(assert (=> d!60421 (=> (not res!121577) (not e!160916))))

(assert (=> d!60421 (= res!121577 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6143 (_keys!6707 thiss!1504)))))))

(assert (=> d!60421 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6707 thiss!1504) index!297 key!932) lt!124291)))

(declare-fun b!248051 () Bool)

(declare-fun res!121578 () Bool)

(assert (=> b!248051 (=> (not res!121578) (not e!160916))))

(assert (=> b!248051 (= res!121578 (validKeyInArray!0 key!932))))

(declare-fun b!248052 () Bool)

(assert (=> b!248052 (= e!160916 (bvslt (size!6143 (_keys!6707 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!60421 res!121577) b!248050))

(assert (= (and b!248050 res!121576) b!248051))

(assert (= (and b!248051 res!121578) b!248052))

(assert (= (and d!60421 res!121579) b!248053))

(declare-fun m!264975 () Bool)

(assert (=> b!248050 m!264975))

(assert (=> b!248050 m!264975))

(declare-fun m!264977 () Bool)

(assert (=> b!248050 m!264977))

(assert (=> b!248053 m!264821))

(declare-fun m!264979 () Bool)

(assert (=> b!248053 m!264979))

(assert (=> b!248053 m!264823))

(declare-fun m!264981 () Bool)

(assert (=> d!60421 m!264981))

(assert (=> b!248051 m!264787))

(assert (=> b!247846 d!60421))

(declare-fun d!60423 () Bool)

(declare-fun res!121584 () Bool)

(declare-fun e!160921 () Bool)

(assert (=> d!60423 (=> res!121584 e!160921)))

(assert (=> d!60423 (= res!121584 (= (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60423 (= (arrayContainsKey!0 (_keys!6707 thiss!1504) key!932 #b00000000000000000000000000000000) e!160921)))

(declare-fun b!248058 () Bool)

(declare-fun e!160922 () Bool)

(assert (=> b!248058 (= e!160921 e!160922)))

(declare-fun res!121585 () Bool)

(assert (=> b!248058 (=> (not res!121585) (not e!160922))))

(assert (=> b!248058 (= res!121585 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun b!248059 () Bool)

(assert (=> b!248059 (= e!160922 (arrayContainsKey!0 (_keys!6707 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60423 (not res!121584)) b!248058))

(assert (= (and b!248058 res!121585) b!248059))

(assert (=> d!60423 m!264919))

(declare-fun m!264983 () Bool)

(assert (=> b!248059 m!264983))

(assert (=> b!247846 d!60423))

(declare-fun d!60425 () Bool)

(declare-fun lt!124294 () (_ BitVec 32))

(assert (=> d!60425 (and (bvsge lt!124294 #b00000000000000000000000000000000) (bvsle lt!124294 (bvsub (size!6143 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!160928 () (_ BitVec 32))

(assert (=> d!60425 (= lt!124294 e!160928)))

(declare-fun c!41541 () Bool)

(assert (=> d!60425 (= c!41541 (bvsge #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(assert (=> d!60425 (and (bvsle #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6143 (_keys!6707 thiss!1504)) (size!6143 (_keys!6707 thiss!1504))))))

(assert (=> d!60425 (= (arrayCountValidKeys!0 (_keys!6707 thiss!1504) #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) lt!124294)))

(declare-fun b!248068 () Bool)

(declare-fun e!160927 () (_ BitVec 32))

(assert (=> b!248068 (= e!160928 e!160927)))

(declare-fun c!41542 () Bool)

(assert (=> b!248068 (= c!41542 (validKeyInArray!0 (select (arr!5800 (_keys!6707 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248069 () Bool)

(declare-fun call!23244 () (_ BitVec 32))

(assert (=> b!248069 (= e!160927 (bvadd #b00000000000000000000000000000001 call!23244))))

(declare-fun b!248070 () Bool)

(assert (=> b!248070 (= e!160928 #b00000000000000000000000000000000)))

(declare-fun b!248071 () Bool)

(assert (=> b!248071 (= e!160927 call!23244)))

(declare-fun bm!23241 () Bool)

(assert (=> bm!23241 (= call!23244 (arrayCountValidKeys!0 (_keys!6707 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6143 (_keys!6707 thiss!1504))))))

(assert (= (and d!60425 c!41541) b!248070))

(assert (= (and d!60425 (not c!41541)) b!248068))

(assert (= (and b!248068 c!41542) b!248069))

(assert (= (and b!248068 (not c!41542)) b!248071))

(assert (= (or b!248069 b!248071) bm!23241))

(assert (=> b!248068 m!264919))

(assert (=> b!248068 m!264919))

(assert (=> b!248068 m!264949))

(declare-fun m!264985 () Bool)

(assert (=> bm!23241 m!264985))

(assert (=> b!247846 d!60425))

(declare-fun d!60427 () Bool)

(assert (=> d!60427 (= (validMask!0 (mask!10727 thiss!1504)) (and (or (= (mask!10727 thiss!1504) #b00000000000000000000000000000111) (= (mask!10727 thiss!1504) #b00000000000000000000000000001111) (= (mask!10727 thiss!1504) #b00000000000000000000000000011111) (= (mask!10727 thiss!1504) #b00000000000000000000000000111111) (= (mask!10727 thiss!1504) #b00000000000000000000000001111111) (= (mask!10727 thiss!1504) #b00000000000000000000000011111111) (= (mask!10727 thiss!1504) #b00000000000000000000000111111111) (= (mask!10727 thiss!1504) #b00000000000000000000001111111111) (= (mask!10727 thiss!1504) #b00000000000000000000011111111111) (= (mask!10727 thiss!1504) #b00000000000000000000111111111111) (= (mask!10727 thiss!1504) #b00000000000000000001111111111111) (= (mask!10727 thiss!1504) #b00000000000000000011111111111111) (= (mask!10727 thiss!1504) #b00000000000000000111111111111111) (= (mask!10727 thiss!1504) #b00000000000000001111111111111111) (= (mask!10727 thiss!1504) #b00000000000000011111111111111111) (= (mask!10727 thiss!1504) #b00000000000000111111111111111111) (= (mask!10727 thiss!1504) #b00000000000001111111111111111111) (= (mask!10727 thiss!1504) #b00000000000011111111111111111111) (= (mask!10727 thiss!1504) #b00000000000111111111111111111111) (= (mask!10727 thiss!1504) #b00000000001111111111111111111111) (= (mask!10727 thiss!1504) #b00000000011111111111111111111111) (= (mask!10727 thiss!1504) #b00000000111111111111111111111111) (= (mask!10727 thiss!1504) #b00000001111111111111111111111111) (= (mask!10727 thiss!1504) #b00000011111111111111111111111111) (= (mask!10727 thiss!1504) #b00000111111111111111111111111111) (= (mask!10727 thiss!1504) #b00001111111111111111111111111111) (= (mask!10727 thiss!1504) #b00011111111111111111111111111111) (= (mask!10727 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10727 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!247846 d!60427))

(declare-fun d!60429 () Bool)

(declare-fun lt!124295 () (_ BitVec 32))

(assert (=> d!60429 (and (bvsge lt!124295 #b00000000000000000000000000000000) (bvsle lt!124295 (bvsub (size!6143 lt!124147) #b00000000000000000000000000000000)))))

(declare-fun e!160930 () (_ BitVec 32))

(assert (=> d!60429 (= lt!124295 e!160930)))

(declare-fun c!41543 () Bool)

(assert (=> d!60429 (= c!41543 (bvsge #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))))))

(assert (=> d!60429 (and (bvsle #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6143 (_keys!6707 thiss!1504)) (size!6143 lt!124147)))))

(assert (=> d!60429 (= (arrayCountValidKeys!0 lt!124147 #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) lt!124295)))

(declare-fun b!248072 () Bool)

(declare-fun e!160929 () (_ BitVec 32))

(assert (=> b!248072 (= e!160930 e!160929)))

(declare-fun c!41544 () Bool)

(assert (=> b!248072 (= c!41544 (validKeyInArray!0 (select (arr!5800 lt!124147) #b00000000000000000000000000000000)))))

(declare-fun b!248073 () Bool)

(declare-fun call!23245 () (_ BitVec 32))

(assert (=> b!248073 (= e!160929 (bvadd #b00000000000000000000000000000001 call!23245))))

(declare-fun b!248074 () Bool)

(assert (=> b!248074 (= e!160930 #b00000000000000000000000000000000)))

(declare-fun b!248075 () Bool)

(assert (=> b!248075 (= e!160929 call!23245)))

(declare-fun bm!23242 () Bool)

(assert (=> bm!23242 (= call!23245 (arrayCountValidKeys!0 lt!124147 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6143 (_keys!6707 thiss!1504))))))

(assert (= (and d!60429 c!41543) b!248074))

(assert (= (and d!60429 (not c!41543)) b!248072))

(assert (= (and b!248072 c!41544) b!248073))

(assert (= (and b!248072 (not c!41544)) b!248075))

(assert (= (or b!248073 b!248075) bm!23242))

(declare-fun m!264987 () Bool)

(assert (=> b!248072 m!264987))

(assert (=> b!248072 m!264987))

(declare-fun m!264989 () Bool)

(assert (=> b!248072 m!264989))

(declare-fun m!264991 () Bool)

(assert (=> bm!23242 m!264991))

(assert (=> b!247846 d!60429))

(declare-fun b!248086 () Bool)

(declare-fun e!160941 () Bool)

(declare-fun contains!1796 (List!3721 (_ BitVec 64)) Bool)

(assert (=> b!248086 (= e!160941 (contains!1796 Nil!3718 (select (arr!5800 lt!124147) #b00000000000000000000000000000000)))))

(declare-fun d!60431 () Bool)

(declare-fun res!121592 () Bool)

(declare-fun e!160942 () Bool)

(assert (=> d!60431 (=> res!121592 e!160942)))

(assert (=> d!60431 (= res!121592 (bvsge #b00000000000000000000000000000000 (size!6143 lt!124147)))))

(assert (=> d!60431 (= (arrayNoDuplicates!0 lt!124147 #b00000000000000000000000000000000 Nil!3718) e!160942)))

(declare-fun b!248087 () Bool)

(declare-fun e!160940 () Bool)

(declare-fun call!23248 () Bool)

(assert (=> b!248087 (= e!160940 call!23248)))

(declare-fun b!248088 () Bool)

(declare-fun e!160939 () Bool)

(assert (=> b!248088 (= e!160939 e!160940)))

(declare-fun c!41547 () Bool)

(assert (=> b!248088 (= c!41547 (validKeyInArray!0 (select (arr!5800 lt!124147) #b00000000000000000000000000000000)))))

(declare-fun b!248089 () Bool)

(assert (=> b!248089 (= e!160942 e!160939)))

(declare-fun res!121593 () Bool)

(assert (=> b!248089 (=> (not res!121593) (not e!160939))))

(assert (=> b!248089 (= res!121593 (not e!160941))))

(declare-fun res!121594 () Bool)

(assert (=> b!248089 (=> (not res!121594) (not e!160941))))

(assert (=> b!248089 (= res!121594 (validKeyInArray!0 (select (arr!5800 lt!124147) #b00000000000000000000000000000000)))))

(declare-fun b!248090 () Bool)

(assert (=> b!248090 (= e!160940 call!23248)))

(declare-fun bm!23245 () Bool)

(assert (=> bm!23245 (= call!23248 (arrayNoDuplicates!0 lt!124147 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41547 (Cons!3717 (select (arr!5800 lt!124147) #b00000000000000000000000000000000) Nil!3718) Nil!3718)))))

(assert (= (and d!60431 (not res!121592)) b!248089))

(assert (= (and b!248089 res!121594) b!248086))

(assert (= (and b!248089 res!121593) b!248088))

(assert (= (and b!248088 c!41547) b!248087))

(assert (= (and b!248088 (not c!41547)) b!248090))

(assert (= (or b!248087 b!248090) bm!23245))

(assert (=> b!248086 m!264987))

(assert (=> b!248086 m!264987))

(declare-fun m!264993 () Bool)

(assert (=> b!248086 m!264993))

(assert (=> b!248088 m!264987))

(assert (=> b!248088 m!264987))

(assert (=> b!248088 m!264989))

(assert (=> b!248089 m!264987))

(assert (=> b!248089 m!264987))

(assert (=> b!248089 m!264989))

(assert (=> bm!23245 m!264987))

(declare-fun m!264995 () Bool)

(assert (=> bm!23245 m!264995))

(assert (=> b!247846 d!60431))

(declare-fun d!60433 () Bool)

(declare-fun e!160945 () Bool)

(assert (=> d!60433 e!160945))

(declare-fun res!121597 () Bool)

(assert (=> d!60433 (=> (not res!121597) (not e!160945))))

(assert (=> d!60433 (= res!121597 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6143 (_keys!6707 thiss!1504)))))))

(declare-fun lt!124298 () Unit!7670)

(declare-fun choose!41 (array!12226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3721) Unit!7670)

(assert (=> d!60433 (= lt!124298 (choose!41 (_keys!6707 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3718))))

(assert (=> d!60433 (bvslt (size!6143 (_keys!6707 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60433 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6707 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3718) lt!124298)))

(declare-fun b!248093 () Bool)

(assert (=> b!248093 (= e!160945 (arrayNoDuplicates!0 (array!12227 (store (arr!5800 (_keys!6707 thiss!1504)) index!297 key!932) (size!6143 (_keys!6707 thiss!1504))) #b00000000000000000000000000000000 Nil!3718))))

(assert (= (and d!60433 res!121597) b!248093))

(declare-fun m!264997 () Bool)

(assert (=> d!60433 m!264997))

(assert (=> b!248093 m!264821))

(declare-fun m!264999 () Bool)

(assert (=> b!248093 m!264999))

(assert (=> b!247846 d!60433))

(declare-fun d!60435 () Bool)

(declare-fun res!121604 () Bool)

(declare-fun e!160948 () Bool)

(assert (=> d!60435 (=> (not res!121604) (not e!160948))))

(declare-fun simpleValid!257 (LongMapFixedSize!3672) Bool)

(assert (=> d!60435 (= res!121604 (simpleValid!257 thiss!1504))))

(assert (=> d!60435 (= (valid!1429 thiss!1504) e!160948)))

(declare-fun b!248100 () Bool)

(declare-fun res!121605 () Bool)

(assert (=> b!248100 (=> (not res!121605) (not e!160948))))

(assert (=> b!248100 (= res!121605 (= (arrayCountValidKeys!0 (_keys!6707 thiss!1504) #b00000000000000000000000000000000 (size!6143 (_keys!6707 thiss!1504))) (_size!1885 thiss!1504)))))

(declare-fun b!248101 () Bool)

(declare-fun res!121606 () Bool)

(assert (=> b!248101 (=> (not res!121606) (not e!160948))))

(assert (=> b!248101 (= res!121606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(declare-fun b!248102 () Bool)

(assert (=> b!248102 (= e!160948 (arrayNoDuplicates!0 (_keys!6707 thiss!1504) #b00000000000000000000000000000000 Nil!3718))))

(assert (= (and d!60435 res!121604) b!248100))

(assert (= (and b!248100 res!121605) b!248101))

(assert (= (and b!248101 res!121606) b!248102))

(declare-fun m!265001 () Bool)

(assert (=> d!60435 m!265001))

(assert (=> b!248100 m!264823))

(assert (=> b!248101 m!264785))

(declare-fun m!265003 () Bool)

(assert (=> b!248102 m!265003))

(assert (=> start!23590 d!60435))

(declare-fun b!248119 () Bool)

(declare-fun e!160960 () Bool)

(declare-fun call!23254 () Bool)

(assert (=> b!248119 (= e!160960 (not call!23254))))

(declare-fun b!248120 () Bool)

(declare-fun lt!124303 () SeekEntryResult!1117)

(assert (=> b!248120 (and (bvsge (index!6638 lt!124303) #b00000000000000000000000000000000) (bvslt (index!6638 lt!124303) (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun res!121616 () Bool)

(assert (=> b!248120 (= res!121616 (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6638 lt!124303)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248120 (=> (not res!121616) (not e!160960))))

(declare-fun b!248121 () Bool)

(declare-fun e!160958 () Bool)

(assert (=> b!248121 (= e!160958 e!160960)))

(declare-fun res!121617 () Bool)

(declare-fun call!23253 () Bool)

(assert (=> b!248121 (= res!121617 call!23253)))

(assert (=> b!248121 (=> (not res!121617) (not e!160960))))

(declare-fun bm!23250 () Bool)

(declare-fun c!41552 () Bool)

(assert (=> bm!23250 (= call!23253 (inRange!0 (ite c!41552 (index!6638 lt!124303) (index!6641 lt!124303)) (mask!10727 thiss!1504)))))

(declare-fun b!248122 () Bool)

(declare-fun e!160959 () Bool)

(assert (=> b!248122 (= e!160959 (not call!23254))))

(declare-fun b!248123 () Bool)

(declare-fun res!121618 () Bool)

(assert (=> b!248123 (=> (not res!121618) (not e!160959))))

(assert (=> b!248123 (= res!121618 call!23253)))

(declare-fun e!160957 () Bool)

(assert (=> b!248123 (= e!160957 e!160959)))

(declare-fun bm!23251 () Bool)

(assert (=> bm!23251 (= call!23254 (arrayContainsKey!0 (_keys!6707 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun d!60437 () Bool)

(assert (=> d!60437 e!160958))

(assert (=> d!60437 (= c!41552 ((_ is MissingZero!1117) lt!124303))))

(assert (=> d!60437 (= lt!124303 (seekEntryOrOpen!0 key!932 (_keys!6707 thiss!1504) (mask!10727 thiss!1504)))))

(declare-fun lt!124304 () Unit!7670)

(declare-fun choose!1174 (array!12226 array!12224 (_ BitVec 32) (_ BitVec 32) V!8259 V!8259 (_ BitVec 64) Int) Unit!7670)

(assert (=> d!60437 (= lt!124304 (choose!1174 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 (defaultEntry!4585 thiss!1504)))))

(assert (=> d!60437 (validMask!0 (mask!10727 thiss!1504))))

(assert (=> d!60437 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!388 (_keys!6707 thiss!1504) (_values!4568 thiss!1504) (mask!10727 thiss!1504) (extraKeys!4322 thiss!1504) (zeroValue!4426 thiss!1504) (minValue!4426 thiss!1504) key!932 (defaultEntry!4585 thiss!1504)) lt!124304)))

(declare-fun b!248124 () Bool)

(assert (=> b!248124 (= e!160957 ((_ is Undefined!1117) lt!124303))))

(declare-fun b!248125 () Bool)

(declare-fun res!121615 () Bool)

(assert (=> b!248125 (=> (not res!121615) (not e!160959))))

(assert (=> b!248125 (= res!121615 (= (select (arr!5800 (_keys!6707 thiss!1504)) (index!6641 lt!124303)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248125 (and (bvsge (index!6641 lt!124303) #b00000000000000000000000000000000) (bvslt (index!6641 lt!124303) (size!6143 (_keys!6707 thiss!1504))))))

(declare-fun b!248126 () Bool)

(assert (=> b!248126 (= e!160958 e!160957)))

(declare-fun c!41553 () Bool)

(assert (=> b!248126 (= c!41553 ((_ is MissingVacant!1117) lt!124303))))

(assert (= (and d!60437 c!41552) b!248121))

(assert (= (and d!60437 (not c!41552)) b!248126))

(assert (= (and b!248121 res!121617) b!248120))

(assert (= (and b!248120 res!121616) b!248119))

(assert (= (and b!248126 c!41553) b!248123))

(assert (= (and b!248126 (not c!41553)) b!248124))

(assert (= (and b!248123 res!121618) b!248125))

(assert (= (and b!248125 res!121615) b!248122))

(assert (= (or b!248121 b!248123) bm!23250))

(assert (= (or b!248119 b!248122) bm!23251))

(declare-fun m!265005 () Bool)

(assert (=> b!248125 m!265005))

(declare-fun m!265007 () Bool)

(assert (=> b!248120 m!265007))

(assert (=> bm!23251 m!264789))

(declare-fun m!265009 () Bool)

(assert (=> bm!23250 m!265009))

(assert (=> d!60437 m!264793))

(declare-fun m!265011 () Bool)

(assert (=> d!60437 m!265011))

(assert (=> d!60437 m!264813))

(assert (=> b!247837 d!60437))

(assert (=> bm!23208 d!60423))

(declare-fun condMapEmpty!10970 () Bool)

(declare-fun mapDefault!10970 () ValueCell!2886)

(assert (=> mapNonEmpty!10964 (= condMapEmpty!10970 (= mapRest!10964 ((as const (Array (_ BitVec 32) ValueCell!2886)) mapDefault!10970)))))

(declare-fun e!160965 () Bool)

(declare-fun mapRes!10970 () Bool)

(assert (=> mapNonEmpty!10964 (= tp!23039 (and e!160965 mapRes!10970))))

(declare-fun b!248133 () Bool)

(declare-fun e!160966 () Bool)

(assert (=> b!248133 (= e!160966 tp_is_empty!6459)))

(declare-fun mapNonEmpty!10970 () Bool)

(declare-fun tp!23048 () Bool)

(assert (=> mapNonEmpty!10970 (= mapRes!10970 (and tp!23048 e!160966))))

(declare-fun mapValue!10970 () ValueCell!2886)

(declare-fun mapRest!10970 () (Array (_ BitVec 32) ValueCell!2886))

(declare-fun mapKey!10970 () (_ BitVec 32))

(assert (=> mapNonEmpty!10970 (= mapRest!10964 (store mapRest!10970 mapKey!10970 mapValue!10970))))

(declare-fun mapIsEmpty!10970 () Bool)

(assert (=> mapIsEmpty!10970 mapRes!10970))

(declare-fun b!248134 () Bool)

(assert (=> b!248134 (= e!160965 tp_is_empty!6459)))

(assert (= (and mapNonEmpty!10964 condMapEmpty!10970) mapIsEmpty!10970))

(assert (= (and mapNonEmpty!10964 (not condMapEmpty!10970)) mapNonEmpty!10970))

(assert (= (and mapNonEmpty!10970 ((_ is ValueCellFull!2886) mapValue!10970)) b!248133))

(assert (= (and mapNonEmpty!10964 ((_ is ValueCellFull!2886) mapDefault!10970)) b!248134))

(declare-fun m!265013 () Bool)

(assert (=> mapNonEmpty!10970 m!265013))

(declare-fun b_lambda!8083 () Bool)

(assert (= b_lambda!8081 (or (and b!247840 b_free!6597) b_lambda!8083)))

(check-sat (not b!248102) (not d!60435) (not b!248050) (not d!60409) (not b!247958) (not bm!23232) (not b!248059) (not bm!23230) (not b!248033) (not b!248053) (not bm!23245) (not b!248005) (not b_next!6597) (not d!60399) (not b!248068) (not b!248100) (not b!247945) (not bm!23229) (not bm!23242) (not b!248072) (not d!60421) (not b_lambda!8083) (not b!248006) (not b!248014) (not b!248007) (not b!248051) (not b!248009) (not d!60417) (not b!248093) (not b!248034) (not bm!23251) (not bm!23235) (not bm!23241) (not bm!23250) (not b!248088) (not b!248001) (not b!248040) (not b!248086) (not d!60437) (not d!60433) tp_is_empty!6459 (not b!248089) (not b!248101) (not b!248002) (not d!60407) (not b!248013) (not d!60415) (not b!247956) (not bm!23238) b_and!13621 (not mapNonEmpty!10970))
(check-sat b_and!13621 (not b_next!6597))

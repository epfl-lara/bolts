; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25136 () Bool)

(assert start!25136)

(declare-fun b!261621 () Bool)

(declare-fun b_free!6771 () Bool)

(declare-fun b_next!6771 () Bool)

(assert (=> b!261621 (= b_free!6771 (not b_next!6771))))

(declare-fun tp!23644 () Bool)

(declare-fun b_and!13923 () Bool)

(assert (=> b!261621 (= tp!23644 b_and!13923)))

(declare-fun b!261620 () Bool)

(declare-fun e!169533 () Bool)

(declare-fun call!24984 () Bool)

(assert (=> b!261620 (= e!169533 (not call!24984))))

(declare-fun e!169536 () Bool)

(declare-fun e!169543 () Bool)

(declare-fun tp_is_empty!6633 () Bool)

(declare-datatypes ((V!8491 0))(
  ( (V!8492 (val!3361 Int)) )
))
(declare-datatypes ((ValueCell!2973 0))(
  ( (ValueCellFull!2973 (v!5482 V!8491)) (EmptyCell!2973) )
))
(declare-datatypes ((array!12622 0))(
  ( (array!12623 (arr!5973 (Array (_ BitVec 32) ValueCell!2973)) (size!6324 (_ BitVec 32))) )
))
(declare-datatypes ((array!12624 0))(
  ( (array!12625 (arr!5974 (Array (_ BitVec 32) (_ BitVec 64))) (size!6325 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3846 0))(
  ( (LongMapFixedSize!3847 (defaultEntry!4821 Int) (mask!11169 (_ BitVec 32)) (extraKeys!4558 (_ BitVec 32)) (zeroValue!4662 V!8491) (minValue!4662 V!8491) (_size!1972 (_ BitVec 32)) (_keys!7009 array!12624) (_values!4804 array!12622) (_vacant!1972 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3846)

(declare-fun array_inv!3937 (array!12624) Bool)

(declare-fun array_inv!3938 (array!12622) Bool)

(assert (=> b!261621 (= e!169543 (and tp!23644 tp_is_empty!6633 (array_inv!3937 (_keys!7009 thiss!1504)) (array_inv!3938 (_values!4804 thiss!1504)) e!169536))))

(declare-datatypes ((SeekEntryResult!1198 0))(
  ( (MissingZero!1198 (index!6962 (_ BitVec 32))) (Found!1198 (index!6963 (_ BitVec 32))) (Intermediate!1198 (undefined!2010 Bool) (index!6964 (_ BitVec 32)) (x!25188 (_ BitVec 32))) (Undefined!1198) (MissingVacant!1198 (index!6965 (_ BitVec 32))) )
))
(declare-fun lt!132165 () SeekEntryResult!1198)

(declare-fun bm!24980 () Bool)

(declare-fun c!44543 () Bool)

(declare-fun call!24983 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24980 (= call!24983 (inRange!0 (ite c!44543 (index!6962 lt!132165) (index!6965 lt!132165)) (mask!11169 thiss!1504)))))

(declare-fun b!261622 () Bool)

(declare-fun e!169544 () Bool)

(assert (=> b!261622 (= e!169544 (not call!24984))))

(declare-fun b!261623 () Bool)

(declare-fun res!127838 () Bool)

(declare-fun e!169532 () Bool)

(assert (=> b!261623 (=> (not res!127838) (not e!169532))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!261623 (= res!127838 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!11308 () Bool)

(declare-fun mapRes!11308 () Bool)

(declare-fun tp!23643 () Bool)

(declare-fun e!169542 () Bool)

(assert (=> mapNonEmpty!11308 (= mapRes!11308 (and tp!23643 e!169542))))

(declare-fun mapKey!11308 () (_ BitVec 32))

(declare-fun mapValue!11308 () ValueCell!2973)

(declare-fun mapRest!11308 () (Array (_ BitVec 32) ValueCell!2973))

(assert (=> mapNonEmpty!11308 (= (arr!5973 (_values!4804 thiss!1504)) (store mapRest!11308 mapKey!11308 mapValue!11308))))

(declare-fun b!261624 () Bool)

(declare-fun e!169537 () Bool)

(assert (=> b!261624 (= e!169537 e!169533)))

(declare-fun res!127839 () Bool)

(assert (=> b!261624 (= res!127839 call!24983)))

(assert (=> b!261624 (=> (not res!127839) (not e!169533))))

(declare-fun b!261625 () Bool)

(declare-fun e!169534 () Bool)

(assert (=> b!261625 (= e!169536 (and e!169534 mapRes!11308))))

(declare-fun condMapEmpty!11308 () Bool)

(declare-fun mapDefault!11308 () ValueCell!2973)

(assert (=> b!261625 (= condMapEmpty!11308 (= (arr!5973 (_values!4804 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2973)) mapDefault!11308)))))

(declare-fun bm!24981 () Bool)

(declare-fun arrayContainsKey!0 (array!12624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24981 (= call!24984 (arrayContainsKey!0 (_keys!7009 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261626 () Bool)

(declare-fun e!169540 () Bool)

(assert (=> b!261626 (= e!169532 e!169540)))

(declare-fun res!127843 () Bool)

(assert (=> b!261626 (=> (not res!127843) (not e!169540))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!261626 (= res!127843 (or (= lt!132165 (MissingZero!1198 index!297)) (= lt!132165 (MissingVacant!1198 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12624 (_ BitVec 32)) SeekEntryResult!1198)

(assert (=> b!261626 (= lt!132165 (seekEntryOrOpen!0 key!932 (_keys!7009 thiss!1504) (mask!11169 thiss!1504)))))

(declare-fun b!261627 () Bool)

(assert (=> b!261627 (= e!169542 tp_is_empty!6633)))

(declare-fun b!261628 () Bool)

(declare-datatypes ((Unit!8131 0))(
  ( (Unit!8132) )
))
(declare-fun e!169541 () Unit!8131)

(declare-fun Unit!8133 () Unit!8131)

(assert (=> b!261628 (= e!169541 Unit!8133)))

(declare-fun lt!132159 () Unit!8131)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!447 (array!12624 array!12622 (_ BitVec 32) (_ BitVec 32) V!8491 V!8491 (_ BitVec 64) Int) Unit!8131)

(assert (=> b!261628 (= lt!132159 (lemmaInListMapThenSeekEntryOrOpenFindsIt!447 (_keys!7009 thiss!1504) (_values!4804 thiss!1504) (mask!11169 thiss!1504) (extraKeys!4558 thiss!1504) (zeroValue!4662 thiss!1504) (minValue!4662 thiss!1504) key!932 (defaultEntry!4821 thiss!1504)))))

(assert (=> b!261628 false))

(declare-fun b!261629 () Bool)

(declare-fun lt!132166 () Unit!8131)

(assert (=> b!261629 (= e!169541 lt!132166)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!446 (array!12624 array!12622 (_ BitVec 32) (_ BitVec 32) V!8491 V!8491 (_ BitVec 64) Int) Unit!8131)

(assert (=> b!261629 (= lt!132166 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!446 (_keys!7009 thiss!1504) (_values!4804 thiss!1504) (mask!11169 thiss!1504) (extraKeys!4558 thiss!1504) (zeroValue!4662 thiss!1504) (minValue!4662 thiss!1504) key!932 (defaultEntry!4821 thiss!1504)))))

(get-info :version)

(assert (=> b!261629 (= c!44543 ((_ is MissingZero!1198) lt!132165))))

(declare-fun e!169535 () Bool)

(assert (=> b!261629 e!169535))

(declare-fun b!261631 () Bool)

(declare-fun e!169538 () Bool)

(assert (=> b!261631 (= e!169538 (not true))))

(declare-fun lt!132162 () array!12624)

(declare-fun arrayCountValidKeys!0 (array!12624 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!261631 (= (arrayCountValidKeys!0 lt!132162 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132156 () Unit!8131)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12624 (_ BitVec 32)) Unit!8131)

(assert (=> b!261631 (= lt!132156 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132162 index!297))))

(assert (=> b!261631 (arrayContainsKey!0 lt!132162 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132154 () Unit!8131)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12624 (_ BitVec 64) (_ BitVec 32)) Unit!8131)

(assert (=> b!261631 (= lt!132154 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132162 key!932 index!297))))

(declare-datatypes ((tuple2!4954 0))(
  ( (tuple2!4955 (_1!2487 (_ BitVec 64)) (_2!2487 V!8491)) )
))
(declare-datatypes ((List!3854 0))(
  ( (Nil!3851) (Cons!3850 (h!4516 tuple2!4954) (t!8935 List!3854)) )
))
(declare-datatypes ((ListLongMap!3881 0))(
  ( (ListLongMap!3882 (toList!1956 List!3854)) )
))
(declare-fun lt!132163 () ListLongMap!3881)

(declare-fun v!346 () V!8491)

(declare-fun +!697 (ListLongMap!3881 tuple2!4954) ListLongMap!3881)

(declare-fun getCurrentListMap!1479 (array!12624 array!12622 (_ BitVec 32) (_ BitVec 32) V!8491 V!8491 (_ BitVec 32) Int) ListLongMap!3881)

(assert (=> b!261631 (= (+!697 lt!132163 (tuple2!4955 key!932 v!346)) (getCurrentListMap!1479 lt!132162 (array!12623 (store (arr!5973 (_values!4804 thiss!1504)) index!297 (ValueCellFull!2973 v!346)) (size!6324 (_values!4804 thiss!1504))) (mask!11169 thiss!1504) (extraKeys!4558 thiss!1504) (zeroValue!4662 thiss!1504) (minValue!4662 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4821 thiss!1504)))))

(declare-fun lt!132153 () Unit!8131)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!112 (array!12624 array!12622 (_ BitVec 32) (_ BitVec 32) V!8491 V!8491 (_ BitVec 32) (_ BitVec 64) V!8491 Int) Unit!8131)

(assert (=> b!261631 (= lt!132153 (lemmaAddValidKeyToArrayThenAddPairToListMap!112 (_keys!7009 thiss!1504) (_values!4804 thiss!1504) (mask!11169 thiss!1504) (extraKeys!4558 thiss!1504) (zeroValue!4662 thiss!1504) (minValue!4662 thiss!1504) index!297 key!932 v!346 (defaultEntry!4821 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12624 (_ BitVec 32)) Bool)

(assert (=> b!261631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132162 (mask!11169 thiss!1504))))

(declare-fun lt!132161 () Unit!8131)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12624 (_ BitVec 32) (_ BitVec 32)) Unit!8131)

(assert (=> b!261631 (= lt!132161 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7009 thiss!1504) index!297 (mask!11169 thiss!1504)))))

(assert (=> b!261631 (= (arrayCountValidKeys!0 lt!132162 #b00000000000000000000000000000000 (size!6325 (_keys!7009 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7009 thiss!1504) #b00000000000000000000000000000000 (size!6325 (_keys!7009 thiss!1504)))))))

(declare-fun lt!132160 () Unit!8131)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12624 (_ BitVec 32) (_ BitVec 64)) Unit!8131)

(assert (=> b!261631 (= lt!132160 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7009 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3855 0))(
  ( (Nil!3852) (Cons!3851 (h!4517 (_ BitVec 64)) (t!8936 List!3855)) )
))
(declare-fun arrayNoDuplicates!0 (array!12624 (_ BitVec 32) List!3855) Bool)

(assert (=> b!261631 (arrayNoDuplicates!0 lt!132162 #b00000000000000000000000000000000 Nil!3852)))

(assert (=> b!261631 (= lt!132162 (array!12625 (store (arr!5974 (_keys!7009 thiss!1504)) index!297 key!932) (size!6325 (_keys!7009 thiss!1504))))))

(declare-fun lt!132157 () Unit!8131)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12624 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3855) Unit!8131)

(assert (=> b!261631 (= lt!132157 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7009 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3852))))

(declare-fun lt!132164 () Unit!8131)

(declare-fun e!169531 () Unit!8131)

(assert (=> b!261631 (= lt!132164 e!169531)))

(declare-fun c!44545 () Bool)

(assert (=> b!261631 (= c!44545 (arrayContainsKey!0 (_keys!7009 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261632 () Bool)

(assert (=> b!261632 (= e!169534 tp_is_empty!6633)))

(declare-fun b!261633 () Bool)

(declare-fun res!127841 () Bool)

(assert (=> b!261633 (=> (not res!127841) (not e!169544))))

(assert (=> b!261633 (= res!127841 call!24983)))

(assert (=> b!261633 (= e!169535 e!169544)))

(declare-fun b!261634 () Bool)

(declare-fun Unit!8134 () Unit!8131)

(assert (=> b!261634 (= e!169531 Unit!8134)))

(declare-fun lt!132155 () Unit!8131)

(declare-fun lemmaArrayContainsKeyThenInListMap!254 (array!12624 array!12622 (_ BitVec 32) (_ BitVec 32) V!8491 V!8491 (_ BitVec 64) (_ BitVec 32) Int) Unit!8131)

(assert (=> b!261634 (= lt!132155 (lemmaArrayContainsKeyThenInListMap!254 (_keys!7009 thiss!1504) (_values!4804 thiss!1504) (mask!11169 thiss!1504) (extraKeys!4558 thiss!1504) (zeroValue!4662 thiss!1504) (minValue!4662 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4821 thiss!1504)))))

(assert (=> b!261634 false))

(declare-fun b!261635 () Bool)

(assert (=> b!261635 (= e!169537 ((_ is Undefined!1198) lt!132165))))

(declare-fun b!261636 () Bool)

(assert (=> b!261636 (= e!169540 e!169538)))

(declare-fun res!127836 () Bool)

(assert (=> b!261636 (=> (not res!127836) (not e!169538))))

(assert (=> b!261636 (= res!127836 (inRange!0 index!297 (mask!11169 thiss!1504)))))

(declare-fun lt!132158 () Unit!8131)

(assert (=> b!261636 (= lt!132158 e!169541)))

(declare-fun c!44542 () Bool)

(declare-fun contains!1898 (ListLongMap!3881 (_ BitVec 64)) Bool)

(assert (=> b!261636 (= c!44542 (contains!1898 lt!132163 key!932))))

(assert (=> b!261636 (= lt!132163 (getCurrentListMap!1479 (_keys!7009 thiss!1504) (_values!4804 thiss!1504) (mask!11169 thiss!1504) (extraKeys!4558 thiss!1504) (zeroValue!4662 thiss!1504) (minValue!4662 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4821 thiss!1504)))))

(declare-fun b!261637 () Bool)

(declare-fun Unit!8135 () Unit!8131)

(assert (=> b!261637 (= e!169531 Unit!8135)))

(declare-fun b!261638 () Bool)

(declare-fun res!127840 () Bool)

(assert (=> b!261638 (=> (not res!127840) (not e!169544))))

(assert (=> b!261638 (= res!127840 (= (select (arr!5974 (_keys!7009 thiss!1504)) (index!6962 lt!132165)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!261639 () Bool)

(declare-fun res!127837 () Bool)

(assert (=> b!261639 (= res!127837 (= (select (arr!5974 (_keys!7009 thiss!1504)) (index!6965 lt!132165)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261639 (=> (not res!127837) (not e!169533))))

(declare-fun mapIsEmpty!11308 () Bool)

(assert (=> mapIsEmpty!11308 mapRes!11308))

(declare-fun b!261630 () Bool)

(declare-fun c!44544 () Bool)

(assert (=> b!261630 (= c!44544 ((_ is MissingVacant!1198) lt!132165))))

(assert (=> b!261630 (= e!169535 e!169537)))

(declare-fun res!127842 () Bool)

(assert (=> start!25136 (=> (not res!127842) (not e!169532))))

(declare-fun valid!1492 (LongMapFixedSize!3846) Bool)

(assert (=> start!25136 (= res!127842 (valid!1492 thiss!1504))))

(assert (=> start!25136 e!169532))

(assert (=> start!25136 e!169543))

(assert (=> start!25136 true))

(assert (=> start!25136 tp_is_empty!6633))

(assert (= (and start!25136 res!127842) b!261623))

(assert (= (and b!261623 res!127838) b!261626))

(assert (= (and b!261626 res!127843) b!261636))

(assert (= (and b!261636 c!44542) b!261628))

(assert (= (and b!261636 (not c!44542)) b!261629))

(assert (= (and b!261629 c!44543) b!261633))

(assert (= (and b!261629 (not c!44543)) b!261630))

(assert (= (and b!261633 res!127841) b!261638))

(assert (= (and b!261638 res!127840) b!261622))

(assert (= (and b!261630 c!44544) b!261624))

(assert (= (and b!261630 (not c!44544)) b!261635))

(assert (= (and b!261624 res!127839) b!261639))

(assert (= (and b!261639 res!127837) b!261620))

(assert (= (or b!261633 b!261624) bm!24980))

(assert (= (or b!261622 b!261620) bm!24981))

(assert (= (and b!261636 res!127836) b!261631))

(assert (= (and b!261631 c!44545) b!261634))

(assert (= (and b!261631 (not c!44545)) b!261637))

(assert (= (and b!261625 condMapEmpty!11308) mapIsEmpty!11308))

(assert (= (and b!261625 (not condMapEmpty!11308)) mapNonEmpty!11308))

(assert (= (and mapNonEmpty!11308 ((_ is ValueCellFull!2973) mapValue!11308)) b!261627))

(assert (= (and b!261625 ((_ is ValueCellFull!2973) mapDefault!11308)) b!261632))

(assert (= b!261621 b!261625))

(assert (= start!25136 b!261621))

(declare-fun m!277725 () Bool)

(assert (=> b!261631 m!277725))

(declare-fun m!277727 () Bool)

(assert (=> b!261631 m!277727))

(declare-fun m!277729 () Bool)

(assert (=> b!261631 m!277729))

(declare-fun m!277731 () Bool)

(assert (=> b!261631 m!277731))

(declare-fun m!277733 () Bool)

(assert (=> b!261631 m!277733))

(declare-fun m!277735 () Bool)

(assert (=> b!261631 m!277735))

(declare-fun m!277737 () Bool)

(assert (=> b!261631 m!277737))

(declare-fun m!277739 () Bool)

(assert (=> b!261631 m!277739))

(declare-fun m!277741 () Bool)

(assert (=> b!261631 m!277741))

(declare-fun m!277743 () Bool)

(assert (=> b!261631 m!277743))

(declare-fun m!277745 () Bool)

(assert (=> b!261631 m!277745))

(declare-fun m!277747 () Bool)

(assert (=> b!261631 m!277747))

(declare-fun m!277749 () Bool)

(assert (=> b!261631 m!277749))

(declare-fun m!277751 () Bool)

(assert (=> b!261631 m!277751))

(declare-fun m!277753 () Bool)

(assert (=> b!261631 m!277753))

(declare-fun m!277755 () Bool)

(assert (=> b!261631 m!277755))

(declare-fun m!277757 () Bool)

(assert (=> b!261631 m!277757))

(declare-fun m!277759 () Bool)

(assert (=> start!25136 m!277759))

(declare-fun m!277761 () Bool)

(assert (=> mapNonEmpty!11308 m!277761))

(declare-fun m!277763 () Bool)

(assert (=> b!261628 m!277763))

(declare-fun m!277765 () Bool)

(assert (=> b!261634 m!277765))

(declare-fun m!277767 () Bool)

(assert (=> b!261621 m!277767))

(declare-fun m!277769 () Bool)

(assert (=> b!261621 m!277769))

(declare-fun m!277771 () Bool)

(assert (=> b!261638 m!277771))

(declare-fun m!277773 () Bool)

(assert (=> b!261636 m!277773))

(declare-fun m!277775 () Bool)

(assert (=> b!261636 m!277775))

(declare-fun m!277777 () Bool)

(assert (=> b!261636 m!277777))

(declare-fun m!277779 () Bool)

(assert (=> b!261626 m!277779))

(declare-fun m!277781 () Bool)

(assert (=> bm!24980 m!277781))

(assert (=> bm!24981 m!277743))

(declare-fun m!277783 () Bool)

(assert (=> b!261639 m!277783))

(declare-fun m!277785 () Bool)

(assert (=> b!261629 m!277785))

(check-sat (not b!261621) (not b_next!6771) (not b!261636) (not start!25136) (not b!261628) (not b!261631) (not bm!24980) (not mapNonEmpty!11308) (not b!261626) (not b!261629) tp_is_empty!6633 (not bm!24981) b_and!13923 (not b!261634))
(check-sat b_and!13923 (not b_next!6771))

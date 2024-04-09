; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22026 () Bool)

(assert start!22026)

(declare-fun b!226680 () Bool)

(declare-fun b_free!6081 () Bool)

(declare-fun b_next!6081 () Bool)

(assert (=> b!226680 (= b_free!6081 (not b_next!6081))))

(declare-fun tp!21385 () Bool)

(declare-fun b_and!12997 () Bool)

(assert (=> b!226680 (= tp!21385 b_and!12997)))

(declare-fun b!226658 () Bool)

(declare-fun e!147069 () Bool)

(assert (=> b!226658 (= e!147069 true)))

(declare-fun lt!114126 () Bool)

(declare-datatypes ((V!7571 0))(
  ( (V!7572 (val!3016 Int)) )
))
(declare-datatypes ((ValueCell!2628 0))(
  ( (ValueCellFull!2628 (v!5032 V!7571)) (EmptyCell!2628) )
))
(declare-datatypes ((array!11128 0))(
  ( (array!11129 (arr!5283 (Array (_ BitVec 32) ValueCell!2628)) (size!5616 (_ BitVec 32))) )
))
(declare-datatypes ((array!11130 0))(
  ( (array!11131 (arr!5284 (Array (_ BitVec 32) (_ BitVec 64))) (size!5617 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3156 0))(
  ( (LongMapFixedSize!3157 (defaultEntry!4237 Int) (mask!10091 (_ BitVec 32)) (extraKeys!3974 (_ BitVec 32)) (zeroValue!4078 V!7571) (minValue!4078 V!7571) (_size!1627 (_ BitVec 32)) (_keys!6291 array!11130) (_values!4220 array!11128) (_vacant!1627 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3156)

(declare-datatypes ((List!3398 0))(
  ( (Nil!3395) (Cons!3394 (h!4042 (_ BitVec 64)) (t!8365 List!3398)) )
))
(declare-fun arrayNoDuplicates!0 (array!11130 (_ BitVec 32) List!3398) Bool)

(assert (=> b!226658 (= lt!114126 (arrayNoDuplicates!0 (_keys!6291 thiss!1504) #b00000000000000000000000000000000 Nil!3395))))

(declare-fun b!226659 () Bool)

(declare-fun res!111599 () Bool)

(declare-fun e!147059 () Bool)

(assert (=> b!226659 (=> (not res!111599) (not e!147059))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!226659 (= res!111599 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226660 () Bool)

(declare-fun res!111610 () Bool)

(assert (=> b!226660 (=> res!111610 e!147069)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11130 (_ BitVec 32)) Bool)

(assert (=> b!226660 (= res!111610 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6291 thiss!1504) (mask!10091 thiss!1504))))))

(declare-fun b!226661 () Bool)

(declare-fun e!147067 () Bool)

(declare-fun call!21075 () Bool)

(assert (=> b!226661 (= e!147067 (not call!21075))))

(declare-fun b!226662 () Bool)

(declare-fun e!147056 () Bool)

(declare-fun tp_is_empty!5943 () Bool)

(assert (=> b!226662 (= e!147056 tp_is_empty!5943)))

(declare-fun b!226663 () Bool)

(declare-fun e!147066 () Bool)

(declare-fun e!147060 () Bool)

(assert (=> b!226663 (= e!147066 e!147060)))

(declare-fun res!111601 () Bool)

(assert (=> b!226663 (=> (not res!111601) (not e!147060))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!226663 (= res!111601 (inRange!0 index!297 (mask!10091 thiss!1504)))))

(declare-datatypes ((Unit!6858 0))(
  ( (Unit!6859) )
))
(declare-fun lt!114130 () Unit!6858)

(declare-fun e!147057 () Unit!6858)

(assert (=> b!226663 (= lt!114130 e!147057)))

(declare-fun c!37563 () Bool)

(declare-datatypes ((tuple2!4456 0))(
  ( (tuple2!4457 (_1!2238 (_ BitVec 64)) (_2!2238 V!7571)) )
))
(declare-datatypes ((List!3399 0))(
  ( (Nil!3396) (Cons!3395 (h!4043 tuple2!4456) (t!8366 List!3399)) )
))
(declare-datatypes ((ListLongMap!3383 0))(
  ( (ListLongMap!3384 (toList!1707 List!3399)) )
))
(declare-fun contains!1575 (ListLongMap!3383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1230 (array!11130 array!11128 (_ BitVec 32) (_ BitVec 32) V!7571 V!7571 (_ BitVec 32) Int) ListLongMap!3383)

(assert (=> b!226663 (= c!37563 (contains!1575 (getCurrentListMap!1230 (_keys!6291 thiss!1504) (_values!4220 thiss!1504) (mask!10091 thiss!1504) (extraKeys!3974 thiss!1504) (zeroValue!4078 thiss!1504) (minValue!4078 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4237 thiss!1504)) key!932))))

(declare-fun bm!21072 () Bool)

(declare-fun arrayContainsKey!0 (array!11130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21072 (= call!21075 (arrayContainsKey!0 (_keys!6291 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226664 () Bool)

(declare-fun e!147068 () Bool)

(assert (=> b!226664 (= e!147068 tp_is_empty!5943)))

(declare-fun b!226665 () Bool)

(declare-fun e!147065 () Bool)

(assert (=> b!226665 (= e!147065 e!147067)))

(declare-fun res!111607 () Bool)

(declare-fun call!21076 () Bool)

(assert (=> b!226665 (= res!111607 call!21076)))

(assert (=> b!226665 (=> (not res!111607) (not e!147067))))

(declare-fun b!226666 () Bool)

(declare-fun res!111602 () Bool)

(declare-fun e!147058 () Bool)

(assert (=> b!226666 (=> (not res!111602) (not e!147058))))

(assert (=> b!226666 (= res!111602 call!21076)))

(declare-fun e!147063 () Bool)

(assert (=> b!226666 (= e!147063 e!147058)))

(declare-fun b!226667 () Bool)

(declare-fun Unit!6860 () Unit!6858)

(assert (=> b!226667 (= e!147057 Unit!6860)))

(declare-fun lt!114127 () Unit!6858)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!259 (array!11130 array!11128 (_ BitVec 32) (_ BitVec 32) V!7571 V!7571 (_ BitVec 64) Int) Unit!6858)

(assert (=> b!226667 (= lt!114127 (lemmaInListMapThenSeekEntryOrOpenFindsIt!259 (_keys!6291 thiss!1504) (_values!4220 thiss!1504) (mask!10091 thiss!1504) (extraKeys!3974 thiss!1504) (zeroValue!4078 thiss!1504) (minValue!4078 thiss!1504) key!932 (defaultEntry!4237 thiss!1504)))))

(assert (=> b!226667 false))

(declare-fun b!226668 () Bool)

(declare-fun res!111600 () Bool)

(assert (=> b!226668 (=> (not res!111600) (not e!147058))))

(declare-datatypes ((SeekEntryResult!896 0))(
  ( (MissingZero!896 (index!5754 (_ BitVec 32))) (Found!896 (index!5755 (_ BitVec 32))) (Intermediate!896 (undefined!1708 Bool) (index!5756 (_ BitVec 32)) (x!23252 (_ BitVec 32))) (Undefined!896) (MissingVacant!896 (index!5757 (_ BitVec 32))) )
))
(declare-fun lt!114131 () SeekEntryResult!896)

(assert (=> b!226668 (= res!111600 (= (select (arr!5284 (_keys!6291 thiss!1504)) (index!5754 lt!114131)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226669 () Bool)

(declare-fun lt!114128 () Unit!6858)

(assert (=> b!226669 (= e!147057 lt!114128)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!270 (array!11130 array!11128 (_ BitVec 32) (_ BitVec 32) V!7571 V!7571 (_ BitVec 64) Int) Unit!6858)

(assert (=> b!226669 (= lt!114128 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!270 (_keys!6291 thiss!1504) (_values!4220 thiss!1504) (mask!10091 thiss!1504) (extraKeys!3974 thiss!1504) (zeroValue!4078 thiss!1504) (minValue!4078 thiss!1504) key!932 (defaultEntry!4237 thiss!1504)))))

(declare-fun c!37562 () Bool)

(get-info :version)

(assert (=> b!226669 (= c!37562 ((_ is MissingZero!896) lt!114131))))

(assert (=> b!226669 e!147063))

(declare-fun b!226670 () Bool)

(declare-fun res!111598 () Bool)

(assert (=> b!226670 (=> res!111598 e!147069)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226670 (= res!111598 (not (validKeyInArray!0 key!932)))))

(declare-fun b!226671 () Bool)

(assert (=> b!226671 (= e!147060 (not e!147069))))

(declare-fun res!111608 () Bool)

(assert (=> b!226671 (=> res!111608 e!147069)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226671 (= res!111608 (not (validMask!0 (mask!10091 thiss!1504))))))

(declare-fun lt!114123 () array!11130)

(declare-fun arrayCountValidKeys!0 (array!11130 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226671 (= (arrayCountValidKeys!0 lt!114123 #b00000000000000000000000000000000 (size!5617 (_keys!6291 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6291 thiss!1504) #b00000000000000000000000000000000 (size!5617 (_keys!6291 thiss!1504)))))))

(declare-fun lt!114129 () Unit!6858)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11130 (_ BitVec 32) (_ BitVec 64)) Unit!6858)

(assert (=> b!226671 (= lt!114129 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6291 thiss!1504) index!297 key!932))))

(assert (=> b!226671 (arrayNoDuplicates!0 lt!114123 #b00000000000000000000000000000000 Nil!3395)))

(assert (=> b!226671 (= lt!114123 (array!11131 (store (arr!5284 (_keys!6291 thiss!1504)) index!297 key!932) (size!5617 (_keys!6291 thiss!1504))))))

(declare-fun lt!114132 () Unit!6858)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11130 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3398) Unit!6858)

(assert (=> b!226671 (= lt!114132 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6291 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3395))))

(declare-fun lt!114125 () Unit!6858)

(declare-fun e!147062 () Unit!6858)

(assert (=> b!226671 (= lt!114125 e!147062)))

(declare-fun c!37564 () Bool)

(declare-fun lt!114124 () Bool)

(assert (=> b!226671 (= c!37564 lt!114124)))

(assert (=> b!226671 (= lt!114124 (arrayContainsKey!0 (_keys!6291 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!111604 () Bool)

(assert (=> start!22026 (=> (not res!111604) (not e!147059))))

(declare-fun valid!1261 (LongMapFixedSize!3156) Bool)

(assert (=> start!22026 (= res!111604 (valid!1261 thiss!1504))))

(assert (=> start!22026 e!147059))

(declare-fun e!147061 () Bool)

(assert (=> start!22026 e!147061))

(assert (=> start!22026 true))

(declare-fun b!226672 () Bool)

(declare-fun c!37565 () Bool)

(assert (=> b!226672 (= c!37565 ((_ is MissingVacant!896) lt!114131))))

(assert (=> b!226672 (= e!147063 e!147065)))

(declare-fun mapNonEmpty!10084 () Bool)

(declare-fun mapRes!10084 () Bool)

(declare-fun tp!21384 () Bool)

(assert (=> mapNonEmpty!10084 (= mapRes!10084 (and tp!21384 e!147056))))

(declare-fun mapValue!10084 () ValueCell!2628)

(declare-fun mapKey!10084 () (_ BitVec 32))

(declare-fun mapRest!10084 () (Array (_ BitVec 32) ValueCell!2628))

(assert (=> mapNonEmpty!10084 (= (arr!5283 (_values!4220 thiss!1504)) (store mapRest!10084 mapKey!10084 mapValue!10084))))

(declare-fun b!226673 () Bool)

(declare-fun e!147064 () Bool)

(assert (=> b!226673 (= e!147064 (and e!147068 mapRes!10084))))

(declare-fun condMapEmpty!10084 () Bool)

(declare-fun mapDefault!10084 () ValueCell!2628)

(assert (=> b!226673 (= condMapEmpty!10084 (= (arr!5283 (_values!4220 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2628)) mapDefault!10084)))))

(declare-fun b!226674 () Bool)

(declare-fun res!111609 () Bool)

(assert (=> b!226674 (= res!111609 (= (select (arr!5284 (_keys!6291 thiss!1504)) (index!5757 lt!114131)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226674 (=> (not res!111609) (not e!147067))))

(declare-fun b!226675 () Bool)

(declare-fun Unit!6861 () Unit!6858)

(assert (=> b!226675 (= e!147062 Unit!6861)))

(declare-fun b!226676 () Bool)

(assert (=> b!226676 (= e!147059 e!147066)))

(declare-fun res!111606 () Bool)

(assert (=> b!226676 (=> (not res!111606) (not e!147066))))

(assert (=> b!226676 (= res!111606 (or (= lt!114131 (MissingZero!896 index!297)) (= lt!114131 (MissingVacant!896 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11130 (_ BitVec 32)) SeekEntryResult!896)

(assert (=> b!226676 (= lt!114131 (seekEntryOrOpen!0 key!932 (_keys!6291 thiss!1504) (mask!10091 thiss!1504)))))

(declare-fun b!226677 () Bool)

(declare-fun Unit!6862 () Unit!6858)

(assert (=> b!226677 (= e!147062 Unit!6862)))

(declare-fun lt!114122 () Unit!6858)

(declare-fun lemmaArrayContainsKeyThenInListMap!97 (array!11130 array!11128 (_ BitVec 32) (_ BitVec 32) V!7571 V!7571 (_ BitVec 64) (_ BitVec 32) Int) Unit!6858)

(assert (=> b!226677 (= lt!114122 (lemmaArrayContainsKeyThenInListMap!97 (_keys!6291 thiss!1504) (_values!4220 thiss!1504) (mask!10091 thiss!1504) (extraKeys!3974 thiss!1504) (zeroValue!4078 thiss!1504) (minValue!4078 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4237 thiss!1504)))))

(assert (=> b!226677 false))

(declare-fun mapIsEmpty!10084 () Bool)

(assert (=> mapIsEmpty!10084 mapRes!10084))

(declare-fun b!226678 () Bool)

(declare-fun res!111603 () Bool)

(assert (=> b!226678 (=> res!111603 e!147069)))

(assert (=> b!226678 (= res!111603 lt!114124)))

(declare-fun b!226679 () Bool)

(assert (=> b!226679 (= e!147065 ((_ is Undefined!896) lt!114131))))

(declare-fun array_inv!3483 (array!11130) Bool)

(declare-fun array_inv!3484 (array!11128) Bool)

(assert (=> b!226680 (= e!147061 (and tp!21385 tp_is_empty!5943 (array_inv!3483 (_keys!6291 thiss!1504)) (array_inv!3484 (_values!4220 thiss!1504)) e!147064))))

(declare-fun b!226681 () Bool)

(declare-fun res!111605 () Bool)

(assert (=> b!226681 (=> res!111605 e!147069)))

(assert (=> b!226681 (= res!111605 (or (not (= (size!5617 (_keys!6291 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10091 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5617 (_keys!6291 thiss!1504)))))))

(declare-fun b!226682 () Bool)

(assert (=> b!226682 (= e!147058 (not call!21075))))

(declare-fun bm!21073 () Bool)

(assert (=> bm!21073 (= call!21076 (inRange!0 (ite c!37562 (index!5754 lt!114131) (index!5757 lt!114131)) (mask!10091 thiss!1504)))))

(assert (= (and start!22026 res!111604) b!226659))

(assert (= (and b!226659 res!111599) b!226676))

(assert (= (and b!226676 res!111606) b!226663))

(assert (= (and b!226663 c!37563) b!226667))

(assert (= (and b!226663 (not c!37563)) b!226669))

(assert (= (and b!226669 c!37562) b!226666))

(assert (= (and b!226669 (not c!37562)) b!226672))

(assert (= (and b!226666 res!111602) b!226668))

(assert (= (and b!226668 res!111600) b!226682))

(assert (= (and b!226672 c!37565) b!226665))

(assert (= (and b!226672 (not c!37565)) b!226679))

(assert (= (and b!226665 res!111607) b!226674))

(assert (= (and b!226674 res!111609) b!226661))

(assert (= (or b!226666 b!226665) bm!21073))

(assert (= (or b!226682 b!226661) bm!21072))

(assert (= (and b!226663 res!111601) b!226671))

(assert (= (and b!226671 c!37564) b!226677))

(assert (= (and b!226671 (not c!37564)) b!226675))

(assert (= (and b!226671 (not res!111608)) b!226681))

(assert (= (and b!226681 (not res!111605)) b!226670))

(assert (= (and b!226670 (not res!111598)) b!226678))

(assert (= (and b!226678 (not res!111603)) b!226660))

(assert (= (and b!226660 (not res!111610)) b!226658))

(assert (= (and b!226673 condMapEmpty!10084) mapIsEmpty!10084))

(assert (= (and b!226673 (not condMapEmpty!10084)) mapNonEmpty!10084))

(assert (= (and mapNonEmpty!10084 ((_ is ValueCellFull!2628) mapValue!10084)) b!226662))

(assert (= (and b!226673 ((_ is ValueCellFull!2628) mapDefault!10084)) b!226664))

(assert (= b!226680 b!226673))

(assert (= start!22026 b!226680))

(declare-fun m!248877 () Bool)

(assert (=> b!226671 m!248877))

(declare-fun m!248879 () Bool)

(assert (=> b!226671 m!248879))

(declare-fun m!248881 () Bool)

(assert (=> b!226671 m!248881))

(declare-fun m!248883 () Bool)

(assert (=> b!226671 m!248883))

(declare-fun m!248885 () Bool)

(assert (=> b!226671 m!248885))

(declare-fun m!248887 () Bool)

(assert (=> b!226671 m!248887))

(declare-fun m!248889 () Bool)

(assert (=> b!226671 m!248889))

(declare-fun m!248891 () Bool)

(assert (=> b!226671 m!248891))

(assert (=> bm!21072 m!248879))

(declare-fun m!248893 () Bool)

(assert (=> b!226663 m!248893))

(declare-fun m!248895 () Bool)

(assert (=> b!226663 m!248895))

(assert (=> b!226663 m!248895))

(declare-fun m!248897 () Bool)

(assert (=> b!226663 m!248897))

(declare-fun m!248899 () Bool)

(assert (=> b!226669 m!248899))

(declare-fun m!248901 () Bool)

(assert (=> mapNonEmpty!10084 m!248901))

(declare-fun m!248903 () Bool)

(assert (=> b!226658 m!248903))

(declare-fun m!248905 () Bool)

(assert (=> b!226660 m!248905))

(declare-fun m!248907 () Bool)

(assert (=> b!226670 m!248907))

(declare-fun m!248909 () Bool)

(assert (=> bm!21073 m!248909))

(declare-fun m!248911 () Bool)

(assert (=> b!226674 m!248911))

(declare-fun m!248913 () Bool)

(assert (=> start!22026 m!248913))

(declare-fun m!248915 () Bool)

(assert (=> b!226667 m!248915))

(declare-fun m!248917 () Bool)

(assert (=> b!226676 m!248917))

(declare-fun m!248919 () Bool)

(assert (=> b!226668 m!248919))

(declare-fun m!248921 () Bool)

(assert (=> b!226677 m!248921))

(declare-fun m!248923 () Bool)

(assert (=> b!226680 m!248923))

(declare-fun m!248925 () Bool)

(assert (=> b!226680 m!248925))

(check-sat (not bm!21072) (not b!226671) (not b!226663) tp_is_empty!5943 (not start!22026) (not bm!21073) (not b_next!6081) (not b!226677) (not mapNonEmpty!10084) (not b!226669) (not b!226680) (not b!226658) (not b!226660) (not b!226670) (not b!226667) b_and!12997 (not b!226676))
(check-sat b_and!12997 (not b_next!6081))

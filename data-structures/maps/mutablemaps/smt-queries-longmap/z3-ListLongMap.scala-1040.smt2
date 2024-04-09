; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21936 () Bool)

(assert start!21936)

(declare-fun b!223012 () Bool)

(declare-fun b_free!5991 () Bool)

(declare-fun b_next!5991 () Bool)

(assert (=> b!223012 (= b_free!5991 (not b_next!5991))))

(declare-fun tp!21115 () Bool)

(declare-fun b_and!12907 () Bool)

(assert (=> b!223012 (= tp!21115 b_and!12907)))

(declare-fun mapIsEmpty!9949 () Bool)

(declare-fun mapRes!9949 () Bool)

(assert (=> mapIsEmpty!9949 mapRes!9949))

(declare-fun res!109561 () Bool)

(declare-fun e!144894 () Bool)

(assert (=> start!21936 (=> (not res!109561) (not e!144894))))

(declare-datatypes ((V!7451 0))(
  ( (V!7452 (val!2971 Int)) )
))
(declare-datatypes ((ValueCell!2583 0))(
  ( (ValueCellFull!2583 (v!4987 V!7451)) (EmptyCell!2583) )
))
(declare-datatypes ((array!10948 0))(
  ( (array!10949 (arr!5193 (Array (_ BitVec 32) ValueCell!2583)) (size!5526 (_ BitVec 32))) )
))
(declare-datatypes ((array!10950 0))(
  ( (array!10951 (arr!5194 (Array (_ BitVec 32) (_ BitVec 64))) (size!5527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3066 0))(
  ( (LongMapFixedSize!3067 (defaultEntry!4192 Int) (mask!10016 (_ BitVec 32)) (extraKeys!3929 (_ BitVec 32)) (zeroValue!4033 V!7451) (minValue!4033 V!7451) (_size!1582 (_ BitVec 32)) (_keys!6246 array!10950) (_values!4175 array!10948) (_vacant!1582 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3066)

(declare-fun valid!1227 (LongMapFixedSize!3066) Bool)

(assert (=> start!21936 (= res!109561 (valid!1227 thiss!1504))))

(assert (=> start!21936 e!144894))

(declare-fun e!144903 () Bool)

(assert (=> start!21936 e!144903))

(assert (=> start!21936 true))

(declare-fun b!222981 () Bool)

(declare-datatypes ((Unit!6692 0))(
  ( (Unit!6693) )
))
(declare-fun e!144904 () Unit!6692)

(declare-fun Unit!6694 () Unit!6692)

(assert (=> b!222981 (= e!144904 Unit!6694)))

(declare-fun lt!112825 () Unit!6692)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!67 (array!10950 array!10948 (_ BitVec 32) (_ BitVec 32) V!7451 V!7451 (_ BitVec 64) (_ BitVec 32) Int) Unit!6692)

(assert (=> b!222981 (= lt!112825 (lemmaArrayContainsKeyThenInListMap!67 (_keys!6246 thiss!1504) (_values!4175 thiss!1504) (mask!10016 thiss!1504) (extraKeys!3929 thiss!1504) (zeroValue!4033 thiss!1504) (minValue!4033 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4192 thiss!1504)))))

(assert (=> b!222981 false))

(declare-fun b!222982 () Bool)

(declare-fun e!144905 () Bool)

(declare-fun e!144906 () Bool)

(assert (=> b!222982 (= e!144905 (and e!144906 mapRes!9949))))

(declare-fun condMapEmpty!9949 () Bool)

(declare-fun mapDefault!9949 () ValueCell!2583)

(assert (=> b!222982 (= condMapEmpty!9949 (= (arr!5193 (_values!4175 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2583)) mapDefault!9949)))))

(declare-fun b!222983 () Bool)

(declare-fun e!144908 () Bool)

(declare-fun e!144896 () Bool)

(assert (=> b!222983 (= e!144908 e!144896)))

(declare-fun res!109559 () Bool)

(declare-fun call!20805 () Bool)

(assert (=> b!222983 (= res!109559 call!20805)))

(assert (=> b!222983 (=> (not res!109559) (not e!144896))))

(declare-fun b!222984 () Bool)

(declare-fun e!144907 () Bool)

(declare-fun tp_is_empty!5853 () Bool)

(assert (=> b!222984 (= e!144907 tp_is_empty!5853)))

(declare-fun b!222985 () Bool)

(declare-fun res!109560 () Bool)

(declare-fun e!144897 () Bool)

(assert (=> b!222985 (=> res!109560 e!144897)))

(declare-datatypes ((List!3334 0))(
  ( (Nil!3331) (Cons!3330 (h!3978 (_ BitVec 64)) (t!8301 List!3334)) )
))
(declare-fun contains!1533 (List!3334 (_ BitVec 64)) Bool)

(assert (=> b!222985 (= res!109560 (contains!1533 Nil!3331 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222986 () Bool)

(declare-fun res!109544 () Bool)

(assert (=> b!222986 (=> (not res!109544) (not e!144894))))

(assert (=> b!222986 (= res!109544 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!222987 () Bool)

(declare-fun e!144910 () Bool)

(declare-fun call!20806 () Bool)

(assert (=> b!222987 (= e!144910 (not call!20806))))

(declare-fun b!222988 () Bool)

(declare-fun res!109555 () Bool)

(assert (=> b!222988 (=> res!109555 e!144897)))

(declare-fun arrayNoDuplicates!0 (array!10950 (_ BitVec 32) List!3334) Bool)

(assert (=> b!222988 (= res!109555 (not (arrayNoDuplicates!0 (_keys!6246 thiss!1504) #b00000000000000000000000000000000 Nil!3331)))))

(declare-fun b!222989 () Bool)

(declare-fun res!109545 () Bool)

(assert (=> b!222989 (=> (not res!109545) (not e!144910))))

(declare-datatypes ((SeekEntryResult!854 0))(
  ( (MissingZero!854 (index!5586 (_ BitVec 32))) (Found!854 (index!5587 (_ BitVec 32))) (Intermediate!854 (undefined!1666 Bool) (index!5588 (_ BitVec 32)) (x!23090 (_ BitVec 32))) (Undefined!854) (MissingVacant!854 (index!5589 (_ BitVec 32))) )
))
(declare-fun lt!112820 () SeekEntryResult!854)

(assert (=> b!222989 (= res!109545 (= (select (arr!5194 (_keys!6246 thiss!1504)) (index!5586 lt!112820)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20802 () Bool)

(declare-fun c!37025 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20802 (= call!20805 (inRange!0 (ite c!37025 (index!5586 lt!112820) (index!5589 lt!112820)) (mask!10016 thiss!1504)))))

(declare-fun b!222990 () Bool)

(get-info :version)

(assert (=> b!222990 (= e!144908 ((_ is Undefined!854) lt!112820))))

(declare-fun b!222991 () Bool)

(declare-fun res!109553 () Bool)

(assert (=> b!222991 (=> res!109553 e!144897)))

(declare-fun noDuplicate!75 (List!3334) Bool)

(assert (=> b!222991 (= res!109553 (not (noDuplicate!75 Nil!3331)))))

(declare-fun b!222992 () Bool)

(declare-fun e!144895 () Bool)

(assert (=> b!222992 (= e!144894 e!144895)))

(declare-fun res!109552 () Bool)

(assert (=> b!222992 (=> (not res!109552) (not e!144895))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222992 (= res!109552 (or (= lt!112820 (MissingZero!854 index!297)) (= lt!112820 (MissingVacant!854 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10950 (_ BitVec 32)) SeekEntryResult!854)

(assert (=> b!222992 (= lt!112820 (seekEntryOrOpen!0 key!932 (_keys!6246 thiss!1504) (mask!10016 thiss!1504)))))

(declare-fun b!222993 () Bool)

(assert (=> b!222993 (= e!144897 true)))

(declare-fun b!222994 () Bool)

(declare-fun res!109557 () Bool)

(assert (=> b!222994 (=> res!109557 e!144897)))

(declare-fun lt!112824 () Bool)

(assert (=> b!222994 (= res!109557 lt!112824)))

(declare-fun b!222995 () Bool)

(assert (=> b!222995 (= e!144896 (not call!20806))))

(declare-fun b!222996 () Bool)

(declare-fun e!144899 () Bool)

(assert (=> b!222996 (= e!144899 false)))

(declare-fun lt!112826 () Bool)

(assert (=> b!222996 (= lt!112826 e!144897)))

(declare-fun res!109542 () Bool)

(assert (=> b!222996 (=> res!109542 e!144897)))

(assert (=> b!222996 (= res!109542 (or (bvsge (size!5527 (_keys!6246 thiss!1504)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!5527 (_keys!6246 thiss!1504)))))))

(declare-fun lt!112823 () Unit!6692)

(assert (=> b!222996 (= lt!112823 e!144904)))

(declare-fun c!37024 () Bool)

(assert (=> b!222996 (= c!37024 lt!112824)))

(declare-fun arrayContainsKey!0 (array!10950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!222996 (= lt!112824 (arrayContainsKey!0 (_keys!6246 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222997 () Bool)

(declare-fun res!109541 () Bool)

(assert (=> b!222997 (=> res!109541 e!144897)))

(declare-fun e!144900 () Bool)

(assert (=> b!222997 (= res!109541 e!144900)))

(declare-fun res!109554 () Bool)

(assert (=> b!222997 (=> (not res!109554) (not e!144900))))

(declare-fun e!144901 () Bool)

(assert (=> b!222997 (= res!109554 e!144901)))

(declare-fun res!109550 () Bool)

(assert (=> b!222997 (=> res!109550 e!144901)))

(assert (=> b!222997 (= res!109550 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222998 () Bool)

(declare-fun e!144902 () Unit!6692)

(declare-fun lt!112822 () Unit!6692)

(assert (=> b!222998 (= e!144902 lt!112822)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!238 (array!10950 array!10948 (_ BitVec 32) (_ BitVec 32) V!7451 V!7451 (_ BitVec 64) Int) Unit!6692)

(assert (=> b!222998 (= lt!112822 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!238 (_keys!6246 thiss!1504) (_values!4175 thiss!1504) (mask!10016 thiss!1504) (extraKeys!3929 thiss!1504) (zeroValue!4033 thiss!1504) (minValue!4033 thiss!1504) key!932 (defaultEntry!4192 thiss!1504)))))

(assert (=> b!222998 (= c!37025 ((_ is MissingZero!854) lt!112820))))

(declare-fun e!144909 () Bool)

(assert (=> b!222998 e!144909))

(declare-fun b!222999 () Bool)

(declare-fun res!109558 () Bool)

(assert (=> b!222999 (=> res!109558 e!144897)))

(assert (=> b!222999 (= res!109558 (not (contains!1533 Nil!3331 key!932)))))

(declare-fun b!223000 () Bool)

(assert (=> b!223000 (= e!144906 tp_is_empty!5853)))

(declare-fun b!223001 () Bool)

(assert (=> b!223001 (= e!144901 (not (contains!1533 Nil!3331 key!932)))))

(declare-fun b!223002 () Bool)

(declare-fun res!109549 () Bool)

(assert (=> b!223002 (=> (not res!109549) (not e!144910))))

(assert (=> b!223002 (= res!109549 call!20805)))

(assert (=> b!223002 (= e!144909 e!144910)))

(declare-fun b!223003 () Bool)

(declare-fun Unit!6695 () Unit!6692)

(assert (=> b!223003 (= e!144904 Unit!6695)))

(declare-fun b!223004 () Bool)

(declare-fun e!144898 () Bool)

(assert (=> b!223004 (= e!144900 e!144898)))

(declare-fun res!109547 () Bool)

(assert (=> b!223004 (=> res!109547 e!144898)))

(assert (=> b!223004 (= res!109547 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!223005 () Bool)

(declare-fun c!37023 () Bool)

(assert (=> b!223005 (= c!37023 ((_ is MissingVacant!854) lt!112820))))

(assert (=> b!223005 (= e!144909 e!144908)))

(declare-fun b!223006 () Bool)

(declare-fun res!109556 () Bool)

(assert (=> b!223006 (= res!109556 (= (select (arr!5194 (_keys!6246 thiss!1504)) (index!5589 lt!112820)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!223006 (=> (not res!109556) (not e!144896))))

(declare-fun b!223007 () Bool)

(declare-fun Unit!6696 () Unit!6692)

(assert (=> b!223007 (= e!144902 Unit!6696)))

(declare-fun lt!112821 () Unit!6692)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!230 (array!10950 array!10948 (_ BitVec 32) (_ BitVec 32) V!7451 V!7451 (_ BitVec 64) Int) Unit!6692)

(assert (=> b!223007 (= lt!112821 (lemmaInListMapThenSeekEntryOrOpenFindsIt!230 (_keys!6246 thiss!1504) (_values!4175 thiss!1504) (mask!10016 thiss!1504) (extraKeys!3929 thiss!1504) (zeroValue!4033 thiss!1504) (minValue!4033 thiss!1504) key!932 (defaultEntry!4192 thiss!1504)))))

(assert (=> b!223007 false))

(declare-fun b!223008 () Bool)

(assert (=> b!223008 (= e!144895 e!144899)))

(declare-fun res!109546 () Bool)

(assert (=> b!223008 (=> (not res!109546) (not e!144899))))

(assert (=> b!223008 (= res!109546 (inRange!0 index!297 (mask!10016 thiss!1504)))))

(declare-fun lt!112827 () Unit!6692)

(assert (=> b!223008 (= lt!112827 e!144902)))

(declare-fun c!37022 () Bool)

(declare-datatypes ((tuple2!4404 0))(
  ( (tuple2!4405 (_1!2212 (_ BitVec 64)) (_2!2212 V!7451)) )
))
(declare-datatypes ((List!3335 0))(
  ( (Nil!3332) (Cons!3331 (h!3979 tuple2!4404) (t!8302 List!3335)) )
))
(declare-datatypes ((ListLongMap!3331 0))(
  ( (ListLongMap!3332 (toList!1681 List!3335)) )
))
(declare-fun contains!1534 (ListLongMap!3331 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1204 (array!10950 array!10948 (_ BitVec 32) (_ BitVec 32) V!7451 V!7451 (_ BitVec 32) Int) ListLongMap!3331)

(assert (=> b!223008 (= c!37022 (contains!1534 (getCurrentListMap!1204 (_keys!6246 thiss!1504) (_values!4175 thiss!1504) (mask!10016 thiss!1504) (extraKeys!3929 thiss!1504) (zeroValue!4033 thiss!1504) (minValue!4033 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4192 thiss!1504)) key!932))))

(declare-fun b!223009 () Bool)

(declare-fun res!109543 () Bool)

(assert (=> b!223009 (=> res!109543 e!144897)))

(assert (=> b!223009 (= res!109543 (contains!1533 Nil!3331 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223010 () Bool)

(declare-fun res!109551 () Bool)

(assert (=> b!223010 (=> res!109551 e!144897)))

(assert (=> b!223010 (= res!109551 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5527 (_keys!6246 thiss!1504)))))))

(declare-fun b!223011 () Bool)

(declare-fun res!109548 () Bool)

(assert (=> b!223011 (=> res!109548 e!144897)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223011 (= res!109548 (not (validKeyInArray!0 key!932)))))

(declare-fun bm!20803 () Bool)

(assert (=> bm!20803 (= call!20806 (arrayContainsKey!0 (_keys!6246 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9949 () Bool)

(declare-fun tp!21114 () Bool)

(assert (=> mapNonEmpty!9949 (= mapRes!9949 (and tp!21114 e!144907))))

(declare-fun mapKey!9949 () (_ BitVec 32))

(declare-fun mapRest!9949 () (Array (_ BitVec 32) ValueCell!2583))

(declare-fun mapValue!9949 () ValueCell!2583)

(assert (=> mapNonEmpty!9949 (= (arr!5193 (_values!4175 thiss!1504)) (store mapRest!9949 mapKey!9949 mapValue!9949))))

(declare-fun array_inv!3429 (array!10950) Bool)

(declare-fun array_inv!3430 (array!10948) Bool)

(assert (=> b!223012 (= e!144903 (and tp!21115 tp_is_empty!5853 (array_inv!3429 (_keys!6246 thiss!1504)) (array_inv!3430 (_values!4175 thiss!1504)) e!144905))))

(declare-fun b!223013 () Bool)

(assert (=> b!223013 (= e!144898 (contains!1533 Nil!3331 key!932))))

(assert (= (and start!21936 res!109561) b!222986))

(assert (= (and b!222986 res!109544) b!222992))

(assert (= (and b!222992 res!109552) b!223008))

(assert (= (and b!223008 c!37022) b!223007))

(assert (= (and b!223008 (not c!37022)) b!222998))

(assert (= (and b!222998 c!37025) b!223002))

(assert (= (and b!222998 (not c!37025)) b!223005))

(assert (= (and b!223002 res!109549) b!222989))

(assert (= (and b!222989 res!109545) b!222987))

(assert (= (and b!223005 c!37023) b!222983))

(assert (= (and b!223005 (not c!37023)) b!222990))

(assert (= (and b!222983 res!109559) b!223006))

(assert (= (and b!223006 res!109556) b!222995))

(assert (= (or b!223002 b!222983) bm!20802))

(assert (= (or b!222987 b!222995) bm!20803))

(assert (= (and b!223008 res!109546) b!222996))

(assert (= (and b!222996 c!37024) b!222981))

(assert (= (and b!222996 (not c!37024)) b!223003))

(assert (= (and b!222996 (not res!109542)) b!222991))

(assert (= (and b!222991 (not res!109553)) b!222985))

(assert (= (and b!222985 (not res!109560)) b!223009))

(assert (= (and b!223009 (not res!109543)) b!222997))

(assert (= (and b!222997 (not res!109550)) b!223001))

(assert (= (and b!222997 res!109554) b!223004))

(assert (= (and b!223004 (not res!109547)) b!223013))

(assert (= (and b!222997 (not res!109541)) b!222988))

(assert (= (and b!222988 (not res!109555)) b!223010))

(assert (= (and b!223010 (not res!109551)) b!223011))

(assert (= (and b!223011 (not res!109548)) b!222994))

(assert (= (and b!222994 (not res!109557)) b!222999))

(assert (= (and b!222999 (not res!109558)) b!222993))

(assert (= (and b!222982 condMapEmpty!9949) mapIsEmpty!9949))

(assert (= (and b!222982 (not condMapEmpty!9949)) mapNonEmpty!9949))

(assert (= (and mapNonEmpty!9949 ((_ is ValueCellFull!2583) mapValue!9949)) b!222984))

(assert (= (and b!222982 ((_ is ValueCellFull!2583) mapDefault!9949)) b!223000))

(assert (= b!223012 b!222982))

(assert (= start!21936 b!223012))

(declare-fun m!246805 () Bool)

(assert (=> b!222996 m!246805))

(declare-fun m!246807 () Bool)

(assert (=> b!223008 m!246807))

(declare-fun m!246809 () Bool)

(assert (=> b!223008 m!246809))

(assert (=> b!223008 m!246809))

(declare-fun m!246811 () Bool)

(assert (=> b!223008 m!246811))

(declare-fun m!246813 () Bool)

(assert (=> b!222998 m!246813))

(declare-fun m!246815 () Bool)

(assert (=> b!223001 m!246815))

(assert (=> b!222999 m!246815))

(declare-fun m!246817 () Bool)

(assert (=> b!223009 m!246817))

(declare-fun m!246819 () Bool)

(assert (=> b!222985 m!246819))

(declare-fun m!246821 () Bool)

(assert (=> b!223006 m!246821))

(assert (=> b!223013 m!246815))

(declare-fun m!246823 () Bool)

(assert (=> start!21936 m!246823))

(declare-fun m!246825 () Bool)

(assert (=> b!222992 m!246825))

(declare-fun m!246827 () Bool)

(assert (=> b!223012 m!246827))

(declare-fun m!246829 () Bool)

(assert (=> b!223012 m!246829))

(declare-fun m!246831 () Bool)

(assert (=> b!222981 m!246831))

(assert (=> bm!20803 m!246805))

(declare-fun m!246833 () Bool)

(assert (=> b!222991 m!246833))

(declare-fun m!246835 () Bool)

(assert (=> b!222989 m!246835))

(declare-fun m!246837 () Bool)

(assert (=> mapNonEmpty!9949 m!246837))

(declare-fun m!246839 () Bool)

(assert (=> bm!20802 m!246839))

(declare-fun m!246841 () Bool)

(assert (=> b!223007 m!246841))

(declare-fun m!246843 () Bool)

(assert (=> b!222988 m!246843))

(declare-fun m!246845 () Bool)

(assert (=> b!223011 m!246845))

(check-sat (not b!223013) tp_is_empty!5853 (not b!223012) (not mapNonEmpty!9949) (not start!21936) (not b!222996) (not b!223007) (not b!223008) (not b!222998) (not b!222985) (not b!222988) (not b_next!5991) (not b!223009) (not b!222991) b_and!12907 (not b!223001) (not b!222981) (not b!222999) (not bm!20803) (not b!222992) (not bm!20802) (not b!223011))
(check-sat b_and!12907 (not b_next!5991))

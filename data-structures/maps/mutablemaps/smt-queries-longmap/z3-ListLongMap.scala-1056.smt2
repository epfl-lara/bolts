; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22032 () Bool)

(assert start!22032)

(declare-fun b!226884 () Bool)

(declare-fun b_free!6087 () Bool)

(declare-fun b_next!6087 () Bool)

(assert (=> b!226884 (= b_free!6087 (not b_next!6087))))

(declare-fun tp!21402 () Bool)

(declare-fun b_and!13003 () Bool)

(assert (=> b!226884 (= tp!21402 b_and!13003)))

(declare-fun b!226873 () Bool)

(declare-fun c!37601 () Bool)

(declare-datatypes ((SeekEntryResult!899 0))(
  ( (MissingZero!899 (index!5766 (_ BitVec 32))) (Found!899 (index!5767 (_ BitVec 32))) (Intermediate!899 (undefined!1711 Bool) (index!5768 (_ BitVec 32)) (x!23263 (_ BitVec 32))) (Undefined!899) (MissingVacant!899 (index!5769 (_ BitVec 32))) )
))
(declare-fun lt!114223 () SeekEntryResult!899)

(get-info :version)

(assert (=> b!226873 (= c!37601 ((_ is MissingVacant!899) lt!114223))))

(declare-fun e!147200 () Bool)

(declare-fun e!147202 () Bool)

(assert (=> b!226873 (= e!147200 e!147202)))

(declare-fun b!226874 () Bool)

(declare-fun res!111711 () Bool)

(declare-fun e!147192 () Bool)

(assert (=> b!226874 (=> (not res!111711) (not e!147192))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!226874 (= res!111711 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10093 () Bool)

(declare-fun mapRes!10093 () Bool)

(declare-fun tp!21403 () Bool)

(declare-fun e!147198 () Bool)

(assert (=> mapNonEmpty!10093 (= mapRes!10093 (and tp!21403 e!147198))))

(declare-datatypes ((V!7579 0))(
  ( (V!7580 (val!3019 Int)) )
))
(declare-datatypes ((ValueCell!2631 0))(
  ( (ValueCellFull!2631 (v!5035 V!7579)) (EmptyCell!2631) )
))
(declare-fun mapValue!10093 () ValueCell!2631)

(declare-datatypes ((array!11140 0))(
  ( (array!11141 (arr!5289 (Array (_ BitVec 32) ValueCell!2631)) (size!5622 (_ BitVec 32))) )
))
(declare-datatypes ((array!11142 0))(
  ( (array!11143 (arr!5290 (Array (_ BitVec 32) (_ BitVec 64))) (size!5623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3162 0))(
  ( (LongMapFixedSize!3163 (defaultEntry!4240 Int) (mask!10096 (_ BitVec 32)) (extraKeys!3977 (_ BitVec 32)) (zeroValue!4081 V!7579) (minValue!4081 V!7579) (_size!1630 (_ BitVec 32)) (_keys!6294 array!11142) (_values!4223 array!11140) (_vacant!1630 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3162)

(declare-fun mapKey!10093 () (_ BitVec 32))

(declare-fun mapRest!10093 () (Array (_ BitVec 32) ValueCell!2631))

(assert (=> mapNonEmpty!10093 (= (arr!5289 (_values!4223 thiss!1504)) (store mapRest!10093 mapKey!10093 mapValue!10093))))

(declare-fun b!226875 () Bool)

(declare-fun e!147205 () Bool)

(declare-fun e!147204 () Bool)

(assert (=> b!226875 (= e!147205 (not e!147204))))

(declare-fun res!111715 () Bool)

(assert (=> b!226875 (=> res!111715 e!147204)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226875 (= res!111715 (not (validMask!0 (mask!10096 thiss!1504))))))

(declare-fun lt!114221 () array!11142)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11142 (_ BitVec 32)) Bool)

(assert (=> b!226875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114221 (mask!10096 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!6870 0))(
  ( (Unit!6871) )
))
(declare-fun lt!114228 () Unit!6870)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11142 (_ BitVec 32) (_ BitVec 32)) Unit!6870)

(assert (=> b!226875 (= lt!114228 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6294 thiss!1504) index!297 (mask!10096 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11142 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226875 (= (arrayCountValidKeys!0 lt!114221 #b00000000000000000000000000000000 (size!5623 (_keys!6294 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6294 thiss!1504) #b00000000000000000000000000000000 (size!5623 (_keys!6294 thiss!1504)))))))

(declare-fun lt!114230 () Unit!6870)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11142 (_ BitVec 32) (_ BitVec 64)) Unit!6870)

(assert (=> b!226875 (= lt!114230 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6294 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3402 0))(
  ( (Nil!3399) (Cons!3398 (h!4046 (_ BitVec 64)) (t!8369 List!3402)) )
))
(declare-fun arrayNoDuplicates!0 (array!11142 (_ BitVec 32) List!3402) Bool)

(assert (=> b!226875 (arrayNoDuplicates!0 lt!114221 #b00000000000000000000000000000000 Nil!3399)))

(assert (=> b!226875 (= lt!114221 (array!11143 (store (arr!5290 (_keys!6294 thiss!1504)) index!297 key!932) (size!5623 (_keys!6294 thiss!1504))))))

(declare-fun lt!114231 () Unit!6870)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11142 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3402) Unit!6870)

(assert (=> b!226875 (= lt!114231 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6294 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3399))))

(declare-fun lt!114227 () Unit!6870)

(declare-fun e!147193 () Unit!6870)

(assert (=> b!226875 (= lt!114227 e!147193)))

(declare-fun c!37598 () Bool)

(declare-fun arrayContainsKey!0 (array!11142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!226875 (= c!37598 (arrayContainsKey!0 (_keys!6294 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226876 () Bool)

(assert (=> b!226876 (= e!147202 ((_ is Undefined!899) lt!114223))))

(declare-fun c!37600 () Bool)

(declare-fun call!21094 () Bool)

(declare-fun bm!21090 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21090 (= call!21094 (inRange!0 (ite c!37600 (index!5766 lt!114223) (index!5769 lt!114223)) (mask!10096 thiss!1504)))))

(declare-fun b!226877 () Bool)

(declare-fun e!147191 () Bool)

(declare-fun call!21093 () Bool)

(assert (=> b!226877 (= e!147191 (not call!21093))))

(declare-fun b!226878 () Bool)

(declare-fun Unit!6872 () Unit!6870)

(assert (=> b!226878 (= e!147193 Unit!6872)))

(declare-fun lt!114229 () Unit!6870)

(declare-fun lemmaArrayContainsKeyThenInListMap!99 (array!11142 array!11140 (_ BitVec 32) (_ BitVec 32) V!7579 V!7579 (_ BitVec 64) (_ BitVec 32) Int) Unit!6870)

(assert (=> b!226878 (= lt!114229 (lemmaArrayContainsKeyThenInListMap!99 (_keys!6294 thiss!1504) (_values!4223 thiss!1504) (mask!10096 thiss!1504) (extraKeys!3977 thiss!1504) (zeroValue!4081 thiss!1504) (minValue!4081 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4240 thiss!1504)))))

(assert (=> b!226878 false))

(declare-fun b!226879 () Bool)

(declare-fun e!147197 () Bool)

(assert (=> b!226879 (= e!147197 e!147205)))

(declare-fun res!111710 () Bool)

(assert (=> b!226879 (=> (not res!111710) (not e!147205))))

(assert (=> b!226879 (= res!111710 (inRange!0 index!297 (mask!10096 thiss!1504)))))

(declare-fun lt!114222 () Unit!6870)

(declare-fun e!147201 () Unit!6870)

(assert (=> b!226879 (= lt!114222 e!147201)))

(declare-fun c!37599 () Bool)

(declare-datatypes ((tuple2!4460 0))(
  ( (tuple2!4461 (_1!2240 (_ BitVec 64)) (_2!2240 V!7579)) )
))
(declare-datatypes ((List!3403 0))(
  ( (Nil!3400) (Cons!3399 (h!4047 tuple2!4460) (t!8370 List!3403)) )
))
(declare-datatypes ((ListLongMap!3387 0))(
  ( (ListLongMap!3388 (toList!1709 List!3403)) )
))
(declare-fun contains!1577 (ListLongMap!3387 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1232 (array!11142 array!11140 (_ BitVec 32) (_ BitVec 32) V!7579 V!7579 (_ BitVec 32) Int) ListLongMap!3387)

(assert (=> b!226879 (= c!37599 (contains!1577 (getCurrentListMap!1232 (_keys!6294 thiss!1504) (_values!4223 thiss!1504) (mask!10096 thiss!1504) (extraKeys!3977 thiss!1504) (zeroValue!4081 thiss!1504) (minValue!4081 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4240 thiss!1504)) key!932))))

(declare-fun res!111712 () Bool)

(assert (=> start!22032 (=> (not res!111712) (not e!147192))))

(declare-fun valid!1263 (LongMapFixedSize!3162) Bool)

(assert (=> start!22032 (= res!111712 (valid!1263 thiss!1504))))

(assert (=> start!22032 e!147192))

(declare-fun e!147196 () Bool)

(assert (=> start!22032 e!147196))

(assert (=> start!22032 true))

(declare-fun b!226880 () Bool)

(assert (=> b!226880 (= e!147192 e!147197)))

(declare-fun res!111713 () Bool)

(assert (=> b!226880 (=> (not res!111713) (not e!147197))))

(assert (=> b!226880 (= res!111713 (or (= lt!114223 (MissingZero!899 index!297)) (= lt!114223 (MissingVacant!899 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11142 (_ BitVec 32)) SeekEntryResult!899)

(assert (=> b!226880 (= lt!114223 (seekEntryOrOpen!0 key!932 (_keys!6294 thiss!1504) (mask!10096 thiss!1504)))))

(declare-fun b!226881 () Bool)

(assert (=> b!226881 (= e!147204 true)))

(declare-fun lt!114226 () Bool)

(assert (=> b!226881 (= lt!114226 (arrayNoDuplicates!0 (_keys!6294 thiss!1504) #b00000000000000000000000000000000 Nil!3399))))

(declare-fun b!226882 () Bool)

(declare-fun res!111714 () Bool)

(assert (=> b!226882 (=> (not res!111714) (not e!147191))))

(assert (=> b!226882 (= res!111714 (= (select (arr!5290 (_keys!6294 thiss!1504)) (index!5766 lt!114223)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226883 () Bool)

(declare-fun res!111708 () Bool)

(assert (=> b!226883 (=> res!111708 e!147204)))

(assert (=> b!226883 (= res!111708 (or (not (= (size!5622 (_values!4223 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10096 thiss!1504)))) (not (= (size!5623 (_keys!6294 thiss!1504)) (size!5622 (_values!4223 thiss!1504)))) (bvslt (mask!10096 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3977 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3977 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!5949 () Bool)

(declare-fun e!147199 () Bool)

(declare-fun array_inv!3489 (array!11142) Bool)

(declare-fun array_inv!3490 (array!11140) Bool)

(assert (=> b!226884 (= e!147196 (and tp!21402 tp_is_empty!5949 (array_inv!3489 (_keys!6294 thiss!1504)) (array_inv!3490 (_values!4223 thiss!1504)) e!147199))))

(declare-fun b!226885 () Bool)

(declare-fun e!147195 () Bool)

(assert (=> b!226885 (= e!147195 (not call!21093))))

(declare-fun b!226886 () Bool)

(declare-fun lt!114225 () Unit!6870)

(assert (=> b!226886 (= e!147201 lt!114225)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!272 (array!11142 array!11140 (_ BitVec 32) (_ BitVec 32) V!7579 V!7579 (_ BitVec 64) Int) Unit!6870)

(assert (=> b!226886 (= lt!114225 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!272 (_keys!6294 thiss!1504) (_values!4223 thiss!1504) (mask!10096 thiss!1504) (extraKeys!3977 thiss!1504) (zeroValue!4081 thiss!1504) (minValue!4081 thiss!1504) key!932 (defaultEntry!4240 thiss!1504)))))

(assert (=> b!226886 (= c!37600 ((_ is MissingZero!899) lt!114223))))

(assert (=> b!226886 e!147200))

(declare-fun b!226887 () Bool)

(declare-fun e!147194 () Bool)

(assert (=> b!226887 (= e!147194 tp_is_empty!5949)))

(declare-fun b!226888 () Bool)

(declare-fun res!111706 () Bool)

(assert (=> b!226888 (=> (not res!111706) (not e!147191))))

(assert (=> b!226888 (= res!111706 call!21094)))

(assert (=> b!226888 (= e!147200 e!147191)))

(declare-fun b!226889 () Bool)

(declare-fun Unit!6873 () Unit!6870)

(assert (=> b!226889 (= e!147193 Unit!6873)))

(declare-fun bm!21091 () Bool)

(assert (=> bm!21091 (= call!21093 (arrayContainsKey!0 (_keys!6294 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226890 () Bool)

(assert (=> b!226890 (= e!147199 (and e!147194 mapRes!10093))))

(declare-fun condMapEmpty!10093 () Bool)

(declare-fun mapDefault!10093 () ValueCell!2631)

(assert (=> b!226890 (= condMapEmpty!10093 (= (arr!5289 (_values!4223 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2631)) mapDefault!10093)))))

(declare-fun b!226891 () Bool)

(declare-fun res!111705 () Bool)

(assert (=> b!226891 (= res!111705 (= (select (arr!5290 (_keys!6294 thiss!1504)) (index!5769 lt!114223)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226891 (=> (not res!111705) (not e!147195))))

(declare-fun b!226892 () Bool)

(assert (=> b!226892 (= e!147198 tp_is_empty!5949)))

(declare-fun b!226893 () Bool)

(declare-fun res!111709 () Bool)

(assert (=> b!226893 (=> res!111709 e!147204)))

(assert (=> b!226893 (= res!111709 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6294 thiss!1504) (mask!10096 thiss!1504))))))

(declare-fun mapIsEmpty!10093 () Bool)

(assert (=> mapIsEmpty!10093 mapRes!10093))

(declare-fun b!226894 () Bool)

(assert (=> b!226894 (= e!147202 e!147195)))

(declare-fun res!111707 () Bool)

(assert (=> b!226894 (= res!111707 call!21094)))

(assert (=> b!226894 (=> (not res!111707) (not e!147195))))

(declare-fun b!226895 () Bool)

(declare-fun Unit!6874 () Unit!6870)

(assert (=> b!226895 (= e!147201 Unit!6874)))

(declare-fun lt!114224 () Unit!6870)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!261 (array!11142 array!11140 (_ BitVec 32) (_ BitVec 32) V!7579 V!7579 (_ BitVec 64) Int) Unit!6870)

(assert (=> b!226895 (= lt!114224 (lemmaInListMapThenSeekEntryOrOpenFindsIt!261 (_keys!6294 thiss!1504) (_values!4223 thiss!1504) (mask!10096 thiss!1504) (extraKeys!3977 thiss!1504) (zeroValue!4081 thiss!1504) (minValue!4081 thiss!1504) key!932 (defaultEntry!4240 thiss!1504)))))

(assert (=> b!226895 false))

(assert (= (and start!22032 res!111712) b!226874))

(assert (= (and b!226874 res!111711) b!226880))

(assert (= (and b!226880 res!111713) b!226879))

(assert (= (and b!226879 c!37599) b!226895))

(assert (= (and b!226879 (not c!37599)) b!226886))

(assert (= (and b!226886 c!37600) b!226888))

(assert (= (and b!226886 (not c!37600)) b!226873))

(assert (= (and b!226888 res!111706) b!226882))

(assert (= (and b!226882 res!111714) b!226877))

(assert (= (and b!226873 c!37601) b!226894))

(assert (= (and b!226873 (not c!37601)) b!226876))

(assert (= (and b!226894 res!111707) b!226891))

(assert (= (and b!226891 res!111705) b!226885))

(assert (= (or b!226888 b!226894) bm!21090))

(assert (= (or b!226877 b!226885) bm!21091))

(assert (= (and b!226879 res!111710) b!226875))

(assert (= (and b!226875 c!37598) b!226878))

(assert (= (and b!226875 (not c!37598)) b!226889))

(assert (= (and b!226875 (not res!111715)) b!226883))

(assert (= (and b!226883 (not res!111708)) b!226893))

(assert (= (and b!226893 (not res!111709)) b!226881))

(assert (= (and b!226890 condMapEmpty!10093) mapIsEmpty!10093))

(assert (= (and b!226890 (not condMapEmpty!10093)) mapNonEmpty!10093))

(assert (= (and mapNonEmpty!10093 ((_ is ValueCellFull!2631) mapValue!10093)) b!226892))

(assert (= (and b!226890 ((_ is ValueCellFull!2631) mapDefault!10093)) b!226887))

(assert (= b!226884 b!226890))

(assert (= start!22032 b!226884))

(declare-fun m!249029 () Bool)

(assert (=> b!226880 m!249029))

(declare-fun m!249031 () Bool)

(assert (=> b!226884 m!249031))

(declare-fun m!249033 () Bool)

(assert (=> b!226884 m!249033))

(declare-fun m!249035 () Bool)

(assert (=> b!226895 m!249035))

(declare-fun m!249037 () Bool)

(assert (=> b!226878 m!249037))

(declare-fun m!249039 () Bool)

(assert (=> b!226881 m!249039))

(declare-fun m!249041 () Bool)

(assert (=> mapNonEmpty!10093 m!249041))

(declare-fun m!249043 () Bool)

(assert (=> b!226879 m!249043))

(declare-fun m!249045 () Bool)

(assert (=> b!226879 m!249045))

(assert (=> b!226879 m!249045))

(declare-fun m!249047 () Bool)

(assert (=> b!226879 m!249047))

(declare-fun m!249049 () Bool)

(assert (=> start!22032 m!249049))

(declare-fun m!249051 () Bool)

(assert (=> b!226882 m!249051))

(declare-fun m!249053 () Bool)

(assert (=> bm!21091 m!249053))

(declare-fun m!249055 () Bool)

(assert (=> b!226891 m!249055))

(declare-fun m!249057 () Bool)

(assert (=> b!226886 m!249057))

(declare-fun m!249059 () Bool)

(assert (=> b!226893 m!249059))

(declare-fun m!249061 () Bool)

(assert (=> bm!21090 m!249061))

(declare-fun m!249063 () Bool)

(assert (=> b!226875 m!249063))

(assert (=> b!226875 m!249053))

(declare-fun m!249065 () Bool)

(assert (=> b!226875 m!249065))

(declare-fun m!249067 () Bool)

(assert (=> b!226875 m!249067))

(declare-fun m!249069 () Bool)

(assert (=> b!226875 m!249069))

(declare-fun m!249071 () Bool)

(assert (=> b!226875 m!249071))

(declare-fun m!249073 () Bool)

(assert (=> b!226875 m!249073))

(declare-fun m!249075 () Bool)

(assert (=> b!226875 m!249075))

(declare-fun m!249077 () Bool)

(assert (=> b!226875 m!249077))

(declare-fun m!249079 () Bool)

(assert (=> b!226875 m!249079))

(check-sat (not b!226884) (not b!226879) (not start!22032) (not b_next!6087) (not mapNonEmpty!10093) (not b!226875) b_and!13003 (not b!226878) (not b!226895) (not b!226880) tp_is_empty!5949 (not b!226886) (not b!226893) (not bm!21090) (not bm!21091) (not b!226881))
(check-sat b_and!13003 (not b_next!6087))

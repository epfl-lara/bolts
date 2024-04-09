; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22926 () Bool)

(assert start!22926)

(declare-fun b!238840 () Bool)

(declare-fun b_free!6417 () Bool)

(declare-fun b_next!6417 () Bool)

(assert (=> b!238840 (= b_free!6417 (not b_next!6417))))

(declare-fun tp!22454 () Bool)

(declare-fun b_and!13401 () Bool)

(assert (=> b!238840 (= tp!22454 b_and!13401)))

(declare-fun b!238836 () Bool)

(declare-fun e!155081 () Bool)

(declare-datatypes ((V!8019 0))(
  ( (V!8020 (val!3184 Int)) )
))
(declare-datatypes ((ValueCell!2796 0))(
  ( (ValueCellFull!2796 (v!5218 V!8019)) (EmptyCell!2796) )
))
(declare-datatypes ((array!11836 0))(
  ( (array!11837 (arr!5619 (Array (_ BitVec 32) ValueCell!2796)) (size!5960 (_ BitVec 32))) )
))
(declare-datatypes ((array!11838 0))(
  ( (array!11839 (arr!5620 (Array (_ BitVec 32) (_ BitVec 64))) (size!5961 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3492 0))(
  ( (LongMapFixedSize!3493 (defaultEntry!4431 Int) (mask!10471 (_ BitVec 32)) (extraKeys!4168 (_ BitVec 32)) (zeroValue!4272 V!8019) (minValue!4272 V!8019) (_size!1795 (_ BitVec 32)) (_keys!6533 array!11838) (_values!4414 array!11836) (_vacant!1795 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3492)

(assert (=> b!238836 (= e!155081 (not (= (size!5960 (_values!4414 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10471 thiss!1504)))))))

(declare-fun c!39809 () Bool)

(declare-fun call!22209 () Bool)

(declare-fun bm!22206 () Bool)

(declare-datatypes ((SeekEntryResult!1034 0))(
  ( (MissingZero!1034 (index!6306 (_ BitVec 32))) (Found!1034 (index!6307 (_ BitVec 32))) (Intermediate!1034 (undefined!1846 Bool) (index!6308 (_ BitVec 32)) (x!24082 (_ BitVec 32))) (Undefined!1034) (MissingVacant!1034 (index!6309 (_ BitVec 32))) )
))
(declare-fun lt!120702 () SeekEntryResult!1034)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22206 (= call!22209 (inRange!0 (ite c!39809 (index!6306 lt!120702) (index!6309 lt!120702)) (mask!10471 thiss!1504)))))

(declare-fun mapNonEmpty!10650 () Bool)

(declare-fun mapRes!10650 () Bool)

(declare-fun tp!22455 () Bool)

(declare-fun e!155088 () Bool)

(assert (=> mapNonEmpty!10650 (= mapRes!10650 (and tp!22455 e!155088))))

(declare-fun mapKey!10650 () (_ BitVec 32))

(declare-fun mapValue!10650 () ValueCell!2796)

(declare-fun mapRest!10650 () (Array (_ BitVec 32) ValueCell!2796))

(assert (=> mapNonEmpty!10650 (= (arr!5619 (_values!4414 thiss!1504)) (store mapRest!10650 mapKey!10650 mapValue!10650))))

(declare-fun b!238837 () Bool)

(declare-fun res!117065 () Bool)

(declare-fun e!155078 () Bool)

(assert (=> b!238837 (=> (not res!117065) (not e!155078))))

(assert (=> b!238837 (= res!117065 (= (select (arr!5620 (_keys!6533 thiss!1504)) (index!6306 lt!120702)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!238838 () Bool)

(declare-fun e!155089 () Bool)

(declare-fun e!155086 () Bool)

(assert (=> b!238838 (= e!155089 e!155086)))

(declare-fun res!117070 () Bool)

(assert (=> b!238838 (= res!117070 call!22209)))

(assert (=> b!238838 (=> (not res!117070) (not e!155086))))

(declare-fun b!238839 () Bool)

(declare-fun e!155087 () Bool)

(declare-fun e!155084 () Bool)

(assert (=> b!238839 (= e!155087 (and e!155084 mapRes!10650))))

(declare-fun condMapEmpty!10650 () Bool)

(declare-fun mapDefault!10650 () ValueCell!2796)

(assert (=> b!238839 (= condMapEmpty!10650 (= (arr!5619 (_values!4414 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2796)) mapDefault!10650)))))

(declare-fun b!238841 () Bool)

(declare-fun res!117071 () Bool)

(assert (=> b!238841 (=> (not res!117071) (not e!155081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238841 (= res!117071 (validMask!0 (mask!10471 thiss!1504)))))

(declare-fun b!238842 () Bool)

(declare-fun e!155079 () Bool)

(assert (=> b!238842 (= e!155079 e!155081)))

(declare-fun res!117068 () Bool)

(assert (=> b!238842 (=> (not res!117068) (not e!155081))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238842 (= res!117068 (inRange!0 index!297 (mask!10471 thiss!1504)))))

(declare-datatypes ((Unit!7325 0))(
  ( (Unit!7326) )
))
(declare-fun lt!120700 () Unit!7325)

(declare-fun e!155082 () Unit!7325)

(assert (=> b!238842 (= lt!120700 e!155082)))

(declare-fun c!39811 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4688 0))(
  ( (tuple2!4689 (_1!2354 (_ BitVec 64)) (_2!2354 V!8019)) )
))
(declare-datatypes ((List!3608 0))(
  ( (Nil!3605) (Cons!3604 (h!4260 tuple2!4688) (t!8611 List!3608)) )
))
(declare-datatypes ((ListLongMap!3615 0))(
  ( (ListLongMap!3616 (toList!1823 List!3608)) )
))
(declare-fun contains!1705 (ListLongMap!3615 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1346 (array!11838 array!11836 (_ BitVec 32) (_ BitVec 32) V!8019 V!8019 (_ BitVec 32) Int) ListLongMap!3615)

(assert (=> b!238842 (= c!39811 (contains!1705 (getCurrentListMap!1346 (_keys!6533 thiss!1504) (_values!4414 thiss!1504) (mask!10471 thiss!1504) (extraKeys!4168 thiss!1504) (zeroValue!4272 thiss!1504) (minValue!4272 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4431 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10650 () Bool)

(assert (=> mapIsEmpty!10650 mapRes!10650))

(declare-fun b!238843 () Bool)

(declare-fun c!39810 () Bool)

(get-info :version)

(assert (=> b!238843 (= c!39810 ((_ is MissingVacant!1034) lt!120702))))

(declare-fun e!155083 () Bool)

(assert (=> b!238843 (= e!155083 e!155089)))

(declare-fun bm!22207 () Bool)

(declare-fun call!22210 () Bool)

(declare-fun arrayContainsKey!0 (array!11838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22207 (= call!22210 (arrayContainsKey!0 (_keys!6533 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!238844 () Bool)

(declare-fun lt!120701 () Unit!7325)

(assert (=> b!238844 (= e!155082 lt!120701)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!333 (array!11838 array!11836 (_ BitVec 32) (_ BitVec 32) V!8019 V!8019 (_ BitVec 64) Int) Unit!7325)

(assert (=> b!238844 (= lt!120701 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!333 (_keys!6533 thiss!1504) (_values!4414 thiss!1504) (mask!10471 thiss!1504) (extraKeys!4168 thiss!1504) (zeroValue!4272 thiss!1504) (minValue!4272 thiss!1504) key!932 (defaultEntry!4431 thiss!1504)))))

(assert (=> b!238844 (= c!39809 ((_ is MissingZero!1034) lt!120702))))

(assert (=> b!238844 e!155083))

(declare-fun b!238845 () Bool)

(assert (=> b!238845 (= e!155089 ((_ is Undefined!1034) lt!120702))))

(declare-fun b!238846 () Bool)

(declare-fun e!155090 () Bool)

(assert (=> b!238846 (= e!155090 e!155079)))

(declare-fun res!117062 () Bool)

(assert (=> b!238846 (=> (not res!117062) (not e!155079))))

(assert (=> b!238846 (= res!117062 (or (= lt!120702 (MissingZero!1034 index!297)) (= lt!120702 (MissingVacant!1034 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11838 (_ BitVec 32)) SeekEntryResult!1034)

(assert (=> b!238846 (= lt!120702 (seekEntryOrOpen!0 key!932 (_keys!6533 thiss!1504) (mask!10471 thiss!1504)))))

(declare-fun b!238847 () Bool)

(declare-fun res!117069 () Bool)

(assert (=> b!238847 (= res!117069 (= (select (arr!5620 (_keys!6533 thiss!1504)) (index!6309 lt!120702)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!238847 (=> (not res!117069) (not e!155086))))

(declare-fun b!238848 () Bool)

(declare-fun res!117066 () Bool)

(assert (=> b!238848 (=> (not res!117066) (not e!155081))))

(assert (=> b!238848 (= res!117066 (arrayContainsKey!0 (_keys!6533 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!117067 () Bool)

(assert (=> start!22926 (=> (not res!117067) (not e!155090))))

(declare-fun valid!1369 (LongMapFixedSize!3492) Bool)

(assert (=> start!22926 (= res!117067 (valid!1369 thiss!1504))))

(assert (=> start!22926 e!155090))

(declare-fun e!155085 () Bool)

(assert (=> start!22926 e!155085))

(assert (=> start!22926 true))

(declare-fun tp_is_empty!6279 () Bool)

(declare-fun array_inv!3705 (array!11838) Bool)

(declare-fun array_inv!3706 (array!11836) Bool)

(assert (=> b!238840 (= e!155085 (and tp!22454 tp_is_empty!6279 (array_inv!3705 (_keys!6533 thiss!1504)) (array_inv!3706 (_values!4414 thiss!1504)) e!155087))))

(declare-fun b!238849 () Bool)

(assert (=> b!238849 (= e!155078 (not call!22210))))

(declare-fun b!238850 () Bool)

(assert (=> b!238850 (= e!155088 tp_is_empty!6279)))

(declare-fun b!238851 () Bool)

(declare-fun res!117063 () Bool)

(assert (=> b!238851 (=> (not res!117063) (not e!155090))))

(assert (=> b!238851 (= res!117063 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!238852 () Bool)

(declare-fun res!117064 () Bool)

(assert (=> b!238852 (=> (not res!117064) (not e!155078))))

(assert (=> b!238852 (= res!117064 call!22209)))

(assert (=> b!238852 (= e!155083 e!155078)))

(declare-fun b!238853 () Bool)

(assert (=> b!238853 (= e!155086 (not call!22210))))

(declare-fun b!238854 () Bool)

(assert (=> b!238854 (= e!155084 tp_is_empty!6279)))

(declare-fun b!238855 () Bool)

(declare-fun Unit!7327 () Unit!7325)

(assert (=> b!238855 (= e!155082 Unit!7327)))

(declare-fun lt!120703 () Unit!7325)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!321 (array!11838 array!11836 (_ BitVec 32) (_ BitVec 32) V!8019 V!8019 (_ BitVec 64) Int) Unit!7325)

(assert (=> b!238855 (= lt!120703 (lemmaInListMapThenSeekEntryOrOpenFindsIt!321 (_keys!6533 thiss!1504) (_values!4414 thiss!1504) (mask!10471 thiss!1504) (extraKeys!4168 thiss!1504) (zeroValue!4272 thiss!1504) (minValue!4272 thiss!1504) key!932 (defaultEntry!4431 thiss!1504)))))

(assert (=> b!238855 false))

(assert (= (and start!22926 res!117067) b!238851))

(assert (= (and b!238851 res!117063) b!238846))

(assert (= (and b!238846 res!117062) b!238842))

(assert (= (and b!238842 c!39811) b!238855))

(assert (= (and b!238842 (not c!39811)) b!238844))

(assert (= (and b!238844 c!39809) b!238852))

(assert (= (and b!238844 (not c!39809)) b!238843))

(assert (= (and b!238852 res!117064) b!238837))

(assert (= (and b!238837 res!117065) b!238849))

(assert (= (and b!238843 c!39810) b!238838))

(assert (= (and b!238843 (not c!39810)) b!238845))

(assert (= (and b!238838 res!117070) b!238847))

(assert (= (and b!238847 res!117069) b!238853))

(assert (= (or b!238852 b!238838) bm!22206))

(assert (= (or b!238849 b!238853) bm!22207))

(assert (= (and b!238842 res!117068) b!238848))

(assert (= (and b!238848 res!117066) b!238841))

(assert (= (and b!238841 res!117071) b!238836))

(assert (= (and b!238839 condMapEmpty!10650) mapIsEmpty!10650))

(assert (= (and b!238839 (not condMapEmpty!10650)) mapNonEmpty!10650))

(assert (= (and mapNonEmpty!10650 ((_ is ValueCellFull!2796) mapValue!10650)) b!238850))

(assert (= (and b!238839 ((_ is ValueCellFull!2796) mapDefault!10650)) b!238854))

(assert (= b!238840 b!238839))

(assert (= start!22926 b!238840))

(declare-fun m!259207 () Bool)

(assert (=> b!238847 m!259207))

(declare-fun m!259209 () Bool)

(assert (=> b!238846 m!259209))

(declare-fun m!259211 () Bool)

(assert (=> b!238842 m!259211))

(declare-fun m!259213 () Bool)

(assert (=> b!238842 m!259213))

(assert (=> b!238842 m!259213))

(declare-fun m!259215 () Bool)

(assert (=> b!238842 m!259215))

(declare-fun m!259217 () Bool)

(assert (=> start!22926 m!259217))

(declare-fun m!259219 () Bool)

(assert (=> b!238840 m!259219))

(declare-fun m!259221 () Bool)

(assert (=> b!238840 m!259221))

(declare-fun m!259223 () Bool)

(assert (=> b!238844 m!259223))

(declare-fun m!259225 () Bool)

(assert (=> b!238837 m!259225))

(declare-fun m!259227 () Bool)

(assert (=> b!238841 m!259227))

(declare-fun m!259229 () Bool)

(assert (=> bm!22207 m!259229))

(declare-fun m!259231 () Bool)

(assert (=> mapNonEmpty!10650 m!259231))

(declare-fun m!259233 () Bool)

(assert (=> bm!22206 m!259233))

(assert (=> b!238848 m!259229))

(declare-fun m!259235 () Bool)

(assert (=> b!238855 m!259235))

(check-sat (not b!238846) tp_is_empty!6279 (not b!238842) (not bm!22207) (not b!238844) (not b!238840) (not bm!22206) (not b_next!6417) b_and!13401 (not mapNonEmpty!10650) (not start!22926) (not b!238848) (not b!238841) (not b!238855))
(check-sat b_and!13401 (not b_next!6417))

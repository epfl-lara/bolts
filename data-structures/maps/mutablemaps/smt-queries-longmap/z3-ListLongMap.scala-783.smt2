; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18608 () Bool)

(assert start!18608)

(declare-fun b!184065 () Bool)

(declare-fun b_free!4539 () Bool)

(declare-fun b_next!4539 () Bool)

(assert (=> b!184065 (= b_free!4539 (not b_next!4539))))

(declare-fun tp!16395 () Bool)

(declare-fun b_and!11139 () Bool)

(assert (=> b!184065 (= tp!16395 b_and!11139)))

(declare-datatypes ((V!5395 0))(
  ( (V!5396 (val!2200 Int)) )
))
(declare-datatypes ((ValueCell!1812 0))(
  ( (ValueCellFull!1812 (v!4101 V!5395)) (EmptyCell!1812) )
))
(declare-datatypes ((array!7818 0))(
  ( (array!7819 (arr!3694 (Array (_ BitVec 32) (_ BitVec 64))) (size!4008 (_ BitVec 32))) )
))
(declare-datatypes ((array!7820 0))(
  ( (array!7821 (arr!3695 (Array (_ BitVec 32) ValueCell!1812)) (size!4009 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2532 0))(
  ( (LongMapFixedSize!2533 (defaultEntry!3760 Int) (mask!8838 (_ BitVec 32)) (extraKeys!3497 (_ BitVec 32)) (zeroValue!3601 V!5395) (minValue!3601 V!5395) (_size!1315 (_ BitVec 32)) (_keys!5686 array!7818) (_values!3743 array!7820) (_vacant!1315 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2532)

(declare-fun e!121175 () Bool)

(declare-fun tp_is_empty!4311 () Bool)

(declare-fun e!121176 () Bool)

(declare-fun array_inv!2381 (array!7818) Bool)

(declare-fun array_inv!2382 (array!7820) Bool)

(assert (=> b!184065 (= e!121176 (and tp!16395 tp_is_empty!4311 (array_inv!2381 (_keys!5686 thiss!1248)) (array_inv!2382 (_values!3743 thiss!1248)) e!121175))))

(declare-fun res!87113 () Bool)

(declare-fun e!121172 () Bool)

(assert (=> start!18608 (=> (not res!87113) (not e!121172))))

(declare-fun valid!1040 (LongMapFixedSize!2532) Bool)

(assert (=> start!18608 (= res!87113 (valid!1040 thiss!1248))))

(assert (=> start!18608 e!121172))

(assert (=> start!18608 e!121176))

(assert (=> start!18608 true))

(declare-fun b!184066 () Bool)

(declare-fun e!121174 () Bool)

(assert (=> b!184066 (= e!121174 (and (= (size!4009 (_values!3743 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8838 thiss!1248))) (= (size!4008 (_keys!5686 thiss!1248)) (size!4009 (_values!3743 thiss!1248))) (bvslt (mask!8838 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!184067 () Bool)

(declare-fun e!121178 () Bool)

(assert (=> b!184067 (= e!121178 tp_is_empty!4311)))

(declare-fun mapNonEmpty!7408 () Bool)

(declare-fun mapRes!7408 () Bool)

(declare-fun tp!16396 () Bool)

(declare-fun e!121173 () Bool)

(assert (=> mapNonEmpty!7408 (= mapRes!7408 (and tp!16396 e!121173))))

(declare-fun mapValue!7408 () ValueCell!1812)

(declare-fun mapKey!7408 () (_ BitVec 32))

(declare-fun mapRest!7408 () (Array (_ BitVec 32) ValueCell!1812))

(assert (=> mapNonEmpty!7408 (= (arr!3695 (_values!3743 thiss!1248)) (store mapRest!7408 mapKey!7408 mapValue!7408))))

(declare-fun b!184068 () Bool)

(assert (=> b!184068 (= e!121172 e!121174)))

(declare-fun res!87114 () Bool)

(assert (=> b!184068 (=> (not res!87114) (not e!121174))))

(declare-datatypes ((SeekEntryResult!635 0))(
  ( (MissingZero!635 (index!4710 (_ BitVec 32))) (Found!635 (index!4711 (_ BitVec 32))) (Intermediate!635 (undefined!1447 Bool) (index!4712 (_ BitVec 32)) (x!20041 (_ BitVec 32))) (Undefined!635) (MissingVacant!635 (index!4713 (_ BitVec 32))) )
))
(declare-fun lt!91056 () SeekEntryResult!635)

(get-info :version)

(assert (=> b!184068 (= res!87114 (and (not ((_ is Undefined!635) lt!91056)) (not ((_ is MissingVacant!635) lt!91056)) (not ((_ is MissingZero!635) lt!91056)) ((_ is Found!635) lt!91056)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7818 (_ BitVec 32)) SeekEntryResult!635)

(assert (=> b!184068 (= lt!91056 (seekEntryOrOpen!0 key!828 (_keys!5686 thiss!1248) (mask!8838 thiss!1248)))))

(declare-fun b!184069 () Bool)

(declare-fun res!87115 () Bool)

(assert (=> b!184069 (=> (not res!87115) (not e!121172))))

(assert (=> b!184069 (= res!87115 (not (= key!828 (bvneg key!828))))))

(declare-fun b!184070 () Bool)

(assert (=> b!184070 (= e!121173 tp_is_empty!4311)))

(declare-fun b!184071 () Bool)

(declare-fun res!87111 () Bool)

(assert (=> b!184071 (=> (not res!87111) (not e!121174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!184071 (= res!87111 (validMask!0 (mask!8838 thiss!1248)))))

(declare-fun mapIsEmpty!7408 () Bool)

(assert (=> mapIsEmpty!7408 mapRes!7408))

(declare-fun b!184072 () Bool)

(assert (=> b!184072 (= e!121175 (and e!121178 mapRes!7408))))

(declare-fun condMapEmpty!7408 () Bool)

(declare-fun mapDefault!7408 () ValueCell!1812)

(assert (=> b!184072 (= condMapEmpty!7408 (= (arr!3695 (_values!3743 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1812)) mapDefault!7408)))))

(declare-fun b!184073 () Bool)

(declare-fun res!87112 () Bool)

(assert (=> b!184073 (=> (not res!87112) (not e!121174))))

(declare-datatypes ((tuple2!3424 0))(
  ( (tuple2!3425 (_1!1722 (_ BitVec 64)) (_2!1722 V!5395)) )
))
(declare-datatypes ((List!2363 0))(
  ( (Nil!2360) (Cons!2359 (h!2990 tuple2!3424) (t!7243 List!2363)) )
))
(declare-datatypes ((ListLongMap!2355 0))(
  ( (ListLongMap!2356 (toList!1193 List!2363)) )
))
(declare-fun contains!1277 (ListLongMap!2355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!836 (array!7818 array!7820 (_ BitVec 32) (_ BitVec 32) V!5395 V!5395 (_ BitVec 32) Int) ListLongMap!2355)

(assert (=> b!184073 (= res!87112 (not (contains!1277 (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)) key!828)))))

(assert (= (and start!18608 res!87113) b!184069))

(assert (= (and b!184069 res!87115) b!184068))

(assert (= (and b!184068 res!87114) b!184073))

(assert (= (and b!184073 res!87112) b!184071))

(assert (= (and b!184071 res!87111) b!184066))

(assert (= (and b!184072 condMapEmpty!7408) mapIsEmpty!7408))

(assert (= (and b!184072 (not condMapEmpty!7408)) mapNonEmpty!7408))

(assert (= (and mapNonEmpty!7408 ((_ is ValueCellFull!1812) mapValue!7408)) b!184070))

(assert (= (and b!184072 ((_ is ValueCellFull!1812) mapDefault!7408)) b!184067))

(assert (= b!184065 b!184072))

(assert (= start!18608 b!184065))

(declare-fun m!211537 () Bool)

(assert (=> start!18608 m!211537))

(declare-fun m!211539 () Bool)

(assert (=> b!184065 m!211539))

(declare-fun m!211541 () Bool)

(assert (=> b!184065 m!211541))

(declare-fun m!211543 () Bool)

(assert (=> b!184073 m!211543))

(assert (=> b!184073 m!211543))

(declare-fun m!211545 () Bool)

(assert (=> b!184073 m!211545))

(declare-fun m!211547 () Bool)

(assert (=> b!184071 m!211547))

(declare-fun m!211549 () Bool)

(assert (=> b!184068 m!211549))

(declare-fun m!211551 () Bool)

(assert (=> mapNonEmpty!7408 m!211551))

(check-sat (not b!184065) (not b!184071) (not b!184073) tp_is_empty!4311 b_and!11139 (not b_next!4539) (not mapNonEmpty!7408) (not start!18608) (not b!184068))
(check-sat b_and!11139 (not b_next!4539))
(get-model)

(declare-fun d!54799 () Bool)

(declare-fun e!121204 () Bool)

(assert (=> d!54799 e!121204))

(declare-fun res!87133 () Bool)

(assert (=> d!54799 (=> res!87133 e!121204)))

(declare-fun lt!91068 () Bool)

(assert (=> d!54799 (= res!87133 (not lt!91068))))

(declare-fun lt!91071 () Bool)

(assert (=> d!54799 (= lt!91068 lt!91071)))

(declare-datatypes ((Unit!5561 0))(
  ( (Unit!5562) )
))
(declare-fun lt!91070 () Unit!5561)

(declare-fun e!121205 () Unit!5561)

(assert (=> d!54799 (= lt!91070 e!121205)))

(declare-fun c!33001 () Bool)

(assert (=> d!54799 (= c!33001 lt!91071)))

(declare-fun containsKey!221 (List!2363 (_ BitVec 64)) Bool)

(assert (=> d!54799 (= lt!91071 (containsKey!221 (toList!1193 (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248))) key!828))))

(assert (=> d!54799 (= (contains!1277 (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)) key!828) lt!91068)))

(declare-fun b!184107 () Bool)

(declare-fun lt!91069 () Unit!5561)

(assert (=> b!184107 (= e!121205 lt!91069)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!170 (List!2363 (_ BitVec 64)) Unit!5561)

(assert (=> b!184107 (= lt!91069 (lemmaContainsKeyImpliesGetValueByKeyDefined!170 (toList!1193 (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248))) key!828))))

(declare-datatypes ((Option!223 0))(
  ( (Some!222 (v!4103 V!5395)) (None!221) )
))
(declare-fun isDefined!171 (Option!223) Bool)

(declare-fun getValueByKey!217 (List!2363 (_ BitVec 64)) Option!223)

(assert (=> b!184107 (isDefined!171 (getValueByKey!217 (toList!1193 (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248))) key!828))))

(declare-fun b!184108 () Bool)

(declare-fun Unit!5563 () Unit!5561)

(assert (=> b!184108 (= e!121205 Unit!5563)))

(declare-fun b!184109 () Bool)

(assert (=> b!184109 (= e!121204 (isDefined!171 (getValueByKey!217 (toList!1193 (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248))) key!828)))))

(assert (= (and d!54799 c!33001) b!184107))

(assert (= (and d!54799 (not c!33001)) b!184108))

(assert (= (and d!54799 (not res!87133)) b!184109))

(declare-fun m!211569 () Bool)

(assert (=> d!54799 m!211569))

(declare-fun m!211571 () Bool)

(assert (=> b!184107 m!211571))

(declare-fun m!211573 () Bool)

(assert (=> b!184107 m!211573))

(assert (=> b!184107 m!211573))

(declare-fun m!211575 () Bool)

(assert (=> b!184107 m!211575))

(assert (=> b!184109 m!211573))

(assert (=> b!184109 m!211573))

(assert (=> b!184109 m!211575))

(assert (=> b!184073 d!54799))

(declare-fun b!184152 () Bool)

(declare-fun e!121232 () Unit!5561)

(declare-fun lt!91117 () Unit!5561)

(assert (=> b!184152 (= e!121232 lt!91117)))

(declare-fun lt!91128 () ListLongMap!2355)

(declare-fun getCurrentListMapNoExtraKeys!191 (array!7818 array!7820 (_ BitVec 32) (_ BitVec 32) V!5395 V!5395 (_ BitVec 32) Int) ListLongMap!2355)

(assert (=> b!184152 (= lt!91128 (getCurrentListMapNoExtraKeys!191 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)))))

(declare-fun lt!91124 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91124 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91137 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91137 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91125 () Unit!5561)

(declare-fun addStillContains!137 (ListLongMap!2355 (_ BitVec 64) V!5395 (_ BitVec 64)) Unit!5561)

(assert (=> b!184152 (= lt!91125 (addStillContains!137 lt!91128 lt!91124 (zeroValue!3601 thiss!1248) lt!91137))))

(declare-fun +!276 (ListLongMap!2355 tuple2!3424) ListLongMap!2355)

(assert (=> b!184152 (contains!1277 (+!276 lt!91128 (tuple2!3425 lt!91124 (zeroValue!3601 thiss!1248))) lt!91137)))

(declare-fun lt!91132 () Unit!5561)

(assert (=> b!184152 (= lt!91132 lt!91125)))

(declare-fun lt!91129 () ListLongMap!2355)

(assert (=> b!184152 (= lt!91129 (getCurrentListMapNoExtraKeys!191 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)))))

(declare-fun lt!91126 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91126 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91136 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91136 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91122 () Unit!5561)

(declare-fun addApplyDifferent!137 (ListLongMap!2355 (_ BitVec 64) V!5395 (_ BitVec 64)) Unit!5561)

(assert (=> b!184152 (= lt!91122 (addApplyDifferent!137 lt!91129 lt!91126 (minValue!3601 thiss!1248) lt!91136))))

(declare-fun apply!161 (ListLongMap!2355 (_ BitVec 64)) V!5395)

(assert (=> b!184152 (= (apply!161 (+!276 lt!91129 (tuple2!3425 lt!91126 (minValue!3601 thiss!1248))) lt!91136) (apply!161 lt!91129 lt!91136))))

(declare-fun lt!91119 () Unit!5561)

(assert (=> b!184152 (= lt!91119 lt!91122)))

(declare-fun lt!91131 () ListLongMap!2355)

(assert (=> b!184152 (= lt!91131 (getCurrentListMapNoExtraKeys!191 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)))))

(declare-fun lt!91134 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91134 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91121 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91121 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91118 () Unit!5561)

(assert (=> b!184152 (= lt!91118 (addApplyDifferent!137 lt!91131 lt!91134 (zeroValue!3601 thiss!1248) lt!91121))))

(assert (=> b!184152 (= (apply!161 (+!276 lt!91131 (tuple2!3425 lt!91134 (zeroValue!3601 thiss!1248))) lt!91121) (apply!161 lt!91131 lt!91121))))

(declare-fun lt!91133 () Unit!5561)

(assert (=> b!184152 (= lt!91133 lt!91118)))

(declare-fun lt!91127 () ListLongMap!2355)

(assert (=> b!184152 (= lt!91127 (getCurrentListMapNoExtraKeys!191 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)))))

(declare-fun lt!91120 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91120 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91130 () (_ BitVec 64))

(assert (=> b!184152 (= lt!91130 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184152 (= lt!91117 (addApplyDifferent!137 lt!91127 lt!91120 (minValue!3601 thiss!1248) lt!91130))))

(assert (=> b!184152 (= (apply!161 (+!276 lt!91127 (tuple2!3425 lt!91120 (minValue!3601 thiss!1248))) lt!91130) (apply!161 lt!91127 lt!91130))))

(declare-fun bm!18584 () Bool)

(declare-fun call!18589 () ListLongMap!2355)

(declare-fun call!18591 () ListLongMap!2355)

(assert (=> bm!18584 (= call!18589 call!18591)))

(declare-fun bm!18585 () Bool)

(declare-fun call!18588 () Bool)

(declare-fun lt!91116 () ListLongMap!2355)

(assert (=> bm!18585 (= call!18588 (contains!1277 lt!91116 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!33015 () Bool)

(declare-fun bm!18586 () Bool)

(declare-fun call!18590 () ListLongMap!2355)

(declare-fun c!33014 () Bool)

(declare-fun call!18593 () ListLongMap!2355)

(assert (=> bm!18586 (= call!18590 (+!276 (ite c!33014 call!18593 (ite c!33015 call!18591 call!18589)) (ite (or c!33014 c!33015) (tuple2!3425 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3601 thiss!1248)) (tuple2!3425 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3601 thiss!1248)))))))

(declare-fun b!184154 () Bool)

(declare-fun e!121238 () Bool)

(declare-fun e!121243 () Bool)

(assert (=> b!184154 (= e!121238 e!121243)))

(declare-fun c!33019 () Bool)

(assert (=> b!184154 (= c!33019 (not (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!184155 () Bool)

(declare-fun res!87156 () Bool)

(assert (=> b!184155 (=> (not res!87156) (not e!121238))))

(declare-fun e!121242 () Bool)

(assert (=> b!184155 (= res!87156 e!121242)))

(declare-fun res!87152 () Bool)

(assert (=> b!184155 (=> res!87152 e!121242)))

(declare-fun e!121233 () Bool)

(assert (=> b!184155 (= res!87152 (not e!121233))))

(declare-fun res!87155 () Bool)

(assert (=> b!184155 (=> (not res!87155) (not e!121233))))

(assert (=> b!184155 (= res!87155 (bvslt #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))))))

(declare-fun b!184156 () Bool)

(declare-fun c!33018 () Bool)

(assert (=> b!184156 (= c!33018 (and (not (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!121234 () ListLongMap!2355)

(declare-fun e!121239 () ListLongMap!2355)

(assert (=> b!184156 (= e!121234 e!121239)))

(declare-fun b!184157 () Bool)

(declare-fun res!87158 () Bool)

(assert (=> b!184157 (=> (not res!87158) (not e!121238))))

(declare-fun e!121240 () Bool)

(assert (=> b!184157 (= res!87158 e!121240)))

(declare-fun c!33016 () Bool)

(assert (=> b!184157 (= c!33016 (not (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!184158 () Bool)

(declare-fun e!121244 () ListLongMap!2355)

(assert (=> b!184158 (= e!121244 e!121234)))

(assert (=> b!184158 (= c!33015 (and (not (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18587 () Bool)

(assert (=> bm!18587 (= call!18593 (getCurrentListMapNoExtraKeys!191 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)))))

(declare-fun b!184159 () Bool)

(declare-fun e!121241 () Bool)

(assert (=> b!184159 (= e!121241 (= (apply!161 lt!91116 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3601 thiss!1248)))))

(declare-fun b!184160 () Bool)

(declare-fun Unit!5564 () Unit!5561)

(assert (=> b!184160 (= e!121232 Unit!5564)))

(declare-fun b!184161 () Bool)

(declare-fun e!121237 () Bool)

(assert (=> b!184161 (= e!121243 e!121237)))

(declare-fun res!87157 () Bool)

(assert (=> b!184161 (= res!87157 call!18588)))

(assert (=> b!184161 (=> (not res!87157) (not e!121237))))

(declare-fun b!184162 () Bool)

(assert (=> b!184162 (= e!121237 (= (apply!161 lt!91116 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3601 thiss!1248)))))

(declare-fun b!184163 () Bool)

(declare-fun e!121236 () Bool)

(declare-fun get!2121 (ValueCell!1812 V!5395) V!5395)

(declare-fun dynLambda!499 (Int (_ BitVec 64)) V!5395)

(assert (=> b!184163 (= e!121236 (= (apply!161 lt!91116 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000)) (get!2121 (select (arr!3695 (_values!3743 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!499 (defaultEntry!3760 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!184163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4009 (_values!3743 thiss!1248))))))

(assert (=> b!184163 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))))))

(declare-fun b!184164 () Bool)

(declare-fun call!18592 () Bool)

(assert (=> b!184164 (= e!121240 (not call!18592))))

(declare-fun b!184165 () Bool)

(declare-fun e!121235 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!184165 (= e!121235 (validKeyInArray!0 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18588 () Bool)

(assert (=> bm!18588 (= call!18592 (contains!1277 lt!91116 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184166 () Bool)

(assert (=> b!184166 (= e!121242 e!121236)))

(declare-fun res!87154 () Bool)

(assert (=> b!184166 (=> (not res!87154) (not e!121236))))

(assert (=> b!184166 (= res!87154 (contains!1277 lt!91116 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184166 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))))))

(declare-fun b!184153 () Bool)

(assert (=> b!184153 (= e!121243 (not call!18588))))

(declare-fun d!54801 () Bool)

(assert (=> d!54801 e!121238))

(declare-fun res!87160 () Bool)

(assert (=> d!54801 (=> (not res!87160) (not e!121238))))

(assert (=> d!54801 (= res!87160 (or (bvsge #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))))))))

(declare-fun lt!91123 () ListLongMap!2355)

(assert (=> d!54801 (= lt!91116 lt!91123)))

(declare-fun lt!91135 () Unit!5561)

(assert (=> d!54801 (= lt!91135 e!121232)))

(declare-fun c!33017 () Bool)

(assert (=> d!54801 (= c!33017 e!121235)))

(declare-fun res!87153 () Bool)

(assert (=> d!54801 (=> (not res!87153) (not e!121235))))

(assert (=> d!54801 (= res!87153 (bvslt #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))))))

(assert (=> d!54801 (= lt!91123 e!121244)))

(assert (=> d!54801 (= c!33014 (and (not (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3497 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54801 (validMask!0 (mask!8838 thiss!1248))))

(assert (=> d!54801 (= (getCurrentListMap!836 (_keys!5686 thiss!1248) (_values!3743 thiss!1248) (mask!8838 thiss!1248) (extraKeys!3497 thiss!1248) (zeroValue!3601 thiss!1248) (minValue!3601 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3760 thiss!1248)) lt!91116)))

(declare-fun bm!18589 () Bool)

(assert (=> bm!18589 (= call!18591 call!18593)))

(declare-fun b!184167 () Bool)

(assert (=> b!184167 (= e!121240 e!121241)))

(declare-fun res!87159 () Bool)

(assert (=> b!184167 (= res!87159 call!18592)))

(assert (=> b!184167 (=> (not res!87159) (not e!121241))))

(declare-fun b!184168 () Bool)

(assert (=> b!184168 (= e!121233 (validKeyInArray!0 (select (arr!3694 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18590 () Bool)

(declare-fun call!18587 () ListLongMap!2355)

(assert (=> bm!18590 (= call!18587 call!18590)))

(declare-fun b!184169 () Bool)

(assert (=> b!184169 (= e!121239 call!18589)))

(declare-fun b!184170 () Bool)

(assert (=> b!184170 (= e!121234 call!18587)))

(declare-fun b!184171 () Bool)

(assert (=> b!184171 (= e!121244 (+!276 call!18590 (tuple2!3425 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3601 thiss!1248))))))

(declare-fun b!184172 () Bool)

(assert (=> b!184172 (= e!121239 call!18587)))

(assert (= (and d!54801 c!33014) b!184171))

(assert (= (and d!54801 (not c!33014)) b!184158))

(assert (= (and b!184158 c!33015) b!184170))

(assert (= (and b!184158 (not c!33015)) b!184156))

(assert (= (and b!184156 c!33018) b!184172))

(assert (= (and b!184156 (not c!33018)) b!184169))

(assert (= (or b!184172 b!184169) bm!18584))

(assert (= (or b!184170 bm!18584) bm!18589))

(assert (= (or b!184170 b!184172) bm!18590))

(assert (= (or b!184171 bm!18589) bm!18587))

(assert (= (or b!184171 bm!18590) bm!18586))

(assert (= (and d!54801 res!87153) b!184165))

(assert (= (and d!54801 c!33017) b!184152))

(assert (= (and d!54801 (not c!33017)) b!184160))

(assert (= (and d!54801 res!87160) b!184155))

(assert (= (and b!184155 res!87155) b!184168))

(assert (= (and b!184155 (not res!87152)) b!184166))

(assert (= (and b!184166 res!87154) b!184163))

(assert (= (and b!184155 res!87156) b!184157))

(assert (= (and b!184157 c!33016) b!184167))

(assert (= (and b!184157 (not c!33016)) b!184164))

(assert (= (and b!184167 res!87159) b!184159))

(assert (= (or b!184167 b!184164) bm!18588))

(assert (= (and b!184157 res!87158) b!184154))

(assert (= (and b!184154 c!33019) b!184161))

(assert (= (and b!184154 (not c!33019)) b!184153))

(assert (= (and b!184161 res!87157) b!184162))

(assert (= (or b!184161 b!184153) bm!18585))

(declare-fun b_lambda!7245 () Bool)

(assert (=> (not b_lambda!7245) (not b!184163)))

(declare-fun t!7245 () Bool)

(declare-fun tb!2841 () Bool)

(assert (=> (and b!184065 (= (defaultEntry!3760 thiss!1248) (defaultEntry!3760 thiss!1248)) t!7245) tb!2841))

(declare-fun result!4785 () Bool)

(assert (=> tb!2841 (= result!4785 tp_is_empty!4311)))

(assert (=> b!184163 t!7245))

(declare-fun b_and!11143 () Bool)

(assert (= b_and!11139 (and (=> t!7245 result!4785) b_and!11143)))

(declare-fun m!211577 () Bool)

(assert (=> b!184171 m!211577))

(declare-fun m!211579 () Bool)

(assert (=> b!184163 m!211579))

(declare-fun m!211581 () Bool)

(assert (=> b!184163 m!211581))

(declare-fun m!211583 () Bool)

(assert (=> b!184163 m!211583))

(declare-fun m!211585 () Bool)

(assert (=> b!184163 m!211585))

(assert (=> b!184163 m!211579))

(declare-fun m!211587 () Bool)

(assert (=> b!184163 m!211587))

(assert (=> b!184163 m!211585))

(assert (=> b!184163 m!211581))

(declare-fun m!211589 () Bool)

(assert (=> bm!18586 m!211589))

(declare-fun m!211591 () Bool)

(assert (=> b!184162 m!211591))

(declare-fun m!211593 () Bool)

(assert (=> bm!18588 m!211593))

(declare-fun m!211595 () Bool)

(assert (=> bm!18585 m!211595))

(declare-fun m!211597 () Bool)

(assert (=> bm!18587 m!211597))

(declare-fun m!211599 () Bool)

(assert (=> b!184159 m!211599))

(declare-fun m!211601 () Bool)

(assert (=> b!184152 m!211601))

(declare-fun m!211603 () Bool)

(assert (=> b!184152 m!211603))

(declare-fun m!211605 () Bool)

(assert (=> b!184152 m!211605))

(declare-fun m!211607 () Bool)

(assert (=> b!184152 m!211607))

(declare-fun m!211609 () Bool)

(assert (=> b!184152 m!211609))

(declare-fun m!211611 () Bool)

(assert (=> b!184152 m!211611))

(declare-fun m!211613 () Bool)

(assert (=> b!184152 m!211613))

(assert (=> b!184152 m!211607))

(declare-fun m!211615 () Bool)

(assert (=> b!184152 m!211615))

(declare-fun m!211617 () Bool)

(assert (=> b!184152 m!211617))

(declare-fun m!211619 () Bool)

(assert (=> b!184152 m!211619))

(assert (=> b!184152 m!211609))

(declare-fun m!211621 () Bool)

(assert (=> b!184152 m!211621))

(declare-fun m!211623 () Bool)

(assert (=> b!184152 m!211623))

(assert (=> b!184152 m!211581))

(assert (=> b!184152 m!211597))

(declare-fun m!211625 () Bool)

(assert (=> b!184152 m!211625))

(assert (=> b!184152 m!211601))

(declare-fun m!211627 () Bool)

(assert (=> b!184152 m!211627))

(assert (=> b!184152 m!211605))

(declare-fun m!211629 () Bool)

(assert (=> b!184152 m!211629))

(assert (=> b!184168 m!211581))

(assert (=> b!184168 m!211581))

(declare-fun m!211631 () Bool)

(assert (=> b!184168 m!211631))

(assert (=> d!54801 m!211547))

(assert (=> b!184166 m!211581))

(assert (=> b!184166 m!211581))

(declare-fun m!211633 () Bool)

(assert (=> b!184166 m!211633))

(assert (=> b!184165 m!211581))

(assert (=> b!184165 m!211581))

(assert (=> b!184165 m!211631))

(assert (=> b!184073 d!54801))

(declare-fun d!54803 () Bool)

(assert (=> d!54803 (= (array_inv!2381 (_keys!5686 thiss!1248)) (bvsge (size!4008 (_keys!5686 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184065 d!54803))

(declare-fun d!54805 () Bool)

(assert (=> d!54805 (= (array_inv!2382 (_values!3743 thiss!1248)) (bvsge (size!4009 (_values!3743 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184065 d!54805))

(declare-fun b!184187 () Bool)

(declare-fun e!121253 () SeekEntryResult!635)

(declare-fun e!121252 () SeekEntryResult!635)

(assert (=> b!184187 (= e!121253 e!121252)))

(declare-fun lt!91144 () (_ BitVec 64))

(declare-fun lt!91146 () SeekEntryResult!635)

(assert (=> b!184187 (= lt!91144 (select (arr!3694 (_keys!5686 thiss!1248)) (index!4712 lt!91146)))))

(declare-fun c!33026 () Bool)

(assert (=> b!184187 (= c!33026 (= lt!91144 key!828))))

(declare-fun b!184188 () Bool)

(declare-fun e!121251 () SeekEntryResult!635)

(assert (=> b!184188 (= e!121251 (MissingZero!635 (index!4712 lt!91146)))))

(declare-fun b!184189 () Bool)

(assert (=> b!184189 (= e!121253 Undefined!635)))

(declare-fun b!184190 () Bool)

(assert (=> b!184190 (= e!121252 (Found!635 (index!4712 lt!91146)))))

(declare-fun b!184191 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7818 (_ BitVec 32)) SeekEntryResult!635)

(assert (=> b!184191 (= e!121251 (seekKeyOrZeroReturnVacant!0 (x!20041 lt!91146) (index!4712 lt!91146) (index!4712 lt!91146) key!828 (_keys!5686 thiss!1248) (mask!8838 thiss!1248)))))

(declare-fun d!54807 () Bool)

(declare-fun lt!91145 () SeekEntryResult!635)

(assert (=> d!54807 (and (or ((_ is Undefined!635) lt!91145) (not ((_ is Found!635) lt!91145)) (and (bvsge (index!4711 lt!91145) #b00000000000000000000000000000000) (bvslt (index!4711 lt!91145) (size!4008 (_keys!5686 thiss!1248))))) (or ((_ is Undefined!635) lt!91145) ((_ is Found!635) lt!91145) (not ((_ is MissingZero!635) lt!91145)) (and (bvsge (index!4710 lt!91145) #b00000000000000000000000000000000) (bvslt (index!4710 lt!91145) (size!4008 (_keys!5686 thiss!1248))))) (or ((_ is Undefined!635) lt!91145) ((_ is Found!635) lt!91145) ((_ is MissingZero!635) lt!91145) (not ((_ is MissingVacant!635) lt!91145)) (and (bvsge (index!4713 lt!91145) #b00000000000000000000000000000000) (bvslt (index!4713 lt!91145) (size!4008 (_keys!5686 thiss!1248))))) (or ((_ is Undefined!635) lt!91145) (ite ((_ is Found!635) lt!91145) (= (select (arr!3694 (_keys!5686 thiss!1248)) (index!4711 lt!91145)) key!828) (ite ((_ is MissingZero!635) lt!91145) (= (select (arr!3694 (_keys!5686 thiss!1248)) (index!4710 lt!91145)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!635) lt!91145) (= (select (arr!3694 (_keys!5686 thiss!1248)) (index!4713 lt!91145)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54807 (= lt!91145 e!121253)))

(declare-fun c!33028 () Bool)

(assert (=> d!54807 (= c!33028 (and ((_ is Intermediate!635) lt!91146) (undefined!1447 lt!91146)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7818 (_ BitVec 32)) SeekEntryResult!635)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54807 (= lt!91146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8838 thiss!1248)) key!828 (_keys!5686 thiss!1248) (mask!8838 thiss!1248)))))

(assert (=> d!54807 (validMask!0 (mask!8838 thiss!1248))))

(assert (=> d!54807 (= (seekEntryOrOpen!0 key!828 (_keys!5686 thiss!1248) (mask!8838 thiss!1248)) lt!91145)))

(declare-fun b!184192 () Bool)

(declare-fun c!33027 () Bool)

(assert (=> b!184192 (= c!33027 (= lt!91144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184192 (= e!121252 e!121251)))

(assert (= (and d!54807 c!33028) b!184189))

(assert (= (and d!54807 (not c!33028)) b!184187))

(assert (= (and b!184187 c!33026) b!184190))

(assert (= (and b!184187 (not c!33026)) b!184192))

(assert (= (and b!184192 c!33027) b!184188))

(assert (= (and b!184192 (not c!33027)) b!184191))

(declare-fun m!211635 () Bool)

(assert (=> b!184187 m!211635))

(declare-fun m!211637 () Bool)

(assert (=> b!184191 m!211637))

(assert (=> d!54807 m!211547))

(declare-fun m!211639 () Bool)

(assert (=> d!54807 m!211639))

(declare-fun m!211641 () Bool)

(assert (=> d!54807 m!211641))

(declare-fun m!211643 () Bool)

(assert (=> d!54807 m!211643))

(declare-fun m!211645 () Bool)

(assert (=> d!54807 m!211645))

(declare-fun m!211647 () Bool)

(assert (=> d!54807 m!211647))

(assert (=> d!54807 m!211645))

(assert (=> b!184068 d!54807))

(declare-fun d!54809 () Bool)

(assert (=> d!54809 (= (validMask!0 (mask!8838 thiss!1248)) (and (or (= (mask!8838 thiss!1248) #b00000000000000000000000000000111) (= (mask!8838 thiss!1248) #b00000000000000000000000000001111) (= (mask!8838 thiss!1248) #b00000000000000000000000000011111) (= (mask!8838 thiss!1248) #b00000000000000000000000000111111) (= (mask!8838 thiss!1248) #b00000000000000000000000001111111) (= (mask!8838 thiss!1248) #b00000000000000000000000011111111) (= (mask!8838 thiss!1248) #b00000000000000000000000111111111) (= (mask!8838 thiss!1248) #b00000000000000000000001111111111) (= (mask!8838 thiss!1248) #b00000000000000000000011111111111) (= (mask!8838 thiss!1248) #b00000000000000000000111111111111) (= (mask!8838 thiss!1248) #b00000000000000000001111111111111) (= (mask!8838 thiss!1248) #b00000000000000000011111111111111) (= (mask!8838 thiss!1248) #b00000000000000000111111111111111) (= (mask!8838 thiss!1248) #b00000000000000001111111111111111) (= (mask!8838 thiss!1248) #b00000000000000011111111111111111) (= (mask!8838 thiss!1248) #b00000000000000111111111111111111) (= (mask!8838 thiss!1248) #b00000000000001111111111111111111) (= (mask!8838 thiss!1248) #b00000000000011111111111111111111) (= (mask!8838 thiss!1248) #b00000000000111111111111111111111) (= (mask!8838 thiss!1248) #b00000000001111111111111111111111) (= (mask!8838 thiss!1248) #b00000000011111111111111111111111) (= (mask!8838 thiss!1248) #b00000000111111111111111111111111) (= (mask!8838 thiss!1248) #b00000001111111111111111111111111) (= (mask!8838 thiss!1248) #b00000011111111111111111111111111) (= (mask!8838 thiss!1248) #b00000111111111111111111111111111) (= (mask!8838 thiss!1248) #b00001111111111111111111111111111) (= (mask!8838 thiss!1248) #b00011111111111111111111111111111) (= (mask!8838 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8838 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!184071 d!54809))

(declare-fun d!54811 () Bool)

(declare-fun res!87167 () Bool)

(declare-fun e!121256 () Bool)

(assert (=> d!54811 (=> (not res!87167) (not e!121256))))

(declare-fun simpleValid!176 (LongMapFixedSize!2532) Bool)

(assert (=> d!54811 (= res!87167 (simpleValid!176 thiss!1248))))

(assert (=> d!54811 (= (valid!1040 thiss!1248) e!121256)))

(declare-fun b!184199 () Bool)

(declare-fun res!87168 () Bool)

(assert (=> b!184199 (=> (not res!87168) (not e!121256))))

(declare-fun arrayCountValidKeys!0 (array!7818 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!184199 (= res!87168 (= (arrayCountValidKeys!0 (_keys!5686 thiss!1248) #b00000000000000000000000000000000 (size!4008 (_keys!5686 thiss!1248))) (_size!1315 thiss!1248)))))

(declare-fun b!184200 () Bool)

(declare-fun res!87169 () Bool)

(assert (=> b!184200 (=> (not res!87169) (not e!121256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7818 (_ BitVec 32)) Bool)

(assert (=> b!184200 (= res!87169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5686 thiss!1248) (mask!8838 thiss!1248)))))

(declare-fun b!184201 () Bool)

(declare-datatypes ((List!2364 0))(
  ( (Nil!2361) (Cons!2360 (h!2991 (_ BitVec 64)) (t!7246 List!2364)) )
))
(declare-fun arrayNoDuplicates!0 (array!7818 (_ BitVec 32) List!2364) Bool)

(assert (=> b!184201 (= e!121256 (arrayNoDuplicates!0 (_keys!5686 thiss!1248) #b00000000000000000000000000000000 Nil!2361))))

(assert (= (and d!54811 res!87167) b!184199))

(assert (= (and b!184199 res!87168) b!184200))

(assert (= (and b!184200 res!87169) b!184201))

(declare-fun m!211649 () Bool)

(assert (=> d!54811 m!211649))

(declare-fun m!211651 () Bool)

(assert (=> b!184199 m!211651))

(declare-fun m!211653 () Bool)

(assert (=> b!184200 m!211653))

(declare-fun m!211655 () Bool)

(assert (=> b!184201 m!211655))

(assert (=> start!18608 d!54811))

(declare-fun b!184208 () Bool)

(declare-fun e!121261 () Bool)

(assert (=> b!184208 (= e!121261 tp_is_empty!4311)))

(declare-fun condMapEmpty!7414 () Bool)

(declare-fun mapDefault!7414 () ValueCell!1812)

(assert (=> mapNonEmpty!7408 (= condMapEmpty!7414 (= mapRest!7408 ((as const (Array (_ BitVec 32) ValueCell!1812)) mapDefault!7414)))))

(declare-fun e!121262 () Bool)

(declare-fun mapRes!7414 () Bool)

(assert (=> mapNonEmpty!7408 (= tp!16396 (and e!121262 mapRes!7414))))

(declare-fun b!184209 () Bool)

(assert (=> b!184209 (= e!121262 tp_is_empty!4311)))

(declare-fun mapIsEmpty!7414 () Bool)

(assert (=> mapIsEmpty!7414 mapRes!7414))

(declare-fun mapNonEmpty!7414 () Bool)

(declare-fun tp!16405 () Bool)

(assert (=> mapNonEmpty!7414 (= mapRes!7414 (and tp!16405 e!121261))))

(declare-fun mapRest!7414 () (Array (_ BitVec 32) ValueCell!1812))

(declare-fun mapKey!7414 () (_ BitVec 32))

(declare-fun mapValue!7414 () ValueCell!1812)

(assert (=> mapNonEmpty!7414 (= mapRest!7408 (store mapRest!7414 mapKey!7414 mapValue!7414))))

(assert (= (and mapNonEmpty!7408 condMapEmpty!7414) mapIsEmpty!7414))

(assert (= (and mapNonEmpty!7408 (not condMapEmpty!7414)) mapNonEmpty!7414))

(assert (= (and mapNonEmpty!7414 ((_ is ValueCellFull!1812) mapValue!7414)) b!184208))

(assert (= (and mapNonEmpty!7408 ((_ is ValueCellFull!1812) mapDefault!7414)) b!184209))

(declare-fun m!211657 () Bool)

(assert (=> mapNonEmpty!7414 m!211657))

(declare-fun b_lambda!7247 () Bool)

(assert (= b_lambda!7245 (or (and b!184065 b_free!4539) b_lambda!7247)))

(check-sat (not bm!18587) (not b!184171) (not bm!18586) (not b_lambda!7247) (not b!184152) (not b!184162) (not b!184191) (not mapNonEmpty!7414) (not d!54799) (not b!184107) (not d!54807) (not bm!18585) (not b!184200) (not b!184109) (not b!184159) (not b!184199) (not d!54801) (not b!184166) (not b!184168) (not b!184201) tp_is_empty!4311 (not b!184163) b_and!11143 (not b!184165) (not bm!18588) (not d!54811) (not b_next!4539))
(check-sat b_and!11143 (not b_next!4539))
